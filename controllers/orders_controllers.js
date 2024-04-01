const jwt = require("jsonwebtoken");
const ejs = require("ejs");
const { uploadFile } = require('../helpers')
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
    CarBrands, OrderDetails, Orders, Categories, SubCategories, SuperSubCategories, Products, DeliveryTypes, OrderStatusLogs, OrderStatuses, ProductImages, Carts
} = require("../models");
const { Op, Model } = require("sequelize");
const axios = require("axios");
const fs = require("fs");
const path = require("path");

const getAllOrdersAdmin = async (req, res) => {
    try {
        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        const allowed_user = ['ADMIN']
        if (allowed_user.includes(user.role) && user.application === 'kardify') {
            const allOrders = await Orders.findAll({
                include: [
                    DeliveryTypes,
                    {
                        model: OrderStatuses,
                        as: 'order_status',
                        attributes: ['id', 'status_name', 'createdAt', 'updatedAt'],
                    },
                    {
                        model: OrderStatusLogs,
                        attributes: ['id', 'order_status_id', 'createdAt', 'updatedAt'],
                        include:[
                            {
                                model: OrderStatuses,
                                required: true
                            }
                        ]
                    },
                    {
                        model: OrderDetails,
                        include: [
                            Categories,
                            SubCategories,
                            SuperSubCategories,
                            Products,
                            {
                                model: ProductImages,
                                as: 'product_images', 
                                where: {
                                    status: 1,
                                },
                                attributes: ['id', 'image_url'],
                                required: false,
                                raw: true,
                            },
                            
                        ],
                    },
                   
                ],
            });
            
    
            // const images = await ProductImages.findAll({
            //     where: {
            //         product_id: allOrders.map(product => product.id),
            //         status: 1,
            //     },
            //     attributes: ['id', 'product_id' , 'image_url'],
            //     raw: true,
            // });
    
            return res
                .response({
                    code: 200,
                    status: 'success',
                    message: 'All orders fetched successfully',
                    orders: allOrders,
                })
                .code(200);
        }else if (user == 'Session expired') {
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
                status: 'error',
                message: 'Something went wrong',
            })
            .code(200);
    }
};

const getOrderForCustomer = async (req, res) => {
    try {
        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)

        const allowed_user = ['CUSTOMER' , 'DEALER']
        if (allowed_user.includes(user.role) && user.application === 'kardify') {
            
            const customerId = user.id
            let ownerId;
            let user_type;
            if (user.role === 'DEALER') {
                ownerId = 'dealer_id'
                user_type= "DEALER"
            } else if (user.role === 'CUSTOMER') {
                ownerId = 'user_id'
                user_type= "CUSTOMER"
            }

            const customerOrders = await Orders.findAll({
                where: {
                    [ownerId]: customerId,
                    user_type
                },
                include: [
                    DeliveryTypes,
                    {
                        model: OrderStatuses,
                        as: 'order_status',
                        attributes: ['id', 'status_name', 'createdAt', 'updatedAt'],
                    },
                    {
                        model: OrderStatusLogs,
                        attributes: ['id', 'order_status_id', 'createdAt', 'updatedAt'],
                        include:[
                            {
                                model: OrderStatuses,
                                required: true
                            }
                        ]
                    },
                    {
                        model: OrderDetails,
                        include: [
                            Categories,
                            SubCategories,
                            SuperSubCategories,
                            Products,
                            {
                                model: ProductImages,
                                as: 'product_images', 
                                where: {
                                    status: 1,
                                },
                                attributes: ['id', 'image_url'],
                                required: false,
                                raw: true,
                            },
                        ],
                    },
                ],
            });

            return res
                .response({
                    code: 200,
                    status: 'success',
                    message: 'Orders fetched successfully',
                    orders: customerOrders,
                })
                .code(200);
        } else if (user === 'Session expired') {
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
                    message: "You don't have permission for this action.",
                })
                .code(200);
        }
    } catch (error) {
        console.error(error);
        return res
            .response({
                code: 500,
                status: 'error',
                message: 'Something went wrong',
            })
            .code(200);
    }
};

