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
    ProductAttributes, Installers, Testimonials, Customers, AddressModel
} = require("../models");
const { Op } = require("sequelize");
const axios = require("axios");
const fs = require("fs");
const path = require("path");

const getAllAddress = async (req, res) => {
    try {

        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization);

        const allowed_user = ["CUSTOMER"]
        if (allowed_user.includes(user.role) && user.application === 'kardify') {
            const addresses = await AddressModel.findAll({
                where: { user_id: user.id },
                include: [{
                    model: Customers,
                    attributes: { exclude: ['password', 'accessToken', 'refreshToken'] },
                }],
                nest:true,
                mapToModel: true,
                raw: true,
                order: [['createdAt', 'DESC']]
            })

            console.log(addresses)
            return res
                .response({
                    code: 200,
                    status: 'success',
                    message: "Addresses fetched successfully",
                    addresses
                })
                .code(200);
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
        return res
            .response({
                code: 401,
                status: "error",
                message: "Something Wrong",
            })
            .code(200);
    }
};


module.exports = {
    getAllAddress
}