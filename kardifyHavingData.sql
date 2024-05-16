-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2024 at 02:38 PM
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
(1, 'Admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJBZG1pbiIsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwicm9sZSI6IkFETUlOIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzE1NDI5NjAyLCJleHAiOjE3MTU0NDQwMDJ9.wqLLANHc6z_CeqPNTpl8GKhYL74ZD7fHXMwweRIm4h8', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJBZG1pbiIsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwicm9sZSI6IkFETUlOIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzE1NDI5NjAyLCJleHAiOjE3NDY5ODcyMDJ9.rwrRT1qD8BGU_nerVQw_cFs1B4Cz0CmKgSzxrjTCLho', '2023-08-26 00:00:00', '2024-05-11 12:13:22', NULL),
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
(1, 1, 2, 'Red', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(2, 1, 1, 'S', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(3, 2, 2, 'Red', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(4, 2, 1, 'M', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(5, 3, 2, 'Red', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(6, 3, 1, 'L', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(7, 4, 2, 'White', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(8, 4, 1, 'S', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(9, 5, 2, 'White', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(10, 5, 1, 'M', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(11, 6, 2, 'White', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(12, 6, 1, 'L', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(13, 7, 2, 'Blue', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(14, 7, 1, 'S', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(15, 8, 2, 'Blue', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(16, 8, 1, 'M', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(17, 9, 2, 'Blue', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(18, 9, 1, 'L', '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(19, 10, 1, 'L', '2024-03-27 12:25:57', '2024-03-27 12:25:57', NULL),
(20, 11, 1, 'M', '2024-03-27 12:25:57', '2024-03-27 12:25:57', NULL),
(21, 12, 1, 'L', '2024-03-27 12:26:54', '2024-03-27 12:26:54', NULL),
(22, 13, 1, 'M', '2024-03-27 12:26:54', '2024-03-27 12:26:54', NULL),
(23, 14, 2, 'Red', '2024-03-27 12:29:05', '2024-03-27 12:29:05', NULL),
(24, 15, 2, 'Blue', '2024-03-27 12:29:05', '2024-03-27 12:29:05', NULL),
(25, 16, 2, 'Red', '2024-03-27 12:32:28', '2024-03-27 12:32:28', NULL),
(26, 17, 2, 'Blue', '2024-03-27 12:32:28', '2024-03-27 12:32:28', NULL),
(27, 18, 2, 'Red', '2024-03-27 12:35:36', '2024-03-27 12:35:36', NULL),
(28, 19, 2, 'Blue', '2024-03-27 12:35:36', '2024-03-27 12:35:36', NULL),
(29, 20, 2, 'l', '2024-03-27 12:36:50', '2024-03-27 12:36:50', NULL),
(30, 20, 1, 'm', '2024-03-27 12:36:50', '2024-03-27 12:36:50', NULL),
(31, 21, 1, 'S', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(32, 21, 2, 'Blue', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(33, 22, 1, 'M', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(34, 22, 2, 'Blue', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(35, 23, 1, 'L', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(36, 23, 2, 'Blue', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(37, 24, 1, 'L', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(38, 24, 2, 'Blue', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(39, 25, 1, 'L', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(40, 25, 2, 'Red', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(41, 26, 1, 'M', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(42, 26, 2, 'Blue', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(43, 27, 1, 'M', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(44, 27, 2, 'Red', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL);

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
(1, 'Welcome 50', 'product', NULL, NULL, NULL, '/uploads/banners/1712858244164.jpg', '/uploads/banners/1712858244166.jpg', 0, '2024-04-11 17:57:24', '2024-04-11 19:02:39', NULL),
(2, 'Welcome 5045', 'category', 3, 4, 3, '/uploads/banners/1712858262041.jpg', '/uploads/banners/1712858262042.jpg', 0, '2024-04-11 17:57:42', '2024-04-11 19:01:06', NULL);

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
(1, 1, 1, '2024-04-11 17:57:24', '2024-04-11 17:57:24', NULL),
(2, 1, 2, '2024-04-11 17:57:24', '2024-04-11 17:57:24', NULL);

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
(1, 1, NULL, 1, 1, '2024-03-26 17:12:51', '2024-03-26 17:12:51', '2024-03-28 10:01:09'),
(2, 1, NULL, 6, 1, '2024-03-27 11:19:04', '2024-03-27 11:19:04', '2024-03-27 11:19:13'),
(3, 6, NULL, 9, 1, '2024-03-28 05:44:18', '2024-03-28 05:44:18', NULL),
(4, 6, NULL, 12, 1, '2024-03-28 05:44:20', '2024-03-28 05:44:20', NULL),
(5, NULL, 1, 16, 1, '2024-03-28 06:49:56', '2024-03-28 06:49:56', '2024-03-28 07:37:20'),
(6, NULL, 1, 12, 1, '2024-03-28 06:49:57', '2024-03-28 06:49:57', '2024-03-28 07:37:20'),
(7, NULL, 1, 9, 1, '2024-03-28 06:49:57', '2024-03-28 06:49:57', '2024-03-28 07:37:20'),
(8, NULL, 1, 16, 1, '2024-03-28 07:39:24', '2024-03-28 07:39:24', '2024-03-28 07:44:51'),
(9, NULL, 1, 12, 1, '2024-03-28 07:39:25', '2024-03-28 07:39:25', '2024-03-28 07:44:51'),
(10, NULL, 1, 9, 1, '2024-03-28 07:39:25', '2024-03-28 07:39:25', '2024-03-28 07:44:51'),
(11, NULL, 1, 16, 1, '2024-03-28 07:46:41', '2024-03-28 07:46:41', '2024-03-28 08:11:17'),
(12, NULL, 1, 9, 1, '2024-03-28 07:46:41', '2024-03-28 07:46:41', '2024-03-28 08:11:17'),
(13, 1, NULL, 12, 1, '2024-03-28 08:12:23', '2024-03-28 08:12:23', '2024-03-28 10:01:09'),
(14, 1, NULL, 1, 1, '2024-03-28 10:13:19', '2024-03-28 11:02:47', '2024-03-28 11:04:10'),
(15, 1, NULL, 17, 1, '2024-03-28 11:04:03', '2024-03-28 11:04:03', '2024-03-28 11:04:51'),
(16, 1, NULL, 2, 1, '2024-04-02 18:08:59', '2024-04-02 18:08:59', '2024-04-07 10:51:36'),
(17, 1, NULL, 1, 1, '2024-04-10 18:22:30', '2024-04-10 18:22:30', '2024-04-10 18:22:57'),
(18, 1, NULL, 1, 1, '2024-04-10 18:23:05', '2024-04-10 18:23:05', '2024-04-10 18:23:17'),
(19, 1, NULL, 1, 1, '2024-04-10 18:24:30', '2024-04-10 18:24:30', '2024-04-10 18:31:44'),
(20, 1, NULL, 2, 1, '2024-04-11 17:48:50', '2024-04-11 17:48:50', '2024-04-11 17:50:16'),
(21, 1, NULL, 1, 1, '2024-04-11 17:48:51', '2024-04-11 17:48:51', '2024-04-11 17:50:16'),
(22, 1, NULL, 2, 1, '2024-04-11 17:50:24', '2024-04-11 17:50:24', '2024-04-11 17:51:30'),
(23, 1, NULL, 1, 1, '2024-04-11 17:50:28', '2024-04-11 17:50:28', '2024-04-18 04:59:50'),
(24, 1, NULL, 2, 1, '2024-04-11 17:51:33', '2024-04-11 17:51:33', '2024-04-18 04:59:48'),
(25, 1, NULL, 5, 1, '2024-04-18 04:59:56', '2024-04-18 04:59:56', NULL),
(26, 1, NULL, 4, 1, '2024-04-18 04:59:58', '2024-04-18 04:59:58', NULL),
(27, 1, NULL, 10, 1, '2024-05-02 11:50:04', '2024-05-02 11:50:04', NULL);

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
(1, 'BMW', '/uploads/carbrands/1711447617426.png', 1, '2024-04-01 18:06:11', '2024-04-01 18:06:11', NULL),
(2, 'AUDI', '/uploads/carbrands/1711447627850.png', 1, '2024-04-01 18:06:10', '2024-04-01 18:06:10', NULL),
(3, 'adasd', '/uploads/carbrands/1711994091636.png', 1, '2024-04-01 18:06:09', '2024-04-01 18:06:09', NULL);

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

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`id`, `brand_id`, `model_name`, `start_year`, `end_year`, `status`, `image_url`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 2, 'AQ', '2001', '2005', 1, '/uploads/carbrands/1711447643012.png', '2024-04-01 18:06:38', '2024-04-01 18:06:38', NULL),
(2, 1, 'X6', '2004', '2005', 1, '/uploads/carbrands/1711447655610.png', '2024-04-01 18:06:40', '2024-04-01 18:06:40', NULL);

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
(1, 'EXTERIOR', '/uploads/categories/1711447197363.jpg', NULL, 1, '2024-03-26 09:59:57', '2024-03-26 10:03:23', NULL),
(2, 'INTERIOR', '/uploads/categories/1711447205745.jpg', NULL, 1, '2024-03-26 10:00:05', '2024-04-01 17:57:22', NULL),
(3, 'Alloy Wheel', '/uploads/categories/1711447214262.jpg', NULL, 1, '2024-03-26 10:00:14', '2024-04-02 10:16:17', NULL),
(4, 'asda', '/uploads/categories/default.png', NULL, 1, '2024-03-30 04:42:42', '2024-03-30 04:43:09', '2024-03-30 04:43:09'),
(5, 'asdasd', '/uploads/categories/1711773808738.png', NULL, 1, '2024-03-30 04:43:20', '2024-03-30 04:43:28', NULL),
(6, 'Alloy Wheels', '/uploads/categories/1712053061050.png', NULL, 0, '2024-04-02 10:17:30', '2024-04-02 10:17:47', '2024-04-02 10:17:47');

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
(1, 'Dealer Wise', 'Welcome dealer', 'DEALER10', 1, 1, NULL, 'Percent', 10, 499, 80, NULL, 1, '2024-03-28 00:00:00', '2024-04-03 00:00:00', '2024-03-28 06:53:43', '2024-03-28 06:53:43', NULL),
(2, 'First Order', 'Welcome', 'WELCOME20', 1, 1, NULL, 'Percent', 10, 400, 90, NULL, NULL, NULL, NULL, '2024-03-28 08:13:28', '2024-03-28 08:13:28', NULL);

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
(1, 'subham kumar jena', NULL, NULL, 'subham.kj@jurysoft.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJzdWJoYW0ga3VtYXIgamVuYSIsInVzZXJuYW1lIjoic3ViaGFtLmtqQGp1cnlzb2Z0LmNvbSIsInJvbGUiOiJDVVNUT01FUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcxNDY1MDU5MiwiZXhwIjoxNzE0NjY0OTkyfQ.xz39VhxlwMP_vs1Z1PP3mn7Ku7ESwOKS6CeAxcR6v1E', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJzdWJoYW0ga3VtYXIgamVuYSIsInVzZXJuYW1lIjoic3ViaGFtLmtqQGp1cnlzb2Z0LmNvbSIsInJvbGUiOiJDVVNUT01FUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcxNDY1MDU5MiwiZXhwIjoxNzQ2MjA4MTkyfQ.99kLWLfXodya9X4hioESL4AyJ68_KNhZIHkaMAkcbDs', NULL, '2024-03-26 17:10:44', '2024-05-02 11:49:52', NULL),
(2, 'Subham', NULL, NULL, 'jenasubham715@gmail.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-03-28 05:33:55', '2024-03-28 05:33:55', '2024-03-28 05:36:37'),
(3, 'Subham', NULL, NULL, 'jenasubham715@gmail.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-03-28 05:36:37', '2024-03-28 05:36:37', '2024-03-28 05:37:14'),
(4, 'Subham', NULL, NULL, 'jenasubham715@gmail.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-03-28 05:37:14', '2024-03-28 05:37:14', '2024-03-28 05:38:16'),
(5, 'Subham', NULL, NULL, 'jenasubham715@gmail.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, NULL, NULL, '2024-03-28 05:38:16', '2024-03-28 05:38:16', NULL),
(6, 'Subham', NULL, NULL, 'subhamjena0001@gmail.com', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZnVsbG5hbWUiOiJTdWJoYW0iLCJ1c2VybmFtZSI6InN1YmhhbWplbmEwMDAxQGdtYWlsLmNvbSIsInJvbGUiOiJDVVNUT01FUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcxMTYwNDYwNiwiZXhwIjoxNzExNjE5MDA2fQ.RHl7EUd3HM37KwMzwCx9piDmXMXWQzepXvx-K5fXvHc', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZnVsbG5hbWUiOiJTdWJoYW0iLCJ1c2VybmFtZSI6InN1YmhhbWplbmEwMDAxQGdtYWlsLmNvbSIsInJvbGUiOiJDVVNUT01FUiIsImFwcGxpY2F0aW9uIjoia2FyZGlmeSIsImlhdCI6MTcxMTYwNDYwNiwiZXhwIjoxNzQzMTYyMjA2fQ.Ub5XhxS-Ki2orK-Zwck6Y9tEr45W3uhcoOalWtVCHt4', NULL, '2024-03-28 05:42:57', '2024-03-28 05:43:26', NULL),
(7, 'Subham', NULL, NULL, 'subhamdaddu007@gmail.com', 'subhamdaddu007@gmail.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 1, NULL, NULL, NULL, '2024-03-28 06:00:47', '2024-03-28 06:01:09', NULL);

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
(1, 1, 1, 1, 'Subham', 'Subham', 'Jena', NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'subham.kj@jurysoft.com', 'subham.kj@jurysoft.com', '8249229465', NULL, 'Jurysoft', 'Jurysoft', 'Rr nagar', 'Bengaluru', 'Karnataka', 'India', '560098', 'Rr nagar', NULL, NULL, NULL, NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJTdWJoYW0iLCJ1c2VybmFtZSI6InN1YmhhbS5rakBqdXJ5c29mdC5jb20iLCJyb2xlIjoiREVBTEVSIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzExNjA4NTM1LCJleHAiOjE3MTE2MjI5MzV9._oGtNxPACUtG4VACEDtWpE-Gd_H_jsDqx8isNxJQONE', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbG5hbWUiOiJTdWJoYW0iLCJ1c2VybmFtZSI6InN1YmhhbS5rakBqdXJ5c29mdC5jb20iLCJyb2xlIjoiREVBTEVSIiwiYXBwbGljYXRpb24iOiJrYXJkaWZ5IiwiaWF0IjoxNzExNjA4NTM1LCJleHAiOjE3NDMxNjYxMzV9.vAcmYT6N_lvWyPuX8Ty03R4mSiVNYs9z3W1vZyYJfOY', NULL, '2024-03-28 06:40:48', '2024-03-28 06:48:55', NULL);

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
  `image` varchar(255) DEFAULT NULL,
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

INSERT INTO `discounts` (`id`, `discount_name`, `image`, `product_brand_id`, `category_id`, `sub_category_id`, `super_sub_category_id`, `product_id`, `discount_type`, `discount`, `min_amount`, `max_amount`, `start_date`, `expiry_date`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Test Offer', '/uploads/offers/1713420913397.jpg', NULL, NULL, NULL, NULL, NULL, 'amount', 122, 0, 0, '2024-04-18 00:00:00', '2024-04-19 00:00:00', 1, '2024-04-18 06:15:13', '2024-04-18 06:44:14', '2024-04-18 06:44:14'),
(2, 'Wheel Offer', '/uploads/offers/1713420979178.png', NULL, NULL, NULL, NULL, NULL, 'amount', 212, 0, 0, '2024-04-18 00:00:00', '2024-04-19 00:00:00', 1, '2024-04-18 06:16:19', '2024-04-18 06:44:11', '2024-04-18 06:44:11'),
(3, 'Wheel Offers', '/uploads/offers/1713421198377.jpg', NULL, NULL, NULL, NULL, NULL, 'amount', 122, 0, 0, '2024-04-18 00:00:00', '2024-04-19 00:00:00', 1, '2024-04-18 06:19:58', '2024-04-18 06:44:09', '2024-04-18 06:44:09'),
(4, 'subham ej na', '/uploads/offers/1713422437538.jpg', NULL, 2, 2, NULL, NULL, 'amount', 133, 0, 0, '2024-04-18 00:00:00', '2024-04-19 00:00:00', 1, '2024-04-18 06:40:37', '2024-04-18 06:44:08', '2024-04-18 06:44:08'),
(5, 'Test Offer', '/uploads/offers/1713422694870.jpg', NULL, 2, NULL, NULL, NULL, 'amount', 144, 0, 0, '2024-04-18 00:00:00', '2024-04-19 00:00:00', 1, '2024-04-18 06:44:54', '2024-04-18 07:11:00', NULL),
(6, 'Test Offer12', '/uploads/offers/1713423307070.jpg', NULL, NULL, NULL, NULL, NULL, 'amount', 200, 0, 0, '2024-04-18 00:00:00', '2024-04-19 00:00:00', 1, '2024-04-18 06:55:07', '2024-04-18 07:24:02', NULL),
(7, 'Test Offer subham', '/uploads/offers/1713424309599.jpg', 2, NULL, NULL, NULL, NULL, 'amount', 212, 0, 0, '2024-04-18 00:00:00', '2024-04-19 00:00:00', 0, '2024-04-18 07:11:49', '2024-04-18 07:23:23', NULL);

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
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `offer_name` varchar(999) DEFAULT NULL,
  `offer_type` varchar(255) DEFAULT NULL,
  `product_brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `super_sub_category_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers_product_associations`
--

CREATE TABLE `offers_product_associations` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL
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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `user_type`, `dealer_id`, `user_address_id`, `delivery_type_id`, `order_status_id`, `order_date`, `order_accepted_date`, `accepted`, `rejected_reason`, `payment_ref_id`, `shipping_link`, `shipping_id`, `coupon_id`, `total_discount_amount`, `total_paid_amount`, `total_gst_amount`, `total_shipping_amount`, `total_product_amount`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'kardify-1', NULL, 'DEALER', 1, 0, 1, 1, NULL, NULL, NULL, NULL, 'qdasda', NULL, NULL, 0, NULL, 123123, NULL, 0, 12312, '2024-03-28 07:37:20', '2024-03-28 07:37:20', NULL),
(2, 'kardify-2', NULL, 'DEALER', 1, NULL, 2, 1, NULL, NULL, NULL, NULL, 'pay_NrhIGBEmqYygcG', NULL, NULL, NULL, NULL, 14469.84, NULL, 0, 11846.93, '2024-03-28 07:44:51', '2024-03-28 07:44:51', NULL),
(3, 'kardify-3', NULL, 'DEALER', 1, NULL, 2, 1, NULL, NULL, NULL, NULL, 'pay_NrhkBIAiTLZ4rY', NULL, NULL, NULL, NULL, 14361.73, NULL, 0, 11749.76, '2024-03-28 08:11:17', '2024-03-28 08:11:17', NULL),
(4, 'kardify-4', 1, 'CUSTOMER', NULL, 1, 2, 1, NULL, NULL, NULL, NULL, 'pay_NrjcEVxpCGVOfo', NULL, NULL, NULL, NULL, 1215, NULL, 0, 1130.23, '2024-03-28 10:01:09', '2024-03-28 10:01:09', NULL),
(5, 'kardify-5', 1, 'CUSTOMER', NULL, 5, 2, 5, NULL, '2024-03-28 11:05:39', 1, NULL, 'pay_NrkhWhHGyECxWu', NULL, NULL, NULL, NULL, 1083.17, NULL, 0, 967.12, '2024-03-28 11:04:51', '2024-03-28 11:06:26', NULL),
(10, 'kardify-10', 1, 'CUSTOMER', NULL, 6, 2, 1, NULL, NULL, NULL, NULL, 'pay_Nx1G6uzzjHMgaH', NULL, NULL, NULL, NULL, 6486.37, NULL, 53.1, 487, '2024-04-10 18:31:44', '2024-04-10 18:31:44', NULL);

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
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 07:37:20', '2024-03-28 07:37:20', NULL),
(2, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 07:44:51', '2024-03-28 07:44:51', NULL),
(3, 2, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 07:44:51', '2024-03-28 07:44:51', NULL),
(4, 2, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 07:44:51', '2024-03-28 07:44:51', NULL),
(5, 3, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 08:11:17', '2024-03-28 08:11:17', NULL),
(6, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 08:11:17', '2024-03-28 08:11:17', NULL),
(7, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 10:01:09', '2024-03-28 10:01:09', NULL),
(8, 4, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 10:01:09', '2024-03-28 10:01:09', NULL),
(9, 5, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-03-28 11:04:51', '2024-03-28 11:04:51', NULL),
(10, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-04-10 18:31:44', '2024-04-10 18:31:44', NULL);

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

--
-- Dumping data for table `order_status_logs`
--

INSERT INTO `order_status_logs` (`id`, `order_id`, `order_status_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 1, '2024-03-28 07:37:20', '2024-03-28 07:37:20', NULL),
(2, 2, 1, '2024-03-28 07:44:51', '2024-03-28 07:44:51', NULL),
(3, 3, 1, '2024-03-28 08:11:17', '2024-03-28 08:11:17', NULL),
(4, 4, 1, '2024-03-28 10:01:09', '2024-03-28 10:01:09', NULL),
(5, 5, 1, '2024-03-28 11:04:51', '2024-03-28 11:04:51', NULL),
(6, 5, 2, '2024-03-28 11:05:39', '2024-03-28 11:05:39', NULL),
(7, 5, 2, '2024-03-28 11:05:48', '2024-03-28 11:05:48', NULL),
(8, 5, 3, '2024-03-28 11:06:04', '2024-03-28 11:06:04', NULL),
(9, 5, 4, '2024-03-28 11:06:26', '2024-03-28 11:06:26', NULL),
(10, 10, 1, '2024-04-10 18:31:44', '2024-04-10 18:31:44', NULL);

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
(29, NULL, 2, '4711', '2024-03-22 10:36:13', '2024-03-22 10:36:13', '2024-03-22 10:37:04'),
(30, 1, NULL, '4172', '2024-03-26 17:10:44', '2024-03-26 17:10:44', '2024-03-26 17:11:25'),
(31, 2, NULL, '4841', '2024-03-28 05:33:55', '2024-03-28 05:33:55', '2024-03-28 05:35:55'),
(32, 3, NULL, '9010', '2024-03-28 05:36:37', '2024-03-28 05:36:37', '2024-03-28 05:38:37'),
(33, 4, NULL, '8533', '2024-03-28 05:37:14', '2024-03-28 05:37:14', '2024-03-28 05:39:14'),
(34, 5, NULL, '2542', '2024-03-28 05:38:16', '2024-03-28 05:38:16', '2024-03-28 05:40:16'),
(35, 6, NULL, '1618', '2024-03-28 05:42:57', '2024-03-28 05:42:57', '2024-03-28 05:43:15'),
(36, 7, NULL, '7237', '2024-03-28 06:00:47', '2024-03-28 06:00:47', '2024-03-28 06:01:09'),
(37, NULL, 1, '6472', '2024-03-28 06:40:48', '2024-03-28 06:40:48', '2024-03-28 06:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(99) DEFAULT NULL,
  `product_desc` varchar(2000) DEFAULT NULL,
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
  `is_offer_avl` tinyint(1) DEFAULT NULL,
  `offer_discount` double DEFAULT NULL,
  `offer_discount_type` varchar(255) DEFAULT NULL,
  `offer_start_date` datetime DEFAULT NULL,
  `offer_end_date` datetime DEFAULT NULL,
  `tax_type` varchar(99) DEFAULT NULL,
  `tax_rate` double DEFAULT NULL,
  `product_type` varchar(99) DEFAULT NULL,
  `car_brand_id` int(11) DEFAULT NULL,
  `car_model_id` int(11) DEFAULT NULL,
  `start_year` int(11) DEFAULT NULL,
  `end_year` int(11) DEFAULT NULL,
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

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_desc`, `product_brand_id`, `category_id`, `sub_category_id`, `super_sub_category_id`, `minimum_order`, `default_price`, `stock`, `status`, `discount_type`, `discount`, `is_offer_avl`, `offer_discount`, `offer_discount_type`, `offer_start_date`, `offer_end_date`, `tax_type`, `tax_rate`, `product_type`, `car_brand_id`, `car_model_id`, `start_year`, `end_year`, `has_exchange_policy`, `exchange_policy`, `has_cancellation_policy`, `cancellation_policy`, `quantity`, `has_warranty`, `warranty`, `weight`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Shop by car testing product', '<p>asdas</p><p>asd</p><p>as</p><p>d</p><p>asd</p><p>as</p><p>d</p><p>asd</p>', 1, 2, 2, NULL, NULL, 1099, 12, 1, 'percent', 12, NULL, NULL, NULL, NULL, NULL, 'percent', 12, 'general', NULL, NULL, NULL, NULL, NULL, 'asdasd', NULL, 'asd', NULL, NULL, NULL, NULL, '2024-04-26 08:28:11', '2024-04-30 11:51:17', '2024-04-30 11:51:17'),
(2, 'testing product', '<p>asdasd</p><p>asd</p><p>as</p><p>d</p><p>asd</p><p>a</p><p><br></p><p>sd</p>', 1, 2, 2, NULL, NULL, 1000, 23, 1, 'percent', 10, NULL, NULL, NULL, NULL, NULL, 'percent', 12, 'general', NULL, NULL, NULL, NULL, NULL, 'asdasd', NULL, 'asd', NULL, NULL, NULL, NULL, '2024-04-26 08:33:27', '2024-04-30 11:51:15', '2024-04-30 11:51:15'),
(3, 'janksjdnka', '<p>jhasdkla</p><p>da</p><p>da</p><p>sdsdf</p><p><br></p><p>sdf</p>', 1, 2, 2, NULL, NULL, 1099, 12, 1, 'percent', 6, NULL, NULL, NULL, NULL, NULL, 'percent', 12, 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-27 05:07:10', '2024-04-30 11:51:12', '2024-04-30 11:51:12'),
(4, 'Shop by car testing productbn', '<p>asdasd</p>', 1, 2, 2, NULL, NULL, 1000, 21, 1, 'percent', 21, NULL, NULL, NULL, NULL, NULL, 'percent', 3, 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hvbjn', NULL, NULL, NULL, NULL, '2024-04-27 05:32:30', '2024-04-30 11:51:10', '2024-04-30 11:51:10'),
(5, 'adsasda', '<p>asdasda</p><p><br></p><p>as</p><p>d</p><p>as</p><p>d</p><p>asd</p><p>a</p><p>sd</p>', 2, 2, 2, NULL, NULL, 1099, 12, 1, 'amount', 212, NULL, NULL, NULL, NULL, NULL, 'percent', 21, 'general', NULL, NULL, NULL, NULL, NULL, 'asd', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-27 05:37:38', '2024-04-30 11:51:07', '2024-04-30 11:51:07'),
(6, 'asd', '<p>asdas</p><p><br></p><p>asd</p><p>a</p><p>sda</p><p>d</p><p>asd</p>', 2, 2, 2, NULL, NULL, 123123, 12, 1, 'percent', 12, NULL, NULL, NULL, NULL, NULL, 'percent', 12, 'general', NULL, NULL, NULL, NULL, NULL, 'asdas', NULL, 'asd', NULL, NULL, NULL, NULL, '2024-04-27 05:53:41', '2024-04-30 11:51:05', '2024-04-30 11:51:05'),
(7, 'asdasasdas', '<p>adasdas</p><p>da</p><p>sd</p><p>asd</p><p>asdas</p>', 1, 2, 2, NULL, NULL, 1223, 2, 1, 'percent', 21, NULL, NULL, NULL, NULL, NULL, 'percent', 21, 'general', NULL, NULL, NULL, NULL, NULL, 'asd', NULL, 'asd', NULL, NULL, NULL, NULL, '2024-04-27 05:55:33', '2024-04-30 11:51:03', '2024-04-30 11:51:03'),
(8, 'dasdasd', '<p>asdasd</p>', 1, 2, 2, NULL, NULL, 1099, 12, 1, 'percent', 12, NULL, NULL, NULL, NULL, NULL, 'percent', 12, 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-30 11:34:15', '2024-04-30 11:51:00', '2024-04-30 11:51:00'),
(9, 'Shop by car testing productasd', '<p>asdasd</p>', 2, 2, 2, NULL, NULL, 1099, 12, 1, 'percent', 3, NULL, NULL, NULL, NULL, NULL, 'percent', 7, 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-30 11:39:44', '2024-04-30 11:50:58', '2024-04-30 11:50:58'),
(10, 'Shop by car testing product', '<p>asdas</p><p>das</p><p>d</p><p>as</p><p>d</p><p>as</p><p>d</p><p>asd</p>', NULL, 2, 2, NULL, NULL, 1000, 32, 1, 'percent', 12, NULL, NULL, NULL, NULL, NULL, 'percent', 21, 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-30 11:59:12', '2024-04-30 11:59:12', NULL),
(11, 'asdasd', '<p>asdas</p><p>das</p><p>d</p><p>as</p><p>dasd</p>', 2, 1, 3, 3, NULL, 1099, 32, 1, 'percent', 12, NULL, NULL, NULL, NULL, NULL, 'percent', 12, 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-02 11:48:47', '2024-05-02 11:48:47', NULL),
(12, 'subham', '<p>asdasdasd</p>', 1, 2, 2, NULL, 12, 1231, 23, 1, 'percent', 12, NULL, NULL, NULL, NULL, NULL, 'percent', 21, 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-02 12:01:00', '2024-05-02 12:01:00', NULL),
(13, 'asdasdasd', '<p>asdasd</p>', 2, 3, NULL, NULL, 12, 123, 23, 1, 'percent', 3, NULL, NULL, NULL, NULL, NULL, 'percent', 7, 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.5, '2024-05-02 12:03:28', '2024-05-02 12:03:28', NULL),
(14, 'subham jenafghjk', '<p>asjhkdlasd</p><p>asd</p><p>a</p><p>sd</p><p>as</p><p>d</p><p>asd</p><p>asd</p>', 1, 2, 2, NULL, 12, 1099, 12, 1, 'percent', 12, NULL, NULL, NULL, NULL, NULL, 'percent', 12, 'general', NULL, NULL, NULL, NULL, NULL, 'null', NULL, 'null', NULL, NULL, 'null', 0.6, '2024-05-02 12:33:19', '2024-05-11 06:32:55', NULL),
(15, 'Vehicle Selection product', '', 2, 2, 2, NULL, 12, 1099, 12, 1, 'percent', 12, NULL, NULL, NULL, NULL, NULL, 'percent', 12, 'vehicle selection', 2, 1, 2002, 2004, NULL, 'qweqwe', NULL, 'qweq', 12, NULL, '12', 0.6, '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(16, 'Vehicle Selection product1', '<p>ajksld;a</p><p>sda</p><p>sd</p><p>a</p><p>ds</p><p>asd</p><p>a</p>', 1, 2, 2, NULL, NULL, 1099, 12, 1, 'percent', 10, NULL, NULL, NULL, NULL, NULL, 'percent', 7, 'general', 2, 1, 2001, 2003, NULL, 'asd', NULL, 'asdas', 12, NULL, '12', 0.5, '2024-05-11 07:08:25', '2024-05-11 07:10:55', NULL),
(17, 'subham jena sas', 'asdnkasdnasnd', NULL, 2, 3, 2, NULL, 12345, 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 07:42:42', '2024-05-11 07:42:42', NULL),
(18, 'asdas', 'asdas', NULL, 2, 2, 1, NULL, 212, 32, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 11:22:29', '2024-05-11 12:55:25', '2024-05-11 12:55:25'),
(19, 'asdas', 'asdasd', NULL, 2, 2, 1, NULL, 121, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 11:22:29', '2024-05-11 12:55:28', '2024-05-11 12:55:28'),
(20, 'debu', 'asdas', NULL, 2, 2, 1, NULL, 212, 32, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 11:25:59', '2024-05-11 11:28:07', '2024-05-11 11:28:07'),
(21, 'subu', 'asdasd', NULL, 2, 2, 1, NULL, 121, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 11:25:59', '2024-05-11 11:28:09', '2024-05-11 11:28:09'),
(22, 'debu', 'asdas', NULL, 2, 2, 1, NULL, 212, 32, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 11:28:27', '2024-05-11 11:51:13', '2024-05-11 11:51:13'),
(23, 'subu', 'asdasd', NULL, 2, 2, 1, NULL, 121, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 11:28:27', '2024-05-11 11:51:16', '2024-05-11 11:51:16'),
(24, 'debu', 'asdas', NULL, 2, 2, 1, NULL, 212, 32, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 12:02:11', '2024-05-11 12:14:02', '2024-05-11 12:14:02'),
(25, 'subu', 'asdasd', NULL, 2, 2, 1, NULL, 121, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 12:02:11', '2024-05-11 12:14:06', '2024-05-11 12:14:06'),
(26, 'debu', 'asdas', NULL, 2, 2, 1, NULL, 212, 32, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 12:14:25', '2024-05-11 12:55:20', '2024-05-11 12:55:20'),
(27, 'subu', 'asdasd', NULL, 2, 2, 1, NULL, 121, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 12:14:25', '2024-05-11 12:55:22', '2024-05-11 12:55:22');

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
(1, 'Size', 1, '2024-03-26 10:05:40', '2024-04-01 18:06:48', NULL),
(2, 'Colour', 1, '2024-03-26 10:05:45', '2024-04-21 07:02:49', NULL),
(3, 'Height', 1, '2024-04-21 07:02:26', '2024-04-21 07:02:50', NULL),
(4, 'asd', 1, '2024-05-11 10:54:17', '2024-05-11 10:54:23', '2024-05-11 10:54:23');

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
(1, 'Red-S', 299, 12, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(2, 'Red-M', 489, 23, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(3, 'Red-L', 599, 46, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(4, 'White-S', 399, 36, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(5, 'White-M', 799, 45, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(6, 'White-L', 999, 23, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(7, 'Blue-S', 599, 54, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(8, 'Blue-M', 266, 56, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(9, 'Blue-L', 999, 45, 1, '2024-03-26 10:11:09', '2024-03-26 10:11:09', NULL),
(10, 'L', 200, 12, 12, '2024-03-27 12:25:57', '2024-03-27 12:25:57', NULL),
(11, 'M', 499, 21, 12, '2024-03-27 12:25:57', '2024-03-27 12:25:57', NULL),
(12, 'L', 200, 12, 13, '2024-03-27 12:26:54', '2024-03-27 12:26:54', NULL),
(13, 'M', 499, 21, 13, '2024-03-27 12:26:54', '2024-03-27 12:26:54', NULL),
(14, 'Red', 200, 12, 14, '2024-03-27 12:29:05', '2024-03-27 12:29:05', NULL),
(15, 'Blue', 400, 12, 14, '2024-03-27 12:29:05', '2024-03-27 12:29:05', NULL),
(16, 'Red', 2332, 23, 15, '2024-03-27 12:32:28', '2024-03-27 12:32:28', NULL),
(17, 'Blue', 2323, 23, 15, '2024-03-27 12:32:28', '2024-03-27 12:32:28', NULL),
(18, 'Red', 12332, 123, 16, '2024-03-27 12:35:36', '2024-03-27 12:35:36', NULL),
(19, 'Blue', 12, 12, 16, '2024-03-27 12:35:36', '2024-03-27 12:35:36', NULL),
(20, 'l-m', 200, 123, 17, '2024-03-27 12:36:50', '2024-03-27 12:36:50', NULL),
(21, 'S-Blue', 100, 12, 15, '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(22, 'M-Blue', 300, 12, 15, '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(23, 'L-Blue', 400, 12, 15, '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL),
(24, 'L-Blue', 400, 12, 16, '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(25, 'L-Red', 123, 32, 16, '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(26, 'M-Blue', 300, 12, 16, '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL),
(27, 'M-Red', 1232, 12, 16, '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL);

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
(1, 'Lenso', '/uploads/productbrands/1711447588059.png', 1, '2024-03-26 10:06:28', '2024-04-01 18:06:55', NULL),
(2, 'Lenso Wheels', '/uploads/productbrands/1711539530846.png', 1, '2024-03-27 11:38:50', '2024-04-01 18:06:54', NULL);

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
(1, 1, 3, '2024-04-18 06:15:13', '2024-04-18 06:15:13', NULL),
(2, 2, 5, '2024-04-18 06:16:19', '2024-04-18 06:16:19', NULL),
(3, 3, 4, '2024-04-18 06:19:58', '2024-04-18 06:19:58', NULL),
(4, 3, 3, '2024-04-18 06:19:58', '2024-04-18 06:19:58', NULL),
(5, 3, 5, '2024-04-18 06:19:58', '2024-04-18 06:19:58', NULL),
(6, 4, 5, '2024-04-18 06:40:37', '2024-04-18 06:40:37', NULL),
(7, 5, 5, '2024-04-18 06:44:54', '2024-04-18 06:44:54', NULL),
(8, 6, 4, '2024-04-18 06:55:07', '2024-04-18 06:55:07', NULL),
(9, 6, 3, '2024-04-18 06:55:07', '2024-04-18 06:55:07', NULL),
(10, 6, 2, '2024-04-18 06:55:07', '2024-04-18 06:55:07', NULL);

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
(1, 1, '/uploads/products/1714120091208.png', '2024-04-26 08:28:11', '2024-04-26 08:28:11', NULL, 1),
(2, 1, '/uploads/products/1714120091210.png', '2024-04-26 08:28:11', '2024-04-26 08:28:11', NULL, 1),
(3, 1, '/uploads/products/1714120091215.png', '2024-04-26 08:28:11', '2024-04-26 08:28:11', NULL, 1),
(4, 1, '/uploads/products/1714120091218.jpg', '2024-04-26 08:28:11', '2024-04-26 08:28:11', NULL, 1),
(5, 1, '/uploads/products/1714120091219.jpg', '2024-04-26 08:28:11', '2024-04-26 08:28:11', NULL, 1),
(6, 2, '/uploads/products/1714120407906.jpg', '2024-04-26 08:33:27', '2024-04-26 08:33:27', NULL, 1),
(7, 2, '/uploads/products/1714120407908.jpg', '2024-04-26 08:33:27', '2024-04-26 08:33:27', NULL, 1),
(8, 2, '/uploads/products/1714120407908.png', '2024-04-26 08:33:27', '2024-04-26 08:33:27', NULL, 1),
(9, 2, '/uploads/products/1714120407912.jpg', '2024-04-26 08:33:27', '2024-04-26 08:33:27', NULL, 1),
(10, 3, '/uploads/products/1714194430187.jpg', '2024-04-27 05:07:10', '2024-04-27 05:07:10', NULL, 1),
(11, 3, '/uploads/products/1714194430189.jpg', '2024-04-27 05:07:10', '2024-04-27 05:07:10', NULL, 1),
(12, 3, '/uploads/products/1714194430190.png', '2024-04-27 05:07:10', '2024-04-27 05:07:10', NULL, 1),
(13, 3, '/uploads/products/1714194430190.jpg', '2024-04-27 05:07:10', '2024-04-27 05:07:10', NULL, 1),
(14, 3, '/uploads/products/1714194430190.jpg', '2024-04-27 05:07:10', '2024-04-27 05:07:10', NULL, 1),
(15, 3, '/uploads/products/1714194430191.png', '2024-04-27 05:07:10', '2024-04-27 05:07:10', NULL, 1),
(16, 3, '/uploads/products/1714194430192.jpg', '2024-04-27 05:07:10', '2024-04-27 05:07:10', NULL, 1),
(17, 4, '/uploads/products/1714195950075.jpg', '2024-04-27 05:32:30', '2024-04-27 05:32:30', NULL, 1),
(18, 4, '/uploads/products/1714195950080.jpg', '2024-04-27 05:32:30', '2024-04-27 05:32:30', NULL, 1),
(19, 4, '/uploads/products/1714195950084.png', '2024-04-27 05:32:30', '2024-04-27 05:32:30', NULL, 1),
(20, 4, '/uploads/products/1714195950088.jpg', '2024-04-27 05:32:30', '2024-04-27 05:32:30', NULL, 1),
(21, 4, '/uploads/products/1714195950090.jpg', '2024-04-27 05:32:30', '2024-04-27 05:32:30', NULL, 1),
(22, 4, '/uploads/products/1714195950091.jpg', '2024-04-27 05:32:30', '2024-04-27 05:32:30', NULL, 1),
(23, 5, '/uploads/products/1714196258562.png', '2024-04-27 05:37:38', '2024-04-27 05:37:38', NULL, 1),
(24, 5, '/uploads/products/1714196258564.png', '2024-04-27 05:37:38', '2024-04-27 05:37:38', NULL, 1),
(25, 5, '/uploads/products/1714196258565.png', '2024-04-27 05:37:38', '2024-04-27 05:37:38', NULL, 1),
(26, 5, '/uploads/products/1714196258567.png', '2024-04-27 05:37:38', '2024-04-27 05:37:38', NULL, 1),
(27, 5, '/uploads/products/1714196258569.png', '2024-04-27 05:37:38', '2024-04-27 05:37:38', NULL, 1),
(28, 5, '/uploads/products/1714196258571.png', '2024-04-27 05:37:38', '2024-04-27 05:37:38', NULL, 1),
(29, 6, '/uploads/products/1714197221909.png', '2024-04-27 05:53:41', '2024-04-27 05:53:41', NULL, 1),
(30, 6, '/uploads/products/1714197221914.png', '2024-04-27 05:53:41', '2024-04-27 05:53:41', NULL, 1),
(31, 6, '/uploads/products/1714197221916.png', '2024-04-27 05:53:41', '2024-04-27 05:53:41', NULL, 1),
(32, 6, '/uploads/products/1714197221918.png', '2024-04-27 05:53:41', '2024-04-27 05:53:41', NULL, 1),
(33, 6, '/uploads/products/1714197221920.png', '2024-04-27 05:53:41', '2024-04-27 05:53:41', NULL, 1),
(34, 7, '/uploads/products/1714197333115.png', '2024-04-27 05:55:33', '2024-04-27 05:55:33', NULL, 1),
(35, 7, '/uploads/products/1714197333118.png', '2024-04-27 05:55:33', '2024-04-27 05:55:33', NULL, 1),
(36, 7, '/uploads/products/1714197333119.jpg', '2024-04-27 05:55:33', '2024-04-27 05:55:33', NULL, 1),
(37, 7, '/uploads/products/1714197333121.png', '2024-04-27 05:55:33', '2024-04-27 05:55:33', NULL, 1),
(38, 7, '/uploads/products/1714197333125.png', '2024-04-27 05:55:33', '2024-04-27 05:55:33', NULL, 1),
(39, 7, '/uploads/products/1714197333129.png', '2024-04-27 05:55:33', '2024-04-27 05:55:33', NULL, 1),
(40, 7, '/uploads/products/1714197333133.png', '2024-04-27 05:55:33', '2024-04-27 05:55:33', NULL, 1),
(41, 7, '/uploads/products/1714197333139.png', '2024-04-27 05:55:33', '2024-04-27 05:55:33', NULL, 1),
(42, 8, '/uploads/products/1714476855598.png', '2024-04-30 11:34:15', '2024-04-30 11:34:15', NULL, 1),
(43, 8, '/uploads/products/1714476855599.png', '2024-04-30 11:34:15', '2024-04-30 11:34:15', NULL, 1),
(44, 8, '/uploads/products/1714476855600.png', '2024-04-30 11:34:15', '2024-04-30 11:34:15', NULL, 1),
(45, 8, '/uploads/products/1714476855600.jpg', '2024-04-30 11:34:15', '2024-04-30 11:34:15', NULL, 1),
(46, 8, '/uploads/products/1714476855601.png', '2024-04-30 11:34:15', '2024-04-30 11:34:15', NULL, 1),
(47, 8, '/uploads/products/1714476855602.png', '2024-04-30 11:34:15', '2024-04-30 11:34:15', NULL, 1),
(48, 9, '/uploads/products/1714477184454.png', '2024-04-30 11:39:44', '2024-04-30 11:39:44', NULL, 1),
(49, 9, '/uploads/products/1714477184462.jpg', '2024-04-30 11:39:44', '2024-04-30 11:39:44', NULL, 1),
(50, 9, '/uploads/products/1714477184467.png', '2024-04-30 11:39:44', '2024-04-30 11:39:44', NULL, 1),
(51, 9, '/uploads/products/1714477184469.png', '2024-04-30 11:39:44', '2024-04-30 11:39:44', NULL, 1),
(52, 9, '/uploads/products/1714477184470.png', '2024-04-30 11:39:44', '2024-04-30 11:39:44', NULL, 1),
(53, 10, '/uploads/products/1714478352542.png', '2024-04-30 11:59:12', '2024-04-30 11:59:12', NULL, 1),
(54, 10, '/uploads/products/1714478352545.png', '2024-04-30 11:59:12', '2024-04-30 11:59:12', NULL, 1),
(55, 10, '/uploads/products/1714478352547.png', '2024-04-30 11:59:12', '2024-04-30 11:59:12', NULL, 1),
(56, 10, '/uploads/products/1714478352549.jpg', '2024-04-30 11:59:12', '2024-04-30 11:59:12', NULL, 1),
(57, 10, '/uploads/products/1714478352554.png', '2024-04-30 11:59:12', '2024-04-30 11:59:12', NULL, 1),
(58, 10, '/uploads/products/1714478352556.png', '2024-04-30 11:59:12', '2024-04-30 11:59:12', NULL, 1),
(59, 11, '/uploads/products/1714650527054.png', '2024-05-02 11:48:47', '2024-05-02 11:48:47', NULL, 1),
(60, 11, '/uploads/products/1714650527066.png', '2024-05-02 11:48:47', '2024-05-02 11:48:47', NULL, 1),
(61, 11, '/uploads/products/1714650527080.png', '2024-05-02 11:48:47', '2024-05-02 11:48:47', NULL, 1),
(62, 11, '/uploads/products/1714650527091.png', '2024-05-02 11:48:47', '2024-05-02 11:48:47', NULL, 1),
(63, 11, '/uploads/products/1714650527105.png', '2024-05-02 11:48:47', '2024-05-02 11:48:47', NULL, 1),
(64, 12, '/uploads/products/1714651260742.png', '2024-05-02 12:01:00', '2024-05-02 12:01:00', NULL, 1),
(65, 12, '/uploads/products/1714651260754.png', '2024-05-02 12:01:00', '2024-05-02 12:01:00', NULL, 1),
(66, 12, '/uploads/products/1714651260769.png', '2024-05-02 12:01:00', '2024-05-02 12:01:00', NULL, 1),
(67, 12, '/uploads/products/1714651260783.png', '2024-05-02 12:01:00', '2024-05-02 12:01:00', NULL, 1),
(68, 12, '/uploads/products/1714651260796.png', '2024-05-02 12:01:00', '2024-05-02 12:01:00', NULL, 1),
(69, 13, '/uploads/products/1714651408183.png', '2024-05-02 12:03:28', '2024-05-02 12:03:28', NULL, 1),
(70, 13, '/uploads/products/1714651408201.png', '2024-05-02 12:03:28', '2024-05-02 12:03:28', NULL, 1),
(71, 13, '/uploads/products/1714651408213.png', '2024-05-02 12:03:28', '2024-05-02 12:03:28', NULL, 1),
(72, 14, '/uploads/products/1714653199598.png', '2024-05-02 12:33:19', '2024-05-02 12:33:19', NULL, 1),
(73, 14, '/uploads/products/1714653199610.png', '2024-05-02 12:33:19', '2024-05-02 12:33:19', NULL, 1),
(74, 14, '/uploads/products/1714653199623.png', '2024-05-02 12:33:19', '2024-05-02 12:33:19', NULL, 1),
(75, 14, '/uploads/products/1714653199635.png', '2024-05-02 12:33:19', '2024-05-02 12:33:19', NULL, 1),
(76, 14, '/uploads/products/1714653199651.png', '2024-05-02 12:33:19', '2024-05-02 12:33:19', NULL, 1),
(77, 15, '/uploads/products/1715411020846.png', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL, 1),
(78, 15, '/uploads/products/1715411020859.png', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL, 1),
(79, 15, '/uploads/products/1715411020871.png', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL, 1),
(80, 15, '/uploads/products/1715411020884.png', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL, 1),
(81, 15, '/uploads/products/1715411020901.png', '2024-05-11 07:03:40', '2024-05-11 07:03:40', NULL, 1),
(82, 16, '/uploads/products/1715411305381.png', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL, 1),
(83, 16, '/uploads/products/1715411305393.png', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL, 1),
(84, 16, '/uploads/products/1715411305405.png', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL, 1),
(85, 16, '/uploads/products/1715411305418.png', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL, 1),
(86, 16, '/uploads/products/1715411305431.png', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL, 1),
(87, 16, '/uploads/products/1715411305444.png', '2024-05-11 07:08:25', '2024-05-11 07:08:25', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `about_us` varchar(2000) DEFAULT NULL,
  `about_status` tinyint(1) DEFAULT NULL,
  `contact_us` varchar(2000) DEFAULT NULL,
  `contact_status` tinyint(1) DEFAULT NULL,
  `privacy_policy` varchar(2000) DEFAULT NULL,
  `privacy_status` tinyint(1) DEFAULT NULL,
  `cancellation_policy` varchar(2000) DEFAULT NULL,
  `cancellation_status` tinyint(1) DEFAULT NULL,
  `refund_policy` varchar(2000) DEFAULT NULL,
  `refund_status` tinyint(1) DEFAULT NULL,
  `return_policy` varchar(2000) DEFAULT NULL,
  `return_status` tinyint(1) DEFAULT NULL,
  `shipping_policy` varchar(2000) DEFAULT NULL,
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

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `customer_id`, `image_url`, `heading`, `description`, `is_approved`, `rejected_reason`, `story_type`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, '/uploads/stories/1711538956035.png', 'jsdhdkl', 'asjhdklas', 1, NULL, 'image', 1, '2024-03-27 11:29:16', '2024-03-27 13:23:23', NULL),
(2, 1, '/uploads/stories/1711538982006.png', 'asjhd', 'asdjhk', 1, NULL, 'image', 1, '2024-03-27 11:29:42', '2024-03-27 13:23:23', NULL),
(3, 1, '/uploads/stories/1711539075900.mp4', 'asd', 'asd', 1, NULL, 'video', 1, '2024-03-27 11:31:15', '2024-03-27 13:23:26', NULL);

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

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `status`, `image_url`, `banner_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 2, 'Accesories', 1, '/uploads/subcategories/1711447231939.jpg', NULL, '2024-03-26 10:00:31', '2024-03-26 10:00:31', NULL),
(2, 2, 'Tail lights', 1, '/uploads/subcategories/1711447284536.jpg', NULL, '2024-03-26 10:01:24', '2024-03-26 10:01:24', NULL),
(3, 1, 'Accesories', 1, '/uploads/subcategories/1711447298387.jpg', NULL, '2024-03-26 10:01:38', '2024-03-26 10:01:38', NULL),
(4, 1, 'Tail lights', 1, '/uploads/subcategories/1711447318936.png', NULL, '2024-03-26 10:01:58', '2024-03-26 10:01:58', NULL),
(5, 5, 'asdasdsad', 1, '/uploads/default/default.png', NULL, '2024-03-30 04:46:51', '2024-03-30 04:46:51', NULL);

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
(1, 1, 3, 'Subham exterior', '/uploads/supersubcategories/1711447492219.jpg', NULL, 1, '2024-03-26 10:04:52', '2024-03-26 10:04:52', NULL),
(2, 2, 1, 'Subham Interior', '/uploads/supersubcategories/1711447505863.png', NULL, 1, '2024-03-26 10:05:05', '2024-03-26 10:05:05', NULL),
(3, 1, 3, '3eqwed', '/uploads/default/default.png', NULL, 1, '2024-03-30 04:49:23', '2024-03-30 04:49:23', NULL);

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
(1, 1, 4, 'Best', 'test', 1, '2024-03-27 11:40:55', '2024-03-27 11:40:55', NULL);

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

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `add_type`, `add1`, `add2`, `city`, `state`, `country`, `area`, `landmark`, `zipcode`, `fullname`, `mobile`, `email`, `lat`, `lng`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 'home', 'Jurysoft', '', 'Bengaluru', 'Karnataka', 'India', 'Rr nagar', 'Rr nagar', NULL, 'Subham', '1234567892', NULL, NULL, NULL, '2024-03-28 10:00:34', '2024-03-28 10:00:34', NULL),
(2, 1, 'office', 'Jurysoft', '', 'Bengaluru', 'Karnataka', 'India', 'Rr nagar', 'Rr nagar', NULL, 'Subham', '1234567893', NULL, NULL, NULL, '2024-03-28 10:14:17', '2024-03-28 10:14:17', NULL),
(3, 1, 'office', 'Jurysoft', '', 'Bengaluru', 'Karnataka', 'India', 'Rr nagar', 'Rr nagar', NULL, 'Subham', '1234567893', NULL, NULL, NULL, '2024-03-28 10:17:02', '2024-03-28 10:17:02', NULL),
(4, 1, 'other', 'Jurysoft', '', 'Bengaluru', 'Karnataka', 'India', 'Rr nagar', 'Rr nagar', NULL, 'Subham', '1234567892', NULL, NULL, NULL, '2024-03-28 10:17:22', '2024-03-28 10:17:22', NULL),
(5, 1, 'other', 'Jurysoft', '', 'Bengaluru', 'Karnataka', 'India', 'RR nagar', 'Rr nagar', NULL, 'Subham', '1234567892', NULL, NULL, NULL, '2024-03-28 10:18:24', '2024-03-28 10:18:24', NULL),
(6, 1, 'office', 'Jurysoft', '', 'Bengaluru', 'Karnataka', 'India', 'feeaszd', 'Rr nagar', '560098', 'Laxmi Narayan', '1234567893', NULL, NULL, NULL, '2024-04-10 18:25:18', '2024-04-10 18:25:18', NULL);

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
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `dealer_id`, `product_id`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, NULL, 1, '2024-03-26 17:12:09', '2024-03-26 17:12:09', '2024-03-26 17:12:14'),
(2, 1, NULL, 1, '2024-03-26 17:12:34', '2024-03-26 17:12:34', '2024-03-26 17:12:40'),
(3, 1, NULL, 1, '2024-03-26 17:18:41', '2024-03-26 17:18:41', '2024-03-26 17:18:43'),
(4, 1, NULL, 1, '2024-04-02 18:08:57', '2024-04-02 18:08:57', '2024-04-11 17:45:26'),
(5, 1, NULL, 2, '2024-04-02 18:08:59', '2024-04-02 18:08:59', '2024-04-11 17:45:25'),
(6, 1, NULL, 2, '2024-04-11 17:45:26', '2024-04-11 17:45:26', '2024-04-11 18:06:12'),
(7, 1, NULL, 1, '2024-04-11 17:45:27', '2024-04-11 17:45:27', '2024-04-11 18:06:13');

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
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_product_associations`
--
ALTER TABLE `offers_product_associations`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner_product_associations`
--
ALTER TABLE `banner_product_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `car_brands`
--
ALTER TABLE `car_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car_lists`
--
ALTER TABLE `car_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_models`
--
ALTER TABLE `car_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_types`
--
ALTER TABLE `delivery_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `installers`
--
ALTER TABLE `installers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers_product_associations`
--
ALTER TABLE `offers_product_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_status_logs`
--
ALTER TABLE `order_status_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_attributes_associations`
--
ALTER TABLE `product_attributes_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_discount_associations`
--
ALTER TABLE `product_discount_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `super_sub_categories`
--
ALTER TABLE `super_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
