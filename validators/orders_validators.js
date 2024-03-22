const Joi = require("joi");

const productSchema = Joi.object({
    product_id: Joi.number().required(),
    quantity: Joi.number().integer().min(1).required(),
});

const createOrderSchema = Joi.object({
    address_id: Joi.number().integer().required().allow(null),
    delivery_type_id: Joi.number().integer().required(),
    payment_id: Joi.string().required(),
    shipping_charge: Joi.number().required().allow(null),
    total_product_amount: Joi.number().required(),
    coupon_id: Joi.number().integer().allow(null),
    products: Joi.array().items(productSchema).min(1).required(),
    total_amount: Joi.number().required(),
});

const cancelOrderByAdmin = Joi.object({
    order_id: Joi.number().integer().required(),
    cancellation_reason: Joi.string().required()
})

const approveOrderValidator = Joi.object({
    order_id: Joi.number().integer().required()
})

const updateOrderStatusValidator = Joi.object({
    order_id: Joi.number().integer().required(),
    order_status_id: Joi.number().integer().required()
})


module.exports = {
    createOrderSchema,
    cancelOrderByAdmin,
    approveOrderValidator,
    updateOrderStatusValidator
};