-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2023 at 07:00 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hro`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `domain_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A+', 1, 1, NULL, '2023-02-14 07:34:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `domain_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `area_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `grade`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Tyrone Macias', 12, 1, 1, NULL, '2023-02-11 08:29:21', NULL),
(1, 'Tyrone Macias', 12, 1, 1, NULL, '2023-02-11 08:29:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'Bagerhat', 'বাগেরহাট', 1, NULL, NULL, NULL, NULL),
(2, 1, 'Bandarban', 'বান্দরবান', 1, NULL, NULL, NULL, NULL),
(3, 4, 'Barguna', 'বরগুনা', 1, NULL, NULL, NULL, NULL),
(4, 4, 'Barishal', 'বরিশাল', 1, NULL, NULL, NULL, NULL),
(5, 4, 'Bhola', 'ভোলা', 1, NULL, NULL, NULL, NULL),
(6, 2, 'Bogura', 'বগুড়া', 1, NULL, NULL, NULL, NULL),
(7, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, NULL, NULL, NULL, NULL),
(8, 1, 'Chandpur', 'চাঁদপুর', 1, NULL, NULL, NULL, NULL),
(9, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(10, 1, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(11, 3, 'Chuadanga', 'চুয়াডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(12, 1, 'Coxsbazar', 'কক্সবাজার', 1, NULL, NULL, NULL, NULL),
(13, 1, 'Cumilla', 'কুমিল্লা', 1, NULL, NULL, NULL, NULL),
(14, 6, 'Dhaka', 'ঢাকা', 1, NULL, NULL, NULL, NULL),
(15, 7, 'Dinajpur', 'দিনাজপুর', 1, NULL, NULL, NULL, NULL),
(16, 6, 'Faridpur', 'ফরিদপুর', 1, NULL, NULL, NULL, NULL),
(17, 1, 'Feni', 'ফেনী', 1, NULL, NULL, NULL, NULL),
(18, 7, 'Gaibandha', 'গাইবান্ধা', 1, NULL, NULL, NULL, NULL),
(19, 6, 'Gazipur', 'গাজীপুর', 1, NULL, NULL, NULL, NULL),
(20, 6, 'Gopalganj', 'গোপালগঞ্জ', 1, NULL, NULL, NULL, NULL),
(21, 5, 'Habiganj', 'হবিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(22, 8, 'Jamalpur', 'জামালপুর', 1, NULL, NULL, NULL, NULL),
(23, 3, 'Jashore', 'যশোর', 1, NULL, NULL, NULL, NULL),
(24, 4, 'Jhalakathi', 'ঝালকাঠি', 1, NULL, NULL, NULL, NULL),
(25, 3, 'Jhenaidah', 'ঝিনাইদহ', 1, NULL, NULL, NULL, NULL),
(26, 2, 'Joypurhat', 'জয়পুরহাট', 1, NULL, NULL, NULL, NULL),
(27, 1, 'Khagrachhari', 'খাগড়াছড়ি', 1, NULL, NULL, NULL, NULL),
(28, 3, 'Khulna', 'খুলনা', 1, NULL, NULL, NULL, NULL),
(29, 6, 'Kishoreganj', 'কিশোরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(30, 7, 'Kurigram', 'কুড়িগ্রাম', 1, NULL, NULL, NULL, NULL),
(31, 3, 'Kushtia', 'কুষ্টিয়া', 1, NULL, NULL, NULL, NULL),
(32, 1, 'Lakshmipur', 'লক্ষ্মীপুর', 1, NULL, NULL, NULL, NULL),
(33, 7, 'Lalmonirhat', 'লালমনিরহাট', 1, NULL, NULL, NULL, NULL),
(34, 6, 'Madaripur', 'মাদারীপুর', 1, NULL, NULL, NULL, NULL),
(35, 3, 'Magura', 'মাগুরা', 1, NULL, NULL, NULL, NULL),
(36, 6, 'Manikganj', 'মানিকগঞ্জ', 1, NULL, NULL, NULL, NULL),
(37, 3, 'Meherpur', 'মেহেরপুর', 1, NULL, NULL, NULL, NULL),
(38, 5, 'Moulvibazar', 'মৌলভীবাজার', 1, NULL, NULL, NULL, NULL),
(39, 6, 'Munshiganj', 'মুন্সিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(40, 8, 'Mymensingh', 'ময়মনসিংহ', 1, NULL, NULL, NULL, NULL),
(41, 2, 'Naogaon', 'নওগাঁ', 1, NULL, NULL, NULL, NULL),
(42, 3, 'Narail', 'নড়াইল', 1, NULL, NULL, NULL, NULL),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', 1, NULL, NULL, NULL, NULL),
(44, 6, 'Narsingdi', 'নরসিংদী', 1, NULL, NULL, NULL, NULL),
(45, 2, 'Natore', 'নাটোর', 1, NULL, NULL, NULL, NULL),
(46, 8, 'Netrokona', 'নেত্রকোণা', 1, NULL, NULL, NULL, NULL),
(47, 7, 'Nilphamari', 'নীলফামারী', 1, NULL, NULL, NULL, NULL),
(48, 1, 'Noakhali', 'নোয়াখালী', 1, NULL, NULL, NULL, NULL),
(49, 2, 'Pabna', 'পাবনা', 1, NULL, NULL, NULL, NULL),
(50, 7, 'Panchagarh', 'পঞ্চগড়', 1, NULL, NULL, NULL, NULL),
(51, 4, 'Patuakhali', 'পটুয়াখালী', 1, NULL, NULL, NULL, NULL),
(52, 4, 'Pirojpur', 'পিরোজপুর', 1, NULL, NULL, NULL, NULL),
(53, 6, 'Rajbari', 'রাজবাড়ী', 1, NULL, NULL, NULL, NULL),
(54, 2, 'Rajshahi', 'রাজশাহী', 1, NULL, NULL, NULL, NULL),
(55, 1, 'Rangamati', 'রাঙ্গামাটি', 1, NULL, NULL, NULL, NULL),
(56, 7, 'Rangpur', 'রংপুর', 1, NULL, NULL, NULL, NULL),
(57, 3, 'Satkhira', 'সাতক্ষীরা', 1, NULL, NULL, NULL, NULL),
(58, 6, 'Shariatpur', 'শরীয়তপুর', 1, NULL, NULL, NULL, NULL),
(59, 8, 'Sherpur', 'শেরপুর', 1, NULL, NULL, NULL, NULL),
(60, 2, 'Sirajganj', 'সিরাজগঞ্জ', 1, NULL, NULL, NULL, NULL),
(61, 5, 'Sunamganj', 'সুনামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(62, 5, 'Sylhet', 'সিলেট', 1, NULL, NULL, NULL, NULL),
(63, 6, 'Tangail', 'টাঙ্গাইল', 1, NULL, NULL, NULL, NULL),
(64, 7, 'Thakurgaon', 'ঠাকুরগাঁও', 1, NULL, NULL, NULL, NULL),
(1, 3, 'Bagerhat', 'বাগেরহাট', 1, NULL, NULL, NULL, NULL),
(2, 1, 'Bandarban', 'বান্দরবান', 1, NULL, NULL, NULL, NULL),
(3, 4, 'Barguna', 'বরগুনা', 1, NULL, NULL, NULL, NULL),
(4, 4, 'Barishal', 'বরিশাল', 1, NULL, NULL, NULL, NULL),
(5, 4, 'Bhola', 'ভোলা', 1, NULL, NULL, NULL, NULL),
(6, 2, 'Bogura', 'বগুড়া', 1, NULL, NULL, NULL, NULL),
(7, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, NULL, NULL, NULL, NULL),
(8, 1, 'Chandpur', 'চাঁদপুর', 1, NULL, NULL, NULL, NULL),
(9, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(10, 1, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(11, 3, 'Chuadanga', 'চুয়াডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(12, 1, 'Coxsbazar', 'কক্সবাজার', 1, NULL, NULL, NULL, NULL),
(13, 1, 'Cumilla', 'কুমিল্লা', 1, NULL, NULL, NULL, NULL),
(14, 6, 'Dhaka', 'ঢাকা', 1, NULL, NULL, NULL, NULL),
(15, 7, 'Dinajpur', 'দিনাজপুর', 1, NULL, NULL, NULL, NULL),
(16, 6, 'Faridpur', 'ফরিদপুর', 1, NULL, NULL, NULL, NULL),
(17, 1, 'Feni', 'ফেনী', 1, NULL, NULL, NULL, NULL),
(18, 7, 'Gaibandha', 'গাইবান্ধা', 1, NULL, NULL, NULL, NULL),
(19, 6, 'Gazipur', 'গাজীপুর', 1, NULL, NULL, NULL, NULL),
(20, 6, 'Gopalganj', 'গোপালগঞ্জ', 1, NULL, NULL, NULL, NULL),
(21, 5, 'Habiganj', 'হবিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(22, 8, 'Jamalpur', 'জামালপুর', 1, NULL, NULL, NULL, NULL),
(23, 3, 'Jashore', 'যশোর', 1, NULL, NULL, NULL, NULL),
(24, 4, 'Jhalakathi', 'ঝালকাঠি', 1, NULL, NULL, NULL, NULL),
(25, 3, 'Jhenaidah', 'ঝিনাইদহ', 1, NULL, NULL, NULL, NULL),
(26, 2, 'Joypurhat', 'জয়পুরহাট', 1, NULL, NULL, NULL, NULL),
(27, 1, 'Khagrachhari', 'খাগড়াছড়ি', 1, NULL, NULL, NULL, NULL),
(28, 3, 'Khulna', 'খুলনা', 1, NULL, NULL, NULL, NULL),
(29, 6, 'Kishoreganj', 'কিশোরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(30, 7, 'Kurigram', 'কুড়িগ্রাম', 1, NULL, NULL, NULL, NULL),
(31, 3, 'Kushtia', 'কুষ্টিয়া', 1, NULL, NULL, NULL, NULL),
(32, 1, 'Lakshmipur', 'লক্ষ্মীপুর', 1, NULL, NULL, NULL, NULL),
(33, 7, 'Lalmonirhat', 'লালমনিরহাট', 1, NULL, NULL, NULL, NULL),
(34, 6, 'Madaripur', 'মাদারীপুর', 1, NULL, NULL, NULL, NULL),
(35, 3, 'Magura', 'মাগুরা', 1, NULL, NULL, NULL, NULL),
(36, 6, 'Manikganj', 'মানিকগঞ্জ', 1, NULL, NULL, NULL, NULL),
(37, 3, 'Meherpur', 'মেহেরপুর', 1, NULL, NULL, NULL, NULL),
(38, 5, 'Moulvibazar', 'মৌলভীবাজার', 1, NULL, NULL, NULL, NULL),
(39, 6, 'Munshiganj', 'মুন্সিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(40, 8, 'Mymensingh', 'ময়মনসিংহ', 1, NULL, NULL, NULL, NULL),
(41, 2, 'Naogaon', 'নওগাঁ', 1, NULL, NULL, NULL, NULL),
(42, 3, 'Narail', 'নড়াইল', 1, NULL, NULL, NULL, NULL),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', 1, NULL, NULL, NULL, NULL),
(44, 6, 'Narsingdi', 'নরসিংদী', 1, NULL, NULL, NULL, NULL),
(45, 2, 'Natore', 'নাটোর', 1, NULL, NULL, NULL, NULL),
(46, 8, 'Netrokona', 'নেত্রকোণা', 1, NULL, NULL, NULL, NULL),
(47, 7, 'Nilphamari', 'নীলফামারী', 1, NULL, NULL, NULL, NULL),
(48, 1, 'Noakhali', 'নোয়াখালী', 1, NULL, NULL, NULL, NULL),
(49, 2, 'Pabna', 'পাবনা', 1, NULL, NULL, NULL, NULL),
(50, 7, 'Panchagarh', 'পঞ্চগড়', 1, NULL, NULL, NULL, NULL),
(51, 4, 'Patuakhali', 'পটুয়াখালী', 1, NULL, NULL, NULL, NULL),
(52, 4, 'Pirojpur', 'পিরোজপুর', 1, NULL, NULL, NULL, NULL),
(53, 6, 'Rajbari', 'রাজবাড়ী', 1, NULL, NULL, NULL, NULL),
(54, 2, 'Rajshahi', 'রাজশাহী', 1, NULL, NULL, NULL, NULL),
(55, 1, 'Rangamati', 'রাঙ্গামাটি', 1, NULL, NULL, NULL, NULL),
(56, 7, 'Rangpur', 'রংপুর', 1, NULL, NULL, NULL, NULL),
(57, 3, 'Satkhira', 'সাতক্ষীরা', 1, NULL, NULL, NULL, NULL),
(58, 6, 'Shariatpur', 'শরীয়তপুর', 1, NULL, NULL, NULL, NULL),
(59, 8, 'Sherpur', 'শেরপুর', 1, NULL, NULL, NULL, NULL),
(60, 2, 'Sirajganj', 'সিরাজগঞ্জ', 1, NULL, NULL, NULL, NULL),
(61, 5, 'Sunamganj', 'সুনামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(62, 5, 'Sylhet', 'সিলেট', 1, NULL, NULL, NULL, NULL),
(63, 6, 'Tangail', 'টাঙ্গাইল', 1, NULL, NULL, NULL, NULL),
(64, 7, 'Thakurgaon', 'ঠাকুরগাঁও', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(2, 'Rajshahi', 'রাজশাহী', 1, NULL, NULL, NULL, NULL),
(3, 'Khulna', 'খুলনা', 1, NULL, NULL, NULL, NULL),
(4, 'Barishal', 'বরিশাল', 1, NULL, NULL, NULL, NULL),
(5, 'Sylhet', 'সিলেট', 1, NULL, NULL, NULL, NULL),
(6, 'Dhaka', 'ঢাকা', 1, NULL, NULL, NULL, NULL),
(7, 'Rangpur', 'রংপুর', 1, NULL, NULL, NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', 1, NULL, NULL, NULL, NULL),
(1, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(2, 'Rajshahi', 'রাজশাহী', 1, NULL, NULL, NULL, NULL),
(3, 'Khulna', 'খুলনা', 1, NULL, NULL, NULL, NULL),
(4, 'Barishal', 'বরিশাল', 1, NULL, NULL, NULL, NULL),
(5, 'Sylhet', 'সিলেট', 1, NULL, NULL, NULL, NULL),
(6, 'Dhaka', 'ঢাকা', 1, NULL, NULL, NULL, NULL),
(7, 'Rangpur', 'রংপুর', 1, NULL, NULL, NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 's', 1, 1, NULL, '2023-02-11 07:32:24', NULL),
(2, 'Nafiur Rahman', 1, 1, NULL, '2023-02-11 07:32:36', NULL),
(3, 'ED', 1, 1, NULL, '2023-02-11 08:25:49', NULL),
(4, 'Nafiur Rahman', 1, 1, NULL, '2023-02-11 08:27:01', NULL),
(1, 's', 1, 1, NULL, '2023-02-11 07:32:24', NULL),
(2, 'Nafiur Rahman', 1, 1, NULL, '2023-02-11 07:32:36', NULL),
(3, 'ED', 1, 1, NULL, '2023-02-11 08:25:49', NULL),
(4, 'Nafiur Rahman', 1, 1, NULL, '2023-02-11 08:27:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `educational_qualifications`
--

CREATE TABLE `educational_qualifications` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_types`
--

CREATE TABLE `employee_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_types`
--

INSERT INTO `employee_types` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'SR-TMSS (101)', 1, 1, NULL, '2023-02-04 03:11:31', NULL),
(2, 'Pay Scale-THS (102)', 1, 1, NULL, '2023-02-04 03:11:39', NULL),
(3, 'Pay Scale-TIT (103)', 1, 1, NULL, '2023-02-04 03:11:49', NULL),
(4, 'Pay Scale-TPSC (104)', 1, 1, NULL, '2023-02-04 03:11:57', NULL),
(5, 'Contract Based (201)', 1, 1, NULL, '2023-02-04 03:12:03', NULL),
(6, 'Project Staff (301)', 1, 1, NULL, '2023-02-04 03:12:09', NULL),
(7, 'Consultant (601)', 1, 1, NULL, '2023-02-04 03:12:17', NULL),
(1, 'SR-TMSS (101)', 1, 1, NULL, '2023-02-04 03:11:31', NULL),
(2, 'Pay Scale-THS (102)', 1, 1, NULL, '2023-02-04 03:11:39', NULL),
(3, 'Pay Scale-TIT (103)', 1, 1, NULL, '2023-02-04 03:11:49', NULL),
(4, 'Pay Scale-TPSC (104)', 1, 1, NULL, '2023-02-04 03:11:57', NULL),
(5, 'Contract Based (201)', 1, 1, NULL, '2023-02-04 03:12:03', NULL),
(6, 'Project Staff (301)', 1, 1, NULL, '2023-02-04 03:12:09', NULL),
(7, 'Consultant (601)', 1, 1, NULL, '2023-02-04 03:12:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Male', 1, 1, NULL, '2023-02-04 03:12:56', NULL),
(2, 'Female', 1, 1, NULL, '2023-02-04 03:13:13', NULL),
(1, 'Male', 1, 1, NULL, '2023-02-04 03:12:56', NULL),
(2, 'Female', 1, 1, NULL, '2023-02-04 03:13:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Pending, 1=Approved',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_statuses`
--

CREATE TABLE `job_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marital_statuses`
--

CREATE TABLE `marital_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marital_statuses`
--

INSERT INTO `marital_statuses` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'a', 1, 1, NULL, '2023-02-11 07:39:21', NULL),
(1, 'a', 1, 1, NULL, '2023-02-11 07:39:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_16_094302_create_suppliers_table', 1),
(6, '2022_04_16_181230_create_customers_table', 1),
(7, '2022_04_16_202829_create_units_table', 1),
(8, '2022_04_17_055455_create_categories_table', 1),
(9, '2022_04_17_194251_create_products_table', 1),
(10, '2022_04_18_184636_create_purchases_table', 1),
(11, '2022_04_23_204340_create_invoices_table', 1),
(12, '2022_04_23_204653_create_invoice_details_table', 1),
(13, '2022_04_23_204725_create_payments_table', 1),
(14, '2022_04_23_204757_create_payment_details_table', 1),
(15, '2023_01_30_020542_create_sectors_table', 1),
(16, '2023_02_01_122029_create_setups_table', 1),
(17, '2023_02_01_125547_create_domains_table', 1),
(18, '2023_02_01_154211_create_designations_table', 1),
(19, '2023_02_02_052820_create_divisions_table', 1),
(20, '2023_02_02_053155_create_districts_table', 1),
(21, '2023_02_02_053211_create_upazillas_table', 1),
(22, '2023_02_02_084353_create_employee_types_table', 1),
(23, '2023_02_02_085205_create_zones_table', 1),
(24, '2023_02_02_085528_create_areas_table', 1),
(25, '2023_02_02_085754_create_branches_table', 1),
(26, '2023_02_02_085900_create_departments_table', 1),
(27, '2023_02_02_085958_create_educational_qualifications_table', 1),
(28, '2023_02_02_090035_create_job_statuses_table', 1),
(29, '2023_02_02_090044_create_genders_table', 1),
(30, '2023_02_02_090109_create_marital_statuses_table', 1),
(31, '2023_02_02_090127_create_religions_table', 1),
(32, '2023_02_02_090147_create_blood_groups_table', 1),
(33, '2023_02_02_162309_create_new_employees_table', 1),
(34, '2023_02_02_162310_create_new_employees_table', 2),
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_16_094302_create_suppliers_table', 1),
(6, '2022_04_16_181230_create_customers_table', 1),
(7, '2022_04_16_202829_create_units_table', 1),
(8, '2022_04_17_055455_create_categories_table', 1),
(9, '2022_04_17_194251_create_products_table', 1),
(10, '2022_04_18_184636_create_purchases_table', 1),
(11, '2022_04_23_204340_create_invoices_table', 1),
(12, '2022_04_23_204653_create_invoice_details_table', 1),
(13, '2022_04_23_204725_create_payments_table', 1),
(14, '2022_04_23_204757_create_payment_details_table', 1),
(15, '2023_01_30_020542_create_sectors_table', 1),
(16, '2023_02_01_122029_create_setups_table', 1),
(17, '2023_02_01_125547_create_domains_table', 1),
(18, '2023_02_01_154211_create_designations_table', 1),
(19, '2023_02_02_052820_create_divisions_table', 1),
(20, '2023_02_02_053155_create_districts_table', 1),
(21, '2023_02_02_053211_create_upazillas_table', 1),
(22, '2023_02_02_084353_create_employee_types_table', 1),
(23, '2023_02_02_085205_create_zones_table', 1),
(24, '2023_02_02_085528_create_areas_table', 1),
(25, '2023_02_02_085754_create_branches_table', 1),
(26, '2023_02_02_085900_create_departments_table', 1),
(27, '2023_02_02_085958_create_educational_qualifications_table', 1),
(28, '2023_02_02_090035_create_job_statuses_table', 1),
(29, '2023_02_02_090044_create_genders_table', 1),
(30, '2023_02_02_090109_create_marital_statuses_table', 1),
(31, '2023_02_02_090127_create_religions_table', 1),
(32, '2023_02_02_090147_create_blood_groups_table', 1),
(33, '2023_02_02_162309_create_new_employees_table', 1),
(34, '2023_02_02_162310_create_new_employees_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `new_employees`
--

CREATE TABLE `new_employees` (
  `employee_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` int DEFAULT NULL,
  `joiningdate` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `domain_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status_id` int DEFAULT NULL,
  `birth_place_district_id` int DEFAULT NULL,
  `present_village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_post` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_division_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_district_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_upazilla_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_post` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_division_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_district_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_upazilla_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smartcard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloodgroups_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_qualification_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_employees`
--

INSERT INTO `new_employees` (`employee_id`, `name`, `designation_id`, `joiningdate`, `date_of_birth`, `domain_id`, `father_name`, `mother_name`, `marital_status_id`, `birth_place_district_id`, `present_village`, `present_post`, `present_postal_code`, `present_division_id`, `present_district_id`, `present_upazilla_id`, `permanent_village`, `permanent_post`, `permanent_postal_code`, `permanent_division_id`, `permanent_district_id`, `permanent_upazilla_id`, `nid`, `smartcard`, `bloodgroups_id`, `mobile`, `email`, `educational_qualification_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(10100004, 'Wylie Huff', 1, NULL, NULL, '3', 'Dai Maddox', 'Jaime Baker', 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-14 06:45:05', NULL),
(10118707, 'Md. Nafiur Rahman', 1, '2015-01-01', '1989-12-20', '4', 'Md. Saiful Islam', 'Mst. Nasima Banu', 1, 6, 'Dakshin Bhag', 'Sheker Kola', '5800', '2', '6', '123', 'Dakshin Bhag', 'Sheker Kola', '5800', '2', '6', '123', '1012086318752', '756985123', NULL, '01713377093', 'nafiurme@gmail.com', NULL, 0, 1, NULL, '2023-02-14 07:26:43', NULL),
(10133999, 'Burke Wyatt', 1, '1976-05-25', '1983-07-22', '4', 'Driscoll Mccarty', 'Chaney Aguirre', 1, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-14 07:10:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `paid_status` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_id` int NOT NULL,
  `purchase_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Pending, 1=Approved',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'HEM Grand Sector', 1, 1, NULL, '2023-02-04 03:14:30', NULL),
(2, 'Grand Health Sector', 1, 1, NULL, '2023-02-04 03:14:37', NULL),
(3, 'Others', 1, 1, NULL, '2023-02-04 03:14:43', NULL),
(4, 'N/A', 1, 1, NULL, '2023-02-04 03:14:49', NULL),
(5, 'N/I', 1, 1, NULL, '2023-02-04 03:14:55', NULL),
(6, 'Program Sector', 1, 1, NULL, '2023-02-04 03:15:04', NULL),
(7, 'Trade Business Sector', 1, 1, NULL, '2023-02-04 03:15:13', NULL),
(8, 'Training & Education Sector', 1, 1, NULL, '2023-02-04 03:15:23', NULL),
(9, 'ICT & Environment Sector', 1, 1, NULL, '2023-02-04 03:15:30', NULL),
(1, 'HEM Grand Sector', 1, 1, NULL, '2023-02-04 03:14:30', NULL),
(2, 'Grand Health Sector', 1, 1, NULL, '2023-02-04 03:14:37', NULL),
(3, 'Others', 1, 1, NULL, '2023-02-04 03:14:43', NULL),
(4, 'N/A', 1, 1, NULL, '2023-02-04 03:14:49', NULL),
(5, 'N/I', 1, 1, NULL, '2023-02-04 03:14:55', NULL),
(6, 'Program Sector', 1, 1, NULL, '2023-02-04 03:15:04', NULL),
(7, 'Trade Business Sector', 1, 1, NULL, '2023-02-04 03:15:13', NULL),
(8, 'Training & Education Sector', 1, 1, NULL, '2023-02-04 03:15:23', NULL),
(9, 'ICT & Environment Sector', 1, 1, NULL, '2023-02-04 03:15:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setups`
--

CREATE TABLE `setups` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` int NOT NULL,
  `district_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `division_id`, `district_id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 'Barura', 'বরুড়া', 1, NULL, NULL, NULL, NULL),
(2, 1, 13, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 1, NULL, NULL, NULL, NULL),
(3, 1, 13, 'Burichang', 'বুড়িচং', 1, NULL, NULL, NULL, NULL),
(4, 1, 13, 'Chandina', 'চান্দিনা', 1, NULL, NULL, NULL, NULL),
(5, 1, 13, 'Chauddagram', 'চৌদ্দগ্রাম', 1, NULL, NULL, NULL, NULL),
(6, 1, 13, 'Cumillasadar', 'কুমিল্লাসদর', 1, NULL, NULL, NULL, NULL),
(7, 1, 13, 'Daudkandi', 'দাউদকান্দি', 1, NULL, NULL, NULL, NULL),
(8, 1, 13, 'Debidwar', 'দেবিদ্বার', 1, NULL, NULL, NULL, NULL),
(9, 1, 13, 'Homna', 'হোমনা', 1, NULL, NULL, NULL, NULL),
(10, 1, 13, 'Laksam', 'লাকসাম', 1, NULL, NULL, NULL, NULL),
(11, 1, 13, 'Lalmai', 'লালমাই', 1, NULL, NULL, NULL, NULL),
(12, 1, 13, 'Meghna', 'মেঘনা', 1, NULL, NULL, NULL, NULL),
(13, 1, 13, 'Monohargonj', 'মনোহরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(14, 1, 13, 'Muradnagar', 'মুরাদনগর', 1, NULL, NULL, NULL, NULL),
(15, 1, 13, 'Nangalkot', 'নাঙ্গলকোট', 1, NULL, NULL, NULL, NULL),
(16, 1, 13, 'Sadarsouth', 'সদরদক্ষিণ', 1, NULL, NULL, NULL, NULL),
(17, 1, 13, 'Titas', 'তিতাস', 1, NULL, NULL, NULL, NULL),
(18, 1, 17, 'Chhagalnaiya', 'ছাগলনাইয়া', 1, NULL, NULL, NULL, NULL),
(19, 1, 17, 'Daganbhuiyan', 'দাগনভূঞা', 1, NULL, NULL, NULL, NULL),
(20, 1, 17, 'Feni Sadar', 'ফেনী সদর', 1, NULL, NULL, NULL, NULL),
(21, 1, 17, 'Fulgazi', 'ফুলগাজী', 1, NULL, NULL, NULL, NULL),
(22, 1, 17, 'Parshuram', 'পরশুরাম', 1, NULL, NULL, NULL, NULL),
(23, 1, 17, 'Sonagazi', 'সোনাগাজী', 1, NULL, NULL, NULL, NULL),
(24, 1, 7, 'Akhaura', 'আখাউড়া', 1, NULL, NULL, NULL, NULL),
(25, 1, 7, 'Ashuganj', 'আশুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(26, 1, 7, 'Bancharampur', 'বাঞ্ছারামপুর', 1, NULL, NULL, NULL, NULL),
(27, 1, 7, 'Bijoynagar', 'বিজয়নগর', 1, NULL, NULL, NULL, NULL),
(28, 1, 7, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 1, NULL, NULL, NULL, NULL),
(29, 1, 7, 'Kasba', 'কসবা', 1, NULL, NULL, NULL, NULL),
(30, 1, 7, 'Nabinagar', 'নবীনগর', 1, NULL, NULL, NULL, NULL),
(31, 1, 7, 'Nasirnagar', 'নাসিরনগর', 1, NULL, NULL, NULL, NULL),
(32, 1, 7, 'Sarail', 'সরাইল', 1, NULL, NULL, NULL, NULL),
(33, 1, 55, 'Baghaichari', 'বাঘাইছড়ি', 1, NULL, NULL, NULL, NULL),
(34, 1, 55, 'Barkal', 'বরকল', 1, NULL, NULL, NULL, NULL),
(35, 1, 55, 'Belaichari', 'বিলাইছড়ি', 1, NULL, NULL, NULL, NULL),
(36, 1, 55, 'Juraichari', 'জুরাছড়ি', 1, NULL, NULL, NULL, NULL),
(37, 1, 55, 'Kaptai', 'কাপ্তাই', 1, NULL, NULL, NULL, NULL),
(38, 1, 55, 'Kawkhali', 'কাউখালী', 1, NULL, NULL, NULL, NULL),
(39, 1, 55, 'Langadu', 'লংগদু', 1, NULL, NULL, NULL, NULL),
(40, 1, 55, 'Naniarchar', 'নানিয়ারচর', 1, NULL, NULL, NULL, NULL),
(41, 1, 55, 'Rajasthali', 'রাজস্থলী', 1, NULL, NULL, NULL, NULL),
(42, 1, 55, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 1, NULL, NULL, NULL, NULL),
(43, 1, 48, 'Begumganj', 'বেগমগঞ্জ', 1, NULL, NULL, NULL, NULL),
(44, 1, 48, 'Chatkhil', 'চাটখিল', 1, NULL, NULL, NULL, NULL),
(45, 1, 48, 'Companiganj', 'কোম্পানীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(46, 1, 48, 'Hatia', 'হাতিয়া', 1, NULL, NULL, NULL, NULL),
(47, 1, 48, 'Kabirhat', 'কবিরহাট', 1, NULL, NULL, NULL, NULL),
(48, 1, 48, 'Noakhali Sadar', 'নোয়াখালী', 1, NULL, NULL, NULL, NULL),
(49, 1, 48, 'Senbug', 'সেনবাগ', 1, NULL, NULL, NULL, NULL),
(50, 1, 48, 'Sonaimuri', 'সোনাইমুড়ী', 1, NULL, NULL, NULL, NULL),
(51, 1, 48, 'Subarnachar', 'সুবর্ণচর', 1, NULL, NULL, NULL, NULL),
(52, 1, 8, 'Chandpur Sadar', 'চাঁদপুর সদর', 1, NULL, NULL, NULL, NULL),
(53, 1, 8, 'Faridgonj', 'ফরিদগঞ্জ', 1, NULL, NULL, NULL, NULL),
(54, 1, 8, 'Haimchar', 'হাইমচর', 1, NULL, NULL, NULL, NULL),
(55, 1, 8, 'Hajiganj', 'হাজীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(56, 1, 8, 'Kachua', 'কচুয়া', 1, NULL, NULL, NULL, NULL),
(57, 1, 8, 'Matlabnorth', 'মতলব', 1, NULL, NULL, NULL, NULL),
(58, 1, 8, 'Matlabsouth', 'মতলব', 1, NULL, NULL, NULL, NULL),
(59, 1, 8, 'Shahrasti', 'শাহরাস্তি', 1, NULL, NULL, NULL, NULL),
(60, 1, 32, 'Kamalnagar', 'কমলনগর', 1, NULL, NULL, NULL, NULL),
(61, 1, 32, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 1, NULL, NULL, NULL, NULL),
(62, 1, 32, 'Raipur', 'রায়পুর', 1, NULL, NULL, NULL, NULL),
(63, 1, 32, 'Ramganj', 'রামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(64, 1, 32, 'Ramgati', 'রামগতি', 1, NULL, NULL, NULL, NULL),
(65, 1, 10, 'Anwara', 'আনোয়ারা', 1, NULL, NULL, NULL, NULL),
(66, 1, 10, 'Banshkhali', 'বাঁশখালী', 1, NULL, NULL, NULL, NULL),
(67, 1, 10, 'Boalkhali', 'বোয়ালখালী', 1, NULL, NULL, NULL, NULL),
(68, 1, 10, 'Chandanaish', 'চন্দনাইশ', 1, NULL, NULL, NULL, NULL),
(69, 1, 10, 'Fatikchhari', 'ফটিকছড়ি', 1, NULL, NULL, NULL, NULL),
(70, 1, 10, 'Hathazari', 'হাটহাজারী', 1, NULL, NULL, NULL, NULL),
(71, 1, 10, 'Karnafuli', 'কর্ণফুলী', 1, NULL, NULL, NULL, NULL),
(72, 1, 10, 'Lohagara', 'লোহাগাড়া', 1, NULL, NULL, NULL, NULL),
(73, 1, 10, 'Mirsharai', 'মীরসরাই', 1, NULL, NULL, NULL, NULL),
(74, 1, 10, 'Patiya', 'পটিয়া', 1, NULL, NULL, NULL, NULL),
(75, 1, 10, 'Rangunia', 'রাঙ্গুনিয়া', 1, NULL, NULL, NULL, NULL),
(76, 1, 10, 'Raozan', 'রাউজান', 1, NULL, NULL, NULL, NULL),
(77, 1, 10, 'Sandwip', 'সন্দ্বীপ', 1, NULL, NULL, NULL, NULL),
(78, 1, 10, 'Satkania', 'সাতকানিয়া', 1, NULL, NULL, NULL, NULL),
(79, 1, 10, 'Sitakunda', 'সীতাকুন্ড', 1, NULL, NULL, NULL, NULL),
(80, 1, 12, 'Chakaria', 'চকরিয়া', 1, NULL, NULL, NULL, NULL),
(81, 1, 12, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 1, NULL, NULL, NULL, NULL),
(82, 1, 12, 'Kutubdia', 'কুতুবদিয়া', 1, NULL, NULL, NULL, NULL),
(83, 1, 12, 'Moheshkhali', 'মহেশখালী', 1, NULL, NULL, NULL, NULL),
(84, 1, 12, 'Pekua', 'পেকুয়া', 1, NULL, NULL, NULL, NULL),
(85, 1, 12, 'Ramu', 'রামু', 1, NULL, NULL, NULL, NULL),
(86, 1, 12, 'Teknaf', 'টেকনাফ', 1, NULL, NULL, NULL, NULL),
(87, 1, 12, 'Ukhiya', 'উখিয়া', 1, NULL, NULL, NULL, NULL),
(88, 1, 27, 'Dighinala', 'দিঘীনালা', 1, NULL, NULL, NULL, NULL),
(89, 1, 27, 'Guimara', 'গুইমারা', 1, NULL, NULL, NULL, NULL),
(90, 1, 27, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 1, NULL, NULL, NULL, NULL),
(91, 1, 27, 'Laxmichhari', 'লক্ষীছড়ি', 1, NULL, NULL, NULL, NULL),
(92, 1, 27, 'Manikchari', 'মানিকছড়ি', 1, NULL, NULL, NULL, NULL),
(93, 1, 27, 'Matiranga', 'মাটিরাঙ্গা', 1, NULL, NULL, NULL, NULL),
(94, 1, 27, 'Mohalchari', 'মহালছড়ি', 1, NULL, NULL, NULL, NULL),
(95, 1, 27, 'Panchari', 'পানছড়ি', 1, NULL, NULL, NULL, NULL),
(96, 1, 27, 'Ramgarh', 'রামগড়', 1, NULL, NULL, NULL, NULL),
(97, 1, 2, 'Alikadam', 'আলীকদম', 1, NULL, NULL, NULL, NULL),
(98, 1, 2, 'Bandarban Sadar', 'বান্দরবান সদর', 1, NULL, NULL, NULL, NULL),
(99, 1, 2, 'Lama', 'লামা', 1, NULL, NULL, NULL, NULL),
(100, 1, 2, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 1, NULL, NULL, NULL, NULL),
(101, 1, 2, 'Rowangchhari', 'রোয়াংছড়ি', 1, NULL, NULL, NULL, NULL),
(102, 1, 2, 'Ruma', 'রুমা', 1, NULL, NULL, NULL, NULL),
(103, 1, 2, 'Thanchi', 'থানচি', 1, NULL, NULL, NULL, NULL),
(104, 2, 60, 'Belkuchi', 'বেলকুচি', 1, NULL, NULL, NULL, NULL),
(105, 2, 60, 'Chauhali', 'চৌহালি', 1, NULL, NULL, NULL, NULL),
(106, 2, 60, 'Kamarkhand', 'কামারখন্দ', 1, NULL, NULL, NULL, NULL),
(107, 2, 60, 'Kazipur', 'কাজীপুর', 1, NULL, NULL, NULL, NULL),
(108, 2, 60, 'Raigonj', 'রায়গঞ্জ', 1, NULL, NULL, NULL, NULL),
(109, 2, 60, 'Shahjadpur', 'শাহজাদপুর', 1, NULL, NULL, NULL, NULL),
(110, 2, 60, 'Sirajganjsadar', 'সিরাজগঞ্জ', 1, NULL, NULL, NULL, NULL),
(111, 2, 60, 'Tarash', 'তাড়াশ', 1, NULL, NULL, NULL, NULL),
(112, 2, 60, 'Ullapara', 'উল্লাপাড়া', 1, NULL, NULL, NULL, NULL),
(113, 2, 49, 'Atghoria', 'আটঘরিয়া', 1, NULL, NULL, NULL, NULL),
(114, 2, 49, 'Bera', 'বেড়া', 1, NULL, NULL, NULL, NULL),
(115, 2, 49, 'Bhangura', 'ভাঙ্গুড়া', 1, NULL, NULL, NULL, NULL),
(116, 2, 49, 'Chatmohar', 'চাটমোহর', 1, NULL, NULL, NULL, NULL),
(117, 2, 49, 'Faridpur', 'ফরিদপুর', 1, NULL, NULL, NULL, NULL),
(118, 2, 49, 'Ishurdi', 'ঈশ্বরদী', 1, NULL, NULL, NULL, NULL),
(119, 2, 49, 'Pabnasadar', 'পাবনা সদর', 1, NULL, NULL, NULL, NULL),
(120, 2, 49, 'Santhia', 'সাঁথিয়া', 1, NULL, NULL, NULL, NULL),
(121, 2, 49, 'Sujanagar', 'সুজানগর', 1, NULL, NULL, NULL, NULL),
(122, 2, 6, 'Adamdighi', 'আদমদিঘি', 1, NULL, NULL, NULL, NULL),
(123, 2, 6, 'Bogura Sadar', 'বগুড়া সদর', 1, NULL, NULL, NULL, NULL),
(124, 2, 6, 'Dhunot', 'ধুনট', 1, NULL, NULL, NULL, NULL),
(125, 2, 6, 'Dupchanchia', 'দুপচাচিঁয়া', 1, NULL, NULL, NULL, NULL),
(126, 2, 6, 'Gabtali', 'গাবতলী', 1, NULL, NULL, NULL, NULL),
(127, 2, 6, 'Kahaloo', 'কাহালু', 1, NULL, NULL, NULL, NULL),
(128, 2, 6, 'Nondigram', 'নন্দিগ্রাম', 1, NULL, NULL, NULL, NULL),
(129, 2, 6, 'Shajahanpur', 'শাজাহানপুর', 1, NULL, NULL, NULL, NULL),
(130, 2, 6, 'Shariakandi', 'সারিয়াকান্দি', 1, NULL, NULL, NULL, NULL),
(131, 2, 6, 'Sherpur', 'শেরপুর', 1, NULL, NULL, NULL, NULL),
(132, 2, 6, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(133, 2, 6, 'Sonatala', 'সোনাতলা', 1, NULL, NULL, NULL, NULL),
(134, 2, 54, 'Bagha', 'বাঘা', 1, NULL, NULL, NULL, NULL),
(135, 2, 54, 'Bagmara', 'বাগমারা', 1, NULL, NULL, NULL, NULL),
(136, 2, 54, 'Charghat', 'চারঘাট', 1, NULL, NULL, NULL, NULL),
(137, 2, 54, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL, NULL, NULL),
(138, 2, 54, 'Godagari', 'গোদাগাড়ী', 1, NULL, NULL, NULL, NULL),
(139, 2, 54, 'Mohonpur', 'মোহনপুর', 1, NULL, NULL, NULL, NULL),
(140, 2, 54, 'Paba', 'পবা', 1, NULL, NULL, NULL, NULL),
(141, 2, 54, 'Puthia', 'পুঠিয়া', 1, NULL, NULL, NULL, NULL),
(142, 2, 54, 'Tanore', 'তানোর', 1, NULL, NULL, NULL, NULL),
(143, 2, 45, 'Bagatipara', 'বাগাতিপাড়া', 1, NULL, NULL, NULL, NULL),
(144, 2, 45, 'Baraigram', 'বড়াইগ্রাম', 1, NULL, NULL, NULL, NULL),
(145, 2, 45, 'Gurudaspur', 'গুরুদাসপুর', 1, NULL, NULL, NULL, NULL),
(146, 2, 45, 'Lalpur', 'লালপুর', 1, NULL, NULL, NULL, NULL),
(147, 2, 45, 'Naldanga', 'নলডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(148, 2, 45, 'Natore Sadar', 'নাটোর সদর', 1, NULL, NULL, NULL, NULL),
(149, 2, 45, 'Singra', 'সিংড়া', 1, NULL, NULL, NULL, NULL),
(150, 2, 26, 'Akkelpur', 'আক্কেলপুর', 1, NULL, NULL, NULL, NULL),
(151, 2, 26, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 1, NULL, NULL, NULL, NULL),
(152, 2, 26, 'Kalai', 'কালাই', 1, NULL, NULL, NULL, NULL),
(153, 2, 26, 'Khetlal', 'ক্ষেতলাল', 1, NULL, NULL, NULL, NULL),
(154, 2, 26, 'Panchbibi', 'পাঁচবিবি', 1, NULL, NULL, NULL, NULL),
(155, 2, 9, 'Bholahat', 'ভোলাহাট', 1, NULL, NULL, NULL, NULL),
(156, 2, 9, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(157, 2, 9, 'Gomostapur', 'গোমস্তাপুর', 1, NULL, NULL, NULL, NULL),
(158, 2, 9, 'Nachol', 'নাচোল', 1, NULL, NULL, NULL, NULL),
(159, 2, 9, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(160, 2, 41, 'Atrai', 'আত্রাই', 1, NULL, NULL, NULL, NULL),
(161, 2, 41, 'Badalgachi', 'বদলগাছী', 1, NULL, NULL, NULL, NULL),
(162, 2, 41, 'Dhamoirhat', 'ধামইরহাট', 1, NULL, NULL, NULL, NULL),
(163, 2, 41, 'Manda', 'মান্দা', 1, NULL, NULL, NULL, NULL),
(164, 2, 41, 'Mohadevpur', 'মহাদেবপুর', 1, NULL, NULL, NULL, NULL),
(165, 2, 41, 'Naogaon Sadar', 'নওগাঁ সদর', 1, NULL, NULL, NULL, NULL),
(166, 2, 41, 'Niamatpur', 'নিয়ামতপুর', 1, NULL, NULL, NULL, NULL),
(167, 2, 41, 'Patnitala', 'পত্নিতলা', 1, NULL, NULL, NULL, NULL),
(168, 2, 41, 'Porsha', 'পোরশা', 1, NULL, NULL, NULL, NULL),
(169, 2, 41, 'Raninagar', 'রাণীনগর', 1, NULL, NULL, NULL, NULL),
(170, 2, 41, 'Sapahar', 'সাপাহার', 1, NULL, NULL, NULL, NULL),
(171, 2, 23, 'Abhaynagar', 'অভয়নগর', 1, NULL, NULL, NULL, NULL),
(172, 2, 23, 'Bagherpara', 'বাঘারপাড়া', 1, NULL, NULL, NULL, NULL),
(173, 2, 23, 'Chougachha', 'চৌগাছা', 1, NULL, NULL, NULL, NULL),
(174, 2, 23, 'Jashore Sadar', 'যশোর সদর', 1, NULL, NULL, NULL, NULL),
(175, 2, 23, 'Jhikargacha', 'ঝিকরগাছা', 1, NULL, NULL, NULL, NULL),
(176, 2, 23, 'Keshabpur', 'কেশবপুর', 1, NULL, NULL, NULL, NULL),
(177, 2, 23, 'Manirampur', 'মণিরামপুর', 1, NULL, NULL, NULL, NULL),
(178, 2, 23, 'Sharsha', 'শার্শা', 1, NULL, NULL, NULL, NULL),
(179, 2, 57, 'Assasuni', 'আশাশুনি', 1, NULL, NULL, NULL, NULL),
(180, 2, 57, 'Debhata', 'দেবহাটা', 1, NULL, NULL, NULL, NULL),
(181, 2, 57, 'Kalaroa', 'কলারোয়া', 1, NULL, NULL, NULL, NULL),
(182, 2, 57, 'Kaliganj', 'কালিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(183, 2, 57, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 1, NULL, NULL, NULL, NULL),
(184, 2, 57, 'Shyamnagar', 'শ্যামনগর', 1, NULL, NULL, NULL, NULL),
(185, 2, 57, 'Tala', 'তালা', 1, NULL, NULL, NULL, NULL),
(186, 2, 37, 'Gangni', 'গাংনী', 1, NULL, NULL, NULL, NULL),
(187, 2, 37, 'Meherpursadar', 'মেহেরপুর সদর', 1, NULL, NULL, NULL, NULL),
(188, 2, 37, 'Mujibnagar', 'মুজিবনগর', 1, NULL, NULL, NULL, NULL),
(189, 2, 42, 'Kalia', 'কালিয়া', 1, NULL, NULL, NULL, NULL),
(190, 2, 42, 'Lohagara', 'লোহাগড়া', 1, NULL, NULL, NULL, NULL),
(191, 2, 42, 'Narail Sadar', 'নড়াইল সদর', 1, NULL, NULL, NULL, NULL),
(192, 2, 11, 'Alamdanga', 'আলমডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(193, 2, 11, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 1, NULL, NULL, NULL, NULL),
(194, 2, 11, 'Damurhuda', 'দামুড়হুদা', 1, NULL, NULL, NULL, NULL),
(195, 2, 11, 'Jibannagar', 'জীবননগর', 1, NULL, NULL, NULL, NULL),
(196, 2, 31, 'Bheramara', 'ভেড়ামারা', 1, NULL, NULL, NULL, NULL),
(197, 2, 31, 'Daulatpur', 'দৌলতপুর', 1, NULL, NULL, NULL, NULL),
(198, 2, 31, 'Khoksa', 'খোকসা', 1, NULL, NULL, NULL, NULL),
(199, 2, 31, 'Kumarkhali', 'কুমারখালী', 1, NULL, NULL, NULL, NULL),
(200, 2, 31, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 1, NULL, NULL, NULL, NULL),
(201, 2, 31, 'Mirpurkushtia', 'মিরপুর', 1, NULL, NULL, NULL, NULL),
(202, 2, 35, 'Magura Sadar', 'মাগুরা সদর', 1, NULL, NULL, NULL, NULL),
(203, 2, 35, 'Mohammadpur', 'মহম্মদপুর', 1, NULL, NULL, NULL, NULL),
(204, 2, 35, 'Shalikha', 'শালিখা', 1, NULL, NULL, NULL, NULL),
(205, 2, 35, 'Sreepur', 'শ্রীপুর', 1, NULL, NULL, NULL, NULL),
(206, 2, 28, 'Botiaghata', 'বটিয়াঘাটা', 1, NULL, NULL, NULL, NULL),
(207, 2, 28, 'Dakop', 'দাকোপ', 1, NULL, NULL, NULL, NULL),
(208, 2, 28, 'Digholia', 'দিঘলিয়া', 1, NULL, NULL, NULL, NULL),
(209, 2, 28, 'Dumuria', 'ডুমুরিয়া', 1, NULL, NULL, NULL, NULL),
(210, 2, 28, 'Fultola', 'ফুলতলা', 1, NULL, NULL, NULL, NULL),
(211, 2, 28, 'Koyra', 'কয়রা', 1, NULL, NULL, NULL, NULL),
(212, 2, 28, 'Paikgasa', 'পাইকগাছা', 1, NULL, NULL, NULL, NULL),
(213, 2, 28, 'Rupsha', 'রূপসা', 1, NULL, NULL, NULL, NULL),
(214, 2, 28, 'Terokhada', 'তেরখাদা', 1, NULL, NULL, NULL, NULL),
(215, 3, 1, 'Chitalmari', 'চিতলমারী', 1, NULL, NULL, NULL, NULL),
(216, 3, 1, 'Fakirhat', 'ফকিরহাট', 1, NULL, NULL, NULL, NULL),
(217, 3, 1, 'Kachua', 'কচুয়া', 1, NULL, NULL, NULL, NULL),
(218, 3, 1, 'Mollahat', 'মোল্লাহাট', 1, NULL, NULL, NULL, NULL),
(219, 3, 1, 'Mongla', 'মোংলা', 1, NULL, NULL, NULL, NULL),
(220, 3, 1, 'Morrelganj', 'মোড়েলগঞ্জ', 1, NULL, NULL, NULL, NULL),
(221, 3, 1, 'Rampal', 'রামপাল', 1, NULL, NULL, NULL, NULL),
(222, 3, 1, 'Sadar', 'বাগেরহাট সদর', 1, NULL, NULL, NULL, NULL),
(223, 3, 1, 'Sarankhola', 'শরণখোলা', 1, NULL, NULL, NULL, NULL),
(224, 3, 25, 'Harinakundu', 'হরিণাকুন্ডু', 1, NULL, NULL, NULL, NULL),
(225, 3, 25, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 1, NULL, NULL, NULL, NULL),
(226, 3, 25, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(227, 3, 25, 'Kot8', 'কোটচাঁদপুর', 1, NULL, NULL, NULL, NULL),
(228, 3, 25, 'Moheshpur', 'মহেশপুর', 1, NULL, NULL, NULL, NULL),
(229, 3, 25, 'Shailkupa', 'শৈলকুপা', 1, NULL, NULL, NULL, NULL),
(230, 3, 51, 'Bauphal', 'বাউফল', 1, NULL, NULL, NULL, NULL),
(231, 3, 24, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 1, NULL, NULL, NULL, NULL),
(232, 3, 24, 'Kathalia', 'কাঠালিয়া', 1, NULL, NULL, NULL, NULL),
(233, 3, 24, 'Nalchity', 'নলছিটি', 1, NULL, NULL, NULL, NULL),
(234, 3, 24, 'Rajapur', 'রাজাপুর', 1, NULL, NULL, NULL, NULL),
(235, 3, 51, 'Dashmina', 'দশমিনা', 1, NULL, NULL, NULL, NULL),
(236, 3, 51, 'Dumki', 'দুমকি', 1, NULL, NULL, NULL, NULL),
(237, 3, 51, 'Galachipa', 'গলাচিপা', 1, NULL, NULL, NULL, NULL),
(238, 3, 51, 'Kalapara', 'কলাপাড়া', 1, NULL, NULL, NULL, NULL),
(239, 3, 51, 'Mirzaganj', 'মির্জাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(240, 3, 51, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 1, NULL, NULL, NULL, NULL),
(241, 3, 51, 'Rangabali', 'রাঙ্গাবালী', 1, NULL, NULL, NULL, NULL),
(242, 3, 52, 'Bhandaria', 'ভান্ডারিয়া', 1, NULL, NULL, NULL, NULL),
(243, 3, 52, 'Indurkani', 'ইন্দুরকানী', 1, NULL, NULL, NULL, NULL),
(244, 3, 52, 'Kawkhali', 'কাউখালী', 1, NULL, NULL, NULL, NULL),
(245, 3, 52, 'Mathbaria', 'মঠবাড়ীয়া', 1, NULL, NULL, NULL, NULL),
(246, 3, 52, 'Nazirpur', 'নাজিরপুর', 1, NULL, NULL, NULL, NULL),
(247, 3, 52, 'Nesarabad', 'নেছারাবাদ', 1, NULL, NULL, NULL, NULL),
(248, 3, 52, 'Pirojpur Sadar', 'পিরোজপুর সদর', 1, NULL, NULL, NULL, NULL),
(249, 3, 4, 'Agailjhara', 'আগৈলঝাড়া', 1, NULL, NULL, NULL, NULL),
(250, 3, 4, 'Babuganj', 'বাবুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(251, 3, 4, 'Bakerganj', 'বাকেরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(252, 3, 4, 'Banaripara', 'বানারীপাড়া', 1, NULL, NULL, NULL, NULL),
(253, 3, 4, 'Barishal Sadar', 'বরিশাল সদর', 1, NULL, NULL, NULL, NULL),
(254, 3, 4, 'Gournadi', 'গৌরনদী', 1, NULL, NULL, NULL, NULL),
(255, 3, 4, 'Hizla', 'হিজলা', 1, NULL, NULL, NULL, NULL),
(256, 3, 4, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(257, 3, 4, 'Muladi', 'মুলাদী', 1, NULL, NULL, NULL, NULL),
(258, 3, 4, 'Wazirpur', 'উজিরপুর', 1, NULL, NULL, NULL, NULL),
(259, 3, 5, 'Bhola Sadar', 'ভোলা সদর', 1, NULL, NULL, NULL, NULL),
(260, 3, 5, 'Borhanuddin', 'বোরহানউদ্দিন', 1, NULL, NULL, NULL, NULL),
(261, 3, 5, 'Charfesson', 'চরফ্যাশন', 1, NULL, NULL, NULL, NULL),
(262, 3, 5, 'Doulatkhan', 'দৌলতখান', 1, NULL, NULL, NULL, NULL),
(263, 3, 5, 'Lalmohan', 'লালমোহন', 1, NULL, NULL, NULL, NULL),
(264, 3, 5, 'Monpura', 'মনপুরা', 1, NULL, NULL, NULL, NULL),
(265, 3, 5, 'Tazumuddin', 'তজুমদ্দিন', 1, NULL, NULL, NULL, NULL),
(266, 4, 3, 'Amtali', 'আমতলী', 1, NULL, NULL, NULL, NULL),
(267, 4, 3, 'Bamna', 'বামনা', 1, NULL, NULL, NULL, NULL),
(268, 4, 3, 'Betagi', 'বেতাগী', 1, NULL, NULL, NULL, NULL),
(269, 4, 3, 'Pathorghata', 'পাথরঘাটা', 1, NULL, NULL, NULL, NULL),
(270, 4, 3, 'Sadar', 'বরগুনা সদর', 1, NULL, NULL, NULL, NULL),
(271, 4, 3, 'Taltali', 'তালতলি', 1, NULL, NULL, NULL, NULL),
(272, 4, 62, 'Balaganj', 'বালাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(273, 4, 62, 'Beanibazar', 'বিয়ানীবাজার', 1, NULL, NULL, NULL, NULL),
(274, 4, 62, 'Bishwanath', 'বিশ্বনাথ', 1, NULL, NULL, NULL, NULL),
(275, 4, 62, 'Companiganj', 'কোম্পানীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(276, 4, 62, 'Dakshinsurma', 'দক্ষিণসুরমা', 1, NULL, NULL, NULL, NULL),
(277, 4, 62, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(278, 4, 62, 'Golapganj', 'গোলাপগঞ্জ', 1, NULL, NULL, NULL, NULL),
(279, 4, 62, 'Gowainghat', 'গোয়াইনঘাট', 1, NULL, NULL, NULL, NULL),
(280, 4, 62, 'Jaintiapur', 'জৈন্তাপুর', 1, NULL, NULL, NULL, NULL),
(281, 4, 62, 'Kanaighat', 'কানাইঘাট', 1, NULL, NULL, NULL, NULL),
(282, 4, 62, 'Osmaninagar', 'ওসমানী', 1, NULL, NULL, NULL, NULL),
(283, 4, 62, 'Sylhet Sadar', 'সিলেট সদর', 1, NULL, NULL, NULL, NULL),
(284, 4, 62, 'Zakiganj', 'জকিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(285, 4, 38, 'Barlekha', 'বড়লেখা', 1, NULL, NULL, NULL, NULL),
(286, 4, 38, 'Juri', 'জুড়ী', 1, NULL, NULL, NULL, NULL),
(287, 4, 38, 'Kamolganj', 'কমলগঞ্জ', 1, NULL, NULL, NULL, NULL),
(288, 4, 38, 'Kulaura', 'কুলাউড়া', 1, NULL, NULL, NULL, NULL),
(289, 4, 38, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 1, NULL, NULL, NULL, NULL),
(290, 4, 38, 'Rajnagar', 'রাজনগর', 1, NULL, NULL, NULL, NULL),
(291, 4, 38, 'Sreemangal', 'শ্রীমঙ্গল', 1, NULL, NULL, NULL, NULL),
(292, 4, 21, 'Ajmiriganj', 'আজমিরীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(293, 4, 21, 'Bahubal', 'বাহুবল', 1, NULL, NULL, NULL, NULL),
(294, 4, 21, 'Baniachong', 'বানিয়াচং', 1, NULL, NULL, NULL, NULL),
(295, 4, 21, 'Chunarughat', 'চুনারুঘাট', 1, NULL, NULL, NULL, NULL),
(296, 4, 21, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(297, 4, 21, 'Lakhai', 'লাখাই', 1, NULL, NULL, NULL, NULL),
(298, 4, 21, 'Madhabpur', 'মাধবপুর', 1, NULL, NULL, NULL, NULL),
(299, 4, 21, 'Nabiganj', 'নবীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(300, 4, 21, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(301, 5, 61, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 1, NULL, NULL, NULL, NULL),
(302, 5, 61, 'Chhatak', 'ছাতক', 1, NULL, NULL, NULL, NULL),
(303, 5, 61, 'Derai', 'দিরাই', 1, NULL, NULL, NULL, NULL),
(304, 5, 61, 'Dharmapasha', 'ধর্মপাশা', 1, NULL, NULL, NULL, NULL),
(305, 5, 61, 'Dowarabazar', 'দোয়ারাবাজার', 1, NULL, NULL, NULL, NULL),
(306, 5, 61, 'Jagannathpur', 'জগন্নাথপুর', 1, NULL, NULL, NULL, NULL),
(307, 5, 61, 'Jamalganj', 'জামালগঞ্জ', 1, NULL, NULL, NULL, NULL),
(308, 5, 61, 'Shalla', 'শাল্লা', 1, NULL, NULL, NULL, NULL),
(309, 5, 61, 'South Sunamganj', 'দক্ষিণসুনামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(310, 5, 61, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(311, 5, 61, 'Tahirpur', 'তাহিরপুর', 1, NULL, NULL, NULL, NULL),
(312, 5, 44, 'Belabo', 'বেলাবো', 1, NULL, NULL, NULL, NULL),
(313, 5, 44, 'Monohardi', 'মনোহরদী', 1, NULL, NULL, NULL, NULL),
(314, 5, 44, 'Narsingdisadar', 'নরসিংদী', 1, NULL, NULL, NULL, NULL),
(315, 5, 44, 'Palash', 'পলাশ', 1, NULL, NULL, NULL, NULL),
(316, 5, 44, 'Raipura', 'রায়পুরা', 1, NULL, NULL, NULL, NULL),
(317, 5, 44, 'Shibpur', 'শিবপুর', 1, NULL, NULL, NULL, NULL),
(318, 5, 19, 'Kaliakair', 'কালিয়াকৈর', 1, NULL, NULL, NULL, NULL),
(319, 5, 19, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(320, 5, 19, 'Kapasia', 'কাপাসিয়া', 1, NULL, NULL, NULL, NULL),
(321, 5, 19, 'Sadar', 'গাজীপুর সদর', 1, NULL, NULL, NULL, NULL),
(322, 5, 19, 'Sreepur', 'শ্রীপুর', 1, NULL, NULL, NULL, NULL),
(323, 5, 58, 'Bhedarganj', 'ভেদরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(324, 5, 58, 'Damudya', 'ডামুড্যা', 1, NULL, NULL, NULL, NULL),
(325, 5, 58, 'Gosairhat', 'গোসাইরহাট', 1, NULL, NULL, NULL, NULL),
(326, 5, 58, 'Naria', 'নড়িয়া', 1, NULL, NULL, NULL, NULL),
(327, 5, 58, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 1, NULL, NULL, NULL, NULL),
(328, 5, 58, 'Zajira', 'জাজিরা', 1, NULL, NULL, NULL, NULL),
(329, 5, 43, 'Araihazar', 'আড়াইহাজার', 1, NULL, NULL, NULL, NULL),
(330, 5, 43, 'Bandar', 'বন্দর', 1, NULL, NULL, NULL, NULL),
(331, 5, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(332, 5, 43, 'Rupganj', 'রূপগঞ্জ', 1, NULL, NULL, NULL, NULL),
(333, 5, 43, 'Sonargaon', 'সোনারগাঁ', 1, NULL, NULL, NULL, NULL),
(334, 5, 63, 'Basail', 'বাসাইল', 1, NULL, NULL, NULL, NULL),
(335, 5, 63, 'Bhuapur', 'ভুয়াপুর', 1, NULL, NULL, NULL, NULL),
(336, 5, 63, 'Delduar', 'দেলদুয়ার', 1, NULL, NULL, NULL, NULL),
(337, 5, 63, 'Dhanbari', 'ধনবাড়ী', 1, NULL, NULL, NULL, NULL),
(338, 5, 63, 'Ghatail', 'ঘাটাইল', 1, NULL, NULL, NULL, NULL),
(339, 5, 63, 'Gopalpur', 'গোপালপুর', 1, NULL, NULL, NULL, NULL),
(340, 5, 63, 'Kalihati', 'কালিহাতী', 1, NULL, NULL, NULL, NULL),
(341, 5, 63, 'Madhupur', 'মধুপুর', 1, NULL, NULL, NULL, NULL),
(342, 5, 63, 'Mirzapur', 'মির্জাপুর', 1, NULL, NULL, NULL, NULL),
(343, 5, 63, 'Nagarpur', 'নাগরপুর', 1, NULL, NULL, NULL, NULL),
(344, 5, 63, 'Sakhipur', 'সখিপুর', 1, NULL, NULL, NULL, NULL),
(345, 5, 63, 'Tangailsadar', 'টাঙ্গাইল সদর', 1, NULL, NULL, NULL, NULL),
(346, 5, 29, 'Austagram', 'অষ্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(347, 5, 29, 'Bajitpur', 'বাজিতপুর', 1, NULL, NULL, NULL, NULL),
(348, 5, 29, 'Bhairab', 'ভৈরব', 1, NULL, NULL, NULL, NULL),
(349, 5, 29, 'Hossainpur', 'হোসেনপুর', 1, NULL, NULL, NULL, NULL),
(350, 5, 29, 'Itna', 'ইটনা', 1, NULL, NULL, NULL, NULL),
(351, 5, 29, 'Karimgonj', 'করিমগঞ্জ', 1, NULL, NULL, NULL, NULL),
(352, 5, 29, 'Katiadi', 'কটিয়াদী', 1, NULL, NULL, NULL, NULL),
(353, 5, 29, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(354, 5, 29, 'Kuliarchar', 'কুলিয়ারচর', 1, NULL, NULL, NULL, NULL),
(355, 5, 29, 'Mithamoin', 'মিঠামইন', 1, NULL, NULL, NULL, NULL),
(356, 5, 29, 'Nikli', 'নিকলী', 1, NULL, NULL, NULL, NULL),
(357, 5, 29, 'Pakundia', 'পাকুন্দিয়া', 1, NULL, NULL, NULL, NULL),
(358, 5, 29, 'Tarail', 'তাড়াইল', 1, NULL, NULL, NULL, NULL),
(359, 5, 36, 'Doulatpur', 'দৌলতপুর', 1, NULL, NULL, NULL, NULL),
(360, 5, 36, 'Gior', 'ঘিওর', 1, NULL, NULL, NULL, NULL),
(361, 5, 36, 'Harirampur', 'হরিরামপুর', 1, NULL, NULL, NULL, NULL),
(362, 5, 36, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(363, 5, 36, 'Saturia', 'সাটুরিয়া', 1, NULL, NULL, NULL, NULL),
(364, 5, 36, 'Shibaloy', 'শিবালয়', 1, NULL, NULL, NULL, NULL),
(365, 5, 36, 'Singiar', 'সিংগাইর', 1, NULL, NULL, NULL, NULL),
(366, 5, 14, 'Dhamrai', 'ধামরাই', 1, NULL, NULL, NULL, NULL),
(367, 5, 14, 'Dohar', 'দোহার', 1, NULL, NULL, NULL, NULL),
(368, 5, 14, 'Keraniganj', 'কেরাণীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(369, 5, 14, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(370, 5, 14, 'Savar', 'সাভার', 1, NULL, NULL, NULL, NULL),
(371, 6, 39, 'Gajaria', 'গজারিয়া', 1, NULL, NULL, NULL, NULL),
(372, 6, 39, 'Louhajanj', 'লৌহজং', 1, NULL, NULL, NULL, NULL),
(373, 6, 39, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(374, 6, 39, 'Sirajdikhan', 'সিরাজদিখান', 1, NULL, NULL, NULL, NULL),
(375, 6, 39, 'Sreenagar', 'শ্রীনগর', 1, NULL, NULL, NULL, NULL),
(376, 6, 39, 'Tongibari', 'টংগীবাড়ি', 1, NULL, NULL, NULL, NULL),
(377, 6, 53, 'Baliakandi', 'বালিয়াকান্দি', 1, NULL, NULL, NULL, NULL),
(378, 6, 53, 'Goalanda', 'গোয়ালন্দ', 1, NULL, NULL, NULL, NULL),
(379, 6, 53, 'Kalukhali', 'কালুখালী', 1, NULL, NULL, NULL, NULL),
(380, 6, 53, 'Pangsa', 'পাংশা', 1, NULL, NULL, NULL, NULL),
(381, 6, 53, 'Rajbari Sadar', 'রাজবাড়ী সদর', 1, NULL, NULL, NULL, NULL),
(382, 6, 34, 'Kalkini', 'কালকিনি', 1, NULL, NULL, NULL, NULL),
(383, 6, 34, 'Madaripur Sadar', 'মাদারীপুর সদর', 1, NULL, NULL, NULL, NULL),
(384, 6, 34, 'Rajoir', 'রাজৈর', 1, NULL, NULL, NULL, NULL),
(385, 6, 34, 'Shibchar', 'শিবচর', 1, NULL, NULL, NULL, NULL),
(386, 6, 20, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(387, 6, 20, 'Kashiani', 'কাশিয়ানী', 1, NULL, NULL, NULL, NULL),
(388, 6, 20, 'Kotalipara', 'কোটালীপাড়া', 1, NULL, NULL, NULL, NULL),
(389, 6, 20, 'Muksudpur', 'মুকসুদপুর', 1, NULL, NULL, NULL, NULL),
(390, 6, 20, 'Tungipara', 'টুংগীপাড়া', 1, NULL, NULL, NULL, NULL),
(391, 6, 16, 'Alfadanga', 'আলফাডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(392, 6, 16, 'Bhanga', 'ভাঙ্গা', 1, NULL, NULL, NULL, NULL),
(393, 6, 16, 'Boalmari', 'বোয়ালমারী', 1, NULL, NULL, NULL, NULL),
(394, 6, 16, 'Charbhadrasan', 'চরভদ্রাসন', 1, NULL, NULL, NULL, NULL),
(395, 6, 16, 'Faridpur Sadar', 'ফরিদপুর সদর', 1, NULL, NULL, NULL, NULL),
(396, 6, 16, 'Madhukhali', 'মধুখালী', 1, NULL, NULL, NULL, NULL),
(397, 6, 16, 'Nagarkanda', 'নগরকান্দা', 1, NULL, NULL, NULL, NULL),
(398, 6, 16, 'Sadarpur', 'সদরপুর', 1, NULL, NULL, NULL, NULL),
(399, 6, 16, 'Saltha', 'সালথা', 1, NULL, NULL, NULL, NULL),
(400, 7, 50, 'Atwari', 'আটোয়ারী', 1, NULL, NULL, NULL, NULL),
(401, 7, 50, 'Boda', 'বোদা', 1, NULL, NULL, NULL, NULL),
(402, 7, 50, 'Debiganj', 'দেবীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(403, 7, 50, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 1, NULL, NULL, NULL, NULL),
(404, 7, 50, 'Tetulia', 'তেতুলিয়া', 1, NULL, NULL, NULL, NULL),
(405, 7, 15, 'Birampur', 'বিরামপুর', 1, NULL, NULL, NULL, NULL),
(406, 7, 15, 'Birganj', 'বীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(407, 7, 15, 'Birol', 'বিরল', 1, NULL, NULL, NULL, NULL),
(408, 7, 15, 'Bochaganj', 'বোচাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(409, 7, 15, 'Chirirbandar', 'চিরিরবন্দর', 1, NULL, NULL, NULL, NULL),
(410, 7, 15, 'Dinajpursadar', 'দিনাজপুর সদর', 1, NULL, NULL, NULL, NULL),
(411, 7, 15, 'Fulbari', 'ফুলবাড়ী', 1, NULL, NULL, NULL, NULL),
(412, 7, 15, 'Ghoraghat', 'ঘোড়াঘাট', 1, NULL, NULL, NULL, NULL),
(413, 7, 15, 'Hakimpur', 'হাকিমপুর', 1, NULL, NULL, NULL, NULL),
(414, 7, 15, 'Kaharol', 'কাহারোল', 1, NULL, NULL, NULL, NULL),
(415, 7, 15, 'Khansama', 'খানসামা', 1, NULL, NULL, NULL, NULL),
(416, 7, 15, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(417, 7, 15, 'Parbatipur', 'পার্বতীপুর', 1, NULL, NULL, NULL, NULL),
(418, 7, 33, 'Aditmari', 'আদিতমারী', 1, NULL, NULL, NULL, NULL),
(419, 7, 33, 'Hatibandha', 'হাতীবান্ধা', 1, NULL, NULL, NULL, NULL),
(420, 7, 33, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(421, 7, 33, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 1, NULL, NULL, NULL, NULL),
(422, 7, 33, 'Patgram', 'পাটগ্রাম', 1, NULL, NULL, NULL, NULL),
(423, 7, 47, 'Dimla', 'ডিমলা', 1, NULL, NULL, NULL, NULL),
(424, 7, 47, 'Domar', 'ডোমার', 1, NULL, NULL, NULL, NULL),
(425, 7, 47, 'Jaldhaka', 'জলঢাকা', 1, NULL, NULL, NULL, NULL),
(426, 7, 47, 'Kishorganj', 'কিশোরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(427, 7, 47, 'Nilphamarisadar', 'নীলফামারী সদর', 1, NULL, NULL, NULL, NULL),
(428, 7, 47, 'Syedpur', 'সৈয়দপুর', 1, NULL, NULL, NULL, NULL),
(429, 7, 18, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 1, NULL, NULL, NULL, NULL),
(430, 7, 18, 'Gobindaganj', 'গোবিন্দগঞ্জ', 1, NULL, NULL, NULL, NULL),
(431, 7, 18, 'Palashbari', 'পলাশবাড়ী', 1, NULL, NULL, NULL, NULL),
(432, 7, 18, 'Phulchari', 'ফুলছড়ি', 1, NULL, NULL, NULL, NULL),
(433, 7, 18, 'Sadullapur', 'সাদুল্লাপুর', 1, NULL, NULL, NULL, NULL),
(434, 7, 18, 'Saghata', 'সাঘাটা', 1, NULL, NULL, NULL, NULL),
(435, 7, 18, 'Sundarganj', 'সুন্দরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(436, 7, 64, 'Baliadangi', 'বালিয়াডাঙ্গী', 1, NULL, NULL, NULL, NULL),
(437, 7, 64, 'Haripur', 'হরিপুর', 1, NULL, NULL, NULL, NULL),
(438, 7, 64, 'Pirganj', 'পীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(439, 7, 64, 'Ranisankail', 'রাণীশংকৈল', 1, NULL, NULL, NULL, NULL),
(440, 7, 64, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 1, NULL, NULL, NULL, NULL),
(441, 7, 56, 'Badargonj', 'বদরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(442, 7, 56, 'Gangachara', 'গংগাচড়া', 1, NULL, NULL, NULL, NULL),
(443, 7, 56, 'Kaunia', 'কাউনিয়া', 1, NULL, NULL, NULL, NULL),
(444, 7, 56, 'Mithapukur', 'মিঠাপুকুর', 1, NULL, NULL, NULL, NULL),
(445, 7, 56, 'Pirgacha', 'পীরগাছা', 1, NULL, NULL, NULL, NULL),
(446, 7, 56, 'Pirgonj', 'পীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(447, 7, 56, 'Rangpur Sadar', 'রংপুর সদর', 1, NULL, NULL, NULL, NULL),
(448, 7, 56, 'Taragonj', 'তারাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(449, 7, 30, 'Bhurungamari', 'ভুরুঙ্গামারী', 1, NULL, NULL, NULL, NULL),
(450, 7, 30, 'Charrajibpur', 'চররাজিবপুর', 1, NULL, NULL, NULL, NULL),
(451, 7, 30, 'Chilmari', 'চিলমারী', 1, NULL, NULL, NULL, NULL),
(452, 7, 30, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 1, NULL, NULL, NULL, NULL),
(453, 7, 30, 'Nageshwari', 'নাগেশ্বরী', 1, NULL, NULL, NULL, NULL),
(454, 7, 30, 'Phulbari', 'ফুলবাড়ী', 1, NULL, NULL, NULL, NULL),
(455, 7, 30, 'Rajarhat', 'রাজারহাট', 1, NULL, NULL, NULL, NULL),
(456, 7, 30, 'Rowmari', 'রৌমারী', 1, NULL, NULL, NULL, NULL),
(457, 7, 30, 'Ulipur', 'উলিপুর', 1, NULL, NULL, NULL, NULL),
(458, 8, 59, 'Jhenaigati', 'ঝিনাইগাতী', 1, NULL, NULL, NULL, NULL),
(459, 8, 59, 'Nalitabari', 'নালিতাবাড়ী', 1, NULL, NULL, NULL, NULL),
(460, 8, 59, 'Nokla', 'নকলা', 1, NULL, NULL, NULL, NULL),
(461, 8, 59, 'Sherpur Sadar', 'শেরপুর সদর', 1, NULL, NULL, NULL, NULL),
(462, 8, 59, 'Sreebordi', 'শ্রীবরদী', 1, NULL, NULL, NULL, NULL),
(463, 8, 40, 'Bhaluka', 'ভালুকা', 1, NULL, NULL, NULL, NULL),
(464, 8, 40, 'Dhobaura', 'ধোবাউড়া', 1, NULL, NULL, NULL, NULL),
(465, 8, 40, 'Fulbaria', 'ফুলবাড়ীয়া', 1, NULL, NULL, NULL, NULL),
(466, 8, 40, 'Gafargaon', 'গফরগাঁও', 1, NULL, NULL, NULL, NULL),
(467, 8, 40, 'Gouripur', 'গৌরীপুর', 1, NULL, NULL, NULL, NULL),
(468, 8, 40, 'Haluaghat', 'হালুয়াঘাট', 1, NULL, NULL, NULL, NULL),
(469, 8, 40, 'Iswarganj', 'ঈশ্বরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(470, 8, 40, 'Muktagacha', 'মুক্তাগাছা', 1, NULL, NULL, NULL, NULL),
(471, 8, 40, 'Mymensinghsadar', 'ময়মনসিংহ সদর', 1, NULL, NULL, NULL, NULL),
(472, 8, 40, 'Nandail', 'নান্দাইল', 1, NULL, NULL, NULL, NULL),
(473, 8, 40, 'Phulpur', 'ফুলপুর', 1, NULL, NULL, NULL, NULL),
(474, 8, 40, 'Tarakanda', 'তারাকান্দা', 1, NULL, NULL, NULL, NULL),
(475, 8, 40, 'Trishal', 'ত্রিশাল', 1, NULL, NULL, NULL, NULL),
(476, 8, 22, 'Bokshiganj', 'বকশীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(477, 8, 22, 'Dewangonj', 'দেওয়ানগঞ্জ', 1, NULL, NULL, NULL, NULL),
(478, 8, 22, 'Islampur', 'ইসলামপুর', 1, NULL, NULL, NULL, NULL),
(479, 8, 22, 'Jamalpur Sadar', 'জামালপুর সদর', 1, NULL, NULL, NULL, NULL),
(480, 8, 22, 'Madarganj', 'মাদারগঞ্জ', 1, NULL, NULL, NULL, NULL),
(481, 8, 22, 'Melandah', 'মেলান্দহ', 1, NULL, NULL, NULL, NULL),
(482, 8, 22, 'Sarishabari', 'সরিষাবাড়ী', 1, NULL, NULL, NULL, NULL),
(483, 8, 46, 'Atpara', 'আটপাড়া', 1, NULL, NULL, NULL, NULL),
(484, 8, 46, 'Barhatta', 'বারহাট্টা', 1, NULL, NULL, NULL, NULL),
(485, 8, 46, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL, NULL, NULL),
(486, 8, 46, 'Kalmakanda', 'কলমাকান্দা', 1, NULL, NULL, NULL, NULL),
(487, 8, 46, 'Kendua', 'কেন্দুয়া', 1, NULL, NULL, NULL, NULL),
(488, 8, 46, 'Khaliajuri', 'খালিয়াজুরী', 1, NULL, NULL, NULL, NULL),
(489, 8, 46, 'Madan', 'মদন', 1, NULL, NULL, NULL, NULL),
(490, 8, 46, 'Mohongonj', 'মোহনগঞ্জ', 1, NULL, NULL, NULL, NULL),
(491, 8, 46, 'Netrokona Sadar', 'নেত্রকোণা সদর', 1, NULL, NULL, NULL, NULL),
(492, 8, 46, 'Purbadhala', 'পূর্বধলা', 1, NULL, NULL, NULL, NULL),
(1, 1, 13, 'Barura', 'বরুড়া', 1, NULL, NULL, NULL, NULL),
(2, 1, 13, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 1, NULL, NULL, NULL, NULL),
(3, 1, 13, 'Burichang', 'বুড়িচং', 1, NULL, NULL, NULL, NULL),
(4, 1, 13, 'Chandina', 'চান্দিনা', 1, NULL, NULL, NULL, NULL),
(5, 1, 13, 'Chauddagram', 'চৌদ্দগ্রাম', 1, NULL, NULL, NULL, NULL),
(6, 1, 13, 'Cumillasadar', 'কুমিল্লাসদর', 1, NULL, NULL, NULL, NULL),
(7, 1, 13, 'Daudkandi', 'দাউদকান্দি', 1, NULL, NULL, NULL, NULL),
(8, 1, 13, 'Debidwar', 'দেবিদ্বার', 1, NULL, NULL, NULL, NULL),
(9, 1, 13, 'Homna', 'হোমনা', 1, NULL, NULL, NULL, NULL),
(10, 1, 13, 'Laksam', 'লাকসাম', 1, NULL, NULL, NULL, NULL),
(11, 1, 13, 'Lalmai', 'লালমাই', 1, NULL, NULL, NULL, NULL),
(12, 1, 13, 'Meghna', 'মেঘনা', 1, NULL, NULL, NULL, NULL),
(13, 1, 13, 'Monohargonj', 'মনোহরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(14, 1, 13, 'Muradnagar', 'মুরাদনগর', 1, NULL, NULL, NULL, NULL),
(15, 1, 13, 'Nangalkot', 'নাঙ্গলকোট', 1, NULL, NULL, NULL, NULL),
(16, 1, 13, 'Sadarsouth', 'সদরদক্ষিণ', 1, NULL, NULL, NULL, NULL),
(17, 1, 13, 'Titas', 'তিতাস', 1, NULL, NULL, NULL, NULL),
(18, 1, 17, 'Chhagalnaiya', 'ছাগলনাইয়া', 1, NULL, NULL, NULL, NULL),
(19, 1, 17, 'Daganbhuiyan', 'দাগনভূঞা', 1, NULL, NULL, NULL, NULL),
(20, 1, 17, 'Feni Sadar', 'ফেনী সদর', 1, NULL, NULL, NULL, NULL),
(21, 1, 17, 'Fulgazi', 'ফুলগাজী', 1, NULL, NULL, NULL, NULL),
(22, 1, 17, 'Parshuram', 'পরশুরাম', 1, NULL, NULL, NULL, NULL),
(23, 1, 17, 'Sonagazi', 'সোনাগাজী', 1, NULL, NULL, NULL, NULL),
(24, 1, 7, 'Akhaura', 'আখাউড়া', 1, NULL, NULL, NULL, NULL),
(25, 1, 7, 'Ashuganj', 'আশুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(26, 1, 7, 'Bancharampur', 'বাঞ্ছারামপুর', 1, NULL, NULL, NULL, NULL),
(27, 1, 7, 'Bijoynagar', 'বিজয়নগর', 1, NULL, NULL, NULL, NULL),
(28, 1, 7, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 1, NULL, NULL, NULL, NULL),
(29, 1, 7, 'Kasba', 'কসবা', 1, NULL, NULL, NULL, NULL),
(30, 1, 7, 'Nabinagar', 'নবীনগর', 1, NULL, NULL, NULL, NULL),
(31, 1, 7, 'Nasirnagar', 'নাসিরনগর', 1, NULL, NULL, NULL, NULL),
(32, 1, 7, 'Sarail', 'সরাইল', 1, NULL, NULL, NULL, NULL),
(33, 1, 55, 'Baghaichari', 'বাঘাইছড়ি', 1, NULL, NULL, NULL, NULL),
(34, 1, 55, 'Barkal', 'বরকল', 1, NULL, NULL, NULL, NULL),
(35, 1, 55, 'Belaichari', 'বিলাইছড়ি', 1, NULL, NULL, NULL, NULL),
(36, 1, 55, 'Juraichari', 'জুরাছড়ি', 1, NULL, NULL, NULL, NULL),
(37, 1, 55, 'Kaptai', 'কাপ্তাই', 1, NULL, NULL, NULL, NULL),
(38, 1, 55, 'Kawkhali', 'কাউখালী', 1, NULL, NULL, NULL, NULL),
(39, 1, 55, 'Langadu', 'লংগদু', 1, NULL, NULL, NULL, NULL),
(40, 1, 55, 'Naniarchar', 'নানিয়ারচর', 1, NULL, NULL, NULL, NULL),
(41, 1, 55, 'Rajasthali', 'রাজস্থলী', 1, NULL, NULL, NULL, NULL),
(42, 1, 55, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 1, NULL, NULL, NULL, NULL),
(43, 1, 48, 'Begumganj', 'বেগমগঞ্জ', 1, NULL, NULL, NULL, NULL),
(44, 1, 48, 'Chatkhil', 'চাটখিল', 1, NULL, NULL, NULL, NULL),
(45, 1, 48, 'Companiganj', 'কোম্পানীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(46, 1, 48, 'Hatia', 'হাতিয়া', 1, NULL, NULL, NULL, NULL),
(47, 1, 48, 'Kabirhat', 'কবিরহাট', 1, NULL, NULL, NULL, NULL),
(48, 1, 48, 'Noakhali Sadar', 'নোয়াখালী', 1, NULL, NULL, NULL, NULL),
(49, 1, 48, 'Senbug', 'সেনবাগ', 1, NULL, NULL, NULL, NULL),
(50, 1, 48, 'Sonaimuri', 'সোনাইমুড়ী', 1, NULL, NULL, NULL, NULL),
(51, 1, 48, 'Subarnachar', 'সুবর্ণচর', 1, NULL, NULL, NULL, NULL),
(52, 1, 8, 'Chandpur Sadar', 'চাঁদপুর সদর', 1, NULL, NULL, NULL, NULL),
(53, 1, 8, 'Faridgonj', 'ফরিদগঞ্জ', 1, NULL, NULL, NULL, NULL),
(54, 1, 8, 'Haimchar', 'হাইমচর', 1, NULL, NULL, NULL, NULL),
(55, 1, 8, 'Hajiganj', 'হাজীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(56, 1, 8, 'Kachua', 'কচুয়া', 1, NULL, NULL, NULL, NULL),
(57, 1, 8, 'Matlabnorth', 'মতলব', 1, NULL, NULL, NULL, NULL),
(58, 1, 8, 'Matlabsouth', 'মতলব', 1, NULL, NULL, NULL, NULL),
(59, 1, 8, 'Shahrasti', 'শাহরাস্তি', 1, NULL, NULL, NULL, NULL),
(60, 1, 32, 'Kamalnagar', 'কমলনগর', 1, NULL, NULL, NULL, NULL),
(61, 1, 32, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 1, NULL, NULL, NULL, NULL),
(62, 1, 32, 'Raipur', 'রায়পুর', 1, NULL, NULL, NULL, NULL),
(63, 1, 32, 'Ramganj', 'রামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(64, 1, 32, 'Ramgati', 'রামগতি', 1, NULL, NULL, NULL, NULL),
(65, 1, 10, 'Anwara', 'আনোয়ারা', 1, NULL, NULL, NULL, NULL),
(66, 1, 10, 'Banshkhali', 'বাঁশখালী', 1, NULL, NULL, NULL, NULL),
(67, 1, 10, 'Boalkhali', 'বোয়ালখালী', 1, NULL, NULL, NULL, NULL),
(68, 1, 10, 'Chandanaish', 'চন্দনাইশ', 1, NULL, NULL, NULL, NULL),
(69, 1, 10, 'Fatikchhari', 'ফটিকছড়ি', 1, NULL, NULL, NULL, NULL),
(70, 1, 10, 'Hathazari', 'হাটহাজারী', 1, NULL, NULL, NULL, NULL),
(71, 1, 10, 'Karnafuli', 'কর্ণফুলী', 1, NULL, NULL, NULL, NULL),
(72, 1, 10, 'Lohagara', 'লোহাগাড়া', 1, NULL, NULL, NULL, NULL),
(73, 1, 10, 'Mirsharai', 'মীরসরাই', 1, NULL, NULL, NULL, NULL),
(74, 1, 10, 'Patiya', 'পটিয়া', 1, NULL, NULL, NULL, NULL),
(75, 1, 10, 'Rangunia', 'রাঙ্গুনিয়া', 1, NULL, NULL, NULL, NULL),
(76, 1, 10, 'Raozan', 'রাউজান', 1, NULL, NULL, NULL, NULL),
(77, 1, 10, 'Sandwip', 'সন্দ্বীপ', 1, NULL, NULL, NULL, NULL),
(78, 1, 10, 'Satkania', 'সাতকানিয়া', 1, NULL, NULL, NULL, NULL),
(79, 1, 10, 'Sitakunda', 'সীতাকুন্ড', 1, NULL, NULL, NULL, NULL),
(80, 1, 12, 'Chakaria', 'চকরিয়া', 1, NULL, NULL, NULL, NULL),
(81, 1, 12, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 1, NULL, NULL, NULL, NULL),
(82, 1, 12, 'Kutubdia', 'কুতুবদিয়া', 1, NULL, NULL, NULL, NULL),
(83, 1, 12, 'Moheshkhali', 'মহেশখালী', 1, NULL, NULL, NULL, NULL),
(84, 1, 12, 'Pekua', 'পেকুয়া', 1, NULL, NULL, NULL, NULL),
(85, 1, 12, 'Ramu', 'রামু', 1, NULL, NULL, NULL, NULL),
(86, 1, 12, 'Teknaf', 'টেকনাফ', 1, NULL, NULL, NULL, NULL),
(87, 1, 12, 'Ukhiya', 'উখিয়া', 1, NULL, NULL, NULL, NULL),
(88, 1, 27, 'Dighinala', 'দিঘীনালা', 1, NULL, NULL, NULL, NULL),
(89, 1, 27, 'Guimara', 'গুইমারা', 1, NULL, NULL, NULL, NULL),
(90, 1, 27, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 1, NULL, NULL, NULL, NULL),
(91, 1, 27, 'Laxmichhari', 'লক্ষীছড়ি', 1, NULL, NULL, NULL, NULL),
(92, 1, 27, 'Manikchari', 'মানিকছড়ি', 1, NULL, NULL, NULL, NULL),
(93, 1, 27, 'Matiranga', 'মাটিরাঙ্গা', 1, NULL, NULL, NULL, NULL),
(94, 1, 27, 'Mohalchari', 'মহালছড়ি', 1, NULL, NULL, NULL, NULL),
(95, 1, 27, 'Panchari', 'পানছড়ি', 1, NULL, NULL, NULL, NULL),
(96, 1, 27, 'Ramgarh', 'রামগড়', 1, NULL, NULL, NULL, NULL),
(97, 1, 2, 'Alikadam', 'আলীকদম', 1, NULL, NULL, NULL, NULL),
(98, 1, 2, 'Bandarban Sadar', 'বান্দরবান সদর', 1, NULL, NULL, NULL, NULL),
(99, 1, 2, 'Lama', 'লামা', 1, NULL, NULL, NULL, NULL),
(100, 1, 2, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 1, NULL, NULL, NULL, NULL),
(101, 1, 2, 'Rowangchhari', 'রোয়াংছড়ি', 1, NULL, NULL, NULL, NULL),
(102, 1, 2, 'Ruma', 'রুমা', 1, NULL, NULL, NULL, NULL),
(103, 1, 2, 'Thanchi', 'থানচি', 1, NULL, NULL, NULL, NULL),
(104, 2, 60, 'Belkuchi', 'বেলকুচি', 1, NULL, NULL, NULL, NULL),
(105, 2, 60, 'Chauhali', 'চৌহালি', 1, NULL, NULL, NULL, NULL),
(106, 2, 60, 'Kamarkhand', 'কামারখন্দ', 1, NULL, NULL, NULL, NULL),
(107, 2, 60, 'Kazipur', 'কাজীপুর', 1, NULL, NULL, NULL, NULL),
(108, 2, 60, 'Raigonj', 'রায়গঞ্জ', 1, NULL, NULL, NULL, NULL),
(109, 2, 60, 'Shahjadpur', 'শাহজাদপুর', 1, NULL, NULL, NULL, NULL),
(110, 2, 60, 'Sirajganjsadar', 'সিরাজগঞ্জ', 1, NULL, NULL, NULL, NULL),
(111, 2, 60, 'Tarash', 'তাড়াশ', 1, NULL, NULL, NULL, NULL),
(112, 2, 60, 'Ullapara', 'উল্লাপাড়া', 1, NULL, NULL, NULL, NULL),
(113, 2, 49, 'Atghoria', 'আটঘরিয়া', 1, NULL, NULL, NULL, NULL),
(114, 2, 49, 'Bera', 'বেড়া', 1, NULL, NULL, NULL, NULL),
(115, 2, 49, 'Bhangura', 'ভাঙ্গুড়া', 1, NULL, NULL, NULL, NULL),
(116, 2, 49, 'Chatmohar', 'চাটমোহর', 1, NULL, NULL, NULL, NULL),
(117, 2, 49, 'Faridpur', 'ফরিদপুর', 1, NULL, NULL, NULL, NULL),
(118, 2, 49, 'Ishurdi', 'ঈশ্বরদী', 1, NULL, NULL, NULL, NULL),
(119, 2, 49, 'Pabnasadar', 'পাবনা সদর', 1, NULL, NULL, NULL, NULL),
(120, 2, 49, 'Santhia', 'সাঁথিয়া', 1, NULL, NULL, NULL, NULL),
(121, 2, 49, 'Sujanagar', 'সুজানগর', 1, NULL, NULL, NULL, NULL),
(122, 2, 6, 'Adamdighi', 'আদমদিঘি', 1, NULL, NULL, NULL, NULL),
(123, 2, 6, 'Bogura Sadar', 'বগুড়া সদর', 1, NULL, NULL, NULL, NULL),
(124, 2, 6, 'Dhunot', 'ধুনট', 1, NULL, NULL, NULL, NULL),
(125, 2, 6, 'Dupchanchia', 'দুপচাচিঁয়া', 1, NULL, NULL, NULL, NULL),
(126, 2, 6, 'Gabtali', 'গাবতলী', 1, NULL, NULL, NULL, NULL),
(127, 2, 6, 'Kahaloo', 'কাহালু', 1, NULL, NULL, NULL, NULL),
(128, 2, 6, 'Nondigram', 'নন্দিগ্রাম', 1, NULL, NULL, NULL, NULL),
(129, 2, 6, 'Shajahanpur', 'শাজাহানপুর', 1, NULL, NULL, NULL, NULL),
(130, 2, 6, 'Shariakandi', 'সারিয়াকান্দি', 1, NULL, NULL, NULL, NULL),
(131, 2, 6, 'Sherpur', 'শেরপুর', 1, NULL, NULL, NULL, NULL),
(132, 2, 6, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(133, 2, 6, 'Sonatala', 'সোনাতলা', 1, NULL, NULL, NULL, NULL),
(134, 2, 54, 'Bagha', 'বাঘা', 1, NULL, NULL, NULL, NULL),
(135, 2, 54, 'Bagmara', 'বাগমারা', 1, NULL, NULL, NULL, NULL),
(136, 2, 54, 'Charghat', 'চারঘাট', 1, NULL, NULL, NULL, NULL),
(137, 2, 54, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL, NULL, NULL),
(138, 2, 54, 'Godagari', 'গোদাগাড়ী', 1, NULL, NULL, NULL, NULL),
(139, 2, 54, 'Mohonpur', 'মোহনপুর', 1, NULL, NULL, NULL, NULL),
(140, 2, 54, 'Paba', 'পবা', 1, NULL, NULL, NULL, NULL),
(141, 2, 54, 'Puthia', 'পুঠিয়া', 1, NULL, NULL, NULL, NULL),
(142, 2, 54, 'Tanore', 'তানোর', 1, NULL, NULL, NULL, NULL),
(143, 2, 45, 'Bagatipara', 'বাগাতিপাড়া', 1, NULL, NULL, NULL, NULL),
(144, 2, 45, 'Baraigram', 'বড়াইগ্রাম', 1, NULL, NULL, NULL, NULL),
(145, 2, 45, 'Gurudaspur', 'গুরুদাসপুর', 1, NULL, NULL, NULL, NULL),
(146, 2, 45, 'Lalpur', 'লালপুর', 1, NULL, NULL, NULL, NULL),
(147, 2, 45, 'Naldanga', 'নলডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(148, 2, 45, 'Natore Sadar', 'নাটোর সদর', 1, NULL, NULL, NULL, NULL),
(149, 2, 45, 'Singra', 'সিংড়া', 1, NULL, NULL, NULL, NULL),
(150, 2, 26, 'Akkelpur', 'আক্কেলপুর', 1, NULL, NULL, NULL, NULL),
(151, 2, 26, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 1, NULL, NULL, NULL, NULL),
(152, 2, 26, 'Kalai', 'কালাই', 1, NULL, NULL, NULL, NULL),
(153, 2, 26, 'Khetlal', 'ক্ষেতলাল', 1, NULL, NULL, NULL, NULL),
(154, 2, 26, 'Panchbibi', 'পাঁচবিবি', 1, NULL, NULL, NULL, NULL),
(155, 2, 9, 'Bholahat', 'ভোলাহাট', 1, NULL, NULL, NULL, NULL),
(156, 2, 9, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(157, 2, 9, 'Gomostapur', 'গোমস্তাপুর', 1, NULL, NULL, NULL, NULL),
(158, 2, 9, 'Nachol', 'নাচোল', 1, NULL, NULL, NULL, NULL),
(159, 2, 9, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(160, 2, 41, 'Atrai', 'আত্রাই', 1, NULL, NULL, NULL, NULL),
(161, 2, 41, 'Badalgachi', 'বদলগাছী', 1, NULL, NULL, NULL, NULL),
(162, 2, 41, 'Dhamoirhat', 'ধামইরহাট', 1, NULL, NULL, NULL, NULL),
(163, 2, 41, 'Manda', 'মান্দা', 1, NULL, NULL, NULL, NULL),
(164, 2, 41, 'Mohadevpur', 'মহাদেবপুর', 1, NULL, NULL, NULL, NULL),
(165, 2, 41, 'Naogaon Sadar', 'নওগাঁ সদর', 1, NULL, NULL, NULL, NULL),
(166, 2, 41, 'Niamatpur', 'নিয়ামতপুর', 1, NULL, NULL, NULL, NULL),
(167, 2, 41, 'Patnitala', 'পত্নিতলা', 1, NULL, NULL, NULL, NULL),
(168, 2, 41, 'Porsha', 'পোরশা', 1, NULL, NULL, NULL, NULL),
(169, 2, 41, 'Raninagar', 'রাণীনগর', 1, NULL, NULL, NULL, NULL),
(170, 2, 41, 'Sapahar', 'সাপাহার', 1, NULL, NULL, NULL, NULL),
(171, 2, 23, 'Abhaynagar', 'অভয়নগর', 1, NULL, NULL, NULL, NULL),
(172, 2, 23, 'Bagherpara', 'বাঘারপাড়া', 1, NULL, NULL, NULL, NULL),
(173, 2, 23, 'Chougachha', 'চৌগাছা', 1, NULL, NULL, NULL, NULL),
(174, 2, 23, 'Jashore Sadar', 'যশোর সদর', 1, NULL, NULL, NULL, NULL),
(175, 2, 23, 'Jhikargacha', 'ঝিকরগাছা', 1, NULL, NULL, NULL, NULL),
(176, 2, 23, 'Keshabpur', 'কেশবপুর', 1, NULL, NULL, NULL, NULL),
(177, 2, 23, 'Manirampur', 'মণিরামপুর', 1, NULL, NULL, NULL, NULL),
(178, 2, 23, 'Sharsha', 'শার্শা', 1, NULL, NULL, NULL, NULL),
(179, 2, 57, 'Assasuni', 'আশাশুনি', 1, NULL, NULL, NULL, NULL),
(180, 2, 57, 'Debhata', 'দেবহাটা', 1, NULL, NULL, NULL, NULL),
(181, 2, 57, 'Kalaroa', 'কলারোয়া', 1, NULL, NULL, NULL, NULL),
(182, 2, 57, 'Kaliganj', 'কালিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(183, 2, 57, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 1, NULL, NULL, NULL, NULL),
(184, 2, 57, 'Shyamnagar', 'শ্যামনগর', 1, NULL, NULL, NULL, NULL),
(185, 2, 57, 'Tala', 'তালা', 1, NULL, NULL, NULL, NULL),
(186, 2, 37, 'Gangni', 'গাংনী', 1, NULL, NULL, NULL, NULL),
(187, 2, 37, 'Meherpursadar', 'মেহেরপুর সদর', 1, NULL, NULL, NULL, NULL),
(188, 2, 37, 'Mujibnagar', 'মুজিবনগর', 1, NULL, NULL, NULL, NULL),
(189, 2, 42, 'Kalia', 'কালিয়া', 1, NULL, NULL, NULL, NULL),
(190, 2, 42, 'Lohagara', 'লোহাগড়া', 1, NULL, NULL, NULL, NULL),
(191, 2, 42, 'Narail Sadar', 'নড়াইল সদর', 1, NULL, NULL, NULL, NULL),
(192, 2, 11, 'Alamdanga', 'আলমডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(193, 2, 11, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 1, NULL, NULL, NULL, NULL),
(194, 2, 11, 'Damurhuda', 'দামুড়হুদা', 1, NULL, NULL, NULL, NULL),
(195, 2, 11, 'Jibannagar', 'জীবননগর', 1, NULL, NULL, NULL, NULL),
(196, 2, 31, 'Bheramara', 'ভেড়ামারা', 1, NULL, NULL, NULL, NULL),
(197, 2, 31, 'Daulatpur', 'দৌলতপুর', 1, NULL, NULL, NULL, NULL),
(198, 2, 31, 'Khoksa', 'খোকসা', 1, NULL, NULL, NULL, NULL),
(199, 2, 31, 'Kumarkhali', 'কুমারখালী', 1, NULL, NULL, NULL, NULL),
(200, 2, 31, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 1, NULL, NULL, NULL, NULL),
(201, 2, 31, 'Mirpurkushtia', 'মিরপুর', 1, NULL, NULL, NULL, NULL),
(202, 2, 35, 'Magura Sadar', 'মাগুরা সদর', 1, NULL, NULL, NULL, NULL),
(203, 2, 35, 'Mohammadpur', 'মহম্মদপুর', 1, NULL, NULL, NULL, NULL),
(204, 2, 35, 'Shalikha', 'শালিখা', 1, NULL, NULL, NULL, NULL),
(205, 2, 35, 'Sreepur', 'শ্রীপুর', 1, NULL, NULL, NULL, NULL),
(206, 2, 28, 'Botiaghata', 'বটিয়াঘাটা', 1, NULL, NULL, NULL, NULL),
(207, 2, 28, 'Dakop', 'দাকোপ', 1, NULL, NULL, NULL, NULL),
(208, 2, 28, 'Digholia', 'দিঘলিয়া', 1, NULL, NULL, NULL, NULL),
(209, 2, 28, 'Dumuria', 'ডুমুরিয়া', 1, NULL, NULL, NULL, NULL),
(210, 2, 28, 'Fultola', 'ফুলতলা', 1, NULL, NULL, NULL, NULL),
(211, 2, 28, 'Koyra', 'কয়রা', 1, NULL, NULL, NULL, NULL),
(212, 2, 28, 'Paikgasa', 'পাইকগাছা', 1, NULL, NULL, NULL, NULL),
(213, 2, 28, 'Rupsha', 'রূপসা', 1, NULL, NULL, NULL, NULL),
(214, 2, 28, 'Terokhada', 'তেরখাদা', 1, NULL, NULL, NULL, NULL),
(215, 3, 1, 'Chitalmari', 'চিতলমারী', 1, NULL, NULL, NULL, NULL),
(216, 3, 1, 'Fakirhat', 'ফকিরহাট', 1, NULL, NULL, NULL, NULL),
(217, 3, 1, 'Kachua', 'কচুয়া', 1, NULL, NULL, NULL, NULL),
(218, 3, 1, 'Mollahat', 'মোল্লাহাট', 1, NULL, NULL, NULL, NULL),
(219, 3, 1, 'Mongla', 'মোংলা', 1, NULL, NULL, NULL, NULL),
(220, 3, 1, 'Morrelganj', 'মোড়েলগঞ্জ', 1, NULL, NULL, NULL, NULL),
(221, 3, 1, 'Rampal', 'রামপাল', 1, NULL, NULL, NULL, NULL),
(222, 3, 1, 'Sadar', 'বাগেরহাট সদর', 1, NULL, NULL, NULL, NULL),
(223, 3, 1, 'Sarankhola', 'শরণখোলা', 1, NULL, NULL, NULL, NULL),
(224, 3, 25, 'Harinakundu', 'হরিণাকুন্ডু', 1, NULL, NULL, NULL, NULL),
(225, 3, 25, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 1, NULL, NULL, NULL, NULL),
(226, 3, 25, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(227, 3, 25, 'Kot8', 'কোটচাঁদপুর', 1, NULL, NULL, NULL, NULL),
(228, 3, 25, 'Moheshpur', 'মহেশপুর', 1, NULL, NULL, NULL, NULL),
(229, 3, 25, 'Shailkupa', 'শৈলকুপা', 1, NULL, NULL, NULL, NULL),
(230, 3, 51, 'Bauphal', 'বাউফল', 1, NULL, NULL, NULL, NULL),
(231, 3, 24, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 1, NULL, NULL, NULL, NULL),
(232, 3, 24, 'Kathalia', 'কাঠালিয়া', 1, NULL, NULL, NULL, NULL),
(233, 3, 24, 'Nalchity', 'নলছিটি', 1, NULL, NULL, NULL, NULL),
(234, 3, 24, 'Rajapur', 'রাজাপুর', 1, NULL, NULL, NULL, NULL),
(235, 3, 51, 'Dashmina', 'দশমিনা', 1, NULL, NULL, NULL, NULL),
(236, 3, 51, 'Dumki', 'দুমকি', 1, NULL, NULL, NULL, NULL),
(237, 3, 51, 'Galachipa', 'গলাচিপা', 1, NULL, NULL, NULL, NULL),
(238, 3, 51, 'Kalapara', 'কলাপাড়া', 1, NULL, NULL, NULL, NULL),
(239, 3, 51, 'Mirzaganj', 'মির্জাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(240, 3, 51, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 1, NULL, NULL, NULL, NULL),
(241, 3, 51, 'Rangabali', 'রাঙ্গাবালী', 1, NULL, NULL, NULL, NULL),
(242, 3, 52, 'Bhandaria', 'ভান্ডারিয়া', 1, NULL, NULL, NULL, NULL),
(243, 3, 52, 'Indurkani', 'ইন্দুরকানী', 1, NULL, NULL, NULL, NULL),
(244, 3, 52, 'Kawkhali', 'কাউখালী', 1, NULL, NULL, NULL, NULL),
(245, 3, 52, 'Mathbaria', 'মঠবাড়ীয়া', 1, NULL, NULL, NULL, NULL),
(246, 3, 52, 'Nazirpur', 'নাজিরপুর', 1, NULL, NULL, NULL, NULL),
(247, 3, 52, 'Nesarabad', 'নেছারাবাদ', 1, NULL, NULL, NULL, NULL),
(248, 3, 52, 'Pirojpur Sadar', 'পিরোজপুর সদর', 1, NULL, NULL, NULL, NULL),
(249, 3, 4, 'Agailjhara', 'আগৈলঝাড়া', 1, NULL, NULL, NULL, NULL),
(250, 3, 4, 'Babuganj', 'বাবুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(251, 3, 4, 'Bakerganj', 'বাকেরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(252, 3, 4, 'Banaripara', 'বানারীপাড়া', 1, NULL, NULL, NULL, NULL),
(253, 3, 4, 'Barishal Sadar', 'বরিশাল সদর', 1, NULL, NULL, NULL, NULL),
(254, 3, 4, 'Gournadi', 'গৌরনদী', 1, NULL, NULL, NULL, NULL),
(255, 3, 4, 'Hizla', 'হিজলা', 1, NULL, NULL, NULL, NULL),
(256, 3, 4, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(257, 3, 4, 'Muladi', 'মুলাদী', 1, NULL, NULL, NULL, NULL),
(258, 3, 4, 'Wazirpur', 'উজিরপুর', 1, NULL, NULL, NULL, NULL),
(259, 3, 5, 'Bhola Sadar', 'ভোলা সদর', 1, NULL, NULL, NULL, NULL),
(260, 3, 5, 'Borhanuddin', 'বোরহানউদ্দিন', 1, NULL, NULL, NULL, NULL),
(261, 3, 5, 'Charfesson', 'চরফ্যাশন', 1, NULL, NULL, NULL, NULL),
(262, 3, 5, 'Doulatkhan', 'দৌলতখান', 1, NULL, NULL, NULL, NULL),
(263, 3, 5, 'Lalmohan', 'লালমোহন', 1, NULL, NULL, NULL, NULL),
(264, 3, 5, 'Monpura', 'মনপুরা', 1, NULL, NULL, NULL, NULL),
(265, 3, 5, 'Tazumuddin', 'তজুমদ্দিন', 1, NULL, NULL, NULL, NULL),
(266, 4, 3, 'Amtali', 'আমতলী', 1, NULL, NULL, NULL, NULL),
(267, 4, 3, 'Bamna', 'বামনা', 1, NULL, NULL, NULL, NULL),
(268, 4, 3, 'Betagi', 'বেতাগী', 1, NULL, NULL, NULL, NULL),
(269, 4, 3, 'Pathorghata', 'পাথরঘাটা', 1, NULL, NULL, NULL, NULL),
(270, 4, 3, 'Sadar', 'বরগুনা সদর', 1, NULL, NULL, NULL, NULL),
(271, 4, 3, 'Taltali', 'তালতলি', 1, NULL, NULL, NULL, NULL),
(272, 4, 62, 'Balaganj', 'বালাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(273, 4, 62, 'Beanibazar', 'বিয়ানীবাজার', 1, NULL, NULL, NULL, NULL),
(274, 4, 62, 'Bishwanath', 'বিশ্বনাথ', 1, NULL, NULL, NULL, NULL),
(275, 4, 62, 'Companiganj', 'কোম্পানীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(276, 4, 62, 'Dakshinsurma', 'দক্ষিণসুরমা', 1, NULL, NULL, NULL, NULL),
(277, 4, 62, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(278, 4, 62, 'Golapganj', 'গোলাপগঞ্জ', 1, NULL, NULL, NULL, NULL),
(279, 4, 62, 'Gowainghat', 'গোয়াইনঘাট', 1, NULL, NULL, NULL, NULL),
(280, 4, 62, 'Jaintiapur', 'জৈন্তাপুর', 1, NULL, NULL, NULL, NULL),
(281, 4, 62, 'Kanaighat', 'কানাইঘাট', 1, NULL, NULL, NULL, NULL),
(282, 4, 62, 'Osmaninagar', 'ওসমানী', 1, NULL, NULL, NULL, NULL),
(283, 4, 62, 'Sylhet Sadar', 'সিলেট সদর', 1, NULL, NULL, NULL, NULL),
(284, 4, 62, 'Zakiganj', 'জকিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(285, 4, 38, 'Barlekha', 'বড়লেখা', 1, NULL, NULL, NULL, NULL),
(286, 4, 38, 'Juri', 'জুড়ী', 1, NULL, NULL, NULL, NULL),
(287, 4, 38, 'Kamolganj', 'কমলগঞ্জ', 1, NULL, NULL, NULL, NULL),
(288, 4, 38, 'Kulaura', 'কুলাউড়া', 1, NULL, NULL, NULL, NULL),
(289, 4, 38, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 1, NULL, NULL, NULL, NULL),
(290, 4, 38, 'Rajnagar', 'রাজনগর', 1, NULL, NULL, NULL, NULL),
(291, 4, 38, 'Sreemangal', 'শ্রীমঙ্গল', 1, NULL, NULL, NULL, NULL),
(292, 4, 21, 'Ajmiriganj', 'আজমিরীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(293, 4, 21, 'Bahubal', 'বাহুবল', 1, NULL, NULL, NULL, NULL),
(294, 4, 21, 'Baniachong', 'বানিয়াচং', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` (`id`, `division_id`, `district_id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(295, 4, 21, 'Chunarughat', 'চুনারুঘাট', 1, NULL, NULL, NULL, NULL),
(296, 4, 21, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(297, 4, 21, 'Lakhai', 'লাখাই', 1, NULL, NULL, NULL, NULL),
(298, 4, 21, 'Madhabpur', 'মাধবপুর', 1, NULL, NULL, NULL, NULL),
(299, 4, 21, 'Nabiganj', 'নবীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(300, 4, 21, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(301, 5, 61, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 1, NULL, NULL, NULL, NULL),
(302, 5, 61, 'Chhatak', 'ছাতক', 1, NULL, NULL, NULL, NULL),
(303, 5, 61, 'Derai', 'দিরাই', 1, NULL, NULL, NULL, NULL),
(304, 5, 61, 'Dharmapasha', 'ধর্মপাশা', 1, NULL, NULL, NULL, NULL),
(305, 5, 61, 'Dowarabazar', 'দোয়ারাবাজার', 1, NULL, NULL, NULL, NULL),
(306, 5, 61, 'Jagannathpur', 'জগন্নাথপুর', 1, NULL, NULL, NULL, NULL),
(307, 5, 61, 'Jamalganj', 'জামালগঞ্জ', 1, NULL, NULL, NULL, NULL),
(308, 5, 61, 'Shalla', 'শাল্লা', 1, NULL, NULL, NULL, NULL),
(309, 5, 61, 'South Sunamganj', 'দক্ষিণসুনামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(310, 5, 61, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(311, 5, 61, 'Tahirpur', 'তাহিরপুর', 1, NULL, NULL, NULL, NULL),
(312, 5, 44, 'Belabo', 'বেলাবো', 1, NULL, NULL, NULL, NULL),
(313, 5, 44, 'Monohardi', 'মনোহরদী', 1, NULL, NULL, NULL, NULL),
(314, 5, 44, 'Narsingdisadar', 'নরসিংদী', 1, NULL, NULL, NULL, NULL),
(315, 5, 44, 'Palash', 'পলাশ', 1, NULL, NULL, NULL, NULL),
(316, 5, 44, 'Raipura', 'রায়পুরা', 1, NULL, NULL, NULL, NULL),
(317, 5, 44, 'Shibpur', 'শিবপুর', 1, NULL, NULL, NULL, NULL),
(318, 5, 19, 'Kaliakair', 'কালিয়াকৈর', 1, NULL, NULL, NULL, NULL),
(319, 5, 19, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(320, 5, 19, 'Kapasia', 'কাপাসিয়া', 1, NULL, NULL, NULL, NULL),
(321, 5, 19, 'Sadar', 'গাজীপুর সদর', 1, NULL, NULL, NULL, NULL),
(322, 5, 19, 'Sreepur', 'শ্রীপুর', 1, NULL, NULL, NULL, NULL),
(323, 5, 58, 'Bhedarganj', 'ভেদরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(324, 5, 58, 'Damudya', 'ডামুড্যা', 1, NULL, NULL, NULL, NULL),
(325, 5, 58, 'Gosairhat', 'গোসাইরহাট', 1, NULL, NULL, NULL, NULL),
(326, 5, 58, 'Naria', 'নড়িয়া', 1, NULL, NULL, NULL, NULL),
(327, 5, 58, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 1, NULL, NULL, NULL, NULL),
(328, 5, 58, 'Zajira', 'জাজিরা', 1, NULL, NULL, NULL, NULL),
(329, 5, 43, 'Araihazar', 'আড়াইহাজার', 1, NULL, NULL, NULL, NULL),
(330, 5, 43, 'Bandar', 'বন্দর', 1, NULL, NULL, NULL, NULL),
(331, 5, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(332, 5, 43, 'Rupganj', 'রূপগঞ্জ', 1, NULL, NULL, NULL, NULL),
(333, 5, 43, 'Sonargaon', 'সোনারগাঁ', 1, NULL, NULL, NULL, NULL),
(334, 5, 63, 'Basail', 'বাসাইল', 1, NULL, NULL, NULL, NULL),
(335, 5, 63, 'Bhuapur', 'ভুয়াপুর', 1, NULL, NULL, NULL, NULL),
(336, 5, 63, 'Delduar', 'দেলদুয়ার', 1, NULL, NULL, NULL, NULL),
(337, 5, 63, 'Dhanbari', 'ধনবাড়ী', 1, NULL, NULL, NULL, NULL),
(338, 5, 63, 'Ghatail', 'ঘাটাইল', 1, NULL, NULL, NULL, NULL),
(339, 5, 63, 'Gopalpur', 'গোপালপুর', 1, NULL, NULL, NULL, NULL),
(340, 5, 63, 'Kalihati', 'কালিহাতী', 1, NULL, NULL, NULL, NULL),
(341, 5, 63, 'Madhupur', 'মধুপুর', 1, NULL, NULL, NULL, NULL),
(342, 5, 63, 'Mirzapur', 'মির্জাপুর', 1, NULL, NULL, NULL, NULL),
(343, 5, 63, 'Nagarpur', 'নাগরপুর', 1, NULL, NULL, NULL, NULL),
(344, 5, 63, 'Sakhipur', 'সখিপুর', 1, NULL, NULL, NULL, NULL),
(345, 5, 63, 'Tangailsadar', 'টাঙ্গাইল সদর', 1, NULL, NULL, NULL, NULL),
(346, 5, 29, 'Austagram', 'অষ্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(347, 5, 29, 'Bajitpur', 'বাজিতপুর', 1, NULL, NULL, NULL, NULL),
(348, 5, 29, 'Bhairab', 'ভৈরব', 1, NULL, NULL, NULL, NULL),
(349, 5, 29, 'Hossainpur', 'হোসেনপুর', 1, NULL, NULL, NULL, NULL),
(350, 5, 29, 'Itna', 'ইটনা', 1, NULL, NULL, NULL, NULL),
(351, 5, 29, 'Karimgonj', 'করিমগঞ্জ', 1, NULL, NULL, NULL, NULL),
(352, 5, 29, 'Katiadi', 'কটিয়াদী', 1, NULL, NULL, NULL, NULL),
(353, 5, 29, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(354, 5, 29, 'Kuliarchar', 'কুলিয়ারচর', 1, NULL, NULL, NULL, NULL),
(355, 5, 29, 'Mithamoin', 'মিঠামইন', 1, NULL, NULL, NULL, NULL),
(356, 5, 29, 'Nikli', 'নিকলী', 1, NULL, NULL, NULL, NULL),
(357, 5, 29, 'Pakundia', 'পাকুন্দিয়া', 1, NULL, NULL, NULL, NULL),
(358, 5, 29, 'Tarail', 'তাড়াইল', 1, NULL, NULL, NULL, NULL),
(359, 5, 36, 'Doulatpur', 'দৌলতপুর', 1, NULL, NULL, NULL, NULL),
(360, 5, 36, 'Gior', 'ঘিওর', 1, NULL, NULL, NULL, NULL),
(361, 5, 36, 'Harirampur', 'হরিরামপুর', 1, NULL, NULL, NULL, NULL),
(362, 5, 36, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(363, 5, 36, 'Saturia', 'সাটুরিয়া', 1, NULL, NULL, NULL, NULL),
(364, 5, 36, 'Shibaloy', 'শিবালয়', 1, NULL, NULL, NULL, NULL),
(365, 5, 36, 'Singiar', 'সিংগাইর', 1, NULL, NULL, NULL, NULL),
(366, 5, 14, 'Dhamrai', 'ধামরাই', 1, NULL, NULL, NULL, NULL),
(367, 5, 14, 'Dohar', 'দোহার', 1, NULL, NULL, NULL, NULL),
(368, 5, 14, 'Keraniganj', 'কেরাণীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(369, 5, 14, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(370, 5, 14, 'Savar', 'সাভার', 1, NULL, NULL, NULL, NULL),
(371, 6, 39, 'Gajaria', 'গজারিয়া', 1, NULL, NULL, NULL, NULL),
(372, 6, 39, 'Louhajanj', 'লৌহজং', 1, NULL, NULL, NULL, NULL),
(373, 6, 39, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(374, 6, 39, 'Sirajdikhan', 'সিরাজদিখান', 1, NULL, NULL, NULL, NULL),
(375, 6, 39, 'Sreenagar', 'শ্রীনগর', 1, NULL, NULL, NULL, NULL),
(376, 6, 39, 'Tongibari', 'টংগীবাড়ি', 1, NULL, NULL, NULL, NULL),
(377, 6, 53, 'Baliakandi', 'বালিয়াকান্দি', 1, NULL, NULL, NULL, NULL),
(378, 6, 53, 'Goalanda', 'গোয়ালন্দ', 1, NULL, NULL, NULL, NULL),
(379, 6, 53, 'Kalukhali', 'কালুখালী', 1, NULL, NULL, NULL, NULL),
(380, 6, 53, 'Pangsa', 'পাংশা', 1, NULL, NULL, NULL, NULL),
(381, 6, 53, 'Rajbari Sadar', 'রাজবাড়ী সদর', 1, NULL, NULL, NULL, NULL),
(382, 6, 34, 'Kalkini', 'কালকিনি', 1, NULL, NULL, NULL, NULL),
(383, 6, 34, 'Madaripur Sadar', 'মাদারীপুর সদর', 1, NULL, NULL, NULL, NULL),
(384, 6, 34, 'Rajoir', 'রাজৈর', 1, NULL, NULL, NULL, NULL),
(385, 6, 34, 'Shibchar', 'শিবচর', 1, NULL, NULL, NULL, NULL),
(386, 6, 20, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(387, 6, 20, 'Kashiani', 'কাশিয়ানী', 1, NULL, NULL, NULL, NULL),
(388, 6, 20, 'Kotalipara', 'কোটালীপাড়া', 1, NULL, NULL, NULL, NULL),
(389, 6, 20, 'Muksudpur', 'মুকসুদপুর', 1, NULL, NULL, NULL, NULL),
(390, 6, 20, 'Tungipara', 'টুংগীপাড়া', 1, NULL, NULL, NULL, NULL),
(391, 6, 16, 'Alfadanga', 'আলফাডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(392, 6, 16, 'Bhanga', 'ভাঙ্গা', 1, NULL, NULL, NULL, NULL),
(393, 6, 16, 'Boalmari', 'বোয়ালমারী', 1, NULL, NULL, NULL, NULL),
(394, 6, 16, 'Charbhadrasan', 'চরভদ্রাসন', 1, NULL, NULL, NULL, NULL),
(395, 6, 16, 'Faridpur Sadar', 'ফরিদপুর সদর', 1, NULL, NULL, NULL, NULL),
(396, 6, 16, 'Madhukhali', 'মধুখালী', 1, NULL, NULL, NULL, NULL),
(397, 6, 16, 'Nagarkanda', 'নগরকান্দা', 1, NULL, NULL, NULL, NULL),
(398, 6, 16, 'Sadarpur', 'সদরপুর', 1, NULL, NULL, NULL, NULL),
(399, 6, 16, 'Saltha', 'সালথা', 1, NULL, NULL, NULL, NULL),
(400, 7, 50, 'Atwari', 'আটোয়ারী', 1, NULL, NULL, NULL, NULL),
(401, 7, 50, 'Boda', 'বোদা', 1, NULL, NULL, NULL, NULL),
(402, 7, 50, 'Debiganj', 'দেবীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(403, 7, 50, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 1, NULL, NULL, NULL, NULL),
(404, 7, 50, 'Tetulia', 'তেতুলিয়া', 1, NULL, NULL, NULL, NULL),
(405, 7, 15, 'Birampur', 'বিরামপুর', 1, NULL, NULL, NULL, NULL),
(406, 7, 15, 'Birganj', 'বীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(407, 7, 15, 'Birol', 'বিরল', 1, NULL, NULL, NULL, NULL),
(408, 7, 15, 'Bochaganj', 'বোচাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(409, 7, 15, 'Chirirbandar', 'চিরিরবন্দর', 1, NULL, NULL, NULL, NULL),
(410, 7, 15, 'Dinajpursadar', 'দিনাজপুর সদর', 1, NULL, NULL, NULL, NULL),
(411, 7, 15, 'Fulbari', 'ফুলবাড়ী', 1, NULL, NULL, NULL, NULL),
(412, 7, 15, 'Ghoraghat', 'ঘোড়াঘাট', 1, NULL, NULL, NULL, NULL),
(413, 7, 15, 'Hakimpur', 'হাকিমপুর', 1, NULL, NULL, NULL, NULL),
(414, 7, 15, 'Kaharol', 'কাহারোল', 1, NULL, NULL, NULL, NULL),
(415, 7, 15, 'Khansama', 'খানসামা', 1, NULL, NULL, NULL, NULL),
(416, 7, 15, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(417, 7, 15, 'Parbatipur', 'পার্বতীপুর', 1, NULL, NULL, NULL, NULL),
(418, 7, 33, 'Aditmari', 'আদিতমারী', 1, NULL, NULL, NULL, NULL),
(419, 7, 33, 'Hatibandha', 'হাতীবান্ধা', 1, NULL, NULL, NULL, NULL),
(420, 7, 33, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(421, 7, 33, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 1, NULL, NULL, NULL, NULL),
(422, 7, 33, 'Patgram', 'পাটগ্রাম', 1, NULL, NULL, NULL, NULL),
(423, 7, 47, 'Dimla', 'ডিমলা', 1, NULL, NULL, NULL, NULL),
(424, 7, 47, 'Domar', 'ডোমার', 1, NULL, NULL, NULL, NULL),
(425, 7, 47, 'Jaldhaka', 'জলঢাকা', 1, NULL, NULL, NULL, NULL),
(426, 7, 47, 'Kishorganj', 'কিশোরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(427, 7, 47, 'Nilphamarisadar', 'নীলফামারী সদর', 1, NULL, NULL, NULL, NULL),
(428, 7, 47, 'Syedpur', 'সৈয়দপুর', 1, NULL, NULL, NULL, NULL),
(429, 7, 18, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 1, NULL, NULL, NULL, NULL),
(430, 7, 18, 'Gobindaganj', 'গোবিন্দগঞ্জ', 1, NULL, NULL, NULL, NULL),
(431, 7, 18, 'Palashbari', 'পলাশবাড়ী', 1, NULL, NULL, NULL, NULL),
(432, 7, 18, 'Phulchari', 'ফুলছড়ি', 1, NULL, NULL, NULL, NULL),
(433, 7, 18, 'Sadullapur', 'সাদুল্লাপুর', 1, NULL, NULL, NULL, NULL),
(434, 7, 18, 'Saghata', 'সাঘাটা', 1, NULL, NULL, NULL, NULL),
(435, 7, 18, 'Sundarganj', 'সুন্দরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(436, 7, 64, 'Baliadangi', 'বালিয়াডাঙ্গী', 1, NULL, NULL, NULL, NULL),
(437, 7, 64, 'Haripur', 'হরিপুর', 1, NULL, NULL, NULL, NULL),
(438, 7, 64, 'Pirganj', 'পীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(439, 7, 64, 'Ranisankail', 'রাণীশংকৈল', 1, NULL, NULL, NULL, NULL),
(440, 7, 64, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 1, NULL, NULL, NULL, NULL),
(441, 7, 56, 'Badargonj', 'বদরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(442, 7, 56, 'Gangachara', 'গংগাচড়া', 1, NULL, NULL, NULL, NULL),
(443, 7, 56, 'Kaunia', 'কাউনিয়া', 1, NULL, NULL, NULL, NULL),
(444, 7, 56, 'Mithapukur', 'মিঠাপুকুর', 1, NULL, NULL, NULL, NULL),
(445, 7, 56, 'Pirgacha', 'পীরগাছা', 1, NULL, NULL, NULL, NULL),
(446, 7, 56, 'Pirgonj', 'পীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(447, 7, 56, 'Rangpur Sadar', 'রংপুর সদর', 1, NULL, NULL, NULL, NULL),
(448, 7, 56, 'Taragonj', 'তারাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(449, 7, 30, 'Bhurungamari', 'ভুরুঙ্গামারী', 1, NULL, NULL, NULL, NULL),
(450, 7, 30, 'Charrajibpur', 'চররাজিবপুর', 1, NULL, NULL, NULL, NULL),
(451, 7, 30, 'Chilmari', 'চিলমারী', 1, NULL, NULL, NULL, NULL),
(452, 7, 30, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 1, NULL, NULL, NULL, NULL),
(453, 7, 30, 'Nageshwari', 'নাগেশ্বরী', 1, NULL, NULL, NULL, NULL),
(454, 7, 30, 'Phulbari', 'ফুলবাড়ী', 1, NULL, NULL, NULL, NULL),
(455, 7, 30, 'Rajarhat', 'রাজারহাট', 1, NULL, NULL, NULL, NULL),
(456, 7, 30, 'Rowmari', 'রৌমারী', 1, NULL, NULL, NULL, NULL),
(457, 7, 30, 'Ulipur', 'উলিপুর', 1, NULL, NULL, NULL, NULL),
(458, 8, 59, 'Jhenaigati', 'ঝিনাইগাতী', 1, NULL, NULL, NULL, NULL),
(459, 8, 59, 'Nalitabari', 'নালিতাবাড়ী', 1, NULL, NULL, NULL, NULL),
(460, 8, 59, 'Nokla', 'নকলা', 1, NULL, NULL, NULL, NULL),
(461, 8, 59, 'Sherpur Sadar', 'শেরপুর সদর', 1, NULL, NULL, NULL, NULL),
(462, 8, 59, 'Sreebordi', 'শ্রীবরদী', 1, NULL, NULL, NULL, NULL),
(463, 8, 40, 'Bhaluka', 'ভালুকা', 1, NULL, NULL, NULL, NULL),
(464, 8, 40, 'Dhobaura', 'ধোবাউড়া', 1, NULL, NULL, NULL, NULL),
(465, 8, 40, 'Fulbaria', 'ফুলবাড়ীয়া', 1, NULL, NULL, NULL, NULL),
(466, 8, 40, 'Gafargaon', 'গফরগাঁও', 1, NULL, NULL, NULL, NULL),
(467, 8, 40, 'Gouripur', 'গৌরীপুর', 1, NULL, NULL, NULL, NULL),
(468, 8, 40, 'Haluaghat', 'হালুয়াঘাট', 1, NULL, NULL, NULL, NULL),
(469, 8, 40, 'Iswarganj', 'ঈশ্বরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(470, 8, 40, 'Muktagacha', 'মুক্তাগাছা', 1, NULL, NULL, NULL, NULL),
(471, 8, 40, 'Mymensinghsadar', 'ময়মনসিংহ সদর', 1, NULL, NULL, NULL, NULL),
(472, 8, 40, 'Nandail', 'নান্দাইল', 1, NULL, NULL, NULL, NULL),
(473, 8, 40, 'Phulpur', 'ফুলপুর', 1, NULL, NULL, NULL, NULL),
(474, 8, 40, 'Tarakanda', 'তারাকান্দা', 1, NULL, NULL, NULL, NULL),
(475, 8, 40, 'Trishal', 'ত্রিশাল', 1, NULL, NULL, NULL, NULL),
(476, 8, 22, 'Bokshiganj', 'বকশীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(477, 8, 22, 'Dewangonj', 'দেওয়ানগঞ্জ', 1, NULL, NULL, NULL, NULL),
(478, 8, 22, 'Islampur', 'ইসলামপুর', 1, NULL, NULL, NULL, NULL),
(479, 8, 22, 'Jamalpur Sadar', 'জামালপুর সদর', 1, NULL, NULL, NULL, NULL),
(480, 8, 22, 'Madarganj', 'মাদারগঞ্জ', 1, NULL, NULL, NULL, NULL),
(481, 8, 22, 'Melandah', 'মেলান্দহ', 1, NULL, NULL, NULL, NULL),
(482, 8, 22, 'Sarishabari', 'সরিষাবাড়ী', 1, NULL, NULL, NULL, NULL),
(483, 8, 46, 'Atpara', 'আটপাড়া', 1, NULL, NULL, NULL, NULL),
(484, 8, 46, 'Barhatta', 'বারহাট্টা', 1, NULL, NULL, NULL, NULL),
(485, 8, 46, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL, NULL, NULL),
(486, 8, 46, 'Kalmakanda', 'কলমাকান্দা', 1, NULL, NULL, NULL, NULL),
(487, 8, 46, 'Kendua', 'কেন্দুয়া', 1, NULL, NULL, NULL, NULL),
(488, 8, 46, 'Khaliajuri', 'খালিয়াজুরী', 1, NULL, NULL, NULL, NULL),
(489, 8, 46, 'Madan', 'মদন', 1, NULL, NULL, NULL, NULL),
(490, 8, 46, 'Mohongonj', 'মোহনগঞ্জ', 1, NULL, NULL, NULL, NULL),
(491, 8, 46, 'Netrokona Sadar', 'নেত্রকোণা সদর', 1, NULL, NULL, NULL, NULL),
(492, 8, 46, 'Purbadhala', 'পূর্বধলা', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nafiur Rahman', 'nafiur@outlook.com', 'nafiur', NULL, '$2y$10$TgoQc18r.WmyCHcjUw7TTeLk/dmet0WbC9ZnIAsdvA.DdDkVMFhcS', '202302011156IMG_20220923_153727_889.jpg', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_employees`
--
ALTER TABLE `new_employees`
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
