-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2024 at 12:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtse`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_class`
--

CREATE TABLE `mst_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_name_mar` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_class`
--

INSERT INTO `mst_class` (`class_id`, `class_name`, `class_name_mar`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, '1st', 'पहिली', '2024-05-23 10:36:23', 1, '2024-05-23 10:36:23', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_coordinator`
--

CREATE TABLE `mst_coordinator` (
  `coo_id` int(11) NOT NULL,
  `coo_name` varchar(255) NOT NULL,
  `coo_mobile` varchar(20) DEFAULT NULL,
  `coo_email` varchar(255) DEFAULT NULL,
  `coo_address` varchar(500) DEFAULT NULL,
  `coo_firmname` varchar(255) DEFAULT NULL,
  `coo_qualification` varchar(100) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `coo_type_id` int(11) DEFAULT NULL,
  `coo_parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_coordinator`
--

INSERT INTO `mst_coordinator` (`coo_id`, `coo_name`, `coo_mobile`, `coo_email`, `coo_address`, `coo_firmname`, `coo_qualification`, `village_id`, `coo_type_id`, `coo_parent_id`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(4, 'ram teke', '9890334628', 'ram@gmail.com', 'Baramati', 'VP', 'MA', 1, 1, NULL, '2024-05-26 05:54:44', '1', '2024-05-26 05:54:44', '1', 1, 0),
(5, 'Vijay Tikole', '9699502372', 'Vijay@gmail.com', 'Pune', 'VP', 'MA', 1, 3, NULL, '2024-05-31 06:48:21', '1', '2024-05-31 06:48:21', '1', 1, 0),
(6, 'sanjay  Tikole', '9890453637', 'sanjay@gmail.com', 'Mumbai', 'VPASC', 'MBA', 1, 4, NULL, '2024-05-31 06:57:04', '1', '2024-05-31 06:57:04', '1', 1, 0),
(7, 'Rohini gaikwad', '9699502372', 'rohini@gmail.com', 'Pune', 'M', 'MCA', 1, 4, NULL, '2024-05-31 07:05:00', '5', '2024-05-31 07:05:00', '5', 1, 0),
(8, 'Gajanan joshi', '9890234536', 'gajana@gmail.com', 'Baramati', 'VP', 'MBA', 1, 3, NULL, '2024-05-31 07:12:37', '7', '2024-05-31 07:12:37', '7', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_coo_type`
--

CREATE TABLE `mst_coo_type` (
  `coo_type_id` int(11) NOT NULL,
  `coo_type_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_coo_type`
--

INSERT INTO `mst_coo_type` (`coo_type_id`, `coo_type_name`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'Village Coordinator', '2024-05-24 21:27:31', '1', '2024-05-24 21:27:31', '1', 1, 0),
(2, 'Taluka Coordinator', '2024-05-24 21:27:43', '1', '2024-05-24 21:27:43', '1', 1, 0),
(3, 'District Coordinator', '2024-05-24 21:27:56', '1', '2024-05-24 21:27:56', '1', 1, 0),
(4, 'State Coordinator', '2024-05-24 21:28:15', '1', '2024-05-24 21:28:15', '1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_designation`
--

CREATE TABLE `mst_designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_designation`
--

INSERT INTO `mst_designation` (`designation_id`, `designation_name`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'Admin', '2024-05-23 11:22:28', 2, '2024-05-23 11:22:28', 2, 1, 0),
(2, 'Teacher', '2024-05-23 11:22:35', 2, '2024-05-23 11:22:35', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_district`
--

CREATE TABLE `mst_district` (
  `dist_id` int(11) NOT NULL,
  `dist_name` varchar(255) DEFAULT NULL,
  `dist_name_mar` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_district`
--

INSERT INTO `mst_district` (`dist_id`, `dist_name`, `dist_name_mar`, `state_id`, `isactive`, `isdeleted`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`) VALUES
(1, 'Pune', 'पुणे', 1, 1, 0, '2024-05-23 10:38:24', '1', '2024-05-23 10:38:24', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mst_login`
--

CREATE TABLE `mst_login` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(64) NOT NULL,
  `login_password` varchar(128) NOT NULL,
  `ut_id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `isactive` bit(1) NOT NULL DEFAULT b'0',
  `isdeleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_login`
--

INSERT INTO `mst_login` (`login_id`, `login_username`, `login_password`, `ut_id`, `reference_id`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, '9699502372', '9699502372', 1, 1, '2024-04-25 12:25:10', 1, '2024-04-25 12:25:10', 1, b'1', b'0'),
(2, '9373372602p', '9373372602', 3, 1, '2024-05-23 10:55:22', 1, '2024-05-23 10:55:22', 1, b'1', b'1'),
(3, '9699502372sc', '9699502372', 5, 1, '2024-05-23 10:59:33', 1, '2024-05-23 10:59:33', 1, b'1', b'1'),
(4, '9699502372S', '9699502372', 2, 1, '2024-05-23 11:00:52', 1, '2024-05-23 11:00:52', 1, b'1', b'1'),
(5, '9890453637p', '9890453637', 3, 2, '2024-05-23 11:04:42', 1, '2024-05-23 11:04:42', 1, b'1', b'1'),
(6, '9890334628S', '9890334628', 2, 2, '2024-05-23 11:12:30', 1, '2024-05-23 11:12:30', 1, b'1', b'1'),
(7, '9890334625sc', '9890334625', 5, 2, '2024-05-23 11:17:40', 2, '2024-05-23 11:17:40', 2, b'1', b'1'),
(8, '9699502372T', '9699502372', 4, 1, '2024-05-23 11:23:34', 2, '2024-05-23 11:23:34', 2, b'1', b'1'),
(9, '9699502382S', '9699502382', 2, 3, '2024-05-24 01:14:16', 1, '2024-05-24 01:14:16', 1, b'1', b'1'),
(10, '1111111111S', '1111111111', 2, 4, '2024-05-24 01:49:47', 1, '2024-05-24 01:49:47', 1, b'1', b'1'),
(11, '9890334629sc', '9890334629', 5, 3, '2024-05-24 03:45:56', 1, '2024-05-24 03:45:56', 1, b'1', b'1'),
(12, '9890334635T', '9890334635', 4, 3, '2024-05-24 03:46:51', 1, '2024-05-24 03:46:51', 1, b'1', b'1'),
(13, 'p', '', 3, 0, '2024-05-25 10:15:06', 1, '2024-05-25 10:15:06', 1, b'1', b'1'),
(14, 'p', '', 3, 0, '2024-05-25 10:15:34', 1, '2024-05-25 10:15:34', 1, b'1', b'1'),
(15, 'p', '', 3, 0, '2024-05-25 10:19:25', 1, '2024-05-25 10:19:25', 1, b'1', b'1'),
(16, 'p', '', 3, 0, '2024-05-25 12:00:02', 1, '2024-05-25 12:00:02', 1, b'1', b'1'),
(17, 'p', '', 3, 0, '2024-05-25 12:00:48', 1, '2024-05-25 12:00:48', 1, b'1', b'1'),
(18, '9890453656p', '9890453656', 3, 3, '2024-05-25 12:26:29', 1, '2024-05-25 12:26:29', 1, b'1', b'1'),
(19, '9960106112p', '9960106112', 3, 4, '2024-05-25 04:50:12', 1, '2024-05-25 04:50:12', 1, b'1', b'1'),
(20, '9890334234S', '9890334234', 2, 5, '2024-05-25 04:51:15', 1, '2024-05-25 04:51:15', 1, b'1', b'1'),
(21, '9890334239S', '9890334239', 2, 6, '2024-05-25 04:54:13', 4, '2024-05-25 04:54:13', 4, b'1', b'1'),
(22, 'ram@gmail.comp', 'ram@gmail.com', 3, 4, '2024-05-26 11:24:44', 1, '2024-05-26 11:24:44', 1, b'1', b'1'),
(23, '9922890027T', '9922890027', 4, 4, '2024-05-27 01:46:00', 1, '2024-05-27 01:46:00', 1, b'1', b'1'),
(24, '9890334623sc', '9890334623', 5, 4, '2024-05-28 01:48:33', 1, '2024-05-28 01:48:33', 1, b'1', b'1'),
(25, '9699502382T', '9699502382', 4, 5, '2024-05-28 01:50:35', 4, '2024-05-28 01:50:35', 4, b'1', b'1'),
(26, 'Vijay@gmail.comCoo', 'Vijay@gmail.com', 3, 5, '2024-05-31 12:18:21', 1, '2024-05-31 12:18:21', 1, b'1', b'1'),
(27, 'sanjay@gmail.comCoo', 'sanjay@gmail.com', 6, 6, '2024-05-31 12:27:04', 1, '2024-05-31 12:27:04', 1, b'1', b'1'),
(28, 'rohini@gmail.comCoo', 'rohini@gmail.com', 6, 7, '2024-05-31 12:35:00', 5, '2024-05-31 12:35:00', 5, b'1', b'1'),
(29, 'gajana@gmail.comCoo', 'gajana@gmail.com', 6, 8, '2024-05-31 12:42:37', 7, '2024-05-31 12:42:37', 7, b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `mst_medium`
--

CREATE TABLE `mst_medium` (
  `medium_id` int(11) NOT NULL,
  `medium_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0,
  `medium_name_marathi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_medium`
--

INSERT INTO `mst_medium` (`medium_id`, `medium_name`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`, `medium_name_marathi`) VALUES
(1, 'English', '2024-05-23 10:36:39', 1, '2024-05-23 10:36:39', 1, 1, 0, ' इंग्रजी'),
(2, 'Marathi', '2024-05-23 10:37:48', 1, '2024-05-23 10:37:48', 1, 1, 0, 'मराठी');

-- --------------------------------------------------------

--
-- Table structure for table `mst_organization`
--

CREATE TABLE `mst_organization` (
  `org_id` int(11) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_contact_person` varchar(255) DEFAULT NULL,
  `org_contact` varchar(20) DEFAULT NULL,
  `org_contact_person_designation` varchar(100) DEFAULT NULL,
  `org_mobile` varchar(20) DEFAULT NULL,
  `org_address` varchar(255) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `org_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_organization`
--

INSERT INTO `mst_organization` (`org_id`, `org_name`, `org_contact_person`, `org_contact`, `org_contact_person_designation`, `org_mobile`, `org_address`, `village_id`, `org_type_id`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'State Goverment', NULL, '9699502372', 'Baramati', '9890334628', 'Baramati', 1, 1, '2024-05-23 10:58:07', 1, '2024-05-23 10:58:07', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_org_type`
--

CREATE TABLE `mst_org_type` (
  `org_type_id` int(11) NOT NULL,
  `org_type_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_org_type`
--

INSERT INTO `mst_org_type` (`org_type_id`, `org_type_name`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'State Goverment', '2024-05-23 10:40:28', 1, '2024-05-23 10:40:28', 1, 1, 0),
(2, 'Private', '2024-05-23 10:40:58', 1, '2024-05-23 10:40:58', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_parent`
--

CREATE TABLE `mst_parent` (
  `parent_id` int(11) NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  `parent_address` varchar(255) DEFAULT NULL,
  `parent_contact` varchar(20) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `profession_id` int(11) DEFAULT NULL,
  `parent_qualification` varchar(100) DEFAULT NULL,
  `parent_gender` enum('Male','Female','Other') DEFAULT NULL,
  `parent_dob` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_parent`
--

INSERT INTO `mst_parent` (`parent_id`, `parent_name`, `parent_address`, `parent_contact`, `village_id`, `profession_id`, `parent_qualification`, `parent_gender`, `parent_dob`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'Geeta Gajphode', 'darshan niwas samartha nagar gunwadi road baramati', '9373372602', 1, 3, 'MA', 'Female', '1981-06-03', '2024-05-23 10:55:22', 1, '2024-05-23 10:55:22', 1, 1, 0),
(2, 'sandip gajphode', 'darshan niwas samartha nagar gunwadi road baramati', '9890453637', 1, 1, 'MA', 'Male', '1996-06-12', '2024-05-23 11:04:42', 1, '2024-05-23 11:04:42', 1, 1, 0),
(3, 'Rani Borate', 'tambe nagar', '9890453656', 1, 3, 'MA', 'Female', '1999-01-14', '2024-05-25 12:26:29', 1, '2024-05-25 12:26:29', 1, 1, 0),
(4, 'Pratibha Nimbhore', 'Baramati', '9960106112', 1, 1, '12th', 'Male', '1984-06-12', '2024-05-25 04:50:12', 1, '2024-05-25 04:50:12', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_profession`
--

CREATE TABLE `mst_profession` (
  `profession_id` int(11) NOT NULL,
  `profession_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_profession`
--

INSERT INTO `mst_profession` (`profession_id`, `profession_name`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'Police officer', '2024-05-23 10:39:35', 1, '2024-05-23 10:39:35', 1, 1, 0),
(2, 'Engineer', '2024-05-23 10:39:43', 1, '2024-05-23 10:39:43', 1, 1, 0),
(3, 'Teacher', '2024-05-23 10:39:58', 1, '2024-05-23 10:39:58', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_school`
--

CREATE TABLE `mst_school` (
  `school_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `school_contact` varchar(20) DEFAULT NULL,
  `school_email` varchar(100) DEFAULT NULL,
  `school_principal` varchar(255) DEFAULT NULL,
  `school_principal_contact` varchar(20) DEFAULT NULL,
  `medium_id` int(11) DEFAULT NULL,
  `school_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0,
  `school_info_givenby_contact` int(11) DEFAULT NULL,
  `school_info_given_by` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_school`
--

INSERT INTO `mst_school` (`school_id`, `org_id`, `school_name`, `school_address`, `village_id`, `school_contact`, `school_email`, `school_principal`, `school_principal_contact`, `medium_id`, `school_type_id`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`, `school_info_givenby_contact`, `school_info_given_by`) VALUES
(1, 1, 'M.E.S highSchool', 'Baramati', 1, '9699502372', 'mes@gmail.com', 'Rohini Gaikwad', '9890334628', 1, 2, '2024-05-23 10:59:33', 1, '2024-05-23 10:59:33', 1, 1, 0, 2147483647, 0),
(2, 1, 'Fort International Academy. ', 'Pune', 1, '9890334625', 'fort@gmail.com', 'Rohini Gaikwad', '9890334628', 2, 2, '2024-05-23 11:17:40', 2, '2024-05-23 11:17:40', 2, 1, 0, 2147483647, 0),
(3, 1, 'Sundarbai Marathe School CBSE.', 'Pune', 1, '9890334629', 'sundarbai@gmail.com', 'Ram Gaikwad', '9890334628', 1, 1, '2024-05-24 03:45:56', 1, '2024-05-24 03:45:56', 1, 1, 0, 2147483647, 0),
(4, 1, 'garvare', 'darshan niwas samartha nagar gunwadi road baramati', 1, '9890334623', 'gajphodes@gmail.com', 'Ram Gaikwad', '9890334628', 1, 1, '2024-05-28 01:48:33', 1, '2024-05-28 01:48:33', 1, 1, 0, 2147483647, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_school_type`
--

CREATE TABLE `mst_school_type` (
  `school_type_id` int(11) NOT NULL,
  `school_type_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_school_type`
--

INSERT INTO `mst_school_type` (`school_type_id`, `school_type_name`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'private', '2024-05-23 10:50:06', 1, '2024-05-23 10:50:06', 1, 1, 0),
(2, 'State Goverment', '2024-05-23 10:50:24', 1, '2024-05-23 10:50:24', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_state`
--

CREATE TABLE `mst_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `state_name_mar` varchar(255) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_state`
--

INSERT INTO `mst_state` (`state_id`, `state_name`, `state_name_mar`, `isactive`, `isdeleted`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`) VALUES
(1, 'Maharashtra', 'महाराष्ट्र', 1, 0, '2024-05-23 10:38:08', '1', '2024-05-23 10:38:08', '1'),
(2, 'Maharashtra', 'महाराष्ट्र', 1, 0, '2024-06-08 11:30:09', '1', '2024-06-08 11:30:09', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mst_student`
--

CREATE TABLE `mst_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `student_address` varchar(255) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `student_contact` varchar(20) DEFAULT NULL,
  `student_photo` varchar(255) DEFAULT NULL,
  `student_gender` enum('Male','Female','Other') DEFAULT NULL,
  `student_dob` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_student`
--

INSERT INTO `mst_student` (`student_id`, `student_name`, `parent_id`, `student_address`, `village_id`, `school_id`, `student_contact`, `student_photo`, `student_gender`, `student_dob`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'shruti gajphode', 1, 'Baramati', 1, 1, '9699502372', '65efcc6117b61IMG_20210129_193758.jpg', 'Female', '2002-05-16', '2024-05-23 11:00:52', 1, '2024-05-23 11:00:52', 1, 1, 1),
(2, 'Komal Borate', 1, 'Baramati', 1, 1, '9890334628', '65efcc6117b61IMG_20210129_193758.jpg', 'Male', '2002-05-16', '2024-05-23 11:12:30', 1, '2024-05-28 01:11:03', 2, 1, 0),
(3, 'Harshada Nimbhore', 1, 'Baramati', 1, 1, '9699502382', '65efcc6117b61IMG_20210129_193758.jpg', 'Female', '2024-05-09', '2024-05-24 01:14:16', 1, '2024-05-24 01:14:16', 1, 1, 0),
(4, 'dsfef', 0, 'dsfd', 0, 0, '1111111111', '65efcc6117b61IMG_20210129_193758.jpg', 'Female', '2024-05-18', '2024-05-24 01:49:47', 1, '2024-05-24 01:49:47', 1, 1, 1),
(5, 'Madhuri Dixit', 4, 'Mumbai', 1, 3, '9890334234', '65efcc6117b61IMG_20210129_193758.jpg', 'Female', '2024-05-10', '2024-05-25 04:51:15', 1, '2024-05-25 04:51:15', 1, 1, 0),
(6, 'Salman Khan', 4, 'delhi', 1, 3, '9890334239', '65efcbee18e55IMG_20221112_202826~2.jpg', 'Male', '2008-06-26', '2024-05-25 04:54:13', 4, '2024-05-25 04:54:13', 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_taluka`
--

CREATE TABLE `mst_taluka` (
  `tal_id` int(11) NOT NULL,
  `tal_name` varchar(255) DEFAULT NULL,
  `tal_name_mar` varchar(255) DEFAULT NULL,
  `dist_id` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_taluka`
--

INSERT INTO `mst_taluka` (`tal_id`, `tal_name`, `tal_name_mar`, `dist_id`, `isactive`, `isdeleted`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`) VALUES
(1, 'Baramati', 'बारामती', 1, 1, 0, '2024-05-23 10:38:51', '1', '2024-05-23 10:38:51', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mst_teacher`
--

CREATE TABLE `mst_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `teacher_current_address` varchar(255) DEFAULT NULL,
  `teacher_contact` varchar(20) DEFAULT NULL,
  `teacher_email` varchar(100) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `teacher_permanent_address` varchar(255) DEFAULT NULL,
  `teacher_qualification` varchar(100) DEFAULT NULL,
  `teacher_joining_date` date DEFAULT NULL,
  `teacher_specialization` varchar(255) DEFAULT NULL,
  `teacher_other_info` text DEFAULT NULL,
  `teacher_gender` enum('Male','Female','Other') DEFAULT NULL,
  `teacher_dob` date DEFAULT NULL,
  `teacher_type_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_teacher`
--

INSERT INTO `mst_teacher` (`teacher_id`, `teacher_name`, `teacher_current_address`, `teacher_contact`, `teacher_email`, `village_id`, `teacher_permanent_address`, `teacher_qualification`, `teacher_joining_date`, `teacher_specialization`, `teacher_other_info`, `teacher_gender`, `teacher_dob`, `teacher_type_id`, `school_id`, `designation_id`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'Sanjay  Devgunde', 'Baramati', '9699502372', 'sanjay@gmail.com', 1, 'Baramati', 'MSC(Computer science)', '2024-05-09', 'Computer Science', '-', 'Male', '1992-02-12', 3, 1, 2, '2024-05-23 11:23:34', 2, '2024-05-23 11:23:34', 2, 1, 0),
(2, 'veena Devgunde', 'Baramati', '9890334634', 'veena@gmail.com', 1, 'Baramati', 'MSC(Computer science)', '2024-05-10', 'Computer Science', '-', 'Female', '2024-05-10', 3, 2, 2, '2024-05-24 02:49:55', 1, '2024-05-24 02:49:55', 1, 1, 0),
(3, 'Gajanan joshi', 'Desa estate Baramati', '9890334635', 'gajana@gmail.com', 1, 'Desa estate Baramati', 'MSC(Computer science)', '2024-05-15', 'Computer Science', '-', 'Male', '2024-05-09', 3, 3, 2, '2024-05-24 03:46:51', 1, '2024-05-24 03:46:51', 1, 1, 0),
(4, 'komal borate', 'Baramati', '9922890027', 'komal@gmail.com', 1, 'Baramati', 'MSC(Computer science)', '2024-05-06', 'Computer Science', '-', 'Female', '2024-05-08', 2, 1, 2, '2024-05-27 01:46:00', 1, '2024-05-27 01:46:00', 1, 1, 0),
(5, 'Harshada Nimbhore', 'darshan niwas samartha nagar gunwadi road baramati', '9699502382', 'gajphodes@gmail.com', 1, 'darshan niwas samartha nagar gunwadi road baramati', 'MSC(Computer science)', '2024-05-10', 'Computer Science', '-', 'Female', '2002-06-12', 3, 4, 2, '2024-05-28 01:50:35', 4, '2024-05-28 01:50:35', 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_teacher_type`
--

CREATE TABLE `mst_teacher_type` (
  `teacher_type_id` int(11) NOT NULL,
  `teacher_type_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_teacher_type`
--

INSERT INTO `mst_teacher_type` (`teacher_type_id`, `teacher_type_name`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'Class Teacher', '2024-05-23 10:44:16', 1, '2024-05-23 10:44:16', 1, 1, 0),
(2, 'principle', '2024-05-23 10:44:56', 1, '2024-05-23 10:44:56', 1, 1, 0),
(3, 'Teacher', '2024-05-23 10:45:11', 1, '2024-05-23 10:45:11', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `user_contact` varchar(32) NOT NULL,
  `ut_id` int(11) NOT NULL,
  `user_email` varchar(132) NOT NULL,
  `user_address` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `isactive` bit(1) NOT NULL DEFAULT b'0',
  `isdeleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `user_name`, `user_contact`, `ut_id`, `user_email`, `user_address`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'shruti Gajphode', '9699502372', 1, 'gajphodes@gmail.com', 'Baramati', '2024-05-23 19:02:41', 0, '2024-05-23 19:02:41', 0, b'0', b'0'),
(2, 'shruti Gajphode', '9699502372', 1, 'gajphodes@gmail.com', 'Baramati', '2024-05-23 19:02:41', 0, '2024-05-23 19:02:41', 0, b'0', b'0'),
(3, 'Sandip Gajphode', '9373372602', 3, 'sandip@gmail.com', 'Baramati', '2024-05-23 11:03:36', 1, '2024-05-23 11:03:36', 1, b'1', b'1'),
(4, 'Shruti Gajphode', '9699502373', 2, 'shruti@gmail.com', 'Desa estate Baramati', '2024-05-23 11:08:58', 1, '2024-05-23 11:08:58', 1, b'1', b'1'),
(5, 'Sanjay Devgunde', '9890453637', 4, 'sanjay@gmail.com', 'baramati', '2024-05-23 11:10:06', 1, '2024-05-23 11:10:06', 1, b'1', b'1'),
(6, 'Rohini Gaikwad', '9890453635', 5, 'rohini@gmail.com', 'Pune', '2024-05-23 11:10:49', 1, '2024-05-23 11:10:49', 1, b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user_type`
--

CREATE TABLE `mst_user_type` (
  `ut_id` int(11) NOT NULL,
  `ut_type` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `isactive` bit(1) NOT NULL DEFAULT b'0',
  `isdeleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_user_type`
--

INSERT INTO `mst_user_type` (`ut_id`, `ut_type`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 'Admin', '2024-05-23 18:59:38', 0, '2024-05-23 18:59:38', 0, b'0', b'0'),
(2, 'Student', '2024-05-23 10:45:27', 1, '2024-05-23 10:45:27', 1, b'1', b'1'),
(3, 'Parent', '2024-05-23 10:45:33', 1, '2024-05-23 10:45:33', 1, b'1', b'1'),
(4, 'Teacher', '2024-05-23 10:45:41', 1, '2024-05-23 10:45:41', 1, b'1', b'1'),
(5, 'School', '2024-05-23 10:45:50', 1, '2024-05-23 10:45:50', 1, b'1', b'1'),
(6, 'Coordinator', '2024-05-31 12:37:49', 5, '2024-05-31 12:37:49', 5, b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `mst_village`
--

CREATE TABLE `mst_village` (
  `village_id` int(11) NOT NULL,
  `village_name` varchar(255) DEFAULT NULL,
  `village_name_mar` varchar(255) DEFAULT NULL,
  `tal_id` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_village`
--

INSERT INTO `mst_village` (`village_id`, `village_name`, `village_name_mar`, `tal_id`, `isactive`, `isdeleted`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`) VALUES
(1, 'Barhanpur', ' बऱ्हाणपूर', 1, 1, 0, '2024-05-23 10:39:10', '1', '2024-05-23 10:39:10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `stateid` int(11) NOT NULL,
  `statename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `cityid` int(11) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `districtid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`cityid`, `cityname`, `districtid`) VALUES
(1, 'Kurduwadi', 1),
(2, 'Madha', 1),
(3, 'Akluj', 1),
(4, 'Shirur', 2),
(5, 'Baramati', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `contact_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`) VALUES
(1, 'shubhs', 'shubhsdeshmukh29@gmail.com', 'hi', 'd'),
(2, 'shubhs', 'ankitaphulee@gmail.com', 'hgh', 'ghg'),
(3, 'Emilio Berry', 'berry.emilio@googlemail.com', '', 'Want to find more people ready to buy for your website? We can get you keyword targeted visitors specifically for your specific type of business\r\n To get info Have a look at: http://bit.ly/web-traffic-targeted-for-your-niche'),
(4, 'Mikayla Mussen', 'mussen.mikayla@gmail.com', '', 'Do you need more people ready to buy for your website or online store? We can provide keyword targeted people precisely for your business model\r\n To get details Visit: http://bit.ly/webtraffic-foryourniche'),
(5, 'Earlene Phillips', 'elsa.beaver@list.ru', 'Question', 'Hello,\r\n\r\nAre you presently utilizing Wordpress/Woocommerce or perhaps do you actually think to implement it at some point ? We currently provide more than 2500 premium plugins and also themes to download : http://shortnt.buzz/zFuDh\r\n\r\nCheers,\r\n\r\nEarlene'),
(6, 'Penny Canela', 'penny.canela@hotmail.com', '', 'Boost visitor volumes to your site fast. Get 3,000 visitors in any niche for less than $40. Traffic guaranteed or your money refunded: http://bit.ly/real-human-visitors'),
(7, 'Adam Melbourne', 'melbourne.adam51@googlemail.com', '', 'Buy web traffic and boost visitors and sales in just 24 hours! Traffic guaranteed or full refund: http://bit.ly/web-traffic-for-any-niche'),
(8, 'Fae McGee', 'fae.mcgee70@msn.com', '', 'Buy qualified web traffic for your site. Keyword Targeted. Full refund if not happy.  http://bit.ly/boost-web-traffic-now'),
(9, 'Gajanan', 'gajanan9397@gmail.com', 'Regarding training', 'Hi \r\nThis is Gajanan More from Baramati'),
(10, '', '', '', ''),
(11, 'Raquel Poe', 'poe.raquel6@gmail.com', '', 'Boost web traffic quick with this:  http://bit.ly/boost-web-traffic-now'),
(12, 'Maryann Sterrett', 'AshliGemmill@hotmail.com', 'Hal Leeber', 'Here is a list of 18 free traffic sources that you should be using: http://bit.ly/18freetrafficsources'),
(13, 'Laurence Mehler', 'mehler.laurence@gmail.com', '', 'Boost web traffic quick with this:  http://bit.ly/boost-web-traffic-now'),
(14, 'Bob Elmer', 'mrodukonr@crunchcompass.com', '', 'You should check this out before you spend another dime advertising your site:  https://bit.ly/dont-pay-for-ads'),
(15, 'Marti Christy', 'marti.christy@msn.com', '', 'Boost web traffic quick with this:  http://bit.ly/boost-web-traffic-now'),
(16, 'Zack Queja', 'TerresaGrondahl@yahoo.com', 'Malik Sarkis', 'Here is a list of 18 free traffic sources that you should be using: http://bit.ly/18freetrafficsources'),
(17, 'Xavier Ramos', 'ramos.xavier@gmail.com', '', '50 Ways To Advertise Your Business For Free On The Internet : https://bit.ly/50-ways-to-advertise-free'),
(18, 'Phuong Christeson', 'JohnsonRandklev@yahoo.com', 'Shelli Greenbush', '18 free traffic sources you should be using: https://bit.ly/18-free-traffic-sources'),
(19, 'Jame Fredericksen', '2aseladarshana@wingkobabat.buzz', '', 'Get free traffic to your website from these top sites: https://bit.ly/free-traffic-sites-for-2021'),
(20, 'Sharyl Zambrano', 'zambrano.sharyl@gmail.com', '', '7 Ways To Promote Your Business Online For Free : https://bit.ly/getfreeadshere'),
(21, 'Laurene', 'huntington.laurene75@yahoo.com', 'shivskillfoundation.com', 'Good day \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 24.99 dollars with FREE SHIPPING & Returns.  If interested, please visit our site: lensoutlet.online\r\n \r\nThe Best, \r\n\r\nLaurene \r\nShiv Skill Foundation'),
(22, 'Monty Desir', 'galprincemedo343f@tukieai.com', '', 'How to earn extra cash with your website without doing a thing: https://bit.ly/cash-in-on-affiliate-marketing'),
(23, 'Breana Giudice', 'phussen.shwqim@furnitt.com', 'Austin Zegarra', 'How To Advertise Online Without Paying A Dime : https://bit.ly/free-stuff-blog'),
(24, 'Augusta', 'augusta.egerton50@gmail.com', 'shivskillfoundation.com', 'Morning \r\n \r\nMeet your best Buds - True Wireless Earbuds with amazing sound, convenience, portability, & affordability!\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: musicontrol.online\r\n \r\nBest, \r\n \r\nAugusta\r\nShiv Skill Foundation'),
(25, 'Birgit', 'birgit.salazar@msn.com', 'Shiv Skill Foundation', 'Good day \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.com\r\n \r\nThanks and Best Regards, \r\n \r\nBirgit\r\nShiv Skill Foundation'),
(26, 'Rayford Casley', 'LeighSartell@gmail.com', 'Dixie Weinstock', 'How To Advertise Online Without Paying A Dime : https://bit.ly/free-stuff-blog'),
(27, 'callmeMUS', 'temptheatsecon1981@mail.ru', 'call me', 'call me whatsapp: https://wa.me/79910404425'),
(28, 'Casimira', 'casimira.pedroza61@msn.com', 'Shiv Skill Foundation', 'Good Morning\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please check our site: pharmacyoutlets.online\r\n\r\nBest regards,\r\n\r\nCasimira\r\nShiv Skill Foundation'),
(29, 'Walter Mackrell', 'laok.duhoky4@disdraplo.com', '', 'Now you can get thousands of high quality niche targeted website visitors for less than the price of a few clicks on Google. Find out more here: https://bit.ly/get-more-web-traffic-now'),
(30, 'Lilia Meigs', 'MorganTerre@gmail.com', 'Marlin Mcmichael', '20 Clever Ways To Get Free Advertising On Google & Beyond : https://bit.ly/free-stuff-blog'),
(31, 'Herbert Kaufman', '1kamil.cahkedok@contactare.com', 'kaufman.herbert@gmail.com', 'Promote your website the easy way without paying huge advertising costs. More info: https://bit.ly/results-marketing'),
(32, 'Jovita', 'jovita.chinkaw@gmail.com', 'Jovita Chin Kaw', 'Hello\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nAll the best,\r\n\r\nJovita'),
(33, 'Janine Newling', 'zhakim.medjahed@werkuldino.buzz', '', 'This web traffic costs one tenth to 1/100th the cost of Google Adwords and is high quality and targeted specifically for your keywords: https://shortest.link/HLL'),
(34, 'Margarita', 'margarita.pate@msn.com', 'Margarita Pate', 'Good Morning \r\n\r\n50% OFF!! Hurry to get your Baseball Cap Now!\r\n\r\nThese Caps are SO cool! Perfect for this Summer!\r\n\r\nFree worldwide shipping!\r\n\r\nGET IT HERE: capshop.online\r\n\r\nThe Best, \r\n \r\nMargarita'),
(35, 'Lorenzo Cosh', 'cosh.lorenzo@hotmail.com', '', 'You can still advertise you business even if you have no room for advertising in your expense budget. Here are 50 proven ways you can advertise online for free : https://cutt.ly/GQ3oYcg'),
(36, 'Elizbeth', 'dunrossil.elizbeth@gmail.com', 'Elizbeth Dunrossil', 'Color-changing swimshorts \r\n\r\nDive into the ocean and your swimshorts suddenly change color! These swimshorts ara AMAZING!\r\n\r\nHurry! 50% Off Worldwide For Limited Time Only!\r\n\r\nGet it here: coolshorts.online\r\n\r\nThanks and Best Regards, \r\n\r\nElizbeth'),
(37, 'Crystal Ternasky', 'HeidiMings@gmail.com', 'Kelly Amela', 'Effective And Free Ways To Advertise. Here Is A List... https://t9y.me/crCX'),
(38, 'Jade Woolner', '8iraqtoota@contactare.com', '', 'I think that nobody should have to pay for advertising online any more these days which is why I put together this list of places where you can advertise completely free! Check it out:   https://ai6.net/zXWblo'),
(39, 'Craig', 'craig.collette@gmail.com', 'Craig Collette', 'Good day\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nTo your success,\r\n\r\nCraig'),
(40, 'Taj', 'taj.arnott@gmail.com', 'shivskillfoundation.com', 'Good day \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.com\r\n \r\nSincerely, \r\n \r\nTaj'),
(41, 'Lucius Ososkie', 'JessieGranillo@gmail.com', 'Clair Roehm', 'Best Free Traffic Sources https://shortest.link/OY0'),
(42, 'Hyun Futch', 'MarlinImparato@gmail.com', 'Hortense Pigeon', '50 Ways To Advertise Your Business For Free On The Internet https://shortest.link/OY0'),
(43, 'Letha', 'letha.chowne@gmail.com', 'Letha Chowne', 'Hi there \r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time.\r\n\r\nBuy now: thawking.online\r\n\r\nKind Regards, \r\n\r\nLetha'),
(44, '', 'BRogers12@gmail.com', 'Fix issue with your website', 'I was looking at your website and noticed it appears the word \"Cources\" is spelled wrong.  I had similar problems on my site until someone mentioned it to me and I also now use software from SpellPerfect.com to keep my site error free.'),
(45, '', '', '', ''),
(46, 'Jocelyn Hassen', 'DarinWortz@gmail.com', 'Ezequiel Kleinfelder', 'Unique And Creative Ways To Advertise For Free https://is.gd/3XvU8E'),
(47, 'Daniella', 'daniellaakins@gmail.com', 'Daniella Akins', 'EASE YOUR PAIN IN 10 MINUTES EFFORTLESSLY\r\n\r\nBe Free from Neck Pain! Try NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\n\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\nMany Thanks, \r\n\r\nDaniella'),
(48, 'Courtney Hauslaib', 'hauslaib.courtney@msn.com', '', 'Unique And Creative Ways To Advertise For Free : https://ai6.net/2UZNtE'),
(49, 'Kristy Bisson', 'kristy.bisson@yahoo.com', 'Negative SEO Services', 'Hello\r\n\r\nIf you ever need Negative SEO to de-rank any site, you can hire us here\r\nhttps://www.speed-seo.net/product/negative-seo-service/\r\n\r\n'),
(50, 'RichardAssib', 'denisandreev1989521a1n+iu@list.ru', 'Judjfefehgje hfejfwhfjkfvjegj jefkkfejfej kfejkfekgrkhrkkgrj', 'shivskillfoundation.com teyiuwoiwfheujsmdcshflisjdalfjedbfsjhsgdhwyfeudjnfwhdgjkfbefjhdwsfjvnskhfbsjfnvshfbasnjkfbdjvgbfgjkd'),
(51, 'Michaeltum', 'mgloriani@firstair.ca', 'This is your chance to earn before $175000 in Week', 'Passive income from $187000 in Week   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&59=70&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(52, 'Michaeltum', 'kevin.reeve@rein.com.au', 'This is your chance to earn before $175000 in Week', 'Passive income from $187000 in Week   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&59=70&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(53, 'Michaeltum', 'fred@sympatico.ca', 'This is your chance to earn before $175000 in Week', 'Passive income from $187000 in Week   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&59=70&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(54, 'Michaeltum', 'raywolfe@ns.sympatico.ca', 'This is your chance to earn before $175000 in Week', 'Passive income from $187000 in Week   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&59=70&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(55, 'Michaeltum', 'lingord@sympatico.ca', 'This is your chance to earn before $175000 in Week', 'Passive income from $187000 in Week   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&59=70&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(56, 'Michaeltum', 'marketing@soservices.ca', 'Passive income before $146000 per day', 'Your colleagues are already earning before $139000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&23=85&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(57, 'Michaeltum', 'danbanx@sympatico.ca', 'Passive income before $146000 per day', 'Your colleagues are already earning before $139000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&23=85&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(58, 'Michaeltum', 'mtech3k@videotron.ca', 'Passive income before $146000 per day', 'Your colleagues are already earning before $139000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&23=85&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(59, 'Michaeltum', 'john.kaszuba@sympatico.ca', 'Passive income before $146000 per day', 'Your colleagues are already earning before $139000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&23=85&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(60, 'Michaeltum', 'ayche@shaw.ca', 'Passive income before $146000 per day', 'Your colleagues are already earning before $139000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&23=85&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(61, 'Michaeltum', 'kenneyg@ns.sympatico.ca', 'Your colleagues are already earning from $153000 per day', 'Start earning from $112000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&04=36&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(62, 'Michaeltum', 'juliettebeltran@yahoo.ca', 'Your colleagues are already earning from $153000 per day', 'Start earning from $112000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&04=36&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(63, 'Michaeltum', 'rphocas@videotron.ca', 'Your colleagues are already earning from $153000 per day', 'Start earning from $112000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&04=36&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(64, 'Michaeltum', 'dovy@sympatico.ca', 'Your colleagues are already earning from $153000 per day', 'Start earning from $112000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&04=36&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(65, 'Michaeltum', 'jet@pure-gold.ca', 'Your colleagues are already earning from $153000 per day', 'Start earning from $112000 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7lpOT&sa=D&04=36&usg=AFQjCNGTYaMyjIbq7nmoyUC4g673S2uLwg   <<<<<<<<<<<<<'),
(66, 'RickySig', 'abdellahmourouane@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(67, 'RickySig', 'donaldmeyers2@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(68, 'RickySig', 'hfrnds0@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(69, 'RickySig', 'aouipaul@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(70, 'RickySig', 'leonardonetto@expertautomacao.com.br', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(71, 'RickySig', 'mariacarolinasilveira@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(72, 'RickySig', 'mseablirestrellanes@yahoo.fr', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(73, 'RickySig', 'henryalanhughes@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(74, 'RickySig', 'finnthom@hotmail.no', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(75, 'RickySig', 'kafa008@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(76, 'RickySig', 'lblaemma@yahoo.fr', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(77, 'RickySig', 'e.bazzan@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(78, 'RickySig', 'eyorelmac@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(79, 'RickySig', 'shakidija@yahoo.fr', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(80, 'RickySig', 'rintanen.eljas@gmail.com', '11.11 - Passive income from $ 300 to $ 15000 per day', 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<'),
(81, 'GerardWaw', 'dimafokin199506780tx+53v3@inbox.ru', 'Good site', 'shivskillfoundation.com tyrueoswkdhfbjksdhbdvsddnajkmkxdbfsdjdfadladabfhghgdhsjkd'),
(82, 'Pierre Semengue', 'centermolyko@gmail.com', 'Product and business cooperation', 'Attn. Director, \r\nI am interested in your products and line of business. \r\nPlease do not hesitate to contact me if you will need a financial partner and investor. \r\nKindly send reply to \r\npierresemengue3@adminoiedc.org \r\nRegards, \r\nPierre Semengue'),
(83, 'Mervin Gossett', 'mervin.gossett@yahoo.com', '', 'Want more free traffic for your site? Post some free ads on these sites: https://26uf.short.gy/sites-that-accept-free-ads'),
(84, 'Rae Beals', 'rae.beals@msn.com', 'Negative SEO Services', 'Greetings\r\n\r\nIf you ever need Negative SEO to de-rank any site, you can hire us here\r\nhttps://www.speed-seo.net/product/negative-seo-service/\r\n\r\n'),
(85, 'Charlesquich', 'walas.michael@gmail.com', 'Fast income from one investment more $ 8679 in a day', 'Passive income on the rise and fall of bitcoin from $ 8959 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&29=83&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(86, 'Charlesquich', 'walas.michael@gmail.com', 'Fast income from one investment more $ 8679 in a day', 'Passive income on the rise and fall of bitcoin from $ 8959 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&29=83&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(87, 'Charlesquich', 'walas.michael@gmail.com', 'Fast income from one investment more $ 8679 in a day', 'Passive income on the rise and fall of bitcoin from $ 8959 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&29=83&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(88, 'Charlesquich', 'walas.michael@gmail.com', 'Fast income from one investment more $ 8679 in a day', 'Passive income on the rise and fall of bitcoin from $ 8959 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&29=83&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(89, 'Charlesquich', 'walas.michael@gmail.com', 'Fast income from one investment more $ 8679 in a day', 'Passive income on the rise and fall of bitcoin from $ 8959 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&29=83&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(90, 'Charlesquich', 'tania.wiley@cucrh.uwa.edu.au', 'REGISTER NOW and get from $ 6587 per day', 'Make Artificial Intelligence bring you more $ 7869 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&37=16&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(91, 'Charlesquich', 'tania.wiley@cucrh.uwa.edu.au', 'REGISTER NOW and get from $ 6587 per day', 'Make Artificial Intelligence bring you more $ 7869 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&37=16&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(92, 'Charlesquich', 'tania.wiley@cucrh.uwa.edu.au', 'REGISTER NOW and get from $ 6587 per day', 'Make Artificial Intelligence bring you more $ 7869 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&37=16&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(93, 'Charlesquich', 'tania.wiley@cucrh.uwa.edu.au', 'REGISTER NOW and get from $ 6587 per day', 'Make Artificial Intelligence bring you more $ 7869 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&37=16&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(94, 'Charlesquich', 'tania.wiley@cucrh.uwa.edu.au', 'REGISTER NOW and get from $ 6587 per day', 'Make Artificial Intelligence bring you more $ 7869 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&37=16&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<'),
(95, 'NataNes', 'woodthighgire1988@gmail.com', 'Hello Admin!', ' \r\nWho want to see my nudes? https://localchicks3.com/?u=41nkd08&o=8dhpkzk'),
(96, 'Charlesquich', 'skjevel@online.no', 'Make Artificial Intelligence bring you from $ 7989 in a day', 'Bitcoin Miiliarder told how he makes money more $ 6678 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&18=24&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(97, 'Charlesquich', 'skjevel@online.no', 'Make Artificial Intelligence bring you from $ 7989 in a day', 'Bitcoin Miiliarder told how he makes money more $ 6678 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&18=24&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(98, 'Charlesquich', 'skjevel@online.no', 'Make Artificial Intelligence bring you from $ 7989 in a day', 'Bitcoin Miiliarder told how he makes money more $ 6678 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&18=24&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(99, 'Charlesquich', 'skjevel@online.no', 'Make Artificial Intelligence bring you from $ 7989 in a day', 'Bitcoin Miiliarder told how he makes money more $ 6678 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&18=24&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(100, 'Charlesquich', 'skjevel@online.no', 'Make Artificial Intelligence bring you from $ 7989 in a day', 'Bitcoin Miiliarder told how he makes money more $ 6678 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&18=24&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(101, 'Zelma Killinger', '1kamil.cahkedok@contactare.com', 'zelma.killinger@hotmail.com', 'Automatic ad submission to thousands of ad sites every month. Submit your ad now: https://1mdr.short.gy/VwsO7Q'),
(102, 'Leandra Vanwinkle', 'vanwinkle.leandra@gmail.com', '', 'I want to talk with a real human, email me please. Please reply to me here: ochoabrianaz62@gmail.com'),
(103, 'Exedo', 'sdctgi73@gmail.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/yypuwema'),
(104, 'Lonny Altreche', 'ReneePettitt@gmail.com', 'Pat Buchman', 'Free submission of your new website to over 35 business directories here https://1mdr.short.gy/add-your-site'),
(105, 'Chad Teeples', 'ColbyDormane@gmail.com', 'Paz Saunier', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/submityourwebsite'),
(106, 'Exedo', 'k5itg3eq@yahoo.com', 'I promised.', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y4bus2yq'),
(107, 'Exedo', 'co9qx9dt@icloud.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/yc24c6mc'),
(108, 'nem306796flebno', 'kiddgeerarddo@gmail.com', 'tip306796hyerge', 'mis306796utr jIEAhFQ TigI YWD9A9W'),
(109, 'Aisha Yomes', 'JacqulynKadis@gmail.com', 'Marshall Veney', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/add-your-site'),
(110, 'Exedo', 'cmde8c6b@gmail.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/ybbv62gp'),
(111, 'Mike Becker\r\n', 'no-replyinsoche@gmail.com', 'Competitors not playing the SEO game fair?', 'Negative SEO attack Services. Deindex bad competitors from Google. It works with any Website, video, blog, product or service. \r\nhttps://www.seo-treff.de/product/derank-seo-service/'),
(112, 'Chana Waylen', '5hoss@gmailup.com', '', 'Free submission of your new website to over 1000 business directories here https://bit.ly/add-your-website'),
(113, 'Joeann Bigge', 'ohora@somitata.com', '', 'Submit your site to over 1000 directories all with one click here> https://1mdr.short.gy/submityoursite'),
(114, 'Exedo', 'a31xnu1a@hotmail.com', 'I promised.', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/y7d7gxut'),
(115, 'Exedo', 'xitihksy@gmail.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/ydepuywj'),
(116, 'Alberta Nunez', 'bchakka111975s@ronell.me', '', 'Add your site to 1000 business directories with one click here-> https://bit.ly/add-your-website'),
(117, 'Exedo', 'rqme9tzj@gmail.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/yby9acet'),
(118, 'Santo Dronen', 'SoniaBoschee@gmail.com', 'Tamar Timmreck', 'Free submission of your new website to over 1000 business directories here https://1mdr.short.gy/submityourwebsite'),
(119, 'Errol Dahlenburg', 'errol.dahlenburg@googlemail.com', '', 'You can submit your site to over 30 different business directories for free with one click https://bit.ly/submityourwebsite'),
(120, 'Exedo', 'ls5b8vlb@icloud.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/ybaezmsf'),
(121, 'Sterling Whittell', 'sterling.whittell@gmail.com', '', 'Submit your site to over 35 advertising websites for free now https://bit.ly/submityourwebsite'),
(122, 'Johnnie Greville', 'greville.johnnie@gmail.com', '', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://bit.ly/submityourwebsite'),
(123, 'Mike Simpson\r\n', 'no-replyinsoche@gmail.com', 'Competitors not playing the SEO game fair?', 'Negative SEO attack Services. Deindex bad competitors from Google. It works with any Website, video, blog, product or service. \r\nhttps://www.seo-treff.de/product/derank-seo-service/'),
(124, 'Darrell Nickerson', 'vnatasha.sunaina4@tahugejrot.buzz', '', 'You can submit your site to over 1000 different business/advertising directories for free with one click https://1mdr.short.gy/submityoursite'),
(125, 'Exedo', 'g763ax61@icloud.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y7vw8zac'),
(126, 'Exedo', 'vl5pub3a@hotmail.com', 'I promised.', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/ycwqg8qu'),
(127, 'Exedo', 'kruhkqvc@gmail.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y9ep6hno'),
(128, 'Tosha Schnaars', 'omaima.1919w@lokasur.com', '', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/submityoursite'),
(129, 'Exedo', 'bzejh7pf@yahoo.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/yc58bwc6'),
(130, 'Connor Barnet', 'roussama.ararouci@ldwdkj.com', '', 'I was wondering if you wanted to submit your new site to our free business directory? https://1mdr.short.gy/submityoursite'),
(131, 'Exedo', 'b5omiszy@hotmail.com', 'I promised.', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/yblrbp3k'),
(132, 'Debbra Gadberry', 'EugeneClouse@gmail.com', 'Mariano Cowens', 'Good job on the new site! Now go ahead and submit it to our free directory here https://bit.ly/submit-yoursite-now'),
(133, 'Refugia Cuper', 'cuper.refugia@msn.com', 'Social Targeted Traffic', '\r\nIf you ever need more social audience for shivskillfoundation.com, we can run Facebook Traffic campaigns with this service: https://www.seo-treff.de/product/country-targeted-traffic/'),
(134, 'Josefine Curly', 'RosalbaGladish@gmail.com', 'Marchelle Resendes', 'Good job on the new site! Now go ahead and submit it to our free directory here https://bit.ly/submit-yoursite-now'),
(135, 'Jamesspesy', 'chanhonghua@yahoo.com.sg', 'Only today only now from 500 EUR per day for everyone', 'Get from 500 EUR per day >>>>>>>>>>>>>>  https://telegra.ph/Tats%C3%A4chliches-Einkommen-ab-500-EUR-pro-Tag-f%C3%BCr-alle-03-17?43164   <<<<<<<<<<<'),
(136, 'Jamesspesy', 'chanhonghua@yahoo.com.sg', 'Only today only now from 500 EUR per day for everyone', 'Get from 500 EUR per day >>>>>>>>>>>>>>  https://telegra.ph/Tats%C3%A4chliches-Einkommen-ab-500-EUR-pro-Tag-f%C3%BCr-alle-03-17?43164   <<<<<<<<<<<'),
(137, 'Jamesspesy', 'chanhonghua@yahoo.com.sg', 'Only today only now from 500 EUR per day for everyone', 'Get from 500 EUR per day >>>>>>>>>>>>>>  https://telegra.ph/Tats%C3%A4chliches-Einkommen-ab-500-EUR-pro-Tag-f%C3%BCr-alle-03-17?43164   <<<<<<<<<<<'),
(138, 'Jamesspesy', 'chanhonghua@yahoo.com.sg', 'Only today only now from 500 EUR per day for everyone', 'Get from 500 EUR per day >>>>>>>>>>>>>>  https://telegra.ph/Tats%C3%A4chliches-Einkommen-ab-500-EUR-pro-Tag-f%C3%BCr-alle-03-17?43164   <<<<<<<<<<<'),
(139, 'Jamesspesy', 'chanhonghua@yahoo.com.sg', 'Only today only now from 500 EUR per day for everyone', 'Get from 500 EUR per day >>>>>>>>>>>>>>  https://telegra.ph/Tats%C3%A4chliches-Einkommen-ab-500-EUR-pro-Tag-f%C3%BCr-alle-03-17?43164   <<<<<<<<<<<'),
(140, 'Zulma Kinslow', 'zulma@datalist.biz', 'DataList.biz Shutting Down', 'Hello,\r\n\r\nIt is with sad regret to inform you that DataList.biz is shutting down. We have made all our databases available for you at a one-time fee.\r\n\r\nYou can visit us on DataList.biz\r\n\r\nRegards.\r\nZulma'),
(141, 'Exedo', '23juoudc@gmail.com', 'I promised.', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y9rhymtd'),
(142, 'DavidInofe', 'zouyongping_yai2829@yahoo.com.au', 'Income from $ 7600 per day for everyone', 'Income during the crisis from $ 5500 per day for everyone >>>>>>>>>>>>>>  https://telegra.ph/Good-income-from-5000-per-day---only-in-our-certified-licensed-system-03-20?87725   <<<<<<<<<<<'),
(143, 'DavidInofe', 'zouyongping_yai2829@yahoo.com.au', 'Income from $ 7600 per day for everyone', 'Income during the crisis from $ 5500 per day for everyone >>>>>>>>>>>>>>  https://telegra.ph/Good-income-from-5000-per-day---only-in-our-certified-licensed-system-03-20?87725   <<<<<<<<<<<'),
(144, 'DavidInofe', 'zouyongping_yai2829@yahoo.com.au', 'Income from $ 7600 per day for everyone', 'Income during the crisis from $ 5500 per day for everyone >>>>>>>>>>>>>>  https://telegra.ph/Good-income-from-5000-per-day---only-in-our-certified-licensed-system-03-20?87725   <<<<<<<<<<<'),
(145, 'DavidInofe', 'zouyongping_yai2829@yahoo.com.au', 'Income from $ 7600 per day for everyone', 'Income during the crisis from $ 5500 per day for everyone >>>>>>>>>>>>>>  https://telegra.ph/Good-income-from-5000-per-day---only-in-our-certified-licensed-system-03-20?87725   <<<<<<<<<<<'),
(146, 'DavidInofe', 'zouyongping_yai2829@yahoo.com.au', 'Income from $ 7600 per day for everyone', 'Income during the crisis from $ 5500 per day for everyone >>>>>>>>>>>>>>  https://telegra.ph/Good-income-from-5000-per-day---only-in-our-certified-licensed-system-03-20?87725   <<<<<<<<<<<'),
(147, 'MichaelVix', 'chubenkodaniiaz+1wz5@mail.ru', 'Hello world', 'shivskillfoundation.com uriefeodeighrkfldjiijofofjmvkdnsisdiehiusfiajfhweiuioidjsjsbfiadjasifaijdfifijsaaiwghifadja'),
(148, 'Exedo', '5c65urd7@hotmail.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y8s363eo'),
(149, 'Elenanib', 'couliou.mar2@gmail.com', 'Help the Ukrainians', 'Install the application and enjoy life: https://2track.info/gdQJ'),
(150, 'Exedo', 'rn024ouu@gmail.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/ybrfst4s'),
(151, 'DavidHot', 'joachim.behrens@vlh.de', 'Reliable and automatic income on Binary Options from $359857', 'Reliable and automatic Forex income from $360799 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?95645   <<<<<<<<<<<'),
(152, 'DavidHot', 'joachim.behrens@vlh.de', 'Reliable and automatic income on Binary Options from $359857', 'Reliable and automatic Forex income from $360799 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?95645   <<<<<<<<<<<'),
(153, 'DavidHot', 'joachim.behrens@vlh.de', 'Reliable and automatic income on Binary Options from $359857', 'Reliable and automatic Forex income from $360799 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?95645   <<<<<<<<<<<'),
(154, 'DavidHot', 'joachim.behrens@vlh.de', 'Reliable and automatic income on Binary Options from $359857', 'Reliable and automatic Forex income from $360799 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?95645   <<<<<<<<<<<'),
(155, 'DavidHot', 'joachim.behrens@vlh.de', 'Reliable and automatic income on Binary Options from $359857', 'Reliable and automatic Forex income from $360799 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?95645   <<<<<<<<<<<'),
(156, 'DavidHot', 'niggaz95@gmx.de', 'You rest and your trading robot earns from $396896', 'Get a trading robot that will make you $360096 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?53175   <<<<<<<<<<<'),
(157, 'DavidHot', 'niggaz95@gmx.de', 'You rest and your trading robot earns from $396896', 'Get a trading robot that will make you $360096 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?53175   <<<<<<<<<<<'),
(158, 'DavidHot', 'niggaz95@gmx.de', 'You rest and your trading robot earns from $396896', 'Get a trading robot that will make you $360096 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?53175   <<<<<<<<<<<'),
(159, 'DavidHot', 'niggaz95@gmx.de', 'You rest and your trading robot earns from $396896', 'Get a trading robot that will make you $360096 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?53175   <<<<<<<<<<<'),
(160, 'DavidHot', 'niggaz95@gmx.de', 'You rest and your trading robot earns from $396896', 'Get a trading robot that will make you $360096 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24?53175   <<<<<<<<<<<'),
(161, 'Francisca Foskett', 'francisca', '31 March 2022', 'It is with sad regret to inform you DataList.biz is shutting down on 31 March 2022. \r\n\r\nWe have made available databases per country for all companies available.. \r\n\r\nYou can view our samples and download databases instantly on our website DataList.biz'),
(162, '', '', '', ''),
(163, 'Esteban Bynd', 'RaymundoSzubinski@gmail.com', 'Floyd Giannini', 'Submit your site to over 1000 advertising websites for free now https://bit.ly/submit-your-site-here'),
(164, 'DennisNuads', 'kk.chiron@gmail.com', 'Top SMM Panel', 'Best SMM Company https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA'),
(165, 'DennisNuads', 'kk.chiron@gmail.com', 'Top SMM Panel', 'Best SMM Company https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA'),
(166, 'DennisNuads', 'kk.chiron@gmail.com', 'Top SMM Panel', 'Best SMM Company https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA'),
(167, 'DennisNuads', 'kk.chiron@gmail.com', 'Top SMM Panel', 'Best SMM Company https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA'),
(168, 'DennisNuads', 'kk.chiron@gmail.com', 'Top SMM Panel', 'Best SMM Company https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA'),
(169, 'AlfredoSwews', 'shvabra07@gmx.de', 'Top SMM Panel', 'Best SMM Company >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA   <<<<<<<<<<<'),
(170, 'AlfredoSwews', 'shvabra07@gmx.de', 'Top SMM Panel', 'Best SMM Company >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA   <<<<<<<<<<<'),
(171, 'AlfredoSwews', 'shvabra07@gmx.de', 'Top SMM Panel', 'Best SMM Company >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA   <<<<<<<<<<<'),
(172, 'AlfredoSwews', 'shvabra07@gmx.de', 'Top SMM Panel', 'Best SMM Company >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA   <<<<<<<<<<<'),
(173, 'AlfredoSwews', 'shvabra07@gmx.de', 'Top SMM Panel', 'Best SMM Company >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA   <<<<<<<<<<<'),
(174, 'Exedo', '60k88rtk@yahoo.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y9g6gyl9'),
(175, 'Collindot', 'dharee7@hotmail.com', 'Revenu complementaire a partir de 1500 euros par jour', 'Nouveaux revenus a partir de 1500 euros par jour https://telegra.ph/Derni%C3%A8res-nouvelles--Alors-que-les-prix-augmentent-les-Europ%C3%A9ens-commencent-%C3%A0-arr%C3%AAter-de-fumer-en-masse-et-gagnent-en-plus-%C3%A0-par-04-01?q42'),
(176, 'Collindot', 'dharee7@hotmail.com', 'Revenu complementaire a partir de 1500 euros par jour', 'Nouveaux revenus a partir de 1500 euros par jour https://telegra.ph/Derni%C3%A8res-nouvelles--Alors-que-les-prix-augmentent-les-Europ%C3%A9ens-commencent-%C3%A0-arr%C3%AAter-de-fumer-en-masse-et-gagnent-en-plus-%C3%A0-par-04-01?q42'),
(177, 'Collindot', 'dharee7@hotmail.com', 'Revenu complementaire a partir de 1500 euros par jour', 'Nouveaux revenus a partir de 1500 euros par jour https://telegra.ph/Derni%C3%A8res-nouvelles--Alors-que-les-prix-augmentent-les-Europ%C3%A9ens-commencent-%C3%A0-arr%C3%AAter-de-fumer-en-masse-et-gagnent-en-plus-%C3%A0-par-04-01?q42'),
(178, 'Collindot', 'dharee7@hotmail.com', 'Revenu complementaire a partir de 1500 euros par jour', 'Nouveaux revenus a partir de 1500 euros par jour https://telegra.ph/Derni%C3%A8res-nouvelles--Alors-que-les-prix-augmentent-les-Europ%C3%A9ens-commencent-%C3%A0-arr%C3%AAter-de-fumer-en-masse-et-gagnent-en-plus-%C3%A0-par-04-01?q42'),
(179, 'Collindot', 'dharee7@hotmail.com', 'Revenu complementaire a partir de 1500 euros par jour', 'Nouveaux revenus a partir de 1500 euros par jour https://telegra.ph/Derni%C3%A8res-nouvelles--Alors-que-les-prix-augmentent-les-Europ%C3%A9ens-commencent-%C3%A0-arr%C3%AAter-de-fumer-en-masse-et-gagnent-en-plus-%C3%A0-par-04-01?q42'),
(180, 'Collindot', 'felilo26@yahoo.es', 'Only your income on Binary Options from 1587 USDT per day', 'Passive income on the Trading Robot from 1557 USDT per day https://telegra.ph/More-than-1500-USDT-per-day-on-automated-cryptocurrency-trading-04-02-2?axt'),
(181, 'Collindot', 'felilo26@yahoo.es', 'Only your income on Binary Options from 1587 USDT per day', 'Passive income on the Trading Robot from 1557 USDT per day https://telegra.ph/More-than-1500-USDT-per-day-on-automated-cryptocurrency-trading-04-02-2?axt'),
(182, 'Collindot', 'felilo26@yahoo.es', 'Only your income on Binary Options from 1587 USDT per day', 'Passive income on the Trading Robot from 1557 USDT per day https://telegra.ph/More-than-1500-USDT-per-day-on-automated-cryptocurrency-trading-04-02-2?axt'),
(183, 'Collindot', 'felilo26@yahoo.es', 'Only your income on Binary Options from 1587 USDT per day', 'Passive income on the Trading Robot from 1557 USDT per day https://telegra.ph/More-than-1500-USDT-per-day-on-automated-cryptocurrency-trading-04-02-2?axt'),
(184, 'Collindot', 'felilo26@yahoo.es', 'Only your income on Binary Options from 1587 USDT per day', 'Passive income on the Trading Robot from 1557 USDT per day https://telegra.ph/More-than-1500-USDT-per-day-on-automated-cryptocurrency-trading-04-02-2?axt'),
(185, 'Blair Pfander', 'CalandraMckean35363@gmail.com', 'Dorthey Diperna', 'Submit your site to over 1000 directories all with one click here> https://bit.ly/submit-your-site-here'),
(186, 'Henrycok', 'jbsugarloafkey@aol.com', 'Need money? Get it here easily? ', 'Everyone can earn as much as he wants suing this Bot. \r\nhttps://t.me/Crypto2022toolbot'),
(187, 'MichaelHyday', 'beeonthetop.com@gmail.com', 'Buy Followers, Likes and Views', 'Buy Followers, Likes and Views \r\n \r\nGet Thousands of Followers, Likes, Views and more for all you social media channels. \r\nInstagram, Facebook, Tiktok and more.. \r\n \r\nBoost your sales, and get more leads. \r\nhttps://www.beeonthetop.com'),
(188, 'Claudehef', 'henrietanagyova@gmail.com', 'Over $50 million in affiliate marketing with Twitter', 'Over $50,000,000 from Twitter https://telegra.ph/55-million-a-year-in-affiliate-marketing-with-twitter-04-07-4?xwq4'),
(189, 'Claudehef', 'henrietanagyova@gmail.com', 'Over $50 million in affiliate marketing with Twitter', 'Over $50,000,000 from Twitter https://telegra.ph/55-million-a-year-in-affiliate-marketing-with-twitter-04-07-4?xwq4'),
(190, 'Claudehef', 'henrietanagyova@gmail.com', 'Over $50 million in affiliate marketing with Twitter', 'Over $50,000,000 from Twitter https://telegra.ph/55-million-a-year-in-affiliate-marketing-with-twitter-04-07-4?xwq4'),
(191, 'Claudehef', 'henrietanagyova@gmail.com', 'Over $50 million in affiliate marketing with Twitter', 'Over $50,000,000 from Twitter https://telegra.ph/55-million-a-year-in-affiliate-marketing-with-twitter-04-07-4?xwq4'),
(192, 'Claudehef', 'henrietanagyova@gmail.com', 'Over $50 million in affiliate marketing with Twitter', 'Over $50,000,000 from Twitter https://telegra.ph/55-million-a-year-in-affiliate-marketing-with-twitter-04-07-4?xwq4'),
(193, 'Jeannine Gatenby', 'gemooboy.lovej@bucol.net', '', 'Good job on the new site! Now go ahead and submit it to our free directory here https://1mdr.short.gy/submityoursite'),
(194, 'Kittie Robleto', 'AlfonzoKalbach@gmail.com', 'Roberto Betsch', 'You can submit your site to over 1000 different business/advertising directories for free with one click https://bit.ly/submit-your-site-here'),
(195, 'Exedo', 'jgxgavmc@gmail.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y9df4mfx'),
(196, 'Shayne Corner', 'shayne@zippyleads.org', 'ZippyLeads.org Easter Special', 'ZippyLeads.org is running an easter special till the 18th of April.\r\n\r\nGet all the leads you need for your company with our easter special.'),
(197, 'Henrycok', 'tarin_koko@earthlink.net', 'We know how to become rich and do you? ', 'Wow! This is a fastest way for a financial independence. \r\nhttps://profit-gold-strategy.life/?u=bdlkd0x&o=x7t8nng'),
(198, 'Henrycok', 'tarin_koko@earthlink.net', 'We know how to become rich and do you? ', 'Wow! This is a fastest way for a financial independence. \r\nhttps://profit-gold-strategy.life/?u=bdlkd0x&o=x7t8nng'),
(199, 'Henrycok', 'tarin_koko@earthlink.net', 'We know how to become rich and do you? ', 'Wow! This is a fastest way for a financial independence. \r\nhttps://profit-gold-strategy.life/?u=bdlkd0x&o=x7t8nng'),
(200, 'Henrycok', 'tarin_koko@earthlink.net', 'We know how to become rich and do you? ', 'Wow! This is a fastest way for a financial independence. \r\nhttps://profit-gold-strategy.life/?u=bdlkd0x&o=x7t8nng'),
(201, 'Henrycok', 'tarin_koko@earthlink.net', 'We know how to become rich and do you? ', 'Wow! This is a fastest way for a financial independence. \r\nhttps://profit-gold-strategy.life/?u=bdlkd0x&o=x7t8nng'),
(202, 'Raymundo Burnside', 'umonircio@joinm3.com', '', 'Submit your site to over 1000 advertising websites for free now https://1mdr.short.gy/submityoursite'),
(203, 'Henrycok', 'timothycares@hotmail.com', 'We know how to become rich and do you? ', 'Make dollars staying at home and launched this Bot. \r\nhttps://profit-gold-strategy.life/?u=bdlkd0x&o=x7t8nng'),
(204, 'Henrycok', 'ashleybowe@gmail.com', 'Still not a millionaire? The financial robot will make you him! ', 'Your money keep grow 24/7 if you use the financial Robot. https://deruyteryachting.nl/gotodate/go'),
(205, 'Henrycok', 'ashleybowe@gmail.com', 'Still not a millionaire? The financial robot will make you him! ', 'Your money keep grow 24/7 if you use the financial Robot. https://deruyteryachting.nl/gotodate/go'),
(206, 'Henrycok', 'ashleybowe@gmail.com', 'Still not a millionaire? The financial robot will make you him! ', 'Your money keep grow 24/7 if you use the financial Robot. https://deruyteryachting.nl/gotodate/go'),
(207, 'Henrycok', 'ashleybowe@gmail.com', 'Still not a millionaire? The financial robot will make you him! ', 'Your money keep grow 24/7 if you use the financial Robot. https://deruyteryachting.nl/gotodate/go'),
(208, 'Henrycok', 'ashleybowe@gmail.com', 'Still not a millionaire? The financial robot will make you him! ', 'Your money keep grow 24/7 if you use the financial Robot. https://deruyteryachting.nl/gotodate/go'),
(209, 'Tran Himmelmann', 'GregoryStockwell@gmail.com', 'Royal Sajorda', 'Free submission of your new website to over 1000 business directories here https://bit.ly/submit-your-site-here-now'),
(210, 'Henrycok', 'pinky_alhambra@yahoo.com', 'The additional income is available for everyone using this robot. ', 'The financial Robot works for you even when you sleep. https://deruyteryachting.nl/gotodate/go'),
(211, 'Henrycok', 'pinky_alhambra@yahoo.com', 'The additional income is available for everyone using this robot. ', 'The financial Robot works for you even when you sleep. https://deruyteryachting.nl/gotodate/go'),
(212, 'Henrycok', 'pinky_alhambra@yahoo.com', 'The additional income is available for everyone using this robot. ', 'The financial Robot works for you even when you sleep. https://deruyteryachting.nl/gotodate/go'),
(213, 'Henrycok', 'pinky_alhambra@yahoo.com', 'The additional income is available for everyone using this robot. ', 'The financial Robot works for you even when you sleep. https://deruyteryachting.nl/gotodate/go'),
(214, 'Henrycok', 'pinky_alhambra@yahoo.com', 'The additional income is available for everyone using this robot. ', 'The financial Robot works for you even when you sleep. https://deruyteryachting.nl/gotodate/go'),
(215, 'Henrycok', 'norhanifah.abdullah@yahoo.com', 'Launch the robot and let it bring you money. ', 'Making money in the net is easier now. https://deruyteryachting.nl/gotodate/go'),
(216, 'Henrycok', 'norhanifah.abdullah@yahoo.com', 'Launch the robot and let it bring you money. ', 'Making money in the net is easier now. https://deruyteryachting.nl/gotodate/go');
INSERT INTO `tbl_contact` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`) VALUES
(217, 'Henrycok', 'norhanifah.abdullah@yahoo.com', 'Launch the robot and let it bring you money. ', 'Making money in the net is easier now. https://deruyteryachting.nl/gotodate/go'),
(218, 'Henrycok', 'norhanifah.abdullah@yahoo.com', 'Launch the robot and let it bring you money. ', 'Making money in the net is easier now. https://deruyteryachting.nl/gotodate/go'),
(219, 'Henrycok', 'norhanifah.abdullah@yahoo.com', 'Launch the robot and let it bring you money. ', 'Making money in the net is easier now. https://deruyteryachting.nl/gotodate/go'),
(220, 'Exedo', '43mvmhuc@hotmail.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y42nu7xc'),
(221, 'Henrycok', 'sansonecetztera@hotmail.com', 'The online job can bring you a fantastic profit. ', 'Try out the automatic robot to keep earning all day long. https://deruyteryachting.nl/gotodate/go'),
(222, 'Henrycok', 'sansonecetztera@hotmail.com', 'The online job can bring you a fantastic profit. ', 'Try out the automatic robot to keep earning all day long. https://deruyteryachting.nl/gotodate/go'),
(223, 'Henrycok', 'sansonecetztera@hotmail.com', 'The online job can bring you a fantastic profit. ', 'Try out the automatic robot to keep earning all day long. https://deruyteryachting.nl/gotodate/go'),
(224, 'Henrycok', 'sansonecetztera@hotmail.com', 'The online job can bring you a fantastic profit. ', 'Try out the automatic robot to keep earning all day long. https://deruyteryachting.nl/gotodate/go'),
(225, 'Henrycok', 'sansonecetztera@hotmail.com', 'The online job can bring you a fantastic profit. ', 'Try out the automatic robot to keep earning all day long. https://deruyteryachting.nl/gotodate/go'),
(226, 'Leia Grassi', 'leia@topdatalist.com', 'TopDataList.com Shutting Down', 'Hello.\r\n\r\nIt is with sad regret to inform you TopDataList.com is shutting down.\r\n\r\nWe have made all our databases available for you for a once off fee.\r\n\r\nVisit us on TopDataList.com'),
(227, 'Henrycok', '19ramirezodilia95@gmail.com', 'This robot can bring you money 24/7. ', 'Learn how to make hundreds of backs each day. https://deruyteryachting.nl/gotodate/go'),
(228, 'Henrycok', '19ramirezodilia95@gmail.com', 'This robot can bring you money 24/7. ', 'Learn how to make hundreds of backs each day. https://deruyteryachting.nl/gotodate/go'),
(229, 'Henrycok', '19ramirezodilia95@gmail.com', 'This robot can bring you money 24/7. ', 'Learn how to make hundreds of backs each day. https://deruyteryachting.nl/gotodate/go'),
(230, 'Henrycok', '19ramirezodilia95@gmail.com', 'This robot can bring you money 24/7. ', 'Learn how to make hundreds of backs each day. https://deruyteryachting.nl/gotodate/go'),
(231, 'Henrycok', '19ramirezodilia95@gmail.com', 'This robot can bring you money 24/7. ', 'Learn how to make hundreds of backs each day. https://deruyteryachting.nl/gotodate/go'),
(232, 'Aaron Glaser', 'roussama.ararouci@ldwdkj.com', '', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/submityoursite'),
(233, 'Henrycok', '58e2503a-a671@mcafeesecure.com', 'The online income is the easiest ways to make you dream come true. ', 'The additional income is available for everyone using this robot. https://get-profitshere.life/?u=bdlkd0x&o=x7t8nng'),
(234, 'Henrycok', 'marybelsolano@hotmail.com', 'Earning money in the Internet is easy if you use Robot. ', 'Feel free to buy everything you want with the additional income. https://get-profitshere.life/?u=bdlkd0x&o=x7t8nng'),
(235, 'Henrycok', 'hicksrun@hotmail.com', 'Have no money? Earn it online. ', 'We have found the fastest way to be rich. Find it out here. https://get-profitshere.life/?u=bdlkd0x&o=x7t8nng'),
(236, 'Henrycok', 'marissansa@yahoo.com', '# 1 financial expert in the net! Check out the new Robot. ', 'Make dollars staying at home and launched this Bot. https://get-profitshere.life/?u=bdlkd0x&o=x7t8nng'),
(237, 'Henrycok', 'lilujia.film@gmail.com', 'Financial robot is a great way to manage and increase your income.', 'Money, money! Make more money with financial robot! https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng '),
(238, 'Henrycok', 'pastorarymelo@hotmail.com', 'Make money online, staying at home this cold winter.', 'Need money? The financial robot is your solution. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng '),
(239, 'Exedo', '7a2lw1dx@gmail.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y2zj6q3k'),
(240, 'Henrycok', 'hepmeister111@aol.com', 'Provide your family with the money in age. Launch the Robot!', 'Financial independence is what this robot guarantees. https://breweriana.it/gotodate/promo '),
(241, 'Henrycok', 'ret2525@aol.com', 'Have no money? Earn it online.', 'Need money? Get it here easily? https://breweriana.it/gotodate/promo '),
(242, 'Regina Latham', 'gemooboy.lovej@bucol.net', '', 'You can submit your site to over 1000 different business/advertising directories for free with one click https://1mdr.short.gy/submityoursite'),
(243, 'Henrycok', 'renan_pqdt22@hotmail.com', 'Small investments can bring tons of dollars fast.', 'One click of the robot can bring you thousands of bucks. https://breweriana.it/gotodate/promo '),
(244, 'Henrycok', 'shanayhodge@gmail.com', 'One dollar is nothing, but it can grow into $100 here.', 'Robot never sleeps. It makes money for you 24/7. https://breweriana.it/gotodate/promo '),
(245, 'Henrycok', 'Dellomp3s@gmail.com', 'Try out the best financial robot in the Internet.', 'The online income is your key to success. https://2f-2f.de/gotodate/promo '),
(246, 'Henrycok', 'besmi83@hotmail.com', 'Automatic robot is the best start for financial independence.', 'We know how to become rich and do you? https://2f-2f.de/gotodate/promo '),
(247, 'Henrycok', 'trinitrey3485@yahoo.com', 'Launch the financial Bot now to start earning.', 'Check out the new financial tool, which can make you rich. https://2f-2f.de/gotodate/promo '),
(248, 'Henrycok', 'jclausse3@gmail.com', 'Still not a millionaire? Fix it now!', 'No need to worry about the future if your use this financial robot. https://2f-2f.de/gotodate/promo '),
(249, 'Henrycok', 'krysbithell@yahoo.com', 'Make money in the internet using this Bot. It really works!', 'Provide your family with the money in age. Launch the Robot! https://2f-2f.de/gotodate/promo '),
(250, 'Henrycok', 'pjoannamil@aol.com', 'Let your money grow into the capital with this Robot.', 'Only one click can grow up your money really fast. https://2f-2f.de/gotodate/promo '),
(251, 'Russell Soul', 'russell.soul@msn.com', 'Negative SEO Services', 'Hi\r\n\r\nIf you ever need Negative SEO or a de-rank strategy, you can hire us here\r\n\r\nhttps://www.speed-seo.net/product/negative-seo-service/\r\n\r\n'),
(252, 'Henrycok', 'arnaudjacquin@gmail.com', 'No worries if you are fired. Work online.', 'Financial independence is what this robot guarantees. https://2f-2f.de/gotodate/promo '),
(253, 'Henrycok', 'rehab_aboamer@yahoo.com', 'Making money in the net is easier now.', 'The financial Robot works for you even when you sleep. https://2f-2f.de/gotodate/promo '),
(254, 'Henrycok', 'matthewvacaro@yahoo.com', 'Using this Robot is the best way to make you rich.', 'Even a child knows how to make $100 today. https://2f-2f.de/gotodate/promo '),
(255, 'Henrycok', 'julianna954@aol.com', 'Make thousands every week working online here.', 'Financial robot is your success formula is found. Learn more about it. https://2f-2f.de/gotodate/promo '),
(256, 'Henrycok', 'diahorton40@yahoo.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'The online job can bring you a fantastic profit. https://2f-2f.de/gotodate/promo '),
(257, 'Henrycok', 'solocking2000@yahoo.com', 'Online earnings are the easiest way for financial independence.', 'Make money online, staying at home this cold winter. https://2f-2f.de/gotodate/promo '),
(258, 'Margene Stott', '3chawki.berrada@onlyu.link', '', 'Submit your site to over 1000 directories all with one click here> https://1mdr.short.gy/submityoursite'),
(259, 'Henrycok', 'noah.2012@yahoo.com', 'No need to worry about the future if your use this financial robot.', 'The online job can bring you a fantastic profit. https://2f-2f.de/gotodate/promo '),
(260, 'Henrycok', 'perur.balasubramanian@gmail.com', 'Robot never sleeps. It makes money for you 24/7.', 'Make money in the internet using this Bot. It really works! https://2f-2f.de/gotodate/promo '),
(261, 'Henrycok', 'misscoleman25@aol.com', 'Launch the best investment instrument to start making money today.', 'Make money, not war! Financial Robot is what you need. https://2f-2f.de/gotodate/promo '),
(262, 'Exedo', '7e5dus5f@gmail.com', 'I promised.', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://bit.ly/3KCCpjc'),
(263, 'Henrycok', 'deludis@yahoo.com', 'Rich people are rich because they use this robot.', 'We know how to make our future rich and do you? https://2f-2f.de/gotodate/promo '),
(264, 'Henrycok', 'nervedoc@hutchtel.net', 'Check out the automatic Bot, which works for you 24/7.', 'Attention! Financial robot may bring you millions! https://2f-2f.de/gotodate/promo '),
(265, 'Jamescoeme', 'sudonjerseys@optusnet.com.au', 'Earning from home with income more $204 in 21 minutes', 'Passive income from $231 in 11 minutes https://300usd-in-25-minutes.blogspot.com.ar/?id5691'),
(266, 'Jamescoeme', 'sudonjerseys@optusnet.com.au', 'Earning from home with income more $204 in 21 minutes', 'Passive income from $231 in 11 minutes https://300usd-in-25-minutes.blogspot.com.ar/?id5691'),
(267, 'Jamescoeme', 'sudonjerseys@optusnet.com.au', 'Earning from home with income more $204 in 21 minutes', 'Passive income from $231 in 11 minutes https://300usd-in-25-minutes.blogspot.com.ar/?id5691'),
(268, 'Jamescoeme', 'sudonjerseys@optusnet.com.au', 'Earning from home with income more $204 in 21 minutes', 'Passive income from $231 in 11 minutes https://300usd-in-25-minutes.blogspot.com.ar/?id5691'),
(269, 'Jamescoeme', 'sudonjerseys@optusnet.com.au', 'Earning from home with income more $204 in 21 minutes', 'Passive income from $231 in 11 minutes https://300usd-in-25-minutes.blogspot.com.ar/?id5691'),
(270, 'Henrycok', 'nicolevalentim@gmail.com', 'Watch your money grow while you invest with the Robot.', 'Make thousands of bucks. Financial robot will help you to do it! https://cok.187sued.de/gotodate/promo '),
(271, 'Henrycok', 'williamsmnt@aol.com', 'Start making thousands of dollars every week.', 'Have no financial skills? Let Robot make money for you. https://cok.187sued.de/gotodate/promo '),
(272, 'Nydia Obryan', 'nydia@customdata.me', 'Leads for your business', 'Hello, from CustomData.me we are a provider of unique databases that could help your business.\r\n\r\nPlease visit us at CustomData.me to see if we can help you.\r\n\r\nRegards,\r\nNydia'),
(273, 'Henrycok', 'xjy1412@gmail.com', 'Make thousands every week working online here.', 'Start making thousands of dollars every week. https://cok.187sued.de/gotodate/promo '),
(274, 'Azucena', 'info@designerappstudio.com', 'Shiv Skill Foundation', 'Hi there \r\n \r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED \r\n\r\nBuy now: https://thawking.store\r\n \r\nEnjoy, \r\n \r\nAzucena'),
(275, 'Henrycok', 'kaidromeda@aol.com', 'Wow! This Robot is a great start for an online career.', 'Additional income is now available for anyone all around the world. https://cok.187sued.de/gotodate/promo '),
(276, 'Henrycok', 'amyluha@yahoo.com', 'This robot can bring you money 24/7.', 'Make money in the internet using this Bot. It really works! https://cok.187sued.de/gotodate/promo '),
(277, 'Henrycok', 'r_pomroy@hotmail.com', 'The financial Robot works for you even when you sleep.', 'Make your money work for you all day long. https://cok.187sued.de/gotodate/promo '),
(278, 'Henrycok', 'johnnyringo3@gmail.com', 'Trust the financial Bot to become rich.', 'Have no financial skills? Let Robot make money for you. https://cok.187sued.de/gotodate/promo '),
(279, 'Henrycok', 'sanjay@systemshydraulics.com', 'No need to work anymore. Just launch the robot.', 'Online earnings are the easiest way for financial independence. https://cok.187sued.de/gotodate/promo '),
(280, 'Henrycok', 'vbrowne2@sbcglobal.net', 'Still not a millionaire? Fix it now!', 'Robot is the best way for everyone who looks for financial independence. https://cok.187sued.de/gotodate/promo '),
(281, 'Una Branton', 'gemooboy.lovej@bucol.net', '', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/submityoursite'),
(282, 'Robt Loehr', 'robt.loehr@gmail.com', 'NEW: Semrush Backlinks', 'Hi there\r\nDo you want to get backlinks from domains that have tons of ranking keywords?\r\n\r\nhttps://www.monkeydigital.co/semrush-backlinks/'),
(283, 'Exedo', 'q3vs7u5d@hotmail.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y6mbnf7a'),
(284, 'Henrycok', 'Jsa7715@yahoo.com', 'Financial independence is what this robot guarantees.', 'No need to worry about the future if your use this financial robot. https://cok.187sued.de/gotodate/promo '),
(285, 'Henrycok', 'mikemeister@gmail.com', 'The fastest way to make you wallet thick is here.', 'Attention! Here you can earn money online! https://cok.187sued.de/gotodate/promo '),
(286, 'Henrycok', 'dvruffin@GMail.com', 'Make money in the internet using this Bot. It really works!', 'Online job can be really effective if you use this Robot. https://cok.187sued.de/gotodate/promo '),
(287, 'Henrycok', 'rachel.holmberg@gmail.com', 'Try out the best financial robot in the Internet.', 'The best online investment tool is found. Learn more! https://cok.187sued.de/gotodate/promo '),
(288, 'Exedo', 'zia3xgfv@yahoo.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y65lsf5e'),
(289, 'Henrycok', 'aparna.mirajkar@gmail.com', 'Make thousands every week working online here.', 'The fastest way to make you wallet thick is here. https://cok.187sued.de/gotodate/promo '),
(290, 'lefExedo', '2w8c8ya2@gmail.com', 'Take your..', 'We have prepared a special offer for you. Take your 500$ https://tinyurl.com/y6snwhh3'),
(291, 'Henrycok', 'lohasmilly@hotmail.com', 'Need cash? Launch this robot and see what it can.', 'Make yourself rich in future using this financial robot. https://cok.187sued.de/gotodate/promo '),
(292, 'Henrycok', 'shanigirl528@yahoo.com', 'Only one click can grow up your money really fast.', 'Launch the financial Bot now to start earning. https://cok.187sued.de/gotodate/promo '),
(293, 'Henrycok', 'dccfiji@yahoo.com', 'One dollar is nothing, but it can grow into $100 here.', 'Need money? Get it here easily! Just press this to launch the robot. https://cok.187sued.de/gotodate/promo '),
(294, 'Grayce Lomay', 'AlvinaBement81920@gmail.com', 'Deidre Hausner', 'Add your site to 1000 business directories with one click here-> https://bit.ly/submit-your-site-here-now'),
(295, 'lefExedo', 'qx7durqq@yahoo.com', 'Take your..', 'We have prepared a special offer for you. Take your 500$ https://tinyurl.com/y4cveolk'),
(296, 'Henrycok', 'pheonixrichards@yahoo.com', 'Using this Robot is the best way to make you rich.', 'Just one click can turn you dollar into $1000. https://cok.187sued.de/gotodate/promo '),
(297, 'DavidCup', 'clday_07@hotmail.com', '$35,000 IN ONE WEEK!', '$20,000 IN ONE WEEK! https://1400usd-for-10-minutes.blogspot.hu/2022/05/how-to-earn-1400-in-10-minutes.html?yes646935'),
(298, 'DavidCup', 'clday_07@hotmail.com', '$35,000 IN ONE WEEK!', '$20,000 IN ONE WEEK! https://1400usd-for-10-minutes.blogspot.hu/2022/05/how-to-earn-1400-in-10-minutes.html?yes646935'),
(299, 'DavidCup', 'clday_07@hotmail.com', '$35,000 IN ONE WEEK!', '$20,000 IN ONE WEEK! https://1400usd-for-10-minutes.blogspot.hu/2022/05/how-to-earn-1400-in-10-minutes.html?yes646935'),
(300, 'DavidCup', 'clday_07@hotmail.com', '$35,000 IN ONE WEEK!', '$20,000 IN ONE WEEK! https://1400usd-for-10-minutes.blogspot.hu/2022/05/how-to-earn-1400-in-10-minutes.html?yes646935'),
(301, 'DavidCup', 'clday_07@hotmail.com', '$35,000 IN ONE WEEK!', '$20,000 IN ONE WEEK! https://1400usd-for-10-minutes.blogspot.hu/2022/05/how-to-earn-1400-in-10-minutes.html?yes646935'),
(302, 'Exedo', 'bcum2ney@icloud.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/yxvoankz'),
(303, 'Henrycok', 'jcpayne1219@msn.com', 'One dollar is nothing, but it can grow into $100 here.', 'Even a child knows how to make money. Do you? https://cok.187sued.de/gotodate/promo '),
(304, 'Henrycok', 'tford@windsor.k12.mo.us', 'Make money in the internet using this Bot. It really works!', 'The financial Robot is your future wealth and independence. https://cok.187sued.de/gotodate/promo '),
(305, 'Henrycok', 'tigre12_99@yahoo.com', 'Have no financial skills? Let Robot make money for you.', 'The fastest way to make you wallet thick is here. https://cok.187sued.de/gotodate/promo '),
(306, 'Henrycok', 'hfss@mail.com', 'Make money, not war! Financial Robot is what you need.', 'Robot is the best solution for everyone who wants to earn. https://cok.187sued.de/gotodate/promo '),
(307, 'Henrycok', 'olivierread@hotmail.com', 'Make your laptop a financial instrument with this program.', 'The best online job for retirees. Make your old ages rich. https://cok.187sued.de/gotodate/promo '),
(308, 'Mattie Manske', 'roussama.ararouci@ldwdkj.com', '', 'Submit your site to over 1000 directories all with one click here> https://1mdr.short.gy/submityoursite'),
(309, 'Henrycok', 'cjmyers54@aol.com', 'Watch your money grow while you invest with the Robot.', 'Start making thousands of dollars every week. https://cok.187sued.de/gotodate/promo '),
(310, 'Exedo', '4zfwcm3w@gmail.com', 'I promised.', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y5jjjbrq'),
(311, 'Henrycok', 'thalls40085@gmail.com', 'Attention! Financial robot may bring you millions!', 'Wow! This is a fastest way for a financial independence. https://cok.187sued.de/gotodate/promo '),
(312, 'Henrycok', 'kb_meant2be@q.com', 'Make your laptop a financial instrument with this program.', 'Even a child knows how to make money. Do you? https://cok.187sued.de/gotodate/promo '),
(313, 'Henrycok', 'Zigzagmim@comcast.net', 'The financial Robot works for you even when you sleep.', 'Let the financial Robot be your companion in the financial market. https://cok.187sued.de/gotodate/promo '),
(314, 'Exedo', 'tifwk9xx@yahoo.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y24akkeo'),
(315, 'Henrycok', 'felicia.ricci@gmail.com', 'Launch the robot and let it bring you money.', 'Turn $1 into $100 instantly. Use the financial Robot. https://cok.187sued.de/gotodate/promo '),
(316, 'Henrycok', 'tracyrubio@rocketmail.com', 'Attention! Here you can earn money online!', 'Looking forward for income? Get it online. https://cok.187sued.de/gotodate/promo '),
(317, 'Henrycok', 'renee_ye@hotmail.com', 'Check out the new financial tool, which can make you rich.', 'Online Bot will bring you wealth and satisfaction. https://cok.187sued.de/gotodate/promo '),
(318, 'Elton Catenaccio', 'JcTrebbe@gmail.com', 'Charline Stagger', 'Good job on the new site! Now go ahead and submit it to our free directory here https://bit.ly/submit-your-site-here-now'),
(319, 'Henrycok', 'vanessa_landaverde.lara@hotmail.com', 'This robot will help you to make hundreds of dollars each day.', 'Start making thousands of dollars every week. https://cok.187sued.de/gotodate/promo '),
(320, 'Exedo', 'qpgqz2jx@icloud.com', 'I promised.', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/y5mnnlze'),
(321, 'Henrycok', 'ney.mashop@gmail.com', 'Still not a millionaire? Fix it now!', 'Financial robot keeps bringing you money while you sleep. https://cok.187sued.de/gotodate/link '),
(322, 'Henrycok', 'Elaine@Goodell.net', 'Find out about the fastest way for a financial independence.', 'The financial Robot is your future wealth and independence. https://cok.187sued.de/gotodate/link '),
(323, 'Exedo', 'mr2tik14@gmail.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y3hw4byq'),
(324, 'Henrycok', 'xxnumaxx@gmail.com', 'The additional income for everyone.', 'Financial robot is a great way to manage and increase your income. https://cok.187sued.de/gotodate/link '),
(325, 'DavidCup', 'shortyg251985@yahoo.com', 'QUICK INCOME OVER $550614 PER WEEK', 'QUICK PROFIT FROM $559609 PER MONTH https://157usd-for-3-minutes.blogspot.no/p/your-potential-income-up-to-5000-per-day.html?id91163'),
(326, 'DavidCup', 'shortyg251985@yahoo.com', 'QUICK INCOME OVER $550614 PER WEEK', 'QUICK PROFIT FROM $559609 PER MONTH https://157usd-for-3-minutes.blogspot.no/p/your-potential-income-up-to-5000-per-day.html?id91163'),
(327, 'DavidCup', 'shortyg251985@yahoo.com', 'QUICK INCOME OVER $550614 PER WEEK', 'QUICK PROFIT FROM $559609 PER MONTH https://157usd-for-3-minutes.blogspot.no/p/your-potential-income-up-to-5000-per-day.html?id91163'),
(328, 'DavidCup', 'shortyg251985@yahoo.com', 'QUICK INCOME OVER $550614 PER WEEK', 'QUICK PROFIT FROM $559609 PER MONTH https://157usd-for-3-minutes.blogspot.no/p/your-potential-income-up-to-5000-per-day.html?id91163'),
(329, 'DavidCup', 'shortyg251985@yahoo.com', 'QUICK INCOME OVER $550614 PER WEEK', 'QUICK PROFIT FROM $559609 PER MONTH https://157usd-for-3-minutes.blogspot.no/p/your-potential-income-up-to-5000-per-day.html?id91163'),
(330, 'Archie Borges', 'archie@topdatalist.com', 'It is with sad regret to inform you TopDataList.com is shutting down.', 'Hi, It is with sad regret to inform you TopDataList.com is shutting down.\r\n\r\nWe are ceasing operations on TopDataList.com and have made our leads available at a $149 once off fee.\r\n\r\nVisit us on TopDataList.com\r\nRegards,\r\nArchie'),
(331, 'Jenifer Thurston', 'jenifer@customdatabases.org', 'Leads for sale', 'Your go-to source for leads. We can provide business to business and business to consumer leads, custom-tailored to your needs.\r\n\r\nCustomDatabases.org'),
(332, 'Henrycok', 'steve.rigby@bigpond.com', '# 1 financial expert in the net! Check out the new Robot.', 'The online income is your key to success. https://cok.bookeat.es/gotodate/promo '),
(333, 'Henrycok', 'Jessicasharman121@yahoo.com', 'Financial robot is your success formula is found. Learn more about it.', 'Trust your dollar to the Robot and see how it grows to $100. https://cok.bookeat.es/gotodate/promo '),
(334, 'Henrycok', 'mosineebill@aol.com', 'Let the Robot bring you money while you rest.', 'The online income is your key to success. https://cok.bookeat.es/gotodate/promo '),
(335, 'Henrycok', 'nick.thegrapes@sky.com', 'No need to worry about the future if your use this financial robot.', 'Make your money work for you all day long. https://cok.bookeat.es/gotodate/promo '),
(336, 'Exedo', 'phb1c2wc@icloud.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y6oszqny'),
(337, 'Henrycok', 'michaelgutierrez9797@yahoo.com', 'Need money? Earn it without leaving your home.', 'Make yourself rich in future using this financial robot. https://cok.bookeat.es/gotodate/promo '),
(338, 'Exedo', 'dyjkigy1@gmail.com', 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y6ba5fuh'),
(339, 'Henrycok', 'timothy_spidle@yahoo.com', 'Check out the new financial tool, which can make you rich.', 'Buy everything you want earning money online. https://cok.bookeat.es/gotodate/promo '),
(340, 'Henrycok', 'abmy2007@yahoo.com', 'Financial independence is what everyone needs.', 'The online income is the easiest ways to make you dream come true. https://cok.bookeat.es/gotodate/promo '),
(341, 'Henrycok', 'i-kissed-agirl@hotmail.com', 'Watch your money grow while you invest with the Robot.', 'Turn $1 into $100 instantly. Use the financial Robot. https://cok.bookeat.es/gotodate/promo '),
(342, 'Henrycok', 'rodriguez_lemon234@yahoo.com', 'Make yourself rich in future using this financial robot.', 'Turn $1 into $100 instantly. Use the financial Robot. https://cok.bookeat.es/gotodate/promo '),
(343, 'num1492428krya', '309n4b6etdpp@snapmail.ru', 'top1492428tjtyjy', 'mes1492428rttyneg ZE1AVin 6eTK XDDShLQ'),
(344, 'Henrycok', 'tanspannepsg@yahoo.com', 'The best way for everyone who rushes for financial independence.', '# 1 financial expert in the net! Check out the new Robot. https://cok.bookeat.es/gotodate/promotion '),
(345, 'Shaunte Rhodes', 'ntoukirhasan7860@jaypetfood.com', '', 'Submit your site to over 1000 directories all with one click here> https://1mdr.short.gy/submityoursite'),
(346, 'Henrycok', 'batmannate2000@aol.com', 'Make yourself rich in future using this financial robot.', 'The online job can bring you a fantastic profit. https://cok.bookeat.es/gotodate/promotion '),
(347, 'Henrycok', 'pradeepghai12@gmail.com', 'Financial robot guarantees everyone stability and income.', 'Trust your dollar to the Robot and see how it grows to $100. https://cok.bookeat.es/gotodate/promotion '),
(348, 'nam1492428flebno', '309n4b6etdpp@snapmail.ru', 'typ1492428trurtu', 'mns1492428ngkyt MLu5yV2 yclM 2jUjm6e'),
(349, 'Henrycok', 'hybop@sbcglobal.net', 'Financial independence is what this robot guarantees.', 'Wow! This is a fastest way for a financial independence. https://cok.bookeat.es/gotodate/promotion '),
(350, 'Henrycok', 'jon5133@aol.com', 'The success formula is found. Learn more about it.', 'Wow! This is a fastest way for a financial independence. https://cok.bookeat.es/gotodate/promotion '),
(351, 'Henrycok', 'romans1165@yahoo.com', 'Wow! This is a fastest way for a financial independence.', 'Additional income is now available for anyone all around the world. https://cok.bookeat.es/gotodate/promotion '),
(352, 'Henrycok', 'yopi_sofiana@yahoo.com', 'Make your money work for you all day long.', 'Start making thousands of dollars every week just using this robot. https://cok.bookeat.es/gotodate/promotion '),
(353, 'Henrycok', 'anivinipux@yahoo.com', 'The additional income for everyone.', 'Make yourself rich in future using this financial robot. https://cok.bookeat.es/gotodate/promotion '),
(354, 'Exedo', '8j9aotmz@icloud.com', 'I promised.', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/2qttc5fa'),
(355, 'Henrycok', 'ash_loves_shopping@yahoo.com', 'Looking forward for income? Get it online.', '# 1 financial expert in the net! Check out the new Robot. https://cok.battletech-newsletter.de/gotodate/promo '),
(356, 'Henrycok', 'vino.ganesh@gmail.com', 'Make your laptop a financial instrument with this program.', 'Watch your money grow while you invest with the Robot. https://cok.battletech-newsletter.de/gotodate/promo '),
(357, 'Henrycok', 'olegi99@hotmail.com', 'The financial Robot works for you even when you sleep.', 'Make money in the internet using this Bot. It really works! https://cok.battletech-newsletter.de/cok '),
(358, 'Henrycok', 'rossenbergalfred@yahoo.com', 'Make money in the internet using this Bot. It really works!', 'It is the best time to launch the Robot to get more money. https://cok.battletech-newsletter.de/cok '),
(359, 'Henrycok', 'djemilm@gmail.com', 'Make your laptop a financial instrument with this program.', 'Learn how to make hundreds of backs each day. https://cok.battletech-newsletter.de/cok '),
(360, 'Exedo', 'ooc0r5qe@yahoo.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/2huvwnn2'),
(361, 'Henrycok', 'saturniana_crms@hotmail.com', 'Trust your dollar to the Robot and see how it grows to $100.', 'Financial robot is a great way to manage and increase your income. https://cok.battletech-newsletter.de/cok '),
(362, 'Henrycok', 'Plwola25713@aol.com', 'Your money work even when you sleep.', 'Your money keep grow 24/7 if you use the financial Robot. https://cok.battletech-newsletter.de/cok '),
(363, 'Henrycok', 'donemry@aol.com', 'Financial robot is the best companion of rich people.', 'Watch your money grow while you invest with the Robot. https://cok.battletech-newsletter.de/cok '),
(364, 'Henrycok', 'cheeraae34@yahoo.com', '# 1 financial expert in the net! Check out the new Robot.', 'Make dollars just sitting home. https://cok.battletech-newsletter.de/cok '),
(365, 'Henrycok', 'wohararph@comcast.net', 'Making money is very easy if you use the financial Robot.', 'Even a child knows how to make $100 today. https://cok.battletech-newsletter.de/cok '),
(366, 'Henrycok', 'ohyeah1717@gmail.com', 'Make dollars just sitting home.', '# 1 financial expert in the net! Check out the new Robot. https://cok.battletech-newsletter.de/cok '),
(367, 'Henrycok', 'kayla_sexy_23@hotmail.com', 'The financial Robot is the most effective financial tool in the net!', 'Wow! This Robot is a great start for an online career. https://cok.battletech-newsletter.de/cok '),
(368, 'Exedo', 'px3voyvj@hotmail.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/2koggtc9'),
(369, 'Jere Duffy', '5hoss@gmailup.com', '', 'Free submission of your new website to over 1000 business directories here https://1mdr.short.gy/submityoursite'),
(370, 'Henrycok', 'irene.stump@yahoo.com', 'The online income is your key to success.', 'Buy everything you want earning money online. https://cok.battletech-newsletter.de/cok '),
(371, 'Henrycok', 'resie_99@hotmail.com', 'Financial robot is your success formula is found. Learn more about it.', 'The financial Robot works for you even when you sleep. https://cok.battletech-newsletter.de/cok '),
(372, 'Henrycok', 'wwafgamark@gmail.com', 'Trust the financial Bot to become rich.', 'This robot will help you to make hundreds of dollars each day. https://cok.battletech-newsletter.de/cok '),
(373, 'Janette', 'csqs@lemans.fr', 'Janette Landsborough', 'EASE YOUR PAIN IN 10 MINUTES EFFORTLESSLY\r\n\r\nBe Free from Neck Pain\r\nTry NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\nJanette \r\nShiv Skill Foundation'),
(374, 'Henrycok', 'meangurls98@hotmail.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', 'Make money, not war! Financial Robot is what you need. https://cok.battletech-newsletter.de/cok '),
(375, 'Henrycok', 'dj_one_andonly@yahoo.com', 'Financial robot keeps bringing you money while you sleep.', 'Provide your family with the money in age. Launch the Robot! https://cok.battletech-newsletter.de/cok '),
(376, 'Henrycok', 'RookTessa9292@o2.pl', 'Try out the best financial robot in the Internet.', 'Make thousands every week working online here. https://cok.bode-roesch.de/cok '),
(377, 'Jame Mayall', 'KoriMihalik@gmail.com', 'Bryce Ennels', 'Add your site to 1000 business directories with one click here-> https://bit.ly/submityoursitefreehere '),
(378, 'Henrycok', 'RookTessa9292@o2.pl', 'Automatic robot is the best start for financial independence.', 'Automatic robot is the best start for financial independence. https://cok.bode-roesch.de/cok '),
(379, 'Henrycok', 'RookTessa9292@o2.pl', 'The financial Robot is your # 1 expert of making money.', 'The success formula is found. Learn more about it. https://cok.bode-roesch.de/cok '),
(380, 'Henrycok', 'RookTessa9292@o2.pl', 'Make dollars just sitting home.', 'Wow! This is a fastest way for a financial independence. https://cok.bode-roesch.de/cok '),
(381, 'Henrycok', 'RookTessa9292@o2.pl', 'Make thousands of bucks. Financial robot will help you to do it!', 'Feel free to buy everything you want with the additional income. https://cok.bode-roesch.de/cok '),
(382, 'Henrycok', 'landmand05@mail-online.dk', 'Make dollars just sitting home.', 'The success formula is found. Learn more about it. https://cok.bode-roesch.de/cok '),
(383, 'Henrycok', 'angie@forum.dk', 'Everyone can earn as much as he wants now.', 'Feel free to buy everything you want with the additional income. https://cok.bode-roesch.de/cok '),
(384, 'Britney Newbigin', 'gemooboy.lovej@bucol.net', '', 'Submit your site to over 1000 advertising websites for free now https://1mdr.short.gy/submityoursite'),
(385, 'Henrycok', 'gtb089@mailme.dk', 'Let the financial Robot be your companion in the financial market.', 'Financial robot is the best companion of rich people. https://cok.bode-roesch.de/cok '),
(386, 'Henrycok', 'zodiachs@lycos.de', 'Automatic robot is the best start for financial independence.', 'The huge income without investments is available, now! https://cok.bode-roesch.de/cok '),
(387, 'Morton Isachsen', 'ChetSweatt@gmail.com', 'Sheryl Mccaster', 'Submit your site to over 1000 directories all with one click here> https://bit.ly/submityoursitefreehere '),
(388, 'Henrycok', 'weipaj@forum.dk', 'Still not a millionaire? The financial robot will make you him!', 'The online job can bring you a fantastic profit. https://cok.bode-roesch.de/cok '),
(389, 'Henrycok', 'isq-music@forum.dk', 'Make thousands of bucks. Pay nothing.', 'Launch the financial Bot now to start earning. https://cok.bode-roesch.de/cok '),
(390, 'Henrycok', 'sustanon_250@yandex.ru', 'Trust the financial Bot to become rich.', 'The financial Robot is the most effective financial tool in the net! https://cok.bode-roesch.de/cok '),
(391, 'Henrycok', 'hihc@forum.dk', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Online job can be really effective if you use this Robot. https://cok.bode-roesch.de/cok '),
(392, 'Henrycok', 'ikkekunsex@forum.dk', 'Launch the financial Bot now to start earning.', 'Try out the automatic robot to keep earning all day long. https://cok.bode-roesch.de/cok '),
(393, 'Henrycok', 'stas131095@mailme.dk', 'Make thousands every week working online here.', 'Looking for additional money? Try out the best financial instrument. https://cok.bode-roesch.de/cok '),
(394, 'Henrycok', 'allanpernille@forum.dk', 'Try out the automatic robot to keep earning all day long.', 'Financial Robot is #1 investment tool ever. Launch it! https://cok.bode-roesch.de/cok '),
(395, 'Henrycok', 'mikkel-tornhoj@forum.dk', 'Thousands of bucks are guaranteed if you use this robot.', 'Looking for additional money? Try out the best financial instrument. https://cok.bode-roesch.de/cok '),
(396, 'Henrycok', 'bissen@mail-online.dk', 'It is the best time to launch the Robot to get more money.', 'Using this Robot is the best way to make you rich. https://cok.bode-roesch.de/cok '),
(397, 'Henrycok', 'moccapigen@mailme.dk', 'Buy everything you want earning money online.', 'Trust your dollar to the Robot and see how it grows to $100. https://cok.bode-roesch.de/cok '),
(398, 'Henrycok', 'esbjergv@forum.dk', 'Need cash? Launch this robot and see what it can.', 'Most successful people already use Robot. Do you? https://cok.bode-roesch.de/cok '),
(399, 'Henrycok', 'trau2@forum.dk', 'Need cash? Launch this robot and see what it can.', 'The best online job for retirees. Make your old ages rich. https://cok.bode-roesch.de/cok '),
(400, 'Henrycok', 'lena_aki0@mailme.dk', 'The fastest way to make your wallet thick is found.', 'Wow! This Robot is a great start for an online career. https://cok.bode-roesch.de/cok '),
(401, 'Henrycok', 'rantzau@forum.dk', 'Make thousands of bucks. Financial robot will help you to do it!', 'Looking for an easy way to make money? Check out the financial robot. https://cok.blueliners07.de/cok '),
(402, 'Henrycok', 'allanhassig@forum.dk', 'Your money work even when you sleep.', 'Have no financial skills? Let Robot make money for you. https://cok.blueliners07.de/cok '),
(403, 'Henrycok', 'jessoo@mail-online.dk', 'Everyone can earn as much as he wants now.', 'Let the Robot bring you money while you rest. https://cok.blueliners07.de/cok '),
(404, 'Henrycok', 'tulletrunte69@forum.dk', 'The online income is your key to success.', 'Still not a millionaire? The financial robot will make you him! https://cok.blueliners07.de/cok '),
(405, 'Henrycok', 'victor_r2000@mailme.dk', 'Buy everything you want earning money online.', 'The fastest way to make you wallet thick is here. https://cok.blueliners07.de/cok '),
(406, 'Henrycok', 'drproctopus@yahoo.com', 'The huge income without investments is available.', 'Launch the best investment instrument to start making money today. https://cok.blueliners07.de/cok '),
(407, 'Henrycok', 'landmand89@mail-online.dk', 'No need to worry about the future if your use this financial robot.', 'Looking for an easy way to make money? Check out the financial robot. https://cok.blueliners07.de/cok '),
(408, 'Henrycok', 'kasper.ladefoged@forum.dk', 'Make thousands of bucks. Pay nothing.', 'This robot can bring you money 24/7. https://cok.blueliners07.de/cok '),
(409, 'Henrycok', 'karlkarlsen@forum.dk', 'There is no need to look for a job anymore. Work online.', 'Start your online work using the financial Robot. https://cok.blueliners07.de/cok '),
(410, 'Henrycok', 'kmko@mailme.dk', 'The online income is the easiest ways to make you dream come true.', 'Attention! Financial robot may bring you millions! https://cok.blueliners07.de/cok '),
(411, 'Henrycok', 'hjalte.t@forum.dk', 'The financial Robot is your future wealth and independence.', 'Even a child knows how to make $100 today with the help of this robot. https://cok.blueliners07.de/cok '),
(412, 'Henrycok', 'poul.roedseth30@forum.dk', 'We know how to become rich and do you?', 'We know how to make our future rich and do you? https://cok.blueliners07.de/cok '),
(413, 'Henrycok', 'borya_dmitri@mailme.dk', 'Need cash? Launch this robot and see what it can.', 'Check out the new financial tool, which can make you rich. https://cok.blueliners07.de/cok '),
(414, 'Henrycok', 'jonjj@forum.dk', 'Automatic robot is the best start for financial independence.', 'Feel free to buy everything you want with the additional income. https://cok.blueliners07.de/cok '),
(415, 'Henrycok', 'jito@mail-online.dk', 'Need money? Earn it without leaving your home.', 'Turn $1 into $100 instantly. Use the financial Robot. https://cok.blueliners07.de/cok '),
(416, 'Henrycok', 'brunk@jubiipost.dk', 'Have no money? Earn it online.', 'Make money in the internet using this Bot. It really works! https://cok.blueliners07.de/cok '),
(417, 'Henrycok', 'andersmad@forum.dk', 'The online income is your key to success.', 'Launch the robot and let it bring you money. https://cok.blueliners07.de/cok '),
(418, 'Henrycok', 'andersmad@forum.dk', 'The online income is your key to success.', 'Launch the robot and let it bring you money. https://cok.blueliners07.de/cok '),
(419, 'Henrycok', 'andersmad@forum.dk', 'The online income is your key to success.', 'Launch the robot and let it bring you money. https://cok.blueliners07.de/cok '),
(420, 'Henrycok', 'andersmad@forum.dk', 'The online income is your key to success.', 'Launch the robot and let it bring you money. https://cok.blueliners07.de/cok '),
(421, 'Henrycok', 'andersmad@forum.dk', 'The online income is your key to success.', 'Launch the robot and let it bring you money. https://cok.blueliners07.de/cok '),
(422, 'Henrycok', 'sinnet@forum.dk', 'Trust your dollar to the Robot and see how it grows to $100.', 'Need money? Get it here easily! Just press this to launch the robot. https://cok.blueliners07.de/cok '),
(423, 'Henrycok', 'sinnet@forum.dk', 'Trust your dollar to the Robot and see how it grows to $100.', 'Need money? Get it here easily! Just press this to launch the robot. https://cok.blueliners07.de/cok '),
(424, 'Henrycok', 'sinnet@forum.dk', 'Trust your dollar to the Robot and see how it grows to $100.', 'Need money? Get it here easily! Just press this to launch the robot. https://cok.blueliners07.de/cok '),
(425, 'Henrycok', 'sinnet@forum.dk', 'Trust your dollar to the Robot and see how it grows to $100.', 'Need money? Get it here easily! Just press this to launch the robot. https://cok.blueliners07.de/cok '),
(426, 'Henrycok', 'sinnet@forum.dk', 'Trust your dollar to the Robot and see how it grows to $100.', 'Need money? Get it here easily! Just press this to launch the robot. https://cok.blueliners07.de/cok '),
(427, 'Henrycok', 'jesspell@aol.com', 'Making money can be extremely easy if you use this Robot.', 'Need cash? Launch this robot and see what it can. https://cok.blueliners07.de/cok '),
(428, 'Henrycok', 'jesspell@aol.com', 'Making money can be extremely easy if you use this Robot.', 'Need cash? Launch this robot and see what it can. https://cok.blueliners07.de/cok '),
(429, 'Henrycok', 'jesspell@aol.com', 'Making money can be extremely easy if you use this Robot.', 'Need cash? Launch this robot and see what it can. https://cok.blueliners07.de/cok '),
(430, 'Henrycok', 'jesspell@aol.com', 'Making money can be extremely easy if you use this Robot.', 'Need cash? Launch this robot and see what it can. https://cok.blueliners07.de/cok '),
(431, 'Henrycok', 'jesspell@aol.com', 'Making money can be extremely easy if you use this Robot.', 'Need cash? Launch this robot and see what it can. https://cok.blueliners07.de/cok '),
(432, 'Henrycok', 'minecraft@mailme.dk', 'One dollar is nothing, but it can grow into $100 here.', 'Join the society of successful people who make money here. https://cok.blueliners07.de/cok '),
(433, 'Henrycok', 'minecraft@mailme.dk', 'One dollar is nothing, but it can grow into $100 here.', 'Join the society of successful people who make money here. https://cok.blueliners07.de/cok '),
(434, 'Henrycok', 'minecraft@mailme.dk', 'One dollar is nothing, but it can grow into $100 here.', 'Join the society of successful people who make money here. https://cok.blueliners07.de/cok '),
(435, 'Henrycok', 'minecraft@mailme.dk', 'One dollar is nothing, but it can grow into $100 here.', 'Join the society of successful people who make money here. https://cok.blueliners07.de/cok '),
(436, 'Henrycok', 'minecraft@mailme.dk', 'One dollar is nothing, but it can grow into $100 here.', 'Join the society of successful people who make money here. https://cok.blueliners07.de/cok '),
(437, 'Henrycok', 'formann@forum.dk', 'Only one click can grow up your money really fast.', 'Feel free to buy everything you want with the additional income. https://cok.blueliners07.de/cok '),
(438, 'Henrycok', 'formann@forum.dk', 'Only one click can grow up your money really fast.', 'Feel free to buy everything you want with the additional income. https://cok.blueliners07.de/cok '),
(439, 'Henrycok', 'formann@forum.dk', 'Only one click can grow up your money really fast.', 'Feel free to buy everything you want with the additional income. https://cok.blueliners07.de/cok '),
(440, 'Henrycok', 'formann@forum.dk', 'Only one click can grow up your money really fast.', 'Feel free to buy everything you want with the additional income. https://cok.blueliners07.de/cok '),
(441, 'Henrycok', 'formann@forum.dk', 'Only one click can grow up your money really fast.', 'Feel free to buy everything you want with the additional income. https://cok.blueliners07.de/cok '),
(442, 'Henrycok', 'seanwilson946@mailme.dk', 'We have found the fastest way to be rich. Find it out here.', 'Find out about the fastest way for a financial independence. https://cok.blueliners07.de/cok '),
(443, 'Henrycok', 'seanwilson946@mailme.dk', 'We have found the fastest way to be rich. Find it out here.', 'Find out about the fastest way for a financial independence. https://cok.blueliners07.de/cok '),
(444, 'Henrycok', 'seanwilson946@mailme.dk', 'We have found the fastest way to be rich. Find it out here.', 'Find out about the fastest way for a financial independence. https://cok.blueliners07.de/cok '),
(445, 'Henrycok', 'seanwilson946@mailme.dk', 'We have found the fastest way to be rich. Find it out here.', 'Find out about the fastest way for a financial independence. https://cok.blueliners07.de/cok '),
(446, 'Henrycok', 'seanwilson946@mailme.dk', 'We have found the fastest way to be rich. Find it out here.', 'Find out about the fastest way for a financial independence. https://cok.blueliners07.de/cok '),
(447, 'Henrycok', 'watcher@forum.dk', 'The financial Robot is your # 1 expert of making money.', 'Start making thousands of dollars every week. https://cok.blueliners07.de/cok '),
(448, 'Henrycok', 'watcher@forum.dk', 'The financial Robot is your # 1 expert of making money.', 'Start making thousands of dollars every week. https://cok.blueliners07.de/cok '),
(449, 'Henrycok', 'watcher@forum.dk', 'The financial Robot is your # 1 expert of making money.', 'Start making thousands of dollars every week. https://cok.blueliners07.de/cok '),
(450, 'Henrycok', 'watcher@forum.dk', 'The financial Robot is your # 1 expert of making money.', 'Start making thousands of dollars every week. https://cok.blueliners07.de/cok '),
(451, 'Henrycok', 'watcher@forum.dk', 'The financial Robot is your # 1 expert of making money.', 'Start making thousands of dollars every week. https://cok.blueliners07.de/cok '),
(452, 'Henrycok', 'marieogjan@forum.dk', 'The financial Robot works for you even when you sleep.', 'Rich people are rich because they use this robot. https://cok.blueliners07.de/cok '),
(453, 'Henrycok', 'fyren841@hotmail.es', 'No need to stay awake all night long to earn money. Launch the robot.', 'Launch the best investment instrument to start making money today. https://cok.coronect.de/cok '),
(454, 'Henrycok', 'turkoglu@forum.dk', 'Everyone can earn as much as he wants now.', 'Make money online, staying at home this cold winter. https://cok.coronect.de/cok '),
(455, 'Henrycok', 's.i.z@mailme.dk', 'Need money? The financial robot is your solution.', 'Even a child knows how to make $100 today with the help of this robot. https://cok.coronect.de/cok '),
(456, 'Henrycok', 'gsbk@forum.dk', 'The online financial Robot is your key to success.', 'Financial Robot is #1 investment tool ever. Launch it! https://cok.coronect.de/cok '),
(457, 'Henrycok', 'mma-fighter@forum.dk', 'Attention! Financial robot may bring you millions!', 'We know how to increase your financial stability. https://cok.coronect.de/cok '),
(458, 'Henrycok', 'tommydahl@forum.dk', 'The financial Robot is the most effective financial tool in the net!', 'Online Bot will bring you wealth and satisfaction. https://cok.coronect.de/cok '),
(459, 'Henrycok', 'nikki20@forum.dk', 'Attention! Financial robot may bring you millions!', 'Launch the robot and let it bring you money. https://cok.coronect.de/cok '),
(460, 'Henrycok', 'usop@mail-online.dk', 'There is no need to look for a job anymore. Work online.', 'Start your online work using the financial Robot. https://cok.coronect.de/cok '),
(461, 'Henrycok', 'lesimon@forum.dk', 'Need money? Earn it without leaving your home.', 'Buy everything you want earning money online. https://cok.coronect.de/cok '),
(462, 'Henrycok', 'lk58@forum.dk', 'Online earnings are the easiest way for financial independence.', 'Wow! This Robot is a great start for an online career. https://cok.coronect.de/cok '),
(463, 'Henrycok', 'hgohgeoge@forum.dk', 'The fastest way to make your wallet thick is found.', 'The fastest way to make you wallet thick is here. https://cok.coronect.de/cok '),
(464, 'Henrycok', 'finn-holmgaard@forum.dk', 'Online job can be really effective if you use this Robot.', 'Start your online work using the financial Robot. https://cok.coronect.de/cok '),
(465, 'Henrycok', 'dybdal_88@forum.dk', 'This robot will help you to make hundreds of dollars each day.', 'Earn additional money without efforts. https://cok.coronect.de/cok '),
(466, 'Henrycok', 'holgerdanske2@forum.dk', 'Looking for additional money? Try out the best financial instrument.', 'Everyone can earn as much as he wants suing this Bot. https://cok.coronect.de/cok '),
(467, 'Henrycok', 'fukato@forum.dk', 'Make thousands every week working online here.', 'See how Robot makes $1000 from $1 of investment. https://cok.coronect.de/cok '),
(468, 'Henrycok', 'taila@forum.dk', 'The financial Robot is the most effective financial tool in the net!', 'Robot is the best solution for everyone who wants to earn. https://cok.coronect.de/cok '),
(469, 'Henrycok', 'tungen@mail-online.dk', 'Using this Robot is the best way to make you rich.', 'Automatic robot is the best start for financial independence. https://cok.coronect.de/cok '),
(470, 'Henrycok', 'lotsen2@forum.dk', 'Most successful people already use Robot. Do you?', 'Robot is the best way for everyone who looks for financial independence. https://cok.coronect.de/cok '),
(471, 'Henrycok', 'iri.lyakisheva@mailme.dk', 'Your computer can bring you additional income if you use this Robot.', 'The huge income without investments is available, now! https://cok.coronect.de/cok '),
(472, 'Henrycok', 'rules-ter@mailme.dk', 'Have no money? Earn it online.', 'Try out the automatic robot to keep earning all day long. https://cok.coronect.de/cok '),
(473, 'Henrycok', 'kkkforlife@forum.dk', 'Even a child knows how to make $100 today with the help of this robot.', 'Rich people are rich because they use this robot. https://cok.coronect.de/cok '),
(474, 'Henrycok', 'perschaltz@mail-online.dk', 'Find out about the fastest way for a financial independence.', 'Provide your family with the money in age. Launch the Robot! https://cok.coronect.de/cok '),
(475, 'Henrycok', 'zelen468@mailme.dk', 'Join the society of successful people who make money here.', 'Most successful people already use Robot. Do you? https://cok.coronect.de/cok '),
(476, 'Henrycok', 'nad-georgievna@mailme.dk', 'The additional income is available for everyone using this robot.', 'Your money keep grow 24/7 if you use the financial Robot. https://cok.coronect.de/cok '),
(477, 'Henrycok', 'faurbhye1971@forum.dk', 'Financial robot is your success formula is found. Learn more about it.', 'Make money online, staying at home this cold winter. https://cok.coronect.de/cok ');
INSERT INTO `tbl_contact` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`) VALUES
(478, 'Henrycok', 'invisible19021990@mailme.dk', 'No need to stay awake all night long to earn money. Launch the robot.', 'The best online job for retirees. Make your old ages rich. https://cok.coronect.de/cok '),
(479, 'Henrycok', 'tko@forum.dk', 'It is the best time to launch the Robot to get more money.', 'No need to work anymore while you have the Robot launched! https://cok.coronect.de/cok '),
(480, 'Henrycok', 'evrozona@mailme.dk', 'Online Bot will bring you wealth and satisfaction.', 'Making money in the net is easier now. https://cok.coronect.de/cok '),
(481, 'Henrycok', 'turbofluen@forum.dk', 'Even a child knows how to make $100 today with the help of this robot.', 'Need money? Get it here easily? https://cok.coronect.de/cok '),
(482, 'Henrycok', 'tinaj19@forum.dk', 'Financial independence is what this robot guarantees.', 'Additional income is now available for anyone all around the world. https://cok.coronect.de/cok '),
(483, 'Connie Borovansky', 'roussama.ararouci@ldwdkj.com', '', 'Add your site to 1000 business directories with one click here-> https://1mdr.short.gy/submityoursite'),
(484, 'Henrycok', 'dad35@forum.dk', 'Need cash? Launch this robot and see what it can.', 'The huge income without investments is available, now! https://cok.coronect.de/cok '),
(485, 'Leonarda Hommer', 'RosalinaAdu@gmail.com', 'Branda Archacki', 'Free submission of your new website to over 1000 business directories here https://bit.ly/submityoursitefreehere '),
(486, 'Henrycok', 'henriettelorentzen@forum.dk', 'There is no need to look for a job anymore. Work online.', 'Additional income is now available for anyone all around the world. https://cok.coronect.de/cok '),
(487, 'Henrycok', 'hekate@jubiipost.dk', 'We know how to increase your financial stability.', 'Make dollars staying at home and launched this Bot. https://cok.coronect.de/cok '),
(488, 'Henrycok', 'ira-menshikova@mailme.dk', 'The fastest way to make your wallet thick is found.', 'The best online job for retirees. Make your old ages rich. https://cok.coronect.de/cok '),
(489, 'Henrycok', 'donohuethomas@hotmail.com', 'The success formula is found. Learn more about it.', 'The best way for everyone who rushes for financial independence. https://cok.coronect.de/cok '),
(490, 'Henrycok', 'ahmh@forum.dk', 'The additional income for everyone.', 'No need to work anymore while you have the Robot launched! https://cok.coronect.de/cok '),
(491, 'Henrycok', 'flemming.g.s@forum.dk', 'Attention! Financial robot may bring you millions!', 'No need to worry about the future if your use this financial robot. https://cok.coronect.de/cok '),
(492, 'Henrycok', 'olgushca2009@mailme.dk', 'Looking for an easy way to make money? Check out the financial robot.', 'Launch the financial Bot now to start earning. https://cok.coronect.de/cok '),
(493, 'Henrycok', 'iren-g1975@yandex.ru', 'Need money? Get it here easily! Just press this to launch the robot.', 'Make your laptop a financial instrument with this program. https://cok.coronect.de/cok '),
(494, 'Henrycok', 'miomio@forum.dk', 'Make dollars just sitting home.', 'Attention! Here you can earn money online! https://cok.coronect.de/cok '),
(495, 'Henrycok', 'dyhrs@forum.dk', 'Wow! This Robot is a great start for an online career.', 'The best online investment tool is found. Learn more! https://cok.coronect.de/cok '),
(496, 'Henrycok', 'viskal@mail-online.dk', 'Buy everything you want earning money online.', 'Make money online, staying at home this cold winter. https://cok.coronect.de/cok '),
(497, 'Henrycok', 'tms@forum.dk', 'Trust the financial Bot to become rich.', 'Need money? Get it here easily! Just press this to launch the robot. https://cok.coronect.de/cok '),
(498, 'Henrycok', 'yarevozub@mailme.dk', 'Buy everything you want earning money online.', 'The additional income for everyone. https://cok.coronect.de/cok '),
(499, 'Henrycok', 'gertrud@jubiipost.dk', 'Even a child knows how to make $100 today with the help of this robot.', 'Learn how to make hundreds of backs each day. https://cok.coronect.de/cok '),
(500, 'Henrycok', 'mulleshansen@forum.dk', 'Make thousands every week working online here.', 'The fastest way to make you wallet thick is here. https://cok.coronect.de/cok '),
(501, 'Henrycok', 'bluefisker@forum.dk', 'No need to work anymore. Just launch the robot.', 'Launch the financial Robot and do your business. https://cok.coronect.de/cok '),
(502, 'Henrycok', 'flemsi@forum.dk', 'Find out about the fastest way for a financial independence.', 'Automatic robot is the best start for financial independence. https://cok.coronect.de/cok '),
(503, 'Henrycok', '2720leg@sbcglobal.net', 'We know how to increase your financial stability.', 'Attention! Financial robot may bring you millions! https://cok.coronect.de/cok '),
(504, 'Henrycok', 'pcr115@forum.dk', 'Launch the robot and let it bring you money.', 'Even a child knows how to make $100 today. https://cok.coronect.de/cok '),
(505, 'Henrycok', 'kamtjaka@forum.dk', 'Everyone who needs money should try this Robot out.', 'Make money, not war! Financial Robot is what you need. https://cok.coronect.de/cok '),
(506, 'Henrycok', 'llort@forum.dk', 'The financial Robot is the most effective financial tool in the net!', 'The online income is the easiest ways to make you dream come true. https://cok.bode-roesch.de/cok '),
(507, 'Henrycok', 'nico03kjaer@forum.dk', 'No worries if you are fired. Work online.', 'Have no money? Earn it online. https://cok.bode-roesch.de/cok '),
(508, 'Henrycok', 'graulund@forum.dk', 'Your money keep grow 24/7 if you use the financial Robot.', 'Even a child knows how to make money. Do you? https://cok.bode-roesch.de/cok '),
(509, 'Henrycok', 'vejle69@forum.dk', 'Financial independence is what everyone needs.', 'Rich people are rich because they use this robot. https://cok.bode-roesch.de/cok '),
(510, 'Henrycok', 'frame31@mailme.dk', 'The huge income without investments is available, now!', 'Start your online work using the financial Robot. https://cok.bode-roesch.de/cok '),
(511, 'Henrycok', 'cati03@forum.dk', 'Check out the automatic Bot, which works for you 24/7.', 'No worries if you are fired. Work online. https://cok.bode-roesch.de/cok '),
(512, 'Henrycok', 'yaxx80@forum.dk', 'Additional income is now available for anyone all around the world.', 'Financial robot is a great way to manage and increase your income. https://cok.bode-roesch.de/cok '),
(513, 'Henrycok', 'maja_klinke@forum.dk', 'Online job can be really effective if you use this Robot.', 'Your money keep grow 24/7 if you use the financial Robot. https://cok.fannyberlin.se/cok '),
(514, 'Henrycok', 'sra1180@forum.dk', 'Financial independence is what this robot guarantees.', 'We know how to make our future rich and do you? https://cok.fannyberlin.se/cok '),
(515, 'Henrycok', 'kruglikov.vitya@mailme.dk', 'The online job can bring you a fantastic profit.', 'Need cash? Launch this robot and see what it can. https://cok.fannyberlin.se/cok '),
(516, 'Henrycok', 'bi-bi90@mailme.dk', 'We have found the fastest way to be rich. Find it out here.', 'Provide your family with the money in age. Launch the Robot! https://cok.fannyberlin.se/cok '),
(517, 'Henrycok', 'big_f@mailme.dk', 'The online financial Robot is your key to success.', 'Need money? Earn it without leaving your home. https://cok.fannyberlin.se/cok '),
(518, 'Henrycok', 'sofieawr@mail-online.dk', 'Your computer can bring you additional income if you use this Robot.', 'Wow! This Robot is a great start for an online career. https://cok.fannyberlin.se/cok '),
(519, 'Henrycok', 'bjasi@jubiipost.dk', 'Attention! Here you can earn money online!', 'Automatic robot is the best start for financial independence. https://cok.fannyberlin.se/cok '),
(520, 'Henrycok', 'sony_mack@forum.dk', 'Let your money grow into the capital with this Robot.', 'We know how to increase your financial stability. https://cok.fannyberlin.se/cok '),
(521, 'Henrycok', 'allanlind@forum.dk', 'This robot can bring you money 24/7.', 'The financial Robot is the most effective financial tool in the net! https://cok.fannyberlin.se/cok '),
(522, 'Henrycok', 'cobra@mail-online.dk', 'The financial Robot is your future wealth and independence.', 'Just one click can turn you dollar into $1000. https://cok.fannyberlin.se/cok '),
(523, 'Henrycok', 'skraldrik@mail-online.dk', 'Need money? Get it here easily?', 'Looking for additional money? Try out the best financial instrument. https://cok.fannyberlin.se/cok '),
(524, 'Henrycok', 'o8lkpo8lkpjoannissen@forum.dk', 'The fastest way to make you wallet thick is here.', 'Online job can be really effective if you use this Robot. https://cok.fannyberlin.se/cok '),
(525, 'Porfirio Ashley', 'nsamuelvale101@yaungshop.com', '', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/submityoursite'),
(526, 'Henrycok', 'mfunch@forum.dk', 'Buy everything you want earning money online.', 'Start your online work using the financial Robot. https://cok.fannyberlin.se/cok '),
(527, 'Henrycok', 'kf81@forum.dk', 'Financial independence is what this robot guarantees.', 'Additional income is now available for anyone all around the world. https://cok.fannyberlin.se/cok '),
(528, 'Henrycok', 'gojo@jubiipost.dk', 'Financial Robot is #1 investment tool ever. Launch it!', 'Need some more money? Robot will earn them really fast. https://cok.fannyberlin.se/cok '),
(529, 'Henrycok', 'brit.lundby@forum.dk', 'We know how to increase your financial stability.', 'Robot never sleeps. It makes money for you 24/7. https://cok.fannyberlin.se/cok '),
(530, 'Henrycok', 'anordahn@forum.dk', 'See how Robot makes $1000 from $1 of investment.', 'Check out the newest way to make a fantastic profit. https://cok.fannyberlin.se/cok '),
(531, 'Henrycok', 'san12@forum.dk', 'Find out about the easiest way of money earning.', 'Even a child knows how to make money. Do you? https://cok.fannyberlin.se/cok '),
(532, 'Henrycok', 'noaharnold04@mailme.dk', 'The financial Robot is the most effective financial tool in the net!', 'Make dollars just sitting home. https://cok.fannyberlin.se/cok '),
(533, 'Henrycok', 'agfa1@mailme.dk', 'Invest $1 today to make $1000 tomorrow.', 'The additional income is available for everyone using this robot. https://cok.fannyberlin.se/cok '),
(534, 'Henrycok', 'minikongen@forum.dk', 'Earning $1000 a day is easy if you use this financial Robot.', 'The online income is your key to success. https://cok.fannyberlin.se/cok '),
(535, 'Henrycok', 'dasu@forum.dk', 'Check out the newest way to make a fantastic profit.', 'The fastest way to make your wallet thick is found. https://amalgamas.es/cok '),
(536, 'Henrycok', 'majagryl@forum.dk', 'We know how to become rich and do you?', 'Learn how to make hundreds of backs each day. https://fannyberlin.se/cok '),
(537, 'Henrycok', 'renesengnielsen@mail-online.dk', 'Small investments can bring tons of dollars fast.', 'The additional income for everyone. https://cok.baleti-design.fr/cok '),
(538, 'Henrycok', 'henrikkulmbach@forum.dk', 'Online Bot will bring you wealth and satisfaction.', 'Have no money? Earn it online. https://cok.borisvonsmercek.de/cok '),
(539, 'Henrycok', 'rantorp@mailme.dk', 'Attention! Here you can earn money online!', 'Earn additional money without efforts and skills. https://collectif-hameb.fr/cok '),
(540, 'Henrycok', 'monpetitpip@forum.dk', 'Make thousands of bucks. Financial robot will help you to do it!', 'Everyone can earn as much as he wants now. https://cok.collectif-hameb.fr/cok '),
(541, 'Henrycok', 's.a.zimin@mailme.dk', 'Attention! Here you can earn money online!', 'We know how to make our future rich and do you? https://cok.collectif-hameb.fr/cok '),
(542, 'Henrycok', 'www.klbhdk@forum.dk', 'Make money online, staying at home this cold winter.', 'Trust the financial Bot to become rich. https://cok.compras2u.es/cok '),
(543, 'Henrycok', 'lailabeck@mail-online.dk', 'We have found the fastest way to be rich. Find it out here.', 'Looking for an easy way to make money? Check out the financial robot. https://cok.baleti-design.fr/cok '),
(544, 'Henrycok', 'sven22@forum.dk', 'Trust the financial Bot to become rich.', 'Turn $1 into $100 instantly. Use the financial Robot. https://collectif-hameb.fr/cok '),
(545, 'Henrycok', 'sunilarajaguru@forum.dk', 'Additional income is now available for anyone all around the world.', '# 1 financial expert in the net! Check out the new Robot. https://fannyberlin.se/cok '),
(546, 'Henrycok', 'lover84@forum.dk', 'Need some more money? Robot will earn them really fast.', 'Looking for an easy way to make money? Check out the financial robot. https://amalgamas.es/cok '),
(547, 'Henrycok', 'joand@mail-online.dk', 'Automatic robot is the best start for financial independence.', 'Trust your dollar to the Robot and see how it grows to $100. https://cok.fannyberlin.se/cok '),
(548, 'Henrycok', 'xperience1@forum.dk', 'Even a child knows how to make money. This robot is what you need!', 'Feel free to buy everything you want with the additional income. https://cok.collectif-hameb.fr/cok '),
(549, 'Henrycok', 'irina.nezabudkina@mailme.dk', 'Financial robot keeps bringing you money while you sleep.', 'The financial Robot is the most effective financial tool in the net! https://cok.baleti-design.fr/cok '),
(550, 'Henrycok', 'hansen@forum.dk', 'Online Bot will bring you wealth and satisfaction.', 'Everyone can earn as much as he wants now. http://go.afalobo.com/0ide '),
(551, 'Henrycok', 'francisc.zachary1992@gmail.com', 'The success formula is found. Learn more about it.', 'Check out the automatic Bot, which works for you 24/7. http://go.afalobo.com/0ide '),
(552, 'Henrycok', 'gangsteroids@gmail.com', 'Attention! Financial robot may bring you millions!', 'The financial Robot is the most effective financial tool in the net! http://go.afalobo.com/0ide '),
(553, 'Henrycok', 'msleader.best@outlook.com', 'Let the financial Robot be your companion in the financial market.', 'Robot never sleeps. It makes money for you 24/7. http://go.afalobo.com/0ide '),
(554, 'Henrycok', 'amit9919@coremail.ru', 'Attention! Here you can earn money online!', 'The financial Robot is your future wealth and independence. http://go.afalobo.com/0ide '),
(555, 'Henrycok', 'huigaplek@coremail.ru', 'Find out about the fastest way for a financial independence.', 'Invest $1 today to make $1000 tomorrow. http://go.afalobo.com/0ide '),
(556, 'Monnie Deviney', 'OteliaThansamai@gmail.com', 'Morton Hennagin', 'You can submit your site to over 1000 different business/advertising directories for free with one click https://bit.ly/submityoursitefreehere '),
(557, 'Henrycok', 'qfswoghq@gmail.com', 'Looking for an easy way to make money? Check out the financial robot.', 'We know how to increase your financial stability. http://go.afalobo.com/0ide '),
(558, 'Henrycok', 'sbsdund@coremail.ru', 'Financial Robot is #1 investment tool ever. Launch it!', 'Everyone who needs money should try this Robot out. http://go.cufasez.com/0ie5 '),
(559, 'Henrycok', 'nabilaadinda64@gmail.com', 'We know how to make our future rich and do you?', 'Financial robot guarantees everyone stability and income. http://go.cufasez.com/0ie5 '),
(560, 'Henrycok', 'sharonrhoda123@coremail.ru', 'Launch the robot and let it bring you money.', 'Try out the best financial robot in the Internet. https://cok.nanolabs.es/cok '),
(561, 'Henrycok', 'artem_beletskii@coremail.ru', 'Check out the newest way to make a fantastic profit.', 'Make thousands of bucks. Pay nothing. https://cok.nanolabs.es/cok '),
(562, 'Henrycok', 'afsu8428@gmail.com', 'Financial robot guarantees everyone stability and income.', 'Making money in the net is easier now. https://cok.nanolabs.es/cok '),
(563, 'Henrycok', 'jinbevivaldi@coremail.ru', 'Using this Robot is the best way to make you rich.', 'One click of the robot can bring you thousands of bucks. https://cok.nanolabs.es/cok '),
(564, 'Henrycok', 'jrdanaangelina43169@coremail.ru', 'There is no need to look for a job anymore. Work online.', 'The financial Robot is your future wealth and independence. https://cok.nanolabs.es/cok '),
(565, 'Henrycok', 'brendenbenjaminjbt@outlook.com', 'Make dollars just sitting home.', 'Need money? Get it here easily? https://cok.nanolabs.es/cok '),
(566, 'Mabel Warhol', 'DominickTomes@gmail.com', 'Tommie Haley', 'Add your site to 1000 business directories with one click here-> https://bit.ly/submityoursitefreehere '),
(567, 'Henrycok', 'lyubadevicheva3@gmail.com', 'This robot will help you to make hundreds of dollars each day.', 'Financial independence is what this robot guarantees. https://cok.nanolabs.es/cok '),
(568, 'Henrycok', 'motnuachoaikia355@gmail.com', 'Robot is the best solution for everyone who wants to earn.', 'Make your laptop a financial instrument with this program. https://cok.nanolabs.es/cok '),
(569, 'Henrycok', 'taisiapanova89@gmail.com', 'Have no financial skills? Let Robot make money for you.', 'Make your laptop a financial instrument with this program. https://cok.nanolabs.es/cok '),
(570, 'Henrycok', 'vatimins150@gmail.com', 'The additional income for everyone.', 'Need cash? Launch this robot and see what it can. https://cok.nanolabs.es/cok '),
(571, 'Henrycok', 'phanbichhai56711@gmail.com', 'Have no money? It’s easy to earn them online here.', 'Automatic robot is the best start for financial independence. https://cok.nanolabs.es/cok '),
(572, 'Henrycok', 'bobo13@gmail.com', 'Make dollars just sitting home.', 'Looking forward for income? Get it online. https://cok.nanolabs.es/cok '),
(573, 'Henrycok', 'norinamelinda15442@gmail.com', 'Make money online, staying at home this cold winter.', 'Everyone can earn as much as he wants suing this Bot. https://cok.nanolabs.es/cok '),
(574, 'Henrycok', 'mehal_spec@aol.com', 'The additional income for everyone.', 'Everyone who needs money should try this Robot out. https://cok.nanolabs.es/cok '),
(575, 'Henrycok', 'homerlloyd@coremail.ru', 'Attention! Here you can earn money online!', 'Even a child knows how to make money. This robot is what you need! https://cok.nanolabs.es/cok '),
(576, 'Henrycok', 'jonathantreadway@coremail.ru', 'Trust the financial Bot to become rich.', 'Launch the robot and let it bring you money. https://cok.nanolabs.es/cok '),
(577, 'Henrycok', 'ambarsukembar@gmail.com', 'Financial robot guarantees everyone stability and income.', 'Make your money work for you all day long. https://cok.nanolabs.es/cok '),
(578, 'Henrycok', 'dchetv5@gmail.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Let the financial Robot be your companion in the financial market. https://cok.nanolabs.es/cok '),
(579, 'Henrycok', 'snowykodiak@gmail.com', 'Feel free to buy everything you want with the additional income.', 'Make thousands of bucks. Pay nothing. https://cok.nanolabs.es/cok '),
(580, 'Henrycok', 'sugarglider654584@gmail.com', 'Most successful people already use Robot. Do you?', 'Financial independence is what everyone needs. https://cok.nanolabs.es/cok '),
(581, 'Henrycok', 'goresanhulkan@gmail.com', 'Find out about the fastest way for a financial independence.', 'Financial robot guarantees everyone stability and income. https://cok.nanolabs.es/cok '),
(582, 'Henrycok', 'aljak1@aol.com', 'The best online job for retirees. Make your old ages rich.', 'No need to work anymore while you have the Robot launched! https://cok.nanolabs.es/cok '),
(583, 'Henrycok', 'corisolis4xk@outlook.com.vn', 'Need cash? Launch this robot and see what it can.', 'The best way for everyone who rushes for financial independence. https://cok.nanolabs.es/cok '),
(584, 'Henrycok', 'kurniawanrizal846@gmail.com', 'Feel free to buy everything you want with the additional income.', 'No need to worry about the future if your use this financial robot. https://cok.nanolabs.es/cok '),
(585, 'Crytocokcok', 'MerinoBart@o2.pl', 'No need to stay awake all night long to earn money. Launch the robot.', 'No need to worry about the future if your use this financial robot. https://num.startupers.se/promo '),
(586, 'Robbie Bauman', 'gemooboy.lovej@bucol.net', '', 'Good job on the new site! Now go ahead and submit it to our free directory here https://1mdr.short.gy/submityoursite'),
(587, 'Alfonso Mcdaniel', 'mcdaniel.alfonso@gmail.com', 'Fast Serp Boost for shivskillfoundation.com', '\r\nIf you need a quick boost in the SERPs for shivskillfoundation.com, then this is the right strategy for you:\r\nhttps://www.seo-treff.de/product/serp-booster/'),
(588, 'Lynell Greaves', 'ntoukirhasan7860@jaypetfood.com', '', 'Submit your site to over 1000 advertising websites for free now https://1mdr.short.gy/submityoursite'),
(589, 'Cinda Wardill', 'jaouadhifarah0@bebekpenyet.buzz', '', 'Submit your site to over 1000 directories all with one click here> https://1mdr.short.gy/submityoursite'),
(590, 'Reynaldo Saindon', 'AhmadVonderhaar@gmail.com', 'Melisa Namsaly', 'Submit your site to over 1000 directories all with one click here> https://bit.ly/submityoursitefreehere '),
(591, 'Okeygorandom https://www.apple.com/', 'sashagalusha+9551@mail.ru', 'Okeygorandom https://www.apple.com/', ''),
(592, 'Okeygorandom https://www.google.com/', 'seregainbox149@mail.ru', 'Okeygorandom https://www.google.com/', ''),
(593, 'vbkfHgshPQa', 'timohty2yl62968x4a@outlook.com', 'HCnxqNfRGdSoO', 'dkTJqWDRZK'),
(594, 'LhTywfYPVMW', 'timohty2yl62968x4a@outlook.com', 'IBAobWPswTVZ', 'TGfpXkJQvoRuAB'),
(595, 'Fidel Faircloth', 'fidel.faircloth@outlook.com', 'NEW: Semrush Backlinks', 'Hi there\r\nDo you want to get backlinks from domains that have tons of ranking keywords?\r\n\r\nhttps://www.monkeydigital.co/semrush-backlinks/'),
(596, 'GRyAMYkDqoIKP', 'aquinceyoep97h0al@outlook.com', 'YUELOrbjJHIGXCQu', 'FOmeBKSvwxpjZRqW'),
(597, 'aVZKTWPUfuDAnsi', 'aquinceyoep97h0al@outlook.com', 'poLKjcsSIQZ', 'HPeVbXIuZ'),
(598, 'XozkaeqvpR', 'tirrell73o3y628t@outlook.com', 'UjurtFLvMqRSN', 'NKxOmTzDEpMeBuos'),
(599, 'AkuZHqYD', 'tirrell73o3y628t@outlook.com', 'aUchLpkbY', 'zCWvKfodc'),
(600, 'xzGYOCDW', 'cde39meczoi54@outlook.com', 'lGKPeLtnFj', 'bFdrtAVhnPj'),
(601, 'kCjHzbIDKPygscRx', 'cde39meczoi54@outlook.com', 'uCeVgKRy', 'rxnCXvbdcOztiTHI'),
(602, 'VJpUzdsKSxkoAl', 'talane47v6o78u6@outlook.com', 'jXyzqhrTSWtGimQV', 'vhpskfQuRSyn'),
(603, 'YLaVUZyIxQzJm', 'talane47v6o78u6@outlook.com', 'ZVwtEhOJzDQYpgf', 'AIeUiJRw'),
(604, 'QOlpjCwKDavfNrY', 'tosha8o0ao0bdoa6@outlook.com', 'XjrHtIBO', 'sVlyEuXGLJbxjP'),
(605, 'fzeWkRoLrd', 'tosha8o0ao0bdoa6@outlook.com', 'PrNwFsZKl', 'gMePslhKAik'),
(606, 'gWIsoevFChzn', 'maksimaoog@outlook.com', 'htFvJOYjfSlPCQX', 'fSEmQjlyMCTULI'),
(607, 'IqpzohsYE', 'andreykotov8b@outlook.com', 'MVNcFeHxT', 'hmfwJWeOTXiuqILs'),
(608, 'mozEerGqxfj', 'andreykotov8b@outlook.com', 'QYZpztOsXd', 'KBszImScbCfXl'),
(609, 'aqTtIyjRerOGJZzh', 'tiffanycla396s@hotmail.com', 'OECcnfjyksHV', 'uROydGFa'),
(610, 'QsjRhvFPL', 'tiffanycla396s@hotmail.com', 'QdoqFkGHLx', 'eopHTuAstGchdLyR'),
(611, 'dhMYfzZSXGqNo', 'vatqevixuq@outlook.com', 'glNJRHseQWUI', 'hzuSmCHri'),
(612, 'YJPICixLAN', 'vatqevixuq@outlook.com', 'DGhZuxBM', 'QcrUMFwKRE'),
(613, 'Backi to in WLRISS640672WLRISS2 rtk69. BEARQYP misllv siter http://apple.com', 'muibecomp1992@mail.ru', 'Backi to in WLRISS640672WLRISS2 ghf88. QEARZJI misfxr sitee http://apple.com', ''),
(614, 'Conrad Chiavaroli', 'LaurenceCinotto@gmail.com', 'Gladys Orlof', 'I was wondering if you wanted to submit your new site to our free business directory? https://bit.ly/submit_site_1  '),
(615, 'Deana Digerolamo', 'PauleneSwinney@gmail.com', 'Stormy Scibetta', 'Add your site to 1000 business directories with one click here-> https://bit.ly/submit_site_1  '),
(616, 'vpAieSmFTzDj', 'qoscecexig@outlook.com', 'jYtEhgWy', 'LoFhadWZCHIzcDMx'),
(617, 'gEOYkylTFJwaXAc', 'qoscecexig@outlook.com', 'ZChStHlGTnURv', 'gfSzbniFeYwN'),
(618, 'NHFlpIvKoTRO', 'higfuhanaq@outlook.com', 'FyqjpfavxLK', 'resEtaIwJXmjTRhV'),
(619, 'MRtzDVjPilqGTwr', 'higfuhanaq@outlook.com', 'UOcIQhSVky', 'PHdrAuCY'),
(620, 'Alfredo Syrrakos', 'NathanielCusenza@gmail.com', 'Marcel Corrales', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://bit.ly/submit_site_1  '),
(621, 'Su Kouyate', 'CharlineBien@gmail.com', 'Zane Pop', 'You can submit your site to over 1000 different business/advertising directories for free with one click bit.ly/submit_site_l1aa2sZgZ1G6  '),
(622, 'Abe Oslan', 'BonitaMoberg@gmail.com', 'Margaret Pratka', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://bit.ly/submit_site_4lSEZtY470R0  '),
(623, 'Chi Schlotter', 'AlphaLorino@gmail.com', 'Norris Spaar', 'Submit your site to over 1000 advertising websites for free now bit.ly/submit_site_4lSEZtY470R0  '),
(624, 'SzMbrPtAJUunhE', 'vladimirnfpef@outlook.com', 'eLyPbpmqlhcw', 'mvxMCIXKb'),
(625, 'bYcamtVyLExv', 'vladimirnfpef@outlook.com', 'ftTOvFpUZYINDrcx', 'dQRYuDzpICy'),
(626, 'rAJygOInfvKo', 'kathe7hlana@outlook.com', 'zDFYvJnCQWrEl', 'JqQLufIEjohxRBg'),
(627, 'tRqFDGciHVvpf', 'kathe7hlana@outlook.com', 'DneEHOkwhCgLY', 'KGLHlTufwbh'),
(628, 'Magnolia Hatteyer', 'JesusAlsobrooks@gmail.com', 'Darrel Maddaleno', 'Congratulations on the new website! Get it listed in our directory for more potential.  http://bit.ly/3WJoH4l'),
(629, 'EfgiKTIqUOpvw', 'mirbagojos@outlook.com', 'BNwxcLrG', 'cpxdweUHMlyn'),
(630, 'eoKBFJcDZCxmkV', 'mirbagojos@outlook.com', 'irPLmSBRtWMqU', 'esvHOfgNTmIqFWr'),
(631, 'KoDMiJNsWZYV', 'tameka.clink@outlook.com', 'jsgpErfLDGNIRdFP', 'QKtkjWXYFD'),
(632, 'MsLQPSKqVuecX', 'tameka.clink@outlook.com', 'DQKaopVXmBwHG', 'vYukRqldKVPSeJo'),
(633, 'Inez Fitchett', 'RandallThoele@gmail.com', 'Rivka Apperson', 'Submit your new website to our directory and start seeing an increase in traffic.  http://bit.ly/3kEmMRp'),
(634, 'Robertbef', '0dayflac11@gmail.com', 'Warez Music', 'Hello, \r\n \r\nWarez music download private server  https://0daymusic.org MP3, FLAC, LIVESETS, Music Videos. \r\n \r\nTeam 0day'),
(635, 'Andrewsib', 'promomusicdjs441@gmail.com', '0day Promo Music', 'Hello, \r\n \r\nNew club music https://0daymusic.org \r\nDownload MP3/FLAC, Label, LIVESETS, Music Videos. \r\n \r\nPromo Music DJs'),
(636, 'Ivy Almonte', 'almonte.ivy@msn.com', 'Have you seen this?', 'People are quitting their jobs with this... Have you seen it?\r\n\r\nhttps://rumble.com/v41owvf-automated-online-income.html'),
(637, 'MichaelDapse', '0dayscenereleases2024@gmail.com', 'Music scene releases', 'Hello, \r\n \r\nClub-Music download https://0daymusic.org MP3, FLAC, LIVESETS, Music Videos. \r\n \r\nTeam 0day'),
(638, ' Gaughan', 'sales@bunnydollars.com', 'Odds?', 'Join our Raffle to win cash, watches and cars!\r\n\r\nBerrter Odds than a scratch card or Lottery. Guaranteed winners...\r\n\r\nhttps://www.bunnydollars.com/'),
(639, 'Charlesawach', 'yasen.krasen.13+74627@mail.ru', 'Miieefjief jiwjdwkijdwf iwkdqdjwifehfuwi kwkdwjejeieifw jwioodwijrewhe', 'Ofokfojfief jwlkfeejereghfj iewojfekfjergij wiojewjfewitghuhwrgtjgh ewjhfwqjhdfuewgtuiwe huegfrwgyewgtywegt vpalumni.org'),
(640, 'MasonIdota', 'kaenquirynicholls@gmail.com', 'Hallo,   write about   the prices', 'Zdravo, htio sam znati vašu cijenu.'),
(641, 'Adriene Holtze', 'holtze.adriene@gmail.com', 'Get Flooded: Easy Google Traffic No Effort!', 'The secret hack for massive Google traffic without costs. Transform your business now!\r\n\r\nSign up now https://bit.ly/Traffic-Hack-Google-2024'),
(642, 'Iirinashasy', 'Ethebrata@gmail.com', 'Very interesting offer!', 'Hi! Have s3x in your city today.  -  https://rb.gy/9pkq6l?shasy'),
(643, 'Tommie Lopez', 'tommie.lopez@msn.com', 'Unlock Peak Brainpower with Brainwave Technology', 'Discover an easy and enjoyable way to enhance your cognitive abilities and maximize productivity \r\n\r\nRead further here https://cutt.ly/maximize-productivity'),
(644, 'Sammy Milner', 'milner.sammy@gmail.com', 'The Ultimate Traffic Transformation: Your Guide Awaits!', 'Unlock the blueprint to easy traffic generation. Our guide provides the keys to effortless online visibility.\r\n\r\nExplore Now -> https://cutt.ly/1w9zNLPM'),
(645, 'MasonIdota', 'kaenquirynicholls@gmail.com', 'Hi    wrote about   the prices', 'Ciao, volevo sapere il tuo prezzo.'),
(646, 'Kristie Holte', 'kristie.holte@msn.com', 'Concerned About Your Digital Privacy?', 'Secure your sensitive information with a VPN that offers secure tunnels for your online activities. Browse with confidence, knowing your data is protected.\r\n\r\nGet Started -> https://bit.ly/secure-your-internet-connection'),
(647, 'Chiquita Schwartz', 'schwartz.chiquita20@gmail.com', 'Desire Deep, Uninterrupted Sleep?', 'Find out the solution to restful sleep and start your day feeling refreshed. Begin your journey to better sleep now.\r\n\r\nStay asleep, wake up happy. Click here! https://bit.ly/energize-your-mornings');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coordinator_area`
--

CREATE TABLE `tbl_coordinator_area` (
  `ca_id` int(11) NOT NULL,
  `coo_id` int(11) DEFAULT NULL,
  `tal_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` varchar(255) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coordinator_area`
--

INSERT INTO `tbl_coordinator_area` (`ca_id`, `coo_id`, `tal_id`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 4, 1, '2024-05-26 23:50:17', '1', '2024-05-26 23:50:17', '1', 1, 0),
(2, 4, 1, '2024-05-26 23:51:03', '1', '2024-05-26 23:51:03', '1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `districtid` int(11) NOT NULL,
  `districtname` varchar(100) NOT NULL,
  `stateid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dtse_admission`
--

CREATE TABLE `tbl_dtse_admission` (
  `da_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `medium_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `da_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_dtse_admission`
--

INSERT INTO `tbl_dtse_admission` (`da_id`, `student_id`, `medium_id`, `class_id`, `da_date`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `is_active`, `is_deleted`) VALUES
(1, 1, 1, 1, '2024-06-07', '2024-05-31 06:38:36', 1, '2024-05-31 06:38:36', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_educationdetails`
--

CREATE TABLE `tbl_educationdetails` (
  `edu_id` int(11) NOT NULL,
  `exams` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `Board` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `edu_isdeleted` int(11) NOT NULL,
  `addedby` int(11) NOT NULL,
  `lastupdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_educationdetails`
--

INSERT INTO `tbl_educationdetails` (`edu_id`, `exams`, `year`, `Board`, `school`, `percentage`, `id`, `edu_isdeleted`, `addedby`, `lastupdate`) VALUES
(1, '10th', '2009', 'Pune Board', 'MJP', '80', 1, 0, 0, 2),
(2, '12th', '2013', 'Pune Board', 'MJP', '65', 1, 0, 1, 1),
(3, '10th', '2013', 'Pune Board', 'guyyu', '65', 2, 1, 2, 0),
(4, '<br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:shrutixampphtdocsssusereducation.php</b> on line <b>77</b><br />', '<br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:shrutixampphtdocsssusereducation.php</b> on line <b>91</b><br />', '<br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:shrutixampphtdocsssusereducation.php</b> on line <b>102</b><br />', '<br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:shrutixampphtdocsssusereducation.php</b> on line <b>115</b><br />', '<br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:shrutixampphtdocsssusereducation.php</b> on line <b>126</b><br />', 5, 1, 0, 0),
(5, 'data science', '2024', 'cbsc', 'vp college', '70%', 5, 0, 0, 0),
(6, 'ppl', '2024', 'cbsc', 'vp college', '80%', 5, 0, 0, 0),
(7, '5th', '2024', 'cbsc', 'vp college', '70%', 5, 0, 0, 0),
(8, 'ppl', '2024', 'cbsc', 'vp college', '80%', 2, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_address` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `emp_gender` varchar(255) NOT NULL,
  `stateid` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `emp_imgname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `isdeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_name`, `emp_address`, `contactno`, `emp_gender`, `stateid`, `districtid`, `cityid`, `password`, `emp_imgname`, `role`, `isdeleted`) VALUES
(1, 'heugfuid', 'Akluj', '7894561234', 'female', 1, 1, 3, 'Ankita@93', '5e3bbde0c1198Penguins.jpg', 'employee', 0),
(2, 'Shubhangi', 'Darfal', '9405393633', 'female', 1, 1, 2, 'Shubhs@29', '5e3baa4eb14c2Tulips.jpg', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `enquiryid` int(11) NOT NULL,
  `enquiryname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`enquiryid`, `enquiryname`) VALUES
(1, 'NCRT'),
(2, 'NEET');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `g_id` int(11) NOT NULL,
  `gallery_typeid` int(11) DEFAULT 0,
  `image_name` varchar(255) NOT NULL,
  `img_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`g_id`, `gallery_typeid`, `image_name`, `img_desc`) VALUES
(1, 1, 'gallery/image-00.jpg', 'Academic 1'),
(2, 1, 'gallery/image-001.jpg', 'Academic 2'),
(3, 1, 'gallery/image-002.jpg', 'Academic 3'),
(4, 1, 'gallery/image-003.jpg', 'Academic 4'),
(5, 1, 'gallery/image-004.jpg', 'Academic 5'),
(6, 2, 'gallery/Picture4.jpg', 'Annual trip 1'),
(7, 2, 'gallery/Picture5.jpg', 'Annual trip 2'),
(8, 2, 'gallery/Picture6.jpg', 'Annual trip3'),
(9, 3, 'gallery/Picture1.jpg', 'Annual Function 1'),
(10, 3, 'gallery/Picture2.jpg', 'Annual function 2'),
(11, 3, 'gallery/Picture3.jpg', 'Annual Function 3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallerytype`
--

CREATE TABLE `tbl_gallerytype` (
  `gallery_id` int(11) NOT NULL,
  `gallery_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_gallerytype`
--

INSERT INTO `tbl_gallerytype` (`gallery_id`, `gallery_type`) VALUES
(1, 'acadamic'),
(2, 'annualtrip'),
(3, 'annualfunction');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_application`
--

CREATE TABLE `tbl_job_application` (
  `app_id` int(11) NOT NULL,
  `app_date` date NOT NULL,
  `fname` varchar(64) NOT NULL,
  `address` varchar(128) NOT NULL,
  `contactno` varchar(32) NOT NULL,
  `gender` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `postid` int(11) NOT NULL,
  `qualification` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_job_application`
--

INSERT INTO `tbl_job_application` (`app_id`, `app_date`, `fname`, `address`, `contactno`, `gender`, `email`, `postid`, `qualification`) VALUES
(1, '0000-00-00', 'Sanjay Devgunde', 'Baramti, Pune, 413133', '9922958683', '0', 'sanjay.devgunde18@gmail.com', 1, 'M.Sc.(Comp. Sci)'),
(2, '2020-05-19', 'Sanjay Devgunde', 'Baramati', '9922958683', 'male', 'sanjay.devgunde18@gmail.com', 1, 'M.Sc.(Comp. Sci)'),
(3, '2020-05-19', 'Sanjay Devgunde', 'asdasd', '9922958683', 'female', 'manager@gmail.com', 1, 'M.Sc.(Comp. Sci)'),
(4, '2020-05-19', 'Sanjay Devgunde', 'asdasd', '9922958683', 'female', 'manager@gmail.com', 1, 'M.Sc.(Comp. Sci)'),
(5, '2020-05-19', 'Sanjay Devgunde', 'asdasd', '9922958683', 'female', 'manager@gmail.com', 1, 'M.Sc.(Comp. Sci)'),
(6, '2021-02-23', '', '', '', 'male', '', 0, ''),
(7, '2022-08-04', 'Praveen M', 'Talur Road, 10th Cross Renuka Nagar, Bellary', '9164226176', 'male', 'pmathad52@gmail.com', 9, 'DIPLOMA in MECHANICAL ENGG....'),
(8, '2022-12-09', 'Vikas Mansing Bhise', 'Hol, Gavthan', '9881827164', 'male', 'vikasbhise708@gmail.com', 9, 'B.Sc ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `news` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news`) VALUES
(1, 'Welcome to Shiv Skill Foundation, SSF - each human being is born with unique set of potential that earns to be fulfilled as surely as the acorn yearns to become the oak within it - Aristotle.'),
(2, 'our faculty members are come from the best institute with good experience. they are experts in their own domain and share real life experiences with Trainee.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parentsdetails`
--

CREATE TABLE `tbl_parentsdetails` (
  `parent_id` int(11) NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  `parent_contact` varchar(255) NOT NULL,
  `parent_occupation` varchar(255) NOT NULL,
  `area_of_working` varchar(255) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `p_isdeleted` int(11) NOT NULL,
  `addedby` int(11) NOT NULL,
  `lastupdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_parentsdetails`
--

INSERT INTO `tbl_parentsdetails` (`parent_id`, `parent_name`, `parent_contact`, `parent_occupation`, `area_of_working`, `rel_id`, `id`, `p_isdeleted`, `addedby`, `lastupdate`) VALUES
(0, 'Geeta Gajphode', '9890453637', 'shoppkepper', 'samarth nagar baramati', 2, 2, 0, 0, 0),
(1, 'Alka', '9421023133', 'Housewife', 'Mahud', 2, 1, 0, 0, 0),
(2, 'Prakash', '8529637410', 'Job', 'Mahud', 1, 1, 0, 0, 0),
(3, 'Ramkrushna', '9421023135', 'Farmar', 'Darfal', 1, 2, 1, 2, 2),
(4, 'Geeta Gajphode', '9373372603', 'shoppkepper', 'samarth nagar baramati', 2, 5, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reff`
--

CREATE TABLE `tbl_reff` (
  `reff_id` int(11) NOT NULL,
  `reff_name` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `stateid` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `occupation` varchar(40) NOT NULL,
  `other` varchar(40) NOT NULL,
  `addedby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_reff`
--

INSERT INTO `tbl_reff` (`reff_id`, `reff_name`, `contact`, `address`, `stateid`, `districtid`, `cityid`, `occupation`, `other`, `addedby`, `updatedby`, `isdeleted`) VALUES
(1, 'Ghgs', '9405393638', 'hghj', 1, 2, 5, '444', 'gfghf', 1, 2, 0),
(2, 'aaaa', '9405393633', 'lhpwe', 1, 1, 1, 'fgh', 'uitr', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contactno` varchar(10) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `faculty` varchar(32) NOT NULL,
  `year` varchar(32) NOT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  `districtid` int(11) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `enquiryid` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `imagename` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `isdeleted` int(11) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`id`, `fname`, `address`, `contactno`, `email`, `faculty`, `year`, `gender`, `stateid`, `districtid`, `cityid`, `enquiryid`, `password`, `imagename`, `role`, `isdeleted`, `addedby`, `updatedby`) VALUES
(1, 'Sanjay Devgunde', NULL, '9922958683', 'sanjay.devgunde18@gmail.com', 'B.Sc.(Computer Science)', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanj@123', '65ef6cf41aebc', 'admin', NULL, NULL, 0),
(2, 'Kashid Sakshi Vikas ', NULL, '8468992638', 'sakshikashid@773gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi@1224', '662a29a4418c765efcc6117b61IMG_20210129_193758.jpg', 'student', NULL, NULL, 0),
(3, 'Aditya Dattatrya Nanavare ', NULL, '8308208452', 'adityananaware0909@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'aditya@12345', '65efcc3821843', 'student', NULL, NULL, 0),
(4, 'Jayesh Ajit Roman', NULL, '9112924669', 'romanjayesh98@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Romanjayesh@4395', '65efcc41cb483', 'student', NULL, NULL, 0),
(5, 'Machale Aditya Surendra ', '', '9356401156', 'adityamachale2003@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', '', 0, 0, 0, 0, 'adya5656', '662a27fad067965efcbee18e55IMG_20221112_202826~2.jpg', 'student', NULL, NULL, 0),
(6, 'Vikrant Sandip Salunkhe', NULL, '8012821414', 'vikrantsalunkhe57@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vicky@2004', '65efcc6117b61IMG_20210129_193758.jpg', 'student', NULL, NULL, 0),
(7, 'Sujit Dipak Lagad ', NULL, '9960537382', 'sujitlagad4@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sujit@96', '65efccfc105fd', 'student', NULL, NULL, 0),
(8, 'Pratish shinde', NULL, '9322665034', 'pratishshinde13@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'pratish10', '65efcd9fa7d26', 'student', NULL, NULL, 0),
(9, 'Arshad Jameer zari', NULL, '8482841082', 'arshadzari2005@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Arshad@1082', '65efcdc465858IMG_20240217_121446_461.jpg', 'student', NULL, NULL, 0),
(10, 'Aditi Bhausaheb Galande ', NULL, '9766715519', 'aditigalande98@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'aditi3003', '65efcf49cfbb120221113_152207.jpg', 'student', NULL, NULL, 0),
(11, 'Kunal Rajendra Kate ', NULL, '8983669607', 'kunalkate9607@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Kunal@9607', '65efcf8c95b54', 'student', NULL, NULL, 0),
(12, 'Ganesh Jangid', NULL, '8625834956', '8625834956', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Ganeah@6006', '65efcfce36988IMG-20240223-WA0020.jpg', 'student', NULL, NULL, 0),
(13, 'Randive Pranav Mohan', NULL, '7420830820', 'pranavrandive2555@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pulse@4371', '65efcfd7e8944', 'student', NULL, NULL, 0),
(14, 'Mahesh bhong', NULL, '9021676281', 'maheshbhong2004@gmail.com in', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Mahesh@18', '65efcfd914a1d', 'student', NULL, NULL, 0),
(15, 'Irfan pathan ', NULL, '7447336914', 'irfanpathan313111@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Irfan3137', '65efcfdad2353IMG_20240301_191538_991.jpg', 'student', NULL, NULL, 0),
(16, 'Anbhule Shubham Malhari ', NULL, '9604071645', 'shubhamanbhule2005@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shubham1212', '65efcfea0f16fIMG_20240116_192311_869.jpg', 'student', NULL, NULL, 0),
(17, 'Rajaram Vinayak Atole ', NULL, '9370915129', 'rajaramatole2004@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Rajaram@123', '65efcff1def15IMG-20240312-WA0001.jpg', 'student', NULL, NULL, 0),
(18, 'Aachal Kiran Ranaware ', NULL, '8669778374', 'kbranaware1529@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'aachal@1212', '65efd064d61db', 'student', NULL, NULL, 0),
(19, 'Nagargoje Chaitrali Annasaheb ', NULL, '7058203084', 'chaitralinagargoje@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Chaitrali000', '65efd0175aea2', 'student', NULL, NULL, 0),
(20, 'GHADGE OMKAR PANDURANG ', NULL, '7083345363', 'omkarghadge1604@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Omkar@16', '65efd01b13c93', 'student', NULL, NULL, 0),
(21, 'Atharav keshav kale', NULL, '8788801331', 'atharavkale33@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Atharav@11', '65efd034357dc00.jpg', 'student', NULL, NULL, 0),
(22, 'Nikhil Mohite', NULL, '7972290616', 'nikhimohite2003@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikhil123', '65efd036745edIMG_20230411_194438_277.jpg', 'student', NULL, NULL, 0),
(23, 'PAWAR ABHIJEET MOHAN', 'ATP-ghadgewadi,contactno= Tal-baramati', '9657398030', 'abhijeetpawar8030@email.com', '9657398030', 'B.Com.', NULL, NULL, NULL, NULL, NULL, 'iZhhs5b@JqKppyN', '65efd1ac83258IMG20240127165154.jpg', 'student', NULL, NULL, 0),
(24, 'RUSHIKESH SHIVAJI JADHAV', NULL, '9130730006', 'rushikeshjadhav8075@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'RUSHI1212', '65efd69dae31c', 'student', NULL, NULL, 0),
(25, 'Holkar Ankit ', NULL, '7499982038', 'aholkar150@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Ankit7499', '65efd084c4e92IMG-20221111-WA0000.jpg', 'student', NULL, NULL, 0),
(26, 'Karan Santosh Bhosale ', NULL, '8668968585', 'kb466444@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Ruchika@07', '65efd146cace3', 'student', NULL, NULL, 0),
(27, 'Chaudhari prajyot maruti ', NULL, '7620021077', 'prajyotc173@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@tinku0108', '65efd0b815067IMG_6951.jpg', 'student', NULL, NULL, 0),
(28, 'Yash Londhe ', NULL, '8600708585', 'yashlondhe1432@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Yash8585', '65efd0c5a5b0f1707658965989.jpg', 'student', NULL, NULL, 0),
(29, 'Abhijit Prakash Shelar ', NULL, '9309177898', 'abshelar9@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@abhijit9309', '65efd0d12fd8e1677390314737.jpg', 'student', NULL, NULL, 0),
(30, 'Sakshi Santosh Shinde ', NULL, '7097199696', 'sakshishinde4793@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'R7w@a@uvt6MkLyZ', '65efd0f4595de', 'student', NULL, NULL, 0),
(31, 'Gulave onkar Dnyandev ', NULL, '9921816518', 'gulaveonkar123@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Onkar@123', '65efd0f93d8261000091352.jpg', 'student', NULL, NULL, 0),
(32, 'Pankaj Sanjay Borate', NULL, '9421634282', 'pankajborate13@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pankaj12', '65efd1124a6e7IMG-20230715-WA0019.jpg', 'student', NULL, NULL, 0),
(33, 'Amruta Balasaheb Mohite', NULL, '8999660105', 'mohiteamruta46@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Amruta@09', '65efd126a36cb', 'student', NULL, NULL, 0),
(34, 'Prajyot maruti chaudhari', NULL, '8010775907', 'prajyotc173@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'w6Gk628cB@kYfqz', '65efd13a938e5IMG_6951.jpg', 'student', NULL, NULL, 0),
(35, 'Abhijit Prakash Shelar ', NULL, '9322119948', 'abshelar9@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Abhi9309', '65efd13f8c0681677390314737.jpg', 'student', NULL, NULL, 0),
(36, 'Abhijeet Jadhav ', NULL, '7263962792', 'abhijeetsuniljadhav@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Abhi9428@07', '65efd16068a1cIMG_20221113_140521.jpg', 'student', NULL, NULL, 0),
(37, 'Khaire Rahul Ashok', NULL, '8275075408', 'khairerahul200@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Time653', '65efd1d76a7dfPhoto...jpg', 'student', NULL, NULL, 0),
(38, 'Yash Bhanudas Hole ', 'Swami chincholi ', '7498023302', 'yashhole9513@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Yash7374*', '65efd1d9a0597Screenshot_2022_0615_140342.jpg', 'student', NULL, NULL, 0),
(39, 'Onkar Sanjay Lonkar ', NULL, '7756811405', 'omkarlonkar46@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Itel5250', '65efd219e7474IMG-20231221-WA0001.jpg', 'student', NULL, NULL, 0),
(40, 'Mahangade Atharv Ankush ', NULL, '7350908660', 'atharv6105@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'atharv123', '65efd22112a56IMG_20230424_171412.jpg', 'student', NULL, NULL, 0),
(41, 'Atish Ajit Bankar ', NULL, '9373611332', 'atishbankar79@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Atish911', '65efd25983ddf0001.jpg', 'student', NULL, NULL, 0),
(42, 'Srushti Pandurang Natu ', NULL, '9623749592', 'srushtinatu@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'dAyi6@nKrK6eqCe', '65efd2949fa0d', 'student', NULL, NULL, 0),
(43, 'Kadam Sopan Ashok ', NULL, '9170150101', 'sopankadam202@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Dada0101', '65efd28cc5d34IMG-20240108-WA0009.jpg', 'student', NULL, NULL, 0),
(44, 'Supekar Pradnya Hanumant ', NULL, '7498749388', 'pradnyasupekar2022@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pradnya18', '65efd28e8dba2', 'student', NULL, NULL, 0),
(45, 'Tejas Haridas Barge', NULL, '7517049904', 'tejasbarge88@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Tejas_1718', '65efd2e7e68e4IMG_20240303_120115.jpg', 'student', NULL, NULL, 0),
(46, 'Jadhav shivani vyankat', NULL, '8788027246', 'shivanijadhav243@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'UjtY9Pm3@mDnPZR', '65efd32b446d8', 'student', NULL, NULL, 0),
(47, 'Sakshi Santosh suryawanshi ', NULL, '9322067366', 'sakshisuryawanshi003@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi123', '65efd348ce0cf', 'student', NULL, NULL, 0),
(48, 'More pallavi machindra ', '', '9067202147', 'more123pallavi@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'pallavi@2003', '65efd34c86b72', 'student', NULL, NULL, 0),
(49, 'Ketan Zite', NULL, '8010796466', 'ketanzite@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Ketan6466', '65efd36bc5966', 'student', NULL, NULL, 0),
(50, 'Avinash Balaso Mane ', NULL, '7385659116', 'Avimane225@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'avi@225', '65efd3844a08a', 'student', NULL, NULL, 0),
(51, 'Prajyoti Uttam salunke ', NULL, '8830312101', 'Prajyotisalunke074@gmail.com ', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Prajyoti28', '65efd3a14d2f0', 'student', NULL, NULL, 0),
(52, 'Suryawanshi Vaishnavi Nanaso', NULL, '8080386785', 'vaishnavisuryawanshi2908@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaishnavi@2926', '65efd41bce4d1SAVE_20240302_223007.jpg', 'student', NULL, NULL, 0),
(53, 'Kambale Sanika Sandip ', NULL, '7414982053', 'sanikakamble112005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanika11', '65efd42f572e5', 'student', NULL, NULL, 0),
(54, 'Pallavi Dilip pawar ', NULL, '9322704254', 'pallavipawar3126@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pdp@2004', '65efd45cafac2InShot_20230401_220615736.jpg', 'student', NULL, NULL, 0),
(55, 'Chaitrali  Sarjerao Patil', NULL, '9370612141', 'chaitrali3001@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '#chaitrali.', '65efd52bae1f1', 'student', NULL, NULL, 0),
(56, 'Jagadale Tanmay Kisan ', NULL, '9359206975', 'Jagadaletanmay@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Tanmay1720', '65efd5f29c369', 'student', NULL, NULL, 0),
(57, 'Shirke Shivdatta Dattatray ', NULL, '9325088675', 'shivdattshirke@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shivdatt@123', '65efd5b332660', 'student', NULL, NULL, 0),
(58, 'Shreyash Abhijit Kulkarni ', NULL, '9322797041', 'shreyashkulkarni25@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shreyash@12', '65efd63fc3002IMG_20221101_205855_958.jpg', 'student', NULL, NULL, 0),
(59, 'Suraj Ravindra Marale ', NULL, '9960518947', 'surajmarale28@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'cia3ZNzFrFyKkhH', '65efd64fa0cafIMG-20231101-WA0026.jpg', 'student', NULL, NULL, 0),
(60, 'uday bapurao suryavanshi', NULL, '9067306576', 'udaysuryavanshi2@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'ryE3rAWmfGmT6@d', '65efd69692054', 'student', NULL, NULL, 0),
(61, 'Atish Nitin Thorat ', NULL, '9022565195', 'atishthorat2004@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Atish@9022', '65efd7003a195Photo.jpg', 'student', NULL, NULL, 0),
(62, 'Sahil Kamalakar Kharade ', NULL, '7249576508', 'kharadesahil27@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sahilkharade2004', '65efd7eb66fa2', 'student', NULL, NULL, 0),
(63, 'Mitesh bhoite', NULL, '9405905407', 'mitesh07bhoite@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '9763200502', '65efd77008231', 'student', NULL, NULL, 0),
(64, 'Shitole Harshal Kondiba', NULL, '8788501950', 'Shitoleharshal3@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Harshal@123', '65efd7b71ba47', 'student', NULL, NULL, 0),
(65, 'PRATIKSHA SANTOSH CHOUDHAR ', NULL, '8010695395', 'choudharpratiksha2003@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '1m@y2003', '65efdc75a5287IMG20240312095222.jpg', 'student', NULL, NULL, 0),
(66, 'Pawar Abhijit Ramchandra ', NULL, '9766685971', 'abhijeetpawar17505@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'abhi@5650', '65efd7daf245d', 'student', NULL, NULL, 0),
(67, 'Suraj Ravindra Marale ', NULL, '8180921471', '9960518947@Sm', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Suraj@123', '65efd80b5ea39', 'student', NULL, NULL, 0),
(68, 'Prachi Nandkumar Kamble', NULL, '7276725605', 'prachik390@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '@prachik1212', '65efddd03ba29', 'student', NULL, NULL, 0),
(69, 'Vaishnavi  Manoj Sonar', NULL, '8446677956', 'vaishnavisonar0030@gmail.com ', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaishnavi30', '65efd8ce05554', 'student', NULL, NULL, 0),
(70, 'Sanika Ravindra Nimbalkar', NULL, '7387485035', 'Sanikanimbalkar54@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanika9514', '65efd8887aa3a', 'student', NULL, NULL, 0),
(71, 'Krushna Santosh jadhav ', NULL, '9307151797', 'jadhavkrushna579@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Kjadhav123', '65efd8b257e71', 'student', NULL, NULL, 0),
(72, 'Harsh Kisan Lembhe', NULL, '9075467954', 'harshlembhe@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sonamona@15', '65efd9cf543fe', 'student', NULL, NULL, 0),
(73, 'Kajal', NULL, '8767196200', 'salunkekajal58@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Kajal@6200', '65efdd84cd54a17102185365573991107594358951118.jpg', 'student', NULL, NULL, 0),
(74, 'Dalavi Shruti Nana', NULL, '8208408057', 'shrutidalavi2003@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'pra1976na', '65efdcda79231IMG20240312095222.jpg', 'student', NULL, NULL, 0),
(75, 'Walunj Karan Ravsaheb ', NULL, '8010094347', 'walunjkaran9@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '212111', '65efd88b3414e', 'student', NULL, NULL, 0),
(76, 'Chaitanya sudhir khandekar ', NULL, '9172346386', 'chaitanyakhandekar95@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Chaitanya13114', '65efd89ed23b8', 'student', NULL, NULL, 0),
(77, 'Gauri Sachin Jogdand ', NULL, '9503841032', 'gaurijogdand190204@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'gauri@1212', '65efde3718e1dIMG-20240312-WA0000.jpg', 'student', NULL, NULL, 0),
(78, 'Shobha vishnu Rupanawar ', NULL, '9834753843', 'shobharupanawar@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rshobha@2520', '65efd8afdb183', 'student', NULL, NULL, 0),
(79, 'Rohan Ajay Dhumal', NULL, '9511984427', 'dhumalrohan8946@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Baramati@12', '65efd8ca4761bIMG_20230914_155012.jpg', 'student', NULL, NULL, 0),
(80, 'Sanchita Vilas Tilekar ', NULL, '8007518182', 'sanchitatilekar1@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'sanchita123', '65efd8d382413', 'student', NULL, NULL, 0),
(81, 'Jagdale Raj Santosh ', NULL, '7499415966', 'jagdaleraj66@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'dKVWTi@33aveXwy', '65efd8e9782f1', 'student', NULL, NULL, 0),
(82, 'Randhir siddhant bharat ', NULL, '8010607108', 'randhirsiddhant9@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Siddhant@12345', '65efd9075349cScreenshot_2023_0825_185811.jpg', 'student', NULL, NULL, 0),
(83, 'Adiraj Kshirsagar ', NULL, '8965087579', 'kshirsagaradiraj123@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'mauli45', '65f063ae27743', 'student', NULL, NULL, 0),
(84, 'Harsh Lembhe', NULL, '9075467954', 'harshlembhe@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Mitesh@1234', '65efd9cf543fe', 'student', NULL, NULL, 0),
(85, 'Chaitrali Sarjerao Patil', NULL, '7219682010', 'chaitarli3001@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Baramati@12', '65efd9e31cbf3', 'student', NULL, NULL, 0),
(86, 'Snehal Shivaji Nemane', NULL, '8767431724', 'snehalnemane18@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Snehal@2004', '65efe1217d446', 'student', NULL, NULL, 0),
(87, 'Pranav bhausaheb dere ', '', '9730973083', 'pranavdere219@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pranav@19', '65efdaa447b99', 'student', NULL, NULL, 0),
(88, 'Rushikesh Abasaheb Pawar', NULL, '9226864049', 'rushikeshpawar4644@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Rushi2004', '65efda6cc928a', 'student', NULL, NULL, 0),
(89, 'Snehal Shivaji Nemane', NULL, '8767431724', 'snehalnemane18@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Snehal@2004', '65efe1217d446', 'student', NULL, NULL, 0),
(90, 'Salunke Kuldeep Yuvraj ', NULL, '8432257766', 'kuldeepsalunke99@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'kys999', '65efdab855fb4110301868_ExamForm.PDF', 'student', NULL, NULL, 0),
(91, 'Pratik Rajendra Taware ', NULL, '9146007192', 'pratiktaware003@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pr@15090211', '65efdb98b2403IMG_20220823_160006.jpg', 'student', NULL, NULL, 0),
(92, 'Rohan Yede', NULL, '9325877725', 'rohanyede77@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Rohan@12345', '65efdb26105f4PhotoRoom-20240127_194941.png', 'student', NULL, NULL, 0),
(93, 'Aditya Dnyandev Thorat ', NULL, '8766966580', 'adityathorat5150@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@HsJ26vmWiGcX9a', '65efdb59d3b97', 'student', NULL, NULL, 0),
(94, 'Darekar Abhishek Laxman ', NULL, '9373846609', 'abhishekdarekar402@gmail.com', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Baramati@123', '65efdb61db112', 'student', NULL, NULL, 0),
(95, 'Shobha vishnu Rupanawar ', NULL, '9373025126', 'shobharupanawar@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '5th9PxrVEqWPY@4', '65efdb685168e', 'student', NULL, NULL, 0),
(96, 'Shreya Nitin Thorat', NULL, '8625991912', 'thoratmanini9@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '@maninithorat22', '65efdd0e30b03', 'student', NULL, NULL, 0),
(97, 'Sakshi Satish kardile ', NULL, '8446411522', 'skshkrdl@gmail.com ', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Skardile123', '65efdbea5f87f', 'student', NULL, NULL, 0),
(98, 'Sujan Mane', NULL, '7385360461', 'sujanmane11@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sujan2004', '65efdcb34aee8', 'student', NULL, NULL, 0),
(99, 'Gaurav Kantilal Tarte', NULL, '7501080604', 'gauravtarte2004@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'TvPj@DpP3sLCzii', '65efdddf8f53bIMG_20240302_182933.jpg', 'student', NULL, NULL, 0),
(100, 'Vaibhav dnyandev phadatare', NULL, '7218852276', 'Vaibhavphadatare835@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaibhav@123', '65efdcb229c34', 'student', NULL, NULL, 0),
(101, 'Surendra nanaso shinde', NULL, '9527595167', 'surendrashinde9896@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Surendra', '65efdd109e758', 'student', NULL, NULL, 0),
(102, 'Manish Dipak Dhaygude ', 'Mhada colony Baramati ', '8767011304', 'manishdhaygude36@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Manish@2005', '65efdd3292fed', 'student', NULL, NULL, 0),
(103, 'Shendkar prerana ganesh', NULL, '7666165108', 'Shendkarprerana@gmail.com ', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Payal1829', '65efdd04620dd', 'student', NULL, NULL, 0),
(104, 'Rucha Ramesh Kamble', NULL, '7559350819', 'ruchakamble913@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Rucha2005', '65efdf05e2715', 'student', NULL, NULL, 0),
(105, 'Gaurav Kantilal Tarte', NULL, '7501080604', 'gauravtarte2004@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Gaurav@7501', '65efdddf8f53bIMG_20240302_182933.jpg', 'student', NULL, NULL, 0),
(106, 'Yash Manoj Girme', NULL, '9673695096', 'yashgirme04@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Yash2004', '65efddd10e70a', 'student', NULL, NULL, 0),
(107, 'Kale Akash hari ', NULL, '8459008115', 'akashkale2595@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '008115', '65efde8fc21a7Screenshot_2024-03-04-12-23-40-28_99c04817c0de5652397fc8b56c3b3817.jpg', 'student', NULL, NULL, 0),
(108, 'Vishwajeet gore', NULL, '8767907859', 'vishwajeetgore8@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '8767907869', '65efdec2328c1', 'student', NULL, NULL, 0),
(109, 'Anisha bharat deoakte', NULL, '8767085883', 'anishadeokate@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vk7xvs@yz79UyFF', '65efdfed00f01IMG_20230904_140325.jpg', 'student', NULL, NULL, 0),
(110, 'Pratapsinh Sukale ', NULL, '9657933596', 'pratapsinhsukale2023@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9657933596', '65efe4fd780df', 'student', NULL, NULL, 0),
(111, 'Kumbhar sanika popat', NULL, '8856999062', 'popatkumbhar9062@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanika1122', '65efdf0304d1b', 'student', NULL, NULL, 0),
(112, 'Pranjali Machhindra Raut ', NULL, '9322574848', 'Pranjaliraut205@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Hp4BbJKhLB77fn', '65efe01546a17', 'student', NULL, NULL, 0),
(113, 'Walke Vaishnavi Nitin ', NULL, '9699151517', 'walkevaishnavi37@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'FFwZn6@FWJ3HzbB', '65efe3605a8d3', 'student', NULL, NULL, 0),
(114, 'Shinde Mayuri Sunil ', '', '9699012236', 'mayu142003@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'wVh@m3KacsifEm7', '65efe0697a9c6', 'student', NULL, NULL, 0),
(115, 'Shweta Dnyaneshwar kharwade', '', '7249351004', 'shwetakharwade0@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shweta@123', '65efdfa54c0e2', 'student', NULL, NULL, 0),
(116, 'neha parshuram hole ', 'swami chincholi ', '9022075767', 'holeneha42@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'neha119', '65efe322483701707998212689.jpg', 'student', NULL, NULL, 0),
(117, 'Siddhi Nitin Girme', NULL, '7709809339', 'siddhigirme310@gmali.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Siddhi@3104', '65efe004df70b', 'student', NULL, NULL, 0),
(118, 'Avanti Tanaji Patil ', NULL, '8626022846', 'avantipatil491@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Up@Fx27sYtZFjZ9', '65efe2a7d825e', 'student', NULL, NULL, 0),
(119, 'Ankita Anil Pote ', 'Mirajgoan Tal karjat Dist. Ahmednagar ', '9209267611', 'ankitapote0707@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'ankitapote03', '65efea567bee4', 'student', NULL, NULL, 0),
(120, 'Jayesh teli ', 'Phaltan ', '9529188894', 'jayeshteli07@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Jayesh@07', '65efe1311d467Screenshot_2024_0312_102809.jpg', 'student', NULL, NULL, 0),
(121, 'Ruchika yadav ', NULL, '8767406766', 'yruchika143@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'U5w7z2DBEZuNkL@', '65efdf7c3fcdd', 'student', NULL, NULL, 0),
(122, 'Anisha Dadaso Pawar', NULL, '7823861313', 'anishapawar5555@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anisha123', '65efdf932127fIMG_20240222_100224_020.jpg', 'student', NULL, NULL, 0),
(123, 'Pawar Priti Dnyandev ', NULL, '9421192376', 'pawarpriti1111@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'pawar@2004', '65efdf93cc45c', 'student', NULL, NULL, 0),
(124, 'Galande Divya Dada ', NULL, '7276587679', 'galandedivya14@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Divya@02', '65efe2d5968e6', 'student', NULL, NULL, 0),
(125, 'Thorat Shubham Dnyandev ', NULL, '9356014064', 'thoratshubham9686@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shubham@123', '65efdfa2838b3IMG-20240312-WA0001.jpg', 'student', NULL, NULL, 0),
(126, 'Pranav Bhausaheb Khodave', NULL, '8830676255', 'pranavkhodave246@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'wY98y6V7M@8EsDD', '65efdfa4e814a', 'student', NULL, NULL, 0),
(127, 'Aditya Dhananjay Kumbhar ', NULL, '9139393835', 'adityakumbhar2312@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aditya@2312', '65efdfadd41fe', 'student', NULL, NULL, 0),
(128, 'Aditya Dhananjay Kumbhar ', NULL, '9139393835', 'adityakumbhar2312@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aditya@2312', '65efdfadd450b', 'student', NULL, NULL, 0),
(129, 'Gaurav  Rakesh Dhakane ', '', '9960898823', 'Gauravdhakane14@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'gaurav14', '65efe171ee805', 'student', NULL, NULL, 0),
(130, 'Pawar anisha prashant', NULL, '9420351571', 'anisha032005@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anisha032005', '65efdfc3c0f5a', 'student', NULL, NULL, 0),
(131, 'Gaikwad Tejal Vitthal', NULL, '9730746417', 'gtejal265@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'TEJA2003', '65efe091d1c21', 'student', NULL, NULL, 0),
(132, 'Diksha Gorakh Borkar ', NULL, '7410119236', 'borkardiksha40@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Diksha@2109', '65efdfd1055f7', 'student', NULL, NULL, 0),
(133, 'Veersinh udayraj kakade ', 'Shivaji nager Osmanabad ', '8847715423', 'Balukakade2000@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'veer@007', '65efe16f1bf2094B52EB3-B103-4AAB-8F27-4670306EA17C.jpeg', 'student', NULL, NULL, 0),
(134, 'Praditi sargar', NULL, '8208528244', 'praditisargar995@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 't2x6zw@LY6LefCy', '65efdfd86c784', 'student', NULL, NULL, 0),
(135, 'Umesh laxman more', 'Baramati rui', '9322559279', 'umeshmore431@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'umeshmore02', '65efe0989e031', 'student', NULL, NULL, 0),
(136, 'Sanskruti Sandip Gawade ', 'Baradgoan sudrik,contactno=contactno= karjat,faculty=faculty= Ahmednagar ', '9284180285', 'sanskrutigawade2481@gmail.com', 'B.Sc.(Computer Science)', '9284180285', NULL, NULL, NULL, NULL, NULL, 'syrRGY@rfA8qyCd', '65efe4c42848a', 'student', NULL, NULL, 0),
(137, 'Shwetej shahaji bhosale ', NULL, '7758961815', 'shwetejb@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'swap0077', '65efe0a2779b6', 'student', NULL, NULL, 0),
(138, 'PRASHIK SANTOSH MAKHARE ', NULL, '9503533026', 'prashikmakhare026@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'vTK@M5KQxULh@Ei', '65efe38e0fb77', 'student', NULL, NULL, 0),
(139, 'Bhagyashree shailesh Lokhande ', NULL, '9527692149', 'bhagyashreelokhande067@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '72309', '65efe0935c181', 'student', NULL, NULL, 0),
(140, 'Karan Raghunath kamble ', NULL, '9309442627', 'kamblekaran9152@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@jz7B7TDTZTNq25', '65efe00700d3eIMG_20240219_215704_046.jpg', 'student', NULL, NULL, 0),
(141, 'Shaikh Tohim sayyed', 'Ap-songaon  tal-baramati  dist-Pune', '9307774753', 'Shaikhtohim138@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9307774753', '65efe1e6d8a6b', 'student', NULL, NULL, 0),
(142, 'Durgade Shamal gulab', NULL, '9096420172', 'durgadeshamal@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '7urVDwVvi@TBNij', '65efe0a70ab1d', 'student', NULL, NULL, 0),
(143, 'Durgade Shamal gulab', NULL, '9096420172', 'durgadeshamal@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '7urVDwVvi@TBNij', '65efe0a70ab1d', 'student', NULL, NULL, 0),
(144, 'Durgade Shamal gulab', NULL, '9096420172', 'durgadeshamal@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '7urVDwVvi@TBNij', '65efe0a70ab1d', 'student', NULL, NULL, 0),
(145, 'Sanika Bhade', NULL, '8010765051', 'sanika.bhade@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'fiuuNjDMN3k@arM', '65efe24a319de', 'student', NULL, NULL, 0),
(146, 'Nikita tukaram nhane ', NULL, '7378901029', 'nikitanhane5@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'D7h6LtBhwC4Y@3L', '65efe021f1bf0IMG-20240312-WA0004.jpg', 'student', NULL, NULL, 0),
(147, 'Gaikwad Gauri lalaso', NULL, '9335144312', 'gaikwadgauri681@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'gaikwadgauri12', '65efe028224f8', 'student', NULL, NULL, 0),
(148, 'Hagare Snehal Aabaso ', 'At: hagare wadi\r\nPost:shirsatwadi', '9130154092', '9371574872', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'snehal@123', '65efe07bd8ff3', 'student', NULL, NULL, 0),
(149, 'Gauri Mahadev Gaikwad', NULL, '7218591536', 'gaurigaikwad725@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Gauri@123', '65efe0852b48a', 'student', NULL, NULL, 0),
(150, 'Durgade Shamal gulab', NULL, '9096420172', 'durgadeshamal@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '4@HicmM27tG9zTE', '65efe0a70ab1d', 'student', NULL, NULL, 0),
(151, 'Kumbhar Sanjana Navnath ', NULL, '8149519580', 'sanjanakumbhar3837@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanjana@123', '65efe0a602aca', 'student', NULL, NULL, 0),
(152, 'Soham Santosh Nevase ', NULL, '7249055411', 'sohamnevase21@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'soham@2114', '65efe0c6b10cc', 'student', NULL, NULL, 0),
(153, 'Pranav Nitin Udavant ', NULL, '7276314536', 'pranavudavant80@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '4536', '65efe5cfcc75c', 'student', NULL, NULL, 0),
(154, 'Sakshi vijay gadhave', NULL, '7020324271', 'sakshigadhave34@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '1104', '65efe046e5439', 'student', NULL, NULL, 0),
(155, 'Durgade Shamal gulab', NULL, '9096420172', 'durgadeshamal@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '4@HicmM27tG9zTE', '65efe0a70ab1d', 'student', NULL, NULL, 0),
(156, 'Neha Wabale', NULL, '8806309433', 'nehawabale23@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha0471', '65efe07b59e54', 'student', NULL, NULL, 0),
(157, 'Gawali pooja charanadas', NULL, '9529897612', 'poojagavali845@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9529897612', '65efe6c392dacIMG-20240107-WA0096.jpg', 'student', NULL, NULL, 0),
(158, 'Swanandi krishnraj pawar', NULL, '7558565978', 'Swanandipawar85@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'swanandi2509', '65efe1351dc9d', 'student', NULL, NULL, 0),
(159, 'Samadhan Jyotiram jamdar ', NULL, '8010208588', 'samdhanjamdar22@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'samadhan@8588', '65efe059db827Screenshot_20240304-152704_Gallery.jpg', 'student', NULL, NULL, 0),
(160, 'Gaikwad Tejal Vitthal', NULL, '9730746417', 'gtejal265@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'TEJA2003', '65efe091d1c21', 'student', NULL, NULL, 0),
(161, 'Vishal Vavage ', 'Gunawadi Baramati pune', '7270900707', 'Vishalvavge@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '07070707', '65efe1769fd8eScreenshot_20240312_103008_Gallery.jpg', 'student', NULL, NULL, 0),
(162, 'Gaikwad Tejal Vitthal', NULL, '9730746417', 'gtejal265@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'TEJA2003', '65efe091d1c21', 'student', NULL, NULL, 0),
(163, 'Dipak Chandrakant Gore ', NULL, '9356312626', 'dipakgore222@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '4828dL@sdMXbSWS', '65f12adb6fcb8', 'student', NULL, NULL, 0),
(164, 'Aditya Dhananjay Kumbhar ', NULL, '9139393835', 'adityakumbhar2312@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aditya@2312', '65efe0625c55bIMG_20240312_102326.jpg', 'student', NULL, NULL, 0),
(165, 'Pranav Deepak Chavan', 'At post rawangaon', '9561396064', 'chavanpranav758@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '#Pranav09', '65eff481511b9', 'student', NULL, NULL, 0),
(166, 'Samadhan Jyotiram jamdar ', NULL, '8010208588', 'samdhanjamdar22@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'samadhan@8588', '65efe0674aa9fScreenshot_20240304-152704_Gallery.jpg', 'student', NULL, NULL, 0),
(167, 'Manasi Sunil Khaladkar ', NULL, '7219007437', 'manasi7437@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'manasi7437', '65efe153164d7', 'student', NULL, NULL, 0),
(168, 'Samadhan Jyotiram jamdar ', NULL, '8010208588', 'samdhanjamdar22@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'samadhan@8588', '65efe069026e9Screenshot_20240304-152704_Gallery.jpg', 'student', NULL, NULL, 0),
(169, 'Durgade Shamal gulab', NULL, '9096420172', 'durgadeshamal@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '4@HicmM27tG9zTE', '65efe0a70ab1d', 'student', NULL, NULL, 0),
(170, 'Durgade Shamal gulab', NULL, '9096420172', 'durgadeshamal@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '4@HicmM27tG9zTE', '65efe0a70ab1d', 'student', NULL, NULL, 0),
(171, 'Durgade Shamal gulab', NULL, '9096420172', 'durgadeshamal@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '4@HicmM27tG9zTE', '65efe0a70ab1d', 'student', NULL, NULL, 0),
(172, 'Prajwal Vasant Lokhande ', NULL, '9730586552', 'prajwallokhande7025@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Prajwal@2005', '65efe2cd08d69', 'student', NULL, NULL, 0),
(173, 'Pawar Abhishek Dasharath ', NULL, '9561291058', 'ap8257349@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'abhi007', '65efe076385a8', 'student', NULL, NULL, 0),
(174, 'Chavan viraj ramchandra ', NULL, '7219468305', 'Virajchavan2125@gmail.com ', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '123456789', '65efe27b80477', 'student', NULL, NULL, 0),
(175, 'Rohit dhanaji gawade ', NULL, '9356508481', 'rohitgawade1527@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'G9eh7cg@DC6dAmw', '65efe197e0149IMG20231007095314.jpg', 'student', NULL, NULL, 0),
(176, 'Harshad Suresh Lokhande ', '', '9975468547', 'harshadlokhande750@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Lokhande750', '65efe13ba28dc', 'student', NULL, NULL, 0),
(177, 'Samruddhi Vasant patil', NULL, '8888424965', 'samruddhipatil2906@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'PSamruddhi', '65efe089af76e', 'student', NULL, NULL, 0),
(178, 'Prathamesh vikas phasage ', 'Ravangoan dound pune', '7522985391', 'prathameshphasge2@gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'prathamesh01', '65eff616eba15IMG_4685.JPG', 'student', NULL, NULL, 0),
(179, 'Siddhi vijay deokate', NULL, '9322439532', 'Siddhideokate2004@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'siddhi@2004', '65efe0cd02f80', 'student', NULL, NULL, 0),
(180, 'Sahil kundan Sawant ', 'Laxminagr phaltan ', '9226215680', 'sahilsawant2433@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sahil0303', '65efe12dd916d', 'student', NULL, NULL, 0),
(181, 'Tanishka Sanjay Pawar ', NULL, '9657585572', 'pawartanishka712@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@u@p@s6xwyUkb6B', '65efe0ca448b4', 'student', NULL, NULL, 0),
(182, 'Yashvardhan padmakar kale ', 'Kurduwadi ', '7585869696', 'yashkale7696@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'mauli@77', '65efe1efc9782IMG_20231009_094725989.jpg', 'student', NULL, NULL, 0),
(183, 'Sakshi mohan sabale ', NULL, '9172817404', 'Sakshisable448@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'w97h4@JQbz2DNG2', '65efe09a1696aScreenshot_20230730-140444_Instagram.jpg', 'student', NULL, NULL, 0),
(184, 'Rohan Rajendra Devkar ', NULL, '9960876907', 'devkarrohan3@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Devkarrohan3@', '65efe112823a8IMG_20240312_102847.jpg', 'student', NULL, NULL, 0),
(185, 'Shivam Arun gore ', NULL, '8530142497', 'shivamgore41@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '2YMBhUnW8fCkhU@', '65efe0e3349cf', 'student', NULL, NULL, 0),
(186, 'Kamble Tushar Vitthal ', NULL, '9373626122', 'tusharkamble2202@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'tush@2121', '65efe116c4b26', 'student', NULL, NULL, 0),
(187, 'Swarup vare', NULL, '8421960995', 'Swarupvare1@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sFvB@4f7rExkNhd', '65efe0a75b656', 'student', NULL, NULL, 0),
(188, 'Matkar Pratiksha Ramachandra ', NULL, '8459470187', 'pratikshamatkar84@gmail.com ', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pratiksha1234', '65efe1768699f', 'student', NULL, NULL, 0),
(189, 'Anjali Shashikant Sonawane ', 'Shethphalgadhe ,contactno=contactno= 8766416036', '8766416036', 'anjalisonawane2612@gmail.com', '8766416036', 'B.Voc.(Foodtech)', NULL, NULL, NULL, NULL, NULL, 'anjali2003', '65efe0b0921e7', 'student', NULL, NULL, 0),
(190, 'Ajay Anbhule ', 'Dhavalas', '8080977161', 'anbhuleajay487@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ajay8080', '65efe1510756617102195807258589829515890081922.jpg', 'student', NULL, NULL, 0),
(191, 'Aditya Popat Misal ', 'At-Kardanwadi Po-Lasurne Tal-Indapur Dist-Pune', '7447589691', 'adityapopatmisal@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'aditya1234', '65efe13c474ee', 'student', NULL, NULL, 0),
(192, 'Atharva Vijay Dhaigude ', NULL, '8668306382', 'atharvadhaigude6@gamil.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'atharva143515', '65efe0c31047cIMG_5148.jpeg', 'student', NULL, NULL, 0),
(193, 'Aishwarya Dattatray Nimbalkar ', 'Khadki,contactno=contactno=contactno=contactno= pune maharashtra 413130', '9699680012', 'nimbalkarnimbalkar09@gmail.com', '9699680012', 'B.Com.', NULL, NULL, NULL, NULL, NULL, '258025', '65eff8401699a', 'student', NULL, NULL, 0),
(194, 'Kumbhar Arati Navanath ', NULL, '9325665120', 'aratikumbhar530@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '838821', '65efe0c959679', 'student', NULL, NULL, 0),
(195, 'Amol Anil More', NULL, '9011484587', 'mamol8630@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '9011484587', '65efe0cc4a8c5', 'student', NULL, NULL, 0),
(196, 'Mahesh Tanaji More', 'Mankarawadi', '9518700866', 'maheshmore3702@gamil.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'mahesh3702', '65efe2cc17f58', 'student', NULL, NULL, 0),
(197, 'Pavan Pravin Shitole ', NULL, '9665816163', 'shitolepavan52@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pavan9696', '65efe0cdb3b52', 'student', NULL, NULL, 0),
(198, 'RAJ SUNIL RAKHUNDE', NULL, '9823235332', 'rajrakhunde05@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Raj@96k', '65efe2ae94a581694021534862.jpg', 'student', NULL, NULL, 0),
(199, 'Sable Reshma jaysing ', NULL, '7057478155', 'reshmasable750@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'reshma2', '65efe0d2a857f', 'student', NULL, NULL, 0),
(200, 'Agwan sakshi santosh', NULL, '7447437970', 'Sakshiagwan31@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi1', '65efe0ff653c5', 'student', NULL, NULL, 0),
(201, 'Nikita tukaram nhane ', NULL, '7020349592', 'nikitanhane5@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikita@123', '65efea06ee8fc', 'student', NULL, NULL, 0),
(202, 'Gambhire Monika Himmat ', NULL, '8600626067', '8600626067', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'monika123', '65efe0df33081', 'student', NULL, NULL, 0),
(203, 'Nandre Kaushal Sunil ', NULL, '8468845150', 'kaushalnandre4@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'kaushal1199', '65efe12fb6f41', 'student', NULL, NULL, 0),
(204, 'Pawar anisha prashant', NULL, '9595665282', '9420351571', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'ANISHA032005', '65efe0ebad5ed', 'student', NULL, NULL, 0),
(205, 'Nilam Dadaso Kharat ', '', '7499926824', 'nilamkharat1363@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'g@A7@G4szfCLXUs', '65efe1db84954IMG_20240226_093754.jpg', 'student', NULL, NULL, 0),
(206, 'Kalgaonkar Abhishek Arjun ', NULL, '8975061909', 'abhishekkalgaonkar40@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Abhi1909', '65efe15b9dc7cIMG_20240304_231246.jpg', 'student', NULL, NULL, 0),
(207, 'Meravi sagar mehatlal ', NULL, '7620863395', 'sagarmeravi563@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sagarop6677', '65efe15de3d65', 'student', NULL, NULL, 0),
(208, 'Arti Sham Shirole', 'Khadaki ', '9325966500', 'Artishirole @2005', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'buWPH2DDA@3WBz9', '65eff8dad02e8', 'student', NULL, NULL, 0),
(209, 'Pranjali Bapu Kunjir', NULL, '9146342699', 'pranjalikunjir52@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Credit_1', '65efe12ceeca3', 'student', NULL, NULL, 0),
(210, 'Bandgar  Prajit Ramraje', NULL, '8432544812', 'prajitbandgar712@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Prajit2005', '65efe100dcac1', 'student', NULL, NULL, 0),
(211, 'Pranjali Bapu Kunjir', NULL, '9146342699', 'pranjalikunjir52@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Credit_1', '65efe12ceeca3', 'student', NULL, NULL, 0),
(212, 'Khade Gitanjali baban', 'Nirgude', '7820905294', 'khadebaban396@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7820905294', '65efeafc5225f', 'student', NULL, NULL, 0),
(213, 'Randive Vishal Vinod', 'Ap:- sansar (irrigetion Bangla) T:- Indapur D:- Pune', '9823778515', 'vishalrandive8515@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'India@11', '65efe10ac0051IMG_20230716_154813.jpg', 'student', NULL, NULL, 0),
(214, 'Shravani vijay sakhare', NULL, '7219844277', 'shravanisakhare45@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shravani123', '65efe113cfcfa', 'student', NULL, NULL, 0),
(215, 'Datta waghmode ', NULL, '8767824926', 'dwaghamode630@gmail.co', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '8767828926', '65efe11848454', 'student', NULL, NULL, 0),
(216, 'Thorat Rushabh Maruti ', 'Bayajinagar rui ', '7276210400', 'rushithorat7276@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vidya5', '65efe11adc029IMG-20240126-WA0087.jpg', 'student', NULL, NULL, 0),
(217, 'Payal Shatrughana Shitole ', 'At post patas tal.daund', '9021741517', 'shitolepayal2@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'P@654321', '65efe11c0375fphoto .pdf', 'student', NULL, NULL, 0),
(218, 'Aditya ', NULL, '9975350041', 'adityapawar1858p@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'priyanka1224', '65efe11c6be58', 'student', NULL, NULL, 0),
(219, 'Adesh Chandrakant Saste ', 'Sastewadi \r\n', '9168938042', 'sasteadesh001@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'adesh@001', '65efe1eec118c', 'student', NULL, NULL, 0),
(220, 'Shrutika shounak kulkarni ', NULL, '9309411219', 'shrutikakulkarni935@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shrutika19', '65efe128a193fphoto1.pdf', 'student', NULL, NULL, 0),
(221, 'Pravin Dattatray pawar ', NULL, '8010220336', 'pravinpawar8269@gamil.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pravin@12', '65efe12a77c30', 'student', NULL, NULL, 0),
(222, 'Shinde Rajesh subhash', NULL, '9975683034', 'rajshinde8837@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '19112002', '65efe12a8685417102195193496990280921180055423.jpg', 'student', NULL, NULL, 0),
(223, 'Vaibhav Appaso Thombare ', NULL, '7887590202', 'vaibhavthombare0202@gmail.com ', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '2204', '65efe1e86d1c1', 'student', NULL, NULL, 0),
(224, 'Tanuja Sandip Lipne', NULL, '9021604215', 'lipnetanuja@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Tanuja@07', '65efe12d1667e', 'student', NULL, NULL, 0),
(225, 'Abhay Dhansing Nandkhile ', NULL, '7620126005', 'abhaynandkhile3@gmail.com', 'B.Sc.(Computer Science)', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Abhay123', '65efe3b198a03IMG_1628.jpeg', 'student', NULL, NULL, 0),
(226, 'Zol tushar shivaji ', NULL, '8799918997', 'zoltusar1789@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '123456', '65efe12d721ac', 'student', NULL, NULL, 0),
(227, 'Shivam Nana sul', 'Morochi ', '7709416253', 'shivamsul01@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shivam01', '65efe21990726', 'student', NULL, NULL, 0),
(228, 'Pranav Vijay Shinde', NULL, '7972302188', 'pranavshinde249@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pranav@123', '65efe1f487ea8IMG_20240312_102852.jpg', 'student', NULL, NULL, 0),
(229, 'Nikam Saurabh Bhiva ', NULL, '9309097951', 'saurabhnikam099@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'saurabh@8787', '65efe24de0e42IMG_20240209_112434.jpg', 'student', NULL, NULL, 0),
(230, 'Jagtap Shubhangi Bhauso', NULL, '8767258515', 'shubhangij745@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shubhz2003', '65efe1364687c', 'student', NULL, NULL, 0),
(231, 'Javed Mahibub Shaikh ', 'A/P Asu ', '7709171540', 'javedshaikh1342005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'javed.shaikh2A14', '65efe39be61b1AQADM74xG_q5WVZ-.jpeg', 'student', NULL, NULL, 0),
(232, 'Omkar ghadage', NULL, '8788721775', 'oghadage01@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Omkar2424', '65efe14083071IMG_20231013_100628_048.jpg', 'student', NULL, NULL, 0),
(233, 'Dalvi Prathamesh kalyan ', '', '9309772528', 'prathameshdalvi0513@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'FG9tGYtH97aHG@g', '65efe14251493', 'student', NULL, NULL, 0),
(234, 'Nikita Navnath More ', NULL, '9579532445', 'nikitanmore877@gimal.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'nikita1234', '65efe1427b50a', 'student', NULL, NULL, 0),
(235, 'Arti sham shirole ', NULL, '9325966500', 'Artishirole @2005', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'qSFuk@tYRrQr5cP', '65eff8dad02e8', 'student', NULL, NULL, 0),
(236, 'Gaikwad Riya Ramdas', NULL, '9309563334', 'riyagaikwad779@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'RiyaG0405', '65efe1454a559', 'student', NULL, NULL, 0),
(237, 'Kanchan Ashok Kubade ', NULL, '8459196084', 'kanchankubade532@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'kanchan@28', '65efe14e3f625', 'student', NULL, NULL, 0),
(238, 'Shravani Sanjay jagtap ', NULL, '7066813414', 'shravanijagtap7066@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'XZe@vCTrRJuvLy9', '65efe1500229b', 'student', NULL, NULL, 0),
(239, 'Vaishnavi jadhav ', NULL, '9307992326', 'vaishnavijadhav2111@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaishnavi', '65efe15269981', 'student', NULL, NULL, 0),
(240, 'Pagale divya mukesh ', NULL, '9075801007', 'divyapagale04@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'divya9996', '65efe1fd932bb20231115_190931.heif', 'student', NULL, NULL, 0),
(241, 'Kale Abhijit Tatyasaheb ', NULL, '7517487405', 'abhikale13248@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'abhikale123', '65efe1558468c', 'student', NULL, NULL, 0),
(242, 'Jaykumar Sunil Sawant ', NULL, '7020707675', 'jaysawant226@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'jaydada@6927', '65efe154f2a9b59C491D0-B195-4B8E-BF91-FB41AA195988.jpeg', 'student', NULL, NULL, 0),
(243, 'Anuj Bapu Kumbhar ', NULL, '7757870654', 'anujkumbhar101@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anuj@101', '65efe18db22b4', 'student', NULL, NULL, 0),
(244, 'Jaykumar Sunil Sawant ', NULL, '7020707675', 'jaysawant226@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'jaydada@6927', '65efe158eabda59C491D0-B195-4B8E-BF91-FB41AA195988.jpeg', 'student', NULL, NULL, 0);
INSERT INTO `tbl_registration` (`id`, `fname`, `address`, `contactno`, `email`, `faculty`, `year`, `gender`, `stateid`, `districtid`, `cityid`, `enquiryid`, `password`, `imagename`, `role`, `isdeleted`, `addedby`, `updatedby`) VALUES
(245, 'Chaitanya dashrath saste', NULL, '9021618232', 'Chaitanyasaste007@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9021618232', '65efe3285071dIMG-20240312-WA0001.jpg', 'student', NULL, NULL, 0),
(246, 'Manthan Sandip Londhe ', NULL, '8237050047', 'londhemanthan425gmail. com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'manthan_2005', '65efe294a1b2b1690604030113.jpg', 'student', NULL, NULL, 0),
(247, 'Gitanjali shivaraj Ghavate ', NULL, '8767460023', 'Sae.ghavate@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Git@123', '65efe16d4a91bSnapchat-424000465.jpg', 'student', NULL, NULL, 0),
(248, 'Rajesh dattatray mutekar ', NULL, '8799864494', 'rajeshmutekar46@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Rajesh9599', '65efe173a66e4', 'student', NULL, NULL, 0),
(249, 'Gutal Abhishek Kanifnath', '', '8149505475', 'gutalabhi13@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@bhi1324', '65efe1743a706', 'student', NULL, NULL, 0),
(250, 'Vijay Sandip Narole', 'Pirale', '9322303180', 'vijaynarole5551@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vijay@5551', '65efe1788537e', 'student', NULL, NULL, 0),
(251, 'Devyani Ambadas Sapate', 'Baramati', '9881332005', 'devyanis2205@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Devyani22', '65efe17b5e105IMG-20230728-WA0000.jpg', 'student', NULL, NULL, 0),
(252, 'Yamagar Chaitanya Hanumant', NULL, '8482988669', 'yamagarchaitanya@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'msd007', '65efe17d32132', 'student', NULL, NULL, 0),
(253, 'SARGAR KESHAV DATTATRAY ', NULL, '7517739913', 'keshavsargar1112@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'gLRHRpPAKEf@S9B', '65efe2174400c', 'student', NULL, NULL, 0),
(254, 'Prajakta Rahul Londhe ', NULL, '8459277703', 'londheprajakta3@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Meri zindagi12', '65efe227b0b53', 'student', NULL, NULL, 0),
(255, 'Kunal Rajendra Chavan ', NULL, '8421643053', 'kunalchavan3053@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Kunal8', '65efe1888b464IMG_20230705_194020.jpg', 'student', NULL, NULL, 0),
(256, 'Jadhav Abhishek Sanjay ', NULL, '7447747191', 'aj9843218@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'y@wGgDv3zCPqh5k', '65efe18a32206', 'student', NULL, NULL, 0),
(257, 'Sourabh ', NULL, '8263846301', 'Khatalsourabh98@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '1491', '65efe1debef5e', 'student', NULL, NULL, 0),
(258, 'Pavankumar Satish Shitole', 'Baramati ', '7020293064', 'pavanshitole979@gmail.com', 'B.Voc.(Foodtech)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pavan@9797', '65efe4e91fcd8IMG_2864.jpeg', 'student', NULL, NULL, 0),
(259, 'Kunal Rajendra Chavan ', NULL, '8421643053', 'kunalchavan3053@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Kunal8', '65efe1918c155IMG_20230705_194020.jpg', 'student', NULL, NULL, 0),
(260, 'Devkate Sakshi Anandrao', NULL, '8446871089', 'devkatesakshi4812@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi_4812', '65efe195d7dac', 'student', NULL, NULL, 0),
(261, 'Pratiksha Prakash Wable ', NULL, '7517956487', 'pratikshawable402@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pratiksha7517', '65efe19f2a1d9IMG_20231008_201619.jpg', 'student', NULL, NULL, 0),
(262, 'Dhumal Sahil mahesh', 'Vishwasnagar Gunawadi Baramati ', '7499889009', 'sahildhumal1893@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sahil@123', '65efe21474aca', 'student', NULL, NULL, 0),
(263, 'Kadam Yashraj Jitendra ', '', '9970365768', 'yashrajkadam1296@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Yash@1296', '65efe33a364e3DSC_9841 copy.jpg', 'student', NULL, NULL, 0),
(264, 'Anant Nitin Udavant ', NULL, '9697984536', 'anantudavant33@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '1234', '65efe1b775033', 'student', NULL, NULL, 0),
(265, 'Kale Mangesh Ashok ', NULL, '8830010731', 'kalemangesh2516@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Mangesh@2516', '65efe5ac65c2dIMG_20240307_170145_569.jpg', 'student', NULL, NULL, 0),
(266, 'Sarthak changdeo pansare', NULL, '782101282', 'sarthakpansare991@gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Yt@3PF3e8kb9ne5', '65efe1b7c8069', 'student', NULL, NULL, 0),
(267, 'Mahek Shaikh', NULL, '7038344191', 'mahekshaikh2908@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Mahek2004@', '65efe246a49a6', 'student', NULL, NULL, 0),
(268, 'Pratiksha Vijay Saste ', NULL, '8600232073', 'pratikshasaste2244@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'pratu@123', '65efe1bcdabdb', 'student', NULL, NULL, 0),
(269, 'Kale Abhijit Tatyasaheb ', NULL, '9022047056', 'abhikale13248@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '96964545', '65efe1bd626bf', 'student', NULL, NULL, 0),
(270, 'Mhetre Pravin Haridas ', 'Baramati kazad ', '9529852595', 'Pravinmhetre048@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pravin123mhetre', '65efe1c185c4cIMG_20230715_122339.jpg', 'student', NULL, NULL, 0),
(271, 'JAGTAP GAURAV BANDU', NULL, '9325056634', 'jagtapgaurav73@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'GAURAV2004', '65efe596d81b5IMG-20240312-WA0036.jpg', 'student', NULL, NULL, 0),
(272, 'Harshavardhan dattatray nale ', NULL, '9699877056', 'harshavardhannale1234@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'harsh444', '65efe1c7149c6', 'student', NULL, NULL, 0),
(273, 'Gawade Shraddha Janardan ', NULL, '8421765308', 'gshraddha350@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shraddhagawade', '65efe1c98364f', 'student', NULL, NULL, 0),
(274, 'YASH NITIN KUTE ', NULL, '9356447948', 'yashkute17072004@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Yashkute2005', '65efe2fdbc59e', 'student', NULL, NULL, 0),
(275, 'Pritam waikar', NULL, '9960738607', 'pritamwaikar2410@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'waikar 2727', '65efe1d20d8e7', 'student', NULL, NULL, 0),
(276, 'Swapnil Chandrakant satav', 'Shetpahalgadhe', '9322713686', 'Satavswapnil0@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'swapnilpass', '65efe7bfd701e', 'student', NULL, NULL, 0),
(277, 'Kedar Ashok kumbhar ', 'Baramati ', '9359124637', 'kedarkhumbhar2005@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '8888594343', '65f00bb0a8c3bIMG-20240128-WA0002.jpg', 'student', NULL, NULL, 0),
(278, 'Shweta kashinath jagtap', NULL, '8446848020', 'shwetajagtap213@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shweta@1234', '65efe1da044ba', 'student', NULL, NULL, 0),
(279, 'Shinde Ganesh Bharat', 'At post Mhaswad', '8856087603', 'ganeshbshinde1709@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'itachi@99', '65efe1da25860', 'student', NULL, NULL, 0),
(280, 'Pranav Ganesh Girme', NULL, '9766992283', 'pranavgirme8@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Pranav2', '65efe1df57a2a', 'student', NULL, NULL, 0),
(281, 'More Vinay Dharmendra ', NULL, '9325626683', 'mv1675251@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vinay1213', '65efe31893dcbIMG_20240311_212806_951.jpg', 'student', NULL, NULL, 0),
(282, 'Ghadage Dinesh Balkrushna ', NULL, '7499452987', 'dineshghadage0@gmail.com ', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'dinesh@123', '65efe23c4821f', 'student', NULL, NULL, 0),
(283, 'Yogesh Savarde', NULL, '7822813010', 'yogeshsawarde@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'yogesh@6635', '65efe52bd0c8d', 'student', NULL, NULL, 0),
(284, 'KATE ROHAN AJIT ', NULL, '9307489272', 'rohankate9272@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Kate@1234', '65efe4adf1b02', 'student', NULL, NULL, 0),
(285, 'Saurabh Nandkumar Pawar ', 'Tambewadi', '8698470266', 'saurabhpawar3532@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Saurabh3532', '65efe2c7f36a4IMG-20230426-WA0022.jpg', 'student', NULL, NULL, 0),
(286, 'Omkar santosh jadhav', NULL, '8908454242', 'Omkarjadhav4542@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Omkar4242', '65efe264c93c6', 'student', NULL, NULL, 0),
(287, 'Kartik Kumbhar ', NULL, '9890308342', 'kartikkumbhar340@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'KARTIKK07', '65efe343e5356IMG20230805120131.jpg', 'student', NULL, NULL, 0),
(288, 'Bhalerav Rohit Umesh ', NULL, '8451034141', 'rohitbhalke8989@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'rohit+3899', '65efe200f02c3', 'student', NULL, NULL, 0),
(289, 'Shekhar Sonawane ', NULL, '8767279484', 'shekharsonawane0007@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shekhar212012', '65efe31e6b7a0', 'student', NULL, NULL, 0),
(290, 'Aadesh Ravindra Bhondave ', NULL, '7559208001', 'bhondaveaadesh8001@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '8pFEV7@atA439j8', '65efe204700e9', 'student', NULL, NULL, 0),
(291, 'Raj Hodage ', NULL, '9156995153', 'rajhodage26@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Theraj@12', '65efe20826cad', 'student', NULL, NULL, 0),
(292, 'Bagwan swaleha javed', NULL, '8237652004', 'Swalehabagwan34@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '20102004', '65efe20e34e85', 'student', NULL, NULL, 0),
(293, 'Suraj Vilas Nakure', NULL, '8421184642', 'nakuresuraj9@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sura0302', '65efe21250777', 'student', NULL, NULL, 0),
(294, 'Shitole Atish Hanumant', NULL, '7248954497', 'Atishshitole7797@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ravan777', '65efe218c86b5', 'student', NULL, NULL, 0),
(295, 'Nimbhore Diksha Deepak ', 'At post Ghotawi Tal-shrigonda Dist-A.nagar', '8468854151', 'dikshanimbhore@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'diksha021', '65eff36cf40b6', 'student', NULL, NULL, 0),
(296, 'Zanje Yogesh Dattatray ', NULL, '9867261140', 'dzanjevaibhav454@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Yogesh1234', '65efe21f4785a', 'student', NULL, NULL, 0),
(297, 'Kiran Rahul Kulkarni ', 'kurkumbh ', '8149380452', 'Kulkarnikiran508@gmail.com ', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Kiran@0452', '65efe4e043a1b', 'student', NULL, NULL, 0),
(298, 'Dhavale Tanishka Rajendra ', 'Baramati ', '9527731355', 'dhavaletanishka9@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'tanuu_2526_', '65efeb21d6eba', 'student', NULL, NULL, 0),
(299, 'Shreya Shriprasad kulkarni ', NULL, '8888097625', 'shreyask2130@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shreya@2024', '65efe2882ec66', 'student', NULL, NULL, 0),
(300, 'More Vinay Dharmendra ', NULL, '9325626683', 'mv1675251@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vinay1213', '65efe31893dcbIMG_20240311_212806_951.jpg', 'student', NULL, NULL, 0),
(301, 'Dhaigude Rohan Chandrakant', NULL, '8788519534', 'Rohandhaigude05@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Rohan@8788', '65efe22c6b867', 'student', NULL, NULL, 0),
(302, 'Sumit kadam', NULL, '9075217039', 'Sumitkadam47511@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sumit123', '65efe22d99b5d', 'student', NULL, NULL, 0),
(303, 'Phadtare yash vinod', NULL, '8149224399', 'yashphadatare65@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '9511994399', '65efe84fda98f', 'student', NULL, NULL, 0),
(304, 'Gawade pranav Dilip ', NULL, '7796403714', 'gawadepranav679@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Pranav000', '65efe231c3add17102198117842407077932998255134.jpg', 'student', NULL, NULL, 0),
(305, 'Nikam Pranjali Sambhaji ', 'Abhimanyu Corner Abhimanyu Nagri M.I.D.C Baramati ', '9881484265', 'rnikam486@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'pranjali9706', '65efe4ad663cb', 'student', NULL, NULL, 0),
(306, 'Nikita Navnath More ', NULL, '9970516896', 'nikitanmore877@gimal.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikita2803', '65efe25a798ef', 'student', NULL, NULL, 0),
(307, 'Prajakta shivaji gaikwad ', NULL, '7507829990', 'gprajakta761@gmail.com ', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '12345678', '65efe237cdfa9IMG-20231211-WA0022.jpg', 'student', NULL, NULL, 0),
(308, 'Katake Mayur Santosh ', NULL, '8767238242', 'mayurkatake1212@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'M@123katake', '65efe2ca17f1665d216c847b36_download.jpg', 'student', NULL, NULL, 0),
(309, 'Om Santosh khopade ', NULL, '8208469964', 'khopadeom125@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'baramati12', '65efe38278becIMG_20240214_135822_002.jpg', 'student', NULL, NULL, 0),
(310, 'Chavan viraj ramchandra ', NULL, '7219468305', 'Virajchavan2125@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7219468305', '65efe27b80477', 'student', NULL, NULL, 0),
(311, 'Aarti Sanjay atole ', NULL, '7218924408', 'aartiatole7350@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Vp68k6uHAZCpYzh', '65efe3b5e93e6IMG_20231203_180707.jpg', 'student', NULL, NULL, 0),
(312, 'Varsha Bharat Gaikwad ', NULL, '8788320636', 'varshagaikwad944@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Varsha@123', '65efe2561133a', 'student', NULL, NULL, 0),
(313, 'Pranav Ganesh Girme', NULL, '9766992283', 'pranavgirme8@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Pranav007', '65efe256295cf', 'student', NULL, NULL, 0),
(314, 'Ajinkya Anil Doltade', NULL, '9689668049', 'ajinkyadoltade9@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Ajinkya@123', '65efe25ad5a08', 'student', NULL, NULL, 0),
(315, 'Pratiksha Dadaso Lokhande ', NULL, '9011545535', 'lokhandepratiksha928@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'KALE@123', '65efe3281dec9', 'student', NULL, NULL, 0),
(316, 'Raj Navnath Chobe', NULL, '9356902278', 'rajchobe0799@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Raj@0799', '65efe3ca9b557', 'student', NULL, NULL, 0),
(317, 'Priti Dnyanadev pawar ', NULL, '7559329426', 'pawarpriti1111@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'R@FH8f93w8mfGP5', '65efe2654d59fIMG_20240312_102828.jpg', 'student', NULL, NULL, 0),
(318, 'Lokhande Vaishnavi Somnath ', NULL, '7249562276', 'vaishnavilokhande734@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'vaishu2276', '65efe267257ec', 'student', NULL, NULL, 0),
(319, 'Utkarsh Santosh Chavan', NULL, '7058307096', 'utkarshchavan9696@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Utkarsh7096', '65efe2672583820220906_141559.jpg', 'student', NULL, NULL, 0),
(320, 'Magar Tushar Tanaji ', NULL, '8265071770', 'magartushar86@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Tushar@123', '65eff9fbb42c0IMG-20221010-WA0004-01-01.jpeg', 'student', NULL, NULL, 0),
(321, 'Krishna Waykar', NULL, '8999739771', 'krishnawaykar04@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Krishna2004', '65efe2d330762IMG-20240312-WA0002.jpg', 'student', NULL, NULL, 0),
(322, 'Tejaswini sanjay pawar', NULL, '9075901018', 'tejasvinipawar275@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'cJC8T@bC@3w7ZPR', '65efe26d692cf', 'student', NULL, NULL, 0),
(323, 'Amol Anil More', NULL, '9822815328', 'mamol8630@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Amol9011@', '65efe279bd65317102197666762176376126728972813.jpg', 'student', NULL, NULL, 0),
(324, 'Aaditya Phalke ', NULL, '9860774362', 'aadityafalake0@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'GXRL4jj@AkVuDav', '65efe53f5fe8c1706799127665.jpg', 'student', NULL, NULL, 0),
(325, 'Salunke Kuldeep Yuvraj ', NULL, '8432257766', 'kuldeepsalunke99@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'kys999', '65efe27e9a60b', 'student', NULL, NULL, 0),
(326, 'Harshada Shahaji Phadatare', NULL, '8788303904', 'harshadaphadatare44@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Harshada09', '65efe2cfaf2f9', 'student', NULL, NULL, 0),
(327, 'Gawade Shraddha Janardan ', NULL, '9145421800', 'gshraddha350@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shraddha3', '65efe28b7932d', 'student', NULL, NULL, 0),
(328, 'Pawar Shubham Anand', '', '7741042835', 'Shubhampawar2635@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shubhz^007', '65efe290bf7eaIMG_20240306_155807.jpg', 'student', NULL, NULL, 0),
(329, 'Khande Rushikesh vikas ', 'A/p Udmaiwadi Tel. Indapur Dist. Pune', '8149171696', 'khanderushi27@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'khande0000', '65efe5568b40cIMG_20240213_182929_036.jpg', 'student', NULL, NULL, 0),
(330, 'Mane gauri chhagan', 'Kurwali ', '9970315361', 'gaurimane5361@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'gaurimane13', '65efe29386321IMG-20231009-WA0003.jpg', 'student', NULL, NULL, 0),
(331, 'Ankita Ashok shete ', '', '7821839019', 'ankitashete039@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'prachi03', '65efe29405c60', 'student', NULL, NULL, 0),
(332, 'Nale Aishwarya Dattatray ', NULL, '7757825954', ' sonalinale428@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '654321', '65efe295c2293', 'student', NULL, NULL, 0),
(333, 'Lawand Niraj Satish ', 'A/P Siddheshwar Nimbodi Tal-Baramati Dist-Pune ', '8149504392', 'lawandniraj@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Niraj3912', '65efe44e182ae', 'student', NULL, NULL, 0),
(334, 'Patil Pratiksha Dattatray', NULL, '9529324343', 'pdattatray104@gemail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ECRAW9xb4KFPHz@', '65efe41d1269f', 'student', NULL, NULL, 0),
(335, 'Kakade Sakshi Hemant', NULL, '7099439012', 'Sakshikakade038@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi96', '65efe2a55e437', 'student', NULL, NULL, 0),
(336, 'Nikita Shantaram Mulay ', NULL, '9356851975', 'nikitamulay051@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Niki@123', '65efe38fb8bc9IMG-20240306-WA0016.jpg', 'student', NULL, NULL, 0),
(337, 'Kuchekar prajkta bharat', NULL, '9699423403', 'Kuchekarprajkta@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '123456', '65efe2aca8a36', 'student', NULL, NULL, 0),
(338, 'Anurag Vitthal Jagtap', NULL, '8788147684', 'anuragjagtap5079@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anurag@123', '65efe2af76542', 'student', NULL, NULL, 0),
(339, 'Tanjila Samir Tamboli ', NULL, '7822812090', 'tanjillatamboli.04@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'tanjila_73', '65efe2b511035IMG_1696773597876.jpeg', 'student', NULL, NULL, 0),
(340, 'Girigosavi Kalyan satyawan ', NULL, '8767340286', 'Kalyangosavi5469@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'kalyan@5469', '65efe2d8985b9', 'student', NULL, NULL, 0),
(341, 'Shivganga chandrakant nagmal ', NULL, '7758063168', 'shivganganagmal2004@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sjbE@9SCdbtLP79', '65efe2b5801d9Snapchat-895208116.jpg', 'student', NULL, NULL, 0),
(342, 'Shitole Atish Hanumant', NULL, '7248954497', 'Atishshitole7797@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ravan777', '65efe2b9c0976', 'student', NULL, NULL, 0),
(343, 'Rohan Balaso Zagade ', NULL, '9604876340', 'rohanzagade12345@gmail . Com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@2CkMDaYu24G2Ym', '65efe2be07f08', 'student', NULL, NULL, 0),
(344, 'Pratik mahadev awale', NULL, '7035935050', 'pratikawale1302@gamil.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '7035935050', '65efe3539c3f1IMG_20231128_234250_453.jpg', 'student', NULL, NULL, 0),
(345, 'Bhagyashri Nitin Kale', NULL, '9765799799', 'bhagyashrikale99999999@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '17681768', '65efe2c2d348f', 'student', NULL, NULL, 0),
(346, 'YASH ANIL DHAVALE', 'at.po.khanota tq.daund dist pune Maharashtra 413105', '9322824750', 'dhavaleyash8@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Y220306#', '65efe5fcd9a86', 'student', NULL, NULL, 0),
(347, 'Virkar Nikita Ashok', NULL, '8010848880', 'nikitavirkar2003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'kale@123', '65efe333843a0', 'student', NULL, NULL, 0),
(348, 'Kakade aditya satish', NULL, '9579013840', 'Kakadeaditya455@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'KK9W@sj7aNQ3DyW', '65efe2d0b1648', 'student', NULL, NULL, 0),
(349, 'Aniket Jitendra Phadtare ', NULL, '7796755269', 'aniketphadtare0007@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aniket@007', '65efe2d1e4e39', 'student', NULL, NULL, 0),
(350, 'Deokar Priyanka Rajendra', '', '9765922511', 'Priyankadeokar19@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '976592', '65efeef3055a5', 'student', NULL, NULL, 0),
(351, 'Siddhi Prabhakar Mohite ', NULL, '8459119161', 'siddhimohite1104@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Samadhan@8588', '65efe2d3b2f3dIMG-20230730-WA0008.jpg', 'student', NULL, NULL, 0),
(352, 'Bhosale Swarup Shivaji ', 'Sakharwadi', '9322975966', 'swarupbhosale2004@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Swarup#123', '65efe2d50f02bIMG_20231209_204034_947.jpg', 'student', NULL, NULL, 0),
(353, 'Sai Ganesh jagtap', NULL, '9823739696', '@ankushchavan.096@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sai jagtap', '65f00383c87ff', 'student', NULL, NULL, 0),
(354, 'Deokate Anisha  Bharat ', NULL, '8080218855', 'anishadeokate@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anu1234', '65efe3019052a', 'student', NULL, NULL, 0),
(355, 'Kumbhar pranav prakash ', NULL, '9356974507', 'Kumbharpranav374@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@pranav4545', '65efe38be48a2', 'student', NULL, NULL, 0),
(356, 'Kulkarni Manali parshuram ', 'BARAMATI MIDC ', '7822090012', 'manalikulkarni55555@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Soham#1212', '65efe6ea13e72photo pass port manna_1 (1).jpg', 'student', NULL, NULL, 0),
(357, 'Prajakta shivaji patil', '', '9422969044', 'prajupatil9699@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Praji@123', '65efe4f5c5496IMG_20240306_183645_1.jpg', 'student', NULL, NULL, 0),
(358, 'Sakshi Santosh kate ', NULL, '8788287717', 'katesakshi76@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi9696', '65efe341a52a5', 'student', NULL, NULL, 0),
(359, 'Sakshi Rajendra kumbhar', NULL, '9579923281', 'sakshikumbhar147@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi2005', '65efe2e6c5ae4', 'student', NULL, NULL, 0),
(360, 'darade shubhangi parshuram', NULL, '9422343229', 'shubhangidarade1212@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shubhangidarade1212', '65efe2e8169d8', 'student', NULL, NULL, 0),
(361, 'vikas vilas Raut', '', '8308926390', 'Rautvikas2003@Gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '8308926390', '65efe5dde4fb7', 'student', NULL, NULL, 0),
(362, 'Anisha Dadaso Pawar ', NULL, '7588946113', 'anishapawar5555@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Annu@2402', '65efe2ed74ac3IMG_20240222_100224_020.jpg', 'student', NULL, NULL, 0),
(363, 'Pornima Rahul Kulkarni', NULL, '8446380452', 'kulkarnipornima27@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Kulkarni8446', '65efe3551d981', 'student', NULL, NULL, 0),
(364, 'Samiksha Yuvraj Gaikwad ', NULL, '7741897547', 'samikshagaikwad626@gmil.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'G2KkfnpsEb@5@Lk', '65efe6eec43ed', 'student', NULL, NULL, 0),
(365, 'Akash nanaso phadtare', NULL, '9309440855', 'Akashphadtare112@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9696', '65efe569c89b8', 'student', NULL, NULL, 0),
(366, 'Aditya chavan ', NULL, '7410057978', 'adityachavan1892005@com.in', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'aditya1212', '65eff3312acde', 'student', NULL, NULL, 0),
(367, 'Anisha Hari kale', 'Khadki,contactno=contactno=contactno=contactno=contactno= pune maharashtra 413130', '8329418434', 'kaleanisha4@gmail.com', '8329418434', 'B.Com.', NULL, NULL, NULL, NULL, NULL, 'Anisha123', '65eff958e4cc517102257137212561621710145100214.jpg', 'student', NULL, NULL, 0),
(368, 'TAUR VAISHANAVI SUNILRAO', NULL, '9975856755', 'vaishutaur145@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaishutaur145', '65efe37a0efbe', 'student', NULL, NULL, 0),
(369, 'Dhanshri Malhari Waydande ', NULL, '8530549091', 'vishalbhise0807@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '90910807', '65efe3083f35f', 'student', NULL, NULL, 0),
(370, 'Vishwajeet Pandurang Mane ', 'A/P Dahigaon Tal Malshiras Dist Solapur', '9823961925', 'vishwajeetmane43@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'q78MjJtGt@wt7gT', '65efea6a01468', 'student', NULL, NULL, 0),
(371, 'Rajdeep Balaso Shinde', NULL, '9623973437', 'rajdeepshinde9740@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Rajdeep8', '65efe30b68108IMG_20240312_103643.jpg', 'student', NULL, NULL, 0),
(372, 'Atole pooja Maruti ', NULL, '8080767964', 'poojaatole8@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '8b2G29aQ4VrV@87', '65efe30dcf8b4IMG_20240205_171046.jpg', 'student', NULL, NULL, 0),
(373, 'Pratiksha pandurang londhe ', 'Baramati surynagri ', '9975503004', 'pratikshalondhe41@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pratiksha', '65efe505add91', 'student', NULL, NULL, 0),
(374, 'Rohan bhame ', NULL, '7666204088', 'rohanbhame1919@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7666204088', '65efe40ae77ecIMG_0331.heic', 'student', NULL, NULL, 0),
(375, 'Aditya Baiju Shende ', NULL, '8530524334', 'adityashende016@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Adicredit016', '65efe314680a2IMG_20240312_103335950_HDR.jpg', 'student', NULL, NULL, 0),
(376, 'Priyanka Hanumant korde', '', '7558717527', 'priyankakorde24@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'priyanka24', '65efe3ef7efef', 'student', NULL, NULL, 0),
(377, 'Vaishnavi Raju Jadhav', NULL, '7447352737', 'vaishnavijadhav313@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'xicHv7tq@Ecw3Nq', '65efe521735b5', 'student', NULL, NULL, 0),
(378, 'Tushar Suryawanshi ', NULL, '7066736798', 'tusharsuryawanshi271@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Tushar007', '65efe40627190IMG_20240312_104017.jpg', 'student', NULL, NULL, 0),
(379, 'Rishikesh Rajendra Kharade ', NULL, '9653125607', 'rishikharade55@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'rishi@55', '65efe318a330dIMG_20230823_193633 (1) (1).jpg', 'student', NULL, NULL, 0),
(380, 'Nikita kumbhar ', NULL, '7756069536', 'nikitakumbhar0081@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'nikita004', '65efe31f088be', 'student', NULL, NULL, 0),
(381, 'Kumbhar Sakshi Ishwar ', 'AP nangaon tal-daund dist-Pune ', '9766963014', 'sakshikumbhar477@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi2002', '65efe3857f46c', 'student', NULL, NULL, 0),
(382, 'Prajakta shivaji patil', '', '9422969044', 'prajupatil9699@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Praji@123', '65efe4f5c5496IMG_20240306_183645_1.jpg', 'student', NULL, NULL, 0),
(383, 'Nikita kumbhar ', NULL, '7756069536', 'nikitakumbhar0081@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'nikita004', '65efe3213bc9c', 'student', NULL, NULL, 0),
(384, 'Sapkal vaibhav tanaji ', NULL, '7249195651', 'Vaibhavsapkal411@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '80828082', '65efe4bae7e5b', 'student', NULL, NULL, 0),
(385, 'Gayatri mahadev Randive ', NULL, '8149973061', 'randivegayatri03@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '8149973061', '65efe32520064IMG_20240302_083418.jpg', 'student', NULL, NULL, 0),
(386, 'Kate apurva sambhaji ', NULL, '9890843027', 'Apurvakate01@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Apurva9890', '65efe3da42693', 'student', NULL, NULL, 0),
(387, 'Sable Reshma jaysing', NULL, '9552589802', 'reshmasable750@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'reshma12', '65efe32729c99', 'student', NULL, NULL, 0),
(388, 'Tilekar amruta Vijay ', NULL, '9834625682', 'Amrutatilekar2004@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'amruta119', '65efe35b3829e', 'student', NULL, NULL, 0),
(389, 'Diksha Ganesh Tekale ', NULL, '9172680733', 'dikshatekale23@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@KFEcintbiux7vM', '65efe32b9f35a', 'student', NULL, NULL, 0),
(390, 'Prathamesh Darade ', NULL, '9067147831', 'prathameshdarade18@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '12345', '65efe32cb4056', 'student', NULL, NULL, 0),
(391, 'Dhanashree Rajendra Taralkar', 'Phaltan', '7387752006', 'Dhanashreetaralkar7@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '12345678', '65efe4caaeffa', 'student', NULL, NULL, 0),
(392, 'Jagtap Amar Santosh ', NULL, '9422595295', 'jagtapamar721@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'amar@9422', '65efe3345a3cf', 'student', NULL, NULL, 0),
(393, 'Nimbhore Diksha Deepak ', NULL, '8468854151', 'dikshanimbhore@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'GAXDEVWdNyB49na', '65eff36cf40b6', 'student', NULL, NULL, 0),
(394, 'Sakshi Sharad shinde ', NULL, '7499255653', 'sakshishind2724@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@JZVT7rFdkyT3t8', '65efe33c68984', 'student', NULL, NULL, 0),
(395, 'Tejas Sutar ', 'A/p Malad patas Tel. Daund Dist. Pune', '7743847626', 'sutartejas654@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'SUTARtej01', '65efe3ebd6358Screenshot_2024-02-27-22-16-19-76.jpg', 'student', NULL, NULL, 0),
(396, 'Datta Waghmode ', '', '8767824926', 'dwaghmode630@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'G9vDmY2b@5AwwZh', '65efe33ef1e4b', 'student', NULL, NULL, 0),
(397, 'Nimbhore Diksha Deepak ', NULL, '8468854151', 'dikshanimbhore@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'GAXDEVWdNyB49na', '65eff36cf40b6', 'student', NULL, NULL, 0),
(398, 'SABALE SUYOG VIJAY ', NULL, '9767353705', 'sablej308@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '9767353705', '65efe345d767d1699024142113.jpg', 'student', NULL, NULL, 0),
(399, 'Sakshi Ganesh bodhe ', 'Phaltan ', '9834909287', 'sakshibodhe@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshibodhe1018', '65efe5a23ce13', 'student', NULL, NULL, 0),
(400, 'Jamdade Gayatri Dilip ', NULL, '7058757430', 'jamdadegayatri70@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7058757430', '65efe34a41643IMG20240106131228.jpg', 'student', NULL, NULL, 0),
(401, 'Nimbhore Diksha Deepak ', 'At post Ghotawi Tal- Shrigonda Dist- A.nagar', '8468854151', 'dikshanimbhore@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'GAXDEVWdNyB49na', '65eff36cf40b6', 'student', NULL, NULL, 0),
(402, 'Kakade Sakshi Hemant', NULL, '7099439012', 'Sakshikakade038@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi96', '65efe354715bc1709028613124.jpg', 'student', NULL, NULL, 0),
(403, 'Desai Sneha Ganesh ', NULL, '8605816463', 'snehadesai2310@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sneha@27', '65efe67b88f06Photo ', 'student', NULL, NULL, 0),
(404, 'Phadtare sahil santosh', NULL, '7820843094', 'sahilphadtare0203@email.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'SAHIL0023', '65efe3a81cabcScreenshot_2024-03-12-10-39-40-691_com.android.chrome.jpg', 'student', NULL, NULL, 0),
(405, 'Vrundavni Dattatray Namdas ', NULL, '8482850344', 'vrundavninamdas@gamil.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'vrundavni', '65efe35ddf616', 'student', NULL, NULL, 0),
(406, 'Nikhil Ramesh Gawade', NULL, '9322142234', 'nikhilgawade4911@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikhil22', '65efe3f3e52aa', 'student', NULL, NULL, 0),
(407, 'Abhishek Sachin Devshete', NULL, '8485083569', 'abhishekdevshete@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Abhi@5555', '65efe3649d27d', 'student', NULL, NULL, 0),
(408, 'Ankita vilas tilekar', NULL, '9022146231', 'ankitatilekar2@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '70587354283840', '65efe36de38e2', 'student', NULL, NULL, 0),
(409, 'Kumbhar Monika Dattatray', NULL, '9158746530', 'monikakumbhar979@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'M9158746530', '65f10ecf71ec3', 'student', NULL, NULL, 0),
(410, 'Varsha Bharat Gaikwad ', NULL, '7058799815', 'varshagaikwad944@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Varsha@123', '65efe371e3b63IMG20240129114925.jpg', 'student', NULL, NULL, 0),
(411, 'Gawand Mayuri Danyandev ', NULL, '9561866004', 'gavandmayuri88877@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '956186', '65f078eeb2ef5', 'student', NULL, NULL, 0),
(412, 'Malgunde Purva dadaso', NULL, '9860293951', 'Purvamalgunde948@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '41164116', '65efe377ef3b7', 'student', NULL, NULL, 0),
(413, 'SABALE SUYOG VIJAY ', NULL, '9767353705', 'sablej308@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '9767353705', '65efe378166321699024142113.jpg', 'student', NULL, NULL, 0),
(414, 'Mayuri Mahadev sonwane ', NULL, '8308424875', 'mayurisonawane200@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'mayuri', '65efe5b34ace0', 'student', NULL, NULL, 0),
(415, 'Sakshi sandipan sapkal ', NULL, '9067234354', 'sapkalsakshi2003@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi123', '65efe37ae0871IMG-20220814-WA0016.jpg', 'student', NULL, NULL, 0),
(416, 'Sangram Bharat Gadai', NULL, '9881698979', 'sangramgadai01@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Vira@0712', '65efe4034fce0', 'student', NULL, NULL, 0),
(417, 'Kumbhar pranita Ramesh ', NULL, '9960872611', 'Pranitak2003@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Pani@123', '65efe3dc4aa21', 'student', NULL, NULL, 0),
(418, 'Gaikwad Dimple Maruti ', 'Kedgaon \r\nDaund ', '7499271648', 'dimpalgaikwad214@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vrREreHHrV@QW2R', '65efe572cd494', 'student', NULL, NULL, 0),
(419, 'Kadam Vedant Mangesh ', NULL, '7448201000', 'Vedantk1000@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vedantkadam0055', '65efe488b414f', 'student', NULL, NULL, 0),
(420, 'Kulkarni Rutuja Ashok ', NULL, '7276409312', 'rutujakulkarni7278@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '7276409312', '65efe38870ecd', 'student', NULL, NULL, 0),
(421, 'Thorat Vaishnavi Dattatray ', 'A/p-Parawadi Tal-Baramati Dist-Pune', '8767440177', 'vaishnavithorat279@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'vaishu2005', '65efe4bdd2ec7', 'student', NULL, NULL, 0),
(422, 'Gawade Kajal Sanjay', NULL, '9765180610', 'keshavgawade4545@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '860095', '65f10e345cb6a', 'student', NULL, NULL, 0),
(423, 'Payal Mohan Gaikwad ', NULL, '8856941809', 'payalmgaikwad@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Payal@11', '65efe38aaa16e', 'student', NULL, NULL, 0),
(424, 'Kadam Vedant Mangesh ', NULL, '7448201000', 'Vedantk1000@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vedantkadam0055', '65efe488b414f', 'student', NULL, NULL, 0),
(425, 'Kadam Vedant Mangesh ', NULL, '7448201000', 'Vedantk1000@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vedantkadam0055', '65efe488b414f', 'student', NULL, NULL, 0),
(426, 'Sapkal neha bapu', NULL, '7507046714', 'Nehasapkal27@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '200408', '65efe3938f47c', 'student', NULL, NULL, 0),
(427, 'Yadav purva', NULL, '9623585582', 'Viju05912@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'purva1111', '65efe6df58f1b', 'student', NULL, NULL, 0),
(428, 'Pranalii Bharat dane', NULL, '9359702642', 'pranalidane9@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@YRVk@zcyHYd57y', '65efe3979ecee', 'student', NULL, NULL, 0),
(429, 'Tengale Sneha Prakash ', NULL, '7038651843', 'tengalesneha3@Gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sneha123', '65efe93c7556d', 'student', NULL, NULL, 0),
(430, 'Nigade Aarti Rajendra ', NULL, '9021335091', 'aartinigade1@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '9021335091', '65efe3a0227d2', 'student', NULL, NULL, 0),
(431, 'Pawar anisha prashant', NULL, '7745001571', 'anisha032005@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anisha03', '65efe3a22aa95', 'student', NULL, NULL, 0),
(432, 'Aishwarya idate ', NULL, '9529966864', 'aishwaryaidate@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aishu@2004', '65efe3e3df8f7', 'student', NULL, NULL, 0),
(433, 'Veer payal pandurang ', 'Kazad \r\nTal_indapur\r\nDis_pune ', '8263808196', 'veerpayal18@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '5ChSdUNk@@Me5Wp', '65efe3a5dd20e', 'student', NULL, NULL, 0),
(434, 'Vrundavni Dattatray Namdas ', NULL, '8482850344', 'vrundavninamdas@gamil.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'vrudavani', '65efe3aca8fcb', 'student', NULL, NULL, 0),
(435, 'Yele Sakshi Gangaram', NULL, '7387485991', 'gangaramyele 9@ Gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi30', '65efe3b9b347f', 'student', NULL, NULL, 0),
(436, 'Shital Dipak Padule ', NULL, '9767943033', 'shitalpadule3@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'geeta2929', '65efe3c04519a', 'student', NULL, NULL, 0),
(437, 'Thombare Rushikesh Kishore', NULL, '7071723993', 'rushikeshkthombare@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rushi1211@', '65efe3c85a9eb', 'student', NULL, NULL, 0),
(438, 'Rakesh Ravindra Bhujbal', NULL, '9158230069', 'rrb0069@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rakesh@123', '65efe3c9aabdeIMG_20220104_130921-min-compressed.jpg', 'student', NULL, NULL, 0),
(439, 'Shravan Sameer Phadke ', NULL, '8767193760', 'shravanphadke@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shravan@2108', '65efe40422ca9IMG20230227105330.jpg', 'student', NULL, NULL, 0),
(440, 'Rushant madhukar humbe', 'Medad,contactno=tal.malshiras Dist. Solapur', '8766093702', 'rushanthumbe53@gmail.com', '8766093702', 'B.Com.', NULL, NULL, NULL, NULL, NULL, 'medad@702', '65efe4ad5a01117102204676153188499494035886358.jpg', 'student', NULL, NULL, 0),
(441, 'Poorva Rajendra Dange', NULL, '9322452041', 'poorvadange22@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Poorva@22', '65efe5b9cfb3c', 'student', NULL, NULL, 0),
(442, 'Suhani somnath Kudale ', NULL, '8010777289', 'suhanikudale22@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Suhani2005', '65efe3d6236f8', 'student', NULL, NULL, 0),
(443, 'Sakshi satish Bandgar', NULL, '9022470578', 'sakshibandgar686@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@iLTRXFzs74nGBY', '65efe9517c6dd1492199_Photo_2022.jpg', 'student', NULL, NULL, 0),
(444, 'Aaditya Phalke ', NULL, '9022827515', 'aadityafalake0@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'aaditya8181', '65efe3d9dd509', 'student', NULL, NULL, 0),
(445, 'Kadam devaki vikas', NULL, '7083419066', 'devakikadam7@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Devaki55', '65efe4002ee7b', 'student', NULL, NULL, 0),
(446, 'Ganesh Appasaheb Pawar', NULL, '7499684236', 'ganeshagri2023@Gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Ganesh2005', '65efe3ed85302', 'student', NULL, NULL, 0),
(447, 'Rushikesh', NULL, '9307655643', 'rushibhong438@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'rushi9307', '65eff5ba0c51d17102247498421287482430639404746.jpg', 'student', NULL, NULL, 0),
(448, 'AVDHUT BHANDALKAR ', NULL, '9066231888', 'avdhutbhandalkar@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Avdhut123', '65efe431a409bIMG_4131.HEIC', 'student', NULL, NULL, 0),
(449, 'Kadam Diksha Vilas ', NULL, '8007901627', 'kadamdiksha146@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'tnCig9@78MDJNf6', '65efe4142407c', 'student', NULL, NULL, 0),
(450, 'Jadhav Sanika Sanjay ', NULL, '9890456834', 'sanikaj769@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sanu1222', '65efe427ed92b', 'student', NULL, NULL, 0),
(451, 'SABALE SUYOG VIJAY ', NULL, '9767353705', '9767353705', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Suyog6077', '65efe434e18d91699024142113.jpg', 'student', NULL, NULL, 0),
(452, 'Chaudhari Bhagyashri Santosh ', NULL, '9322158180', 'bhagyashrichaudhari597@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'bhagya0709', '65efe4403ecb9', 'student', NULL, NULL, 0),
(453, 'Shobha Vishnu Rupanawar', NULL, '9665397760', 'Shobharupanawar@gmail.com', 'B.Sc.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'shobha@1212', '65efe49aa8998', 'student', NULL, NULL, 0),
(454, 'Shinde Mayuri Sunil ', NULL, '9112777401', 'mayu142003@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Mayuri1412', '65efe4635cbc7', 'student', NULL, NULL, 0),
(455, 'Nilam Tulshiram Shinde ', 'A/p jiregon ,contactno=contactno= tal daund ,faculty=faculty= dist Pune ', '8767020272', 'nilamshinde732@gmail.com', 'B.Com.', '8767020272', NULL, NULL, NULL, NULL, NULL, 'r9WuqR62@LKifyf', '65f063a018bae', 'student', NULL, NULL, 0),
(456, 'Kale Abhijit Tatyasaheb ', NULL, '8180821294', 'abhikale13248@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'abhi,@123', '65efe49239dac', 'student', NULL, NULL, 0),
(457, 'Mahadik Vaishnavi Dadaso', NULL, '9172557761', 'vmahadik018@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaishnavi@18', '65efe4cdf13ac', 'student', NULL, NULL, 0),
(458, 'Nanavare Priyanka Anil', 'Shreeram nagar ', '9822933530', 'Nanavarepriyanka172@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9822933530', '65efe5901a023', 'student', NULL, NULL, 0),
(459, 'Shubhangi Sunil lokhande ', NULL, '7218716699', 'shubhangilokhande6699@gmi.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '669966', '65efe4a37b763IMG_20240227_104107.jpg', 'student', NULL, NULL, 0),
(460, 'Harshada Satish Ingale', 'At post Dharashiv', '9699065493', 'ingaleharshada325@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Harshada20', '65efe59bac82bSnapchat-1252295850.jpg', 'student', NULL, NULL, 0),
(461, 'Sonawane Vaishnavi Raghunath ', 'Kalyani nagar tandulwadi Baramati', '9370761729', 'vaishnavisonawane779@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9370761729', '65efe587108ed', 'student', NULL, NULL, 0),
(462, 'Gaurav Ramchandra Surekar', NULL, '8407926670', 'anujkumbhar101@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Gaurav@101', '65efe4d2b6077', 'student', NULL, NULL, 0),
(463, 'Sawant Sanika Nivas ', NULL, '9604647342', 'sanikasawant281@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'sanika28@', '65efec4167539', 'student', NULL, NULL, 0),
(464, 'Jamdade Gayatri Dilip ', NULL, '7058757430', 'jamdadegayatri70@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7058757430', '65efe4b7029bbIMG20240106131228.jpg', 'student', NULL, NULL, 0),
(465, 'Takawane Sakshi Vishwas ', 'A/P Pargaon Tal -Daund DIST - Pune', '9158971838', 'sakahitakawane734@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi$1838', '65efe795059e8', 'student', NULL, NULL, 0),
(466, 'Divya Dhanaji Netake ', NULL, '7558595637', 'divyanetake8@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Divya27', '65efe4b851ed1', 'student', NULL, NULL, 0),
(467, 'Gaurav rajendra khude ', 'A.P gunavadi', '8412090512', 'gkhude05@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Gaurav123', '65efe4b99cd075672061762 (1).jpg', 'student', NULL, NULL, 0),
(468, 'Kubade Kanchan Ashok', '', '8459196084', 'kanchankubade532@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Kanchan@28', '65efe4bf06595', 'student', NULL, NULL, 0),
(469, 'Aditya Bhauso sapkal ', 'At post deulgaon rasal ', '7219700389', '17adityasapkal@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'aditya17', '65efe54ec8d22', 'student', NULL, NULL, 0),
(470, 'Mane Gayatri Jyotiram', NULL, '8767525130', 'gayatreejmane@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'gayatree1307', '65efe4c2d52f5', 'student', NULL, NULL, 0),
(471, 'Aniket Dilip Khade', NULL, '7083711790', 'Aniket12@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Aniket1212', '65efe4f26e8f6', 'student', NULL, NULL, 0),
(472, 'Shamal Laxman pore', NULL, '8530890746', 'porelaxman@gamil.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '12345678', '65efe4cc212b9', 'student', NULL, NULL, 0),
(473, 'Snehal shivaji sarvade. ', 'At post parewadi tal. Karmala dist. Solapur', '9322904069', 'snehalsarvade02@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '020705', '65efe591c8b11IMG_20240207_142431.jpg', 'student', NULL, NULL, 0),
(474, 'Raksha Mahadev Sawant', NULL, '8767700895', 'raksha mahadev sawant', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'raksha2005', '65efe4d52a8b6', 'student', NULL, NULL, 0),
(475, 'Prajakta shivaji gaikwad ', NULL, '9325858825', 'gprajakta761@gmail.com ', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'P12345678', '65efe5b1ce1ab', 'student', NULL, NULL, 0),
(476, 'Varsha Bharat Gaikwad ', 'A/p Katewadi Tal-Baramati,contactno=dist Pune ', '9561203675', 'varshagaikwad944@gmail.com', '9561203675', 'B.Com.', NULL, NULL, NULL, NULL, NULL, 'Varsha@123', '65efe4e18c096IMG_20230820_203129.jpg', 'student', NULL, NULL, 0),
(477, 'Mayuree Madhukar Jadhav', NULL, '9656832309', 'mayuree464@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Meyuree2004', '65efe4e39d40c', 'student', NULL, NULL, 0),
(478, 'Sakshi umesh kedar', NULL, '7276046724', 'Sakshikedar1308@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '727604', '65efe4e41843b', 'student', NULL, NULL, 0),
(479, 'Shubhashree Arjun Hivarkar ', '', '7378875300', 'shubhashree22hivarkar@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'shree@22#', '65efe4e41c46c', 'student', NULL, NULL, 0),
(480, 'Chandgude rutuja ', NULL, '7035050707', 'navalerutuja3@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '1@Rutuja', '65efe560bef64', 'student', NULL, NULL, 0),
(481, 'Gauri Laxman Choudhar ', NULL, '8788193122', 'gaurichoudhar69@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'S6ZWP25HtmYuai@', '65efe4eb750a0', 'student', NULL, NULL, 0),
(482, 'Pratik Dhumal.', NULL, '9309031851', 'dhumalpratik963@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'p2@C4i5HYxHezB3', '65efe5277b72b', 'student', NULL, NULL, 0),
(483, 'Yele Sakshi Gangaram', 'Malegaon BK ', '9970778874', 'gangaramyele 9@ Gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi30', '65efe4f5cb61f', 'student', NULL, NULL, 0),
(484, 'Rohit Kale ', NULL, '9699422129', 'rohitkale4961@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Rohit@9921', '65efe4f813130IMG_20240312_104351.jpg', 'student', NULL, NULL, 0),
(485, 'Sakshi Darshan Sinh kashyap ', NULL, '7028695050', 'sakshi56tea@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi12', '65efe4fb74e8817102204860312770460208664641342.jpg', 'student', NULL, NULL, 0),
(486, 'Aditya kharat', NULL, '7776011534', 'adityakhkharat1234@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ADITYA21', '65efe5c1beb73IMG_20231231_134951.jpg', 'student', NULL, NULL, 0),
(487, 'Shrutika shounak kulkarni ', NULL, '7507607162', 'shrutikakulkarni935@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shrutika@19', '65efe505b2617photo1.pdf', 'student', NULL, NULL, 0),
(488, 'Diksha Balaso Kamble', 'A/p swami chincholi tal_dund dist_pune', '8788323371', 'dikshakamble0708@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Diksha@2005', '65efe750880b9', 'student', NULL, NULL, 0),
(489, 'Pooja dinkar shelake', NULL, '9545353706', 'poojashelake528@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@8GjCBiR9WmLRiB', '65efe5110b956', 'student', NULL, NULL, 0),
(490, 'Kale Abhijit Tatyasaheb ', NULL, '7888130105', 'abhikale13248@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'abhi123', '65efe5144952c', 'student', NULL, NULL, 0),
(491, 'Yashraj ransing', NULL, '8788534313', '', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Yash2424', '65efe519790d4', 'student', NULL, NULL, 0),
(492, 'Arti Dipak Gondil', NULL, '9867675457', 'aartigondil872@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Arti@5457', '65efe51aecdbe', 'student', NULL, NULL, 0),
(493, 'Suhani dipak sutar', NULL, '8010951987', 'suhanisutar12@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7suhani', '65efe51e3bca9', 'student', NULL, NULL, 0),
(494, 'Dalvi Pradip pandurang ', NULL, '8308537342', 'pradipdalvi035@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'mh422628', '65efe51f35b6aIMG_20230701_220347.jpg', 'student', NULL, NULL, 0),
(495, 'Kharade Jaydip Pramod ', NULL, '8007854679', 'jaydippkharade@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'jugadujay@1234', '65efe5accc9cf', 'student', NULL, NULL, 0);
INSERT INTO `tbl_registration` (`id`, `fname`, `address`, `contactno`, `email`, `faculty`, `year`, `gender`, `stateid`, `districtid`, `cityid`, `enquiryid`, `password`, `imagename`, `role`, `isdeleted`, `addedby`, `updatedby`) VALUES
(496, 'Zanje Yogesh Dattatray', NULL, '9867261140', 'dzanjevaibhav454@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'zVe7Y5HEkrwcD@m', '65efe529ce919', 'student', NULL, NULL, 0),
(497, 'Sakshi mohan sabale ', 'A/p Sapkalwadi tel indapur distpune ', '9172817405', 'Sakshisable448@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '2aL8MUHsdj@WHPw', '65efe5aa5b797', 'student', NULL, NULL, 0),
(498, 'Akshata Subhash Saste', NULL, '8625079059', 'akshatasaste18@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Akshatasasate9059', '65efe52dcf867', 'student', NULL, NULL, 0),
(499, 'Angarkar Shrutika Rajendra ', NULL, '8805026713', 'shrutikaangarkar629@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sigwav-nybpe5-sIvwif', '65efe6cdac46a', 'student', NULL, NULL, 0),
(500, 'Anjali Rahul shinde ', NULL, '9767386858', 'anjalishinde270@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'anjali@27', '65efe533cc85a', 'student', NULL, NULL, 0),
(501, 'Thopate Aditi Mohan', NULL, '9823987191', 'aditithopate05@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Aditi@12345', '65efe534a751cdownload.jpeg', 'student', NULL, NULL, 0),
(502, 'Kharade Jaydip Pramod ', '', '8007854679', 'jaydippkharade@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'jugadujay@1234', '65efe5accc9cf', 'student', NULL, NULL, 0),
(503, 'vikas vilas Raut', NULL, '8308926390', 'Rautvikas2003@Gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'raut777', '65efe5dde4fb7', 'student', NULL, NULL, 0),
(504, 'Kale pratiksha Ramesh ', NULL, '9579266323', 'pratikshakale1208@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9579266323', '65efe53ae4081IMG-20231222-WA0001.jpg', 'student', NULL, NULL, 0),
(505, 'Wable Vaishnavi pratap', 'Ap:- deulgon rasal T:- Baramati D:- Pune', '9172610890', 'wvaishnavi029@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'India@11', '65efe545e251bIMG_20240312_104544.jpg', 'student', NULL, NULL, 0),
(506, 'Vaishnavi  Appaso  jagdale ', '', '7276506207', 'Vaishnavijagdale200@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7276506207', '65efe63b1a001', 'student', NULL, NULL, 0),
(507, 'Katkar Rohit ', NULL, '7767961421', 'rohitkatkar9085@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'katkar8770', '65efe6e483f34IMG20240310202002_1.jpg', 'student', NULL, NULL, 0),
(508, 'Katake Madhura Santosh ', NULL, '9209147160', 'madhurakatake73@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Message +91 93703 71136', '65efe54f1678a', 'student', NULL, NULL, 0),
(509, 'Taware Siya Santosh ', NULL, '8767677121', 'siyataware001@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'baramati', '65efe55c1352cIMG_20230913_185211.jpg', 'student', NULL, NULL, 0),
(510, 'Anvesha sawant ', NULL, '8080629565', 'anvishasawant14@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sawant@30', '65efe5f2e7966', 'student', NULL, NULL, 0),
(511, 'Deokar Diksha Bhaurao ', NULL, '8975298949', 'deokardiksha2@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'diksha@09', '65efe93f30f3aIMG-20231019-WA0002.jpg', 'student', NULL, NULL, 0),
(512, 'Shrutika Chandrakant Kakade ', NULL, '7517232721', 'shrutikack25@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shruti25', '65efe7bd33d8fShruti Id photo_1.jpg', 'student', NULL, NULL, 0),
(513, 'Deokar Priyanka Rajendra', '', '9765922511', 'Priyankadeokar19@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'priya1919', '65efeef3055a5', 'student', NULL, NULL, 0),
(514, 'Bhopate payal sambhaji', NULL, '9518703236', 'payalbhopate2005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '123456', '65efe567a6e981707985191567.jpg', 'student', NULL, NULL, 0),
(515, 'Yadav purva', NULL, '9623585582', 'Viju05912@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Purva1111', '65efe6df58f1b', 'student', NULL, NULL, 0),
(516, 'Shital Shantilal Bagwale', NULL, '9604119595', 'sb044767@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Asdfghjkl@95', '65efe58f30eba', 'student', NULL, NULL, 0),
(517, 'Shinde Tara tanaji', NULL, '8856890727', 'tarashinde2003@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'shindetara', '65efe571236cf', 'student', NULL, NULL, 0),
(518, 'Raskar Pranita Prakash ', NULL, '9309361152', 'pranitaraskar289@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pranita2005', '65efe571946a7IMG_20240228_202525.jpg', 'student', NULL, NULL, 0),
(519, 'Pritam Ramesh bhandwalkar', NULL, '9970960246', 'Bhandawalkarpritam@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '432006pritam', '65efe63c7110717102208095746149903331252173285.jpg', 'student', NULL, NULL, 0),
(520, 'Kakade Sakshi Hemant', NULL, '7499349012', 'Sakshikakade038@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi96', '65efe57916a06', 'student', NULL, NULL, 0),
(521, 'Anisha Jagannath Lembhe ', NULL, '9699754291', 'anishalembhe18@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anisha@9640', '65efe57d09e9b', 'student', NULL, NULL, 0),
(522, 'Dhende Aishwarya vilad', NULL, '7385637485', 'dhendeaishwarya0@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aishwarya11', '65efe5886c60b', 'student', NULL, NULL, 0),
(523, 'Sameer khan', 'At post rawangaon', '7249839827', 'Sameermkhan76@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'SYCO1230', '65efe5d9c65c3e7b02a83-fc71-4b5d-b103-2ac8549eee17.jpeg', 'student', NULL, NULL, 0),
(524, 'Netake Aarti Babasaheb ', 'Karjat ', '7058310644', 'aartinetke143@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Aaru7058', '65efe698b1785', 'student', NULL, NULL, 0),
(525, 'Gaikwad Gauri lalaso', 'Morgaon\r\nAmbi pati,contactno= tal-baramati,faculty= dist-pune', '7887737396', 'gaikwadgauri681@gmail.com', 'B.Voc.(Foodtech)', '7887737396', NULL, NULL, NULL, NULL, NULL, 'Gauri12', '65efe6232dfbb', 'student', NULL, NULL, 0),
(526, 'Sahil pawar', NULL, '8010480019', 'Pawars6332@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sahil2004', '65efe5bc5cd26IMG-20240312-WA0003.jpg', 'student', NULL, NULL, 0),
(527, 'Saniya Ramchandra Kharat ', NULL, '8180046484', 'saniyakharat1111@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Saniya12', '65efea24af222', 'student', NULL, NULL, 0),
(528, 'Anjali Rahul shinde ', NULL, '9420858114', 'anjalishinde270@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'anjali@27', '65efe5a76d6e3', 'student', NULL, NULL, 0),
(529, 'Shubhangi Santosh Giranje', 'bhagatwadi,contactno=tal-karmala,faculty=Dist-Solapur', '8999125683', 'shubhangigiranje@gmail.com', 'B.Com.', '8999125683', NULL, NULL, NULL, NULL, NULL, 'tanu119', '65efe8290c572', 'student', NULL, NULL, 0),
(530, 'Sakshi pramod hole', NULL, '7498959918', 'sakshihole2724@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi@123', '65efe6056f286', 'student', NULL, NULL, 0),
(531, 'Ghadage Vijay Vishnu ', NULL, '9579401529', 'ghadagevijay736@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'vijay@123', '65efe5d8f15e2', 'student', NULL, NULL, 0),
(532, 'phalke kartiki prashant ', 'suryanagari baramati', '7888229712', 'kartikiphalke5@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'kartiki2005', '65efe6bd328c0', 'student', NULL, NULL, 0),
(533, 'Yash Lalaso Danane', NULL, '9307008188', 'yashdanane2481@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Jay@007', '65efe5e6b21d1', 'student', NULL, NULL, 0),
(534, 'Sakshi hemant kakade ', NULL, '7499439012', 'Sakshikakade038@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi96', '65efe7736650c1709028613124.jpg', 'student', NULL, NULL, 0),
(535, 'Switi popat Bagal ', NULL, '9764800372', 'Switi Bagal@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '19082004', '65efe5fef055417102207645113807066009769666179.jpg', 'student', NULL, NULL, 0),
(536, 'Mayuree Madhukar Jadhav', NULL, '9665832309', 'jadhavmayuree464@gmial.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'mayuree28', '65efe61386399', 'student', NULL, NULL, 0),
(537, 'Poonam vasant ghode', NULL, '9325278696', 'ghodepoonam984@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '61\"poonam', '65efe622e664eIMG_20210116_100729_1.jpg', 'student', NULL, NULL, 0),
(538, 'Vishal gadekar', NULL, '9322708749', 'vishalgadekar7209@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Vishal2424', '65efe6252f96b', 'student', NULL, NULL, 0),
(539, 'Suraj Ranaware ', NULL, '8329597636', 'ranawaresuraj97@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ix@uDbDvkp@d2LY', '65efe6fb7c08a', 'student', NULL, NULL, 0),
(540, 'Katke Yogita Gopal', '', '7020589223', 'katkeyogita6@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'snSfMrA@gkvAsr4', '65efe62eb83cd', 'student', NULL, NULL, 0),
(541, 'Zanje Yogesh Dattatray', NULL, '8308976125', 'dzanjevaibhav454@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'MSD007', '65efe632a79a8', 'student', NULL, NULL, 0),
(542, 'Pawar Sandhya bharat ', NULL, '9168884040', 'sandhyapawar6284@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sandhya12', '65efe951c6ef5', 'student', NULL, NULL, 0),
(543, 'Katake Madhura Santosh ', NULL, '9209147160', 'madhurakatake73@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Message +91 93703 71136', '65efe64187058', 'student', NULL, NULL, 0),
(544, 'Mane Apurva Rajendra ', NULL, '7378951010', 'apurvamane2005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'apuu1010', '65efe64246204IMG-20240209-WA0005.jpg', 'student', NULL, NULL, 0),
(545, 'Priyanka sudhir homkar', NULL, '9699294553', 'priyankahomkar4@gmail.com@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'priyanka2006', '65efe6b873ca2', 'student', NULL, NULL, 0),
(546, 'Kshitija narayan mote', NULL, '9960968753', 'kshitijamote6@gmail.coms', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9@@mS7KmPCcT79z', '65efe6499e943', 'student', NULL, NULL, 0),
(547, 'Lawand Akanksha Sharad ', NULL, '8862037767', 'akankshalavand2005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'QCwW5XUhr4B4NiB', '65efe64d5f342', 'student', NULL, NULL, 0),
(548, 'Prachi mallikarjuna kalapnur', NULL, '8983953371', 'prachimk2006@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'prachi28', '65efe65435767', 'student', NULL, NULL, 0),
(549, 'Bade Trupti kiran', NULL, '9021625411', 'badetrupti373@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'A@tru57', '65efe684cd652', 'student', NULL, NULL, 0),
(550, 'Shitole Atish Hanumant', NULL, '9921524497', 'Atishshitole7797@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ravan777', '65efe66596f63', 'student', NULL, NULL, 0),
(551, 'Honmane Pratiksha Arjun ', NULL, '7058026603', 'pratikshahonmane8@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pratu@2005', '65efe6673d1bd', 'student', NULL, NULL, 0),
(552, 'Pranjali shivaji bandgar', NULL, '8669093254', 'bandgarpranoti35@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'UrB5LEbTM4u5Xs@', '65efe6f5931aeIMG-20240312-WA0001.jpg', 'student', NULL, NULL, 0),
(553, 'Manasi Santosh Dhumal ', NULL, '7248933285', '@manasidhumal811@gmail.com ', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '9MaNxAs@guwbqrx', '65efe67c9b170', 'student', NULL, NULL, 0),
(554, 'Nikita kumbhar ', NULL, '7219285869', 'nikitakumbhar0081@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'kumbhar@0081', '65efe684486a7', 'student', NULL, NULL, 0),
(555, 'Sanika Balaso Darekar ', 'Khadki,contactno= pune maharashtra 413130', '8459594543', 'Sanikadarekar2@gmail.com', '8459594543', 'B.Com.', NULL, NULL, NULL, NULL, NULL, '123456', '65effa01aec02', 'student', NULL, NULL, 0),
(556, 'Jagruti Chetan Kharat ', NULL, '8799836753', 'jagrutikharat393@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'BSkYi7q8@Jp@8xj', '65efe689a128d', 'student', NULL, NULL, 0),
(557, 'Anjali Rahul shinde ', NULL, '8308124595', 'anjalishinde270@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'anjali123@', '65efe712286ac', 'student', NULL, NULL, 0),
(558, 'Ashwini sandip Shahane', NULL, '8999245006', 'shahaneashwini233@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Ak@123', '65efe69aaa2f1IMG_20240312_104923.jpg', 'student', NULL, NULL, 0),
(559, 'Gayatri mahadev Randive ', NULL, '9860112924', 'randivegayatri03@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Gayatri@12345', '65efe69e762c1IMG_20240302_083418.jpg', 'student', NULL, NULL, 0),
(560, 'Ghogare Shraddha Siddheshwar ', '', '9325070116', 'shraddhaghogare2006@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shraddha2106', '65efe6a51c840IMG_20240309_142952.jpg', 'student', NULL, NULL, 0),
(561, 'Sakshi Dhananjay Kirve ', NULL, '8668632866', 'sakshikirve9@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi@22', '65efe6aa192ed', 'student', NULL, NULL, 0),
(562, 'Honmane Pratiksha Arjun ', NULL, '7058026603', 'pratikshahonmane8@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pratu@2005', '65efe6acdf759', 'student', NULL, NULL, 0),
(563, 'Michale Kalyani Ashok', 'Shetphalgadhe tal -indapur Dist -pune', '7719812183', 'Kalyanimachale803@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'kalyani0009', '65efe78078c19', 'student', NULL, NULL, 0),
(564, 'Nikhil wargad', NULL, '8799950943', '@nikhilwarged8886', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'nikhil1234', '65efe6afa7ee9', 'student', NULL, NULL, 0),
(565, 'Pawar Rupali bhimdev', NULL, '9604008018', 'Rupalipawar843@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '960400', '65efe6dbdc0a7IMG-20240312-WA0003.jpg', 'student', NULL, NULL, 0),
(566, 'Dalvi Shubhangi Dashrath ', NULL, '8793591516', 'shubhangidalvi336@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shubhangi123', '65efe6de08d58', 'student', NULL, NULL, 0),
(567, 'Mane Gayatri Jyotiram', NULL, '8767525130', 'gayatreejmane@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'gayatri1313', '65efe6e0790beSnapchat-2119122970.jpg', 'student', NULL, NULL, 0),
(568, 'Jagtap Tanvi Rajesh', NULL, '9405725822', 'jagtaptanvi40@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '8MaNxAs@guwbqrx', '65efe6e27b049', 'student', NULL, NULL, 0),
(569, 'Sakshi Dhananjay Kirve ', NULL, '8668632866', 'sakshikirve9@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi@22', '65efe6e3d3ac6', 'student', NULL, NULL, 0),
(570, 'AKSHAY PRAVIN KSHIRSAGAR ', 'MIDC BARAMATI', '8468848599', 'akshaykshirsagar2005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'akshay84', '65efe756a216f', 'student', NULL, NULL, 0),
(571, 'Pratiksha Eknath Kale', '', '9356124554', 'Pratikshakale9860@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Pratiksha@4554', '65efe6ef096f8', 'student', NULL, NULL, 0),
(572, 'Takawane Sakshi Vishwas ', NULL, '8208288586', '9158971838', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi$1838', '65efe7230cdf1IMG_20240224_130547.jpg', 'student', NULL, NULL, 0),
(573, 'Divya Dhanaji Netake ', NULL, '7558595647', 'divyanetake8@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Divya27', '65efe72cb3c2c', 'student', NULL, NULL, 0),
(574, 'DARADE  RUPALI HANUMANT', NULL, '7219257027', 'rupalidarade555@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rupali@31', '65efe73e4e7b5IMG_20231208_132450.jpg', 'student', NULL, NULL, 0),
(575, 'Priyanka Dnyaneshwar Bodare ', NULL, '7498749909', 'priyankabodare666@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Bably0717', '65efe74eeeed7', 'student', NULL, NULL, 0),
(576, 'Barge Aakanksha Rajendra ', NULL, '8600658310', 'bargeaakanksha1515@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Akku#1212', '65efe75a76815IMG_20230815_143659.jpg', 'student', NULL, NULL, 0),
(577, 'Shrutika shounak kulkarni ', NULL, '9922619520', 'shrutikakulkarni935@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shruti@123', '65efe7901c7fc', 'student', NULL, NULL, 0),
(578, 'Chavan Siddhi Nandkumar ', 'Ghadagewadi\r\nTal_Baramati\r\nDis_Pune', '7709601270', 'Sidhhichavan3101@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '4ALvCpH@yV44Dzu', '65efe75d78d2d', 'student', NULL, NULL, 0),
(579, 'Barge Aakanksha Rajendra ', NULL, '8600658310', 'bargeaakanksha1515@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Akku#1212', '65efe7623bbadIMG_20230815_143659.jpg', 'student', NULL, NULL, 0),
(580, 'Sakshi Darshan Sinh kashyap ', NULL, '7028695050', 'sakshi56tea@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi12', '65efe7677773517102211368066119106990244764924.jpg', 'student', NULL, NULL, 0),
(581, 'Nagmal Pragati Kalyan ', 'At post Rajegaon Tal-Daund Dist-Pune', '8208472447', 'pragatinagmal@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '3WpYu9dQ@PLFqmK', '65eff4f73dedc', 'student', NULL, NULL, 0),
(582, 'Anisha Jagannath Lembhe ', '', '9767928847', 'anishalembhe18@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anisha@123', '65efe773d9a83', 'student', NULL, NULL, 0),
(583, 'Pooja Shivaji vasekar ', NULL, '9022921600', 'vasekarpojaa314@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'V12345678', '65efe7752237a17102210499164085423986157535968.jpg', 'student', NULL, NULL, 0),
(584, 'Anisha Jagannath Lembhe ', NULL, '9767928847', 'anishalembhe18@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anisha@123', '65efe778b7609', 'student', NULL, NULL, 0),
(585, 'Payal shamrav babar ', NULL, '9834147774', 'payalbabar575@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '1P@#$%^&', '65efe9a7a7ac5', 'student', NULL, NULL, 0),
(586, 'Switi popat Bagal ', NULL, '9764800362', 'Switi Bagal@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '19082004', '65efe78ecfbcd17102211730282564399028684915464.jpg', 'student', NULL, NULL, 0),
(587, 'Kajal Subhash deokate', NULL, '9561336552', 'kajaldeokate12@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'kajal2004', '65efe7f67c1de', 'student', NULL, NULL, 0),
(588, 'Jagtap minakshi revnnath', NULL, '8468964505', 'minakshijagtap906@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'jagtap123', '65efea8206cdd', 'student', NULL, NULL, 0),
(589, 'Priti ramdas lokhande', NULL, '8010826159', 'lokhandepriti17@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'mWf3bhw@v3jhMHs', '65efe7d613595IMG_20230914_101243.jpg', 'student', NULL, NULL, 0),
(590, 'Sakshi suni atole ', NULL, '9923209799', 'Sakshiatole98@ gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '123456789', '65efe7f068931', 'student', NULL, NULL, 0),
(591, 'Ganesh Appasaheb Pawar ', NULL, '7507612040', 'pawshubham09@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Ganesh123', '65efe7fde3a20', 'student', NULL, NULL, 0),
(592, 'Shravani Dattatray Bhoite ', NULL, '9307212388', 'bhoiteshravani4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'shravani7307', '65efe80a7bfa9', 'student', NULL, NULL, 0),
(593, 'Patil shrawani shrikant', NULL, '9130236442', 'shrawanip8@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'F9E@mFMD9rzEBp8', '65efebbe6a1d1IMG_20230715_164746.jpg', 'student', NULL, NULL, 0),
(594, 'Phadtare yash vinod', NULL, '8149224399', 'yashphadatare65@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'yash2004', '65efe84fda98f', 'student', NULL, NULL, 0),
(595, 'Tukaram gangadhar mane', 'Chondi mukhed', '7972057865', 'tukarammane4567@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Tukaram1234', '65efe8bbb7dbaIMG20221017141024.jpg', 'student', NULL, NULL, 0),
(596, 'Kumbhar Nikita Gurudatta ', NULL, '9970106529', 'nikitakumbhar0081@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikita@0081', '65efe8275747c17102213081836374612657748459217.jpg', 'student', NULL, NULL, 0),
(597, 'Bhoite vaishnavi Dattatray ', NULL, '9322311875', 'bhoitevaishnvai123@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vbhoite999', '65efe82c38f73', 'student', NULL, NULL, 0),
(598, 'Anant Nitin Udavant', NULL, '9697984536', 'anantudavant33@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '9697984536', '65efe83396a06', 'student', NULL, NULL, 0),
(599, 'Patil Samruddhi Vasant ', NULL, '9309039405', 'samruddhipatil2906@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'a12345', '65efe860e16d3', 'student', NULL, NULL, 0),
(600, 'Randive Gayatri Mahadev', NULL, '8149973061', 'randivegayatri03@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '8149973061', '65efe83d42804IMG-20240312-WA0001.jpg', 'student', NULL, NULL, 0),
(601, 'Gardi Vaishnavi Deepak ', NULL, '8483809849', 'vaishnavigardi0@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Gardi123', '65efe8b9a5019', 'student', NULL, NULL, 0),
(602, 'Radhika Rajendra punekar', NULL, '9325130553', 'radhikapunekar77@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Radhika15', '65efe85e670e9', 'student', NULL, NULL, 0),
(603, 'Surle Aparna Mahendra', NULL, '8600359612', 'aparnasurle113@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '860035', '65efe85eaeecdSnapchat-1947944315.jpg', 'student', NULL, NULL, 0),
(604, 'Pratiksha Rajendra khaire', NULL, '9960242756', 'pratikshakhaire 18@Gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '1872004', '65efe86168db4', 'student', NULL, NULL, 0),
(605, 'Pawar Sai Subhash', NULL, '7498023756', 'saipawar9037@Gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Saipawar', '65efe89cca361', 'student', NULL, NULL, 0),
(606, 'Vidya rajendra gaikwad ', NULL, '9403782916', 'gaikwadvidya0000@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@P4tGNQwmZD2YRJ', '65efe88e2b511IMG20240229145449.jpg', 'student', NULL, NULL, 0),
(607, 'Pranoti aanad nanaware', NULL, '7620514050', 'nanawarepranoti11@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Qwertyuiop01', '65efe86db0a1c', 'student', NULL, NULL, 0),
(608, 'Suraj jarad ', NULL, '9921560368', 'surajjarad1508@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'surajsai00009', '65efe88e8e480Screenshot_2024-02-02-19-15-26-65_d8f4549cd726e412200633ae6c5633df.jpg', 'student', NULL, NULL, 0),
(609, 'Suraj jarad ', NULL, '9921560368', 'surajjarad1508@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'surajsai00009', '65efe8906a578Screenshot_2024-02-02-19-15-26-65_d8f4549cd726e412200633ae6c5633df.jpg', 'student', NULL, NULL, 0),
(610, 'Neha Namdeo jadhav', NULL, '7841809296', 'nehaj562003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'neha@9296', '65efe8cc3a161', 'student', NULL, NULL, 0),
(611, 'Akash Subhash Khule ', NULL, '8261098193', 'akashkhule3105@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'ABC@123', '65efe8e0c0b43DSC_0201~2-removebg-preview.jpg', 'student', NULL, NULL, 0),
(612, 'Nigade Aarti Rajendra ', NULL, '7218841901', 'aartinigade1@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'arti2003', '65efe8f228712IMG-20240312-WA0013.jpg', 'student', NULL, NULL, 0),
(613, 'DARSHAN AMOL SURLE ', 'Baramati ', '9767190960', 'darshansurle@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'D17072006#', '65efe93d68ae7', 'student', NULL, NULL, 0),
(614, 'Jadhav Vaishnavi Dattatray ', NULL, '8012205454', 'vaishjadhav04@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'swamisamarth', '65eff473acb58', 'student', NULL, NULL, 0),
(615, 'Sakshi Sharad dere', NULL, '9370371136', 'Sakshi dere@16.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshu123', '65efe9060876a', 'student', NULL, NULL, 0),
(616, 'Jadhav Vaishnavi Dattatray ', NULL, '8012205454', 'vaishjadhav04@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'swamisamarth', '65eff473acb58', 'student', NULL, NULL, 0),
(617, 'Tukaram Sonavane ', 'Loni Deokar Tal Indapur Dist Pune Maharashtra ', '8010135456', 'tukaram20sonavane@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'hsU@hKqKryqfC2i', '66176b9fbf881', 'student', NULL, NULL, 0),
(618, 'Khatal Vibhavari Vijay', '', '9067212140', 'rupalipjadhav16@gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Rupali@123', '65efe916b0dbf', 'student', NULL, NULL, 0),
(619, 'Neha Namdeo jadhav', NULL, '9850415331', 'nehaj562003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'neha@985041', '65efe920cb68c', 'student', NULL, NULL, 0),
(620, 'Shelar Pratiksha Gajanan', 'Nirawagaj ', '8975142850', 'shelarpratiksha4@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'radha88', '65efe9367d2e3', 'student', NULL, NULL, 0),
(621, 'Vikas ramchandra lonkar ', NULL, '7710973109', 'Lonkarvr0@gmail. com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vikas#5757', '65efe94827429', 'student', NULL, NULL, 0),
(622, 'Shrushti amol waikar ', NULL, '9545363999', 'Shrushtiwaikar17@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shrushti@12345', '65efe9526486820240312_110305.jpg', 'student', NULL, NULL, 0),
(623, 'Payal badam nangare', NULL, '8080796443', 'ranjitnangare7@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '223344', '65efe95b1eb45', 'student', NULL, NULL, 0),
(624, 'Vrushali kishor londhe ', NULL, '7028718659', 'rushalilondhe4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'T3bj67@qG3e83mF', '65efe9e3c87fb17102217214755764609277548990297.jpg', 'student', NULL, NULL, 0),
(625, 'Nature sonal mohan', 'Kazad\r\nTal_indapur\r\nDis_pune', '7620101616', 'narutesonal187@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'kpt9@iPZc8i2h@i', '65efe961db892', 'student', NULL, NULL, 0),
(626, 'Nikita pandurang khatmode ', '', '9604731136', 'nikitakhatmode@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikita2005', '65eff0e8ef6cc', 'student', NULL, NULL, 0),
(627, 'Salunkhe Shraddha Vikas ', NULL, '9730512026', 'shraddhasalunkhe681@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'xK392v@3y6wUpZb', '65efe9a796180', 'student', NULL, NULL, 0),
(628, 'Rupali Nitin Thaware ', NULL, '9226826982', 'rupali.dhale7777@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Rupali', '65efe9b697677IMG_20240312_110433.jpg', 'student', NULL, NULL, 0),
(629, 'Kulkarni sayali Sachin ', NULL, '9359181863', 'sachinkulkarni3650@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '2163', '65efe9e766dacScreenshot_20240312_110503.jpg', 'student', NULL, NULL, 0),
(630, 'Vaishnavi  Appaso  jagdale ', NULL, '7276506207', '7276506207', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7276506207', '65efe9e7c1f28', 'student', NULL, NULL, 0),
(631, 'Surle Aparna Mahendra', NULL, '8600359612', 'aparnasurle113@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '860035', '65efe9ecb797fSnapchat-1947944315.jpg', 'student', NULL, NULL, 0),
(632, 'Sakshi Somnath Bhise ', NULL, '9370166155', 'sakshibhise123456@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'ABC@123', '65efe9ef3848c', 'student', NULL, NULL, 0),
(633, 'Lawand Akanksha Sharad ', NULL, '8862037767', 'akankshalavand2005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '8gDa2epMD69hM7d', '65efe9f3a40f7', 'student', NULL, NULL, 0),
(634, 'Neha namdeo jadhav', NULL, '9850145331', 'nehaj562003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@2003', '65efea3c05f90', 'student', NULL, NULL, 0),
(635, 'Omkar santosh shinde', 'Baramati', '9960391250', 'omkarshinde5631@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Omkar@123', '65efeae6dca52IMG_20240101_231937.jpg', 'student', NULL, NULL, 0),
(636, 'Sawant Priyanka dattatray ', '', '9552954595', 'P494219@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'R@7AqV5nvzb8eej', '65efea7cbce1c', 'student', NULL, NULL, 0),
(637, 'Katake Madhura santosh ', 'Akole\r\nTal_indapur\r\nDis_pune', '9579708993', 'madhurakatake73@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'TVN68JSP6kvkwD@', '65efea8672a5f', 'student', NULL, NULL, 0),
(638, 'ankita vikas telkar', NULL, '7058735428', 'ankitatilekar2@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'EePiP@aQNwXV3cV', '65efea8b178ae', 'student', NULL, NULL, 0),
(639, 'Vishwajit Ranaware ', NULL, '9075647662', 'vishwajitranaware76@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vishwajitr767@', '65efea948df93', 'student', NULL, NULL, 0),
(640, 'Keshav Jalindar Shelar ', NULL, '9322791903', 'keshavshelar182@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@18201820As?', '65efeb2df0a85', 'student', NULL, NULL, 0),
(641, 'Sawant Sanika  Nivas', NULL, '9604647342', 'sawantshriniwas019@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'sanika28@', '65efec4167539', 'student', NULL, NULL, 0),
(642, 'Pritam waikar', NULL, '9657422129', 'pritamwaikar2410@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pritam@1234', '65efeaa87d814', 'student', NULL, NULL, 0),
(643, 'Manasi Santosh Dhumal ', NULL, '9763733285', '@manasidhumal811@gmail.com ', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Mn@XfVe@z2', '65efeaceb7cb6', 'student', NULL, NULL, 0),
(644, 'TANISHKA RAJENDRA DHAVALE', 'Baramati ', '9527731355', 'dhavaletanishka9@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Tanuu_2526_', '65efeb21d6eba', 'student', NULL, NULL, 0),
(645, 'Harshawardhan Aajinath Mindhe ', NULL, '9322719798', 'Harshawardhanmindhe@gmail.com ', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pass@123', '65efeb2001614', 'student', NULL, NULL, 0),
(646, 'Akshata Subhash Saste', NULL, '9850910639', 'akshatasaste18@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'saste1', '65efeb0ca174f', 'student', NULL, NULL, 0),
(647, 'Gayatri Dashrath Jamdade ', NULL, '9922278413', 'gayatrijamdade840@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '6RurmaKC3YP3cQ@', '65efeb102629c', 'student', NULL, NULL, 0),
(648, 'Aditya salunke', NULL, '9637796080', 'adityasalunke6080@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Aditya123', '65efeb246bdd017102220905674987513231631908363.jpg', 'student', NULL, NULL, 0),
(649, 'Prachi ramdas chavan ', NULL, '9373265355', 'Prachirchavan04@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'prachi07', '65efeb2e46c7c', 'student', NULL, NULL, 0),
(650, 'Ohol Tejas Amol ', NULL, '9028515632', 'Ohaltejas3@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'esD@2LLgYWxNXJU', '65efeb877abea', 'student', NULL, NULL, 0),
(651, 'Khatal Vibhavari Vijay', NULL, '7038514432', 'vibhavarikhatal25@gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'vibhakhatal1103', '65efeb98ee2bf', 'student', NULL, NULL, 0),
(652, 'Sakshi Kadam ', 'Junction Tal Indapur Dist Pune Maharashtra ', '7887839044', 'sakshikadam0709@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi07@S', '65efebf2d73cd', 'student', NULL, NULL, 0),
(653, 'Suraj dipak jarad', NULL, '9673542152', 'Surajjarad1508@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'BU5hum@2tKJLpdZ', '65efebddaff62', 'student', NULL, NULL, 0),
(654, 'Nikita pandurang khatmode ', '', '7028206981', 'nikitakhatmode@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikita2005', '65efebe736b00', 'student', NULL, NULL, 0),
(655, 'Wable purva santosh ', NULL, '8208481233', 'purvawable33@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'U@V8TCit27haDPf', '65efebef4838b', 'student', NULL, NULL, 0),
(656, 'Neha Namdeo jadhav', NULL, '9860094046', 'nehaj562003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@2003', '65efec6480cd2', 'student', NULL, NULL, 0),
(657, 'Neha Namdeo jadhav', NULL, '9860094046', 'nehaj562003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@2003', '65efec67466e7', 'student', NULL, NULL, 0),
(658, 'Prajkta Bharat kuchekar ', NULL, '7559323062', 'Kuchekarprajkta@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '7559323062', '65efec9642075', 'student', NULL, NULL, 0),
(659, 'Suraj shivaji shinde ', NULL, '9699749495', 'shindesurajshivaji64@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Suraj1234', '65efed2e58f87', 'student', NULL, NULL, 0),
(660, 'Neha kishor Wayase', NULL, '9309583297', 'nehawayase20@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'nehu2025', '65efecc8975c0', 'student', NULL, NULL, 0),
(661, 'Deokar Priyanka Rajendra', NULL, '9960616443', 'Priyankadeokar19@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'priya12', '65efecf52862f', 'student', NULL, NULL, 0),
(662, 'Shinde Rohini Balanath', NULL, '7720881621', 'rohinishinde24102005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'rohan', '65efecf7e0a31IMG-20240312-WA0003.jpg', 'student', NULL, NULL, 0),
(663, 'Mane vaishnavi Shank ', NULL, '9021682950', 'Vaishhhmane@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'hZNYj3NG@@VjR7R', '65efed4293630', 'student', NULL, NULL, 0),
(664, 'Aarti Rajendra Nigade', 'A/p Lamjewadi Tal- Indapur Dist- Pune', '9371861463', 'aartinigade1@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Aarti#9112', '65efefd9b35b2', 'student', NULL, NULL, 0),
(665, 'Pratiksha Bhagwan kale', NULL, '9529315483', 'pratikshakale96889@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'pratiksha@1104', '65efed4576b9eIMG-20240312-WA0009.jpg', 'student', NULL, NULL, 0),
(666, 'SURAJ SATYAVAN SHIRKE', 'Baramati ', '8149602296', 'surajshirke1712@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'akdds123', '65efed8da7551', 'student', NULL, NULL, 0),
(667, 'Himanshu Satish Gaikwad ', NULL, '9021789893', 'himanshugaikwad9430@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '12345', '65efed6197bf7', 'student', NULL, NULL, 0),
(668, 'Khatal Vibhavari Vijay ', NULL, '7038514432', 'vibhavarikhatal25@gmail.com ', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Vibha@456', '65efed6c8f263', 'student', NULL, NULL, 0),
(669, 'More priya Anil ', 'Baramati ', '9699323324', 'morepriya126@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'morepriya2212', '65efefc9d9f78IMG_20240210_173348.jpg', 'student', NULL, NULL, 0),
(670, 'Savvase Vaishnavi Shankar', 'A.P.Kondhej Tal.Karmala.Dist.Solapur', '9322226247', 'vaishnavisavvase@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '12345678', '65eff5a8e852e', 'student', NULL, NULL, 0),
(671, 'Madane Payal satish ', NULL, '7499189272', 'payalmadane1@gmal.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pm1075', '65efeda155efd', 'student', NULL, NULL, 0),
(672, 'Tejas Dilip rasal ', NULL, '9850012960', 'Tejasrasal003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'qtc@R84VbKsyr9a', '65efedcdd5177', 'student', NULL, NULL, 0),
(673, 'Pisal Aniket Ravindra ', NULL, '8767121582', 'aniketpisal2002@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'aniket@105', '65efedbd00691', 'student', NULL, NULL, 0),
(674, 'Sakshi suni atole ', NULL, '9699374303', 'sakshiatole66@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'salshi11', '65efedfb3222d', 'student', NULL, NULL, 0),
(675, 'More pallavi machindra ', NULL, '9561434541', 'more123pallavi@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'pallavi@2003', '65efedfd5bdb2', 'student', NULL, NULL, 0),
(676, 'Shantanu Premkumar Dharmadhikari ', NULL, '9730785209', 'shantanudharmadhikari258@gmail.com', 'B.Voc.(Foodtech)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'tanu66', '65efee1b88bdd', 'student', NULL, NULL, 0),
(677, 'Roshani Sanjay ahirrao', NULL, '7350783050', 'roshaniahirrao1709@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Roshani@123', '65efee3e29a6dIMG-20240312-WA0011.jpg', 'student', NULL, NULL, 0),
(678, 'Shahu Dipak Bhosale', '', '9766389784', 'shahubhosale7188@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shahu@1234', '65efee4a58ddf', 'student', NULL, NULL, 0),
(679, 'Atole pratiksha Dadaso', 'Sawal tel . baramati ', '9529364234', 'pratishthaatole08gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'MONI', '65f25ed382942', 'student', NULL, NULL, 0),
(680, 'Waghmode shivaji Tanaji ', NULL, '7620234534', 'shivajiwaghmode082@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shivaji4534', '65efee8cb4fad', 'student', NULL, NULL, 0),
(681, 'Fule Shivam dharmaraj ', NULL, '8625069008', 'shivamphule1212@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Rashmika1212', '65efeece6dccd', 'student', NULL, NULL, 0),
(682, 'Shambhuraj Dada Choudhar', NULL, '9765685009', 'shambhurajchoudhar2725@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shambhuraj2725', '65efeecf91298', 'student', NULL, NULL, 0),
(683, 'Dhawade Ankita Santosh', 'Sawal', '9561575388', 'ankitadhawade571@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Ankita#05', '65efeecfa9091IMG-20240228-WA0007.jpg', 'student', NULL, NULL, 0),
(684, 'Jadhav Gouri uttam ', NULL, '8010683054', 'jadhavgouri96@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'jadhav_27', '65efeecfcbe5c', 'student', NULL, NULL, 0),
(685, 'Sanika Dhanaji Dubal ', 'Ekshiv ', '9699498102', 'sanikadubal09@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sanika16', '65eff4660a07cIMG_20240120_103637 (1).pdf', 'student', NULL, NULL, 0),
(686, 'Rohan Tatyasaheb Thite', NULL, '8007566596', 'rohanthite@55gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Rohan800', '65efeee8ae873', 'student', NULL, NULL, 0),
(687, 'Sanchita bapu shinde', NULL, '9545308850', 'Shindesanchita134@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ss201', '65efeef47e5dd', 'student', NULL, NULL, 0),
(688, 'Shinde Vaibhav Vikram', NULL, '9529939852', 'shindevaibhavvikram2@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaibhav@21', '65efeef65dc2e', 'student', NULL, NULL, 0),
(689, 'Pooja dinkar shelake', NULL, '7875257516', 'poojashelake528@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'qWh7cNf8@mktxNU', '65efef01c0ff0IMG-20221113-WA0028.jpg', 'student', NULL, NULL, 0),
(690, 'Dhawade Ankita Santosh', NULL, '9561575388', 'ankitadhawade571@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Ankita#05', '65efef203a2a4IMG-20240228-WA0007.jpg', 'student', NULL, NULL, 0),
(691, 'Samruddhi Eknath Khengle', NULL, '7758081624', 'samruddhi1683@gmail.com', 'B.Voc.(Foodtech)', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Samruddhi@1683', '65efefad56226IMG_20240306_144111.jpg', 'student', NULL, NULL, 0),
(692, 'Nikita waghmode ', 'Galindenagar baramati ', '7058314229', 'waghmodenikita11@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'nikita@1414', '65efefbad35a0', 'student', NULL, NULL, 0),
(693, 'darade shubhangi parshuram', NULL, '9422343229', 'shubhangidarade1212@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shubh1', '65efefa6bf923', 'student', NULL, NULL, 0),
(694, 'Megha misal', NULL, '7038449695', 'meghamisal439@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'megha@123', '65efefca4d78e', 'student', NULL, NULL, 0),
(695, 'Pooja shamrao Vaidya ', 'Sakhrwadi satara', '9322278551', 'poojavaidya460@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'pooja1010', '65eff0795697b', 'student', NULL, NULL, 0),
(696, 'Shinde Aditya Nagesh ', 'Tambenagar baramati pune', '9322824576', 'adishinde9322@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '7245948021', '65eff03739faa', 'student', NULL, NULL, 0),
(697, 'Jadhav Neha Namdeo ', NULL, '9960799628', 'nehaj562003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@2003', '65eff021c3934', 'student', NULL, NULL, 0),
(698, 'Akshay Subhash Gawade ', 'Jalgaon Supe', '9145651874', 'akshaygawadw413103@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'akshay@7312', '65eff0409f156', 'student', NULL, NULL, 0),
(699, 'Pawar Neha Madhukar ', NULL, '8468854955', 'pawarneha302005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '123456', '65eff4b630aeb', 'student', NULL, NULL, 0),
(700, 'INGALE ADITYA GOPINATH ', 'JALGAON KADEPATHAR ', '8380070828', 'adityaingale73198@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'AADI@00', '65eff0776504bIMG_20240312_113415.jpg', 'student', NULL, NULL, 0),
(701, 'Tushar Gawade', NULL, '8180934815', 'gawadetushar@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'tushar@23', '65eff08cde10a', 'student', NULL, NULL, 0),
(702, 'Sameer Aqueelahemed Khan', 'Baramati ', '9322705082', 'glob.spot.0@icloud.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'WH01292024', '65eff25c0ee19IMG_2606.jpeg', 'student', NULL, NULL, 0),
(703, 'Lagad shital Bhimrao ', NULL, '9373322505', 'Shitallagad159 @gmali.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shital', '65eff0c28cf5aIMG-20231219-WA0012.jpg', 'student', NULL, NULL, 0),
(704, 'Akshada Madan Patil', NULL, '9579282517', 'akshadapatil1510@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Akshu@1234', '65eff0d8df165', 'student', NULL, NULL, 0),
(705, 'Pratiksha Sanjay Navghan', NULL, '9665383896', 'Pratikshanavghan', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pratu@2006', '65eff0f16d17c', 'student', NULL, NULL, 0),
(706, 'Yash Arjun Salve ', NULL, '8554836220', 'ysalve476@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'yash@1234', '65eff14f8a0ef', 'student', NULL, NULL, 0),
(707, 'Sanidhya Sandesh Dhapate ', NULL, '7447829155', 'sanidhyadhapate222@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sanupatil22', '65eff1175e2dcInShot_20230710_170319645.jpg', 'student', NULL, NULL, 0),
(708, 'Tahir Yunus Mujawar', 'Pandare. tel-Baramati. Dist - Pune ', '9322302441', 'tahirmujawar35@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Damon1140', '65eff120d8978', 'student', NULL, NULL, 0),
(709, 'Jagtap Atharva Vikas', NULL, '7719087442', 'atharvaajagtap22@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'TwTi668b@jhKx7y', '65eff40a72098', 'student', NULL, NULL, 0),
(710, 'Omkar shankar pawar', NULL, '9322383662', 'Omkarpawar4685@gmail', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Omkar@2004', '65eff141e3797IMG_20230320_192231.jpg', 'student', NULL, NULL, 0),
(711, 'Mayur Prashant Ranaware', NULL, '8485011642', 'Mayurranaware01@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'mayur@5051', '65eff1cfac394IMG-20240312-WA0030.jpg', 'student', NULL, NULL, 0),
(712, 'Aditya Santosh Adagale ', NULL, '7083153845', 'adagaleaditya17@gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'aditya09', '65eff74e3866d', 'student', NULL, NULL, 0),
(713, 'Tushar Gawade', NULL, '9921259560', 'gawadetushar@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'tushar@123', '65eff17a35b9c', 'student', NULL, NULL, 0),
(714, 'Shreya Bandgar', NULL, '8446384206', 'shreyabandgar2003@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '1234567890S', '65eff1948ca401689307456021.jpg', 'student', NULL, NULL, 0),
(715, 'Katkar Riya Avinash ', NULL, '8149086062', 'riyaavinashkatkar15@gamil.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'riyakatkar', '65eff1a25e1d3', 'student', NULL, NULL, 0),
(716, 'Puja somnath kamble', NULL, '9922442518', 'payalmadane1@gmal.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pk1234', '65eff1dfef57d', 'student', NULL, NULL, 0),
(717, 'Sayyad Numan Hayyum', NULL, '7058151583', 'numansayyad2005@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '12345', '65eff2693fd55', 'student', NULL, NULL, 0),
(718, 'Nimbalkar Arti Suhas', NULL, '9860113240', 'aartinimbalkar948@gmail.com ', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'aarti0128', '65eff323472f6', 'student', NULL, NULL, 0),
(719, 'SABALE SUYOG VIJAY ', NULL, '7822974500', 'sablej308@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Suyog77', '65eff30886e93', 'student', NULL, NULL, 0),
(720, 'Prajakta Tanaji Shinde ', NULL, '9561826055', 'prajaktashinde838@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Prajakta30', '65eff326b3dfd', 'student', NULL, NULL, 0),
(721, 'Sakshi Sanjay jogdand ', NULL, '9209017852', 'Sakshijogdand060@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi05', '65eff3282d7a9', 'student', NULL, NULL, 0),
(722, 'Shinde Mansi vasant', NULL, '8459581525', 'mansishinde9422@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Mansi@982003', '65eff343d777dIMG-20240227-WA0018.jpg', 'student', NULL, NULL, 0),
(723, 'Prashant Sunil navale ', NULL, '9021267803', 'prashantnavalep374@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'prashany96k', '65eff37d695fbKaagaz_20231013_075754875774-1.jpg', 'student', NULL, NULL, 0),
(724, 'Sanika bhalchandra kulkarni ', NULL, '9405168001', 'ksanika504@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'ad1234', '65eff38c913bf', 'student', NULL, NULL, 0),
(725, 'Pooja pravin jagtap', NULL, '8308497515', 'Jagtappooja951@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pooja123', '65eff3d674c92', 'student', NULL, NULL, 0),
(726, 'Snehal Mahadeo Shipkule ', NULL, '9130645977', 'snehalshipkule80@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'snehal5977', '65eff4ed926e0', 'student', NULL, NULL, 0),
(727, 'Katkar Riya Avinash ', 'Baramati', '9730226714', 'riyaavinashkatkar15@gamil.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Riya2005', '65eff463cd07f', 'student', NULL, NULL, 0),
(728, 'Vaishnavi Sunil Waghmode', 'A/P Munjwadi Tal-Phaltan Dist-Satara', '9309310924', 'waghmodevaishnavi43@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaishnavi3', '65eff5988c42a', 'student', NULL, NULL, 0),
(729, 'Bankar Rutuja Manoj ', 'Pimpli', '9823730012', 'brutuja821@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'rutuja25', '65eff5070135c', 'student', NULL, NULL, 0),
(730, 'Prashant Sunil navale ', NULL, '9404037009', 'prashantnavalep374@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9021267803', '65eff4872651d17102244791851916130466389554895.jpg', 'student', NULL, NULL, 0),
(731, 'Bansude Chaitanya Sukhdev ', NULL, '7249598672', 'chaitanyabansude19@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'chaitu@8672', '65eff55fcdbf3IMG_5913.jpg', 'student', NULL, NULL, 0),
(732, 'Pankaj Sunil Deshmane ', NULL, '8412847639', 'deshmanepankaj05@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pankaj@00', '65eff4f796eb5', 'student', NULL, NULL, 0),
(733, 'Shambhuraj santosh Budhawale', NULL, '9204145152', 'budhawaleshambhuraj17gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shambhu17', '65eff50e21fa7', 'student', NULL, NULL, 0),
(734, 'Jay chandrakant pawar', NULL, '9322310233', 'Pjay08018@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'jay5121', '65eff5981a16d', 'student', NULL, NULL, 0),
(735, 'Arti Gajanan Jadhav ', NULL, '9699382176', 'sanidhyadhapate222@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Arti1502', '65eff578153a3', 'student', NULL, NULL, 0),
(736, 'Shaikh Arju Jilani ', NULL, '9665836697', 'arjushaikh09798@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@Arju04', '65eff5c14173a', 'student', NULL, NULL, 0),
(737, 'Prajakta Tanaji Shinde ', NULL, '9665918449', 'prajaktashinde838@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Prajakta@12', '65eff59b4443e17102246614016995928764968149595.jpg', 'student', NULL, NULL, 0),
(738, 'Apurva Jaunjal', NULL, '9823580027', 'apurvajaunjal@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Apurvaj@2002', '65eff63bc6578InShot_20230423_152920913.jpg', 'student', NULL, NULL, 0),
(739, 'Lagad Shital Bhimrao', NULL, '9322879841', 'Shitallagad159@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shital1234', '65eff5e7eb3ec', 'student', NULL, NULL, 0),
(740, 'Taware  kanchan sudhakar', NULL, '9689910741', 'kanchantaware3@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@Kanchan3', '65eff687c8fc1IMG_20231009_182318.jpg', 'student', NULL, NULL, 0),
(741, 'Pawar Suhani Ravindra ', NULL, '9421598643', 'suhanipawar0096@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@suhani15', '65eff74f496eaIMG_20240312_115813.jpg', 'student', NULL, NULL, 0),
(742, 'Gaurav santosh Pawar', NULL, '9371201250', 'gauravpawar20769@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'gaurav7979', '65eff6b3a9e07', 'student', NULL, NULL, 0),
(743, 'Neha bapu sapkal ', NULL, '7028746714', 'Ajaysapkal287@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@004', '65eff69669291Screenshot_20240308_203637_Gallery.jpg', 'student', NULL, NULL, 0),
(744, 'Vaishnavi Rambhau More', NULL, '8600222648', 'morevaishnavi@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Vaishu2004', '65eff74d65a2a', 'student', NULL, NULL, 0),
(745, 'Shraddha Mahendra sapkal ', NULL, '8329296106', 'shraddhasapkal1015@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shraddha2224', '65eff722585c517102251429214404677290073140334.jpg', 'student', NULL, NULL, 0),
(746, 'Pranali Sanjay Bade ', NULL, '9309430667', 'pranalibade15@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pranali7', '65eff7f0ca4f317102253480513081805563533538237.jpg', 'student', NULL, NULL, 0);
INSERT INTO `tbl_registration` (`id`, `fname`, `address`, `contactno`, `email`, `faculty`, `year`, `gender`, `stateid`, `districtid`, `cityid`, `enquiryid`, `password`, `imagename`, `role`, `isdeleted`, `addedby`, `updatedby`) VALUES
(747, 'Kiran Dhone', NULL, '9921655160', 'dhonekiran123456@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Kiran@2001', '65eff77d041ae', 'student', NULL, NULL, 0),
(748, 'Takale Harshad Vilas', '', '9322360292', 'takaleharshad@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '8Z9NbNZN8kepS5V', '65eff7e102aedIMG_20231011_125417.jpg', 'student', NULL, NULL, 0),
(749, 'Madhura Someshwar Waghmode', NULL, '7767056825', 'madhuwaghmode37@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'MADHU2005', '65eff7e4e6571', 'student', NULL, NULL, 0),
(750, 'Siddhi samdas kadam', '', '7666741110', '521siddhikadam326@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'siddhi@2004', '65eff7f728a0aIMG_20221122_090330 (1).jpg', 'student', NULL, NULL, 0),
(751, 'gardi om satish', 'rui baramati', '8080007229', 'omgardi2005@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'om.2005', '65eff8ad38c43', 'student', NULL, NULL, 0),
(752, 'More Omkar Navnath ', NULL, '8010621589', 'omore0314@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'omkar11', '65eff86d9a78comkar more.JPG', 'student', NULL, NULL, 0),
(753, 'Shambhuraj santosh Budhawale', NULL, '9623320975', 'budhawalesiddhi176gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@dada01As', '65eff8d2d4fde', 'student', NULL, NULL, 0),
(754, 'MOGHE MOHIT AMOL ', NULL, '9284223589', 'moghemohit30@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Mohit3012', '65eff96a9cd5b', 'student', NULL, NULL, 0),
(755, 'Jadhav Kripa Ashok', NULL, '9890543435', 'ashokja895@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'jadhav9890', '65eff965b707517102257285771157409660.jpg', 'student', NULL, NULL, 0),
(756, 'Chetan popat markad', NULL, '9765532924', 'chetanmarkad550@gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Chetan@123', '65eff99aa5f9a17102257691586379749009809484566.jpg', 'student', NULL, NULL, 0),
(757, 'Kirdak Aaditya Dnyandev ', NULL, '8530089094', 'aadityakirdak@Gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'aaditya@1234', '65eff99c013c217102257867274367850826036804193.jpg', 'student', NULL, NULL, 0),
(758, 'Lagad Shital Bhimrao', NULL, '9323879841', 'shitallagad159@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shital27', '65eff9ef181d8', 'student', NULL, NULL, 0),
(759, 'Amruta bapu jadhav', NULL, '8975169321', 'amjadhav35@gmail.com', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'amruta@1212', '65effa44c3a78', 'student', NULL, NULL, 0),
(760, 'Sapkal sujit sukhdev', NULL, '8080920996', 'sujitsapkal937093@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Sujit9696', '65effafa9700bIMG_0039.jpg', 'student', NULL, NULL, 0),
(761, 'Jadhav Sanika Sanjay ', NULL, '8625995506', 'sanikaj769@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanu@123', '65effaa85ce2c', 'student', NULL, NULL, 0),
(762, 'Tanvi Rajesh jagtap', NULL, '9405866522', 'jagtaptanvi40@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'W92@jB6cd3xtRum', '65effb15297a4IMG-20240312-WA0003.jpg', 'student', NULL, NULL, 0),
(763, 'Nande Aishwarya Dashrath ', NULL, '9975485763', 'aishwaryanande9@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aishu@2004', '65effb041ffbe', 'student', NULL, NULL, 0),
(764, 'Waghmare Harshal Siddharth ', NULL, '8484053477', 'wharshal12002@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Harshal@123', '65efff0d140eb', 'student', NULL, NULL, 0),
(765, 'Veer pratiksha Dilip', NULL, '7666086581', 'pratikshaveer18@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Veer04', '65effd4339243IMG20211015161050.jpg', 'student', NULL, NULL, 0),
(766, 'Bhand Dhanashri Ganpat', NULL, '9579229431', 'dhanashribhand8@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'DHANA@1109', '65effcc8d736bKaagaz_20240311_123040438951-1.jpg', 'student', NULL, NULL, 0),
(767, 'Dhananjay Dattatray Babar ', NULL, '9322552141', 'dhananjaybabar45@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sujalraje45', '65effb994516aIMG_20230730_183555.jpg', 'student', NULL, NULL, 0),
(768, 'Gore Gauri Dattatray ', 'A/p jalochi ', '9172854164', 'gaurigore2004@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Gauri@2004', '65effce349172IMG_20240215_091139.jpg', 'student', NULL, NULL, 0),
(769, 'Aditi Nitin Khaire ', 'Baramati MIDC', '9322060082', 'aaditikhaire151@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Aditi151', '65effcab144b8', 'student', NULL, NULL, 0),
(770, 'Lawand Akanksha Sharad ', NULL, '9604726623', 'akankshalavand2005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'aknksha27', '65effc7bcb38c', 'student', NULL, NULL, 0),
(771, 'Bhand Dhanashri Ganpat', NULL, '7776005230', '9579229431', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'DHANA@1109', '65effca327aa8', 'student', NULL, NULL, 0),
(772, 'Sonawane Nilam Santosh ', 'Madnwandi chuffola bhigwan ', '9545308004', 'nilamsantoshsonawane8004@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Nilam8004', '65effca9051f9', 'student', NULL, NULL, 0),
(773, 'Gawade priyanka Shahaji ', 'Bhigwan ,contactno= tal- indapur,faculty= dist - pune', '9921602322', 'gawadepriyanka303@gmail.com', 'B.C.A.(Science)', '9921602322', NULL, NULL, NULL, NULL, NULL, 'payal07', '65effdb352046', 'student', NULL, NULL, 0),
(774, 'Kambale Aarati Malhari ', NULL, '7083947201', 'aartikambale368@gmail.com ', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Aarati@123', '65effd222ef2a', 'student', NULL, NULL, 0),
(775, 'Vaishnavi tanaji machale', NULL, '8010208072', 'vaishnavimachale010@gmail.comi', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vaishnavi@123', '65effd235f3e5', 'student', NULL, NULL, 0),
(776, 'Pratik Subhash Randhwan', NULL, '9022502326', 'randhwanpratik@gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'y5NhN6Z@pe6@iw2', '65effd302675c', 'student', NULL, NULL, 0),
(777, 'Jagtap Srushti Anil ', NULL, '8830138102', 'jagtapsrushti072@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Srushti@2002', '65effdb44314a', 'student', NULL, NULL, 0),
(778, 'Mayur bharane', NULL, '9689416626', 'bharnemayur37@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'uM4M5@44ugL6WWd', '65effdb7e59a7', 'student', NULL, NULL, 0),
(779, 'Jagtap Srushti Anil ', NULL, '8830138102', 'jagtapsrushti072@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Srushti@2002', '65effdbcbbb56', 'student', NULL, NULL, 0),
(780, 'Lawand Akanksha Sharad', NULL, '9011565335', 'akankshalavand2005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'akanksha27', '65effe4638896', 'student', NULL, NULL, 0),
(781, 'Dhamal Dnyaneshwari ', NULL, '8080137496', 'dhamaldnyaneshwari@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'dhamal123', '65effe41dc740', 'student', NULL, NULL, 0),
(782, 'Trupti Anil Rede', 'At post Bhigwan', '8432119402', 'redeanita3@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Trupti95', '65effea72ee68Snapchat-394588862.jpg', 'student', NULL, NULL, 0),
(783, 'Gavali Shruti pandurang ', NULL, '8459382138', 'gavalishruti05@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shruti19', '65effebdc3bd5IMG_20240312_111820.jpg', 'student', NULL, NULL, 0),
(784, 'Tara Shinde ', NULL, '9011493460', 'tarashinde@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Tara@2003', '65efff610a9d5IMG_20240312_105232.jpg', 'student', NULL, NULL, 0),
(785, 'Nande Aishwarya Dashrath ', NULL, '9699714978', 'aishwaryanande9@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aishu@2002', '65efff68254f8', 'student', NULL, NULL, 0),
(786, 'Ganesh Tanaji pawal', NULL, '9096134507', 'ganeshpawal10@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Ganesh@10', '65efff818d116chrome_image_09-Oct-2023 12_33_02 pm IST (1).jpg', 'student', NULL, NULL, 0),
(787, 'Gosavi Suhani Prakash ', NULL, '8956070525', 'suhanigosavi4321@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Suhani@2004', '65f0004a89b90', 'student', NULL, NULL, 0),
(788, 'Yogesh Hanumant Choudhari ', NULL, '8767685822', 'choudhariyogesh89@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Ychoudhari@123', '65f001a0b8f8817102278566503129755818847995617.jpg', 'student', NULL, NULL, 0),
(789, 'Thombare Shankar Mahadev ', NULL, '9021291503', 'Shankarthombare362@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'shankar01', '65f00160c5032', 'student', NULL, NULL, 0),
(790, 'Trupti Balaso Bankar', NULL, '7218797292', 'truptibankar1282004@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'trupti@2004', '65f001abed1fa', 'student', NULL, NULL, 0),
(791, 'Taufik  Rafik shaikh ', NULL, '9307741033', 'ts0900705@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Dty6zjhKgWWkg3@', '65f001eff1754', 'student', NULL, NULL, 0),
(792, 'Prajakta Sunil pawar ', NULL, '7385569003', 'bpradnya6 2@Gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '123456', '65f0025f733cb', 'student', NULL, NULL, 0),
(793, 'Kshirsagar Ashutosh Virbhadra ', NULL, '8956572603', 'ashutoshkshirsagar20@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'ashu@2003', '65f002bec668f', 'student', NULL, NULL, 0),
(794, 'Khaire sakshi shahaji', NULL, '7020040578', 'sakshikhaire486@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi27', '65f0031bab7be', 'student', NULL, NULL, 0),
(795, 'Sanchita bapu Shinde', NULL, '8888308850', 'Shindesanchita134@gamil.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'bapu90', '65f003164df1f', 'student', NULL, NULL, 0),
(796, 'Reshma Vijay Kamble', 'A/p Nazre ,contactno= tal : Baramti', '9922324271', 'reshmakamble052@gmail.com', '9922324271', 'B.Com.', NULL, NULL, NULL, NULL, NULL, 'Reshu@777', '65f003439aa20', 'student', NULL, NULL, 0),
(797, 'Vaishnavi Dada thawal', NULL, '8007020190', 'anjalishinde270@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '12345', '65f0041ce1392', 'student', NULL, NULL, 0),
(798, 'Sanjyot Navnath Galande ', '', '8010323872', 'navnathgalande323@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanju777', '65f00562e9888', 'student', NULL, NULL, 0),
(799, 'Gate Hrutuja vinay', 'Phaltan', '9022944649', 'hrutujagate@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Hrutu090605', '65f0060f390cf', 'student', NULL, NULL, 0),
(800, 'Aarti Malhari Kambale ', 'A/p Divad,contactno= tal : man', '9284512153', 'aartikambale368@gmail.com ', '9284512153', 'B.Com.', NULL, NULL, NULL, NULL, NULL, 'Aarti@999', '65f005aabab43', 'student', NULL, NULL, 0),
(801, 'Chetan Dilip Dongare', 'At post :- Loni deokar Tal-Indapur  Dist-Pune ', '7420870928', 'chetandongare91@gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Chetan@111', '65f00c5316c97', 'student', NULL, NULL, 0),
(802, 'Vaishnavi Somnath Lokhande ', NULL, '9130542276', 'vaishnavilokhande734@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@Nw57wGeXQ9z4YY', '65f008ffeb59bIMG-20240312-WA0005.jpg', 'student', NULL, NULL, 0),
(803, 'Saurabh Wagh', NULL, '9834624383', 'saurabhwagh707@gmail.com', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'S@urabh0457', '65f008ed4bfd5IMG_20240311_094607.jpg', 'student', NULL, NULL, 0),
(804, 'Radhika Vishwanath Daphal', NULL, '7057206431', 'Daphalradhika@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Chingu8', '65f0096576327', 'student', NULL, NULL, 0),
(805, 'Suryawanshi Raj Vishnu ', NULL, '7385913781', 'rajsuryawanshi885@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'wYHVWtG6y@GZmuf', '65f0095abc134', 'student', NULL, NULL, 0),
(806, 'SABALE SUYOG VIJAY ', 'A/p Ghadghewadi Tal-Baramati Dist-Pune ', '9960310705', 'sablej308@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Suyog6077', '65f00bace312fIMG_20240131_163027_890.jpg', 'student', NULL, NULL, 0),
(807, 'Nikita kishor wayase ', NULL, '9503454243', 'nehawayase20@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'niku0101', '65f00a80b0aec', 'student', NULL, NULL, 0),
(808, 'SABALE SUYOG VIJAY ', 'A/p Ghadghewadi Tal-Baramati Dist-Pune ', '9960310705', 'sablej308@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Suyog6077', '65f00bace312fIMG_20240131_163027_890.jpg', 'student', NULL, NULL, 0),
(809, 'Lagad shital Bhimrao ', NULL, '9322656019', 'Shitallagad159@gmali.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Shital8', '65f00b501e1a1', 'student', NULL, NULL, 0),
(810, 'Gauri devkate ', NULL, '7276348631', 'Gauridevkate2000@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'gauripatil123', '65f13775d276f', 'student', NULL, NULL, 0),
(811, 'Pawar Komal Mahendra ', NULL, '9881521537', 'komalpawar18092@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Komalp@18', '65f00cd856425IMG-20210828-WA0001.jpg', 'student', NULL, NULL, 0),
(812, 'Deshmukh Abhay Rahul ', 'Pandharpur ', '8381050955', 'abhaydeshmukh1914@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@ABHAY12345', '65f00cd1036e420221211_004518.jpg', 'student', NULL, NULL, 0),
(813, 'Markad Mahesh Vilas ', NULL, '8010333614', 'Maheshmarkad449@gmail.com', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Mahesh123', '65f00d6b3fef4', 'student', NULL, NULL, 0),
(814, 'Bhopate Payal Sambhaji', '', '7620547480', 'payalbhopate2005@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Payal03', '65f00def6165e', 'student', NULL, NULL, 0),
(815, 'Ankita Santosh More', NULL, '7499789802', 'ankitamore4147@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'tejanku2913', '65f00dca4d161', 'student', NULL, NULL, 0),
(816, 'Khartode Akshay Rajaram ', NULL, '9766561768', 'akshayrajaram6866@gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '976656', '65f00e5c0b1bb', 'student', NULL, NULL, 0),
(817, 'Shruti pandurang Gavali ', NULL, '9370457930', 'gavalishruti05@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'S12345678', '65f00e8666866Screenshot_20240312_124911.jpg', 'student', NULL, NULL, 0),
(818, 'Mahesh Vilas Markad ', NULL, '9623696693', 'maheshmarkad449@gmail.com', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '12345678M', '65f00eb0cac7f', 'student', NULL, NULL, 0),
(819, 'Mayuri sonba shinde ', NULL, '9156226012', 'mayurishinde680@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Mayuri@2003', '65f00f2eeb9a6', 'student', NULL, NULL, 0),
(820, 'Prajakta Swami ', NULL, '9699552248', 'prajaktaswami616@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'praju2277', '65f00fada9c9f', 'student', NULL, NULL, 0),
(821, 'Parbat Ankita Dipak', NULL, '7020287829', 'ankitaparbat4115@gmail.com', 'B.C.A.(Science)', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '123456789a', '65f0106a98a4c', 'student', NULL, NULL, 0),
(822, 'Aditi Virendra Swami', 'At.Post.Surli. Tel.Koregaon. Dist.Satara', '9307815561', 'aditiswami007@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'T9Swq4d@3EKPsq7', '65f0696f352f5IMG_20231004_231634.jpg', 'student', NULL, NULL, 0),
(823, 'Rupali Nitin Thaware ', NULL, '8262850566', 'rupali.dhale7777@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'rupali', '65f010fb6ea15IMG_20240312_110433.jpg', 'student', NULL, NULL, 0),
(824, 'Jadhav Soham Shahaji ', NULL, '9309708508', 'Sohamjadhav00077@gmail.com', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'soham0707', '65f01257246d1', 'student', NULL, NULL, 0),
(825, 'Palve Bhagyashri Sunil', NULL, '8432010468', 'Palvebhagyashri107@gamail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Bhagyashri1234', '65f0139f45fd3', 'student', NULL, NULL, 0),
(826, 'Jagtap Kunal Gajanan ', NULL, '7028975252', 'Jagtapkunal70@gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'pass123', '65f014a2193f7IMG-20240128-WA0020.jpg', 'student', NULL, NULL, 0),
(827, 'Rutuja', NULL, '9561128583', 'Landagerutuja141@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'rutu1234', '65f0146064be1', 'student', NULL, NULL, 0),
(828, 'Om Dattatray Khutale ', NULL, '9860978202', 'omkhutale03@gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'om9933', '65f0150b8ade6IMG-20231022-WA0004.jpg', 'student', NULL, NULL, 0),
(829, 'Pooja ', NULL, '9561549931', 'poojaadake9931@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'puja1234', '65f0152d2b248', 'student', NULL, NULL, 0),
(830, 'Jadhav tanuja sandip ', NULL, '7385212259', 'tanujasandipjadhav@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'tanu123', '65f0158247a01', 'student', NULL, NULL, 0),
(831, 'Jamdade Gayatri Dilip ', NULL, '9588625029', 'jamdadegayatri70@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Gayatri@28', '65f0158aa15d0IMG-20240312-WA0008.jpg', 'student', NULL, NULL, 0),
(832, 'Pranita Prakash Raskar ', NULL, '9309261152', 'pranitaraskar289@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@P2005', '65f01aaaadd5b', 'student', NULL, NULL, 0),
(833, 'Namdas Vrundavni Dattatray ', NULL, '9356134642', 'vrundavninamdas@gamil.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'vrundavni', '65f01ad0417a4', 'student', NULL, NULL, 0),
(834, 'Amruta Bapu Shingade', NULL, '7218516174', 'rupalishingade86gmail. Com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Amruta10', '65f01d9c16a19', 'student', NULL, NULL, 0),
(835, 'Rahul Mahadev Landage', NULL, '9284810759', 'rahullandage945@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'rahul@123', '65f01d63a0e5c', 'student', NULL, NULL, 0),
(836, 'Sapkal neha bapu', NULL, '9763736714', 'Ajaysapkal287@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@004', '65f01eba88035', 'student', NULL, NULL, 0),
(837, 'Vishal Rajendra Mane', NULL, '7350791327', 'vmane089@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'vishalmane1827', '65f021bac309cIMG_3098.jpeg', 'student', NULL, NULL, 0),
(838, 'Sapkal neha bapu', NULL, '9730616528', 'Nehasapkal27@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@004', '65f02200bbe85Screenshot_20240308_203433_Gallery.jpg', 'student', NULL, NULL, 0),
(839, 'Vaishnavi Dattatray Sirsat', NULL, '8999163788', 'vaishusirsat1827@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'vaishu1827', '65f022d391438d7d599ab-5bb7-4d4f-8ad7-b4163c9f72af.jpeg', 'student', NULL, NULL, 0),
(840, 'Neha bapu sapkal ', NULL, '9067308273', 'Ajaysapkal287@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@008', '65f022d88dddeScreenshot_20240308_203433_Gallery.jpg', 'student', NULL, NULL, 0),
(841, 'Dhananjay Babar', '', '9370349961', 'DhananjayBabar45@gmail.con', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sujalraje45*', '65f02379c4bdf', 'student', NULL, NULL, 0),
(842, 'GANESH SANTOSH UGALE ', NULL, '7756914941', 'ganeshugale1344@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'GANESH9944', '65f023fcbb437', 'student', NULL, NULL, 0),
(843, 'Nikhil chavan ', NULL, '8898140505', 'nc658164@gmail.com', 'B.C.A.(Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikhil@505', '65f024f405684', 'student', NULL, NULL, 0),
(844, 'chaitanya Hanumant yamagar ', '', '8482988669', 'yamagarchaitanya@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '123456', '65f027faa4d34', 'student', NULL, NULL, 0),
(845, 'Shendage Sneha Suresh', NULL, '9322929737', 'snehashendage46', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'parii1225', '65f02894380e0', 'student', NULL, NULL, 0),
(846, 'Shevate Disha Dattatray ', NULL, '9699881967', 'shevatedisha@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '131601', '65f02898f041e', 'student', NULL, NULL, 0),
(847, 'Jamdade Gayatri Dilip ', NULL, '7058757530', 'jamdadegayatri70@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Gayatri@2005', '65f02db2c73a9', 'student', NULL, NULL, 0),
(848, 'Abhishek Sandip Tambe', NULL, '9595939078', 'tambeabhishek72@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Abhi2111', '65f02ec280cea', 'student', NULL, NULL, 0),
(849, 'Kudale Harshada Dilip ', NULL, '9309469439', 'kudaleharshada4@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Harshu@9309', '65f03041d3322', 'student', NULL, NULL, 0),
(850, 'Pooja Bhalchandra Adake ', NULL, '9561319931', 'poojaadake9931@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pooja12', '65f0344190f5d', 'student', NULL, NULL, 0),
(851, 'Rupali Nitin Thaware ', NULL, '8262850566', 'rupali.dhale7777@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'rupa7777', '65f034f71c6c8IMG_20240312_110433.jpg', 'student', NULL, NULL, 0),
(852, 'Jadhav yogita mohan ', NULL, '8856928836', 'nikitajadhav9697@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'AATd6xMG9J4@rZc', '65f035130b49eIMG-20230925-WA0024.jpg', 'student', NULL, NULL, 0),
(853, 'Attar Azad Sikandar', NULL, '8999244847', 'mrazadattar@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Azad1234', '65f037b2969ec', 'student', NULL, NULL, 0),
(854, 'Shaikh Shahid Shakil ', NULL, '7666583131', 'shahidshaikh2701@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shahid@786', '65f038d118dfa', 'student', NULL, NULL, 0),
(855, 'Aboli Ajit Gholap ', NULL, '8262908592', 'ajitgholap49@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'aboli2862004', '65f039d57a533', 'student', NULL, NULL, 0),
(856, 'Sahil Ramesh more ', NULL, '9579966500', 'sahilmore1296@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sahil@0529', '65f03a38c338c', 'student', NULL, NULL, 0),
(857, 'Anuja Rajendra More ', 'At post Baramati(Sainagar)\r\nTal-Baramati\r\nDist-Pune', '9209010541', 'anujamore359@gmail.com ', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '9209010541', '65f03ef0c5f83IMG-20230929-WA0004.jpg', 'student', NULL, NULL, 0),
(858, 'Karche Vaibhavi Rushikesh', 'At post Baramati(Sainagar) \r\nTal-Baramati\r\nDist-Pune', '9021636575', 'vaibhavikarche14@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'savi_1407', '65f03cbe58a32', 'student', NULL, NULL, 0),
(859, 'Shubham Dnyandeo Mane ', NULL, '9579520394', 'shubhammane3605@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shubham3605@.', '65f03d3989821', 'student', NULL, NULL, 0),
(860, 'Onkar Abhiman Dagade ', NULL, '9146416689', 'onkardagade9@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '314314', '65f03d6114cf2', 'student', NULL, NULL, 0),
(861, 'More Anuja Rajendra', NULL, '7774878594', 'anujamore359@gmail.com ', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Anuja_311', '65f03dec33ea5IMG-20230929-WA0004.jpg', 'student', NULL, NULL, 0),
(862, 'SHRIYASH GANPAT PRADHAN', '', '1235649780', 'shriyashpradhan13@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'shriyash1', '65f03ff81e0ea', 'student', NULL, NULL, 0),
(863, 'Komal Rajendra Kaygude ', NULL, '8830176442', 'kaygudekomal822@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'komal3232', '65f0408636ec3', 'student', NULL, NULL, 0),
(864, 'Ketaki Ranjit Chinchkar ', NULL, '9172532838', 'ketakichinchkar75@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Ketaki90', '65f042d17bfe9', 'student', NULL, NULL, 0),
(865, 'Sanchitacha Bapu shinde', NULL, '8308188081', 'Shindesanchita134@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanchita86', '65f04396d0695', 'student', NULL, NULL, 0),
(866, 'Karche Kanchan Hanumant', 'A/p baramati (Sainagar)\r\nTal- baramati dist-pune', '9689691077', 'karchekanchan@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Kanchan_23', '65f045d1d5bf8', 'student', NULL, NULL, 0),
(867, 'Karche Kanchan Hanumant', 'At post baramati(Sainagar)\r\nTal-baramati\r\nDist-pune', '9689691077', 'karchekanchan@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Kanchan_23', '65f045d1d5bf8', 'student', NULL, NULL, 0),
(868, 'Sanchita Bapu Shinde', NULL, '8308188181', 'Shindesanchita134@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanchita86', '65f044acecae3', 'student', NULL, NULL, 0),
(869, ' Aditya Vinayak Chandgude', NULL, '8956019457', 'chandgudeaditya22@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'snehal5977', '65f048b6331e6', 'student', NULL, NULL, 0),
(870, 'Shirke Arpita Abasaheb ', NULL, '8010997499', 'arpitashirke3@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@yGwZfXs782zgnH', '65f04928edd53', 'student', NULL, NULL, 0),
(871, 'Sawant Sarthak Amol ', NULL, '9107960202', 'sarthaksawant0202@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sarthak02', '65f055e7428bc', 'student', NULL, NULL, 0),
(872, 'Landage Mahesh Devidas', NULL, '9172789407', 'amrutalandage07@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Mahesh@123', '65f04df3c1366', 'student', NULL, NULL, 0),
(873, 'Tapkir Avishkar Subhash', NULL, '7330309111', 'tapkiravi9703@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '#Prachi9111', '65f04e097287e', 'student', NULL, NULL, 0),
(874, 'Amruta Satish Sonawane ', NULL, '8177960801', 'sonawaneamruta4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '8177960801', '65f04e97d87c4', 'student', NULL, NULL, 0),
(875, 'Yadav Vishal Atul', NULL, '9356282719', 'maheshlandage034@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Mahesh@123', '65f05024eb8d0', 'student', NULL, NULL, 0),
(876, 'Safiya Salim Shaikh ', NULL, '7387989647', 'Safiyasalimshaikh7@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'qs@Pn3kz7U5rqYE', '65f04f4702e67IMG_20230909_145453.jpg', 'student', NULL, NULL, 0),
(877, 'PANKAJ DATTATRAY SONAWANE ', NULL, '7028896397', 'Sonawanepankaj112003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pankaj@112003', '65f04f81ae299', 'student', NULL, NULL, 0),
(878, 'Prachi sanjay Awaghade ', NULL, '7028609411', 'Sawaghde6@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'prachiawaghade293029', '65f0507b7815b', 'student', NULL, NULL, 0),
(879, 'Prachi sanjay Awaghade ', NULL, '7028609411', 'Sawaghde6@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'ahsn3Gigt@xGQu6', '65f050cbdff32', 'student', NULL, NULL, 0),
(880, 'Meher Someshwar ramesh', NULL, '8766531952', 'mehersomeshwer@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '@Meher2403', '65f0517dbc616', 'student', NULL, NULL, 0),
(881, 'Rutuja Ramesh Harke ', NULL, '8010699635', 'harkerutuja@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rutuja@112003', '65f0533aca6c8', 'student', NULL, NULL, 0),
(882, 'Reshma jayasing sable', NULL, '7264839802', 'reshmasable750@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'RESHMA12', '65f053d559fd3', 'student', NULL, NULL, 0),
(883, 'Rupali Raju Sumbe ', NULL, '8010065085', 'rupalisumbe04@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'rupa123', '65f054046605a', 'student', NULL, NULL, 0),
(884, 'Pawar Gauri Ganesh', NULL, '9604581681', 'gaurigpawar2025@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Gauri1234', '65f058d202ed665f056d112752DocScanner 12-Mar-2024 6-43 pm.pdf', 'student', NULL, NULL, 0),
(885, 'Sakshi Nandre', NULL, '8010371315', 'sakshinandre0@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Saku@0', '65f05760633a4', 'student', NULL, NULL, 0),
(886, 'Sumbe Rupali Raju ', NULL, '8390119477', 'rupalisumbe04@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sumbe1', '65f058055e6b3', 'student', NULL, NULL, 0),
(887, 'SAURABH MAHADEV MULE', NULL, '7517693849', 'Saurabhmule1003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Saurabh@10', '65f05c09d670bDocScanner Jan 20, 2024 10-10.jpg', 'student', NULL, NULL, 0),
(888, 'Amruta Satish Sonawane ', NULL, '9146277171', 'sonawaneamruta4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '9146277171', '65f05d6a43322IMG-20240312-WA0006.jpg', 'student', NULL, NULL, 0),
(889, 'Kachare shubham Dadasaheb', NULL, '9359953937', 'Shubhamkachare1122@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'shubham0207', '65f060946a92b', 'student', NULL, NULL, 0),
(890, 'Kale Pratiksha Ramesh', NULL, '8668701688', 'pratikshakale1208@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Pratiksha12', '65f060ae75081', 'student', NULL, NULL, 0),
(891, 'Rani Bapu Sul', NULL, '7620156181', 'ranibapusul2003@gmail.com ', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rani10', '65f063261779f', 'student', NULL, NULL, 0),
(892, 'Sutar pranav Madhukar ', NULL, '8806065405', 'pranavsutar889@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '100110', '65f0627a3d457', 'student', NULL, NULL, 0),
(893, 'Shivam Virendra Shinde ', NULL, '9921243975', 'shivamshindevd7@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Shivam777', '65f062f4b738dIMG20240211224601~2.jpg', 'student', NULL, NULL, 0),
(894, 'Rani Bapu Sul', NULL, '7620156181', 'ranibapusul2003@gmail.com ', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rani@10', '65f063261779f', 'student', NULL, NULL, 0),
(895, 'Sutar pranav Madhukar ', NULL, '9657743084', 'pranavsutar889@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pranav@1010', '65f06396b347e', 'student', NULL, NULL, 0),
(896, 'Amruta Satish sonwane ', NULL, '8177960801', 'sonwaneamruta4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sonwa@71', '65f0663500f9fScreenshot_20240312-110900.jpg', 'student', NULL, NULL, 0),
(897, 'Amruta Satish sonwane ', NULL, '8177960801', 'sonwaneamruta4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sonwa@71', '65f06635adf4dScreenshot_20240312-110900.jpg', 'student', NULL, NULL, 0),
(898, 'waghmare Aatish Rajkumar', NULL, '9273050401', 'waghmareaatish800@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'kb6cLXLaYc@X@jL', '65f066621dfa2', 'student', NULL, NULL, 0),
(899, 'Amruta Satish sonwane ', NULL, '8177960801', 'sonwaneamruta4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '123456', '65f068fc36883Screenshot_20240312-110900.jpg', 'student', NULL, NULL, 0),
(900, 'Amruta Satish sonwane ', NULL, '8177960801', 'sonwaneamruta4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Amu7171', '65f06b15be077Screenshot_20240312-110900.jpg', 'student', NULL, NULL, 0),
(901, 'Amruta Satish sonwane ', NULL, '8177960801', 'sonwaneamruta4@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Amu@71 ', '65f06b4dcb217Screenshot_20240312-110900.jpg', 'student', NULL, NULL, 0),
(902, 'Palve Poonam Bhimrao', NULL, '8830845082', 'poonambpalve01@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'poonambpalve01@gmail.com', '65f06c98cbe22', 'student', NULL, NULL, 0),
(903, 'Pranjali mohan kandale', NULL, '8432375883', 'pranjlikasar590@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'pranju333', '65f06d78dccf6', 'student', NULL, NULL, 0),
(904, 'Gawade Varun Santosh ', NULL, '8530555741', 'gawadevarun10@gmail.com', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Swapna@123', '65f06dd3aef31', 'student', NULL, NULL, 0),
(905, 'Abhishek Balasaheb Gore', NULL, '9096349946', 'abhigore4655@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'abhishek1234', '65f06df0341bc', 'student', NULL, NULL, 0),
(906, 'Chaudhari Saurabh Santosh ', NULL, '9067542521', 'saurabhchaudhari12020@gmail.com', 'B.C.A.(Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '12345678C', '65f06e4f04e9a', 'student', NULL, NULL, 0),
(907, 'Kshitij Maruti Jagtap', NULL, '9607806475', 'jagtapkshitijm@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Kshitij@12345', '65f074f36cb6c', 'student', NULL, NULL, 0),
(908, 'Holam Akash Nilkanth ', NULL, '7447550244', 'akashholam@02gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Akash02', '65f077191c391IMG_20221109_193304.jpg', 'student', NULL, NULL, 0),
(909, 'Puja balaso bhosale', '', '8379099587', 'pujapawar553@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '8379099587', '65f07cffe2d21', 'student', NULL, NULL, 0),
(910, 'Tejas Prakash. Nevase', 'Sansar,contactno=Jachakvasti ', '8600635110', 'tejasprakashnevase5110@gmail.com', '8600635110', 'B.Com.', NULL, NULL, NULL, NULL, NULL, 'Tej2913', '65f08719b6928IMG_4471.jpeg', 'student', NULL, NULL, 0),
(911, 'Stuti Dubey ', NULL, '7219074974', 'aradhanasunildubey@gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Test@124', '65f087e784d05', 'student', NULL, NULL, 0),
(912, 'Gauri shankar malgunde ', 'Ektanagar bhigwan road Baramati ', '9172929806', 'gaurimalgunde@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Gauri24', '65f0891abb07d', 'student', NULL, NULL, 0),
(913, 'Gauri shankar malgunde ', NULL, '9172929806', 'gaurimalgunde@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Gauri24', '65f08a2b639ac', 'student', NULL, NULL, 0),
(914, 'Khaire sakshi satish', NULL, '9763802266', 'sakshikhaire2004@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi17', '65f08f8f39675', 'student', NULL, NULL, 0),
(915, 'Yash kisan shinde ', 'A/p.indapur road bandalwadi,contactno=contactno=contactno=contactno= Baramati ', '7666712034', 'yashshinde9697@gmail.com', '7666712034', 'B.A.', NULL, NULL, NULL, NULL, NULL, 'Bcyhmq5A4PQ2@KD', '65f0917744ac8', 'student', NULL, NULL, 0),
(916, 'Sarika navnath pawar ', 'Gunjegaon', '8329836928', 'sarikapawar9646@gmali.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sarika@08', '65f0df041f0bb', 'student', NULL, NULL, 0),
(917, 'SALUNKE OMKAR SANJAY', NULL, '8625939242', 'omkarsalunke1708@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'omkar@2005', '65f0fe97aaf22', 'student', NULL, NULL, 0),
(918, 'Sawant Priyanka dattatray ', NULL, '9657676699', 'P494219@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '1Priyanka', '65f10ac32be39', 'student', NULL, NULL, 0),
(919, 'Aishwarya Vinod Pawar', NULL, '7387766916', 'aishwaryapawar.av04@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'amruta', '65f10bbebf10f', 'student', NULL, NULL, 0),
(920, 'Kale Dnyaneshwari Satish ', NULL, '8530851599', 'dnyaneshwarikale9696@gamil.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Dnyaneshwari@9696', '65f10ce983a10IMG-20231209-WA0002.jpg', 'student', NULL, NULL, 0),
(921, 'Sapkal neha bapu', NULL, '8605907506', 'Nehasapkal27@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@002', '65f10d222693120240302_164320.jpg', 'student', NULL, NULL, 0),
(922, 'Sapkal neha bapu', NULL, '8605907506', 'Nehasapkal27@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Neha@002', '65f10d2dceecc20240302_164320.jpg', 'student', NULL, NULL, 0),
(923, 'Kirti Shravan Dabhade ', NULL, '8788822977', 'kirtidabhade2@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'kirti@2004', '65f10e5ceffb7IMG_20240313_075210.jpg', 'student', NULL, NULL, 0),
(924, 'Payal kiran Atole ', NULL, '7620709421', 'payalatole95@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '9t@K2qy4kYdpkEn', '65f10de9747d1', 'student', NULL, NULL, 0),
(925, 'Shelar aditya chandrakant ', NULL, '9834777989', 'adityashelar35007@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '123456789', '65f110886d243Snapchat-92530554.jpg', 'student', NULL, NULL, 0),
(926, 'Shital sanjay Tilekar ', NULL, '8459902957', 'shitaltilekar29@gmail.com ', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '123456789', '65f110d72028f', 'student', NULL, NULL, 0),
(927, 'Trupti sanjay ghadage ', NULL, '9561530193', 'ghadagetrupti912@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '3kdhJUJMM9TK6@U', '65f1124a381efIMG_20231231_220215.jpg', 'student', NULL, NULL, 0),
(928, 'Atole Tanisha Dattu', NULL, '9156908585', 'atoletanisha@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '123456789', '65f112a7e25ff', 'student', NULL, NULL, 0),
(929, 'Sabale Shivneri Prakash', NULL, '7720057001', 'shivnerisabale9696@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '12345678', '65f112d41693c', 'student', NULL, NULL, 0),
(930, 'Trupti sanjay ghadage ', NULL, '7559426275', 'ghadagetrupti912@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Trupt1', '65f115494f29fIMG_20231231_220215.jpg', 'student', NULL, NULL, 0),
(931, 'Trupti sanjay ghadage ', NULL, '9923242901', 'ghadagetrupti912@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Amrut1', '65f1165e2a8b4IMG_20231231_220215.jpg', 'student', NULL, NULL, 0),
(932, 'Aarati Pratap Gavali', NULL, '8668867047', 'aaratigavali144@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Aarati@2004', '65f1170e18c91', 'student', NULL, NULL, 0),
(933, 'Almas Shabbir Pathan ', NULL, '7020022821', 'almasp117@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'almas0328', '65f141d8d66dd', 'student', NULL, NULL, 0),
(934, 'Trupti sandip jadhav ', NULL, '8793337003', 'truptij838@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'truptij123', '65f1189762ed9', 'student', NULL, NULL, 0),
(935, 'Sayali somnath agalave ', NULL, '7083375397', 'sayaliagalave07@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'sayali2535', '65f118a014f05IMG20230717213702.jpg', 'student', NULL, NULL, 0),
(936, 'Gaikwad pradnya Ramdas ', NULL, '7741802821', 'pradnyagaikwad1711@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'pradnya@1711', '65f11bfc3eaf5IMG-20240227-WA0004.jpg', 'student', NULL, NULL, 0),
(937, 'Trupti sanjay ghadage ', NULL, '9850274881', 'ghadagetrupti912@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Amrut1', '65f11cdd63afaIMG_20231231_220215.jpg', 'student', NULL, NULL, 0),
(938, 'Prachi Bhanudas Memane ', NULL, '9766954798', 'prachimemane2003@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'prachi@1', '65f11e4e73c88', 'student', NULL, NULL, 0),
(939, 'Rutuja Rajendra Thorat ', NULL, '8767653228', 'trutuja190@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rutuja@123', '65f11f9888273', 'student', NULL, NULL, 0),
(940, 'Shubham More', NULL, '9921628482', 'shubhammore3636@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Shubham@2004', '65f121860b0ebIMG-20240313-WA0002.jpg', 'student', NULL, NULL, 0),
(941, 'Rutuja Rajendra Thorat ', NULL, '9730369688', 'trutuja190@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rutuja@123', '65f1214277d95', 'student', NULL, NULL, 0),
(942, 'Mahamuni Prachi Suresh', NULL, '8468867570', 'prachimahamuni@708gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'uxp@Ug72u5edMcg', '65f1223e1a88f', 'student', NULL, NULL, 0),
(943, 'Gadhave Pooja Mahadev ', NULL, '8830911901', 'poojagadhave34@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pooja123', '65f12316c762d', 'student', NULL, NULL, 0),
(944, 'Jyoti Rajendra More ', NULL, '9359159425', 'morejyotirajendra@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Jyoti@123', '65f12295472a2', 'student', NULL, NULL, 0),
(945, 'Kumbhar Punam Nandu', NULL, '7249564593', 'priyakumbharpriyakumbhar@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@puna2608', '65f12296578a6', 'student', NULL, NULL, 0),
(946, 'Kumbhar Punam Nandu', NULL, '7249564593', 'priyakumbharpriyakumbhar@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@pk2608', '65f122f23321d', 'student', NULL, NULL, 0),
(947, 'Kalgavkar Meghana Dattatray ', NULL, '9028720333', 'kalgavkarmegha04@gamil.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '720333Megha', '65f12463f0039Screenshot_20240313-092742.png', 'student', NULL, NULL, 0),
(948, 'Shruti Anil Bhopale ', NULL, '7276691597', 'shrubhopale12@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'pQdi3@W8t3AkKte', '65f124a1241e3', 'student', NULL, NULL, 0),
(949, 'Kumbhar Punam Nandu', NULL, '8793576009', 'priyakumbharpriyakumbhar@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@pk2608', '65f1252945f9d17103023214738615819152738626630.jpg', 'student', NULL, NULL, 0),
(950, 'Soham Vishwas Dhaigude ', NULL, '9307636549', 'dhaygudesoham31@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Soham@2003', '65f1255204231IMG_20220825_115711.jpg', 'student', NULL, NULL, 0),
(951, 'Gophane Arpita Vishwas', NULL, '9890630878', 'gophanearpita1232@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Arpita1', '65f1265ac5267', 'student', NULL, NULL, 0),
(952, 'Saurabh Lashkar', NULL, '9370212955', 'Lashkarsaurabh2@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'saurabh@1234', '65f1263ddc455', 'student', NULL, NULL, 0),
(953, 'Shinde Rohit Sharad ', NULL, '8261969085', 'shindesandesh2221@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shinde@9690', '65f127ec94fd61708497031991.jpg', 'student', NULL, NULL, 0),
(954, 'Aditya Satish Kothmire ', NULL, '8788092826', 'adityakothmire84209@gmail.com', 'M.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'aditya123', '65f12b01e7213IMG_2961.JPG', 'student', NULL, NULL, 0),
(955, 'Saurabh Hagare', NULL, '9975217879', 'sourabhhagare44@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sushila@7879@', '65f12ae7df472', 'student', NULL, NULL, 0),
(956, 'Onkar Sushant Kharage ', NULL, '8637785704', 'onkarkharge@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'onkar2003', '65f12ca41eb53', 'student', NULL, NULL, 0),
(957, 'Shendge Aarti Machindra', NULL, '8626010875', 'aartishendge448@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Saarti@123', '65f130881db7a', 'student', NULL, NULL, 0),
(958, 'Wanave Komal Anil', NULL, '9307038756', 'kajalwanave2000@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '454545', '65f131721f2ec17103056336523914806757986566248.jpg', 'student', NULL, NULL, 0),
(959, 'Dhaygude Rutuja Anil', NULL, '7350396794', 'rutujadhaygude1209@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pass@123', '65f13227af247', 'student', NULL, NULL, 0),
(960, 'Lakade Rutuja Ashok', NULL, '8080784933', 'rlakade4@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'LLnAMiyz27CX@7P', '65f13212e4075IMG_20240304_121605.jpg', 'student', NULL, NULL, 0),
(961, 'Shelar Snehal Mahaveer ', NULL, '7709734190', 'snehalshelar8216@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Snehal@123', '65f1324453f6aIMG_20240226_202609.jpg', 'student', NULL, NULL, 0),
(962, 'Shelar Snehal Mahaveer ', NULL, '7709734190', 'snehalshelar8216@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Snehal@123', '65f13250f0abaIMG_20240226_202609.jpg', 'student', NULL, NULL, 0),
(963, 'Shelar Snehal Mahaveer ', NULL, '7709734190', 'snehalshelar8216@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Snehal@123', '65f1325f7a19fIMG_20240226_202609.jpg', 'student', NULL, NULL, 0),
(964, 'Shivani Shinde ', 'Baramati ', '8149773484', 'shindeshivani2603@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'shiva02', '65f134529e45a', 'student', NULL, NULL, 0),
(965, 'Chavan Suraj Rahul ', NULL, '9172951664', 'surajchavan6449@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Suraj@6449', '65f136d191a5fIDPhoto_20240105_132849.jpg', 'student', NULL, NULL, 0),
(966, 'Radhika dnyandeo kale ', NULL, '7028819063', 'radhikakale260@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'qSWb7Z2@V9JjmpW', '65f13658e9256', 'student', NULL, NULL, 0),
(967, 'Throat Tejasvini Pramod', NULL, '9322460160', 'tejasvinithorat03@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'tejas03', '65f1365ca39b1', 'student', NULL, NULL, 0),
(968, 'Choudhari Sanjana Deepak ', NULL, '9172557544', 'sanjanachoudhari133@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sanju@28032903', '65f13704eae54', 'student', NULL, NULL, 0),
(969, 'Puja somnath kamble', NULL, '9823738380', 'pujakamble2005@gmail.com ', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'puja12', '65f1385c9a6d1', 'student', NULL, NULL, 0),
(970, 'Puja somnath kamble', NULL, '9922442510', 'pujakamble837@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '9922442518', '65f139dc1bad3', 'student', NULL, NULL, 0),
(971, 'Puja somnath kamble', NULL, '9922442510', 'pujakamble837@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'puja23', '65f13a8482096', 'student', NULL, NULL, 0),
(972, 'Ritesh Pramod Deshmukh ', 'A.P. Tembhurni   Tal - Madha  Dist - Solapur', '8149313033', 'Luckey96k@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '8V2gXF@MkMVCrKw', '65f13d7f5a9ce', 'student', NULL, NULL, 0),
(973, 'Pratik kundlik mutekar', NULL, '7397982867', 'pratikmutekar9@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'pratik2004', '65f13cfaa29a2image.jpg', 'student', NULL, NULL, 0),
(974, 'Prathamesh Prakash Jagtap ', NULL, '9172100263', 'prathamashjagtap@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'prathamesh2003', '65f13e6323c1017103088569705077958690071652367.jpg', 'student', NULL, NULL, 0),
(975, 'Aishwarya Arun kaule ', NULL, '8975468372', 'aishwaryakaule@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Aishu@123', '65f1421088793', 'student', NULL, NULL, 0),
(976, 'Chatur Pradnya Navnath ', NULL, '9975369164', 'pradnyachatur12@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pass@123', '65f1578e322e8', 'student', NULL, NULL, 0),
(977, 'vaishnavi tanaji machale', '', '8767818105', 'vaishnavipawar1819@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'vaishu1', '65f1553b599a3', 'student', NULL, NULL, 0),
(978, 'Gavali Nikita Dnyaneshwar ', NULL, '9022632550', 'nikitagavali05@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Pass@123', '65f156613f4fe', 'student', NULL, NULL, 0),
(979, 'Jadhav Tanushka Dnyaneshwar ', NULL, '8698118856', 'jadhavtd25@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Tanushka2004', '65f15c671b95c', 'student', NULL, NULL, 0),
(980, 'Puja somnath kamble ', 'MIDC Baramathi ', '9923964242', 'pujakamble837@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'vE27b_0$J$8YVvx', '65f1643be9d4c', 'student', NULL, NULL, 0),
(981, 'Puja somnath kamble ', NULL, '9762724087', 'pujakamble837@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'IZSZLwO$5_0_AMa', '65f1635e3dada', 'student', NULL, NULL, 0),
(982, 'Navgire Apoorwa Sanjay', NULL, '9822249397', 'apoorwanavgire@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'dx5GVggzHTEd2z@', '65f16e9548837', 'student', NULL, NULL, 0),
(983, 'Hirave Swapnali Sudam ', NULL, '7821840418', 'hiraveswapnali4@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '21122005', '65f16ee60d035', 'student', NULL, NULL, 0),
(984, 'Thorat Santoshi satish ', NULL, '7972373137', 'santoshithorat122@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'santoshi23', '65f16f5256cfb', 'student', NULL, NULL, 0),
(985, 'Suryavanshi sonali sandip ', NULL, '8805828655', 'sonaliisuryawanshi6666@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Son@li&123', '65f176ce0674320221217_112418.jpg', 'student', NULL, NULL, 0),
(986, 'Suryavanshi sonali sandip ', NULL, '9623583487', 'sonalisuryawanshi6666@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Son@li&123', '65f17a621f6d620221217_112418.jpg', 'student', NULL, NULL, 0),
(987, 'Atole Sakshi Sunil ', NULL, '9923209798', 'Pravinmhetre048@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Sakshi123atole', '65f178f35aee7', 'student', NULL, NULL, 0),
(988, 'Zargad sakshi Suresh ', NULL, '8010340173', 'sakshizargad22@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'qvCZXY@zY7pMF@J', '65f26b866ddb8', 'student', NULL, NULL, 0),
(989, 'Priti ramdas lokhande', NULL, '9604886142', 'lokhandepriti17@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Priti@2004', '65f1934d950c0', 'student', NULL, NULL, 0),
(990, 'Jadhav Tanvi Rajendra', NULL, '9579658791', 'tanvijadhav0758@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Tanu123', '65f1949baa19b', 'student', NULL, NULL, 0),
(991, 'Lagad Pratiksha Sanjay', NULL, '8010091729', 'pratikshalagad67@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@Pratu123', '65f1957c96f46', 'student', NULL, NULL, 0),
(992, 'Pragti dattatray taware', NULL, '9657374253', 'Pragti taware214@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'pragati214', '65f198b28eba0', 'student', NULL, NULL, 0),
(993, 'Savali phadtare', NULL, '8010379502', 'savaliphadtare2026@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '@SS@@VXmi9Ys7jg', '65f1a311ceb76', 'student', NULL, NULL, 0),
(994, 'Rasal kiran pralhad ', NULL, '9604795864', 'rasalkiran2004@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'kiran123', '65f1a7738b5b0', 'student', NULL, NULL, 0),
(995, 'Palve Bhagyashri Sunil', NULL, '8010187956', 'Palvebhagyashri107@gamail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Bhagya1234', '65f1b2711d1ee', 'student', NULL, NULL, 0),
(996, 'Harshwardhan thorat', NULL, '7350809269', 'harshvardhanthorat55@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'harshu@1234', '65f1bb0e02797', 'student', NULL, NULL, 0),
(997, 'Mohite Prem Tanaji ', NULL, '9637798377', 'premtmohite9670@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'prem9670', '65f24338b84d7', 'student', NULL, NULL, 0),
(998, 'Sakshi hanumant khartode ', NULL, '8788605096', 'sakshikhartode2@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'sakshi7123', '65f25a658f29c', 'student', NULL, NULL, 0),
(999, 'Siddhi Dnyaneshwar Phadtare ', NULL, '9322871303', 'phadtaresiddhi04@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Sid_J_4', '65f25bf7f15cf', 'student', NULL, NULL, 0);
INSERT INTO `tbl_registration` (`id`, `fname`, `address`, `contactno`, `email`, `faculty`, `year`, `gender`, `stateid`, `districtid`, `cityid`, `enquiryid`, `password`, `imagename`, `role`, `isdeleted`, `addedby`, `updatedby`) VALUES
(1000, 'Rasal kiran pralhad ', NULL, '9923642084', 'rasalkiran2004@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'KIRAN123', '65f25d14e8e06', 'student', NULL, NULL, 0),
(1001, 'Virendra Tanaji Rakate ', NULL, '9082111484', 'virendrarakate1973@gmail.com', 'B.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '9082111484V', '65f26527c35f9IMG-20240301-WA0003.jpg', 'student', NULL, NULL, 0),
(1002, 'Devkar rutuja prabhakar', NULL, '9822300457', 'Devkarrutuja755@ gmail .com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@R2005', '65f274fee5b3c', 'student', NULL, NULL, 0),
(1003, 'Vasim Rajjak Inamdar', 'Baramati,contactno= Devalgoan Rasal', '8468894268', 'inamdarvasim25@gmail.com', '8468894268', 'B.B.A.(C.A.)', NULL, NULL, NULL, NULL, NULL, 'vasiminamdar', '65f275c60f6f7', 'student', NULL, NULL, 0),
(1004, 'Kulkarni Rutuja Ashok ', NULL, '9823610683', 'rutujakulkarni7278@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Krutu@9823', '65f296099cc1c', 'student', NULL, NULL, 0),
(1005, 'Sayali Sandip Mandhare ', NULL, '8308281067', 'Sayalimandhare179@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'zFpCrhJF2hE@rdy', '65f2861204c2d', 'student', NULL, NULL, 0),
(1006, 'Parhar vinayak popat ', NULL, '8625913712', 'ganeshparhar828@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'G@1234', '65f293446e4eaIMG-20240123-WA0001.jpg', 'student', NULL, NULL, 0),
(1007, 'Shegar shubham Dattatray', NULL, '7038421243', 'Shegarshubham67@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'shubham2004', '65f29454ce33c1710396481494424120451490974793.jpg', 'student', NULL, NULL, 0),
(1008, 'THORAT PARAG PRAMOD', NULL, '7020239001', 'pratuthorat108@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'P@1234', '65f294dca359a17103966226891434869734355914087.jpg', 'student', NULL, NULL, 0),
(1009, 'Kadam Pratiksha dilip ', NULL, '7620679657', 'Kadampratiksha530@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Son@li&123', '65f296b2a267d', 'student', NULL, NULL, 0),
(1010, 'Shinde srushti Shivaji', NULL, '8080797223', '', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Son@li&123', '65f298773ca72', 'student', NULL, NULL, 0),
(1011, 'Pratik ', NULL, '8087334964', 'pratikpakhale807@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'MH11@phaltan', '65f2a275aafc817104000967137847929953502770471.jpg', 'student', NULL, NULL, 0),
(1012, 'Tushar jitendra mangarule ', NULL, '8308790262', 'tusharjitendramangrule07@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'tushar@112233', '65f2a2e1693fbIMG_5051.heic', 'student', NULL, NULL, 0),
(1013, 'Tushar jitendra mangarule ', NULL, '8308790262', 'tusharjitendramangrule07@gmail.com', 'B.B.A.(C.A.)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'tushar@112233', '65f2a2e1693fbIMG_5051.heic', 'student', NULL, NULL, 0),
(1014, 'Somnath sandip kharade ', 'Karkhel ', '8446058402', 'somnathkharade8@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'soma_8402', '65f2b20d59168', 'student', NULL, NULL, 0),
(1015, 'Sharada hole', NULL, '8208843007', 'somnathkharade8@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Soma_8402', '65f2b30aa6a7c', 'student', NULL, NULL, 0),
(1016, 'Hole sharda savata', NULL, '8208843007', 'Shardahole982@gmail.com', 'B.Com.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'sharada122004', '65f2b30aa6a7c', 'student', NULL, NULL, 0),
(1017, 'Patole Pooja Kailas ', NULL, '9021461637', 'poojapatole1404@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pooja@123', '65f2b7c9ba10cInShot_20230910_070357110.jpg', 'student', NULL, NULL, 0),
(1018, 'Vrushali madhukar lagad ', NULL, '7620944596', 'rushilagad09@gmail.com', 'B.B.A.(C.A.)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, '@vrushai2003', '65f2cff2cbc7f', 'student', NULL, NULL, 0),
(1019, 'Shubham Dnyandeo Mane ', NULL, '7769002595', 'shubhammane3605@gmail.com', 'B.Sc.(Computer Science)', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '@Shubham05', '65f2d1369df87Screenshot_2023-08-30-11-30-04-69_9515eed95ee72b7635bf2fb1017e37cd (1).jpg', 'student', NULL, NULL, 0),
(1020, 'Salve mayur harishchandra ', NULL, '7709560982', 'mayursalve206@gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'Mayur1208', '65f3dfcd25ce3', 'student', NULL, NULL, 0),
(1021, 'Harshada Santosh Raut ', 'A/p-tawashi', '9923246419', 'harshada8329@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Mahi2507', '65f45ceb6ab50', 'student', NULL, NULL, 0),
(1022, 'Tanuja Santosh Raut', NULL, '8379943536', 'tanujaraut8379@gmail.com', 'B.A.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'tanuja1782003', '65f432c8f09171710502558361964235616211135173.jpg', 'student', NULL, NULL, 0),
(1023, 'cJgnimjGBI', NULL, 'JpWwHvOcDt', 'brenda_mccrystalmyds@outlook.com', 'M.Sc.(Biotech)', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '4pRnEzSuHev9!', '65f4337fadef4', 'student', NULL, NULL, 0),
(1024, 'cJgnimjGBI', NULL, 'JpWwHvOcDt', 'brenda_mccrystalmyds@outlook.com', 'M.Sc.(Biotech)', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '4pRnEzSuHev9!', '65f43381b3fc8', 'student', NULL, NULL, 0),
(1025, 'Shreya Datta Salunke ', NULL, '9359212664', 'salunkeshreya20@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shreya@09', '65f4530e1d572', 'student', NULL, NULL, 0),
(1026, 'Pragati Dattatray Tawre', NULL, '1234564895', '', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pragati123', '65f558086b6bd', 'student', NULL, NULL, 0),
(1027, 'Pragati Dattatray Tawre ', NULL, '1234567896', '', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pragati1234', '65f5586b363a3', 'student', NULL, NULL, 0),
(1028, 'Poonam vasant ghode', NULL, '8329166407', 'ghodepoonam984@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'poonam@6161', '65f561be25488IMG_20210213_115953.jpg', 'student', NULL, NULL, 0),
(1029, 'Giramkar Sayali Bapurav ', NULL, '8329531629', 'giramkarsayali@gmail.com', 'B.Sc.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sayali7179', '65f7a683b2653', 'student', NULL, NULL, 0),
(1030, 'Sayali prakash atole', NULL, '9623940825', 'sayaliatole007@gmail.com', 'B.Com.', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Sayali@19', '65f7b9989a04a', 'student', NULL, NULL, 0),
(1031, 'Omkar Somnath Waghale', NULL, '7350317687', 'omkarwaghale1980@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Omkar@2023', '65f7d683c85f0', 'student', NULL, NULL, 0),
(1032, 'Sakshi Netaji Khade ', NULL, '9322385270', 'sakshikhade2104@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'SAKSHI@07', '65f936f584229', 'student', NULL, NULL, 0),
(1033, 'Saurav Maruti Tikute ', NULL, '7058594665', 'tikutesaurabh@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'saurav@$123', '65f9adf29c181', 'student', NULL, NULL, 0),
(1034, 'Misal Vaibhav Misal', NULL, '8766088385', 'Vaibhavmisal200@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'vaibhav@123', '65fa56ba741d8', 'student', NULL, NULL, 0),
(1035, 'Bagade Rahul Santosh', NULL, '8308305137', 'bagaderahul2417@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'R@1234', '65fa5b595caba17109061811016030462920987743032.jpg', 'student', NULL, NULL, 0),
(1036, 'Misal Vaibhav Anil', NULL, '9307209553', 'Misal Vaibhav Anil', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'V@1234', '65fa5b6e3b51dIMG-20240320-WA0000.jpg', 'student', NULL, NULL, 0),
(1037, 'Bhapkar Jyotinjay Mohan', NULL, '7841960300', 'bhapkarjyotinjay@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'J@1234', '65fa5c4320e9317109064054025058888359449842896.jpg', 'student', NULL, NULL, 0),
(1038, 'Tambe shrinivas Anil ', NULL, '9136015959', 'shreetambe42@gamil.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shree@123', '65fa5d48091df17109066321554891335204649892232.jpg', 'student', NULL, NULL, 0),
(1039, 'Ajay govind shinde ', NULL, '9699798438', 'as7389594@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'GqzmcWY@8hL7a@4', '65fa7b2fd449d', 'student', NULL, NULL, 0),
(1040, 'Ajay govind shinde ', NULL, '9049696403', 'as7389594@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'ajay@123', '65fa7bb0448cbVID20240320113109.mp4', 'student', NULL, NULL, 0),
(1041, 'Shinde vaishnavi govind', NULL, '8308836103', 'Vaishushinde1122@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '12345@123', '65fab65f5999d', 'student', NULL, NULL, 0),
(1042, 'Ashlesha Ajit More', NULL, '8432833421', 'Ashleshamore7100@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'More@7100', '65faf032aa5ec', 'student', NULL, NULL, 0),
(1043, 'Rutika Jagannath parekar ', NULL, '9172877496', 'rutikaparekar98@gmail.com', 'B.Sc.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, 'R12345678', '65fb22a96a63f1710925887352.jpg', 'student', NULL, NULL, 0),
(1044, 'Shinde Siddhi Gajanan', NULL, '8857852827', 'shindesiddhi909@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'shinde909', '65fd36efd9e90IMG_20240321_091618.jpg', 'student', NULL, NULL, 0),
(1045, 'Shinde Siddhi Gajanan', NULL, '8857852827', 'shindesiddhi909@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'shinde05', '65fd36efd9e90IMG_20240321_091618.jpg', 'student', NULL, NULL, 0),
(1046, 'Shinde Siddhi Gajanan', NULL, '8857852827', 'shindesiddhi909@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shinde05', '65fd36efd9e90IMG_20240321_091618.jpg', 'student', NULL, NULL, 0),
(1047, 'Shinde Siddhi Gajanan', NULL, '7821905167', 'shindesiddhi909@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shinde05', '65fd34c6c2ab4IMG_20240321_091618.jpg', 'student', NULL, NULL, 0),
(1048, 'Gore Nikita Rajaram', NULL, '9860165848', 'gorenikita555@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Gore555', '66027496c91f0IMG-20240326-WA0014.jpg', 'student', NULL, NULL, 0),
(1049, 'Bhong Pranita Somnath', NULL, '7767927992', 'bhongpranita435@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pranita05', '66027aa0bc387IMG-20240326-WA0017.jpg', 'student', 1, NULL, 0),
(1050, 'Dhale Trupti Lalaso ', NULL, '8698309938', 'truptidhale678@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'trupti124141', '66038fadddc28IMG20240322151556.jpg', 'student', NULL, NULL, 0),
(1051, 'Gawde Shweta Gopichand', NULL, '7387324645', 'Shwetagawde28gmail. com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shweta28', '6603d4cd4be1bIMG-20240327-WA0002.jpg', 'student', NULL, NULL, 0),
(1052, 'Patane Dnyaneshwari Shrikant', NULL, '7972407078', 'Dnyanesgwaripatane@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Patane05', '6605a37e0482fIMG_20240328_223529.jpg', 'student', NULL, NULL, 0),
(1053, 'Shinde Ajay Govind', NULL, '8262824112', 'as7389594@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shinde82', '6606ab3e76f90IMG-20240329-WA0004.jpg', 'student', NULL, NULL, 0),
(1054, 'Jagtap Pooja Ramhari ', NULL, '9022581984', 'poojajagtap362gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Pooja2003', '6606bbca78a66', 'student', NULL, NULL, 0),
(1055, 'Rutuja Bhaskar Gholve', NULL, '7875589000', 'gholverutu@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Rutu2003', '6606bc6125027', 'student', NULL, NULL, 0),
(1056, 'Arati Jagtap', NULL, '8767633189', 'jagtaparati119@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Arti2003', '6606c99783d34', 'student', NULL, NULL, 0),
(1057, 'NIKITA RAJESH JADHAV', NULL, '8617415573', 'nikitajadhav12341234qwe@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikita2002', '6606ca4371704', 'student', NULL, NULL, 0),
(1058, 'CHAUDHARI SHIVANI DILIP ', NULL, '9322351631', 'shivanichaudhari036@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Shivani2003', '6606ce7dda409', 'student', NULL, NULL, 0),
(1059, 'Salunkhe Tanuja Dhanaji', NULL, '9511921292', 'tanujasalunkhe2003@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Tanuja@123', '660b7157e6c09IMG-20231128-WA0018.jpg', 'student', NULL, NULL, 0),
(1060, 'Dhale Trupti Lalaso ', NULL, '7249852724', 'truptidhale678@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '124141', '660f87daf1238IMG20240322151556.jpg', 'student', NULL, NULL, 0),
(1061, 'Dhale Trupti Lalaso ', NULL, '7249852724', 'truptidhale678@gmail.com', 'B.Com.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '124141', '660f87deda91aIMG20240322151556.jpg', 'student', NULL, NULL, 0),
(1062, 'Nagawade Sakshi Balaso ', NULL, '8856803281', 'sakshinagawade3281@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'dva3281', '6613fbd8734d5', 'student', 1, NULL, 0),
(1063, 'Nagawade Sakshi Balaso ', NULL, '8856803281', 'sakshinagawade3281@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, '1@Sakshi', '6613fe5de8448', 'student', NULL, NULL, 0),
(1064, 'Komal Arun Borate', NULL, '9657232927', 'komalborate931@gmail.com', 'M.Sc.(Computer Science)', 'S.Y.', NULL, NULL, NULL, NULL, NULL, 'Komal@123', '661522675fa8e5a7cb30721407086d26f3e66b14ff5e1.jpg', 'student', 1, NULL, 0),
(1065, 'Nikhil Anil Mane ', NULL, '7977503586', 'nikkmane2005@gmail.com', 'B.A.', 'F.Y.', NULL, NULL, NULL, NULL, NULL, '161105', '66176a2dc1840', 'student', 1, NULL, 0),
(1066, 'Nikita Arun Thorat ', NULL, '8999727788', 'thorathnikita@gmail.com', 'B.A.', 'T.Y.', NULL, NULL, NULL, NULL, NULL, 'Nikita2002', '66432440503e25e3bcaf7b7c33Chrysanthemum.jpg', 'student', 1, NULL, 0),
(1067, '', '', '', NULL, '', '', 'male', 1, 1, 1, 1, '', '6627a60a155fc', 'student', 1, 2, 0),
(1068, '', '', '', NULL, '', '', '', 0, 0, 0, 0, '', '', '', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_relation`
--

CREATE TABLE `tbl_relation` (
  `rel_id` int(11) NOT NULL,
  `rel_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_relation`
--

INSERT INTO `tbl_relation` (`rel_id`, `rel_name`) VALUES
(1, 'Father'),
(2, 'Mother'),
(3, 'Teacher'),
(4, 'Gardian');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `sch_id` int(11) NOT NULL,
  `schoolname` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `stateid` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `principal` varchar(40) NOT NULL,
  `count` varchar(40) NOT NULL,
  `addedby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`sch_id`, `schoolname`, `contact`, `address`, `stateid`, `districtid`, `cityid`, `principal`, `count`, `addedby`, `updatedby`, `isdeleted`) VALUES
(1, 'NVD Darfal', '7894561230', 'baramati', 1, 2, 5, 'aaaaa', '45', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school_class`
--

CREATE TABLE `tbl_school_class` (
  `sc_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `sc_division` varchar(50) DEFAULT NULL,
  `sc_student_count` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `isdeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_school_class`
--

INSERT INTO `tbl_school_class` (`sc_id`, `class_id`, `school_id`, `sc_division`, `sc_student_count`, `teacher_id`, `created_at`, `created_by`, `last_updated_at`, `last_updated_by`, `isactive`, `isdeleted`) VALUES
(1, 1, 4, 'A', 35, 5, '2024-05-28 01:51:13', 4, '2024-05-28 01:51:13', 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacancy_type`
--

CREATE TABLE `tbl_vacancy_type` (
  `postid` int(11) NOT NULL,
  `postname` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_vacancy_type`
--

INSERT INTO `tbl_vacancy_type` (`postid`, `postname`) VALUES
(1, 'Principal'),
(2, 'Senior Teacher'),
(3, 'Junior Teacher '),
(4, 'IT Department'),
(5, 'Management'),
(6, 'Marketing'),
(7, 'Office Boy'),
(8, 'Rector'),
(9, 'Other Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_class`
--
ALTER TABLE `mst_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `mst_coordinator`
--
ALTER TABLE `mst_coordinator`
  ADD PRIMARY KEY (`coo_id`),
  ADD KEY `village_id` (`village_id`),
  ADD KEY `coo_type_id` (`coo_type_id`),
  ADD KEY `coo_parent_id` (`coo_parent_id`);

--
-- Indexes for table `mst_coo_type`
--
ALTER TABLE `mst_coo_type`
  ADD PRIMARY KEY (`coo_type_id`);

--
-- Indexes for table `mst_designation`
--
ALTER TABLE `mst_designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `mst_district`
--
ALTER TABLE `mst_district`
  ADD PRIMARY KEY (`dist_id`),
  ADD UNIQUE KEY `state_id` (`state_id`),
  ADD KEY `mst_state_state_id` (`state_id`);

--
-- Indexes for table `mst_login`
--
ALTER TABLE `mst_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `mst_medium`
--
ALTER TABLE `mst_medium`
  ADD PRIMARY KEY (`medium_id`);

--
-- Indexes for table `mst_organization`
--
ALTER TABLE `mst_organization`
  ADD PRIMARY KEY (`org_id`),
  ADD UNIQUE KEY `village_id_2` (`village_id`,`org_type_id`),
  ADD KEY `village_id` (`village_id`),
  ADD KEY `org_type_id` (`org_type_id`);

--
-- Indexes for table `mst_org_type`
--
ALTER TABLE `mst_org_type`
  ADD PRIMARY KEY (`org_type_id`);

--
-- Indexes for table `mst_parent`
--
ALTER TABLE `mst_parent`
  ADD PRIMARY KEY (`parent_id`),
  ADD KEY `village_id` (`village_id`),
  ADD KEY `profession_id` (`profession_id`);

--
-- Indexes for table `mst_profession`
--
ALTER TABLE `mst_profession`
  ADD PRIMARY KEY (`profession_id`);

--
-- Indexes for table `mst_school`
--
ALTER TABLE `mst_school`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `village_id` (`village_id`),
  ADD KEY `medium_id` (`medium_id`),
  ADD KEY `school_type_id` (`school_type_id`);

--
-- Indexes for table `mst_school_type`
--
ALTER TABLE `mst_school_type`
  ADD PRIMARY KEY (`school_type_id`);

--
-- Indexes for table `mst_state`
--
ALTER TABLE `mst_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `mst_student`
--
ALTER TABLE `mst_student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `village_id` (`village_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `mst_taluka`
--
ALTER TABLE `mst_taluka`
  ADD PRIMARY KEY (`tal_id`),
  ADD KEY `fk_dist_id` (`dist_id`);

--
-- Indexes for table `mst_teacher`
--
ALTER TABLE `mst_teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `village_id` (`village_id`),
  ADD KEY `teacher_type_id` (`teacher_type_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `designation_id` (`designation_id`);

--
-- Indexes for table `mst_teacher_type`
--
ALTER TABLE `mst_teacher_type`
  ADD PRIMARY KEY (`teacher_type_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `mst_user_type`
--
ALTER TABLE `mst_user_type`
  ADD PRIMARY KEY (`ut_id`);

--
-- Indexes for table `mst_village`
--
ALTER TABLE `mst_village`
  ADD PRIMARY KEY (`village_id`),
  ADD KEY `fk_tal_id` (`tal_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`cityid`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_coordinator_area`
--
ALTER TABLE `tbl_coordinator_area`
  ADD PRIMARY KEY (`ca_id`),
  ADD KEY `coo_id` (`coo_id`),
  ADD KEY `tal_id` (`tal_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`districtid`);

--
-- Indexes for table `tbl_dtse_admission`
--
ALTER TABLE `tbl_dtse_admission`
  ADD PRIMARY KEY (`da_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `medium_id` (`medium_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `tbl_educationdetails`
--
ALTER TABLE `tbl_educationdetails`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`enquiryid`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `tbl_gallerytype`
--
ALTER TABLE `tbl_gallerytype`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_job_application`
--
ALTER TABLE `tbl_job_application`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_parentsdetails`
--
ALTER TABLE `tbl_parentsdetails`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `tbl_reff`
--
ALTER TABLE `tbl_reff`
  ADD PRIMARY KEY (`reff_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_relation`
--
ALTER TABLE `tbl_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `tbl_school`
--
ALTER TABLE `tbl_school`
  ADD PRIMARY KEY (`sch_id`);

--
-- Indexes for table `tbl_school_class`
--
ALTER TABLE `tbl_school_class`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_class`
--
ALTER TABLE `mst_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_coordinator`
--
ALTER TABLE `mst_coordinator`
  MODIFY `coo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_coo_type`
--
ALTER TABLE `mst_coo_type`
  MODIFY `coo_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_designation`
--
ALTER TABLE `mst_designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_district`
--
ALTER TABLE `mst_district`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_login`
--
ALTER TABLE `mst_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mst_medium`
--
ALTER TABLE `mst_medium`
  MODIFY `medium_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_organization`
--
ALTER TABLE `mst_organization`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_org_type`
--
ALTER TABLE `mst_org_type`
  MODIFY `org_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_parent`
--
ALTER TABLE `mst_parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_profession`
--
ALTER TABLE `mst_profession`
  MODIFY `profession_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_school`
--
ALTER TABLE `mst_school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_school_type`
--
ALTER TABLE `mst_school_type`
  MODIFY `school_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_state`
--
ALTER TABLE `mst_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_student`
--
ALTER TABLE `mst_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mst_taluka`
--
ALTER TABLE `mst_taluka`
  MODIFY `tal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_teacher`
--
ALTER TABLE `mst_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mst_teacher_type`
--
ALTER TABLE `mst_teacher_type`
  MODIFY `teacher_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mst_user_type`
--
ALTER TABLE `mst_user_type`
  MODIFY `ut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mst_village`
--
ALTER TABLE `mst_village`
  MODIFY `village_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_coordinator_area`
--
ALTER TABLE `tbl_coordinator_area`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_dtse_admission`
--
ALTER TABLE `tbl_dtse_admission`
  MODIFY `da_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_school_class`
--
ALTER TABLE `tbl_school_class`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mst_coordinator`
--
ALTER TABLE `mst_coordinator`
  ADD CONSTRAINT `mst_coordinator_ibfk_1` FOREIGN KEY (`village_id`) REFERENCES `mst_village` (`village_id`),
  ADD CONSTRAINT `mst_coordinator_ibfk_2` FOREIGN KEY (`coo_type_id`) REFERENCES `mst_coo_type` (`coo_type_id`),
  ADD CONSTRAINT `mst_coordinator_ibfk_3` FOREIGN KEY (`coo_parent_id`) REFERENCES `mst_coordinator` (`coo_id`);

--
-- Constraints for table `tbl_coordinator_area`
--
ALTER TABLE `tbl_coordinator_area`
  ADD CONSTRAINT `tbl_coordinator_area_ibfk_1` FOREIGN KEY (`coo_id`) REFERENCES `mst_coordinator` (`coo_id`),
  ADD CONSTRAINT `tbl_coordinator_area_ibfk_2` FOREIGN KEY (`tal_id`) REFERENCES `mst_taluka` (`tal_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