const createOrder = async (req, res) => {
    const t = await sequelize.transaction();

    try {
        const user = await checkToken(req.headers['Authorization'] ? req.headers['Authorization'] : req.headers.authorization)
        const allowed_user = ['CUSTOMER', 'DEALER']

        if (allowed_user.includes(user.role) && user.application === 'kardify') {
            const {  
                address_id, 
                delivery_type_id, 
                coupon_id,
                payment_id, 
                shipping_charge,  
                total_product_amount,
                products ,
                total_amount
            } = req.payload;
            let ownerId;
            if (user.role === 'DEALER') {
                ownerId = 'dealer_id';
            } else if (user.role === 'CUSTOMER') {
                ownerId = 'user_id';
                if (!address_id) {
                    return res.response({
                        code: 400,
                        status: 'error',
                        message: "Address is required for customers.",
                    }).code(400);
                }
            } else {
                return res.response({
                    code: 403,
                    status: 'error',
                    message: "You dont have permission for this action.",
                }).code(200);
            }

            const isAvalibelPending = await OrderStatuses.findOne({
                where:{
                    status_name: 'Pending'
                }
            })
            if(!isAvalibelPending) {
                return res.response({
                    code: 400,
                    status: 'error',
                    message: "Pending status not found.",
                }).code(400);
            }

            const isAvailibelDeliverType = await DeliveryTypes.findOne({
                where:{
                    id: delivery_type_id
                }
            })
            if(!isAvailibelDeliverType) {
                return res.response({
                    code: 400,
                    status: 'error',
                    message: `${isAvailibelDeliverType.delivery_type_name} is not available.`,
                }).code(400);
            }

            const newOrder = await Orders.create({
                [ownerId]: user.id,
                user_address_id: address_id ? address_id : null,
                coupon_id,
                delivery_type_id: isAvailibelDeliverType.id,
                order_status_id: isAvalibelPending.id, 
                total_product_amount,
                payment_ref_id: payment_id,
                total_shipping_amount: shipping_charge,
                total_paid_amount: total_amount,
                user_type: user.role
            }, { transaction: t });
    
            newOrder.order_id = `kardify-${newOrder.id}`;
            await newOrder.save({ transaction: t });
    
            for (const product of products) {
                await OrderDetails.create({
                    order_id: newOrder.id,
                    product_id: product.product_id,
                    quantity: product.quantity
                }, { transaction: t });
            }
    
            await OrderStatusLogs.create({
                order_id: newOrder.id,
                order_status_id: newOrder.order_status_id,
            }, { transaction: t });

            await Carts.destroy({
                where: {
                    [ownerId]: user.id
                }
            }, { transaction: t });
    
            await t.commit();
    
            const createdOrder = await Orders.findByPk(newOrder.id, {
                include: [OrderDetails],
            });
    
            return res.response({
                code: 201,
                status: 'success',
                message: 'Order placed successfully',
                order: createdOrder
            }).code(201);
        }else if (user == 'Session expired') {
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
        await t.rollback();

        console.error(error);
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(500);
    }

}

// const approveOrderByAdmin = async (req, res) => {
//     try {
//         const { order_id } = req.payload;

//         const order = await Orders.findOne({
//             where: {
//                  id: order_id 
//                 },
//             include: [OrderDetails],
//         });

//         if (!order) {
//             return res.response({
//                 code: 404,
//                 status: 'error',
//                 message: 'Order not found',
//             }).code(404);
//         }

//         if (order.accepted) {
//             return res.response({
//                 code: 400,
//                 status: 'error',
//                 message: 'Order has already been approved',
//             }).code(400);
//         }

//         order.accepted = true;
//         order.order_accepted_date = new Date();
//         await order.save();

//         return res.response({
//             code: 200,
//             status: 'success',
//             message: 'Order approved successfully',
//             order,
//         }).code(200);
//     } catch (error) {
//         console.error(error);
//         return res.response({
//             code: 500,
//             status: 'error',
//             message: 'Something went wrong',
//         }).code(200);
//     }
// }

const approveOrderByAdmin = async (req, res) => {
    try {
        const { order_id } = req.payload;

        const order = await Orders.findOne({
            where: { id: order_id },
            include: [OrderDetails],
        });

        if (!order) {
            return res.response({
                code: 404,
                status: 'error',
                message: 'Order not found',
            }).code(404);
        }

        if (order.accepted) {
            return res.response({
                code: 400,
                status: 'error',
                message: 'Order has already been approved',
            }).code(400);
        }

        const t = await sequelize.transaction();

        try {
            const confirmedStatus = await OrderStatuses.findOne({
                where: { status_name: 'Confirmed' }, 
            });

            if (!confirmedStatus) {
                await t.rollback();
                return res.response({
                    code: 500,
                    status: 'error',
                    message: 'Confirmed status not found',
                }).code(500);
            }

            order.accepted = true;
            order.order_accepted_date = new Date();
            order.order_status_id = confirmedStatus.id;
            await order.save({ transaction: t });

            await OrderStatusLogs.create({
                order_id: order.id,
                order_status_id: confirmedStatus.id,
            }, { transaction: t });

            await t.commit();

            return res.response({
                code: 200,
                status: 'success',
                message: 'Order approved successfully',
                order,
            }).code(200);
        } catch (error) {
            await t.rollback();
            console.error(error);
            return res.response({
                code: 500,
                status: 'error',
                message: 'Something went wrong',
            }).code(500);
        }
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(500);
    }
};

const cancelOrderByAdmin = async (req, res) => {
    try {
        const { order_id, cancellation_reason } = req.payload;

        const order = await Orders.findOne({
            where: { 
                id: order_id 
            },
            include: [OrderDetails],
        });

        if (!order) {
            return res.response({
                code: 404,
                status: 'error',
                message: 'Order not found',
            }).code(404);
        }

        if (!order.accepted) {
            return res.response({
                code: 400,
                status: 'error',
                message: 'Order has already been canceled',
            }).code(200);
        }

        order.accepted = false;
        order.rejected_reason = cancellation_reason;
        await order.save();

        return res.response({
            code: 200,
            status: 'success',
            message: 'Order canceled by admin successfully',
            order,
        }).code(200);
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: 'error',
            message: 'Something went wrong',
        }).code(200);
    }
}

