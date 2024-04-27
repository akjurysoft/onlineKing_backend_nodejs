const jwt = require("jsonwebtoken");
const ejs = require("ejs");
const { uploadFile } = require('../helpers')
const { uploadMultipleFiles } = require('../helpers')
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
    Products, Categories, SubCategories, SuperSubCategories, CarBrands, ProductImages, Combinations, ProductAttributes, AttributeCombinatios, VariantAttributes, CarModel
} = require("../models");
const { Op } = require("sequelize");
const axios = require("axios");
const fs = require("fs");
const path = require("path");
const AttributeCombinations = require("../models/attribute_comination_model");
const Joi = require("joi");
const ProductBrand = require("../models/product_brand_model");



const fetchProducts = async (req, res) => {
    try {
        const {
            category_id,
            sub_category_id,
            super_sub_category_id,
            car_brand_id,
            product_name,
            year,
            product_id,
            product_brand_id
        } = req.query;

        let whereCondition = {};

        if (category_id) {
            whereCondition.category_id = category_id;
        }

        if (sub_category_id) {
            whereCondition.sub_category_id = sub_category_id;
        }

        if (super_sub_category_id) {
            whereCondition.super_sub_category_id = super_sub_category_id;
        }

        if (car_brand_id) {
            whereCondition.car_brand_id = car_brand_id;
        }

        if (product_name) {
            whereCondition.product_name = product_name
        }

        if (product_brand_id) {
            whereCondition.product_brand_id = product_brand_id
        }

        if (product_id) {
            whereCondition.id = product_id
        }

        if (year) {
            whereCondition = {
                ...whereCondition,
                start_year: {
                    [Op.lte]: year
                },
                end_year: {
                    [Op.gte]: year
                }
            }
        }

        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        if (user.role === "ADMIN" && user.application === 'kardify') {
            const products = await Products.findAll({
                where: whereCondition,

                include: [
                    {
                        model: Categories,
                        required: true
                    },
                    {
                        model: SubCategories,
                        required: false
                    },
                    {
                        model: SuperSubCategories,
                        required: false
                    },
                    {
                        model: CarBrands,
                        required: false
                    },
                    {
                        model: ProductBrand,
                        required: false
                    }
                ],
                raw: true,
                nest: true,
                mapToModel: true,
                order: [['createdAt', 'DESC']],
            });

            const images = await ProductImages.findAll({
                where: {
                    product_id: products.map(product => product.id),
                    status: 1,
                },
                attributes: ['id', 'product_id', 'image_url'],
                raw: true,
            });

            const imagesMap = images.reduce((acc, image) => {
                const { product_id } = image;
                if (!acc[product_id]) {
                    acc[product_id] = [];
                }
                acc[product_id].push(image);
                return acc;
            }, {});


            const attributes = await Combinations.findAll({
                where: {
                    product_id: products.map(product => product.id)
                },

                raw: true,
            });

            const attributesMap = attributes.reduce((acc, atttr) => {
                const { product_id } = atttr;
                if (!acc[product_id]) {
                    acc[product_id] = [];
                }
                acc[product_id].push(atttr);
                return acc;
            }, {});

            products.forEach(product => {
                const productId = product.id;
                product.atributes = attributesMap[productId] || [];
                product.images = imagesMap[productId] || [];
            });

            return res
                .response({
                    code: 200,
                    status: 'success',
                    message: "Products fetched successfully",
                    products,
                })
                .code(200);

        } else if (user == 'Session expired') {
            return res
                .response({
                    code: 401,
                    status: 'error',
                    message: user,
                })
                .code(200);
        } else {
            return res
                .response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                })
                .code(200);
        }

    } catch (error) {
        console.log(error)
        return res
            .response({
                code: 500,
                status: "error",
                message: "Something went wrong",
            })
            .code(200);
    }
};

