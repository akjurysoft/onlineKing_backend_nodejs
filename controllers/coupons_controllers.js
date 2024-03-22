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
    CarBrands, Banners, BannerProductAssociations, Categories, SubCategories, SuperSubCategories, Customers, Dealers, Coupons, Orders, SubscribedCustomers
} = require("../models");
const { Op } = require("sequelize");
const axios = require("axios");
const fs = require("fs");
const path = require("path");


const fetchAllCouponsAdmin = async (req, res) => {
    try {
        const allCoupons = await Coupons.findAll({
            attributes: { exclude: ['createdAt', 'updatedAt', 'deletedAt'] },
            order: [['createdAt', 'DESC']],
        });

        return res.response({
            code: 200,
            status: 'success',
            message: 'All coupons fetched successfully',
            coupons: allCoupons,
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


const createCoupon = async (req, res) => {
    const t = await sequelize.transaction();

    try {
        const {
            coupon_type,
            coupon_title,
            coupon_name,
            min_order_amount,
            max_discount,
            discount_type,
            discount,
            max_use_per_user,
            max_use,
            user_id,
            dealer_id,
            start_date,
            expiry_date,
        } = req.payload;

        const couponPayload = {
            coupon_type,
            coupon_title,
            coupon_name,
            status: true,
            min_order_amount,
            max_discount,
            discount_type,
            discount,
            max_use_per_user,
            max_use,
            user_id,
            dealer_id,
            start_date,
            expiry_date,
        };

        const existingCoupon = await Coupons.findOne({
            where: { coupon_name },
            transaction: t,
        });

        if (existingCoupon) {
            await t.rollback();
            return res.response({
                code: 400,
                status: 'error',
                message: 'Coupon with the same name already exists',
            }).code(400);
        }

        const createdCoupon = await Coupons.create(couponPayload, { transaction: t });

        await t.commit();

        return res.response({
            code: 201,
            status: 'success',
            message: 'Coupon created successfully',
            coupon: createdCoupon,
        }).code(201);
    } catch (error) {
        await t.rollback();

        console.error(error);
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(500);
    }
};

const getCoupon = async (req, res) => {
    try {
        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        const allowed_user = ['CUSTOMER', 'DEALER']
        if (allowed_user.includes(user.role) && user.application === 'kardify') {

            let ownerId;
            let model;
            let couponType;
            if (user.role === 'DEALER') {
                ownerId = 'dealer_id';
                model = Dealers;
                couponType = 'Dealer Wise'
            } else if (user.role === 'CUSTOMER') {
                ownerId = 'user_id';
                model = Customers;
                couponType = 'Customer wise'
            } else {
                return res.response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                }).code(200);
            }

            const userData = await model.findOne({
                where: {
                    id: user.id
                },
                raw: true
            })

            const hasOrders = await Orders.findOne({
                where: {
                    [ownerId]: user.id
                }
            });

            const coupons = [];

            if (!hasOrders) {
                const firstOrderCoupon = await Coupons.findOne({
                    where: {
                        coupon_type: 'First Order',
                        [ownerId]: user.id
                    },
                    attributes: { exclude: ['createdAt', 'updatedAt', 'deletedAt'] },
                });

                if (firstOrderCoupon) {
                    coupons.push(firstOrderCoupon);
                }
            }

            const freeDeliveryCoupon = await Coupons.findOne({
                where: {
                    coupon_type: 'Free Delivery',
                    status: true
                },
                attributes: { exclude: ['createdAt', 'updatedAt', 'deletedAt'] },
            });

            if (freeDeliveryCoupon) {
                coupons.push(freeDeliveryCoupon);
            }

            const customerCoupons = await Coupons.findAll({
                where: {
                    coupon_type: couponType,
                },
                attributes: { exclude: ['createdAt', 'updatedAt', 'deletedAt'] },
            });

            if (customerCoupons) {
                coupons.push(...customerCoupons);
            }


            if (userData) {
                const isSubscribed = await SubscribedCustomers.findOne({
                    where: {
                        email: userData.email
                    },
                    raw: true
                })

                if (isSubscribed) {
                    const subscribeCoupons = await Coupons.findAll({
                        where: {
                            coupon_type: 'Subscribed Customer',
                            status: true
                        },
                        attributes: { exclude: ['createdAt', 'updatedAt', 'deletedAt'] },
                    });

                    if (subscribeCoupons) {
                        coupons.push(...subscribeCoupons);
                    }
                }
            }
            
            if (coupons.length === 0) {
                return res.response({
                    code: 404,
                    status: 'error',
                    message: 'Coupons not found',
                }).code(404);
            }

            const currentDate = new Date();

            const validCoupons = coupons.filter(coupon => {
                return !coupon.expiry_date || new Date(coupon.expiry_date) > currentDate;
            });

            return res.response({
                code: 200,
                status: 'success',
                message: 'Coupons fetched successfully',
                coupons: validCoupons
            }).code(200);
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
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(500);
    }
};


const editCoupon = async (req, res) => {
    try {

        const { coupon_id, coupon_name, min_order_amount, max_discount, discount_type, discount, max_use_per_user, max_use, expiry_date } = req.payload;

        const existingCoupon = await Coupons.findByPk(coupon_id);
        if (!existingCoupon) {
            return res.response({
                code: 404,
                status: 'error',
                message: 'Coupon not found',
            }).code(404);
        }

        await existingCoupon.update({
            coupon_name,
            min_order_amount,
            max_discount,
            discount_type,
            discount,
            max_use_per_user,
            max_use,
            expiry_date,
        });

        return res.response({
            code: 200,
            status: 'success',
            message: 'Coupon updated successfully',
            coupon: existingCoupon,
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

const toggleCouponStatus = async (req, res) => {
    try {
        const { coupon_id } = req.query;

        if (!Number.isInteger(coupon_id) || coupon_id <= 0) {
            return res.response({
                code: 400,
                status: 'error',
                message: 'Invalid coupon_id',
            }).code(200);
        }

        const existingCoupon = await Coupons.findOne({
            where: {
                id: coupon_id,
            },
        });

        if (!existingCoupon) {
            return res.response({
                code: 404,
                status: 'error',
                message: 'Coupon not found',
            }).code(200);
        }

        existingCoupon.status = !existingCoupon.status;

        await existingCoupon.save();

        return res.response({
            code: 200,
            status: 'success',
            message: 'Status toggled successfully',
            coupon: existingCoupon,
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


const deleteCoupon = async (req, res) => {
    try {
        const { coupon_id } = req.query;

        const existingCoupon = await Coupons.findOne({
            where: {
                id: coupon_id,
            },
        });

        if (!existingCoupon) {
            return res
                .response({
                    code: 404,
                    status: "error",
                    message: "coupon not found",
                })
                .code(200);
        }

        await existingCoupon.destroy();

        return res
            .response({
                code: 200,
                status: 'success',
                message: `${existingCoupon.coupon_name} deleted successfully`,
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
    fetchAllCouponsAdmin,
    createCoupon,
    getCoupon,
    editCoupon,
    toggleCouponStatus,
    deleteCoupon
}