const getAllOrderStatuses = async (req, res) => {
    try {
        const allStatuses = await OrderStatuses.findAll();
        return res.response({
            code: 200,
            status: "success",
            message:"All status fetched succefully",
            orderStatuses: allStatuses,
        }).code(200);
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: "error",
            message: "Something went wrong",
        }).code(500);
    }
};

const updateOrderStatus = async (req, res) => {
    const { order_id, order_status_id } = req.payload;

    try {
        const orderToUpdate = await Orders.findOne({
            where: {
                id: order_id
            }
        });

        if (!orderToUpdate) {
            return res.response({
                code: 404,
                status: "error",
                message: "Order not found",
            }).code(404);
        }

        await OrderStatusLogs.create({
            order_id: order_id,
            order_status_id: orderToUpdate.order_status_id,
        });

        orderToUpdate.order_status_id = order_status_id;
        await orderToUpdate.save();

        // const updatedOrder = await Orders.findByPk(order_id, {
        //     include: [OrderStatuses, OrderDetails, DeliveryTypes],
        // });

        return res.response({
            code: 200,
            status: "success",
            message: "Order status updated successfully",
            // order: updatedOrder,
        }).code(200);
    } catch (error) {
        console.error(error);
        return res.response({
            code: 500,
            status: "error",
            message: "Something went wrong",
        }).code(500);
    }
};


module.exports = {
    getAllOrdersAdmin,
    getOrderForCustomer,
    createOrder,
    approveOrderByAdmin,
    cancelOrderByAdmin,
    getAllOrderStatuses,
    updateOrderStatus
}