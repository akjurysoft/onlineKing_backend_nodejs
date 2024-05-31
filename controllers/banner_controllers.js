const jwt = require("jsonwebtoken");
const ejs = require("ejs");
const { uploadFile } = require("../helpers");
const {
  makeHash,
  checkHash,
  mailer,
  makeToken,
  checkToken,
  makeRefreshToken,
  env: {
    HEADER,
    ENVIRONMENT,
    LOCAL_URL,
    OTP_SEND_URL,
    MSG91_AUTH_KEY,
    MSG91_OTP_TEMP_ID,
  },
  sequelize,
} = require("../config");
const {
  CarBrands,
  Banners,
  BannerProductAssociation,
  Categories,
  SubCategories,
  SuperSubCategories,
  Products,
  ProductImages,
} = require("../models");
const { Op } = require("sequelize");
const axios = require("axios");
const fs = require("fs");
const path = require("path");

const { product_id_for_banner } = require("../validators/banners_validators");
const { error } = require("console");

const getAllBanners = async (req, res) => {
  const t = await sequelize.transaction();

  try {
    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    if (user.role === "ADMIN" && user.application === "kardify") {
      const banners = await Banners.findAll({
        include: [BannerProductAssociation],
        transaction: t,
        order: [["createdAt", "DESC"]],
      });

      await t.commit();

      // if (!banners || banners.length === 0) {
      //     return res.response({
      //         code: 404,
      //         status: "error",
      //         message: "No banners found",
      //     }).code(404);
      // }

      return res
        .response({
          code: 200,
          status: "success",
          message: "Banners retrieved successfully",
          banners: banners,
        })
        .code(200);
    } else if (user == "Session expired") {
      return res
        .response({
          code: 401,
          status: "error",
          message: user,
        })
        .code(200);
    } else {
      return res
        .response({
          code: 403,
          status: "error",
          message: "You dont have permission for this action.",
        })
        .code(200);
    }
  } catch (error) {
    await t.rollback();

    console.error(error);
    return res
      .response({
        code: 500,
        status: "error",
        message: "Something went wrong",
      })
      .code(500);
  }
};

const getAllBannersCustomers = async (req, res) => {
  const t = await sequelize.transaction();

  try {
    const { banner_id } = req.query;

    let whereCondition = {
      status: true,
    };

    if (banner_id) {
      whereCondition.id = banner_id;
    }

    const banners = await Banners.findAll({
      where: whereCondition,
      order: [["createdAt", "DESC"]],
      include: [
        {
          model: Categories,
        },
        {
          model: SubCategories,
        },
        {
          model: SuperSubCategories,
        },
        {
          model: BannerProductAssociation,
          include: [
            {
              model: Products,
              include: [
                {
                  model: ProductImages,
                  as: "images",
                },
              ],
            },
          ],
        },
      ],
      transaction: t,
    });

    await t.commit();

    // if (!banners || banners.length === 0) {
    //     return res.response({
    //         code: 404,
    //         status: "error",
    //         message: "No banners found",
    //     }).code(404);
    // }

    return res
      .response({
        code: 200,
        status: "success",
        message: "Banners fetched successfully",
        banners: banners,
      })
      .code(200);
  } catch (error) {
    await t.rollback();

    console.error(error);
    return res
      .response({
        code: 500,
        status: "error",
        message: "Something went wrong",
      })
      .code(500);
  }
};

