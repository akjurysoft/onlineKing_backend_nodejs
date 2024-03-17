-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2024 at 07:26 PM
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
(1, 'Admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJBZG1pbiIsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwicm9sZSI6IkFETUlOIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzEwNTgyMDEyLCJleHAiOjE3MTA1OTY0MTJ9.J_CU4KL9sfQU9oe8G_---tWVghe6u4Y0e98LgpC0wGc', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJBZG1pbiIsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwicm9sZSI6IkFETUlOIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzEwNTgyMDEyLCJleHAiOjE3NDIxMzk2MTJ9.HPpfgbFGsxGR9b8UQGmq4aYsANco2VAPtoRruIBjXmQ', '2023-08-26 00:00:00', '2024-03-16 09:40:12', NULL),
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

--
-- Dumping data for table `attributes_combinations`
--

INSERT INTO `attributes_combinations` (`id`, `combination_id`, `attribute_id`, `attribute_value`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 2, 'L', '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL),
(2, 2, 2, 'M', '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL),
(3, 3, 2, 'S', '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL),
(4, 4, 1, 'Red', '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL),
(5, 5, 1, 'White', '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL),
(6, 6, 1, 'Blue', '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL),
(7, 7, 2, 'M', '2024-03-07 10:12:31', '2024-03-07 10:12:31', NULL);

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

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_name`, `banner_type`, `category_id`, `sub_category_id`, `super_sub_category_id`, `web_image_url`, `app_image_url`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'test', 'product', NULL, NULL, NULL, '/uploads/banners/1709288377393.png', '/uploads/banners/1709288377396.png', 1, '2024-03-01 10:19:37', '2024-03-01 10:19:37', NULL),
(2, 'Subham jena Category', 'category', 1, NULL, NULL, '/uploads/banners/1709296753528.png', '/uploads/banners/1709296753530.png', 1, '2024-03-01 12:39:13', '2024-03-01 12:39:13', NULL),
(3, 'sgsdgs', 'product', NULL, NULL, NULL, '/uploads/banners/1709299897513.png', '/uploads/banners/1709299897516.png', 1, '2024-03-01 13:31:37', '2024-03-01 13:31:37', NULL);

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

--
-- Dumping data for table `banner_product_associations`
--

INSERT INTO `banner_product_associations` (`id`, `banner_id`, `product_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 2, '2024-03-01 10:19:37', '2024-03-01 10:19:37', NULL),
(2, 1, 1, '2024-03-01 10:19:37', '2024-03-01 10:19:37', NULL),
(3, 3, 2, '2024-03-01 13:31:37', '2024-03-01 13:31:37', NULL),
(4, 3, 1, '2024-03-01 13:31:37', '2024-03-01 13:31:37', NULL);

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

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `dealer_id`, `product_id`, `quantity`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 3, NULL, 1, 1, '2024-03-17 17:24:57', '2024-03-17 17:24:57', '2024-03-17 18:15:06'),
(2, 3, NULL, 3, 7, '2024-03-17 17:25:18', '2024-03-17 17:34:36', NULL),
(3, 3, NULL, 2, 6, '2024-03-17 17:33:34', '2024-03-17 17:33:47', NULL),
(4, 13, NULL, 3, 5, '2024-03-17 17:36:43', '2024-03-17 17:36:43', NULL),
(5, NULL, 13, 3, 15, '2024-03-17 17:40:15', '2024-03-17 17:40:38', NULL),
(6, NULL, 13, 2, 2, '2024-03-17 17:40:52', '2024-03-17 17:40:52', NULL);

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

--
-- Dumping data for table `car_brands`
--

INSERT INTO `car_brands` (`id`, `brand_name`, `image_url`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'BMW11', '/uploads/carbrands/1705669266105.png', 1, '2024-02-12 06:38:40', '2024-02-12 06:38:40', NULL),
(2, 'fdsdfs', '/uploads/carbrands/1706788899960.png', 1, '2024-02-08 09:14:10', '2024-02-08 09:14:10', '2024-02-08 09:14:10'),
(3, 'bmw1', '/uploads/carbrands/1706789045964.png', 1, '2024-02-01 12:04:11', '2024-02-01 12:04:11', NULL),
(4, 'bmw', '/uploads/carbrands/1706790792597.png', 1, '2024-02-01 12:33:24', '2024-02-01 12:33:24', '2024-02-01 12:33:24'),
(5, 'test', '/uploads/carbrands/1709288913341.png', 1, '2024-03-01 10:28:33', '2024-03-01 10:28:33', NULL);

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

--
-- Dumping data for table `car_lists`
--

INSERT INTO `car_lists` (`id`, `brand_id`, `model_id`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 4, 2, 1, '2024-01-17 11:19:34', '2024-01-17 12:20:46', '2024-01-17 12:20:46'),
(2, 4, 2, 1, '2024-01-17 11:19:38', '2024-01-17 11:19:38', NULL),
(3, 4, 2, 1, '2024-01-17 11:19:39', '2024-01-17 11:19:39', NULL),
(4, 4, 2, 1, '2024-01-17 11:19:52', '2024-01-17 11:19:52', NULL),
(5, 4, 2, 1, '2024-01-17 11:42:19', '2024-01-17 11:42:19', NULL);

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

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`id`, `brand_id`, `model_name`, `start_year`, `end_year`, `status`, `image_url`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, NULL, 'X8', '2020', '2023', 1, '/uploads/carbrands/1705669297897.png', '2024-01-27 17:06:05', '2024-01-27 17:06:05', NULL),
(2, NULL, 'retytuyui', '2015', '2024', 1, '/uploads/carbrands/1705901568039.png', '2024-02-07 06:14:57', '2024-02-07 06:14:57', NULL),
(3, NULL, 'subham123123333', '1948', '2000', 1, '/uploads/carbrands/1707296336619.png', '2024-02-07 08:58:56', '2024-02-07 08:58:56', NULL);

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

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `image_url`, `banner_id`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'EXTERIOR', '/uploads/categories/1707723669785.png', NULL, 1, '2024-02-12 07:41:09', '2024-02-12 10:24:19', NULL),
(2, 'INTERIOR', '/uploads/categories/1707723772162.png', NULL, 1, '2024-02-12 07:42:52', '2024-02-12 10:24:27', NULL),
(3, 'AUDIO /VIDEO', '/uploads/categories/1707724169436.png', NULL, 1, '2024-02-12 07:49:29', '2024-02-12 07:49:29', NULL),
(4, 'LIGHTS', '/uploads/categories/1707724247481.png', NULL, 1, '2024-02-12 07:50:47', '2024-02-12 10:03:48', NULL),
(5, 'CAR CARE', '/uploads/categories/1707724388911.png', NULL, 1, '2024-02-12 07:53:08', '2024-02-12 07:53:08', NULL),
(6, 'SHOP BY CAR', '/uploads/categories/1707724656147.png', NULL, 1, '2024-02-12 07:57:36', '2024-02-12 07:57:36', NULL),
(10, 'INSTALLATION', '/uploads/categories/1707724792010.png', NULL, 0, '2024-02-12 07:59:52', '2024-02-23 07:22:36', NULL);

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

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_type`, `coupon_title`, `coupon_name`, `status`, `max_use_per_user`, `max_use`, `discount_type`, `discount`, `min_order_amount`, `max_discount`, `user_id`, `dealer_id`, `start_date`, `expiry_date`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Default', 'subham', 'KAR40', 1, 1, NULL, 'Percent', 40, 499, 80, NULL, NULL, '2024-02-15 00:00:00', '2024-02-10 00:00:00', '2024-02-02 09:43:39', '2024-02-02 10:18:00', '2024-02-02 10:18:00'),
(2, 'Default', 'Subham', 'SUBHAM50', 1, 20, NULL, 'Percent', 10, 20, 100, NULL, NULL, '2024-02-03 00:00:00', '2024-02-03 00:00:00', '2024-02-02 10:18:35', '2024-02-10 10:17:25', NULL),
(3, 'Dealer Wise', 'DELAER', 'DEALER70', 1, 2, NULL, 'Percent', 10, 699, 70, NULL, 1, '2024-02-10 00:00:00', '2024-02-17 00:00:00', '2024-02-02 10:22:35', '2024-02-03 05:22:01', NULL),
(4, 'First Order', 'welcome ', 'WELCOME40', 1, 1, NULL, 'Percent', 20, 299, 90, NULL, NULL, NULL, NULL, '2024-02-02 10:24:47', '2024-02-03 05:22:03', NULL);

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

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `dob`, `language`, `username`, `email`, `phone`, `password`, `verified`, `accessToken`, `refreshToken`, `device_token`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Subham', NULL, NULL, '918249229465', 'subham.kj@jurysoft.com', NULL, '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL, '2024-02-26 06:54:26', '2024-02-26 06:54:26', '2024-02-26 07:30:18'),
(2, 'Subham', NULL, NULL, '918249229465', 'subham.kj@jurysoft.com', NULL, '827ccb0eea8a706c4c34a16891f84e7b', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiZnVsbG5hbWUiOiJTdWJoYW0iLCJ1c2VybmFtZSI6IjkxODI0OTIyOTQ2NSIsInJvbGUiOiJDVVNUT01FUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcwODkzNDE1MSwiZXhwIjoxNzA4OTQ4NTUxfQ.5bhEulPuguckVU5x02PrmzO9aHDd5sYVNQLuCpnPM9M', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiZnVsbG5hbWUiOiJTdWJoYW0iLCJ1c2VybmFtZSI6IjkxODI0OTIyOTQ2NSIsInJvbGUiOiJDVVNUT01FUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcwODkzNDE1MSwiZXhwIjoxNzQwNDkxNzUxfQ.uSNoMQ4S9KqzWYOXQWmLgoky8Sm9AzlGiKvum51L2bc', NULL, '2024-02-26 07:30:18', '2024-02-26 07:55:51', '2024-02-26 11:49:53'),
(3, 'subham kumar jena', NULL, NULL, 'subham.kj@jurysoft.com', 'subham.kj@jurysoft.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiZnVsbG5hbWUiOiJzdWJoYW0ga3VtYXIgamVuYSIsInVzZXJuYW1lIjoic3ViaGFtLmtqQGp1cnlzb2Z0LmNvbSIsInJvbGUiOiJDVVNUT01FUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcxMDY5Mzg0OCwiZXhwIjoxNzEwNzA4MjQ4fQ.oIzbeoe_jdDu3poG4LExzO8OsHHraQqbvtsOb838Whc', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiZnVsbG5hbWUiOiJzdWJoYW0ga3VtYXIgamVuYSIsInVzZXJuYW1lIjoic3ViaGFtLmtqQGp1cnlzb2Z0LmNvbSIsInJvbGUiOiJDVVNUT01FUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcxMDY5Mzg0OCwiZXhwIjoxNzQyMjUxNDQ4fQ.s5vdVTFhQYtX9sbxxbUEum-tU6IQVcDcLppdw-kh_Fg', NULL, '2024-02-26 07:42:14', '2024-03-17 16:44:08', NULL),
(4, 'Subham jenaaaaa', NULL, NULL, '918249229465', NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL, '2024-02-26 11:49:53', '2024-02-26 11:49:53', '2024-02-26 11:52:27'),
(5, 'Subham jenaaaaa', NULL, NULL, '918249229465', NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZnVsbG5hbWUiOiJTdWJoYW0gamVuYWFhYWEiLCJlbWFpbCI6bnVsbCwicm9sZSI6IkNVU1RPTUVSIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzA4OTQ4NDA0LCJleHAiOjE3MDg5NjI4MDR9.8zKcmcf1yzTTHwEQDPWGEeWzQjBENw3oPhVdkM7fGts', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZnVsbG5hbWUiOiJTdWJoYW0gamVuYWFhYWEiLCJlbWFpbCI6bnVsbCwicm9sZSI6IkNVU1RPTUVSIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzA4OTQ4NDA0LCJleHAiOjE3NDA1MDYwMDR9.dTSkYuikErI7jAVj4EC3X7ByXDdQGp-mwLGpGh7rKJM', NULL, '2024-02-26 11:52:27', '2024-02-26 11:53:24', '2024-02-26 12:08:17'),
(6, 'Subham jenaaaaa', NULL, NULL, '918249229465', 'subhamjena0001@gmail.com', NULL, '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL, '2024-02-26 12:08:17', '2024-02-26 12:08:17', '2024-02-26 12:10:23'),
(7, 'Subham jenaaaaa', NULL, NULL, '918249229465', 'subhamjena0001@gmail.com', NULL, '827ccb0eea8a706c4c34a16891f84e7b', 1, NULL, NULL, NULL, '2024-02-26 12:10:23', '2024-02-26 12:11:10', NULL),
(8, 'subham jena', NULL, NULL, 'subham.kj@jurysft.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-02-29 13:50:34', '2024-02-29 13:50:34', '2024-02-29 13:52:38'),
(9, 'subham jena', NULL, NULL, 'subham.kj@jurysft.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-02-29 13:52:38', '2024-02-29 13:52:38', '2024-02-29 14:02:56'),
(10, 'subham jena', NULL, NULL, 'subham.kj@jurysft.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-02-29 14:02:56', '2024-02-29 14:02:56', '2024-02-29 14:03:05'),
(11, 'subham jena', NULL, NULL, 'subham.kj@jurysft.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-02-29 14:03:05', '2024-02-29 14:03:05', NULL),
(12, 'subham', NULL, NULL, 'subham.11kj@jurysoft.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-02-29 14:08:42', '2024-02-29 14:08:42', '2024-02-29 14:17:53'),
(13, 'subham', NULL, NULL, 'subham.11kj@jurysoft.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-02-29 14:17:53', '2024-02-29 14:17:53', NULL);

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

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`id`, `verified`, `approved`, `is_active`, `fullname`, `first_name`, `last_name`, `dob`, `gender`, `password`, `language`, `username`, `personal_email`, `personal_mobile`, `personal_alt_mobile`, `add1`, `add2`, `area`, `city`, `state`, `country`, `pincode`, `landmark`, `lat`, `lng`, `rejected_reason`, `identity_proof_name`, `identity_proof_file_url`, `accessToken`, `refreshToken`, `device_token`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 0, 1, 1, 'subham', 'asd', 'asd', 'asd', 'asd', '827ccb0eea8a706c4c34a16891f84e7b', 'asd', 'subham.kj@jurysoft.com', 'as@gmail.com', '918249229465', '918249229465', 'qweqwe', 'qweqwe', 'strqweqweing', 'eqwe', 'eqwe', 'wqe', '754019', 'asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 11:23:55', '2024-01-04 11:24:15', '2024-02-13 06:17:41'),
(2, 0, 0, 1, 'subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-05 12:12:34', '2024-02-05 12:12:34', '2024-02-05 12:14:27'),
(3, 0, 0, 1, 'subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-05 12:14:27', '2024-02-05 12:14:27', '2024-02-05 12:14:27'),
(4, 0, 0, 1, 'subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-05 12:14:28', '2024-02-05 12:14:28', '2024-02-05 12:24:55'),
(5, 0, 0, 1, 'subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-05 12:24:55', '2024-02-05 12:24:55', '2024-02-13 06:10:03'),
(6, 0, 0, 1, 'subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.mj@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-05 12:43:01', '2024-02-05 12:43:01', NULL),
(7, 0, 0, 1, 'Subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:10:03', '2024-02-13 06:10:03', '2024-02-13 06:10:21'),
(8, 0, 0, 1, 'Subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:10:21', '2024-02-13 06:10:21', '2024-02-13 06:10:36'),
(9, 0, 0, 1, 'Subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:10:36', '2024-02-13 06:10:36', '2024-02-13 06:10:37'),
(10, 0, 0, 1, 'Subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:10:37', '2024-02-13 06:10:37', '2024-02-13 06:16:21'),
(11, 0, 1, 1, 'Subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, '918249229465', 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:16:21', '2024-02-13 07:10:38', '2024-02-26 07:37:41'),
(12, 0, 0, 1, 'Subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:17:41', '2024-02-13 06:17:41', '2024-02-13 06:34:07'),
(13, 1, 1, 1, 'Subham', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.kj@jurysoft.com', 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTMsImZ1bGxuYW1lIjoiU3ViaGFtIiwidXNlcm5hbWUiOiJzdWJoYW0ua2pAanVyeXNvZnQuY29tIiwicm9sZSI6IkRFQUxFUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcxMDY5Njk4MywiZXhwIjoxNzEwNzExMzgzfQ.kIWdo7rzcuAD98aAWJ5gkNEfS7xFzCSKs-cJw_DyS3c', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTMsImZ1bGxuYW1lIjoiU3ViaGFtIiwidXNlcm5hbWUiOiJzdWJoYW0ua2pAanVyeXNvZnQuY29tIiwicm9sZSI6IkRFQUxFUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcxMDY5Njk4MywiZXhwIjoxNzQyMjU0NTgzfQ.JUN3Jq67UWcysZhFYD-76rmVlZXM0uciuGgUD95GgOw', NULL, '2024-02-13 06:34:07', '2024-03-17 17:36:23', NULL),
(14, 1, 0, 1, 'Subhamsdad', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:34:07', '2024-02-13 07:08:16', NULL),
(15, 1, 0, 1, 'Subhamsdad', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:34:07', '2024-02-13 11:41:26', NULL),
(16, 1, 0, 1, 'Subhamsdad', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Interested', NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:34:07', '2024-02-13 11:57:31', NULL),
(17, 1, 0, 0, 'Subhamsdad asndm,asdad', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.kj@jurysoft.com', 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ahgsjdkllad', NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:34:07', '2024-02-13 12:24:45', NULL),
(18, 1, 0, 0, 'Subhamsdad asndm,asdad', NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.kj@jurysoft.com', 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ahgsjdkllad', NULL, NULL, NULL, NULL, NULL, '2024-02-13 06:34:07', '2024-02-13 12:23:26', NULL),
(21, 1, NULL, 1, 'Kardify Main Office', NULL, NULL, NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'info.kardify@gmail.com', 'info.kardify@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-14 06:25:00', '2024-02-14 06:25:00', '2024-02-14 06:25:01'),
(26, 1, 0, 0, 'Kardify', NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'info.kardify@gmail.com', 'info.kardify@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Interested in this', NULL, NULL, NULL, NULL, NULL, '2024-02-14 11:24:59', '2024-02-14 11:26:33', NULL),
(27, 0, NULL, 1, 'Subham', NULL, NULL, NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', NULL, '918249229465', 'subham.kj@jurysoft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 07:37:41', '2024-02-26 07:37:41', '2024-02-26 07:41:03'),
(28, 0, NULL, 1, 'Subham', NULL, NULL, NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', NULL, '918249229465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 07:41:03', '2024-02-26 07:41:03', NULL);

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

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `discount_name`, `product_brand_id`, `category_id`, `sub_category_id`, `super_sub_category_id`, `product_id`, `discount_type`, `discount`, `min_amount`, `max_amount`, `start_date`, `expiry_date`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'yetsy', 1, 3, 2, 1, NULL, 'Amount', 23, 23, 32, '2024-02-07 00:00:00', '2024-02-17 00:00:00', 1, '2024-02-03 09:56:33', '2024-02-03 09:56:33', NULL),
(2, 'subham', 1, 3, 1, 1, NULL, 'Percent', 234567, 123456, 12345, '2024-02-08 00:00:00', '2024-02-10 00:00:00', 1, '2024-02-03 12:21:14', '2024-02-03 12:21:14', NULL),
(3, 'subhawqm', 1, 3, 1, 1, NULL, 'Percent', 234567, 123456, 12345, '2024-02-08 00:00:00', '2024-02-10 00:00:00', 1, '2024-02-03 12:23:27', '2024-02-03 12:23:27', NULL),
(4, 'subhawqm21', 1, 3, 1, 1, NULL, 'Amount', 21, 123456, 1212, '2024-02-04 00:00:00', '2024-03-08 00:00:00', 1, '2024-02-03 12:24:30', '2024-02-03 12:24:30', NULL),
(5, 'subhawqmfd', 1, 3, 2, 2, NULL, 'Percent', 23, 32, 32, '2024-02-09 00:00:00', '2024-02-09 00:00:00', 1, '2024-02-03 12:25:49', '2024-02-03 12:25:49', NULL),
(6, 'qwertyui234567', 1, 1, 2, 2, NULL, 'Amount', 123456, 12345, 12345, '2024-03-08 00:00:00', '2024-03-09 00:00:00', 1, '2024-02-03 12:26:59', '2024-02-03 12:26:59', NULL),
(7, 'dfghjk', 1, 1, 3, 1, NULL, 'Amount', 232435, 2435, 2323, '2024-02-07 00:00:00', '2024-02-09 00:00:00', 1, '2024-02-03 12:33:54', '2024-02-03 12:33:54', NULL),
(8, 'dfghjkfdghjk', 1, 1, 3, 1, NULL, 'Amount', 232435, 2435, 2323, '2024-02-07 00:00:00', '2024-02-09 00:00:00', 1, '2024-02-03 12:45:19', '2024-02-03 12:45:19', NULL);

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

--
-- Dumping data for table `installers`
--

INSERT INTO `installers` (`id`, `installer_id`, `installer_name`, `installer_email`, `installer_phone`, `company_name`, `add1`, `add2`, `city`, `state`, `pincode`, `country`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'INST-001', 'Subham kumar jena', 'subham.kj@jurysoft.com', '8249229465', 'Kardify', 'cart trendz', 'Marathahalli', 'Bengaluru', 'Karnataka', '560098', 'India', 1, '2024-02-14 10:45:15', '2024-02-15 13:31:33', NULL),
(2, 'INST-002', 'Test Name', 'Test@gmail.com', '1231231231', 'Test Company', 'Test Address L1', 'Test Address L2', 'Test City', 'Karnataka', '560066', 'India', 1, '2024-02-14 10:48:43', '2024-02-19 06:58:58', NULL),
(3, 'INST-003', 'subham', 'subhamq.kj@jurysoft.com', '1111111111', 'djkf', 'jkfq', 'kdjs', 'Blore', 'kerala', '666666', 'In', 1, '2024-02-14 10:50:23', '2024-02-22 14:20:08', NULL),
(4, 'INST-004', 'rrsjghf', 'dj@g.in', '1231231232', 'dfj.,', 'pfopgsk', 'bfdlk', 'fdpvk', 'sdl', '123123', 'in', 1, '2024-02-14 10:51:32', '2024-02-14 11:11:52', '2024-02-14 11:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `user_address_id`, `delivery_type_id`, `order_status_id`, `order_date`, `order_accepted_date`, `accepted`, `rejected_reason`, `payment_ref_id`, `shipping_link`, `shipping_id`, `coupon_id`, `total_discount_amount`, `total_paid_amount`, `total_gst_amount`, `total_shipping_amount`, `total_product_amount`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'kardify-1', 3, 1, 1, 3, NULL, '2024-01-28 14:56:29', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 07:49:42', '2024-01-28 14:57:04', NULL),
(2, 'kardify-2', 1, 1, 2, 10, NULL, '2024-01-27 10:02:18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 07:49:42', '2024-01-27 10:47:36', NULL),
(3, 'kardify-3', 0, 1, 1, 10, NULL, '2024-01-25 11:52:52', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 10:18:11', '2024-01-27 13:56:24', NULL),
(4, 'kardify-4', 1, 1, 1, 6, NULL, '2024-01-27 12:19:31', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-27 12:16:17', '2024-01-28 14:46:06', NULL),
(5, 'kardify-5', 1, 1, 1, 5, NULL, '2024-01-27 12:32:28', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-27 12:32:09', '2024-02-03 06:13:43', NULL),
(6, 'kardify-6', 1, 1, 1, 3, NULL, '2024-01-28 14:39:28', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-28 14:39:01', '2024-01-28 14:52:08', NULL),
(7, 'kardify-7', 2, 1, 1, 3, NULL, '2024-01-29 05:49:54', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 05:47:31', '2024-01-29 05:52:28', NULL),
(8, 'kardify-8', 2, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 05:56:45', '2024-01-29 06:00:31', NULL),
(9, 'kardify-9', 2, 1, 1, 3, NULL, '2024-01-29 06:05:12', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 06:03:42', '2024-01-29 06:05:47', NULL),
(10, 'kardify-10', 2, 1, 1, 3, NULL, '2024-01-29 09:10:07', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 06:07:45', '2024-01-29 09:10:22', NULL),
(11, 'kardify-11', 2, 1, 1, 3, NULL, '2024-01-29 12:36:23', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 09:53:46', '2024-01-29 12:36:34', NULL),
(12, 'kardify-12', 1, 1, 1, 3, NULL, '2024-02-12 10:58:19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-12 10:56:53', '2024-02-12 10:59:03', NULL);

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

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `category_id`, `sub_category_id`, `super_sub_category_id`, `product_type`, `car_brand_id`, `car_model_id`, `unit_price`, `quantity`, `sub_total`, `gst`, `total_amount`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 07:49:42', '2024-01-25 07:49:42', NULL),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 07:49:42', '2024-01-25 07:49:42', NULL),
(3, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 10:18:11', '2024-01-25 10:18:11', NULL),
(4, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 10:18:11', '2024-01-25 10:18:11', NULL),
(5, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-27 12:16:17', '2024-01-27 12:16:17', NULL),
(6, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-27 12:32:09', '2024-01-27 12:32:09', NULL),
(7, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-28 14:39:01', '2024-01-28 14:39:01', NULL),
(8, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 05:47:31', '2024-01-29 05:47:31', NULL),
(9, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 05:47:31', '2024-01-29 05:47:31', NULL),
(10, 8, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 05:56:45', '2024-01-29 05:56:45', NULL),
(11, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 05:56:45', '2024-01-29 05:56:45', NULL),
(12, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 06:03:42', '2024-01-29 06:03:42', NULL),
(13, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 06:03:42', '2024-01-29 06:03:42', NULL),
(14, 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 06:07:45', '2024-01-29 06:07:45', NULL),
(15, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 06:07:45', '2024-01-29 06:07:45', NULL),
(16, 11, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 09:53:46', '2024-01-29 09:53:46', NULL),
(17, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 09:53:46', '2024-01-29 09:53:46', NULL),
(18, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-12 10:56:53', '2024-02-12 10:56:53', NULL),
(19, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-12 10:56:53', '2024-02-12 10:56:53', NULL);

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
(1, 'Pending', 1, '2024-01-27 10:39:04', '2024-01-27 10:39:04', NULL),
(2, 'Confirmed', 1, '2024-01-27 10:39:38', '2024-01-27 10:39:38', NULL),
(3, 'Packaging', 1, '2024-01-27 10:39:53', '2024-01-27 10:39:53', NULL),
(4, 'Out For Delivery', 1, '2024-01-27 10:40:17', '2024-01-27 10:40:17', NULL),
(5, 'Delivered', 1, '2024-01-27 10:43:06', '2024-01-27 10:43:06', NULL),
(6, 'Return Initiated', 1, '2024-01-27 10:43:25', '2024-01-27 10:43:25', NULL),
(7, 'Return Approved By Vendor', 1, '2024-01-27 10:43:43', '2024-01-27 10:43:43', NULL),
(8, 'Return Completed', 1, '2024-01-27 10:44:09', '2024-01-27 10:44:09', NULL),
(9, 'Cancelled By Customer', 1, '2024-01-27 10:44:30', '2024-01-27 10:44:30', NULL),
(10, 'Cancelled By Kardify', 1, '2024-01-27 10:44:48', '2024-01-27 10:44:48', NULL);

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

--
-- Dumping data for table `order_status_logs`
--

INSERT INTO `order_status_logs` (`id`, `order_id`, `order_status_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 1, '2024-01-25 07:49:42', '2024-01-25 07:49:42', NULL),
(2, 1, 2, '2024-01-25 07:49:42', '2024-01-25 07:49:42', NULL),
(3, 1, 2, '2024-01-25 09:06:32', '2024-01-25 09:06:32', NULL),
(4, 1, 3, '2024-01-25 09:10:10', '2024-01-25 09:10:10', NULL),
(5, 1, 3, '2024-01-25 09:10:53', '2024-01-25 09:10:53', NULL),
(6, 1, 3, '2024-01-25 09:11:35', '2024-01-25 09:11:35', NULL),
(7, 1, 3, '2024-01-25 09:12:11', '2024-01-25 09:12:11', NULL),
(8, 3, 1, '2024-01-25 10:18:11', '2024-01-25 10:18:11', NULL),
(9, 3, 2, '2024-01-25 11:52:52', '2024-01-25 11:52:52', NULL),
(10, 2, 2, '2024-01-25 12:58:40', '2024-01-25 12:58:40', NULL),
(11, 2, 2, '2024-01-27 06:59:44', '2024-01-27 06:59:44', NULL),
(12, 3, 2, '2024-01-27 09:42:34', '2024-01-27 09:42:34', NULL),
(13, 1, 3, '2024-01-27 09:44:15', '2024-01-27 09:44:15', NULL),
(14, 1, 2, '2024-01-27 09:44:20', '2024-01-27 09:44:20', NULL),
(15, 1, 1, '2024-01-27 09:44:54', '2024-01-27 09:44:54', NULL),
(16, 1, 2, '2024-01-27 09:45:07', '2024-01-27 09:45:07', NULL),
(17, 1, 6, '2024-01-27 09:45:12', '2024-01-27 09:45:12', NULL),
(18, 1, 8, '2024-01-27 09:46:12', '2024-01-27 09:46:12', NULL),
(19, 1, 2, '2024-01-27 09:51:13', '2024-01-27 09:51:13', NULL),
(20, 1, 2, '2024-01-27 09:51:25', '2024-01-27 09:51:25', NULL),
(21, 1, 2, '2024-01-27 09:52:03', '2024-01-27 09:52:03', NULL),
(22, 1, 2, '2024-01-27 09:52:16', '2024-01-27 09:52:16', NULL),
(23, 1, 6, '2024-01-27 09:52:50', '2024-01-27 09:52:50', NULL),
(24, 2, 2, '2024-01-27 09:53:45', '2024-01-27 09:53:45', NULL),
(25, 2, 3, '2024-01-27 09:53:47', '2024-01-27 09:53:47', NULL),
(26, 2, 1, '2024-01-27 09:53:48', '2024-01-27 09:53:48', NULL),
(27, 2, 3, '2024-01-27 10:00:18', '2024-01-27 10:00:18', NULL),
(28, 2, 2, '2024-01-27 10:02:18', '2024-01-27 10:02:18', NULL),
(29, 2, 2, '2024-01-27 10:05:23', '2024-01-27 10:05:23', NULL),
(30, 2, 1, '2024-01-27 10:05:46', '2024-01-27 10:05:46', NULL),
(31, 2, 3, '2024-01-27 10:06:27', '2024-01-27 10:06:27', NULL),
(32, 3, 5, '2024-01-27 10:06:42', '2024-01-27 10:06:42', NULL),
(33, 2, 4, '2024-01-27 10:23:48', '2024-01-27 10:23:48', NULL),
(34, 3, 1, '2024-01-27 10:25:13', '2024-01-27 10:25:13', NULL),
(35, 3, 2, '2024-01-27 10:25:28', '2024-01-27 10:25:28', NULL),
(36, 3, 3, '2024-01-27 10:26:53', '2024-01-27 10:26:53', NULL),
(37, 2, 5, '2024-01-27 10:47:36', '2024-01-27 10:47:36', NULL),
(38, 1, 7, '2024-01-27 11:10:02', '2024-01-27 11:10:02', NULL),
(39, 1, 8, '2024-01-27 11:10:09', '2024-01-27 11:10:09', NULL),
(40, 4, 1, '2024-01-27 12:16:17', '2024-01-27 12:16:17', NULL),
(41, 4, 2, '2024-01-27 12:19:31', '2024-01-27 12:19:31', NULL),
(42, 4, 2, '2024-01-27 12:19:43', '2024-01-27 12:19:43', NULL),
(43, 5, 1, '2024-01-27 12:32:09', '2024-01-27 12:32:09', NULL),
(44, 5, 2, '2024-01-27 12:32:28', '2024-01-27 12:32:28', NULL),
(45, 5, 2, '2024-01-27 12:32:43', '2024-01-27 12:32:43', NULL),
(46, 3, 9, '2024-01-27 13:56:24', '2024-01-27 13:56:24', NULL),
(47, 4, 3, '2024-01-27 18:55:33', '2024-01-27 18:55:33', NULL),
(48, 5, 3, '2024-01-28 10:07:07', '2024-01-28 10:07:07', NULL),
(49, 6, 1, '2024-01-28 14:39:01', '2024-01-28 14:39:01', NULL),
(50, 6, 2, '2024-01-28 14:39:28', '2024-01-28 14:39:28', NULL),
(51, 4, 4, '2024-01-28 14:43:13', '2024-01-28 14:43:13', NULL),
(52, 4, 5, '2024-01-28 14:46:06', '2024-01-28 14:46:06', NULL),
(53, 6, 2, '2024-01-28 14:52:08', '2024-01-28 14:52:08', NULL),
(54, 1, 2, '2024-01-28 14:56:29', '2024-01-28 14:56:29', NULL),
(55, 1, 2, '2024-01-28 14:57:04', '2024-01-28 14:57:04', NULL),
(56, 7, 1, '2024-01-29 05:47:31', '2024-01-29 05:47:31', NULL),
(57, 7, 2, '2024-01-29 05:49:54', '2024-01-29 05:49:54', NULL),
(58, 7, 2, '2024-01-29 05:52:28', '2024-01-29 05:52:28', NULL),
(59, 8, 1, '2024-01-29 05:56:45', '2024-01-29 05:56:45', NULL),
(60, 8, 1, '2024-01-29 06:00:31', '2024-01-29 06:00:31', NULL),
(61, 9, 1, '2024-01-29 06:03:42', '2024-01-29 06:03:42', NULL),
(62, 9, 2, '2024-01-29 06:05:12', '2024-01-29 06:05:12', NULL),
(63, 9, 2, '2024-01-29 06:05:47', '2024-01-29 06:05:47', NULL),
(64, 10, 1, '2024-01-29 06:07:45', '2024-01-29 06:07:45', NULL),
(65, 10, 2, '2024-01-29 09:10:07', '2024-01-29 09:10:07', NULL),
(66, 10, 2, '2024-01-29 09:10:22', '2024-01-29 09:10:22', NULL),
(67, 11, 1, '2024-01-29 09:53:46', '2024-01-29 09:53:46', NULL),
(68, 11, 2, '2024-01-29 12:36:23', '2024-01-29 12:36:23', NULL),
(69, 11, 2, '2024-01-29 12:36:34', '2024-01-29 12:36:34', NULL),
(70, 5, 4, '2024-02-03 06:13:43', '2024-02-03 06:13:43', NULL),
(71, 12, 1, '2024-02-12 10:56:53', '2024-02-12 10:56:53', NULL),
(72, 12, 2, '2024-02-12 10:58:19', '2024-02-12 10:58:19', NULL),
(73, 12, 2, '2024-02-12 10:59:03', '2024-02-12 10:59:03', NULL);

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
(16, 13, NULL, '6796', '2024-02-29 14:17:53', '2024-02-29 14:17:53', '2024-02-29 14:19:53');

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
  `has_cancellaton_policy` tinyint(1) DEFAULT NULL,
  `cancellation_policy` varchar(99) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `has_warranty` tinyint(1) DEFAULT NULL,
  `warranty` varchar(99) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_desc`, `product_brand_id`, `category_id`, `sub_category_id`, `super_sub_category_id`, `minimum_order`, `default_price`, `stock`, `status`, `discount_type`, `discount`, `tax_type`, `tax_rate`, `product_type`, `car_brand_id`, `car_model_id`, `start_year`, `end_year`, `has_exchange_policy`, `exchange_policy`, `has_cancellaton_policy`, `cancellation_policy`, `quantity`, `has_warranty`, `warranty`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Alloy 32', 'Subham', 3, 6, 26, 2, 232, 543, 12, 1, 'percent', 12, 'percent', NULL, 'vehicle selection', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 32423, NULL, NULL, '2024-02-18 14:53:56', '2024-02-18 15:09:00', NULL),
(2, 'Seat Cover ', 'Best seat cover', 1, 2, 8, 2, 988, 200, 12, 1, 'amount', 12, 'percent', NULL, 'vehicle selection', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 12312, NULL, NULL, '2024-02-18 15:05:21', '2024-02-20 13:44:01', NULL),
(3, 'Black seat cover', 'asdasd', 1, 2, 11, 5, 12, 21, 21, 1, 'percent', 12, 'percent', NULL, 'general', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, '2024-03-07 10:12:31', '2024-03-07 10:12:31', NULL);

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

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `attribute_name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Colour', 1, '2024-02-12 10:28:06', '2024-02-13 05:44:59', NULL),
(2, 'Size', 1, '2024-02-12 10:28:15', '2024-02-13 05:44:58', NULL);

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

--
-- Dumping data for table `product_attributes_associations`
--

INSERT INTO `product_attributes_associations` (`id`, `combination`, `price`, `stock`, `product_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'L', 200, 12, 1, '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL),
(2, 'M', 300, 12, 1, '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL),
(3, 'S', 400, 122, 1, '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL),
(4, 'Red', 200, 12, 2, '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL),
(5, 'White', 300, 110, 2, '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL),
(6, 'Blue', 200, 12, 2, '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL),
(7, 'M', 123, 2, 3, '2024-03-07 10:12:31', '2024-03-07 10:12:31', NULL);

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

--
-- Dumping data for table `product_brands`
--

INSERT INTO `product_brands` (`id`, `brand_name`, `image_url`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Lenso', '/uploads/carbrands/1707549862901.png', 1, '2024-02-02 10:52:33', '2024-02-20 10:12:23', NULL),
(2, 'Subham', '/uploads/productbrands/1707382448617.png', 1, '2024-02-08 08:54:08', '2024-02-08 09:15:40', '2024-02-08 09:15:40'),
(3, 'Honeywell', '/uploads/carbrands/1707384241780.png', 1, '2024-02-08 09:15:54', '2024-02-10 07:22:57', NULL),
(4, 'BENQ', '/uploads/productbrands/1707384369220.png', 1, '2024-02-08 09:26:09', '2024-02-08 11:00:38', NULL);

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

--
-- Dumping data for table `product_discount_associations`
--

INSERT INTO `product_discount_associations` (`id`, `discount_id`, `product_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 2, '2024-02-03 09:56:33', '2024-02-03 09:56:33', NULL),
(2, 1, 1, '2024-02-03 09:56:33', '2024-02-03 09:56:33', NULL),
(3, 2, 1, '2024-02-03 12:21:14', '2024-02-03 12:21:14', NULL),
(4, 3, 1, '2024-02-03 12:23:27', '2024-02-03 12:23:27', NULL),
(5, 4, 1, '2024-02-03 12:24:30', '2024-02-03 12:24:30', NULL),
(6, 5, 1, '2024-02-03 12:25:49', '2024-02-03 12:25:49', NULL),
(7, 6, 1, '2024-02-03 12:26:59', '2024-02-03 12:26:59', NULL),
(8, 7, 1, '2024-02-03 12:33:54', '2024-02-03 12:33:54', NULL),
(9, 8, 1, '2024-02-03 12:45:19', '2024-02-03 12:45:19', NULL);

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

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_url`, `createdAt`, `updatedAt`, `deletedAt`, `status`) VALUES
(1, 1, '/uploads/products/1708268036166.png', '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL, 1),
(2, 1, '/uploads/products/1708268036170.png', '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL, 1),
(3, 1, '/uploads/products/1708268036172.png', '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL, 1),
(4, 1, '/uploads/products/1708268036174.png', '2024-02-18 14:53:56', '2024-02-18 14:53:56', NULL, 1),
(5, 2, '/uploads/products/1708268721666.png', '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL, 1),
(6, 2, '/uploads/products/1708268721667.png', '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL, 1),
(7, 2, '/uploads/products/1708268721668.png', '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL, 1),
(8, 2, '/uploads/products/1708268721671.png', '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL, 1),
(9, 2, '/uploads/products/1708268721674.png', '2024-02-18 15:05:21', '2024-02-18 15:05:21', NULL, 1),
(10, 3, '/uploads/products/1709806351491.png', '2024-03-07 10:12:31', '2024-03-07 10:12:31', NULL, 1),
(11, 3, '/uploads/products/1709806351494.png', '2024-03-07 10:12:31', '2024-03-07 10:12:31', NULL, 1);

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
(1, '/uploads/staticpage/1709057152791.png', '<p>subham jena kuma</p>', 0, '<p>abcd</p>', 1, '<p>Subhamasasdasdasd</p>', 1, '<p>Cancelled doneavbcvb</p>', 0, '<p>ReFund Policy working</p>', 0, '<p>retuns</p>', 0, '<p>hehehehhe</p>', 0, '2024-02-21 09:42:37', '2024-02-27 18:05:52', NULL);

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
(1, 'email_1', 1, 'Email 1', '2024-02-22 12:52:30', '2024-02-22 19:13:42', NULL),
(2, 'email_2', 1, 'email 2', '2024-02-22 12:52:30', '2024-02-22 19:13:44', NULL),
(3, 'number_1', 1, 'number 1', '2024-02-22 12:52:30', '2024-02-23 12:17:39', NULL),
(4, 'number_2', 1, 'number 2', '2024-02-22 12:52:30', '2024-02-22 19:13:55', NULL),
(5, 'whatsapp_1', 1, 'what 1', '2024-02-22 12:52:30', '2024-02-22 19:13:47', NULL),
(6, 'whatsapp_2', 1, 'what 2', '2024-02-22 12:52:30', '2024-02-22 19:13:51', NULL),
(7, 'address_1', 1, 'address 1', '2024-02-22 12:52:30', '2024-02-22 19:13:49', NULL),
(8, 'address_2', 1, 'address 2', '2024-02-22 12:52:30', '2024-02-22 19:13:57', NULL),
(9, 'linkedin', 1, 'linkedin', '2024-02-22 12:52:30', '2024-02-23 07:21:51', NULL),
(10, 'instagram', 1, 'instagram', '2024-02-22 12:52:30', '2024-02-22 19:14:01', NULL),
(11, 'facebook', 1, 'facebook', '2024-02-22 12:52:30', '2024-02-22 19:14:03', NULL),
(12, 'twitter', 1, 'twitter', '2024-02-22 12:52:30', '2024-02-22 19:14:05', NULL),
(13, 'website', 1, 'website', '2024-02-22 12:52:30', '2024-02-22 19:14:07', NULL),
(14, 'youtube', 1, 'youtube', '2024-02-22 12:52:30', '2024-02-22 19:14:09', NULL),
(15, 'Gpay', 1, NULL, '2024-02-22 12:52:30', '2024-02-22 12:52:30', NULL),
(16, 'Amazonpay', 1, NULL, '2024-02-22 12:52:30', '2024-02-22 12:52:30', NULL),
(17, 'Phonepe', 0, NULL, '2024-02-22 12:52:30', '2024-02-23 07:21:55', NULL),
(18, 'MasterCard', 1, NULL, '2024-02-22 12:52:30', '2024-02-22 12:52:30', NULL),
(19, 'VISA', 1, NULL, '2024-02-22 12:52:30', '2024-02-23 06:08:26', NULL);

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

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `customer_id`, `image_url`, `heading`, `description`, `is_approved`, `rejected_reason`, `story_type`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 7, '/uploads/stories/1709643487678.png', 'Test Image', 'IMage ', 1, NULL, 'image', 1, '2024-03-05 12:58:07', '2024-03-05 17:29:49', NULL),
(2, 3, '/uploads/stories/1709643512214.mp4', 'Test Video', 'Video', 1, NULL, 'video', 1, '2024-03-05 12:58:32', '2024-03-06 05:47:17', NULL),
(3, 3, '/uploads/stories/1709703703036.jpeg', 'Testayhsajs', 'ahjsdbkahisjdkjajsdad', 0, 'No interested', 'image', 0, '2024-03-06 05:41:43', '2024-03-06 05:50:14', NULL),
(4, 3, '/uploads/stories/1709703853858.png', 'Preetam', 'Testa sbhajkdl', 1, NULL, 'image', 1, '2024-03-06 05:44:13', '2024-03-06 05:49:14', NULL),
(5, 3, '/uploads/stories/1709703886189.mp4', 'jena subham', 'jjwi basjajsdkad', 1, NULL, 'video', 1, '2024-03-06 05:44:46', '2024-03-06 17:49:01', NULL),
(6, 3, '/uploads/stories/1709704315713.jpeg', 'sdf', 'sdf', 1, NULL, 'image', 1, '2024-03-06 05:51:55', '2024-03-06 19:09:56', NULL),
(7, 3, '/uploads/stories/1709704507186.mp4', '4k', '4k video', 1, NULL, 'video', 1, '2024-03-06 05:55:07', '2024-03-16 10:25:03', NULL),
(8, 3, '/uploads/stories/1710584679965.mp4', 'adsa test video', 'asdkhja sadjasd asiudhjkas akjsndka', 1, NULL, 'video', 1, '2024-03-16 10:24:40', '2024-03-16 10:25:05', NULL),
(9, 3, '/uploads/stories/1710584756664.png', 'Test image upload', 'faghjskdn ajhsdkhlasd iaukjshda sdakjsdhl', 1, NULL, 'image', 1, '2024-03-16 10:25:56', '2024-03-16 10:25:56', NULL),
(10, 7, '/uploads/stories/1710584815547.png', 'tea ajshdbaykwejn kajsd', 'tea ajshdbaykwejn kajsdaasc sdtea ajshdbaykwejn kajsd tea ajshdbaykwejn kajsd', 1, NULL, 'image', 1, '2024-03-16 10:26:55', '2024-03-16 10:27:19', NULL);

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

--
-- Dumping data for table `stories_product_associations`
--

INSERT INTO `stories_product_associations` (`id`, `story_id`, `product_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 5, 1, '2024-03-06 18:08:31', '2024-03-06 18:08:31', '2024-03-06 18:10:22'),
(2, 5, 2, '2024-03-06 18:08:31', '2024-03-06 18:08:31', '2024-03-06 18:10:22'),
(3, 5, 1, '2024-03-06 18:08:31', '2024-03-06 18:08:31', '2024-03-06 18:10:22'),
(4, 5, 1, '2024-03-06 18:08:55', '2024-03-06 18:08:55', '2024-03-06 18:10:22'),
(5, 5, 2, '2024-03-06 18:08:55', '2024-03-06 18:08:55', '2024-03-06 18:10:22'),
(6, 5, 1, '2024-03-06 18:08:55', '2024-03-06 18:08:55', '2024-03-06 18:10:22'),
(7, 5, 1, '2024-03-06 18:10:22', '2024-03-06 18:10:22', '2024-03-06 18:10:45'),
(8, 5, 2, '2024-03-06 18:10:22', '2024-03-06 18:10:22', '2024-03-06 18:10:45'),
(9, 5, 1, '2024-03-06 18:10:22', '2024-03-06 18:10:22', '2024-03-06 18:10:45'),
(10, 5, 1, '2024-03-06 18:10:45', '2024-03-06 18:10:45', '2024-03-06 18:14:07'),
(11, 5, 2, '2024-03-06 18:10:45', '2024-03-06 18:10:45', '2024-03-06 18:14:07'),
(12, 5, 1, '2024-03-06 18:10:45', '2024-03-06 18:10:45', '2024-03-06 18:14:07'),
(13, 5, 12, '2024-03-06 18:10:45', '2024-03-06 18:10:45', '2024-03-06 18:14:07'),
(14, 5, 1, '2024-03-06 18:14:07', '2024-03-06 18:14:07', NULL),
(15, 5, 2, '2024-03-06 18:14:07', '2024-03-06 18:14:07', NULL),
(16, 5, 1, '2024-03-06 18:14:07', '2024-03-06 18:14:07', NULL),
(17, 5, 12, '2024-03-06 18:14:07', '2024-03-06 18:14:07', NULL),
(18, 6, 1, '2024-03-06 18:39:49', '2024-03-06 18:39:49', NULL);

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

--
-- Dumping data for table `subscribed_customers`
--

INSERT INTO `subscribed_customers` (`id`, `email`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'subham.kj@gmail.com', 0, '2024-02-19 05:59:36', '2024-02-19 06:32:51', '2024-02-19 06:32:51'),
(2, 'asdjad@j.com', 0, '2024-02-19 06:01:37', '2024-02-19 06:34:21', '2024-02-19 06:34:21'),
(3, 'ahsgdjasd@gmail.com', 1, '2024-02-19 06:33:22', '2024-02-19 06:33:35', '2024-02-19 06:33:35'),
(4, 'ahsgdjasd@gmail.com', 1, '2024-02-19 06:34:57', '2024-02-19 07:00:15', NULL),
(5, 'subhamjena0001@gmail.com', 1, '2024-02-19 06:36:07', '2024-02-19 07:00:14', NULL),
(6, 'sanjay.m@jurysfot.com', 1, '2024-02-19 06:36:27', '2024-02-28 16:57:56', NULL),
(7, 'admin@gmail.com', 1, '2024-02-28 06:32:08', '2024-02-28 06:32:08', NULL),
(8, 'preetham.m@jurysoft.com', 1, '2024-02-28 06:36:56', '2024-02-28 06:36:56', NULL),
(9, 'dmin@gmail.com', 1, '2024-02-28 06:58:47', '2024-02-28 06:58:47', NULL),
(10, 'preethm.m@jurysoft.com', 1, '2024-02-28 07:00:13', '2024-02-28 07:00:13', NULL),
(11, 'supprt@makemydocuments.com', 1, '2024-02-28 07:01:08', '2024-02-28 07:01:08', NULL),
(12, 'preetam.m@jurysoft.com', 1, '2024-02-28 07:03:43', '2024-02-28 07:03:43', NULL),
(13, 'preehm.m@jurysoft.com', 1, '2024-02-28 07:04:17', '2024-02-28 07:04:17', NULL),
(14, 'prehm.m@jurysoft.com', 1, '2024-02-28 07:05:33', '2024-02-28 07:05:33', NULL),
(15, 'prhm.m@jurysoft.com', 1, '2024-02-28 07:07:01', '2024-02-28 07:07:01', NULL),
(16, 'm.m@jurysoft.com', 1, '2024-02-28 07:07:34', '2024-02-28 16:57:59', NULL),
(17, '1@g.com', 1, '2024-02-28 07:09:48', '2024-02-29 06:07:33', NULL),
(18, '1@gd.com', 1, '2024-02-28 07:11:36', '2024-02-28 07:11:36', NULL),
(19, '2@gmail.com', 1, '2024-02-28 07:12:02', '2024-02-28 07:12:02', NULL),
(20, '3@gmail.com', 1, '2024-02-28 07:16:11', '2024-02-28 07:16:11', NULL),
(21, '4@gmail.com', 1, '2024-02-28 07:16:26', '2024-02-28 07:16:26', NULL);

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

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `status`, `image_url`, `banner_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 'Accessoriess', 1, '/uploads/subcategories/1707733375311.png', NULL, '2024-02-12 10:22:55', '2024-02-12 10:23:44', '2024-02-12 10:23:44'),
(2, 1, 'Accessories', 1, '/uploads/subcategories/1707804803427.png', NULL, '2024-02-12 10:46:07', '2024-02-13 06:13:23', NULL),
(3, 1, 'Body Kits', 1, '/uploads/subcategories/1707804952518.png', NULL, '2024-02-12 10:46:28', '2024-02-13 06:15:52', NULL),
(4, 1, 'Paint Protection Film', 1, '/uploads/subcategories/1707805740626.png', NULL, '2024-02-13 06:29:00', '2024-02-13 08:28:49', NULL),
(5, 1, ' Sun Film', 1, '/uploads/subcategories/1707806002885.png', NULL, '2024-02-13 06:33:22', '2024-02-13 06:33:22', NULL),
(6, 1, 'Tyres', 1, '/uploads/subcategories/1707806023420.png', NULL, '2024-02-13 06:33:43', '2024-02-13 16:59:05', NULL),
(7, 1, 'Wheels/Alloys', 1, '/uploads/subcategories/1707806191395.png', NULL, '2024-02-13 06:36:31', '2024-02-13 06:36:31', NULL),
(8, 2, 'Accessories', 1, '/uploads/subcategories/1707813282977.png', NULL, '2024-02-13 08:34:42', '2024-02-13 08:34:42', NULL),
(9, 2, 'Interior Sets/Cushions', 1, '/uploads/subcategories/1707813612219.png', NULL, '2024-02-13 08:40:12', '2024-02-13 10:44:20', NULL),
(10, 2, 'Mats and Carpets', 1, '/uploads/subcategories/1707813644092.png', NULL, '2024-02-13 08:40:44', '2024-02-13 16:59:10', NULL),
(11, 2, 'Seat Covers', 1, '/uploads/subcategories/1707813674748.png', NULL, '2024-02-13 08:41:14', '2024-02-13 08:41:14', NULL),
(12, 3, 'Head Units- Manual', 1, '/uploads/subcategories/1707814371901.png', NULL, '2024-02-13 08:52:51', '2024-02-13 12:51:28', NULL),
(13, 3, 'Head Units Touch Screen', 1, '/uploads/subcategories/1707814392347.png', NULL, '2024-02-13 08:53:12', '2024-02-13 12:51:07', NULL),
(14, 4, 'AC Vent Lights', 1, '/uploads/subcategories/1707902648351.png', NULL, '2024-02-13 09:11:52', '2024-02-14 09:24:08', NULL),
(15, 4, 'Ambient Lights', 1, '/uploads/subcategories/1707902665515.png', NULL, '2024-02-13 09:12:07', '2024-02-14 09:24:25', NULL),
(16, 4, 'Blinkers', 1, '/uploads/subcategories/1707902685607.png', NULL, '2024-02-13 09:15:37', '2024-02-14 09:24:45', NULL),
(17, 4, 'Break Lights', 1, '/uploads/subcategories/1707902721875.png', NULL, '2024-02-13 09:22:47', '2024-02-14 09:25:21', NULL),
(18, 4, 'Cup Holder Lights', 1, '/uploads/subcategories/1707902736535.png', NULL, '2024-02-14 09:25:36', '2024-02-14 09:25:36', NULL),
(19, 4, 'Drl Lights', 1, '/uploads/subcategories/1707904946518.png', NULL, '2024-02-14 10:02:26', '2024-02-14 10:02:26', NULL),
(20, 4, 'Fog Lights', 1, '/uploads/subcategories/1707904990824.png', NULL, '2024-02-14 10:03:10', '2024-02-14 10:03:10', NULL),
(21, 4, 'Gear Knob', 1, '/uploads/subcategories/1707905005788.png', NULL, '2024-02-14 10:03:25', '2024-02-14 10:03:25', NULL),
(22, 4, 'Headlights', 1, '/uploads/subcategories/1707905021737.png', NULL, '2024-02-14 10:03:41', '2024-02-14 10:03:41', NULL),
(23, 4, 'Off Road Lights', 1, '/uploads/subcategories/1707905039412.jpg', NULL, '2024-02-14 10:03:59', '2024-02-14 10:03:59', NULL),
(24, 4, 'Projector Lights', 1, '/uploads/subcategories/1707905056860.png', NULL, '2024-02-14 10:04:16', '2024-02-14 10:04:16', NULL),
(25, 4, 'Roof Lights', 1, '/uploads/subcategories/1707905070893.png', NULL, '2024-02-14 10:04:30', '2024-02-14 10:04:30', NULL),
(26, 4, 'Tail Lights', 1, '/uploads/subcategories/1707905087065.png', NULL, '2024-02-14 10:04:47', '2024-02-14 10:04:47', NULL),
(27, 5, 'Exterior', 1, '/uploads/subcategories/1707908585168.png', NULL, '2024-02-14 11:03:05', '2024-02-14 11:03:05', NULL),
(28, 5, 'Interior', 1, '/uploads/subcategories/1707908603708.png', NULL, '2024-02-14 11:03:23', '2024-02-14 11:03:23', NULL);

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

--
-- Dumping data for table `super_sub_categories`
--

INSERT INTO `super_sub_categories` (`id`, `category_id`, `sub_category_id`, `super_sub_category_name`, `image_url`, `banner_id`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 3, 'one', '/uploads/supersubcategories/1707734840590.png', NULL, 1, '2024-02-12 11:20:25', '2024-02-12 11:20:25', NULL),
(2, 1, 3, 'two', '/uploads/supersubcategories/1707734869960.png', NULL, 1, '2024-02-13 05:44:14', '2024-02-13 05:44:14', NULL),
(3, 1, 2, '111', '/uploads/supersubcategories/1707734887138.png', NULL, 1, '2024-02-13 16:59:26', '2024-02-13 16:59:26', NULL),
(4, 1, 2, '234234fsdfsf', '/uploads/supersubcategories/1707737209525.png', NULL, 1, '2024-02-13 16:59:24', '2024-02-13 16:59:24', NULL),
(5, 2, 11, 'Preetam', '/uploads/supersubcategories/1709805558195.png', NULL, 1, '2024-03-07 09:59:18', '2024-03-07 09:59:18', NULL);

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

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `customer_id`, `rating`, `heading`, `description`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 3, 4.5, 'Test Testimonial', 'Tetstettsvt tegss. ', 1, '2024-02-28 10:09:35', '2024-02-28 10:09:35', NULL),
(2, 7, 2.5, 'fdghjakl', 'fdghajksjbd ajshdkhadslasd', 1, '2024-02-28 10:12:00', '2024-02-28 17:01:53', NULL),
(3, 3, 4.5, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2024-02-28 11:59:49', '2024-02-28 17:01:22', NULL);

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
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `add_type`, `add1`, `add2`, `city`, `state`, `country`, `area`, `landmark`, `zipcode`, `fullname`, `mobile`, `lat`, `lng`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 2, 'home', 'thanisandra', 'thanisandra', 'bengaluru', 'KA', 'India', 'thanisandra', 'thanisandra', '560077', 'subham jena', '8249229465', 13.0601, 77.6321, '2023-12-30 12:42:21', '2023-12-30 12:42:21', '2024-01-03 16:21:50'),
(2, 3, 'Select here', 'SF02', 'Subramanyapura', 'Bengaluru', 'Karnataka', 'India', 'Subramanyapura', 'ISKCON South bangalore', '560062', 'Shankar', '9916053272', 12.888, 77.5481, '2023-12-30 12:47:22', '2023-12-30 12:47:22', NULL),
(3, 3, 'Friend', '1st floor', 'Rajarajeshwari Nagar', 'Bengaluru', 'Karnataka', 'India', 'Rajarajeshwari Nagar', 'Bagmane', '560098', 'Karthik', '9916053272', 12.9204, 77.5208, '2023-12-30 13:39:01', '2023-12-30 13:39:01', NULL),
(4, 3, 'sanju', 'jurysoft', 'Rajarajeshwari Nagar', 'Bengaluru', 'Karnataka', 'India', 'Rajarajeshwari Nagar', 'Hyderabad biryani ', '560098', 'sanju', '8105128578', 12.9204, 77.5208, '2023-12-30 13:40:54', '2023-12-30 13:40:54', NULL),
(5, 3, 'Friend', '1st floor', 'Rajarajeshwari Nagar', 'Bengaluru', 'Karnataka', 'India', 'Rajarajeshwari Nagar', 'Bagmane', '560098', 'Shankar', '9916053272', 12.9204, 77.5208, '2023-12-30 13:43:55', '2023-12-30 13:43:55', NULL),
(6, 4, 'Home', '123', 'Vasundhara', 'Ghaziabad', 'Uttar Pradesh', 'India', 'Vasundhara', 'tedt', '201007', 'Sanjay Kirti', '8860626363', 28.6646, 77.388, '2023-12-30 15:20:21', '2023-12-30 15:20:21', NULL),
(7, 5, 'Home', '7', 'Basaveshwara Nagar Ward', 'Bengaluru', 'Karnataka', 'India', 'Basaveshwara Nagar Ward', 'near carmal high school', '560079', 'Kaushik ', '9900004120', 12.9884, 77.545, '2023-12-31 03:44:12', '2023-12-31 03:44:12', NULL),
(8, 5, 'Work', '6', 'Vasanth Nagar', 'Bengaluru', 'Karnataka', 'India', 'Vasanth Nagar', 'next to swathi ', '560080', 'fittclub ', '9900004120', 12.9984, 77.5824, '2023-12-31 03:45:22', '2023-12-31 03:45:22', NULL),
(9, 5, 'Select here', '4', 'Peenya Industrial Area', 'Bengaluru', 'Karnataka', 'India', 'Peenya Industrial Area', 'uuuvc', '560018', 'freshcakes ', '9900004120', 13.009, 77.4984, '2023-12-31 03:46:34', '2023-12-31 03:46:34', NULL),
(10, 5, 'Select here', '56t', 'Sarvagna Nagar', 'Bengaluru', 'Karnataka', 'India', 'Sarvagna Nagar', 'rghhh', '560038', 'office ', '9900004120', 12.988, 77.6304, '2023-12-31 03:47:41', '2023-12-31 03:47:41', NULL),
(11, 6, 'Home', '8', 'BTM Layout Ward', 'Bengaluru', 'Karnataka', 'India', 'BTM Layout Ward', 'Hm hi hai landmark', '560069', 'aman', '7992231165', 12.9109, 77.6075, '2023-12-31 20:58:56', '2023-12-31 20:58:56', NULL),
(12, 7, 'Home', '13', 'Rajarajeshwari Nagar', 'Bengaluru', 'Karnataka', 'India', 'Rajarajeshwari Nagar', 'ground floor ', '560098', 'harsh ', '7204719512', 12.9204, 77.5208, '2024-01-01 11:38:01', '2024-01-01 11:38:01', NULL),
(13, 12, 'home', 'Marathahalli', 'Marathahalli', 'Bengaluru', 'Karnataka ', 'India', 'Marathahalli', 'Opposite to hyderabadi biryani ', '560098', 'Subham jena', '8249229465', 12.9569, 77.7007, '2024-01-02 20:00:03', '2024-01-02 20:00:03', NULL),
(14, 8, 'Select here', 'hshs', 'Rajarajeshwari Nagar', 'Bengaluru', 'Karnataka', 'India', 'Rajarajeshwari Nagar', 'sgsb', '560098', 'hd hd', '8105128578', 12.9204, 77.5208, '2024-01-03 12:58:04', '2024-01-03 12:58:04', NULL),
(15, 2, 'home', 'Families supermarket ', 'Thanisandra ', 'Bengaluru ', 'Karnataka ', 'India', 'Thanisandra ', 'Near manyata tech park', '560077', 'Subham jena', '8249229465', 13.0335, 77.6091, '2024-01-03 16:20:57', '2024-01-03 16:22:53', NULL),
(16, 16, 'home', 'BEML layout', 'near GRT jewellers', 'bangalore', 'Karnataka', 'India', 'BEML layout', 'Ideal Homes TWP', '560098', 'rudra', '7067272092', 12.9061, 77.5196, '2024-01-04 09:56:04', '2024-01-04 09:56:04', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner_product_associations`
--
ALTER TABLE `banner_product_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `car_brands`
--
ALTER TABLE `car_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car_lists`
--
ALTER TABLE `car_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car_models`
--
ALTER TABLE `car_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `delivery_types`
--
ALTER TABLE `delivery_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `installers`
--
ALTER TABLE `installers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_status_logs`
--
ALTER TABLE `order_status_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_attributes_associations`
--
ALTER TABLE `product_attributes_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_discount_associations`
--
ALTER TABLE `product_discount_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stories_product_associations`
--
ALTER TABLE `stories_product_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subscribed_customers`
--
ALTER TABLE `subscribed_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `super_sub_categories`
--
ALTER TABLE `super_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
