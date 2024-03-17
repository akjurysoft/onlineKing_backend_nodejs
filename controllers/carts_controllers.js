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
    Categories, Carts, Products, Customers, Dealers
} = require("../models");
const { Op } = require("sequelize");
const axios = require("axios");
const fs = require("fs");
const path = require("path");


const addToCart = async (req, res) => {
    try {
        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        const allowed_user = ['DEALER', 'CUSTOMER']
        if (allowed_user.includes(user.role) && user.application === 'kardify') {

            const { user_id, product_id , quantity} = req.payload;

            const available_product = await Products.findOne({
                where: {
                    id: product_id,
                    status: true,
                },
                raw: true
            });

            if (!available_product) {
                return res.response({
                    code: 400,
                    status: 'error',
                    message: `Product is not available`,
                }).code(200);
            }


            let model;
            let ownerId;
            if (user.role === 'DEALER') {
                model = Dealers;
                ownerId = 'dealer_id';
            } else if (user.role === 'CUSTOMER') {
                model = Customers;
                ownerId = 'user_id';
            } else {
                return res.response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                }).code(200);
            }

            if (user_id) {
                const isAvailableUser = await model.findOne({
                    where: {
                        id: user_id
                    }
                })

                if (!isAvailableUser) {
                    return res.response({
                        code: 400,
                        status: 'error',
                        message: `User not found`,
                    }).code(200);
                }
            }

            const existingProduct = await Carts.findOne({
                where: {
                    [ownerId]: user_id,
                    product_id
                }
            });

            const cartQuantity = quantity ? quantity : 1;

            if (existingProduct) {
                existingProduct.quantity += cartQuantity;
                await existingProduct.save();
            } else {
                await Carts.create({
                    [ownerId]: user_id,
                    product_id,
                    quantity: cartQuantity
                });
            }

            return res
                .response({
                    code: 201,
                    status: 'success',
                    message: "Added to cart successfully",
                })
                .code(200);
        } else if (user == 'Session expired') {
            return res
                .response({
                    code: 401,
                    status: 'error',
                    message: user,
                })
                .code(200);
        } else {
            return res
                .response({
                    code: 403,
                    status: 'error',
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
        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization);

        const allowed_user = ['DEALER', 'CUSTOMER'];
        if (allowed_user.includes(user.role) && user.application === 'kardify') {
            
            let model;
            let ownerId;
            if (user.role === 'DEALER') {
                model = Dealers;
                ownerId = 'dealer_id'
            } else if (user.role === 'CUSTOMER') {
                model = Customers;
                ownerId = 'user_id'
            } else {
                return res.response({
                    code: 403,
                    status: 'error',
                    message: "You don't have permission for this action.",
                }).code(200);
            }

            const cartItems = await Carts.findAll({
                where: {
                    [ownerId]: user.id
                },
                include: [
                    {
                        model: Products,
                        where: {
                            status: true
                        }
                    }
                ],
            });

            return res.response({
                code: 200,
                status: 'success',
                cartItems
            }).code(200);
        } else if (user == 'Session expired') {
            return res.response({
                code: 401,
                status: 'error',
                message: user,
            }).code(200);
        } else {
            return res.response({
                code: 403,
                status: 'error',
                message: "You don't have permission for this action.",
            }).code(200);
        }
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: "error",
            message: "Something went wrong",
        }).code(200);
    }
};

const removeFromCart = async (req, res) => {
    try {
        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization);
        
        const allowed_user = ['DEALER', 'CUSTOMER'];
        if (allowed_user.includes(user.role) && user.application === 'kardify') {

            const { product_id } = req.payload;
            let model, ownerId;
            if (user.role === 'DEALER') {
                model = Dealers;
                ownerId = 'dealer_id';
            } else if (user.role === 'CUSTOMER') {
                model = Customers;
                ownerId = 'user_id';
            } else {
                return res.response({
                    code: 403,
                    status: 'error',
                    message: "You don't have permission for this action.",
                }).code(200);
            }

            const existingProduct = await Products.findOne({
                where: {
                    id: product_id
                }
            });

            if (!existingProduct) {
                return res.response({
                    code: 400,
                    status: 'error',
                    message: `Product not found`,
                }).code(200);
            }

            await Carts.destroy({
                where: {
                    [ownerId]: user.id,
                    product_id: product_id
                }
            });

            return res.response({
                code: 200,
                status: 'success',
                message: "Item removed from cart successfully."
            }).code(200);
        } else if (user === 'Session expired') {
            return res.response({
                code: 401,
                status: 'error',
                message: user,
            }).code(200);
        } else {
            return res.response({
                code: 403,
                status: 'error',
                message: "You don't have permission for this action.",
            }).code(200);
        }
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: "error",
            message: "Something went wrong",
        }).code(200);
    }
};



module.exports = {
    addToCart,
    getCart,
    removeFromCart
}