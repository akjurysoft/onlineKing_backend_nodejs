const tags = ["api", "Orders"];

const { category_controllers, car_brands_controllers, orders_controllers } = require("../controllers");

const {
    categoriesValidators,
    usersValidation,
    headerValidator,
    carBrandsValidators,
    ordersValidator
} = require("../validators");

const order_routes = [
    {
        method: "GET",
        path: "/fetch-orders-admin",
        options: {
            description: "Fetch all Orders for Admins.",
            // validate: {
            //     query: carBrandsValidators.fetch_car_brands_payload
            // },
            tags,
            handler: orders_controllers.getAllOrdersAdmin,
        },
    },

    {
        method: "GET",
        path: "/fetch-orders",
        options: {
            description: "Fetch all Orders for Customers.",
            // validate: {
            //     query: carBrandsValidators.fetch_car_brands_payload
            // },
            tags,
            handler: orders_controllers.getAllOrdersAdmin,
        },
    },

    {
        method: "POST",
        path: "/place-order",
        options: {
            description: "Place Order for customers.",
            validate: {
                payload: ordersValidator.createOrderSchema
            },
            tags,
            handler: orders_controllers.createOrder,
        },
    },

    {
        method: "POST",
        path: "/approve-order",
        options: {
            description: "Approve order for Admin.",
            validate: {
                payload: ordersValidator.approveOrderValidator
            },
            tags,
            handler: orders_controllers.approveOrderByAdmin,
        },
    },

    {
        method: "POST",
        path: "/cancel-order-by-admin",
        options: {
            description: "Cancel order for Admin.",
            validate: {
                payload: ordersValidator.cancelOrderByAdmin
            },
            tags,
            handler: orders_controllers.cancelOrderByAdmin,
        },
    },

    {
        method: "GET",
        path: "/get-all-status",
        options: {
            description: "Fetch All status.",
            tags,
            handler: orders_controllers.getAllOrderStatuses,
        },
    },

    {
        method: "POST",
        path: "/order-status-update",
        options: {
            description: "Order Status for Admin.",
            validate: {
                payload: ordersValidator.updateOrderStatusValidator
            },
            tags,
            handler: orders_controllers.updateOrderStatus,
        },
    }
    
];

module.exports = order_routes;