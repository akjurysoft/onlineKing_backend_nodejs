const tags = ["api", "Carts"];

const { category_controllers } = require("../controllers");

const {
    categoriesValidators,
    usersValidation,
    headerValidator
} = require("../validators");

const carts_routes = [
    {
        method: "GET",
        path: "/get-carts",
        options: {
            description: "Fetch all Carts Items.",
            validate: {
                headers: headerValidator,
                query: categoriesValidators.fetch_categories_payload
            },
            tags,
            handler: category_controllers.getCategories,
        },
    },
    {
        method: "POST",
        path: "/add-to-cart",
        options: {
            description: "Add to cart for customers",
            validate: {
                headers: headerValidator,
                query: categoriesValidators.change_status_category_validator
            },
            tags,
            handler: category_controllers.toggleCategoryStatus,
        },
    }
    
];

module.exports = carts_routes;