const addBanners = async (req, res) => {
  const t = await sequelize.transaction();

  try {
    const {
      banner_name,
      banner_type,
      category_id,
      sub_category_id,
      super_sub_category_id,
      web_image_url,
      mob_image_url,
      product_ids,
    } = req.payload;

    let createdBanner;

    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    if (user.role === "ADMIN" && user.application === "kardify") {
      const file_url_web = await uploadFile(
        req,
        web_image_url,
        "uploads/banners/"
      );
      const file_url_app = await uploadFile(
        req,
        mob_image_url,
        "uploads/banners/"
      );
      const existingBanner = await Banners.findOne({
        where: { banner_name: banner_name },
        transaction: t,
      });

      if (existingBanner) {
        await t.rollback();
        return res
          .response({
            code: 409,
            status: "error",
            message: "Banner with the same name already exists",
          })
          .code(200);
      }

      if (banner_type === "category") {
        createdBanner = await Banners.create(
          {
            banner_name,
            banner_type,
            category_id,
            sub_category_id,
            super_sub_category_id,
            web_image_url: file_url_web.file_url,
            app_image_url: file_url_app.file_url,
            status: true,
          },
          { transaction: t }
        );
      } else if (banner_type === "product") {
        try {
          const product_list = JSON.parse(product_ids);

          const result = await product_id_for_banner.validateAsync(
            product_list
          );

          createdBanner = await Banners.create(
            {
              banner_name,
              banner_type,
              web_image_url: file_url_web.file_url,
              app_image_url: file_url_app.file_url,
              status: true,
            },
            { transaction: t }
          );

          const bannerAssociations = result.map((product_id) => ({
            banner_id: createdBanner.id,
            product_id,
          }));

          await BannerProductAssociation.bulkCreate(bannerAssociations, {
            transaction: t,
          });
        } catch (error) {
          console.log(error);
          await t.rollback();
          return res
            .response({
              code: 407,
              status: "error",
              message: "Provide correct product details",
            })
            .code(200);
        }
      }

      await t.commit();
      // await t.rollback();

      return res
        .response({
          code: 201,
          status: "success",
          message: "Banner added successfully",
          banner: createdBanner,
        })
        .code(200);
    } else if (user == "Session expired") {
      return res
        .response({
          code: 401,
          status: "error",
          message: user,
        })
        .code(200);
    } else {
      return res
        .response({
          code: 403,
          status: "error",
          message: "You dont have permission for this action.",
        })
        .code(200);
    }
  } catch (error) {
    await t.rollback();

    console.error(error);
    return res
      .response({
        code: 500,
        status: "error",
        message: "Something went wrong",
      })
      .code(200);
  }
};

const deleteBanner = async (req, res) => {
  try {
    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    if (user.role === "ADMIN" && user.application === "kardify") {
      const { banner_id } = req.query;

      const existingBanner = await Banners.findOne({
        where: {
          id: banner_id,
        },
      });

      if (!existingBanner) {
        return res
          .response({
            code: 404,
            status: "error",
            message: "Banner not found",
          })
          .code(200);
      }

      await existingBanner.destroy();

      return res
        .response({
          code: 200,
          status: "success",
          message: `${existingBanner.banner_name} deleted successfully`,
        })
        .code(200);
    } else if (user == "Session expired") {
      return res
        .response({
          code: 401,
          status: "error",
          message: user,
        })
        .code(200);
    } else {
      return res
        .response({
          code: 403,
          status: "error",
          message: "You dont have permission for this action.",
        })
        .code(200);
    }
  } catch (error) {
    console.error(error);
    return res
      .response({
        code: 500,
        status: "error",
        message: "Something went wrong",
      })
      .code(200);
  }
};
const toggleBannerStatus = async (req, res) => {
  try {
    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    if (user.role === "ADMIN" && user.application === "kardify") {
      const { banner_id } = req.query;

      if (!Number.isInteger(banner_id) || banner_id <= 0) {
        return res
          .response({
            code: 400,
            status: "error",
            message: "Invalid banner_id",
          })
          .code(200);
      }

      const existingBanner = await Banners.findOne({
        where: {
          id: banner_id,
        },
      });

      if (!existingBanner) {
        return res
          .response({
            code: 404,
            status: "error",
            message: "Banner not found",
          })
          .code(200);
      }

      existingBanner.status = !existingBanner.status;

      await existingBanner.save();

      return res
        .response({
          code: 200,
          status: "success",
          message: "Banner status toggled successfully",
        })
        .code(200);
    } else if (user == "Session expired") {
      return res
        .response({
          code: 401,
          status: "error",
          message: user,
        })
        .code(200);
    } else {
      return res
        .response({
          code: 403,
          status: "error",
          message: "You dont have permission for this action.",
        })
        .code(200);
    }
  } catch (error) {
    console.error(error);
    return res
      .response({
        code: 500,
        status: "error",
        message: "Something went wrong",
      })
      .code(200);
  }
};

module.exports = {
  getAllBanners,
  getAllBannersCustomers,
  addBanners,
  deleteBanner,
  toggleBannerStatus,
};
