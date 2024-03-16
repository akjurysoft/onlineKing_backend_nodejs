const Joi = require("joi");

const createDiscountValidator = Joi.object({
    discount_name: Joi.string().required(),
    product_brand_id: Joi.number().integer().positive().allow(null),
    category_id: Joi.number().integer().positive().allow(null),
    sub_category_id: Joi.number().integer().positive().allow(null),
    super_sub_category_id: Joi.number().integer().positive().allow(null),
    products: Joi.array().items(Joi.object({
        product_id: Joi.number().integer().positive().required(),
    })).required(),
    discount_type: Joi.string().required(),
    discount: Joi.number().required(),
    min_amount: Joi.number().required(),
    max_amount: Joi.number().required(),
    start_date: Joi.date().required(),
    expiry_date: Joi.date().required()
});

const editDiscountValidator = Joi.object({
    discount_id: Joi.number().integer().positive().required(),
    discount_name: Joi.string().required(),
    discount_type: Joi.string().required(),
    discount: Joi.number().optional(),
    min_amount: Joi.number().optional(),
    max_amount: Joi.number().optional(),
    start_date: Joi.date().optional(),
    expiry_date: Joi.date().optional(),
});

const statusUpdatePayload = Joi.object({
    discount_id: Joi.number().integer().required()
});

const deleteDiscountPayload = Joi.object({
    discount_id: Joi.number().integer().required()
});

module.exports = {
    createDiscountValidator,
    editDiscountValidator,
    statusUpdatePayload,
    deleteDiscountPayload
};