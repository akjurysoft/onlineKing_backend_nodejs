const { Model } = require("sequelize");
const {
    sequelize,
    databases: { banners },
    dataTypes: {
        model_data_types: { INTEGER, STRING, DATETIME, BOOLEAN, FLOAT },
    },
} = require("../config");

class Banners extends Model { }

Banners.init(
    {
        id: {
            type: INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
        },
        banner_name: {
            type: STRING,
            allowNull: true,
        },
        banner_type: {
            type: STRING,
            allowNull: true,
        },
        web_image_url: {
            type: STRING,
            allowNull: true,
        },
        app_image_url: {
            type: STRING,
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
        status: {
            type: BOOLEAN,
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
        modelName: banners, // We need to choose the model name
    }
);


module.exports = Banners;