const fetchProductCustomer = async (req, res) => {
    try {
        const {
            category_id,
            sub_category_id,
            super_sub_category_id,
            car_brand_id,
            year,
            product_name,
            product_id,
            product_brand_id
        } = req.query;

        let whereCondition = {};

        if (category_id) {
            whereCondition.category_id = category_id;
        }

        if (sub_category_id) {
            whereCondition.sub_category_id = sub_category_id;
        }

        if (super_sub_category_id) {
            whereCondition.super_sub_category_id = super_sub_category_id;
        }

        if (car_brand_id) {
            whereCondition.car_brand_id = car_brand_id;
        }

        if (product_name) {
            whereCondition.product_name = product_name
        }

        if (product_brand_id) {
            whereCondition.product_brand_id = product_brand_id
        }

        if (product_id) {
            whereCondition.id = product_id
        }

        if (year) {
            whereCondition = {
                ...whereCondition,
                start_year: {
                    [Op.lte]: year
                },
                end_year: {
                    [Op.gte]: year
                }
            }
        }

        const products = await Products.findAll({
            where: whereCondition,
            order: [['createdAt', 'DESC']],
            include: [
                {
                    model: Categories,
                    required: true
                },
                {
                    model: SubCategories,
                    required: false
                },
                {
                    model: SuperSubCategories,
                    required: false
                },
                {
                    model: CarBrands,
                    required: false
                },
                {
                    model: CarModel,
                    required: false
                },
                {
                    model: ProductBrand,
                    required: false
                },
                {
                    model: ProductImages,
                    required: false,
                    as: 'images',
                },
                {
                    model: Combinations,
                    required: false,
                    include: [
                        {
                            model: AttributeCombinations,
                            required: true,
                        },
                        // {
                        //     model: VariantAttributes,
                        //     required: true
                        // }
                    ],
                }
            ],

        });


        const currentDate = new Date();

        products.forEach(product => {
            if (
                product.offer_start_date && product.is_offer_avl &&
                new Date(product.offer_start_date) <= currentDate
            ) {
                product.discount = product.offer_discount;
                product.discount_type = product.offer_discount_type;
            }
        });

        return res
            .response({
                code: 200,
                status: 'success',
                message: "Products fetched successfully",
                products,
            })
            .code(200);
    } catch (error) {
        console.log(error)
        return res
            .response({
                code: 500,
                status: "error",
                message: "Something went wrong",
            })
            .code(200);
    }
};

const addProduct = async (req, res) => {
    const transact = await sequelize.transaction()
    try {
        const {
            product_name,
            product_desc,
            product_brand_id,
            category_id,
            sub_category_id,
            super_sub_category_id,
            minimum_order,
            default_price,
            stock,
            discount_type,
            discount,
            tax_type,
            tax_rate,
            product_type,
            car_brand_id,
            car_model_id,
            start_year,
            end_year,
            has_exchange_policy,
            exchange_policy,
            has_cancellation_policy,
            cancellation_policy,
            quantity,
            has_warranty,
            warranty,
            image_count,
        } = req.payload;

        console.log(image_count)

        const combinations = JSON.parse(req.payload.combinations)

        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        if (user.role === "ADMIN" && user.application === 'kardify') {
            const existingProduct = await Products.findOne({
                where: {
                    product_name,
                },
                raw: true,
                order: [['createdAt', 'DESC']]
            });

            if (existingProduct) {
                return res
                    .response({
                        code: 409,
                        status: "error",
                        message: "Product with the same name already exists",
                    })
                    .code(200);
            }

            let image_url_list = []
            if (image_count) {
                for (let i = 1; i <= image_count; i++) {
                    const { file_url } = await uploadFile(req, req.payload[`image_${i}`], 'uploads/products/')
                    image_url_list.push({ image_url: file_url })
                }
            }

            // const modelData = await CarModel.findOne({
            //     where: {
            //         id: car_model_id
            //     }
            // })

            // if(start_year && end_year){
            //     modelData = {
            //         start_year: {
            //             [Op.lte]: start_year
            //         },
            //         end_year: {
            //             [Op.gte]: end_year
            //         }
            //     }
            // }


            const newProduct = await Products.create({
                status: true,
                product_name,
                product_desc,
                product_brand_id,
                category_id,
                sub_category_id: sub_category_id ? sub_category_id : null,
                super_sub_category_id: super_sub_category_id ? super_sub_category_id : null,
                minimum_order,
                default_price,
                stock,
                discount_type,
                discount,
                tax_type,
                tax_rate,
                product_type,
                car_brand_id,
                car_model_id,
                start_year,
                end_year,
                has_exchange_policy,
                exchange_policy,
                has_cancellation_policy,
                cancellation_policy,
                quantity,
                has_warranty,
                warranty,
                // images: fileUrls,

            }, {
                transaction: transact
            });

            for (const combination of combinations) {
                const createdCombination = await Combinations.create({
                    price: combination.price,
                    stock: combination.stock,
                    product_id: newProduct.id,
                    combination: combination.combination_name
                }, { transaction: transact });

                for (const attributeCombination of combination.combinations) {
                    await AttributeCombinations.create({
                        combination_id: createdCombination.id,
                        attribute_id: attributeCombination.attribute_id,
                        attribute_value: attributeCombination.attribute_value
                    }, { transaction: transact });
                }
            }


            const image_url_data = image_url_list.map((e) => {
                return {
                    ...e,
                    product_id: newProduct.id
                }
            })

            const image_data = await Promise.all(image_url_data)
            await ProductImages.bulkCreate(image_data, {
                transaction: transact
            })

            await transact.commit()


            return res
                .response({
                    code: 201,
                    status: 'success',
                    message: "Product created successfully",
                    product: newProduct,
                })
                .code(200);
        } else if (user == 'Session expired') {
            return res
                .response({
                    code: 401,
                    status: 'error',
                    message: user,
                })
                .code(200);
        } else {
            return res
                .response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                })
                .code(200);
        }

    } catch (error) {
        await transact.rollback()
        console.error(error);
        return res
            .response({
                code: 500,
                status: "error",
                message: "Something went wrong",
            })
            .code(200);
    }
};

