const Joi = require("joi");

const type_of_user = Joi.object({
    type: Joi.string().valid("CUSTOMER", "DEALER").required(),
});

const add_to_cart_payload = Joi.object({
    // user_id: Joi.number().integer().required(),
    product_id: Joi.number().integer().required(),
    quantity: Joi.number().integer().allow(null),
});

const handle_increament_payload = Joi.object({
    product_id: Joi.number().integer().required(),
});


const handle_decrement_payload = Joi.object({
    product_id: Joi.number().integer().required(),
});

const remove_from_cart_payload = Joi.object({
    product_id: Joi.number().integer().required(),
});


module.exports = {
    type_of_user,
    add_to_cart_payload,
    handle_increament_payload,
    handle_decrement_payload,
    remove_from_cart_payload
};