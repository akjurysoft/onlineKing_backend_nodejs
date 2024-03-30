const Joi = require("joi");

const add_address_payload = Joi.object({
    fullname: Joi.string().required(),
    mobile: Joi.string().required(),
    email: Joi.string().allow(''),
    add_type: Joi.string().required(),
    add1: Joi.string().required(),
    add2: Joi.string().allow(''),
    city: Joi.string().required(),
    state: Joi.string().required(),
    country: Joi.string().required(),
    pincode: Joi.string().required(),
    area: Joi.string().allow(''),
    landmark: Joi.string().allow(''),
})


module.exports = {
    add_address_payload,
};