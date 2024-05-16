-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2024 at 08:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kardify`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `accessToken` varchar(5000) DEFAULT NULL,
  `refreshToken` varchar(5000) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fullname`, `email`, `password`, `accessToken`, `refreshToken`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJBZG1pbiIsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwicm9sZSI6IkFETUlOIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzExNDI5ODE5LCJleHAiOjE3MTE0NDQyMTl9.Ng758m97duByyD8YYK_Vf9421HH6oEopYnFEYIi4-AA', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJBZG1pbiIsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwicm9sZSI6IkFETUlOIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzExNDI5ODE5LCJleHAiOjE3NDI5ODc0MTl9.v7YGinhH7kD37MnOkLa6zDkPdJoYvoEGJBv_Dgr9K2I', '2023-08-26 00:00:00', '2024-03-26 05:10:19', NULL),
(4, 'Admin2', 'admin2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiZnVsbG5hbWUiOiJBZG1pbjIiLCJlbWFpbCI6ImFkbWluMkBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJhcHBsaWNhdGlvbiI6ImNsb3NlMmJ1eSIsImlhdCI6MTcwMzkzNDgxOCwiZXhwIjoxNzAzOTQ5MjE4fQ.gXqHQyBVA4uu2yB94eqC0ZL-YtUyN3ksZxJh8fVrLg0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiZnVsbG5hbWUiOiJBZG1pbjIiLCJlbWFpbCI6ImFkbWluMkBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJhcHBsaWNhdGlvbiI6ImNsb3NlMmJ1eSIsImlhdCI6MTcwMzkzNDgxOCwiZXhwIjoxNzM1NDkyNDE4fQ._CRZD4fwx4g0Sduz9YQrq64UphnMKG60x_JM3Y9Sbn8', '2023-08-26 00:00:00', '2023-12-30 11:13:38', NULL),
(5, 'Admin3', 'admin3@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZnVsbG5hbWUiOiJBZG1pbjMiLCJlbWFpbCI6ImFkbWluM0BnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJhcHBsaWNhdGlvbiI6ImNsb3NlMmJ1eSIsImlhdCI6MTcwNDIwNTcyNiwiZXhwIjoxNzA0MjIwMTI2fQ.ijbR-mgV1Klm39j4e8QEke-zC4zouCoiohswIrWuHP8', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZnVsbG5hbWUiOiJBZG1pbjMiLCJlbWFpbCI6ImFkbWluM0BnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJhcHBsaWNhdGlvbiI6ImNsb3NlMmJ1eSIsImlhdCI6MTcwNDIwNTcyNiwiZXhwIjoxNzM1NzYzMzI2fQ.fdkYEI1QEdPqXXYAMn_tEyf3dT59ZNDMCHFBNcUfFLI', '2023-08-26 00:00:00', '2024-01-02 14:28:46', NULL),
(6, 'subham', 'admin10@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZnVsbG5hbWUiOiJzdWJoYW0iLCJlbWFpbCI6ImFkbWluMTBAZ21haWwuY29tIiwicm9sZSI6IkFETUlOIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzA0MzY3OTY2LCJleHAiOjE3MDQzODIzNjZ9.ZPvJoj_NalRu4VP7xXToHeQMIWaJznlQ4-2HNqh-UdM', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZnVsbG5hbWUiOiJzdWJoYW0iLCJlbWFpbCI6ImFkbWluMTBAZ21haWwuY29tIiwicm9sZSI6IkFETUlOIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzA0MzY3OTY2LCJleHAiOjE3MzU5MjU1NjZ9.2bOp3uciGdY9Q2aZ39gafp6noBOHGzj5JiKeXUxOCnQ', '2024-01-03 09:38:50', '2024-01-04 11:32:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes_combinations`
--

CREATE TABLE `attributes_combinations` (
  `id` int(11) NOT NULL,
  `combination_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `banner_name` varchar(255) DEFAULT NULL,
  `banner_type` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `super_sub_category_id` int(11) DEFAULT NULL,
  `web_image_url` varchar(255) DEFAULT NULL,
  `app_image_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_product_associations`
--

CREATE TABLE `banner_product_associations` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_brands`
--

CREATE TABLE `car_brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(99) NOT NULL,
  `image_url` varchar(99) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_lists`
--

CREATE TABLE `car_lists` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE `car_models` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `model_name` varchar(99) NOT NULL,
  `start_year` varchar(99) NOT NULL,
  `end_year` varchar(99) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `image_url` varchar(99) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(99) NOT NULL,
  `image_url` varchar(99) NOT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `coupon_title` varchar(255) DEFAULT NULL,
  `coupon_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `max_use_per_user` int(11) DEFAULT NULL,
  `max_use` int(11) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `min_order_amount` double DEFAULT NULL,
  `max_discount` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `accessToken` varchar(5000) DEFAULT NULL,
  `refreshToken` varchar(5000) DEFAULT NULL,
  `device_token` varchar(2000) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `approved` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `fullname` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `personal_email` varchar(255) DEFAULT NULL,
  `personal_mobile` varchar(255) DEFAULT NULL,
  `personal_alt_mobile` varchar(255) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `rejected_reason` varchar(255) DEFAULT NULL,
  `identity_proof_name` varchar(255) DEFAULT NULL,
  `identity_proof_file_url` varchar(255) DEFAULT NULL,
  `accessToken` varchar(2000) DEFAULT NULL,
  `refreshToken` varchar(2000) DEFAULT NULL,
  `device_token` varchar(2000) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_types`
--

CREATE TABLE `delivery_types` (
  `id` int(11) NOT NULL,
  `delivery_type_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_types`
--

INSERT INTO `delivery_types` (`id`, `delivery_type_name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'self pickup', NULL, '2024-01-25 06:11:57', '2024-01-25 06:11:57', NULL),
(2, 'online', NULL, '2024-01-25 06:13:10', '2024-01-25 06:13:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `discount_name` varchar(255) DEFAULT NULL,
  `product_brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `super_sub_category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `min_amount` double DEFAULT NULL,
  `max_amount` double DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installers`
--

CREATE TABLE `installers` (
  `id` int(11) NOT NULL,
  `installer_id` varchar(255) DEFAULT NULL,
  `installer_name` varchar(255) DEFAULT NULL,
  `installer_email` varchar(255) DEFAULT NULL,
  `installer_phone` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `user_address_id` int(11) DEFAULT NULL,
  `delivery_type_id` int(11) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  `order_accepted_date` timestamp NULL DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `rejected_reason` varchar(255) DEFAULT NULL,
  `payment_ref_id` varchar(255) DEFAULT NULL,
  `shipping_link` varchar(255) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `total_discount_amount` double DEFAULT NULL,
  `total_paid_amount` double DEFAULT NULL,
  `total_gst_amount` double DEFAULT NULL,
  `total_shipping_amount` double DEFAULT NULL,
  `total_product_amount` double DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `super_sub_category_id` int(11) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `car_brand_id` int(11) DEFAULT NULL,
  `car_model_id` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `gst` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(11) NOT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status_name`, `active`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Pending', 1, '2024-01-27 05:09:04', '2024-01-27 05:09:04', NULL),
(2, 'Confirmed', 1, '2024-01-27 05:09:38', '2024-01-27 05:09:38', NULL),
(3, 'Packaging', 1, '2024-01-27 05:09:53', '2024-01-27 05:09:53', NULL),
(4, 'Out For Delivery', 1, '2024-01-27 05:10:17', '2024-01-27 05:10:17', NULL),
(5, 'Delivered', 1, '2024-01-27 05:13:06', '2024-01-27 05:13:06', NULL),
(6, 'Return Initiated', 1, '2024-01-27 05:13:25', '2024-01-27 05:13:25', NULL),
(7, 'Return Approved By Vendor', 1, '2024-01-27 05:13:43', '2024-01-27 05:13:43', NULL),
(8, 'Return Completed', 1, '2024-01-27 05:14:09', '2024-01-27 05:14:09', NULL),
(9, 'Cancelled By Customer', 1, '2024-01-27 05:14:30', '2024-01-27 05:14:30', NULL),
(10, 'Cancelled By Kardify', 1, '2024-01-27 05:14:48', '2024-01-27 05:14:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_status_logs`
--

CREATE TABLE `order_status_logs` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `otp` varchar(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `user_id`, `dealer_id`, `otp`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, NULL, '6721', '2024-02-26 06:54:26', '2024-02-26 06:54:26', NULL),
(2, 2, NULL, '2752', '2024-02-26 07:30:18', '2024-02-26 07:30:18', NULL),
(3, NULL, NULL, '9661', '2024-02-26 07:37:41', '2024-02-26 07:37:41', NULL),
(4, NULL, NULL, '4115', '2024-02-26 07:41:03', '2024-02-26 07:41:03', NULL),
(5, 3, NULL, '4938', '2024-02-26 07:42:14', '2024-02-26 07:42:14', '2024-02-26 07:44:14'),
(6, 4, NULL, '1832', '2024-02-26 11:49:53', '2024-02-26 11:49:53', NULL),
(7, 5, NULL, '6890', '2024-02-26 11:52:27', '2024-02-26 11:52:27', '2024-02-26 11:53:24'),
(8, 6, NULL, '1527', '2024-02-26 12:08:17', '2024-02-26 12:08:17', '2024-02-26 12:08:34'),
(9, 7, NULL, '9571', '2024-02-26 12:10:23', '2024-02-26 12:10:23', '2024-02-26 12:11:10'),
(10, 3, NULL, '5441', '2024-02-26 12:40:00', '2024-02-26 12:40:00', '2024-02-26 12:42:00'),
(11, 3, NULL, '5256', '2024-02-26 12:50:39', '2024-02-26 12:50:39', NULL),
(12, 3, NULL, '9376', '2024-02-26 12:50:52', '2024-02-26 12:50:52', '2024-02-26 12:53:37'),
(13, 9, NULL, '5456', '2024-02-29 13:52:38', '2024-02-29 13:52:38', '2024-02-29 13:54:38'),
(14, 11, NULL, '1056', '2024-02-29 14:03:05', '2024-02-29 14:03:05', '2024-02-29 14:05:05'),
(15, 12, NULL, '9075', '2024-02-29 14:08:42', '2024-02-29 14:08:42', '2024-02-29 14:10:42'),
(16, 13, NULL, '6796', '2024-02-29 14:17:53', '2024-02-29 14:17:53', '2024-02-29 14:19:53'),
(17, NULL, 29, '6992', '2024-03-22 07:09:11', '2024-03-22 07:09:11', '2024-03-22 07:11:11'),
(18, NULL, 30, '7307', '2024-03-22 07:11:13', '2024-03-22 07:11:13', '2024-03-22 07:13:13'),
(19, NULL, 31, '5011', '2024-03-22 07:12:14', '2024-03-22 07:12:14', '2024-03-22 07:14:14'),
(20, NULL, 32, '5506', '2024-03-22 07:14:06', '2024-03-22 07:14:06', '2024-03-22 07:16:06'),
(21, NULL, 33, '8494', '2024-03-22 07:16:51', '2024-03-22 07:16:51', '2024-03-22 07:18:51'),
(22, NULL, 34, '4667', '2024-03-22 07:18:37', '2024-03-22 07:18:37', '2024-03-22 07:19:01'),
(23, NULL, 35, '1502', '2024-03-22 07:36:03', '2024-03-22 07:36:03', '2024-03-22 07:38:03'),
(24, NULL, 36, '9278', '2024-03-22 10:03:24', '2024-03-22 10:03:24', '2024-03-22 10:03:54'),
(25, NULL, 1, '2340', '2024-03-22 10:05:46', '2024-03-22 10:05:46', '2024-03-22 10:06:48'),
(26, NULL, 1, '4301', '2024-03-22 10:09:26', '2024-03-22 10:09:26', '2024-03-22 10:09:46'),
(27, NULL, 1, '1642', '2024-03-22 10:11:48', '2024-03-22 10:11:48', '2024-03-22 10:12:03'),
(28, NULL, 1, '8883', '2024-03-22 10:21:00', '2024-03-22 10:21:00', '2024-03-22 10:21:21'),
(29, NULL, 2, '4711', '2024-03-22 10:36:13', '2024-03-22 10:36:13', '2024-03-22 10:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(99) DEFAULT NULL,
  `product_desc` varchar(99) DEFAULT NULL,
  `product_brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `super_sub_category_id` int(11) DEFAULT NULL,
  `minimum_order` int(11) DEFAULT NULL,
  `default_price` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `discount_type` varchar(99) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `tax_type` varchar(99) DEFAULT NULL,
  `tax_rate` double DEFAULT NULL,
  `product_type` varchar(99) DEFAULT NULL,
  `car_brand_id` int(11) DEFAULT NULL,
  `car_model_id` int(11) DEFAULT NULL,
  `start_year` timestamp NULL DEFAULT NULL,
  `end_year` timestamp NULL DEFAULT NULL,
  `has_exchange_policy` tinyint(1) DEFAULT NULL,
  `exchange_policy` varchar(99) DEFAULT NULL,
  `has_cancellation_policy` tinyint(1) DEFAULT NULL,
  `cancellation_policy` varchar(99) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `has_warranty` tinyint(1) DEFAULT NULL,
  `warranty` varchar(99) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `attribute_name` varchar(99) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes_associations`
--

CREATE TABLE `product_attributes_associations` (
  `id` int(11) NOT NULL,
  `combination` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_brands`
--

CREATE TABLE `product_brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_discount_associations`
--

CREATE TABLE `product_discount_associations` (
  `id` int(11) NOT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `about_us` varchar(255) DEFAULT NULL,
  `about_status` tinyint(1) DEFAULT NULL,
  `contact_us` varchar(255) DEFAULT NULL,
  `contact_status` tinyint(1) DEFAULT NULL,
  `privacy_policy` varchar(255) DEFAULT NULL,
  `privacy_status` tinyint(1) DEFAULT NULL,
  `cancellation_policy` varchar(255) DEFAULT NULL,
  `cancellation_status` tinyint(1) DEFAULT NULL,
  `refund_policy` varchar(255) DEFAULT NULL,
  `refund_status` tinyint(1) DEFAULT NULL,
  `return_policy` varchar(255) DEFAULT NULL,
  `return_status` tinyint(1) DEFAULT NULL,
  `shipping_policy` varchar(255) DEFAULT NULL,
  `shipping_status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`id`, `image_url`, `about_us`, `about_status`, `contact_us`, `contact_status`, `privacy_policy`, `privacy_status`, `cancellation_policy`, `cancellation_status`, `refund_policy`, `refund_status`, `return_policy`, `return_status`, `shipping_policy`, `shipping_status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '/uploads/staticpage/1709057152791.png', '<p>subham jena kuma</p>', 0, '<p>abcd</p>', 1, '<p>Subhamasasdasdasd</p>', 1, '<p>Cancelled doneavbcvb</p>', 0, '<p>ReFund Policy working</p>', 0, '<p>retuns</p>', 0, '<p>hehehehhe</p>', 0, '2024-02-21 04:12:37', '2024-02-27 12:35:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_infos`
--

CREATE TABLE `store_infos` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_infos`
--

INSERT INTO `store_infos` (`id`, `contact_name`, `status`, `value`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'email_1', 1, 'Email 1', '2024-02-22 07:22:30', '2024-02-22 13:43:42', NULL),
(2, 'email_2', 1, 'email 2', '2024-02-22 07:22:30', '2024-02-22 13:43:44', NULL),
(3, 'number_1', 1, 'number 1', '2024-02-22 07:22:30', '2024-02-23 06:47:39', NULL),
(4, 'number_2', 1, 'number 2', '2024-02-22 07:22:30', '2024-02-22 13:43:55', NULL),
(5, 'whatsapp_1', 1, 'what 1', '2024-02-22 07:22:30', '2024-02-22 13:43:47', NULL),
(6, 'whatsapp_2', 1, 'what 2', '2024-02-22 07:22:30', '2024-02-22 13:43:51', NULL),
(7, 'address_1', 1, 'address 1', '2024-02-22 07:22:30', '2024-02-22 13:43:49', NULL),
(8, 'address_2', 1, 'address 2', '2024-02-22 07:22:30', '2024-02-22 13:43:57', NULL),
(9, 'linkedin', 1, 'linkedin', '2024-02-22 07:22:30', '2024-02-23 01:51:51', NULL),
(10, 'instagram', 1, 'instagram', '2024-02-22 07:22:30', '2024-02-22 13:44:01', NULL),
(11, 'facebook', 1, 'facebook', '2024-02-22 07:22:30', '2024-02-22 13:44:03', NULL),
(12, 'twitter', 1, 'twitter', '2024-02-22 07:22:30', '2024-02-22 13:44:05', NULL),
(13, 'website', 1, 'website', '2024-02-22 07:22:30', '2024-02-22 13:44:07', NULL),
(14, 'youtube', 1, 'youtube', '2024-02-22 07:22:30', '2024-02-22 13:44:09', NULL),
(15, 'Gpay', 1, NULL, '2024-02-22 07:22:30', '2024-02-22 07:22:30', NULL),
(16, 'Amazonpay', 1, NULL, '2024-02-22 07:22:30', '2024-02-22 07:22:30', NULL),
(17, 'Phonepe', 0, NULL, '2024-02-22 07:22:30', '2024-02-23 01:51:55', NULL),
(18, 'MasterCard', 1, NULL, '2024-02-22 07:22:30', '2024-02-22 07:22:30', NULL),
(19, 'VISA', 1, NULL, '2024-02-22 07:22:30', '2024-02-23 00:38:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` varchar(9999) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT NULL,
  `rejected_reason` varchar(255) DEFAULT NULL,
  `story_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories_product_associations`
--

CREATE TABLE `stories_product_associations` (
  `id` int(11) NOT NULL,
  `story_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribed_customers`
--

CREATE TABLE `subscribed_customers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(99) NOT NULL,
  `category_id` int(99) NOT NULL,
  `sub_category_name` varchar(99) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image_url` varchar(99) NOT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `super_sub_categories`
--

CREATE TABLE `super_sub_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `super_sub_category_name` varchar(99) NOT NULL,
  `image_url` varchar(99) NOT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` varchar(999) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(99) DEFAULT NULL,
  `phone` int(99) DEFAULT NULL,
  `password` int(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `add_type` varchar(255) NOT NULL,
  `add1` varchar(500) DEFAULT NULL,
  `add2` varchar(500) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `landmark` varchar(500) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(11) NOT NULL,
  `variant_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants_attributes`
--

CREATE TABLE `variants_attributes` (
  `id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `attribute_name` varchar(255) NOT NULL,
  `attribute_value` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes_combinations`
--
ALTER TABLE `attributes_combinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_product_associations`
--
ALTER TABLE `banner_product_associations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_brands`
--
ALTER TABLE `car_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_lists`
--
ALTER TABLE `car_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_types`
--
ALTER TABLE `delivery_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installers`
--
ALTER TABLE `installers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status_logs`
--
ALTER TABLE `order_status_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes_associations`
--
ALTER TABLE `product_attributes_associations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_brands`
--
ALTER TABLE `product_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_discount_associations`
--
ALTER TABLE `product_discount_associations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_infos`
--
ALTER TABLE `store_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories_product_associations`
--
ALTER TABLE `stories_product_associations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed_customers`
--
ALTER TABLE `subscribed_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_sub_categories`
--
ALTER TABLE `super_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants_attributes`
--
ALTER TABLE `variants_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attributes_combinations`
--
ALTER TABLE `attributes_combinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_product_associations`
--
ALTER TABLE `banner_product_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_brands`
--
ALTER TABLE `car_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_lists`
--
ALTER TABLE `car_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_models`
--
ALTER TABLE `car_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_types`
--
ALTER TABLE `delivery_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installers`
--
ALTER TABLE `installers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_status_logs`
--
ALTER TABLE `order_status_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attributes_associations`
--
ALTER TABLE `product_attributes_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_discount_associations`
--
ALTER TABLE `product_discount_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_infos`
--
ALTER TABLE `store_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories_product_associations`
--
ALTER TABLE `stories_product_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribed_customers`
--
ALTER TABLE `subscribed_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `super_sub_categories`
--
ALTER TABLE `super_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variants_attributes`
--
ALTER TABLE `variants_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
