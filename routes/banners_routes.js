// describe routes here by creating objects inside the user_routes array
const tags = ["api", "Banner"];

const { banners_controllers } = require("../controllers");
const { BannerValidator, headerValidator, bannerValidators } = require("../validators");

const banner_routes = [
    {
        method: "GET",
        path: "/get-banners-admin",
        options: {
            description: "Getting Banners created by Admin for admin.",
            tags,
            validate: {
                headers: headerValidator,
                // query: BannerValidator.banner_fetch_query
            },
            handler: banners_controllers.getAllBanners,
        },
    },
    {
        method: "GET",
        path: "/get-banners-customer",
        options: {
            description: "Getting Banners created by Admin for Customers.",
            tags,
            validate: {
                // headers: headerValidator,
                // query: BannerValidator.banner_fetch_query
            },
            handler: banners_controllers.getAllBannersCustomers,
        },
    },
    {
        method: "POST",
        path: "/add-banner",
        options: {
            description: "Adding banner.",
            tags,
            payload: {
                maxBytes: 20 * 1024 * 1024 ,
                output: 'file',
                parse: true,
                multipart: true     // <-- this fixed the media type error
            },
            validate: {
                // headers: headerValidator,
                payload: bannerValidators.bannerCreationValidator
            },
            handler: banners_controllers.addBanners,
        },
    },
]

module.exports = banner_routes