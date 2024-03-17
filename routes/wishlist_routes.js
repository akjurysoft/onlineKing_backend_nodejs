const tags = ["api", "Wishlists"];

const { category_controllers, carts_controllers } = require("../controllers");

const {
    categoriesValidators,
    usersValidation,
    headerValidator,
    CartValidators
} = require("../validators");

const wishlist_routes = [
    {
        method: "GET",
        path: "/get-wishlist",
        options: {
            description: "Fetch all Wishlist Items.",
            validate: {
                headers: headerValidator
            },
            tags,
            handler: carts_controllers.getCart,
        },
    },
    {
        method: "POST",
        path: "/add-to-wishlist",
        options: {
            description: "Add to wishlist for customers",
            validate: {
                headers: headerValidator,
                payload: CartValidators.add_to_cart_payload
            },
            tags,
            handler: carts_controllers.addToCart,
        },
    },

    {
        method: "POST",
        path: "/remove-from-wishlist",
        options: {
            description: "Remove product from wishlist for customers",
            validate: {
                headers: headerValidator,
                payload: CartValidators.remove_from_cart_payload
            },
            tags,
            handler: carts_controllers.removeFromCart,
        },
    }
    
];

module.exports = wishlist_routes;