const addBulkProduct = async (req, res) => {
    const transact = await sequelize.transaction();
    try {

        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        if (user.role === "ADMIN" && user.application === 'kardify') {
            const { product_data } = req.payload;

            const productsWithStatus = product_data.map(product => ({
                ...product,
                status: true
            }));

            const existingProducts = await Products.findAll({
                where: {
                    product_name: productsWithStatus.map(product => product.product_name)
                },
                include: [Categories, SubCategories, SuperSubCategories],
                nest: true,
                mapToModel: true,
                raw: true
            });

            if (existingProducts.length > 0) {
                return res.response({
                    code: 409,
                    status: 'error',
                    message: "One or more products with the same name already exist",
                    existingProducts
                }).code(200);
            }

            const createdProducts = await Products.bulkCreate(productsWithStatus, {
                transaction: transact
            });

            await transact.commit();
            await sequelize.close();

            return res.response({
                code: 201,
                status: 'success',
                message: "Products created successfully",
                createdProducts
            }).code(200);
        } else if (user == 'Session expired') {
            return res
                .response({
                    code: 401,
                    status: 'error',
                    message: user,
                })
                .code(200);
        } else {
            return res
                .response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                })
                .code(200);
        }
    } catch (error) {
        await transact.rollback();
        console.error(error);
        return res.response({
            code: 500,
            status: "error",
            message: "Something went wrong",
            error: error.message
        }).code(200);
    }
};

