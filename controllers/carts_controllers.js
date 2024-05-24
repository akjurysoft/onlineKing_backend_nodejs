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
  Categories,
  Carts,
  Products,
  Customers,
  Dealers,
  ProductImages,
  Combinations,
} = require("../models");
const { Op } = require("sequelize");
const axios = require("axios");
const fs = require("fs");
const path = require("path");

const addToCart = async (req, res) => {
  try {
    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    const allowed_user = ["DEALER", "CUSTOMER"];
    if (allowed_user.includes(user.role) && user.application === "kardify") {
      const { product_id, quantity, combination_id } = req.payload;

      const available_product = await Products.findOne({
        where: {
          id: product_id,
          status: true,
        },
        raw: true,
      });

      if (!available_product) {
        return res
          .response({
            code: 400,
            status: "error",
            message: `Product is not available`,
          })
          .code(200);
      }

      let model;
      let ownerId;
      if (user.role === "DEALER") {
        model = Dealers;
        ownerId = "dealer_id";
      } else if (user.role === "CUSTOMER") {
        model = Customers;
        ownerId = "user_id";
      } else {
        return res
          .response({
            code: 403,
            status: "error",
            message: "You dont have permission for this action.",
          })
          .code(200);
      }

      if (user.id) {
        const isAvailableUser = await model.findOne({
          where: {
            id: user.id,
          },
        });

        if (!isAvailableUser) {
          return res
            .response({
              code: 400,
              status: "error",
              message: `User not found`,
            })
            .code(200);
        }
      }

      const existingProduct = await Carts.findOne({
        where: {
          [ownerId]: user.id,
          product_id,
        },
      });

      const existingCombination = await Carts.findOne({
        where: {
          [ownerId]: user.id,
          combination_id,
        },
      });

      console.log("existing-Product--", existingProduct);

      const cartQuantity = quantity ? quantity : 1;

      if (existingProduct && existingCombination) {
        return res
          .response({
            code: 400,
            status: "error",
            message: existingProduct
              ? "Product is already in the cart"
              : "combination is already in the cart",
          })
          .code(200);
      } else {
        await Carts.create({
          [ownerId]: user.id,
          product_id,
          combination_id,
          quantity: cartQuantity,
        });
      }

      return res
        .response({
          code: 201,
          status: "success",
          message: "Added to cart successfully",
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

const getCart = async (req, res) => {
  try {
    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    const allowed_user = ["DEALER", "CUSTOMER"];
    if (allowed_user.includes(user.role) && user.application === "kardify") {
      let model;
      let ownerId;
      if (user.role === "DEALER") {
        model = Dealers;
        ownerId = "dealer_id";
      } else if (user.role === "CUSTOMER") {
        model = Customers;
        ownerId = "user_id";
      } else {
        return res
          .response({
            code: 403,
            status: "error",
            message: "You don't have permission for this action.",
          })
          .code(200);
      }

      let products = [];
      let totalPrice = 0;

      const cartItems = await Carts.findAll({
        where: {
          [ownerId]: user.id,
        },
        include: [
          {
            model: Products,
            where: {
              status: true,
            },
          },
        ],
      });

      for (const cartItem of cartItems) {
        const product = await Products.findOne({
          where: {
            id: cartItem.product.id,
            status: true,
          },
        });

        if (product) {
          products.push(product);
        }
      }

      const images = await ProductImages.findAll({
        where: {
          product_id: cartItems.map((product) => product.product.id),
          status: 1,
        },
        attributes: ["id", "product_id", "image_url"],
        raw: true,
      });

      const imagesMap = images.reduce((acc, image) => {
        const { product_id } = image;
        if (!acc[product_id]) {
          acc[product_id] = [];
        }
        acc[product_id].push(image);
        return acc;
      }, {});

      const cartItemsWithImages = cartItems.map((cartItem) => {
        return {
          ...cartItem.toJSON(),
          images: imagesMap[cartItem.product.id] || [],
        };
      });

      for (const cartItem of cartItems) {
        const product = await Products.findOne({
          where: {
            id: cartItem.product.id,
            status: true,
          },
        });

        if (product) {
          let itemPrice = product.default_price;

          if (product.discount_type === "amount") {
            itemPrice -= product.discount;
          } else if (product.discount_type === "percent") {
            itemPrice -= product.default_price * (product.discount / 100);
          }

          totalPrice += itemPrice * cartItem.quantity;
        }
      }

      return res
        .response({
          code: 200,
          status: "success",
          totalPrice,
          cartItems: cartItemsWithImages,
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
          message: "You don't have permission for this action.",
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

const handleIncrement = async (req, res) => {
  try {
    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    const allowed_user = ["DEALER", "CUSTOMER"];
    if (allowed_user.includes(user.role) && user.application === "kardify") {
      const { product_id } = req.payload;

      let ownerId;
      if (user.role === "DEALER") {
        ownerId = "dealer_id";
      } else if (user.role === "CUSTOMER") {
        ownerId = "user_id";
      }

      const existingProduct = await Carts.findOne({
        where: {
          [ownerId]: user.id,
          product_id,
        },
      });
      if (!existingProduct) {
        return res
          .response({
            code: 400,
            status: "error",
            message: "Product not found in the cart",
          })
          .code(200);
      }

      const availableProduct = await Products.findOne({
        where: {
          id: product_id,
          status: true,
        },
        raw: true,
      });

      if (!availableProduct) {
        return res
          .response({
            code: 400,
            status: "error",
            message: "Product details not found",
          })
          .code(200);
      }

      const totalQuantityInCart = existingProduct.quantity;

      const remainingStock = availableProduct.stock - totalQuantityInCart;

      if (remainingStock <= 0) {
        return res
          .response({
            code: 400,
            status: "error",
            message: "Maximum quantity reached",
          })
          .code(200);
      }

      existingProduct.quantity += 1;
      await existingProduct.save();

      return res
        .response({
          code: 200,
          status: "success",
          message: "Quantity incremented successfully",
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
          message: "You don't have permission for this action.",
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

const handleDecrement = async (req, res) => {
  try {
    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    const allowed_user = ["DEALER", "CUSTOMER"];
    if (allowed_user.includes(user.role) && user.application === "kardify") {
      const { product_id } = req.payload;

      let ownerId;
      if (user.role === "DEALER") {
        ownerId = "dealer_id";
      } else if (user.role === "CUSTOMER") {
        ownerId = "user_id";
      }

      const existingProduct = await Carts.findOne({
        where: {
          [ownerId]: user.id,
          product_id,
        },
      });

      if (existingProduct) {
        if (existingProduct.quantity > 1) {
          existingProduct.quantity -= 1;
          await existingProduct.save();
        }
      }

      return res
        .response({
          code: 200,
          status: "success",
          message: "Quantity decremented successfully",
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
          message: "You don't have permission for this action.",
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

const removeFromCart = async (req, res) => {
  try {
    const user = await checkToken(
      req.headers["Authorization"]
        ? req.headers["Authorization"]
        : req.headers.authorization
    );

    const allowed_user = ["DEALER", "CUSTOMER"];
    if (allowed_user.includes(user.role) && user.application === "kardify") {
      const { product_id, combination_id } = req.payload;
      let model, ownerId;
      if (user.role === "DEALER") {
        model = Dealers;
        ownerId = "dealer_id";
      } else if (user.role === "CUSTOMER") {
        model = Customers;
        ownerId = "user_id";
      } else {
        return res
          .response({
            code: 403,
            status: "error",
            message: "You don't have permission for this action.",
          })
          .code(200);
      }

      const existingProduct = await Products.findOne({
        where: {
          id: product_id,
        },
      });

      const existingCombination = await Carts.findOne({
        where: {
          combination_id: combination_id,
        },
      });

      if (!existingProduct) {
        return res
          .response({
            code: 400,
            status: "error",
            message: `Product not found`,
          })
          .code(200);
      }

      if (existingCombination) {
        await Carts.destroy({
          where: {
            [ownerId]: user.id,
            combination_id: combination_id,
          },
        });
      } else {
        await Carts.destroy({
          where: {
            [ownerId]: user.id,
            product_id: product_id,
          },
        });
      }

      // await Carts.destroy({
      //   where: {
      //     [ownerId]: user.id,
      //     product_id: product_id,
      //   },
      // });

      return res
        .response({
          code: 200,
          status: "success",
          message: "Item removed from cart successfully.",
        })
        .code(200);
    } else if (user === "Session expired") {
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
          message: "You don't have permission for this action.",
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
  addToCart,
  getCart,
  handleIncrement,
  handleDecrement,
  removeFromCart,
};
