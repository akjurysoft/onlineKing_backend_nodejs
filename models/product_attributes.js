const { Model } = require("sequelize");
const {
    sequelize,
    databases: { product_attributes },
    dataTypes: {
        model_data_types: { INTEGER, STRING, DATETIME, BOOLEAN },
    },
} = require("../config");

const Products = require("./product_model");
const Combinations = require("./product_comination_model");
const AttributeCombinations = require("./attribute_comination_model");


class ProductAttributes extends Model {}

ProductAttributes.init(
  {
    id: {
      type: INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    attribute_name: {
      type: STRING,
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
    modelName: product_attributes, // We need to choose the model name
  }
);

ProductAttributes.hasMany(AttributeCombinations, {
  foreignKey: 'attribute_id',
});

module.exports = ProductAttributes;
