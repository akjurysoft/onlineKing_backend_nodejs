const jwt = require("jsonwebtoken");
const ejs = require("ejs");
const { uploadFile } = require('../helpers')
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
    CarBrands, Banners, BannerProductAssociations, Categories, SubCategories, SuperSubCategories, Coupons, Discounts, ProductDiscounts, Products, ProductBrands
} = require("../models");
const { Op } = require("sequelize");
const axios = require("axios");
const fs = require("fs");
const path = require("path");

const fetchAllDiscounts = async (req, res) => {
    try {

        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)
        if (user.role === "ADMIN" && user.application === 'kardify') {
            const allDiscounts = await Discounts.findAll({
                include: [
                    {
                        model: Categories
                    },
                    {
                        model: SubCategories
                    },
                    {
                        model: SuperSubCategories
                    },
                    {
                        model: ProductBrands
                    },
                    {
                        model: ProductDiscounts,
                        include: [
                            {
                                model: Products
                            }
                        ]
                    }
                ],
                nest: true,
                mapToModel: true,
                // raw: true
            });
            return res.response({
                code: 200,
                status: 'success',
                message: 'All discounts fetched successfully',
                discounts: allDiscounts,
            }).code(200);
        } else if (user === 'Session expired') {
            return res.response({
                code: 401,
                status: 'error',
                message: user
            }).code(401);
        } else {
            return res.response({
                code: 403,
                status: 'error',
                message: "You don't have permission for this action."
            }).code(403);
        }
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(500);
    }
};

const createDiscount = async (req, res) => {
    try {
        const {
            discount_name,
            image,
            product_brand_id,
            category_id,
            sub_category_id,
            super_sub_category_id,
            products,
            discount_type,
            discount,
            min_amount,
            max_amount,
            start_date,
            expiry_date,
        } = req.payload;

        const existingDiscount = await Discounts.findOne({
            where: {
                discount_name,
            },
        });

        if (existingDiscount) {
            return res.response({
                code: 400,
                status: 'error',
                message: 'A discount with the same name already exists',
            }).code(400);
        }

        const { file_url } = await uploadFile(req, image, 'uploads/offers/')

        const createdDiscount = await Discounts.create({
            discount_name,
            image: file_url,
            product_brand_id,
            category_id,
            sub_category_id,
            super_sub_category_id,
            discount_type,
            discount,
            min_amount,
            max_amount,
            start_date,
            expiry_date,
            status: true
        });

        const associatedProducts = [];

        if (products) {
            const productsParse = JSON.parse(products);
            if (productsParse) {
                for (const product of productsParse) {
                    const productAssociation = await ProductDiscounts.create({
                        discount_id: createdDiscount.id,
                        product_id: product.product_id,
                    });

                    const associatedProductDetails = await Products.findOne({
                        where: { id: productAssociation.product_id },
                        attributes: ['id', 'product_name'],
                    });

                    associatedProducts.push(associatedProductDetails);
                }
            }
        }


        return res.response({
            code: 201,
            status: 'success',
            message: 'Discount created successfully',
            discount: createdDiscount,
            products: associatedProducts
        }).code(201);
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(500);
    }
};

const editDiscount = async (req, res) => {
    try {
        const { discount_id, discount_name, discount_type, discount, min_amount, max_amount, start_date, expiry_date } = req.payload;

        const existingDiscount = await Discounts.findByPk(discount_id);
        if (!existingDiscount) {
            return res.response({
                code: 404,
                status: 'error',
                message: 'Discount not found',
            }).code(404);
        }

        await existingDiscount.update({
            discount_name,
            discount_type,
            discount,
            min_amount,
            max_amount,
            start_date,
            expiry_date,
        });

        return res.response({
            code: 200,
            status: 'success',
            message: 'Discount updated successfully',
            discount: existingDiscount,
        }).code(200);
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(500);
    }
};


const toggleDiscountStatus = async (req, res) => {
    try {
        const { discount_id } = req.query;

        if (!Number.isInteger(discount_id) || discount_id <= 0) {
            return res.response({
                code: 400,
                status: 'error',
                message: 'Invalid discount_id',
            }).code(200);
        }

        const existingDiscount = await Discounts.findOne({
            where: {
                id: discount_id,
            },
        });

        if (!existingDiscount) {
            return res.response({
                code: 404,
                status: 'error',
                message: 'Discount not found',
            }).code(200);
        }

        existingDiscount.status = !existingDiscount.status;

        await existingDiscount.save();

        return res.response({
            code: 200,
            status: 'success',
            message: 'Status toggled successfully',
            discount: existingDiscount,
        }).code(200);
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(200);
    }
};


const deleteDiscount = async (req, res) => {
    try {
        const { discount_id } = req.query;

        const existingDiscount = await Discounts.findOne({
            where: {
                id: discount_id,
            },
        });

        if (!existingDiscount) {
            return res
                .response({
                    code: 404,
                    status: "error",
                    message: "Discount not found",
                })
                .code(200);
        }

        await existingDiscount.destroy();

        return res
            .response({
                code: 200,
                status: 'success',
                message: `${existingDiscount.discount_name} deleted successfully`,
            })
            .code(200);
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
    fetchAllDiscounts,
    createDiscount,
    editDiscount,
    toggleDiscountStatus,
    deleteDiscount
}