const editProduct = async (req, res) => {
    try {
        const {
            product_id,
            product_name,
            product_desc,
            product_brand,
            category_id,
            sub_category_id,
            super_sub_category_id,
            minimum_order,
            default_price,
            stock,
            discount_type,
            discount,
            tax_type,
            product_type,
            car_brand_id,
            car_model_id,
            start_year,
            end_year,
            has_exchange_policy,
            exchange_policy,
            has_cancellation_policy,
            cancellation_policy,
            quantity,
            has_warranty,
            warranty,
            image_count,
        } = req.payload;

        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        if (user.role === "ADMIN" && user.application === 'kardify') {

            const existingProduct = await Products.findOne({
                where: {
                    id: product_id
                }
            });

            if (!existingProduct) {
                return res
                    .response({
                        code: 404,
                        status: "error",
                        message: "Product not found",
                    })
                    .code(200);
            }

            if (existingProduct.product_name !== product_name) {
                const productWithSameName = await Products.findOne({
                    where: {
                        product_name
                    }
                });

                if (productWithSameName && productWithSameName.id !== product_id) {
                    return res
                        .response({
                            code: 409,
                            status: "error",
                            message: "Product with the same name already exists",
                        })
                        .code(200);
                }
            }

            await existingProduct.update({
                product_name,
                product_desc,
                product_brand,
                category_id,
                sub_category_id,
                super_sub_category_id,
                minimum_order,
                default_price,
                stock,
                discount_type,
                discount,
                tax_type,
                product_type,
                car_brand_id,
                car_model_id,
                start_year,
                end_year,
                has_exchange_policy,
                exchange_policy,
                has_cancellation_policy,
                cancellation_policy,
                quantity,
                has_warranty,
                warranty,
            });

            if (image_count) {
                await ProductImages.destroy({ where: { product_id } });

                const newImages = [];
                for (let i = 1; i <= image_count; i++) {
                    const { file_url } = await uploadFile(req, req.payload[`image_${i}`], 'uploads/products/')
                    newImages.push({ image_url: file_url, product_id });
                }
                await ProductImages.bulkCreate(newImages);
            }

            return res
                .response({
                    code: 200,
                    status: 'success',
                    message: "Product updated successfully",
                    product: existingProduct,
                })
                .code(200);
        } else if (user == 'Session expired') {
            return res
                .response({
                    code: 401,
                    status: 'error',
                    message: user,
                })
                .code(200);
        } else {
            return res
                .response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                })
                .code(200);
        }

    } catch (error) {
        console.error(error);
        return res
            .response({
                code: 500,
                status: "error",
                message: "Something went wrong",
            })
            .code(200);
    }
};

const deleteProduct = async (req, res) => {
    try {
        const { product_id } = req.query;

        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        if (user.role === "ADMIN" && user.application === 'kardify') {
            const existingProduct = await Products.findByPk(product_id);

            if (!existingProduct) {
                return res
                    .response({
                        code: 404,
                        status: "error",
                        message: "Product not found",
                    })
                    .code(200);
            }

            await existingProduct.destroy();

            return res
                .response({
                    code: 200,
                    status: 'success',
                    message: "Product deleted successfully",
                })
                .code(200);
        } else if (user == 'Session expired') {
            return res
                .response({
                    code: 401,
                    status: 'error',
                    message: user,
                })
                .code(200);
        } else {
            return res
                .response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                })
                .code(200);
        }

    } catch (error) {
        console.error(error);
        return res
            .response({
                code: 500,
                status: "error",
                message: "Something went wrong",
            })
            .code(200);
    }
};

const toggleProductStatus = async (req, res) => {
    try {
        const { product_id } = req.query;

        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)
        if (user.role === "ADMIN" && user.application === 'kardify') {
            if (!Number.isInteger(product_id) || product_id <= 0) {
                return res
                    .response({
                        code: 400,
                        status: "error",
                        message: "Invalid product_id",
                    })
                    .code(200);
            }

            const existingProduct = await Products.findOne({
                where: {
                    id: product_id,
                },
            });

            if (!existingProduct) {
                return res
                    .response({
                        code: 404,
                        status: "error",
                        message: "Product not found",
                    })
                    .code(200);
            }

            existingProduct.status = !existingProduct.status;

            await existingProduct.save();

            return res
                .response({
                    code: 200,
                    status: 'success',
                    message: "Status changed successfully",
                    category: existingProduct,
                })
                .code(200);
        } else if (user == 'Session expired') {
            return res
                .response({
                    code: 401,
                    status: 'error',
                    message: user,
                })
                .code(200);
        } else {
            return res
                .response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                })
                .code(200);
        }
    } catch (error) {
        console.error(error);
        return res
            .response({
                code: 500,
                status: "error",
                message: "Something went wrong",
            })
            .code(200);
    }
};

module.exports = {
    fetchProducts,
    fetchProductCustomer,
    addProduct,
    addBulkProduct,
    editProduct,
    deleteProduct,
    toggleProductStatus
}