const Joi = require("joi");

const productSchema = Joi.object({
    product_id: Joi.number().required(),
    quantity: Joi.number().integer().min(1).required(),
});

const createOrderSchema = Joi.object({
    user_id: Joi.number().required(),
    delivery_address: Joi.string().required(),
    products: Joi.array().items(productSchema).min(1).required(),
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