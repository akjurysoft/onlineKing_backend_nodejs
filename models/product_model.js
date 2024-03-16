const { Model } = require("sequelize");
const {
    sequelize,
    databases: { products },
    dataTypes: {
        model_data_types: { INTEGER, STRING, DATETIME, BOOLEAN, DOUBLE },
    },
} = require("../config");

const Categories = require('./categories')
const SubCategories = require('./sub_categories')
const SuperSubCategories = require('./super_sub_categories_model');
const CarBrands = require("./car_brands_model");
const Combinations = require("./product_comination_model");
const ProductBrand = require("./product_brand_model");
// const SuperSubCategories = require('./super_sub_categories')

class Products extends Model { }

Products.init(
    {
        id: {
            type: INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
        },
        product_name: {
            type: STRING,
            allowNull: true,
        },
        product_desc: {
            type: STRING,
            allowNull: true,
        },
        product_brand_id: {
            type: INTEGER,
            allowNull: true,
        },
        category_id: {
            type: INTEGER,
            allowNull: true,
        },
        sub_category_id: {
            type: INTEGER,
            allowNull: true,
        },
        super_sub_category_id: {
            type: INTEGER,
            allowNull: true,
        },
        minimum_order: {
            type: INTEGER,
            allowNull: true,
        },
        default_price: {
            type: DOUBLE,
            allowNull: true,
        },
        stock: {
            type: INTEGER,
            allowNull: true,
        },
        status: {
            type: BOOLEAN,
            allowNull: true,
        },
        discount_type: {
            type: STRING,
            allowNull: true,
        },
        discount: {
            type: DOUBLE,
            allowNull: true,
        },
        tax_type: {
            type: STRING,
            allowNull: true,
        },
        product_type: {
            type: STRING,
            allowNull: true,
        },
        car_brand_id: {
            type: INTEGER,
            allowNull: true,
        },
        car_model_id: {
            type: INTEGER,
            allowNull: true,
        },
        start_year: {
            type: DATETIME,
            allowNull: true,
        },
        end_year: {
            type: DATETIME,
            allowNull: true,
        },
        has_exchange_policy: {
            type: BOOLEAN,
            allowNull: true,
        },
        exchange_policy: {
            type: STRING,
            allowNull: true,
        },
        has_cancellaton_policy: {
            type: BOOLEAN,
            allowNull: true,
        },
        cancellation_policy: {
            type: STRING,
            allowNull: true,
        },
        quantity: {
            type: INTEGER,
            allowNull: true,
        },
        has_warranty: {
            type: BOOLEAN,
            allowNull: true,
        },
        warranty: {
            type: STRING,
            allowNull: true,
        },
        createdAt: {
            type: DATETIME,
            allowNull: true,
        },
        updatedAt: {
            type: DATETIME,
            allowNull: true,
        },
        deletedAt: {
            type: DATETIME,
            allowNull: true,
        },
    },
    {
        // Other model options go here
        sequelize, // We need to pass the connection instance
        paranoid: true,
        modelName: products, // We need to choose the model name
    }
);

Categories.hasMany(Products, {
    foreignKey: 'category_id'
})

Products.belongsTo(Categories, {
    foreignKey: 'category_id'
})

ProductBrand.hasMany(Products, {
    foreignKey: 'product_brand_id'
})

Products.belongsTo(ProductBrand, {
    foreignKey: 'product_brand_id'
})

SubCategories.hasMany(Products, {
    foreignKey: 'sub_category_id'
})

Products.belongsTo(SubCategories, {
    foreignKey: 'sub_category_id'
})

SuperSubCategories.hasMany(Products, {
    foreignKey: 'super_sub_category_id'
})

Products.belongsTo(SuperSubCategories, {
    foreignKey: 'super_sub_category_id'
})

CarBrands.hasMany(Products, {
    foreignKey: 'car_brand_id'
})

Products.belongsTo(CarBrands, {
    foreignKey: 'car_brand_id'
})

Products.hasOne(Combinations, {
    foreignKey: 'product_id'
});

Combinations.belongsTo(Products, {
    foreignKey: 'product_id',
});

module.exports = Products;
