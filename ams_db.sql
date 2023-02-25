-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 10:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'beni', '$2y$10$n44qKkas1BkXO7DD3pgd6.IAfWJ//ExaYTCP7mTpSvhU28uBN8.AO', 'ADMIN ', 'Benipayo', 'profi.jpg', '2018-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `announcementID` varchar(255) DEFAULT NULL,
  `announcement_to` varchar(50) DEFAULT NULL,
  `accesskey` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `announcement_description` varchar(255) DEFAULT NULL,
  `announcement_status` int(11) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `userID`, `announcementID`, `announcement_to`, `accesskey`, `sender`, `receiver`, `departmentID`, `courseID`, `subject`, `announcement_description`, `announcement_status`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 3, 'ANN-20220000001', 'Program Head', 'iLj4iOX72FUshpjlcXF70Pb5OX5X3w4k86MbF0wXUafQbHCdtZt3dqNIO6tF', 'Jade Olosoro', 2, 1, NULL, 'Memo', NULL, 1, '1670129706-jrN.png', '2022-12-04 01:25:06', '2022-12-04 01:25:06'),
(2, 3, 'ANN-20220000002', 'Program Head', 'ICY0VPv3hov53dXZV78nZ9tbtuejJipUyogWsAWzHLFhY5nVTpjad7GbxO92', 'Jade Olosoro', 2, 0, NULL, 'Memo', NULL, 1, '1670129827-Wr1.png', '2022-12-04 01:27:07', '2022-12-04 01:27:07'),
(39, 3, 'ANN-20220000039', 'Program Head', 'oug06vacvCUe1XWUHEYYyeonTAl7yln80nUW8Tnfv4PSeIV9ciQ9G5IBc9A2', 'Jade Olosoro', 2, 0, NULL, 'Memo 1', 'sample announcement', 2, '1670913655-diH.pdf', '2022-12-13 03:10:55', '2022-12-13 03:13:02'),
(40, 2, 'ANN-20220000040', 'Secretary', '9ycBMBQHox0rtIplG0ymTdXEs38qt3ODQx1lnDYeLhgkXLY7nw1hRAd0c3Xn', 'Edward Pornelos', 5, 0, NULL, 'Memo', 'sample announcement', 2, '1670913957-VLd.pdf', '2022-12-13 03:15:57', '2023-01-19 02:00:12'),
(41, 3, 'ANN-20220000041', 'Program Head', 'ynM8lTaXnGdvOHal5eyuvNmrLBvBTD6s2AVRMxQI8ES3nNNbs89L4P8PPPXq', 'Jade Olosoro', 2, 0, NULL, 'Memo sample 1', 'Sample Announcement', 2, '1670920914-oyr.pdf', '2022-12-13 05:11:54', '2023-02-06 20:23:37'),
(42, 2, 'ANN-20220000042', 'Secretary', 'JUOY1QnpxE6CxUpDnRAkyKPYln0JNOvWFXqlZ3MW0X2c4sIbUAz1uEeaJ70k', 'Edward Pornelos', 5, 0, NULL, 'Memo Secretary 1 sample', 'Memo Secretary 1 sample', 2, '1670921257-eiY.pdf', '2022-12-13 05:17:37', '2023-01-19 01:52:44'),
(234, 5, 'ANN-20230000234', 'Faculty', 'bDqqc1N4DPq4saNNoshHVw1475e6Vl7XeyfczMAJbq4bnklhMnFnpmCjqCBH', 'Chedrick Rowy', 45, 0, NULL, 'Edwardasd2', 'Edwardasd2', NULL, '1674296460-66e.png', '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
(235, 5, 'ANN-20230000235', 'Faculty', 'z6gmKeoem81YLfxhwXiOLXDd7s55Pw5DOODys49SfSZlXQaKn17HFGgHE99v', 'Chedrick Rowy', 46, 0, NULL, 'Edwardasd2', 'Edwardasd2', NULL, '1674296460-66e.png', '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
(236, 5, 'ANN-20230000236', 'Faculty', '1M9PPLeLeZOatyD0RxBRJ4c5TQL6okEkeHa1yVNK2ODjLi3cYXUkclRcXqT3', 'Chedrick Rowy', 47, 0, NULL, 'Edwardasd2', 'Edwardasd2', NULL, '1674296460-66e.png', '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
(237, 5, 'ANN-20230000237', 'Faculty', 'bbZLMAIRomSwhXBNUUSHNaKkG7n53LxZ1PzSg4ZRedTTBKp6g3wmTSP2ZKXP', 'Chedrick Rowy', 48, 0, NULL, 'Edwardasd2', 'Edwardasd2', NULL, '1674296460-66e.png', '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
(238, 5, 'ANN-20230000238', 'Faculty', 'lqYudPkS2gCeL7zWGm1xZiS1kVR54DrQjAYPYism2ULQhIZZEzgcAVN4fN5C', 'Chedrick Rowy', 49, 0, NULL, 'Edwardasd2', 'Edwardasd2', NULL, '1674296460-66e.png', '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
(239, 5, 'ANN-20230000239', 'Faculty', 'Vk9eIX2yxI5LFAPwfZwbAxhjhBhluEhd4EFGSX5PqY1Set8HV5UVwMO2s2JL', 'Chedrick Rowy', 51, 0, NULL, 'Edwardasd2', 'Edwardasd2', NULL, '1674296460-66e.png', '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
(240, 5, 'ANN-20230000240', 'Faculty', 'YkHSo09UrVDyIWNkeh0icpnzxG5U1Uedl8pwb9zAPWj6JzqIHED2NuepHA4X', 'Chedrick Rowy', 52, 0, NULL, 'Edwardasd2', 'Edwardasd2', NULL, '1674296460-66e.png', '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
(241, 5, 'ANN-20230000241', 'Faculty', 'aCtUwoCkN3yHII0ee1yXlZXfn3Uv0NjidZogiszu9xvqmOfWlClZyZoEUj0d', 'Chedrick Rowy', 53, 0, NULL, 'Edwardasd2', 'Edwardasd2', NULL, '1674296460-66e.png', '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
(242, 5, 'ANN-20230000242', 'Faculty', 'Z3xPS1ZtP2wFyYJIfbjUYZfmJTdyrnJpdk8XNgmJ9dZmDQPb8poseGFUWR5r', 'Chedrick Rowy', 45, NULL, NULL, 'Memo Specific', 'asdasdasdsadsad', NULL, '1674480252-MUK.png', '2023-01-23 09:54:12', '2023-01-23 09:54:12'),
(243, 5, 'ANN-20230000243', 'Faculty', '21zpyPeqvSqYb5I1JEZy3SkooE9GjUUc4bLPXUVo43IBqRsNFYwj6KS98XKc', 'Chedrick Rowy', 47, NULL, NULL, 'Memo One Fac', 'TestingTestingTesting', NULL, '1674480364-tZt.png', '2023-01-23 09:56:04', '2023-01-23 09:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `faculty_qr` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `attendance_time` time NOT NULL DEFAULT '07:18:04',
  `attendance_date` date NOT NULL DEFAULT '2022-11-07',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `attendance_time` datetime NOT NULL,
  `leave_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `code_course` int(11) DEFAULT NULL,
  `deptID` varchar(45) DEFAULT NULL,
  `acronym` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `code_course`, `deptID`, `acronym`, `name`, `description`, `created_at`, `updated_at`) VALUES
(6, 0, '0', 'BSIT', 'Bachelor of Science in Information Technology', NULL, NULL, NULL),
(7, 1, '1', 'BSECE', 'Bachelor of Science in Electronics Engineering', NULL, NULL, NULL),
(8, 2, '2', 'BSA', 'Bachelor of Science in Accountancy ', NULL, NULL, NULL),
(9, 3, '1', 'BSIE', 'Bachelor of Science in Industrial Engineering', NULL, NULL, NULL),
(10, 4, '3', 'BECE', 'Bachelor of Early Childhood Education', NULL, NULL, NULL),
(11, 5, '2', 'BSE', 'Bachelor of Science in Entrepreneurship', NULL, NULL, NULL),
(12, NULL, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `code_dept` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `acronym` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated-at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code_dept`, `name`, `acronym`, `description`, `created_at`, `updated-at`) VALUES
(1, 0, 'College Of Computer Science And Information Technology', 'BSIT', NULL, NULL, NULL),
(2, 1, 'College Of Engineering', 'BSECE', NULL, NULL, NULL),
(3, 2, 'College Of Business And Accountancy', 'BSA', NULL, NULL, NULL),
(4, 3, 'College Of Education', 'BSIE', NULL, NULL, NULL),
(5, 4, 'Bachelor of Early Childhood Education', 'BECE', NULL, NULL, NULL),
(6, 5, 'Bachelor of Science in Entrepreneurship', 'BSE', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`) VALUES
(11, 'CAS051867234', 'Joseph', 'Benipayo', '309 A Bato-Bato Street Barangay Commonwealth Quezon City', '2001-03-30', '09952659613', 'Male', 1, 3, 'dp.jpg', '2023-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `empID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `accesskey` varchar(255) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `faculty_firstname` varchar(45) DEFAULT NULL,
  `faculty_middlename` varchar(45) DEFAULT NULL,
  `faculty_lastname` varchar(45) DEFAULT NULL,
  `faculty_suffix` varchar(45) DEFAULT NULL,
  `faculty_contact` varchar(45) DEFAULT NULL,
  `faculty_email` varchar(45) DEFAULT NULL,
  `faculty_permission` varchar(45) DEFAULT NULL,
  `faculty_profilepic` varchar(255) DEFAULT NULL,
  `faculty_qr` varchar(255) DEFAULT NULL,
  `faculty_temp_password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `facultyID`, `empID`, `userID`, `departmentID`, `accesskey`, `courseID`, `faculty_firstname`, `faculty_middlename`, `faculty_lastname`, `faculty_suffix`, `faculty_contact`, `faculty_email`, `faculty_permission`, `faculty_profilepic`, `faculty_qr`, `faculty_temp_password`, `created_at`, `updated_at`, `schedule_id`) VALUES
(23, 'FAC-000000023', 'EMP-000000023', 48, 0, 'shHlRZJluHmDBejgC8ar1ne8fVa2nRBu5lc0F2d4HgY603sYIWYWChPHhUrD', 0, 'Edward', 'Corbes', 'Pornelos', NULL, '09684756321', 'edward.corbes.pornelos@gmail.com', '2', NULL, '3001', '12345', '2022-12-11 04:32:02', '2023-01-27 09:50:23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_section_handled`
--

CREATE TABLE `faculty_section_handled` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `sectionID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_section_handled`
--

INSERT INTO `faculty_section_handled` (`id`, `facultyID`, `sectionID`, `created_at`, `updated_at`) VALUES
(1, 'FAC-000000023', 1, '2023-02-04 02:20:48', '2023-02-04 02:20:48'),
(2, 'FAC-000000023', 2, '2023-02-06 22:18:20', '2023-02-06 22:18:20'),
(3, 'FAC-000000023', 3, '2023-02-06 22:34:35', '2023-02-06 22:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subject_schedule`
--

CREATE TABLE `faculty_subject_schedule` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `scheduleID` int(11) DEFAULT NULL,
  `sectionID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_subject_schedule`
--

INSERT INTO `faculty_subject_schedule` (`id`, `facultyID`, `subjectID`, `scheduleID`, `sectionID`, `created_at`, `updated_at`) VALUES
(1, 'FAC-000000023', 4, 1, 1, '2023-02-04 02:20:48', '2023-02-04 02:20:48'),
(2, 'FAC-000000023', 2, 2, 2, '2023-02-06 22:18:20', '2023-02-06 22:18:20'),
(3, 'FAC-000000023', 3, 3, 3, '2023-02-06 22:34:35', '2023-02-06 22:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_weekly_class`
--

CREATE TABLE `faculty_weekly_class` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `week_no` varchar(45) DEFAULT NULL,
  `college` varchar(45) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `scheduleID` int(11) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `accesskey` varchar(255) DEFAULT NULL,
  `is_sent` int(11) DEFAULT 0,
  `is_saved` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_weekly_class`
--

INSERT INTO `faculty_weekly_class` (`id`, `userID`, `week_no`, `college`, `departmentID`, `courseID`, `scheduleID`, `subjectID`, `accesskey`, `is_sent`, `is_saved`, `status`, `created_at`, `updated_at`) VALUES
(7, 48, '1', NULL, 0, 0, NULL, 2, 'udazXD9J8HxzXcPjF3E5OUszP50eCT2h9er4ETpA9ALOCkSBAxPFOQqln8pW', 1, 0, 2, '2023-02-09 00:48:05', '2023-02-12 22:31:49'),
(8, 48, '2', NULL, 0, 0, NULL, 3, 'yN0QZ3WKGskW6R9y7UWSCQXEIKFnTTDm4mHis7PzZTciJmN8qd01xE4Ale6l', 1, 0, 2, '2023-02-09 00:48:28', '2023-02-12 22:31:49'),
(9, 48, '1', NULL, 0, 0, NULL, 4, 'dxuoGYlScg22ByFqACgXOdgBNBsW4k9pLhimbRU816xEftKPG8UAPGVYHOvQ', 1, 0, 2, '2023-02-09 01:00:47', '2023-02-12 22:44:00'),
(10, 48, '2', NULL, 0, 0, NULL, 4, 'iYKDNy5gAImBneNfhMMlnnx7CyAV560ECTJMwt9jvEY3xlx6xcuhCS0pty2Y', 1, 0, 2, '2023-02-09 01:01:12', '2023-02-12 22:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finger_devices`
--

CREATE TABLE `finger_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `serialNumber` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fwc_status`
--

CREATE TABLE `fwc_status` (
  `id` int(11) NOT NULL,
  `statusID` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fwc_status`
--

INSERT INTO `fwc_status` (`id`, `statusID`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'created', NULL, NULL),
(2, 1, 'sent to secretary', NULL, NULL),
(3, 2, 'sent to program head', NULL, NULL),
(4, 3, 'sent to human resources', NULL, NULL),
(5, 4, 'human resources approved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grouped_reports`
--

CREATE TABLE `grouped_reports` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `userID` varchar(45) DEFAULT NULL,
  `fwcID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grouped_reports`
--

INSERT INTO `grouped_reports` (`id`, `facultyID`, `userID`, `fwcID`, `created_at`, `updated_at`) VALUES
(1, 'FAC-000000023', '48', 7, '2023-02-09 00:54:38', '2023-02-09 00:54:38'),
(2, 'FAC-000000023', '48', 8, '2023-02-09 00:54:38', '2023-02-09 00:54:38'),
(3, 'FAC-000000023', '48', 9, '2023-02-09 01:01:26', '2023-02-09 01:01:26'),
(4, 'FAC-000000023', '48', 10, '2023-02-09 01:01:26', '2023-02-09 01:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `id` int(11) NOT NULL,
  `hrID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `hr_firstname` varchar(225) DEFAULT NULL,
  `hr_lastname` varchar(225) DEFAULT NULL,
  `hr_middlename` varchar(225) DEFAULT NULL,
  `hr_email` varchar(225) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`id`, `hrID`, `userID`, `hr_firstname`, `hr_lastname`, `hr_middlename`, `hr_email`, `departmentID`, `created_at`, `updated_at`) VALUES
(1, 'HR-000000001', 3, 'jade', 'sample', 'sample', 'jade.delima.oloroso@gmail.com', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hr_faculty_reports`
--

CREATE TABLE `hr_faculty_reports` (
  `id` int(11) NOT NULL,
  `hrID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `grouped_reportsID` int(11) DEFAULT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `groupTokenID` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_faculty_reports`
--

INSERT INTO `hr_faculty_reports` (`id`, `hrID`, `userID`, `grouped_reportsID`, `facultyID`, `groupTokenID`, `created_at`, `updated_at`) VALUES
(1, 'HR-000000001', 3, 1, 'FAC-000000023', 'O4aU', '2023-02-09 00:54:38', '2023-02-09 00:54:38'),
(2, 'HR-000000001', 3, 2, 'FAC-000000023', 'O4aU', '2023-02-09 00:54:38', '2023-02-09 00:54:38'),
(3, 'HR-000000001', 3, 3, 'FAC-000000023', 'rwwF', '2023-02-09 01:01:26', '2023-02-09 01:01:26'),
(4, 'HR-000000001', 3, 4, 'FAC-000000023', 'rwwF', '2023-02-09 01:01:26', '2023-02-09 01:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `latetimes`
--

CREATE TABLE `latetimes` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `duration` time NOT NULL,
  `latetime_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learning_delivery_mode`
--

CREATE TABLE `learning_delivery_mode` (
  `id` int(11) NOT NULL,
  `fcwID` int(11) DEFAULT NULL,
  `attendees_no` int(11) DEFAULT NULL,
  `absent_no` int(11) DEFAULT NULL,
  `date_covered` date DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `activity_description` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learning_delivery_mode`
--

INSERT INTO `learning_delivery_mode` (`id`, `fcwID`, `attendees_no`, `absent_no`, `date_covered`, `duration`, `activity_description`, `attachments`, `created_at`, `updated_at`) VALUES
(1, 1, 50, 0, '2023-02-05', NULL, 'Testing', '1675502086-81t.png', '2023-02-04 05:44:46', '2023-02-04 05:44:46'),
(2, 2, 50, 0, '2023-02-09', NULL, 'Testing', '1675912583-HJx.png', '2023-02-08 23:46:23', '2023-02-08 23:46:23'),
(3, 3, 43, 7, '2023-02-10', NULL, 'Testing', '1675912612-UM6.png', '2023-02-08 23:46:52', '2023-02-08 23:46:52'),
(4, 4, 40, 10, '2023-02-11', NULL, 'Testing', '1675912643-HD2.png', '2023-02-08 23:47:23', '2023-02-08 23:47:23'),
(5, 5, 50, 0, '2023-02-10', NULL, 'Testing', '1675916171-nAZ.png', '2023-02-09 00:46:11', '2023-02-09 00:46:11'),
(6, 6, 40, 10, '2023-02-10', NULL, 'Testing', '1675916195-jUK.png', '2023-02-09 00:46:35', '2023-02-09 00:46:35'),
(7, 7, 45, 4, '2023-02-09', NULL, 'Testing Report', '1675916285-ifk.png', '2023-02-09 00:48:05', '2023-02-09 00:48:05'),
(8, 8, 40, 10, '2023-02-10', NULL, 'Testing Report', '1675916308-Zk2.png', '2023-02-09 00:48:28', '2023-02-09 00:48:28'),
(9, 9, 43, 7, '2023-02-09', NULL, 'Testing', '1675917047-0EB.png', '2023-02-09 01:00:47', '2023-02-09 01:00:47'),
(10, 10, 42, 8, '2023-02-10', NULL, 'Testing', '1675917072-mxS.png', '2023-02-09 01:01:12', '2023-02-09 01:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `leave_time` time NOT NULL DEFAULT '07:18:04',
  `leave_date` date NOT NULL DEFAULT '2022-11-07',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_25_113026_create_employees_table', 1),
(5, '2019_12_02_141403_create_roles_table', 1),
(6, '2019_12_03_044741_create_schedules_table', 1),
(7, '2019_12_03_045452_create_attendances_table', 1),
(8, '2019_12_03_045912_create_latetimes_table', 1),
(9, '2019_12_03_045930_create_overtimes_table', 1),
(10, '2019_12_03_050030_create_leaves_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2019_12_22_183558_create_checks_table', 1),
(13, '2021_06_05_110414_create_finger_devices_table', 1),
(14, '2022_12_04_110645_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0a34bd4b-9d47-4c01-9f7a-ce4aebf3cb5c', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-03 12:11:33', '2023-02-03 11:52:56', '2023-02-03 12:11:33'),
('0acc5c81-fbab-4a6a-a324-9636467081d2', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-08 23:47:38', '2023-02-08 23:47:38'),
('10b9f927-f267-406b-9085-a389d65e81b2', 'App\\Notifications\\AnnouncementPHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Memo\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/40\\/9ycBMBQHox0rtIplG0ymTdXEs38qt3ODQx1lnDYeLhgkXLY7nw1hRAd0c3Xn\\/announcement\",\"name\":\"Edward Pornelos\"}', '2023-01-19 02:00:12', '2022-12-13 03:15:57', '2023-01-19 02:00:12'),
('16cc7463-3b70-42b0-b654-b1f55e9e6b54', 'App\\Notifications\\AnnouncementPHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Memo\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/38\\/g8TaPiTdePrAFumddmBr6NeBYVkYiWsyIQhoJcKk9LAqRM5phUSE4vFxzESz\\/announcement\",\"name\":\"Edward Pornelos\"}', '2023-01-19 02:00:44', '2022-12-12 07:42:36', '2023-01-19 02:00:44'),
('17862134-f9b8-47d2-8103-22db339f0ed4', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-03 10:55:25', '2023-02-03 10:49:20', '2023-02-03 10:55:25'),
('1816ba0d-caf4-46af-9262-04838abcfbcd', 'App\\Notifications\\AnnouncementHRNotification', 'App\\Models\\User', 2, '{\"subject\":\"Memo\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program_Head\\/Notification\\/37\\/4XifpNOQjlVCWlWcNsickVpF98ixG9yXD7GI8Hns1UQxjbPJjki5ltcLv3ky\\/announcement\",\"name\":\"Jade Olosoro\"}', '2022-12-12 07:40:14', '2022-12-12 07:37:57', '2022-12-12 07:40:14'),
('18a775ac-566b-46c3-adae-bec70d9b85c6', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 45, '{\"subject\":\"Edwardasd2\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Notification\\/234\\/bDqqc1N4DPq4saNNoshHVw1475e6Vl7XeyfczMAJbq4bnklhMnFnpmCjqCBH\\/announcement\",\"name\":\"Chedrick Rowy\"}', NULL, '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
('1ced89ea-68d7-483d-a395-e5960f6962a5', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 11:41:34', '2023-02-03 11:41:34'),
('231d4e7b-b50c-49ca-aaf8-f9bf2cb552e5', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 47, '{\"subject\":\"Memo One Fac\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Notification\\/243\\/21zpyPeqvSqYb5I1JEZy3SkooE9GjUUc4bLPXUVo43IBqRsNFYwj6KS98XKc\\/announcement\",\"name\":\"Chedrick Rowy\"}', NULL, '2023-01-23 09:56:05', '2023-01-23 09:56:05'),
('24320a9b-08d7-46b6-857b-e8fd12751f5f', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-09 00:47:42', '2023-02-09 00:47:42'),
('25148470-9dea-4f6f-938d-7b99e56cdc03', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 10:49:24', '2023-02-03 10:49:24'),
('25b86a55-09b1-4d3b-8ef0-598666f38a51', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 11:48:02', '2023-02-03 11:48:02'),
('2698ded0-613e-4c11-bd59-c7d2ccb51962', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 11:52:59', '2023-02-03 11:52:59'),
('272fba99-06a5-4699-bca5-0134bdee74cf', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"testing\",\"name\":\"Sample User\"}', NULL, '2023-02-03 00:38:49', '2023-02-03 00:38:49'),
('27de1f1d-9da3-46c3-997b-38b9b02369b7', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 48, '{\"subject\":\"Testing Subject\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Faculty\\/Schedules\",\"name\":\"Sample Sample\"}', NULL, '2023-02-06 22:18:20', '2023-02-06 22:18:20'),
('371fe61b-1b62-459e-a61b-82d48b7a87a0', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 46, '{\"subject\":\"Edwardasd2\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Notification\\/235\\/z6gmKeoem81YLfxhwXiOLXDd7s55Pw5DOODys49SfSZlXQaKn17HFGgHE99v\\/announcement\",\"name\":\"Chedrick Rowy\"}', NULL, '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
('3a625573-2bd5-45b0-b7ea-13f95e3edaf6', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Testing Subject\",\"link\":\"testing link\",\"name\":\"Edward Pornelos\"}', NULL, '2023-02-12 22:20:04', '2023-02-12 22:20:04'),
('3c0a2fcc-8b52-4d66-a7d7-616592c84c12', 'App\\Notifications\\AnnouncementHRNotification', 'App\\Models\\User', 2, '{\"subject\":\"Memo\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program_Head\\/Notification\\/6\\/P40YpS3fw3ty92DmQ9CjicPLrNwNnG04iGfb6LHCIxx2e3Vb6Kr0oIs3LQE7\\/announcement\",\"name\":\"Jade Olosoro\"}', '2022-12-04 04:55:26', '2022-12-04 04:00:32', '2022-12-04 04:55:26'),
('447bb68e-2777-4136-ba9d-68807786e4ce', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 49, '{\"subject\":\"Edwardasd2\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Notification\\/238\\/lqYudPkS2gCeL7zWGm1xZiS1kVR54DrQjAYPYism2ULQhIZZEzgcAVN4fN5C\\/announcement\",\"name\":\"Chedrick Rowy\"}', NULL, '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
('45948ed0-8c70-4c3a-bde5-bba5065a2f66', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 11:45:22', '2023-02-03 11:45:22'),
('481fb31c-2297-424a-8933-32afe9eae8c8', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Compiled Faculty Report\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program_Head\\/Notification\\/FAC-000000023\\/rwwF\\/reports\",\"name\":\"Edward Pornelos\"}', '2023-02-12 23:07:39', '2023-02-12 22:44:00', '2023-02-12 23:07:39'),
('4e42ddf3-2a8c-4164-a76f-e3b105ee8a26', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-08 23:49:00', '2023-02-04 05:46:00', '2023-02-08 23:49:00'),
('51462baf-951b-4d28-a098-67907ab5450b', 'App\\Notifications\\AnnouncementPHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Memo Secretary 1 sample\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/42\\/JUOY1QnpxE6CxUpDnRAkyKPYln0JNOvWFXqlZ3MW0X2c4sIbUAz1uEeaJ70k\\/announcement\",\"name\":\"Edward Pornelos\"}', '2023-01-19 01:52:44', '2022-12-13 05:17:37', '2023-01-19 01:52:44'),
('56e01d15-e12f-48a1-a9c7-a25fdc0b8501', 'App\\Notifications\\AnnouncementHRNotification', 'App\\Models\\User', 2, '{\"subject\":\"Memo 2\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program_Head\\/Notification\\/8\\/RYw0U1bACKka0kef3gp3vsbUVuM4noHMldrG1BmhndQGFQituIkYxZWyUi3L\\/announcement\",\"name\":\"Jade Olosoro\"}', '2022-12-04 05:07:29', '2022-12-04 04:57:46', '2022-12-04 05:07:29'),
('5b00625c-8c72-4e1e-9782-fd2aed18a342', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"testing\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 04:03:25', '2023-02-03 04:03:25'),
('5c300156-2c5b-4964-af88-1cc93171d2ae', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"testing\",\"name\":\"Sample User\"}', NULL, '2023-02-03 00:38:49', '2023-02-03 00:38:49'),
('5d991e61-8521-4910-8f76-5c62334956dc', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Testing Subject\",\"link\":\"testing link\",\"name\":\"Edward Pornelos\"}', NULL, '2023-02-12 08:56:28', '2023-02-12 08:56:28'),
('5f4a610c-6687-4946-a56d-90d8b3f8288a', 'App\\Notifications\\AnnouncementHRNotification', 'App\\Models\\User', 2, '{\"subject\":\"Memo\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program_Head\\/Notification\\/7\\/yUCkRb3y4oJcL9azLMxM5qmAC90Is46x7eS47Hai2hpLSiXFKtAwUigZzN4l\\/announcement\",\"name\":\"Jade Olosoro\"}', '2022-12-04 04:55:26', '2022-12-04 04:21:34', '2022-12-04 04:55:26'),
('63717589-55c5-4766-960c-8195afb99572', 'App\\Notifications\\AnnouncementPHNotification', 'App\\Models\\User', 5, '{\"subject\":\"Memo Secretary\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/13\\/YzQcDXGoh542JIxiSwOFVWka4Pi6xotQB9wGZUIkpo5vaF4KECNMPq0vD1Ud\\/announcement\",\"name\":\"Edward Pornelos\"}', '2023-01-19 02:26:11', '2022-12-04 07:01:31', '2023-01-19 02:26:11'),
('659cb39d-d48d-404a-b21c-063cb6ba748d', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"testing\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 04:03:28', '2023-02-03 04:03:28'),
('66b1df5e-29a7-4fd1-884e-15e3c2d17f29', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-03 11:50:48', '2023-02-03 11:47:57', '2023-02-03 11:50:48'),
('6f32c0e2-48e8-45ea-94de-ad01062d4415', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-04 05:46:03', '2023-02-04 05:46:03'),
('788a0dc3-2c33-4692-9282-9db04cbc79e0', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-09 00:48:48', '2023-02-09 00:47:38', '2023-02-09 00:48:48'),
('7c5409c6-9188-4eee-b692-e6b3ce10f31d', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Testing Subject\",\"link\":\"testing link\",\"name\":\"Edward Pornelos\"}', NULL, '2023-02-10 01:34:46', '2023-02-10 01:34:46'),
('7caaa2dd-dc2b-4070-a836-56015a4ff468', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"testing\",\"name\":\"Sample User\"}', NULL, '2023-02-03 00:40:38', '2023-02-03 00:40:38'),
('87c38569-2498-49ef-90e3-e03f0a0bd4fa', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/rwwF\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-09 01:01:45', '2023-02-09 01:01:33', '2023-02-09 01:01:45'),
('87f4a42d-c3be-470f-9fd1-4a22dbea8d0b', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 51, '{\"subject\":\"Edwardasd2\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Notification\\/239\\/Vk9eIX2yxI5LFAPwfZwbAxhjhBhluEhd4EFGSX5PqY1Set8HV5UVwMO2s2JL\\/announcement\",\"name\":\"Chedrick Rowy\"}', NULL, '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
('8d8b7f48-9bf1-49e4-bdad-223d6d21aa69', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 47, '{\"subject\":\"Edwardasd2\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Notification\\/236\\/1M9PPLeLeZOatyD0RxBRJ4c5TQL6okEkeHa1yVNK2ODjLi3cYXUkclRcXqT3\\/announcement\",\"name\":\"Chedrick Rowy\"}', NULL, '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
('8fabd28d-7423-497e-ac1c-f24eef43afdd', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-08 23:47:58', '2023-02-08 23:47:35', '2023-02-08 23:47:58'),
('9853bf36-84dd-452c-bd90-56b91b598fee', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"testing\",\"name\":\"Sample User\"}', NULL, '2023-02-03 00:40:38', '2023-02-03 00:40:38'),
('99b36814-b626-4536-97f4-3d18d43159a6', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 48, '{\"subject\":\"Edwardasd2\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Notification\\/237\\/bbZLMAIRomSwhXBNUUSHNaKkG7n53LxZ1PzSg4ZRedTTBKp6g3wmTSP2ZKXP\\/announcement\",\"name\":\"Chedrick Rowy\"}', NULL, '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
('a60969c6-0ff6-4069-826b-43ca91883067', 'App\\Notifications\\AnnouncementHRNotification', 'App\\Models\\User', 2, '{\"subject\":\"Memo Sample tesing 9\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program_Head\\/Notification\\/36\\/8uemDA1QOZ6brP7s74fKdCe8KAyPIlH6YJFV7LrEX8gKk4geeXqugXGFfWz6\\/announcement\",\"name\":\"Jade Olosoro\"}', '2022-12-11 03:36:38', '2022-12-11 03:35:08', '2022-12-11 03:36:38'),
('ab74df56-cad5-4dd9-a3f9-c9c739eaa17d', 'App\\Notifications\\AnnouncementSecNotification', 'App\\Models\\User', 53, '{\"subject\":\"Edwardasd2\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Notification\\/241\\/aCtUwoCkN3yHII0ee1yXlZXfn3Uv0NjidZogiszu9xvqmOfWlClZyZoEUj0d\\/announcement\",\"name\":\"Chedrick Rowy\"}', NULL, '2023-01-21 06:51:00', '2023-01-21 06:51:00'),
('bae58ab1-4a87-4902-946f-fb681aa8947e', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Testing Subject\",\"link\":\"testing link\",\"name\":\"Edward Pornelos\"}', NULL, '2023-02-12 22:20:54', '2023-02-12 22:20:54'),
('c096c642-d5e8-48cf-b344-5a3a3200754c', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/O4aU\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-09 00:54:59', '2023-02-09 00:54:42', '2023-02-09 00:54:59'),
('c46c0e75-3c71-40d4-89dc-3af9c3bd7dff', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/rwwF\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-09 01:01:37', '2023-02-09 01:01:37'),
('c55bd008-7f1c-4390-bf13-2f6f888ccf49', 'App\\Notifications\\AnnouncementHRNotification', 'App\\Models\\User', 2, '{\"subject\":\"Memo 1\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program_Head\\/Notification\\/39\\/oug06vacvCUe1XWUHEYYyeonTAl7yln80nUW8Tnfv4PSeIV9ciQ9G5IBc9A2\\/announcement\",\"name\":\"Jade Olosoro\"}', '2022-12-13 03:13:02', '2022-12-13 03:10:59', '2022-12-13 03:13:02'),
('c9bb5880-27ff-4bce-8b24-fac10fd800a5', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', '2023-02-04 03:52:02', '2023-02-04 03:51:25', '2023-02-04 03:52:02'),
('ca8ad640-7d4c-4ccc-975c-f5919b492a93', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/O4aU\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-09 00:54:46', '2023-02-09 00:54:46'),
('ce4af46d-0438-4283-a4f0-c5192fd07fc0', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"testing\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 04:07:10', '2023-02-03 04:07:10'),
('cebeb299-bd60-487f-afee-d8af6d412716', 'App\\Notifications\\AddLoadToFacultyNotification', 'App\\Models\\User', 48, '{\"subject\":\"Testing Subject\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Faculty\\/Class_Schedule\",\"name\":\"Sample Sample\"}', '2023-02-06 23:07:44', '2023-02-06 22:34:35', '2023-02-06 23:07:44'),
('d36b9b42-151c-42ce-b32b-fd554c277066', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Testing Subject\",\"link\":\"testing link\",\"name\":\"Edward Pornelos\"}', NULL, '2023-02-12 08:52:56', '2023-02-12 08:52:56'),
('d6579783-c223-4187-91a4-202c7512463a', 'App\\Notifications\\SendToPHReportNotification', 'App\\Models\\User', 2, '{\"subject\":\"Testing Subject\",\"link\":\"testing link\",\"name\":\"Edward Pornelos\"}', NULL, '2023-02-12 08:56:15', '2023-02-12 08:56:15'),
('e4d5fc34-9fac-4dbd-a72d-da3fc7b30c6c', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 5, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 11:41:30', '2023-02-03 11:41:30'),
('eb607abd-f6be-4662-be1e-573ec7192048', 'App\\Notifications\\AnnouncementHRNotification', 'App\\Models\\User', 2, '{\"subject\":\"Memo sample 1\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Program_Head\\/Notification\\/41\\/ynM8lTaXnGdvOHal5eyuvNmrLBvBTD6s2AVRMxQI8ES3nNNbs89L4P8PPPXq\\/announcement\",\"name\":\"Jade Olosoro\"}', '2022-12-13 05:15:04', '2022-12-13 05:11:57', '2022-12-13 05:15:04'),
('edea50d4-726b-4324-be75-7b3bdf4cda20', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/Secretary\\/Notification\\/FAC-000000023\\/reports\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 11:45:29', '2023-02-03 11:45:29'),
('fb2d8b2b-7b0a-40e8-b813-9a37513a3339', 'App\\Notifications\\SendToHRReportNotification', 'App\\Models\\User', 3, '{\"subject\":\"Monthly Faculty Report\",\"link\":\"link\",\"name\":\"jade sample\"}', NULL, '2023-02-13 02:42:24', '2023-02-13 02:42:24'),
('fbdd449c-1745-470c-9731-ec4bda919758', 'App\\Notifications\\SentReportsHRNotification', 'App\\Models\\User', 3, '{\"subject\":\"testing\",\"link\":\"testing\",\"name\":\"Sample Sample\"}', NULL, '2023-02-03 04:07:13', '2023-02-03 04:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `duration` time NOT NULL,
  `overtime_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ph_faculty_reports`
--

CREATE TABLE `ph_faculty_reports` (
  `id` int(11) NOT NULL,
  `phID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `grouped_reportsID` int(11) DEFAULT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `groupTokenID` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ph_faculty_reports`
--

INSERT INTO `ph_faculty_reports` (`id`, `phID`, `userID`, `grouped_reportsID`, `facultyID`, `groupTokenID`, `created_at`, `updated_at`) VALUES
(1, 'PH-000000001', 2, 1, 'FAC-000000023', 'O4aU', '2023-02-12 22:31:49', '2023-02-12 22:31:49'),
(2, 'PH-000000001', 2, 2, 'FAC-000000023', 'O4aU', '2023-02-12 22:31:49', '2023-02-12 22:31:49'),
(3, 'PH-000000001', 2, 3, 'FAC-000000023', 'rwwF', '2023-02-12 22:44:00', '2023-02-12 22:44:00'),
(4, 'PH-000000001', 2, 4, 'FAC-000000023', 'rwwF', '2023-02-12 22:44:00', '2023-02-12 22:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `description`) VALUES
(1, 'FACULTY');

-- --------------------------------------------------------

--
-- Table structure for table `program_head`
--

CREATE TABLE `program_head` (
  `id` int(11) NOT NULL,
  `phID` varchar(45) DEFAULT NULL,
  `empID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `ph_firstname` varchar(255) DEFAULT NULL,
  `ph_middlename` varchar(45) DEFAULT NULL,
  `ph_lastname` varchar(255) DEFAULT NULL,
  `ph_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program_head`
--

INSERT INTO `program_head` (`id`, `phID`, `empID`, `userID`, `departmentID`, `ph_firstname`, `ph_middlename`, `ph_lastname`, `ph_email`, `created_at`, `updated_at`) VALUES
(1, 'PH-000000001', 'EMP-000000002', 2, 0, 'Edward', 'Corbes', 'Pornelos', 'edward.corbes.pornelos@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Adminstrator', NULL, '2022-11-06 23:18:44', '2022-11-06 23:18:44'),
(2, 'program head', 'Program Head', NULL, NULL, NULL),
(3, 'secretary', 'Secretary', NULL, NULL, NULL),
(4, 'faculty', 'Faculty', NULL, NULL, NULL),
(5, 'student', 'Student', NULL, NULL, NULL),
(6, 'hr', 'Human Resources', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 6),
(4, 5),
(5, 3),
(48, 4);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `sectionID` int(11) DEFAULT NULL,
  `type_of_learning` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `subjectID`, `day`, `time_start`, `time_end`, `duration`, `courseID`, `sectionID`, `type_of_learning`, `created_at`, `updated_at`) VALUES
(1, 4, 'Monday', '11:19:00', '23:16:00', 4, 0, 1, 'Blended Class', '2023-02-04 02:20:48', '2023-02-08 11:45:53'),
(2, 2, 'Wednesday', '09:48:00', '22:48:00', 4, 0, 2, 'Online Class', '2023-02-06 22:18:20', '2023-02-06 22:18:20'),
(3, 3, 'Tuesday', '10:04:00', '15:04:00', 4, 0, 3, 'Online Class', '2023-02-06 22:34:35', '2023-02-06 22:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(3, '15:00:00', '17:00:00'),
(4, '18:00:00', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_faculty`
--

CREATE TABLE `schedule_faculty` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `schedID` int(11) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_faculty`
--

INSERT INTO `schedule_faculty` (`id`, `facultyID`, `schedID`, `created_at`, `updated_at`) VALUES
(1, 'FAC-000000023', 1, NULL, NULL),
(2, 'FAC-000000023', 2, NULL, NULL),
(3, 'FAC-000000023', 3, NULL, NULL),
(4, 'FAC-000000023', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `secretary`
--

CREATE TABLE `secretary` (
  `id` int(11) NOT NULL,
  `secID` varchar(45) DEFAULT NULL,
  `empID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `sec_firstname` varchar(255) DEFAULT NULL,
  `sec_middlename` varchar(255) DEFAULT NULL,
  `sec_lastname` varchar(255) DEFAULT NULL,
  `sec_email` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `secretary`
--

INSERT INTO `secretary` (`id`, `secID`, `empID`, `userID`, `departmentID`, `sec_firstname`, `sec_middlename`, `sec_lastname`, `sec_email`, `created_at`, `updated_at`) VALUES
(1, 'SEC-000000001', 'EMP-000000005', 5, 0, 'Chedrik', 'L.', 'Rowy', 'ChedRowy@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `courseID` int(11) DEFAULT NULL,
  `section_year` varchar(46) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `courseID`, `section_year`, `section`, `year`, `created_at`, `updated_at`) VALUES
(1, NULL, '4G', 'G', '4', '2023-02-04 02:20:48', '2023-02-04 02:20:48'),
(2, NULL, '1E', 'E', '1', '2023-02-06 22:18:20', '2023-02-06 22:18:20'),
(3, NULL, '2D', 'D', '2', '2023-02-06 22:34:35', '2023-02-06 22:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `sec_faculty_reports`
--

CREATE TABLE `sec_faculty_reports` (
  `id` int(11) NOT NULL,
  `secID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `grouped_reportsID` int(11) DEFAULT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `groupTokenID` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sec_faculty_reports`
--

INSERT INTO `sec_faculty_reports` (`id`, `secID`, `userID`, `grouped_reportsID`, `facultyID`, `groupTokenID`, `created_at`, `updated_at`) VALUES
(1, 'SEC-000000001', 5, 1, 'FAC-000000023', 'O4aU', '2023-02-09 00:54:38', '2023-02-09 00:54:38'),
(2, 'SEC-000000001', 5, 2, 'FAC-000000023', 'O4aU', '2023-02-09 00:54:38', '2023-02-09 00:54:38'),
(3, 'SEC-000000001', 5, 3, 'FAC-000000023', 'rwwF', '2023-02-09 01:01:26', '2023-02-09 01:01:26'),
(4, 'SEC-000000001', 5, 4, 'FAC-000000023', 'rwwF', '2023-02-09 01:01:26', '2023-02-09 01:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subjectName` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subjectName`, `code`, `units`, `year`, `departmentID`, `courseID`, `created_at`, `updated_at`) VALUES
(1, 'Sample Subject 1', 'SUB101', 3, '4', 0, 0, NULL, NULL),
(2, 'Sample Subject 2', 'SUB102', 3, '4', 0, 0, NULL, NULL),
(3, 'Sample Subject 3', 'SUB103', 3, '4', 0, 0, NULL, NULL),
(4, 'Sample Subject 4', 'SUB104', 3, '4', 0, 0, NULL, NULL),
(5, 'Sample Subject 5', 'SUB204', 3, '1', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `empID` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `empID`, `name`, `username`, `email`, `pin_code`, `permissions`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'EMP-000000001', 'Admin', NULL, 'admin@ams.com', NULL, NULL, NULL, '$2y$10$FFx.OGGw9iZmVYql8hksBuTCgVJdk9.an8ImFALTlq1HhHV.hA4US', NULL, '2022-11-06 23:18:44', '2022-11-06 23:18:44'),
(2, 'EMP-000000002', 'Edward Pornelos', 'qcu_ph', 'edward.corbes.pornelos@gmail.com', NULL, NULL, NULL, '$2y$10$fIaqC0gE2LyBLKDCStN1XeIfl1oAmwE0QviV4K/QKZF42stJZw9JO', NULL, '2022-11-20 01:40:32', '2022-11-20 01:40:32'),
(3, 'EMP-000000003', 'Jade Olosoro', 'qcu_hr', 'jade@gmail.com', NULL, NULL, NULL, '$2y$10$rJrBWMDsQmhoqaWqnhon3u7zinb2w1.DNBto06gI0Zh9PyDb510BC', NULL, '2022-11-20 01:41:10', '2022-11-20 01:41:10'),
(4, 'EMP-000000004', 'JC Pablicio', 'qcu_student', 'jcp-qcu@gmail.com', NULL, NULL, NULL, '$2y$10$.dMv32JQGEVxutwcOsMJweDvv.a137bOGutL/0ileLkFK72M6c2ti', NULL, '2022-11-20 01:53:02', '2022-11-20 01:53:02'),
(5, 'EMP-000000005', 'Chedrick Rowy', 'qcu_secretary', 'ChedRowy@gmail.com', NULL, NULL, NULL, '$2y$10$W1pmTuJ8BtrUTbZTjqv0purdmx3UmFGBNHEv0byufUjKE37wVEU.a', NULL, '2022-11-20 04:58:40', '2022-11-20 04:58:40'),
(48, 'EMP-000000048', 'Sample User', 'faculty_BSIT_user', 'faculty_BSIT_user@gmail.com', NULL, NULL, NULL, '$2y$10$QuN0l9f7FKSZaaFrGiMsDONqUnDnF.3JNOlUxq9TQ5M4jgcz5mjmC', NULL, '2022-12-11 04:32:02', '2023-01-27 09:50:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_emp_id_foreign` (`emp_id`);

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checks_emp_id_foreign` (`emp_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_section_handled`
--
ALTER TABLE `faculty_section_handled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_subject_schedule`
--
ALTER TABLE `faculty_subject_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_weekly_class`
--
ALTER TABLE `faculty_weekly_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `finger_devices`
--
ALTER TABLE `finger_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `finger_devices_serialnumber_unique` (`serialNumber`);

--
-- Indexes for table `fwc_status`
--
ALTER TABLE `fwc_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grouped_reports`
--
ALTER TABLE `grouped_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_faculty_reports`
--
ALTER TABLE `hr_faculty_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latetimes`
--
ALTER TABLE `latetimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `latetimes_emp_id_foreign` (`emp_id`);

--
-- Indexes for table `learning_delivery_mode`
--
ALTER TABLE `learning_delivery_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_emp_id_foreign` (`emp_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `overtimes_emp_id_foreign` (`emp_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ph_faculty_reports`
--
ALTER TABLE `ph_faculty_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_head`
--
ALTER TABLE `program_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_faculty`
--
ALTER TABLE `schedule_faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secretary`
--
ALTER TABLE `secretary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_faculty_reports`
--
ALTER TABLE `sec_faculty_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checks`
--
ALTER TABLE `checks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `faculty_section_handled`
--
ALTER TABLE `faculty_section_handled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty_subject_schedule`
--
ALTER TABLE `faculty_subject_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty_weekly_class`
--
ALTER TABLE `faculty_weekly_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finger_devices`
--
ALTER TABLE `finger_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fwc_status`
--
ALTER TABLE `fwc_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grouped_reports`
--
ALTER TABLE `grouped_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr_faculty_reports`
--
ALTER TABLE `hr_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `latetimes`
--
ALTER TABLE `latetimes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_delivery_mode`
--
ALTER TABLE `learning_delivery_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `overtimes`
--
ALTER TABLE `overtimes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ph_faculty_reports`
--
ALTER TABLE `ph_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `program_head`
--
ALTER TABLE `program_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_faculty`
--
ALTER TABLE `schedule_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `secretary`
--
ALTER TABLE `secretary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sec_faculty_reports`
--
ALTER TABLE `sec_faculty_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_emp_id_foreign` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `checks`
--
ALTER TABLE `checks`
  ADD CONSTRAINT `checks_emp_id_foreign` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `latetimes`
--
ALTER TABLE `latetimes`
  ADD CONSTRAINT `latetimes_emp_id_foreign` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_emp_id_foreign` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD CONSTRAINT `overtimes_emp_id_foreign` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
