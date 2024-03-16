const { Model, DOUBLE } = require("sequelize");
const {
    sequelize,
    databases: { discounts },
    dataTypes: {
        model_data_types: { INTEGER, STRING, DATETIME, BOOLEAN, FLOAT },
    },
} = require("../config");
const ProductDiscounts = require("./product_discount_associations");
const Products = require("./product_model");

class Discounts extends Model { }

Discounts.init(
    {
        id: {
            type: INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
        },
        discount_name: {
            type: STRING,
            allowNull: false,
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
        product_id: {
            type: INTEGER,
            allowNull: true,
        },
        discount_type: {
            type: STRING,
            allowNull: false,
        },
        discount: {
            type: DOUBLE,
            allowNull: false,
        },
        min_amount: {
            type: DOUBLE,
            allowNull: false,
        },
        max_amount: {
            type: DOUBLE,
            allowNull: false,
        },
        start_date: {
            type: DATETIME,
            allowNull: false,
        },
        expiry_date: {
            type: DATETIME,
            allowNull: false,
        },
        status: {
            type: BOOLEAN,
            allowNull: false,
        },
        createdAt: {
            type: DATETIME,
            allowNull: false,
        },
        updatedAt: {
            type: DATETIME,
            allowNull: false,
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
        modelName: discounts, // We need to choose the model name
    }
);

Discounts.hasMany(ProductDiscounts, { foreignKey: 'discount_id' });
Discounts.belongsTo(Products, { foreignKey: 'product_id' });


module.exports = Discounts;
