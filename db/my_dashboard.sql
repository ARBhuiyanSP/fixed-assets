-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 11:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `building_type` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chart_data_column`
--

CREATE TABLE `chart_data_column` (
  `month` varchar(10) NOT NULL,
  `sale` int(3) NOT NULL,
  `profit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complain_type`
--

CREATE TABLE `complain_type` (
  `id` int(11) NOT NULL,
  `complain_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(11) NOT NULL,
  `equipment_id` varchar(10) NOT NULL,
  `equipment_no` varchar(25) NOT NULL,
  `type_id` varchar(15) NOT NULL,
  `project_id` varchar(15) NOT NULL,
  `created_at` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `equipment_id`, `equipment_no`, `type_id`, `project_id`, `created_at`, `status`) VALUES
(2, 'CTED-001', 'QGC-01', '46', '1', '0000-00-00', ''),
(3, 'CTED-002', 'QGC-02', '46', '1', '0000-00-00', ''),
(4, 'CTED-003', 'QGC-03', '46', '1', '0000-00-00', ''),
(5, 'CTED-004', 'QGC-04', '46', '1', '0000-00-00', ''),
(6, 'CTED-005', 'QGC-05', '46', '1', '0000-00-00', ''),
(7, 'CTED-006', 'QGC-06', '46', '1', '0000-00-00', ''),
(8, 'CTED-007', 'QGC-07', '46', '1', '0000-00-00', ''),
(9, 'CTED-008', 'QGC-08', '46', '1', '0000-00-00', ''),
(10, 'CTED-009', 'QGC-09', '46', '1', '0000-00-00', ''),
(11, 'CTED-010', 'QGC-10', '46', '1', '0000-00-00', ''),
(12, 'CTED-011', 'QGC-11', '46', '1', '0000-00-00', ''),
(13, 'CTED-012', 'QGC-12', '46', '1', '0000-00-00', ''),
(14, 'CTED-013', 'QGC-13', '46', '1', '0000-00-00', ''),
(15, 'CTED-014', 'QGC-14', '46', '1', '0000-00-00', ''),
(16, 'CTED-015', 'RTG-07', '47', '1', '0000-00-00', ''),
(17, 'CTED-016', 'RTG-08', '47', '1', '0000-00-00', ''),
(19, 'CTED-018', 'RTG-09', '47', '1', '0000-00-00', ''),
(20, 'CTED-019', 'RTG-10', '47', '1', '0000-00-00', ''),
(21, 'CTED-020', 'RTG-11', '47', '1', '0000-00-00', ''),
(22, 'CTED-021', 'RTG-12', '47', '1', '0000-00-00', ''),
(23, 'CTED-022', 'RTG-13', '47', '1', '0000-00-00', ''),
(24, 'CTED-023', 'RTG-14', '47', '1', '0000-00-00', ''),
(25, 'CTED-024', 'RTG-15', '47', '1', '0000-00-00', ''),
(27, 'CTED-026', 'RTG-16', '47', '1', '0000-00-00', ''),
(28, 'CTED-027', 'RTG-17', '47', '1', '0000-00-00', ''),
(29, 'CTED-028', 'RTG-18', '47', '1', '0000-00-00', ''),
(30, 'CTED-029', 'RTG-19', '47', '1', '0000-00-00', ''),
(31, 'CTED-030', 'RTG-20', '47', '1', '0000-00-00', ''),
(32, 'CTED-031', 'RTG-21', '47', '1', '0000-00-00', ''),
(33, 'CTED-032', 'RTG-22', '47', '1', '0000-00-00', ''),
(34, 'CTED-033', 'RTG-23', '47', '1', '0000-00-00', ''),
(36, 'CTED-035', 'RTG-24', '47', '1', '0000-00-00', ''),
(37, 'CTED-036', 'RTG-25', '47', '1', '0000-00-00', ''),
(38, 'CTED-037', 'RTG-26', '47', '1', '0000-00-00', ''),
(39, 'CTED-038', 'RTG-27', '47', '1', '0000-00-00', ''),
(40, 'CTED-039', 'RTG-28', '47', '1', '0000-00-00', ''),
(41, 'CTED-040', 'RTG-31', '47', '1', '0000-00-00', ''),
(42, 'CTED-041', 'RTG-32', '47', '1', '0000-00-00', ''),
(43, 'CTED-042', 'RTG-33', '47', '1', '0000-00-00', ''),
(44, 'CTED-043', 'RTG-34', '47', '1', '0000-00-00', ''),
(45, 'CTED-044', 'RTG-35', '47', '1', '0000-00-00', ''),
(46, 'CTED-045', 'RTG-36', '47', '1', '0000-00-00', ''),
(47, 'CTED-046', 'RTG-37', '47', '1', '0000-00-00', ''),
(48, 'CTED-047', 'RTG-38', '47', '1', '0000-00-00', ''),
(49, 'CTED-048', 'SP-08', '51', '1', '0000-00-00', '1'),
(50, 'CTED-049', 'SP-09', '51', '1', '0000-00-00', '1'),
(51, 'CTED-050', 'SP-10', '51', '1', '0000-00-00', '1'),
(52, 'CTED-051', 'SP-11', '51', '1', '0000-00-00', '1'),
(53, 'CTED-052', 'SP-12', '51', '1', '0000-00-00', '1'),
(54, 'CTED-053', 'SP-13', '51', '1', '0000-00-00', '1'),
(55, 'CTED-054', 'SP-14', '51', '1', '0000-00-00', '1'),
(56, 'CTED-055', 'SP-15', '51', '1', '0000-00-00', '1'),
(57, 'CTED-056', 'SP-16', '51', '1', '0000-00-00', '1'),
(58, 'CTED-057', 'SP-17', '51', '1', '0000-00-00', '1'),
(59, 'CTED-058', 'SP-19', '51', '1', '0000-00-00', '1'),
(60, 'CTED-059', 'SP-22', '51', '1', '0000-00-00', '1'),
(61, 'CTED-060', 'SP-23', '51', '1', '0000-00-00', '1'),
(62, 'CTED-061', 'SP-24', '51', '1', '0000-00-00', '1'),
(63, 'CTED-062', 'SP-25', '51', '1', '0000-00-00', '1'),
(64, 'CTED-063', 'SP-26', '51', '1', '0000-00-00', '1'),
(65, 'CTED-064', 'SP-27', '51', '1', '0000-00-00', '1'),
(66, 'CTED-065', 'SP-28', '51', '1', '0000-00-00', '1'),
(67, 'CTED-066', 'SP-30', '51', '1', '0000-00-00', '1'),
(68, 'CTED-067', 'SP-31', '51', '1', '0000-00-00', '1'),
(69, 'CTED-068', 'SP-32', '51', '1', '0000-00-00', '1'),
(70, 'CTED-069', 'SP-33', '51', '1', '0000-00-00', '1'),
(71, 'CTED-070', 'SP-35', '51', '1', '0000-00-00', '1'),
(72, 'CTED-071', 'SP-36', '51', '1', '0000-00-00', '1'),
(73, 'CTED-072', 'SP-37', '51', '1', '0000-00-00', '1'),
(74, 'CTED-073', 'SP-39', '51', '1', '0000-00-00', '1'),
(75, 'CTED-074', 'SP-40', '51', '1', '0000-00-00', '1'),
(76, 'CTED-075', 'SP-41', '51', '1', '0000-00-00', '1'),
(77, 'CTED-076', 'SP-42', '51', '1', '0000-00-00', '1'),
(78, 'CTED-077', 'SP-43', '51', '1', '0000-00-00', '1'),
(79, 'CTED-078', 'SP-44', '51', '1', '0000-00-00', '1'),
(80, 'CTED-079', 'SP-45', '51', '1', '0000-00-00', '1'),
(81, 'CTED-080', 'SP-46', '51', '1', '0000-00-00', '1'),
(82, 'CTED-081', 'SP-47', '51', '1', '0000-00-00', '1'),
(83, 'CTED-082', 'SP-48', '51', '1', '0000-00-00', '1'),
(84, 'CTED-083', 'SP-49', '51', '1', '0000-00-00', '1'),
(85, 'CTED-084', 'SP-50', '51', '1', '0000-00-00', '1'),
(86, 'CTED-085', 'SP-51', '51', '1', '0000-00-00', '1'),
(87, 'CTED-086', 'SP-52', '51', '1', '0000-00-00', '1'),
(88, 'CTED-087', 'SP-53', '51', '1', '0000-00-00', '1'),
(89, 'CTED-088', 'SP-54', '51', '1', '0000-00-00', '1'),
(90, 'CTED-089', 'SP-55', '51', '1', '0000-00-00', '1'),
(91, 'CTED-090', 'SP-56', '51', '1', '0000-00-00', '1'),
(92, 'CTED-091', 'SP-57', '51', '1', '0000-00-00', '1'),
(93, 'CTED-092', 'SP-58', '51', '1', '0000-00-00', '1'),
(94, 'CTED-093', 'SP-59', '51', '1', '0000-00-00', '1'),
(95, 'CTED-094', 'SP-60', '51', '1', '0000-00-00', '1'),
(96, 'CTED-095', 'SP-61', '51', '1', '0000-00-00', '1'),
(97, 'CTED-096', 'SP-62', '51', '1', '0000-00-00', '1'),
(98, 'CTED-097', 'SP-63', '51', '1', '0000-00-00', '1'),
(99, 'CTED-098', 'SP-64', '51', '1', '0000-00-00', '1'),
(100, 'CTED-099', 'SP-65', '51', '1', '0000-00-00', '1'),
(101, 'CTED-100', 'SP-66', '51', '1', '0000-00-00', '1'),
(102, 'CTED-101', 'SP-67', '51', '1', '0000-00-00', '1'),
(103, 'CTED-102', 'SP-68', '51', '1', '0000-00-00', '1'),
(104, 'CTED-103', 'SP-69', '51', '1', '0000-00-00', '1'),
(105, 'CTED-104', 'SP-70', '51', '1', '0000-00-00', '1'),
(106, 'CTED-105', 'SP-71', '51', '1', '0000-00-00', '1'),
(107, 'CTED-106', 'SP-72', '51', '1', '0000-00-00', '1'),
(108, 'CTED-107', 'SP-73', '51', '1', '0000-00-00', '1'),
(109, 'CTED-108', 'SP-74', '51', '1', '0000-00-00', '1'),
(110, 'CTED-109', 'SP-75', '51', '1', '0000-00-00', '1'),
(111, 'CTED-110', 'SP-76', '51', '1', '0000-00-00', '1'),
(112, 'CTED-111', 'SP-77', '51', '1', '0000-00-00', '1'),
(113, 'CTED-112', 'SP-78', '51', '1', '0000-00-00', '1'),
(114, 'CTED-113', 'SP-79', '51', '1', '0000-00-00', '1'),
(115, 'CTED-114', 'SP-80', '51', '1', '0000-00-00', '1'),
(116, 'CTED-115', 'SP-81', '51', '1', '0000-00-00', '1'),
(117, 'CTED-116', 'SP-82', '51', '1', '0000-00-00', '1'),
(118, 'CTED-117', 'SP-83', '51', '1', '0000-00-00', '1'),
(119, 'CTED-118', 'SP-84', '51', '1', '0000-00-00', '1'),
(120, 'CTED-119', 'SP-85', '51', '1', '0000-00-00', '1'),
(121, 'CTED-120', 'SP-86', '51', '1', '0000-00-00', '1'),
(122, 'CTED-121', 'SP-87', '51', '1', '0000-00-00', '1'),
(123, 'CTED-122', 'SP-88', '51', '1', '0000-00-00', '1'),
(124, 'CTED-123', 'SP-89', '51', '1', '0000-00-00', '1'),
(125, 'CTED-124', 'SP-90', '51', '1', '0000-00-00', '1'),
(126, 'CTED-125', 'SP-91', '51', '1', '0000-00-00', '1'),
(127, 'CTED-126', 'SP-92', '51', '1', '0000-00-00', '1'),
(128, 'CTED-127', 'SP-93', '51', '1', '0000-00-00', '1'),
(129, 'CTED-128', 'SP-94', '51', '1', '0000-00-00', '1'),
(130, 'CTED-129', 'SP-95', '51', '1', '0000-00-00', '1'),
(131, 'CTED-130', 'SP-96', '51', '1', '0000-00-00', '1'),
(132, 'CTED-131', 'SP-97', '51', '1', '0000-00-00', '1'),
(133, 'CTED-132', 'SP-98', '51', '1', '0000-00-00', '1'),
(134, 'CTED-133', 'SP-99', '51', '1', '0000-00-00', '1'),
(135, 'CTED-134', 'SP-100', '51', '1', '0000-00-00', '1'),
(136, 'CTED-135', 'SP-101', '51', '1', '0000-00-00', '1'),
(137, 'CTED-136', 'SP-102', '51', '1', '0000-00-00', '1'),
(138, 'CTED-137', 'SP-103', '51', '1', '0000-00-00', '1'),
(139, 'CTED-138', 'SP-104', '51', '1', '0000-00-00', '1'),
(140, 'CTED-139', 'SP-139', '51', '1', '0000-00-00', '1'),
(141, 'CTED-140', 'FLT-04', '49', '1', '0000-00-00', '1'),
(142, 'CTED-141', 'FLT-06', '49', '1', '0000-00-00', '1'),
(143, 'CTED-142', 'FLT-07', '49', '1', '0000-00-00', '1'),
(144, 'CTED-143', 'FLT-08', '49', '1', '0000-00-00', '1'),
(145, 'CTED-144', 'FLT-11', '49', '1', '0000-00-00', '1'),
(146, 'CTED-145', 'FLT-12', '49', '1', '0000-00-00', '1'),
(147, 'CTED-146', 'FLT-13', '49', '1', '0000-00-00', '1'),
(148, 'CTED-147', 'FLT-15', '49', '1', '0000-00-00', '1'),
(149, 'CTED-148', 'RST-17', '48', '1', '0000-00-00', '1'),
(150, 'CTED-149', 'FLT-18', '49', '1', '0000-00-00', '1'),
(151, 'CTED-150', 'FLT-19', '49', '1', '0000-00-00', '1'),
(152, 'CTED-151', 'FLT-20', '49', '1', '0000-00-00', '1'),
(153, 'CTED-152', 'FLT-21', '49', '1', '0000-00-00', '1'),
(154, 'CTED-153', 'FLT-22', '49', '1', '0000-00-00', '1'),
(155, 'CTED-154', 'FLT-23', '49', '1', '0000-00-00', '1'),
(156, 'CTED-155', 'FLT-24', '49', '1', '0000-00-00', '1'),
(157, 'CTED-156', 'FLT-25', '49', '1', '0000-00-00', '1'),
(158, 'CTED-157', 'FLT-26', '49', '1', '0000-00-00', '1'),
(159, 'CTED-158', 'FLT-27', '49', '1', '0000-00-00', '1'),
(160, 'CTED-159', 'RST-28', '48', '1', '0000-00-00', '1'),
(161, 'CTED-160', 'SP-105', '51', '1', '0000-00-00', '1'),
(162, 'CTED-161', 'SP-106', '51', '1', '0000-00-00', '1'),
(163, 'CTED-162', 'SP-107', '51', '1', '0000-00-00', '1'),
(164, 'CTED-163', 'SP-108', '51', '1', '0000-00-00', '1'),
(165, 'CTED-164', 'SP-109', '51', '1', '0000-00-00', '1'),
(166, 'CTED-165', 'SP-110', '51', '1', '0000-00-00', '1'),
(167, 'CTED-166', 'SP-111', '51', '1', '0000-00-00', '1'),
(168, 'CTED-167', 'SP-112', '51', '1', '0000-00-00', '1'),
(169, 'CTED-168', 'SP-113', '51', '1', '0000-00-00', '1'),
(170, 'CTED-169', 'SP-114', '51', '1', '0000-00-00', '1'),
(171, 'CTED-170', 'SP-115', '51', '1', '0000-00-00', '1'),
(172, 'CTED-171', 'SP-116', '51', '1', '0000-00-00', '1'),
(173, 'CTED-172', 'SP-117', '51', '1', '0000-00-00', '1'),
(174, 'CTED-173', 'SP-118', '51', '1', '0000-00-00', '1'),
(175, 'CTED-174', 'SP-119', '51', '1', '0000-00-00', '1'),
(176, 'CTED-175', 'SP-120', '51', '1', '0000-00-00', '1'),
(177, 'CTED-176', 'SP-121', '51', '1', '0000-00-00', '1'),
(178, 'CTED-177', 'SP-122', '51', '1', '0000-00-00', '1'),
(179, 'CTED-178', 'SP-123', '51', '1', '0000-00-00', '1'),
(180, 'CTED-179', 'SP-124', '51', '1', '0000-00-00', '1'),
(181, 'CTED-180', 'SP-125', '51', '1', '0000-00-00', '1'),
(182, 'CTED-181', 'SP-126', '51', '1', '0000-00-00', '1'),
(183, 'CTED-182', 'SP-127', '51', '1', '0000-00-00', '1'),
(184, 'CTED-183', 'SP-128', '51', '1', '0000-00-00', '1'),
(185, 'CTED-184', 'SP-129', '51', '1', '0000-00-00', '1'),
(186, 'CTED-185', 'SP-130', '51', '1', '0000-00-00', '1'),
(187, 'CTED-186', 'SP-131', '51', '1', '0000-00-00', '1'),
(188, 'CTED-187', 'SP-132', '51', '1', '0000-00-00', '1'),
(189, 'CTED-188', 'SP-133', '51', '1', '0000-00-00', '1'),
(190, 'CTED-189', 'SP-134', '51', '1', '0000-00-00', '1'),
(191, 'CTED-190', 'SP-135', '51', '1', '0000-00-00', '1'),
(192, 'CTED-191', 'SP-136', '51', '1', '0000-00-00', '1'),
(193, 'CTED-192', 'SP-137', '51', '1', '0000-00-00', '1'),
(194, 'CTED-193', 'SP-138', '51', '1', '0000-00-00', '1'),
(201, 'CTED-197', 'SP-01', '51', '1', '0000-00-00', ''),
(202, 'CTED-198', 'SP-02', '51', '1', '0000-00-00', ''),
(203, 'CTED-199', 'SP-20', '51', '1', '0000-00-00', ''),
(204, 'CTED-200', 'SP-21', '51', '1', '0000-00-00', ''),
(205, 'CTED-201', 'MHC-01', '50', '1', '0000-00-00', ''),
(206, 'CTED-202', 'MHC-04', '50', '1', '0000-00-00', ''),
(207, 'CTED-203', 'MHC-05', '50', '1', '0000-00-00', ''),
(208, 'CTED-204', 'SC-161', '56', '1', '0000-00-00', ''),
(209, 'CTED-205', 'SC-162', '56', '1', '0000-00-00', ''),
(210, 'CTED-206', 'SC-163', '56', '1', '0000-00-00', ''),
(211, 'CTED-201', 'TS-01', '58', '1', '0000-00-00', ''),
(212, 'CTED-202', 'TS-02', '58', '1', '0000-00-00', ''),
(213, 'CTED-203', 'TS-03', '58', '1', '0000-00-00', ''),
(214, 'CTED-204', 'TS-04', '58', '1', '0000-00-00', ''),
(215, 'CTED-205', 'TS-05', '58', '1', '0000-00-00', ''),
(216, 'CTED-206', 'TS-06', '58', '1', '0000-00-00', ''),
(217, 'CTED-207', 'RST-29', '48', '1', '0000-00-00', ''),
(218, 'CTED-208', 'CH-01', '51', '1', '0000-00-00', ''),
(219, 'CTED-209', 'CH-02', '51', '1', '0000-00-00', ''),
(220, 'CTED-210', 'CH-03', '51', '1', '0000-00-00', ''),
(221, 'CTED-211', 'CH-04', '51', '1', '0000-00-00', ''),
(222, 'CTED-212', 'CH-05', '51', '1', '0000-00-00', ''),
(223, 'CTED-213', 'CH-06', '51', '1', '0000-00-00', ''),
(224, 'CTED-214', 'CH-07', '51', '1', '0000-00-00', ''),
(225, 'CTED-215', 'CH-08', '51', '1', '0000-00-00', ''),
(226, 'CTED-216', 'CH-07', '51', '1', '0000-00-00', ''),
(227, 'CTED-217', 'CH-06', '51', '1', '0000-00-00', ''),
(228, 'CTED-218', 'CH-09', '51', '1', '0000-00-00', ''),
(229, 'CTED-219', 'CH-42', '51', '1', '0000-00-00', ''),
(230, 'CTED-220', 'CH-56', '51', '1', '0000-00-00', ''),
(231, 'CTED-221', 'RTG-42', '47', '1', '0000-00-00', ''),
(232, 'CTED-222', 'RTG-43', '47', '1', '0000-00-00', ''),
(233, 'CTED-223', 'RTG-44', '47', '1', '0000-00-00', ''),
(234, 'CTED-224', 'QGC-15', '46', '1', '0000-00-00', ''),
(235, 'CTED-225', 'QGC-16', '46', '1', '0000-00-00', ''),
(236, 'CTED-226', 'RTG-45', '47', '1', '0000-00-00', ''),
(237, 'CTED-227', 'RTG-46', '47', '1', '0000-00-00', ''),
(238, 'CTED-228', 'RTG-47', '47', '1', '0000-00-00', ''),
(239, 'CTED-229', 'QGC-17', '46', '1', '0000-00-00', ''),
(240, 'CTED-230', 'QGC-18', '46', '1', '0000-00-00', ''),
(241, 'CTED-231', 'TS 07', '59', '1', '0000-00-00', ''),
(242, 'CTED-232', 'TS 08', '59', '1', '0000-00-00', ''),
(243, 'CTED-233', 'TS 09', '59', '1', '0000-00-00', ''),
(244, 'CTED-234', 'TS 10', '59', '1', '0000-00-00', ''),
(245, 'CTED-235', 'TS 11', '59', '1', '0000-00-00', ''),
(246, 'CTED-236', 'TS 12', '59', '1', '0000-00-00', ''),
(247, 'CTED-237', 'TS 13', '59', '1', '0000-00-00', ''),
(248, 'CTED-238', 'TS 14', '59', '1', '0000-00-00', ''),
(249, 'CTED-239', 'TS 15', '59', '1', '0000-00-00', ''),
(250, 'CTED-240', 'TS 16', '59', '1', '0000-00-00', ''),
(251, 'CTED-241', 'TS 17', '59', '1', '0000-00-00', ''),
(252, 'CTED-242', 'TS 18', '59', '1', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `text` varchar(191) NOT NULL,
  `assets` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_types`
--

CREATE TABLE `history_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_challan`
--

CREATE TABLE `inv_challan` (
  `id` int(11) NOT NULL,
  `challan_no` varchar(100) NOT NULL,
  `challan_date` varchar(100) NOT NULL,
  `csn` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complain`
--

CREATE TABLE `inv_complain` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `vehicle_reg_no` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `chasis_no` varchar(100) NOT NULL,
  `brand_model` varchar(100) NOT NULL,
  `engine_no` varchar(100) NOT NULL,
  `owner_phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `driver_phone` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complaindetails`
--

CREATE TABLE `inv_complaindetails` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `complain_details` varchar(5000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_designation`
--

CREATE TABLE `inv_designation` (
  `id` int(11) NOT NULL,
  `des_id` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_employee`
--

CREATE TABLE `inv_employee` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `join_date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_ga_listunit`
--

CREATE TABLE `inv_ga_listunit` (
  `id` int(11) NOT NULL,
  `lunit_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lunit_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice`
--

CREATE TABLE `inv_invoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `invoice_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `total_qty` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `total_service` varchar(100) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice_details`
--

CREATE TABLE `inv_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `unit_price` varchar(100) NOT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issue`
--

CREATE TABLE `inv_issue` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `use_in` varchar(30) NOT NULL,
  `no_of_material` int(11) NOT NULL,
  `total_amount` float NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issuedetail`
--

CREATE TABLE `inv_issuedetail` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `issue_date` date NOT NULL,
  `material_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `use_in` varchar(50) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `is_manual_code_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for checking manual code update'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_item_unit`
--

CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_item_unit`
--

INSERT INTO `inv_item_unit` (`id`, `unit_name`) VALUES
(20, 'Pcs'),
(21, 'Ltr'),
(22, 'Kg'),
(23, 'Sets'),
(27, 'Set'),
(28, 'Coil'),
(29, 'Meters'),
(30, 'Feet');

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card`
--

CREATE TABLE `inv_job_card` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `inv_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card_details`
--

CREATE TABLE `inv_job_card_details` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `task_details` varchar(100) NOT NULL,
  `assign_to` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material`
--

CREATE TABLE `inv_material` (
  `id` int(11) NOT NULL,
  `material_id_code` varchar(100) DEFAULT NULL,
  `material_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material_sub_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material_level3_id` int(11) DEFAULT NULL,
  `material_level4_id` int(11) DEFAULT NULL,
  `material_description` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spec` varchar(100) NOT NULL,
  `location` varchar(30) NOT NULL,
  `type` varchar(100) NOT NULL,
  `material_min_stock` int(11) DEFAULT NULL,
  `avg_con_sump` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `re_order_level` int(11) NOT NULL,
  `qty_unit` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `op_balance_qty` int(11) NOT NULL,
  `op_balance_val` int(11) NOT NULL,
  `chk_print` int(11) DEFAULT NULL,
  `cur_qty` int(11) DEFAULT NULL,
  `cur_price` int(11) DEFAULT NULL,
  `cur_value` int(11) DEFAULT NULL,
  `last_issue` date DEFAULT NULL,
  `last_receive` date DEFAULT NULL,
  `part_no` varchar(100) NOT NULL,
  `current_balance` float NOT NULL,
  `is_manual_code_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for checking manual code update '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_material`
--

INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_level3_id`, `material_level4_id`, `material_description`, `spec`, `location`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`, `current_balance`, `is_manual_code_edit`) VALUES
(275, '02-02-01-01-001', '47', '119', 20, 12, 'Ethernet Switch', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP116606', 0, 0),
(276, '02-02-04-01-001', '47', '119', 23, 15, 'Engine Control Unit', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '21695319', 0, 1),
(277, '10-01-01-01-001', '55', '137', 70, 56, 'Air Filter', '--', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO35501', 0, 0),
(278, '10-01-01-01-002', '55', '137', 70, 56, 'Air Filter', '--', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO35502', 0, 0),
(279, '10-01-01-01-003', '55', '137', 70, 56, 'Air Filter', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'AF891M', 0, 0),
(280, '10-01-01-01-004', '55', '137', 70, 56, 'Air Filter', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'AF21702911', 0, 0),
(281, '10-01-01-01-005', '55', '137', 70, 56, 'Air Filter', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A2418', 0, 0),
(282, '10-02-01-01-001', '55', '138', 71, 57, 'Fuel Pre Filter element', '--', '', '', 30, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J036736', 0, 0),
(283, '10-02-01-01-002', '55', '138', 71, 57, 'Primary Fuel Filter Element', '--', '', '', 35, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J015274', 0, 0),
(284, '10-03-01-01-001', '55', '139', 72, 58, 'Oil Filter', '--', '', '', 30, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J027812', 0, 0),
(285, '02-02-04-02-001', '47', '119', 23, 16, 'AC PUMP, Pre Filter', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031358', 0, 1),
(286, '02-02-04-02-002', '47', '119', 23, 16, 'Air Filter Caging', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035270', 0, 1),
(287, '10-02-01-01-003', '55', '138', 71, 57, 'Fuel Filter', 'FF 5507', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FF 5507', 0, 0),
(288, '10-02-01-01-004', '55', '138', 71, 57, 'Fuel Water Seperator', 'FS 19735', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FS 19735', 0, 0),
(289, '10-03-01-01-002', '55', '139', 72, 58, 'Oil Bypass Filter', 'LF 3654', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF 3654', 0, 0),
(290, '10-03-01-01-003', '55', '139', 72, 58, 'Oil Main Filter', 'LF 4112', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF 4112', 0, 0),
(291, '10-03-01-01-004', '55', '139', 72, 58, 'Oil Filter', 'LF9009', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF9009', 0, 0),
(292, '10-02-01-01-005', '55', '138', 71, 57, 'Fuel-Water Seperator', 'FS 1000', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FS 1000', 0, 0),
(293, '10-04-01-01-001', '55', '140', 73, 59, 'Coolant Filter', 'WF2076', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'WF2076', 0, 0),
(294, '02-02-04-02-003', '47', '119', 23, 16, 'Injector', '', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031348', 0, 1),
(295, '02-02-04-02-004', '47', '119', 23, 16, 'Fuel Pump, AGCO SISU', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031317', 0, 1),
(296, '02-02-04-02-005', '47', '119', 23, 16, 'Over Flow Valve, PRV', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031334', 0, 1),
(297, '02-02-04-02-006', '47', '119', 23, 16, 'Valve Lifter, PUSHER', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '836014264', 0, 1),
(298, '02-02-04-02-007', '47', '119', 23, 16, 'Turbo Charger, AGCO SISU', 'SCHWEITZER, VOLVO', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J03195.0100, VOLVO J06487.0100', 0, 1),
(299, '02-02-04-02-008', '47', '119', 23, 16, 'Engine Control Unit', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033110', 0, 1),
(300, '02-02-01-01-002', '47', '119', 20, 12, 'PLC, WAGO power module ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104392', 0, 0),
(301, '02-02-04-02-009', '47', '119', 23, 16, 'Main bearing, standard', '', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028111', 0, 1),
(302, '02-02-04-02-010', '47', '119', 23, 16, 'Main bearing-sisu, standard', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028112', 0, 1),
(303, '02-02-04-02-011', '47', '119', 23, 16, 'Big End bearing, standard', '', '', '', 6, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028395', 0, 1),
(304, '02-02-04-02-012', '47', '119', 23, 16, 'Piston ring', '', '', '', 6, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031440', 0, 1),
(305, '02-02-04-02-013', '47', '119', 23, 16, 'Cylinder liner', '', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028311', 0, 1),
(306, '02-02-04-02-014', '47', '119', 23, 16, 'Overhauling kit, Gasket ', '', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033123', 0, 1),
(307, '02-02-04-02-015', '47', '119', 23, 16, 'Belt Tightener', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028658', 0, 1),
(308, '02-02-04-02-016', '47', '119', 23, 16, 'Impeller-Water Pump', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '836336047', 0, 1),
(309, '02-02-04-02-017', '47', '119', 23, 16, 'Shaft-Water Pump', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031292', 0, 1),
(310, '02-02-04-02-018', '47', '119', 23, 16, 'Water Pump Gasket', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028599', 0, 1),
(311, '02-02-01-01-003', '47', '119', 20, 12, 'Proximity sensor, bromma', '24V, NPN, Ø25MM', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ' J03508.0100', 0, 0),
(312, '02-02-04-02-019', '47', '119', 23, 16, 'AVR, REGULATOR', 'MX342_2', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104924', 0, 1),
(313, '02-02-04-02-020', '47', '119', 23, 16, 'Diode, Battery Charging', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J021472', 0, 1),
(314, '02-02-01-01-004', '47', '119', 20, 12, 'Profi safe', '750-660,8FDI MODULE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104449', 0, 0),
(315, '02-02-01-01-005', '47', '119', 20, 12, 'Profi safe', '750-665,4FDO+4FDI MODULE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104397', 0, 0),
(316, '02-02-01-01-006', '47', '119', 20, 12, 'PLC', '753-530, 8XDO MODULE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104401', 0, 0),
(317, '02-02-01-01-007', '47', '119', 20, 12, 'PLC', '730-430, 8XDI MODULE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104398', 0, 0),
(318, '02-02-04-02-021', '47', '119', 23, 16, 'Starter Motor, AGCO SISU', '24V, 11 TEETH', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035071', 0, 1),
(319, '02-02-01-01-008', '47', '119', 20, 12, 'sensor, Absolute Encoder ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104231', 0, 0),
(320, '02-02-01-01-009', '47', '119', 20, 12, 'Sensor', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP102211', 0, 0),
(321, '02-02-01-01-010', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300230', 0, 0),
(322, '02-02-01-01-011', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300251', 0, 0),
(323, '02-02-01-01-012', '47', '119', 20, 12, 'Display unit, operators cabin', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104153', 0, 0),
(324, '02-02-01-01-013', '47', '119', 20, 12, 'TT drive chain', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'KS100892', 0, 0),
(325, '02-02-01-01-014', '47', '119', 20, 12, 'Gantry brake solenoid', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801904778', 0, 0),
(326, '02-02-01-01-015', '47', '119', 20, 12, 'RECTIFIER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028977', 0, 0),
(328, '02-02-01-01-016', '47', '119', 20, 12, 'ALTERNATOR REGULATOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1780', 0, 0),
(329, '02-02-01-01-017', '47', '119', 20, 12, 'CONTACTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : J014795, NEW P/N : 806109804', 0, 0),
(330, '02-02-01-01-018', '47', '119', 20, 12, 'CONTACTOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104444', 0, 0),
(331, '02-02-01-01-019', '47', '119', 20, 12, 'DIODE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106058', 0, 0),
(332, '02-02-01-01-020', '47', '119', 20, 12, 'REMOTE CONTROL', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104477', 0, 0),
(333, '02-02-04-01-002', '47', '119', 23, 15, 'Turning tools', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '9993590', 0, 1),
(334, '02-02-04-02-022', '47', '119', 23, 16, 'ALTERNATOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028806, N/PN : J08779.0100', 0, 1),
(335, '02-02-04-01-003', '47', '119', 23, 15, 'Starter motor, TAD1641VE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028809', 0, 1),
(336, '02-02-04-02-023', '47', '119', 23, 16, 'Starter relay', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923120.0708', 0, 1),
(337, '02-02-04-01-004', '47', '119', 23, 15, 'TURBO CHARGER , TAD1641VE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J022021', 0, 1),
(338, '02-02-04-01-005', '47', '119', 23, 15, 'INJECTOR EXCHANGE(23000), TAD1641VE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018323A', 0, 1),
(339, '02-02-04-01-006', '47', '119', 23, 15, 'Fuel pump, TAD1641VE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028827', 0, 1),
(340, '02-02-04-01-007', '47', '119', 23, 15, 'FUEL PUMP', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028828', 0, 1),
(341, '02-02-01-01-107', '47', '119', 20, 12, 'Profi safe', '750-660,8FDI MODULE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104449', 0, 1),
(342, '02-02-01-01-021', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104397', 0, 0),
(343, '02-02-01-01-022', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104398', 0, 0),
(344, '02-02-01-01-023', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104401', 0, 0),
(345, '02-02-01-01-024', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104451', 0, 0),
(346, '02-02-01-01-025', '47', '119', 20, 12, 'MODULE ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J027725', 0, 0),
(347, '02-02-01-01-026', '47', '119', 20, 12, 'WAGO analog module', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104399', 0, 0),
(348, '02-02-01-01-027', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP108604', 0, 0),
(349, '02-02-01-01-028', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104402', 0, 0),
(350, '02-02-01-01-029', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104403', 0, 0),
(351, '02-02-01-01-030', '47', '119', 20, 12, 'WAGO END MODULE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104393', 0, 0),
(352, '02-02-01-01-031', '47', '119', 20, 12, 'CAN-DP MODULE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300215', 0, 0),
(353, '02-02-01-01-032', '47', '119', 20, 12, 'CONVERTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP107807', 0, 0),
(354, '02-02-01-01-033', '47', '119', 20, 12, 'SENSOR ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD-OLD P/N : 806109569,  NEW P/N : 806109443', 0, 0),
(355, '02-02-01-01-034', '47', '119', 20, 12, 'RECTIFIER, GANTRY BRAKE ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J015089, NEW PN:J028260', 0, 0),
(356, '02-02-01-01-035', '47', '119', 20, 12, 'SOLENOID', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801904778', 0, 0),
(357, '02-02-01-01-036', '47', '119', 20, 12, 'RECTIFIER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018949', 0, 0),
(358, '02-02-01-01-037', '47', '119', 20, 12, 'ENCODER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : 806108358, NEW P/N : JO7300.0100', 0, 0),
(359, '02-02-01-01-038', '47', '119', 20, 12, 'RECTIFIER ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J22286', 0, 0),
(360, '02-02-01-01-039', '47', '119', 20, 12, 'INDUCTIVE SWITCH', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP107575', 0, 0),
(361, '02-02-01-01-040', '47', '119', 20, 12, 'INDUCTIVE SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '807605708', 0, 0),
(362, '02-02-01-01-041', '47', '119', 20, 12, 'BRAKE PAD SET ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '807605417', 0, 0),
(363, '02-02-01-01-042', '47', '119', 20, 12, 'BRAKE PAD SET ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801903895', 0, 0),
(364, '02-02-01-01-043', '47', '119', 20, 12, 'DIODE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109740', 0, 0),
(365, '02-02-01-01-044', '47', '119', 20, 12, 'CONTACTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP105136', 0, 0),
(366, '02-02-01-01-045', '47', '119', 20, 12, 'TOUCH SCREEN', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106418', 0, 0),
(367, '02-02-01-01-046', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : 65300210, NEW P/N : J01786.0100', 0, 0),
(368, '02-02-01-01-047', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300230', 0, 0),
(369, '02-02-01-01-048', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300232', 0, 0),
(370, '02-02-01-01-049', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300251', 0, 0),
(371, '02-02-01-01-050', '47', '119', 20, 12, 'PROFIBUS DP CONNECTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP102256', 0, 0),
(372, '02-02-01-01-051', '47', '119', 20, 12, 'DC CONVERTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104448', 0, 0),
(373, '02-02-01-01-052', '47', '119', 20, 12, 'DC CONVERTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104828', 0, 0),
(374, '02-02-01-01-053', '47', '119', 20, 12, 'SAFETY RELAY', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104026', 0, 0),
(375, '02-02-01-01-054', '47', '119', 20, 12, 'PLC STOP RELAY', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J017427', 0, 0),
(376, '02-02-01-01-055', '47', '119', 20, 12, 'PULSE AMPLIFIER ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109843', 0, 0),
(377, '02-02-01-01-056', '47', '119', 20, 12, 'DIODE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106058', 0, 0),
(378, '02-02-01-01-057', '47', '119', 20, 12, 'ENCODER, MH MOTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109442', 0, 0),
(379, '02-02-01-01-058', '47', '119', 20, 12, 'MICRO SWITCH ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801903896', 0, 0),
(380, '02-02-01-01-059', '47', '119', 20, 12, 'TT motor brake magnetic coupling', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109991', 0, 0),
(381, '02-02-01-01-060', '47', '119', 20, 12, 'LIMIT SWITCH ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65237124', 0, 0),
(382, '02-02-01-01-061', '47', '119', 20, 12, 'RELAY ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : J019120, NEW P/N : 652381065', 0, 0),
(383, '02-02-01-01-062', '47', '119', 20, 12, 'CONTROL HANDLE , MH/GT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : N5773900, NEW P/N : 65301702', 0, 0),
(384, '02-02-01-01-063', '47', '119', 20, 12, 'CONTROLLER, TROLLEY', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'N5773840', 0, 0),
(385, '02-02-01-01-064', '47', '119', 20, 12, 'PLC(INPUT)', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65267422', 0, 0),
(386, '02-02-01-01-065', '47', '119', 20, 12, 'Spreader anti-sway control unit, sensor', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65302530', 0, 0),
(387, '02-02-01-01-066', '47', '119', 20, 12, 'CHAIN FASTERNER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'N4061070', 0, 0),
(388, '02-02-01-01-067', '47', '119', 20, 12, 'CONNECTING LINK', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '60611634', 0, 0),
(389, '02-02-01-01-068', '47', '119', 20, 12, 'TIME RELAY, BROMMA', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1002028', 0, 0),
(390, '02-02-01-01-069', '47', '119', 20, 12, 'TIME RELAY, BROMMA', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1029946', 0, 0),
(391, '02-02-01-01-070', '47', '119', 20, 12, 'TIME RELAY, BROMMA', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1003363', 0, 0),
(392, '02-02-01-01-071', '47', '119', 20, 12, 'Spreader motor, Twist Lock', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1031544', 0, 0),
(393, '02-02-01-01-072', '47', '119', 20, 12, 'Spreader Telescopic Motor', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1031542', 0, 0),
(394, '02-02-01-01-073', '47', '119', 20, 12, 'PROXIMITY SWITCH', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1034213', 0, 0),
(395, '02-02-01-01-074', '47', '119', 20, 12, 'SOLID STATE REV CONTRACTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1029649', 0, 0),
(396, '02-02-01-01-075', '47', '119', 20, 12, 'SOLID STATE REV CONTRACTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1029647', 0, 0),
(397, '02-02-01-01-076', '47', '119', 20, 12, 'SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031376', 0, 0),
(398, '02-02-01-01-077', '47', '119', 20, 12, 'PROXYMITY SWITCH', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ' J03508.0100', 0, 0),
(399, '02-02-01-01-078', '47', '119', 20, 12, 'SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104231', 0, 0),
(400, '02-02-01-01-079', '47', '119', 20, 12, 'PLC', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP105221', 0, 0),
(401, '02-02-01-01-080', '47', '119', 20, 12, 'GEAR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO31236', 0, 0),
(402, '02-02-02-01-001', '47', '119', 21, 13, 'GEAR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO31322', 0, 1),
(403, '02-02-02-01-002', '47', '119', 21, 13, 'GEAR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO33019', 0, 1),
(404, '02-02-01-01-081', '47', '119', 20, 12, 'RELAY ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : J017427, NEW P/N : 65238128', 0, 0),
(405, '02-02-04-02-024', '47', '119', 23, 16, 'KEY', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '902455800', 0, 1),
(406, '02-02-04-02-025', '47', '119', 23, 16, 'VALVE LEVER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J021481', 0, 1),
(407, '02-02-04-02-026', '47', '119', 23, 16, 'SHAFT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028490', 0, 1),
(408, '02-02-04-02-027', '47', '119', 23, 16, 'ROCKER ARM', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028485', 0, 1),
(409, '02-02-04-02-028', '47', '119', 23, 16, 'ROCKER ARM', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028487', 0, 1),
(410, '02-02-04-02-029', '47', '119', 23, 16, 'VALVE GUIDE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028527', 0, 1),
(411, '02-02-04-02-030', '47', '119', 23, 16, 'VALVE SEAT', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18741', 0, 1),
(412, '02-02-04-02-031', '47', '119', 23, 16, 'VALVE SEAT', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18742', 0, 1),
(413, '02-02-04-02-032', '47', '119', 23, 16, 'INDUCTION VALVE', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028501', 0, 1),
(414, '02-02-04-02-033', '47', '119', 23, 16, 'SPRING PLATE', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018727', 0, 1),
(415, '02-02-04-02-034', '47', '119', 23, 16, 'SPRING', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018728', 0, 1),
(416, '02-02-01-01-082', '47', '119', 20, 12, 'Breaking unit', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J017888', 0, 0),
(417, '02-02-01-01-083', '47', '119', 20, 12, 'IGBT', 'SKM200GAL, 126D', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'SKM200GAL, 126D', 0, 0),
(418, '02-02-01-01-084', '47', '119', 20, 12, 'PLC', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104399', 0, 0),
(419, '02-02-01-01-085', '47', '119', 20, 12, 'TEMPARATURE SENSOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP108758', 0, 0),
(420, '02-02-01-01-086', '47', '119', 20, 12, 'OIL PRESSURE SENSOR ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018887', 0, 0),
(421, '02-02-01-01-087', '47', '119', 20, 12, 'SENSOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031375', 0, 0),
(422, '02-02-04-02-035', '47', '119', 23, 16, 'SENSOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018889', 0, 1),
(423, '02-02-04-02-036', '47', '119', 23, 16, 'SPEED SENSOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06205.0100', 0, 1),
(424, '02-02-04-02-037', '47', '119', 23, 16, 'SENSOR ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031360', 0, 1),
(425, '02-02-04-02-038', '47', '119', 23, 16, 'SOLENOID, SELF STARTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0172, OLD PN: 800045781', 0, 1),
(426, '02-02-04-02-039', '47', '119', 23, 16, 'SENSOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0328', 0, 1),
(427, '02-02-04-02-040', '47', '119', 23, 16, 'GEAR RIM', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028381', 0, 1),
(428, '02-02-04-02-041', '47', '119', 23, 16, 'COOLENT PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J02548.0100', 0, 1),
(429, '02-02-04-02-042', '47', '119', 23, 16, 'WIRE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018895', 0, 1),
(430, '02-02-04-02-043', '47', '119', 23, 16, 'NUT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031379', 0, 1),
(431, '02-02-04-02-044', '47', '119', 23, 16, 'FUSE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J021745', 0, 1),
(432, '02-02-04-02-045', '47', '119', 23, 16, 'TRANSFORMER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109736', 0, 1),
(433, '02-02-04-02-046', '47', '119', 23, 16, 'WIRE HARNESS', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J030605', 0, 1),
(434, '02-02-04-02-047', '47', '119', 23, 16, 'SENSOR, WATER SEPERATOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031360', 0, 1),
(435, '02-02-04-02-048', '47', '119', 23, 16, 'WIRE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0333', 0, 1),
(436, '02-02-04-02-049', '47', '119', 23, 16, 'RUBBER BEND', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J029726', 0, 1),
(437, '02-02-04-02-050', '47', '119', 23, 16, 'PIPE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035272', 0, 1),
(438, '02-02-04-02-051', '47', '119', 23, 16, 'JOIN FITTING', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035273', 0, 1),
(439, '02-02-04-02-052', '47', '119', 23, 16, 'CIRCUIT BREAKER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP108176', 0, 1),
(440, '02-02-04-02-053', '47', '119', 23, 16, 'WIRING SET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033111', 0, 1),
(441, '02-02-01-01-088', '47', '119', 20, 12, 'QUICK COUPLER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924473.0042', 0, 0),
(442, '02-02-04-02-054', '47', '119', 23, 16, 'QUICK COUPLER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924473.0041', 0, 1),
(443, '02-02-04-02-055', '47', '119', 23, 16, 'WASHER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920058.019', 0, 1),
(444, '02-02-04-02-056', '47', '119', 23, 16, 'COOLING SYSTEM', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0090130', 0, 1),
(445, '02-02-04-01-008', '47', '119', 23, 15, 'HEAD GASKET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '21575727', 0, 1),
(446, '02-02-01-01-089', '47', '119', 20, 12, 'SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920971.0009', 0, 0),
(447, '02-02-04-02-057', '47', '119', 23, 16, 'GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033018', 0, 1),
(448, '02-02-04-02-058', '47', '119', 23, 16, 'GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033019', 0, 1),
(449, '02-02-04-02-059', '47', '119', 23, 16, 'PUSH ROD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06456.0100', 0, 1),
(450, '02-02-04-02-060', '47', '119', 23, 16, 'GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033064', 0, 1),
(451, '02-02-01-01-090', '47', '119', 20, 12, 'SOLENOID', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0362', 0, 0),
(452, '02-02-02-01-003', '47', '119', 21, 13, 'PLANETARY GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0002020', 0, 1),
(453, '02-02-02-01-004', '47', '119', 21, 13, 'DRIVE GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0002030', 0, 1),
(454, '02-02-01-01-091', '47', '119', 20, 12, 'SENSOR SPEED', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP110853', 0, 0),
(455, '02-02-01-01-092', '47', '119', 20, 12, 'RECTIFIER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0016860', 0, 0),
(456, '02-02-04-02-061', '47', '119', 23, 16, 'PISTON', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06672.0100', 0, 1),
(457, '02-02-01-01-093', '47', '119', 20, 12, 'TELEPHONE ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP101111', 0, 0),
(458, '02-02-01-01-094', '47', '119', 20, 12, 'DISPLAY ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106418', 0, 0),
(459, '02-02-01-01-095', '47', '119', 20, 12, 'GT MOTOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'KS102237', 0, 0),
(460, '02-02-04-01-009', '47', '119', 23, 15, 'ENGINE CONTROL UNIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1717', 0, 1),
(461, '02-02-01-01-096', '47', '119', 20, 12, 'RECTIFIER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0025250', 0, 0),
(462, '02-02-04-01-010', '47', '119', 23, 15, 'WATER PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J04118.0100', 0, 1),
(463, '02-02-04-01-011', '47', '119', 23, 15, 'OIL PRESSURE SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0535', 0, 1),
(464, '02-02-04-01-012', '47', '119', 23, 15, 'OIL PRESSURE SENSOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J04060.0100', 0, 1),
(465, '02-02-01-01-097', '47', '119', 20, 12, 'PLC', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP107217', 0, 0),
(466, '02-02-01-01-098', '47', '119', 20, 12, 'MEMORY CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP110105', 0, 0),
(467, '02-02-04-01-013', '47', '119', 23, 15, 'AC PUMP HOUSING', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1401', 0, 1),
(468, '02-02-04-01-014', '47', '119', 23, 15, 'THERMOSTAT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08619.0100', 0, 1),
(469, '02-02-04-02-062', '47', '119', 23, 16, 'BELT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035539', 0, 1),
(470, '02-02-04-02-063', '47', '119', 23, 16, 'BOLT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028376', 0, 1),
(471, '02-02-04-02-064', '47', '119', 23, 16, 'TURBO CHARGER PIPE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0001980', 0, 1),
(472, '02-02-04-02-065', '47', '119', 23, 16, 'TURBO CHAEGER OIL PIPE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028561', 0, 1),
(473, '02-02-01-01-099', '47', '119', 20, 12, 'PLC', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP115701', 0, 0),
(474, '02-02-01-01-100', '47', '119', 20, 12, 'PLC', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP115632', 0, 0),
(475, '02-02-01-01-101', '47', '119', 20, 12, 'PLC', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0041210', 0, 0),
(476, '02-02-01-01-102', '47', '119', 20, 12, 'PLC', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP110316', 0, 0),
(477, '02-02-01-01-103', '47', '119', 20, 12, 'CONVERTER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP116570', 0, 0),
(478, '02-02-01-01-104', '47', '119', 20, 12, 'INJECTOR HOLDER (CLAMP)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J032029', 0, 0),
(479, '02-02-04-01-015', '47', '119', 23, 15, 'BELT ADJUSTER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.4523', 0, 1),
(480, '02-02-04-01-016', '47', '119', 23, 15, 'BELT ADJUSTER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0229', 0, 1),
(481, '02-02-04-01-017', '47', '119', 23, 15, 'SUPPORT WHEEL', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18517', 0, 1),
(482, '09-01-01-01-001', '54', '135', 68, 54, 'GREASE', 'EP-2', '', '', 2, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'EP-2', 0, 0),
(483, '09-01-01-01-002', '54', '135', 68, 54, 'ENGINE OIL', '15W-40', '', '', 0, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '15w40', 0, 0),
(484, '09-01-01-01-003', '54', '135', 68, 54, 'HYDRAULIC', 'DTE-25', '', '', 3, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ISO VG 46', 0, 0),
(485, '09-01-01-01-004', '54', '135', 68, 54, 'HYDRAULIC', 'DTE-26', '', '', 3, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ISO VG 68', 0, 0),
(486, '09-01-01-01-005', '54', '135', 68, 54, 'ENGINE OIL', '20W-50', '', '', 10, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '20W-50', 0, 0),
(487, '09-01-01-01-006', '54', '135', 68, 54, 'BRAKE OIL', 'DOT-4', '', '', 5, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'DOT-4', 0, 0),
(488, '09-01-01-01-007', '54', '135', 68, 54, 'GEAR OIL', '80W-90', '', '', 1, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '80W-90', 0, 0),
(489, '09-01-01-01-008', '54', '135', 68, 54, 'GEAR OIL', '85W-140', '', '', 0, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '85W-140', 0, 0),
(490, '09-01-01-01-009', '54', '135', 68, 54, 'GEAR OIL', 'GEAR OIL-220', '', '', 1, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'GEAR OIL-220', 0, 0),
(491, '09-01-01-01-010', '54', '135', 68, 54, 'GEAR OIL', 'GEAR OIL-320', '', '', 1, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'GEAR OIL-320', 0, 0),
(492, '09-01-01-01-011', '54', '135', 68, 54, 'TRANSMISSION FLUID', 'ATF-220', '', '', 1, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ATF-220', 0, 0),
(493, '09-01-01-01-012', '54', '135', 68, 54, 'RADIATOR COOLANT', 'VELCOOL HIGH-TEC', '', '', 20, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'VELCOOL HIGH-TEC', 0, 0),
(494, '09-01-01-01-013', '54', '135', 68, 54, 'GREASE', 'XHP-222', '', '', 1, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'XHP-222', 0, 0),
(495, '08-01-01-01-001', '53', '136', 69, 55, 'DIESEL', '---', '', '', 4000, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(496, '04-02-04-01-001', '49', '126', 48, 39, 'ALTERNATOR ASSY', '---', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '134153', 0, 1),
(497, '07-01-01-01-001', '52', '134', 67, 53, 'TYRE TUBELESS', '18.00X25', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(498, '07-01-01-01-002', '52', '134', 67, 53, 'TYRE TUBELESS', '16.00X25', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(499, '07-01-01-01-003', '52', '134', 67, 53, 'TYRE TUBELESS', '14.00X24', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(500, '07-01-01-01-004', '52', '134', 67, 53, 'TUBE TYRE', '14.00X24', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(501, '07-01-01-01-005', '52', '134', 67, 53, 'TYRE', '12.00X24', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(502, '07-01-01-01-006', '52', '134', 67, 53, 'TYRE', '11.00X20', '', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(503, '07-01-01-01-007', '52', '134', 67, 53, 'TYRE (RECON) ', '10.00X20', '', '', 20, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(504, '07-01-01-01-008', '52', '134', 67, 53, 'TYRE LUG', '10.00X20', '', '', 14, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(505, '07-01-01-01-009', '52', '134', 67, 53, 'TYRE RIP', '10.00X20', '', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(506, '04-02-01-01-001', '49', '126', 45, 33, 'AC-DC CONVERTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144037', 0, 0),
(508, '04-02-02-01-001', '49', '126', 46, 60, 'BRAKE PISTON SEAL(L)', '--', '', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401005-00033', 0, 1),
(509, '04-02-02-01-002', '49', '126', 46, 60, 'BRAKE PISTON SEAL(S)', '--', '', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401005-00034', 0, 1),
(510, '04-02-02-01-003', '49', '126', 46, 60, 'BOLT', '--', '', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '120106-00185', 0, 1),
(511, '04-02-02-01-004', '49', '126', 46, 60, 'BUSHING', '--', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '131002-00050', 0, 1),
(512, '04-02-02-01-005', '49', '126', 46, 60, 'BRAKE DISK', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130106-00004', 0, 1),
(513, '02-02-04-02-066', '47', '119', 23, 16, 'SCREW', '', '', '', 16, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO28149', 0, 1),
(514, '02-02-04-02-067', '47', '119', 23, 16, 'SCREW', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO31245', 0, 1),
(515, '02-02-04-02-068', '47', '119', 23, 16, 'CYLINDER HEAD', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO9912.0100', 0, 1),
(516, '02-02-02-01-005', '47', '119', 21, 13, 'OPERATOR CHAIR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65301750', 0, 1),
(517, '04-02-02-01-006', '49', '126', 46, 60, 'BEARING ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A233544', 0, 1),
(518, '04-02-02-01-007', '49', '126', 46, 60, 'BRAKE PISTON SEAL(L)', '--', '', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '111102-00081', 0, 1),
(519, '04-02-02-01-008', '49', '126', 46, 60, 'BRAKE PISTON SEAL(S)', '--', '', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '111102-00082', 0, 1),
(520, '04-02-02-01-009', '49', '126', 46, 60, 'BEARING ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '6593410-0087', 0, 1),
(521, '04-02-02-01-010', '49', '126', 46, 60, 'BEARING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A136314', 0, 1),
(522, '04-02-02-01-011', '49', '126', 46, 60, 'BEARING SLEEVE', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J019428', 0, 1),
(523, '04-02-02-01-012', '49', '126', 46, 60, 'BASE BEARING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976-5301', 0, 1),
(524, '04-02-02-01-013', '49', '126', 46, 60, 'BASE BEARING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976-5304', 0, 1),
(525, '04-02-02-01-014', '49', '126', 46, 60, 'BASE BEARING KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J00248-0100', 0, 1),
(526, '04-02-02-01-015', '49', '126', 46, 60, 'BRAKE VALVE', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.2407', 0, 1),
(527, '04-02-02-01-016', '49', '126', 46, 60, 'BEARING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3926', 0, 1),
(528, '04-02-02-01-017', '49', '126', 46, 60, 'BEARING THUST', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A141145', 0, 1),
(529, '04-02-02-01-018', '49', '126', 46, 60, 'BEARING,CONNECTING ROD', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J013692', 0, 1),
(530, '04-02-02-01-019', '49', '126', 46, 60, 'BUSHING,CAM SHAFT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130702-00270', 0, 1),
(531, '04-02-02-01-020', '49', '126', 46, 60, 'MAIN BEARING ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.01110.6351', 0, 1),
(532, '04-02-02-01-021', '49', '126', 46, 60, 'BELT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.2429', 0, 1),
(533, '04-02-02-01-022', '49', '126', 46, 60, 'CLUTCH PLATE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180320', 0, 1),
(534, '04-02-02-01-023', '49', '126', 46, 60, 'CLUTCH PLATE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180302', 0, 1),
(535, '04-02-02-01-024', '49', '126', 46, 60, 'CLUTCH PISTON', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A433120', 0, 1),
(536, '04-02-02-01-025', '49', '126', 46, 60, 'CHARGING PUMP', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400916-00192', 0, 1),
(537, '04-02-02-01-026', '49', '126', 46, 60, 'CLUTCH SPRING KEY-SNAP RING', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180432', 0, 1),
(538, '04-02-02-01-027', '49', '126', 46, 60, 'CONVERTION SEAL', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD-A433194 NEW P/N-40110701683', 0, 1),
(539, '04-02-02-01-028', '49', '126', 46, 60, 'CLUTCH PLATE', '', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '180339', 0, 1),
(540, '04-02-02-01-029', '49', '126', 46, 60, 'CONVERTER TORQUE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130901-00026', 0, 1),
(541, '04-02-01-01-002', '49', '126', 45, 33, 'CONTROLLER ASSY(WIPER TIMER)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A464040', 0, 0),
(542, '04-02-01-01-003', '49', '126', 45, 33, 'CONTROLLER ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '300611-00173', 0, 0),
(543, '04-02-01-01-004', '49', '126', 45, 33, 'CONTROLLER (OSS)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A404032', 0, 0),
(544, '04-02-02-01-030', '49', '126', 46, 60, 'CONNECTING ROD', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.210P6003', 0, 1),
(545, '04-02-02-01-031', '49', '126', 46, 60, 'CRANK SHAFT BEARING KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829-1788', 0, 1),
(546, '04-02-02-01-032', '49', '126', 46, 60, 'CAM SHAFT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J037245', 0, 1),
(547, '04-02-02-01-033', '49', '126', 46, 60, 'CRANK SHAFT ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1789', 0, 1),
(548, '04-02-02-01-034', '49', '126', 46, 60, 'CHARGING PUMP,COMPLETE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J07045.0100', 0, 1),
(549, '04-02-01-01-005', '49', '126', 45, 33, 'CONTROL LEVER MULTI TOOLS,LEFT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920476.016', 0, 0),
(550, '04-02-02-01-035', '49', '126', 46, 60, 'CABLE CHAIN', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K23021651H', 0, 1),
(551, '04-02-02-01-036', '49', '126', 46, 60, 'CYLINDER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP109719', 0, 1),
(552, '04-02-02-01-037', '49', '126', 46, 60, 'COTTER VALVE', '--', '', '', 10, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.04104.0006', 0, 1),
(553, '04-02-01-01-006', '49', '126', 45, 33, 'DISPLAY ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '970210-00006', 0, 0),
(554, '04-02-01-01-007', '49', '126', 45, 33, 'DC CONVERTER ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '300612-00115', 0, 0),
(555, '04-02-02-01-038', '49', '126', 46, 60, 'DISC I.CLUTCH', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.222-00029', 0, 1),
(556, '04-02-02-01-039', '49', '126', 46, 60, 'DISC', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.222-00004', 0, 1),
(557, '04-02-02-01-040', '49', '126', 46, 60, 'DISC-O.CLUTCH', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.222-00003', 0, 1),
(558, '04-02-02-01-041', '49', '126', 46, 60, 'DISC-I.CLUTCH', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K-9004332', 0, 1),
(559, '04-02-02-01-042', '49', '126', 46, 60, 'DISC-O.CLUTCH', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K9004328', 0, 1),
(560, '04-02-02-01-043', '49', '126', 46, 60, 'DISC-O.CLUTCH', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K9004327', 0, 1),
(561, '04-02-02-01-044', '49', '126', 46, 60, 'FEED PUMP ASSY(PRIMING PUMP)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.105220.6290', 0, 1),
(562, '04-02-02-01-045', '49', '126', 46, 60, 'GEAR PUMP ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D514300', 0, 1),
(563, '04-02-02-01-046', '49', '126', 46, 60, 'GASKET KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '6599601-8006', 0, 1),
(564, '04-02-02-01-047', '49', '126', 46, 60, 'GASKET,TRANS VALVE', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A138704', 0, 1),
(565, '04-02-04-01-002', '49', '126', 48, 39, 'GASKET', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65039010070A', 0, 1),
(566, '04-02-04-01-003', '49', '126', 48, 39, 'GASKET', '--', '', '', 2, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K9000109', 0, 1),
(567, '04-02-04-01-004', '49', '126', 48, 39, 'GASKET SET (UP)', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.99605-8011K', 0, 1),
(568, '04-02-04-01-005', '49', '126', 48, 39, 'GASKET SET (ALL)', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.99601-8015', 0, 1),
(569, '04-02-04-01-006', '49', '126', 48, 39, 'GASKET', '--', '', '', 2, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K-9000115', 0, 1),
(570, '04-02-02-01-048', '49', '126', 46, 60, 'GEAR SIDE', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130418-00027', 0, 1),
(571, '04-02-02-01-049', '49', '126', 46, 60, 'GEAR , PISTON', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130419-00005', 0, 1),
(572, '04-02-01-01-008', '49', '126', 45, 33, 'HARNESS ASSY', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '310207.0223', 0, 0),
(573, '04-02-01-01-009', '49', '126', 45, 33, 'HARNESS', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '310207-04692', 0, 0),
(574, '04-02-01-01-010', '49', '126', 45, 33, 'HARNESS ASSY, SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144019', 0, 0),
(575, '04-02-01-01-011', '49', '126', 45, 33, 'HARNESS ASSY, SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A334089', 0, 0),
(576, '04-02-02-01-050', '49', '126', 46, 60, 'KNOP , WHEEL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A401083', 0, 1),
(577, '04-02-04-01-007', '49', '126', 48, 39, 'CYLINDER LINNER', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.01201.0050', 0, 1),
(578, '04-02-04-01-008', '49', '126', 48, 39, 'LINER CYLINDER', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.01201.0068', 0, 1),
(579, '04-02-04-01-009', '49', '126', 48, 39, 'MISSION BEARING SHIM T-0.1', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '123166', 0, 1),
(580, '04-02-04-01-010', '49', '126', 48, 39, 'MISSION BEARING SHIM T-0.5', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A123168', 0, 1),
(581, '04-02-02-01-051', '49', '126', 46, 60, 'SPRING', '--', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '111601-00043', 0, 1),
(582, '04-02-02-01-052', '49', '126', 46, 60, 'MISSION BEARING SHIM (L)', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180349', 0, 1),
(583, '04-02-02-01-053', '49', '126', 46, 60, 'MISSION BEARING SHIM (L)', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180350', 0, 1);
INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_level3_id`, `material_level4_id`, `material_description`, `spec`, `location`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`, `current_balance`, `is_manual_code_edit`) VALUES
(584, '04-02-02-01-054', '49', '126', 46, 60, 'MISSION BEARING SHIM (L)', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180351', 0, 1),
(585, '04-02-02-01-055', '49', '126', 46, 60, 'MISSION SEAL RING', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180453', 0, 1),
(586, '04-02-02-01-056', '49', '126', 46, 60, 'MOTOR HYDRAULIC FAN', 'FAN MOTOR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400702-00015 NEW PART NO : 400702-00078', 0, 1),
(587, '04-02-01-01-012', '49', '126', 45, 33, 'MOTOR (STOP)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N: 2523-9016 NEW P/N: A234016', 0, 0),
(588, '04-02-02-01-057', '49', '126', 46, 60, 'METAL CAR', '--', '', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.011101.6090B', 0, 1),
(589, '04-02-02-01-058', '49', '126', 46, 60, 'MISSION SEAL RING', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A138654', 0, 1),
(590, '04-02-02-01-059', '49', '126', 46, 60, 'MANIFOLD-HYDRAULIC-CONTROL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400824-00007', 0, 1),
(591, '04-02-04-01-011', '49', '126', 48, 39, 'METAL, CONNECTING ROD', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.02410.0010', 0, 1),
(592, '04-02-04-01-012', '49', '126', 48, 39, 'NOZZLE,INJECTION', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.10102.6058', 0, 1),
(593, '04-02-01-01-013', '49', '126', 45, 33, 'OIL SWITCH', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.27441.7007', 0, 0),
(594, '04-02-03-01-001', '49', '126', 47, 61, 'OIL SEAL ', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401106-00046', 0, 1),
(595, '04-02-03-01-002', '49', '126', 47, 61, 'OIL SEAL ', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401106-00044', 0, 1),
(596, '04-02-04-01-013', '49', '126', 48, 39, 'PISTON RING (S)', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A433219', 0, 1),
(597, '04-02-04-01-014', '49', '126', 48, 39, 'PISTON RING (L)', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A433191', 0, 1),
(598, '04-02-03-01-003', '49', '126', 47, 61, 'PLATE FICTION ', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130113-00009', 0, 1),
(599, '04-02-03-01-004', '49', '126', 47, 61, 'PISTON BRAKE ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130602-00087', 0, 1),
(600, '04-02-03-01-005', '49', '126', 47, 61, 'PUMP ASSY ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.11101-7405A', 0, 1),
(601, '04-02-03-01-006', '49', '126', 47, 61, 'PUMP ASSY ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.06500-6400B', 0, 1),
(602, '04-02-03-01-007', '49', '126', 47, 61, 'PUMP FEED ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '105220-6290', 0, 1),
(603, '04-02-04-01-015', '49', '126', 48, 39, 'PISTON', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130602-00268', 0, 1),
(604, '04-02-04-01-016', '49', '126', 48, 39, 'PISTON', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.409-00035', 0, 1),
(605, '04-02-04-01-017', '49', '126', 48, 39, 'PLUG CORE (CY. BLOCK)', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.90302.0041', 0, 1),
(606, '04-02-04-01-018', '49', '126', 48, 39, 'POWER CYL. BOOT', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '430205-00007', 0, 1),
(607, '04-02-04-01-019', '49', '126', 48, 39, 'PISTON', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.02501.0228B', 0, 1),
(608, '04-02-04-01-020', '49', '126', 48, 39, 'RETAINER SPRING', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A433212', 0, 1),
(609, '04-02-01-01-014', '49', '126', 45, 33, 'REGULATOR ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A134172', 0, 0),
(610, '04-02-03-01-008', '49', '126', 47, 61, 'RING SQUARE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401003-00038', 0, 1),
(611, '04-02-03-01-009', '49', '126', 47, 61, 'RING SQUARE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401003-00039', 0, 1),
(612, '04-02-01-01-015', '49', '126', 45, 33, 'REGULATOR ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144161', 0, 0),
(613, '04-02-01-01-016', '49', '126', 45, 33, 'RECTIFIER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144090', 0, 0),
(614, '04-02-04-01-021', '49', '126', 48, 39, 'PISTON RING ', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : 65.0250390099, NEW P/N :  65.02503-0116', 0, 1),
(615, '04-02-01-01-017', '49', '126', 45, 33, 'ROTOR ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144081', 0, 0),
(616, '04-02-04-01-022', '49', '126', 48, 39, 'RING KIT , PISTON', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.02503.8146', 0, 1),
(617, '04-02-04-01-023', '49', '126', 48, 39, 'RING , VALVE SEAT', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.03203.1029G', 0, 1),
(618, '04-02-04-01-024', '49', '126', 48, 39, 'RING VALVE SEAT, CY HEAD', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.03203.1028D', 0, 1),
(619, '04-02-03-01-010', '49', '126', 47, 61, 'STEERING UNIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D512998', 0, 1),
(620, '04-02-04-01-025', '49', '126', 48, 39, 'SPIDER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '850434-00002', 0, 1),
(621, '04-02-03-01-011', '49', '126', 47, 61, 'SEAL OIL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '850434-00002', 0, 1),
(622, '04-02-03-01-012', '49', '126', 47, 61, 'SEAL OIL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A141118', 0, 1),
(623, '04-02-03-01-013', '49', '126', 47, 61, 'SEAL OIL , VALVE STEM', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.04902.0013', 0, 1),
(624, '04-02-01-01-018', '49', '126', 45, 33, 'PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '301309-00011', 0, 0),
(625, '04-02-04-01-026', '49', '126', 48, 39, 'SPRING RETAIN ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '433211', 0, 1),
(626, '04-02-04-01-027', '49', '126', 48, 39, 'SHIM T-O-25', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A123167', 0, 1),
(627, '04-02-04-01-028', '49', '126', 48, 39, 'SNAP RING', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A433183', 0, 1),
(628, '04-02-01-01-019', '49', '126', 45, 33, 'SOLINOID VALVE ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A353101', 0, 0),
(629, '04-02-01-01-020', '49', '126', 45, 33, 'STARER ASSY-7044', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A124102', 0, 0),
(630, '04-02-01-01-021', '49', '126', 45, 33, 'SWITCH LEVER F-R', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A134068', 0, 0),
(631, '04-02-01-01-022', '49', '126', 45, 33, 'STARER ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '300516-00055C', 0, 0),
(632, '04-02-01-01-023', '49', '126', 45, 33, 'SWITCH ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A138692', 0, 0),
(633, '04-02-01-01-024', '49', '126', 45, 33, 'SWITCH ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A134026', 0, 0),
(634, '04-02-01-01-025', '49', '126', 45, 33, 'SOLINOID VALVE', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A138707', 0, 0),
(635, '04-02-02-01-060', '49', '126', 46, 60, 'MECHANICAL SEAL', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.06520-6007', 0, 1),
(636, '04-02-01-01-026', '49', '126', 45, 33, 'STARTER ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '30051600041A', 0, 0),
(637, '04-02-01-01-027', '49', '126', 45, 33, 'SWITCH', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '6504192-0060', 0, 0),
(638, '04-02-03-01-014', '49', '126', 47, 61, 'SPACER ', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A137005', 0, 1),
(639, '04-02-01-01-028', '49', '126', 45, 33, 'QSS CONTROLLER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '300611-042201', 0, 0),
(640, '04-02-04-01-029', '49', '126', 48, 39, 'SHIM-END', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.114-00164', 0, 1),
(641, '04-02-03-01-015', '49', '126', 47, 61, 'SHIM', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K-9004333', 0, 1),
(642, '04-02-04-01-030', '49', '126', 48, 39, 'SPRING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.131-00084', 0, 1),
(643, '04-02-04-01-031', '49', '126', 48, 39, 'SPRING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.131-00082', 0, 1),
(644, '04-02-04-01-032', '49', '126', 48, 39, 'SPRING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K-9004351', 0, 1),
(645, '04-02-01-01-029', '49', '126', 45, 33, 'TEMPERATURE SWITCH', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '9239410552', 0, 0),
(646, '04-02-04-01-033', '49', '126', 48, 39, 'THRUST WASHER ', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D917148', 0, 1),
(647, '04-02-04-01-034', '49', '126', 48, 39, 'THRUST WASHER ', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D917138', 0, 1),
(648, '04-02-04-01-035', '49', '126', 48, 39, 'TURBO CHARGER ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.09100-7038', 0, 1),
(649, '04-02-01-01-030', '49', '126', 45, 33, 'TIMER QOS ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144193', 0, 0),
(650, '04-02-01-01-031', '49', '126', 45, 33, 'TRANSMITER SENSOR', 'BOTH ARE SAME', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A453468 & A138738', 0, 0),
(651, '04-02-01-01-032', '49', '126', 45, 33, 'TRANSMITER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A138741', 0, 0),
(652, '04-02-04-01-036', '49', '126', 48, 39, 'THRUST WASHER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '120816-00083A', 0, 1),
(653, '04-02-04-01-037', '49', '126', 48, 39, 'THRUST WASHER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '120816-00084A', 0, 1),
(654, '04-02-04-01-038', '49', '126', 48, 39, 'VALVE EXHUST', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.04101.0042', 0, 1),
(655, '04-02-04-01-039', '49', '126', 48, 39, 'VALVE INLET', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.04101.0041', 0, 1),
(656, '04-02-04-01-040', '49', '126', 48, 39, 'VALVE NIDDLE', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D512743', 0, 1),
(657, '04-02-04-01-041', '49', '126', 48, 39, 'VALVE GUIDE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.03201.1011A', 0, 1),
(658, '04-02-03-01-016', '49', '126', 47, 61, 'VALVE ASSY - CHECK', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A135281', 0, 1),
(659, '04-02-03-01-017', '49', '126', 47, 61, 'VALVE ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A453029', 0, 1),
(660, '04-02-01-01-033', '49', '126', 45, 33, 'WIRE HARNESS,TRANS,BRK', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A138711', 0, 0),
(661, '04-02-03-01-018', '49', '126', 47, 61, 'COOLING PUMP ASSY ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N: 06500064 0013 NEW P/N: A363015', 0, 1),
(662, '04-02-04-01-042', '49', '126', 48, 39, 'WATER PUMP ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.06500-6145D', 0, 1),
(663, '04-02-04-01-043', '49', '126', 48, 39, 'THRUST WASHER', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '120816-00010', 0, 1),
(664, '04-01-01-01-001', '49', '125', 49, 34, 'ALTERNATOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921066-005', 0, 0),
(665, '04-01-01-01-002', '49', '125', 49, 34, 'ALTERNATOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944-2402', 0, 0),
(666, '04-01-01-01-003', '49', '125', 49, 34, 'CONTROL UNIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923732.001', 0, 0),
(667, '04-01-01-01-004', '49', '125', 49, 34, 'CONTROL UNIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A54748.0100', 0, 0),
(668, '04-01-01-01-005', '49', '125', 49, 34, 'CONTROL UNIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923732.0015', 0, 0),
(669, '04-01-01-01-006', '49', '125', 49, 34, 'CONTROLLER UNIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A-49904-0400', 0, 0),
(670, '04-01-01-01-007', '49', '125', 49, 34, 'CONTROL UNIT-DISPLAY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923741.P013', 0, 0),
(671, '04-01-01-01-008', '49', '125', 49, 34, 'CONTROL UNIT (KEY BOARD)', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923732.0012', 0, 0),
(672, '04-01-03-01-001', '49', '125', 51, 35, 'CYLINDER GPS', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D501975', 0, 1),
(673, '04-01-01-01-009', '49', '125', 49, 34, 'CONTROLLER ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '300611-00423', 0, 0),
(674, '04-01-02-01-001', '49', '125', 50, 36, 'CLUTCH OUTER DISC', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923468.0194', 0, 1),
(675, '04-01-02-01-002', '49', '125', 50, 36, 'CABLE CHAIN', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J05493.0100', 0, 1),
(676, '04-01-01-01-010', '49', '125', 49, 34, 'CONTROL LEVER-MULTI PUR. LEFT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920930.0057', 0, 0),
(677, '04-01-01-01-011', '49', '125', 49, 34, 'CONTROL LEVER,MULTI PUR. RIGHT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920476.019', 0, 0),
(678, '04-01-01-01-012', '49', '125', 49, 34, 'COIL', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110.0855', 0, 0),
(679, '04-01-02-01-003', '49', '125', 50, 36, 'CLUTCH INNER DISK', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.0246', 0, 1),
(680, '04-01-04-02-001', '49', '125', 52, 62, 'EXHAUST VALVE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976-1606', 0, 1),
(681, '04-01-04-02-002', '49', '125', 52, 62, 'FUEL PUMP', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1257', 0, 1),
(682, '04-01-01-01-013', '49', '125', 49, 34, 'FAN', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.6006', 0, 0),
(683, '04-01-04-02-003', '49', '125', 52, 62, 'GASKET KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920744-0026', 0, 1),
(684, '04-01-02-01-004', '49', '125', 50, 36, 'GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923468-0218', 0, 1),
(685, '04-01-04-01-001', '49', '125', 52, 38, 'GASKET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3989', 0, 1),
(686, '04-01-04-02-004', '49', '125', 52, 62, 'GASKET-OIL PAN', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J07665.0100', 0, 1),
(687, '04-01-04-02-005', '49', '125', 52, 62, 'GASKET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '802311202', 0, 1),
(688, '04-01-04-02-006', '49', '125', 52, 62, 'GASKET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3936', 0, 1),
(689, '04-01-04-02-007', '49', '125', 52, 62, 'GASKET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1925', 0, 1),
(690, '04-01-04-02-008', '49', '125', 52, 62, 'GASKET', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J032163', 0, 1),
(691, '04-01-02-01-005', '49', '125', 50, 36, 'GEAR RIM', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '800033602', 0, 1),
(692, '04-01-03-01-002', '49', '125', 51, 35, 'HYDROLIC PUMP', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923142-0021', 0, 1),
(693, '04-01-02-01-006', '49', '125', 50, 36, 'HOUSING-PLANTRY GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '80231-1010', 0, 1),
(694, '04-01-04-02-009', '49', '125', 52, 62, 'HEAD GASKET (0070A)', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400603-00119', 0, 1),
(695, '04-01-03-01-003', '49', '125', 51, 35, 'HYDRAULIC CYLINDER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J05549.0100', 0, 1),
(696, '04-01-01-01-014', '49', '125', 49, 34, 'INDUCTIVE SWITCH', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP107575', 0, 0),
(697, '04-01-04-02-010', '49', '125', 52, 62, 'INJECTOR', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.0069', 0, 1),
(698, '04-01-03-01-004', '49', '125', 51, 35, 'INDUCTION VALVE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J017841', 0, 1),
(699, '04-01-01-01-015', '49', '125', 49, 34, 'IGNITION SWITCH', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920451.005', 0, 0),
(700, '04-01-01-01-016', '49', '125', 49, 34, 'JOYSTICK', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920943.0058', 0, 0),
(701, '04-01-01-01-017', '49', '125', 49, 34, 'JOYSTICK', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A65303.0100', 0, 0),
(702, '04-01-01-01-018', '49', '125', 49, 34, 'PROXIMITY SENSOR', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J03508.0100', 0, 0),
(703, '04-01-01-01-019', '49', '125', 49, 34, 'POTENTIO METER ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923023.0035', 0, 0),
(704, '04-01-03-01-005', '49', '125', 51, 35, 'PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923141.0095', 0, 1),
(705, '04-01-03-01-006', '49', '125', 51, 35, 'PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923141.0099', 0, 1),
(706, '04-01-03-01-007', '49', '125', 51, 35, 'PUMP ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D514156', 0, 1),
(707, '04-01-03-01-008', '49', '125', 51, 35, 'PLANET WHEEL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923468.0215', 0, 1),
(708, '04-01-01-01-020', '49', '125', 49, 34, 'PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J020321', 0, 0),
(709, '04-01-01-01-021', '49', '125', 49, 34, 'START MOTOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922318-0003', 0, 0),
(710, '04-01-04-02-011', '49', '125', 52, 62, 'SEAL KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920160-0004', 0, 1),
(711, '04-01-02-01-007', '49', '125', 50, 36, 'SUN GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923468-0216', 0, 1),
(712, '04-01-03-01-009', '49', '125', 51, 35, 'SEAL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923436-0775', 0, 1),
(713, '04-01-03-01-010', '49', '125', 51, 35, 'SPLINE SLEEVE-PUMP', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922067.0005', 0, 1),
(714, '04-01-01-01-022', '49', '125', 49, 34, 'SOLENOID', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2303', 0, 0),
(715, '04-01-01-01-023', '49', '125', 49, 34, 'POSITION SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923088.0008', 0, 0),
(716, '04-01-01-01-024', '49', '125', 49, 34, 'SENSOR', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP122033', 0, 0),
(717, '04-01-03-01-011', '49', '125', 51, 35, 'TWIST LOCK PIN', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J05484.0100', 0, 1),
(718, '04-01-04-02-012', '49', '125', 52, 62, 'TURBO COMPRESSOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110-0463', 0, 1),
(719, '04-01-03-01-012', '49', '125', 51, 35, 'VALVE SPOOL', '--', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J09159.0100', 0, 1),
(720, '01-02-01-01-001', '46', '117', 14, 6, 'INVERTER', '', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '87216-11011- S0120', 0, 0),
(721, '01-02-01-01-002', '46', '117', 14, 6, 'AVR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(722, '01-02-01-01-003', '46', '117', 14, 6, 'I/0 BOARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(723, '04-01-03-01-013', '49', '125', 51, 35, 'CYLINDER-MASTER SUB ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A441915', 0, 1),
(724, '01-02-01-01-004', '46', '117', 14, 6, 'SPEED CONTROLLER', 'PG-B-HMS', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(725, '01-02-01-01-005', '46', '117', 14, 6, 'GRTR & BOARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(726, '04-01-01-01-025', '49', '125', 49, 34, 'CONTROLLER ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A4S4072', 0, 0),
(727, '01-02-01-01-006', '46', '117', 14, 6, 'SENSOR', 'NM-2YE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(728, '04-01-01-01-026', '49', '125', 49, 34, 'CONTROLLER ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '30061-0424', 0, 0),
(729, '01-02-01-01-007', '46', '117', 14, 6, 'CIRCUIT', 'T-563-03D', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(730, '01-02-01-01-008', '46', '117', 14, 6, 'BASE UNIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(731, '04-01-02-01-008', '49', '125', 50, 36, 'CHAIN SHEAVE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A136845', 0, 1),
(732, '01-02-01-01-009', '46', '117', 14, 6, 'I/0 BOARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(733, '01-02-01-01-010', '46', '117', 14, 6, 'POWER FUSE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(734, '01-02-01-01-011', '46', '117', 14, 6, 'POWER SUPPLY  UNIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(735, '04-01-02-01-009', '49', '125', 50, 36, 'COUPLING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '430210-00047', 0, 1),
(736, '01-02-01-01-012', '46', '117', 14, 6, 'AI CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(737, '01-02-01-01-013', '46', '117', 14, 6, 'DO CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-23', 0, 0),
(738, '04-01-02-01-010', '49', '125', 50, 36, 'COUPLING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K9006659', 0, 1),
(739, '01-02-01-01-014', '46', '117', 14, 6, 'DI CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-17', 0, 0),
(740, '01-02-01-01-015', '46', '117', 14, 6, 'DO CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-21', 0, 0),
(741, '04-01-02-01-011', '49', '125', 50, 36, 'COUPLING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K9006660', 0, 1),
(742, '01-02-01-01-016', '46', '117', 14, 6, 'DI CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-16', 0, 0),
(743, '01-02-01-01-017', '46', '117', 14, 6, 'DO CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-22', 0, 0),
(744, '01-02-01-01-018', '46', '117', 14, 6, 'DI CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-13', 0, 0),
(745, '04-01-02-01-012', '49', '125', 50, 36, 'O RING-CONVERTOR PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K9006640', 0, 1),
(746, '01-02-01-01-019', '46', '117', 14, 6, 'DO CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-20', 0, 0),
(747, '01-02-01-01-020', '46', '117', 14, 6, 'COMMUNICATION BOARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-05', 0, 0),
(748, '01-02-01-01-021', '46', '117', 14, 6, 'BASE UNIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-10', 0, 0),
(749, '01-02-01-01-022', '46', '117', 14, 6, 'POWER SUPPLY CARD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E-13-12', 0, 0),
(750, '04-01-01-01-027', '49', '125', 49, 34, 'MAIN SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920857.0002', 0, 0),
(751, '01-02-01-01-023', '46', '117', 14, 6, 'INVENTER', 'S-5102', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(752, '04-01-03-01-014', '49', '125', 51, 35, 'OIL SEAL ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180471', 0, 1),
(753, '04-01-03-01-015', '49', '125', 51, 35, 'OIL SEAL ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A433194401107', 0, 1),
(754, '01-02-02-01-001', '46', '117', 15, 8, ' BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(755, '01-02-03-01-001', '46', '117', 16, 7, 'HYDRAULIC PRESSURE PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(756, '01-02-03-01-002', '46', '117', 16, 7, 'HYDRAULIC PIPE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(757, '04-01-03-01-016', '49', '125', 51, 35, 'OIL SEAL', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J07636.0100', 0, 1),
(758, '01-02-02-01-002', '46', '117', 15, 8, 'TROLLY WHEEL BEARING', '22224', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(759, '04-01-04-02-013', '49', '125', 52, 62, 'OIL PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.2091', 0, 1),
(760, '01-02-01-01-024', '46', '117', 14, 6, 'SPREADER MOTOR', '7.5KW, 1740 RPM', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(761, '04-01-01-01-028', '49', '125', 49, 34, 'OIL PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.1184', 0, 0),
(762, '04-01-04-02-014', '49', '125', 52, 62, 'OIL PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523-0790', 0, 1),
(763, '04-01-03-01-017', '49', '125', 51, 35, 'O RING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923468.0198', 0, 1),
(764, '01-02-01-01-025', '46', '117', 14, 6, 'SOLENOID VALVE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(765, '04-01-03-01-018', '49', '125', 51, 35, 'OIL SEAL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.2356', 0, 1),
(766, '04-01-03-01-019', '49', '125', 51, 35, 'O RING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.180-00087', 0, 1),
(767, '01-02-02-01-003', '46', '117', 15, 8, 'TROLLY WHEEL SEAL', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(768, '01-02-01-01-026', '46', '117', 14, 6, 'SODIUM BULB', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(769, '04-01-03-01-020', '49', '125', 51, 35, 'O RING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.180-00089', 0, 1),
(770, '04-01-03-01-021', '49', '125', 51, 35, 'O RING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K9004338', 0, 1),
(771, '04-01-04-01-002', '49', '125', 52, 38, 'OIL PUMP ASSY', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400915-00003', 0, 1),
(772, '04-01-04-02-015', '49', '125', 52, 62, 'PISTON SEAL RING (L)', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A133335', 0, 1),
(773, '04-01-02-01-013', '49', '125', 50, 36, 'PLATE-SEAL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401101-00013', 0, 1),
(774, '04-01-02-01-014', '49', '125', 50, 36, 'PLATE-SEAL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401101-00014', 0, 1),
(775, '04-01-02-01-015', '49', '125', 50, 36, 'PISTON (T/M)', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K9004358', 0, 1),
(776, '04-01-02-01-016', '49', '125', 50, 36, 'CHARGING PUMP ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400916-00192', 0, 1),
(777, '04-01-03-01-022', '49', '125', 51, 35, 'PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923142.0037', 0, 1),
(778, '04-01-03-01-023', '49', '125', 51, 35, 'PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923142.0036', 0, 1),
(779, '04-01-01-01-029', '49', '125', 49, 34, 'PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0284', 0, 0),
(780, '04-01-01-01-030', '49', '125', 49, 34, 'PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0879', 0, 0),
(781, '04-01-01-01-031', '49', '125', 49, 34, 'PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920596.0022', 0, 0),
(782, '04-01-01-01-032', '49', '125', 49, 34, 'PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J04060.0100', 0, 0),
(783, '04-01-01-01-033', '49', '125', 49, 34, 'PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0263', 0, 0),
(784, '04-01-02-01-017', '49', '125', 50, 36, 'PUMP', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.2245', 0, 1),
(785, '04-01-01-01-034', '49', '125', 49, 34, 'PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.2665', 0, 0),
(786, '04-01-03-01-024', '49', '125', 51, 35, 'PUMP-COMPLETE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920388.002', 0, 1),
(787, '04-01-04-02-016', '49', '125', 52, 62, 'PISTON ', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J040834', 0, 1),
(788, '04-01-04-02-017', '49', '125', 52, 62, 'PISTON RING KIT', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976-4016', 0, 1),
(789, '04-01-02-01-018', '49', '125', 50, 36, 'PUMP GEAR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400910-00082', 0, 1),
(790, '04-01-04-02-018', '49', '125', 52, 62, 'PISTON RING ', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A-433219', 0, 1),
(791, '04-01-04-02-019', '49', '125', 52, 62, 'PISTON RING', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A4333191', 0, 1),
(792, '04-01-04-02-020', '49', '125', 52, 62, 'RELIEF VALVE SEC', '--', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D517440', 0, 1),
(793, '04-01-01-01-035', '49', '125', 49, 34, 'RELAY', '--', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923341.0004', 0, 0),
(794, '04-01-01-01-036', '49', '125', 49, 34, 'RELAY', '--', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923341.0002', 0, 0),
(795, '04-01-02-01-019', '49', '125', 50, 36, 'REFINER SPRING ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A433211', 0, 1),
(796, '04-01-01-01-037', '49', '125', 49, 34, 'SOLENOID', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J020307', 0, 0),
(797, '04-01-01-01-038', '49', '125', 49, 34, 'SOLENOID', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J020305', 0, 0),
(798, '04-01-01-01-039', '49', '125', 49, 34, 'SOLENOID', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1241', 0, 0),
(799, '04-01-03-01-025', '49', '125', 51, 35, 'SEAL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.0244', 0, 1),
(800, '04-01-01-01-040', '49', '125', 49, 34, 'SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.2279', 0, 0),
(801, '04-01-01-01-041', '49', '125', 49, 34, 'SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP101636', 0, 0),
(802, '04-01-01-01-042', '49', '125', 49, 34, ' PRESSURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920596.0029', 0, 0),
(803, '04-01-04-02-021', '49', '125', 52, 62, 'SLEEVE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J019604', 0, 1),
(804, '04-01-04-02-022', '49', '125', 52, 62, 'SLEEVE', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J019605', 0, 1),
(805, '04-01-04-02-023', '49', '125', 52, 62, 'SEAL KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D517388', 0, 1),
(806, '04-01-04-02-024', '49', '125', 52, 62, 'SEAL KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D510635', 0, 1),
(807, '04-01-04-02-025', '49', '125', 52, 62, 'SEAL KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D511479', 0, 1),
(808, '04-01-04-02-026', '49', '125', 52, 62, 'SEAL KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D517398', 0, 1),
(809, '04-01-04-02-027', '49', '125', 52, 62, 'SEAL KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D517387', 0, 1),
(810, '04-01-04-02-028', '49', '125', 52, 62, 'SEAL KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401107-00897', 0, 1),
(811, '04-01-04-02-029', '49', '125', 52, 62, 'SEAL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D180252', 0, 1),
(812, '04-01-02-01-020', '49', '125', 50, 36, 'SHAFT SEAL', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1.180-00531', 0, 1),
(813, '04-01-02-01-021', '49', '125', 50, 36, 'SHEET - INTERMEDIATE', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '950211-00016', 0, 1),
(814, '04-01-04-02-030', '49', '125', 52, 62, 'TURBO CHARGER(Exchange Unit)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.U120', 0, 1),
(815, '04-01-01-01-043', '49', '125', 49, 34, 'TEMPERATURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920169.011', 0, 0),
(816, '04-01-01-01-044', '49', '125', 49, 34, 'TEMPERATURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924518.0051', 0, 0),
(817, '04-01-01-01-045', '49', '125', 49, 34, 'TEMPERATURE SENSOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2575', 0, 0),
(818, '04-01-04-01-003', '49', '125', 52, 38, 'TURBO CHARGER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.0073', 0, 1),
(819, '04-01-04-02-031', '49', '125', 52, 62, 'VALVE MAIN RELIEF', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D517598', 0, 1),
(820, '04-01-04-02-032', '49', '125', 52, 62, 'V-BELT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1879', 0, 1),
(821, '04-01-04-02-033', '49', '125', 52, 62, 'VALVE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920207.028', 0, 1),
(822, '04-01-02-01-022', '49', '125', 50, 36, 'VALVE ASSY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '410105-00926', 0, 1),
(823, '04-01-01-01-046', '49', '125', 49, 34, 'WIRING HARNESS-MAST', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A61302.1600', 0, 0),
(824, '10-01-01-01-006', '55', '137', 70, 56, 'AIR FILTER', 'RST', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A8579  NEW P/NO - A7108', 0, 0),
(825, '10-02-01-01-006', '55', '138', 71, 57, 'FUEL WATER SEPARATOR ', 'FS-1212', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(826, '10-03-01-01-005', '55', '139', 72, 58, 'OIL FILTER (ENGINE)', 'DOOSAN', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF-3349', 0, 0),
(827, '10-01-01-01-007', '55', '137', 70, 56, 'ELEMENT-F', 'DOOSAN', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '4005-0400218', 0, 0),
(828, '10-01-01-01-008', '55', '137', 70, 56, 'ELEMENT PRIMARY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A147202', 0, 0),
(829, '10-01-01-01-009', '55', '137', 70, 56, 'ELEMENT SEFTY ', 'DOOSAN', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '40054-00216', 0, 0),
(830, '04-02-02-01-061', '49', '126', 46, 60, 'OIL COOLER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.05606.5020', 0, 1),
(831, '10-05-01-01-001', '55', '141', 74, 63, 'HYDRAULIC FILTER ', 'DOOSAN', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400504-00076', 0, 0),
(832, '10-01-01-01-010', '55', '137', 70, 56, 'AIR FILTER', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110.0577', 0, 0),
(833, '10-01-01-01-011', '55', '137', 70, 56, 'AIR FILTER', 'DOOSAN', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A5639', 0, 0),
(834, '10-01-01-01-012', '55', '137', 70, 56, 'AIR FILTER', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A5102', 0, 0),
(835, '10-03-01-01-006', '55', '139', 72, 58, 'OIL FILTER', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3970', 0, 0),
(836, '10-02-01-01-007', '55', '138', 71, 57, 'FUEL FILTER', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD : 5421 NEW:5485 ', 0, 0),
(837, '10-02-01-01-008', '55', '138', 71, 57, 'FUEL FILTER', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '19732', 0, 0),
(838, '10-02-01-01-009', '55', '138', 71, 57, 'FUEL WATER SEPERATOR', 'KALMAR', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1274', 0, 0),
(839, '10-02-01-01-010', '55', '138', 71, 57, 'FUEL FILTER', 'KALMAR', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0301', 0, 0),
(840, '10-03-01-01-007', '55', '139', 72, 58, 'OIL FILTER', 'KALMAR', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J07619.0100', 0, 0),
(841, '10-03-01-01-008', '55', '139', 72, 58, 'OIL FILTER', 'KALMAR', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0116', 0, 0),
(842, '10-05-01-01-002', '55', '141', 74, 63, 'HYDRAULIC FILTER', 'KALMAR', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921028-0007', 0, 0),
(843, '10-02-01-01-011', '55', '138', 71, 57, 'FUEL FILTER', 'RST', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FF-42000', 0, 0),
(844, '10-02-01-01-012', '55', '138', 71, 57, 'FUEL FILTER', 'KALMAR', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FF-5272', 0, 0),
(845, '10-03-01-01-009', '55', '139', 72, 58, 'OIL FILTER ', 'KALMAR', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF-4054', 0, 0),
(846, '10-03-01-01-010', '55', '139', 72, 58, 'OIL FILTER', 'KALMAR', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '6586', 0, 0),
(847, '10-03-01-01-011', '55', '139', 72, 58, 'OIL FILTER ', 'DOOSAN', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '734', 0, 0),
(848, '10-05-01-01-003', '55', '141', 74, 63, 'TRANSMISSION FILTER', 'DOOSAN', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '6317', 0, 0),
(849, '10-05-01-01-004', '55', '141', 74, 63, 'TRANSMISSION FILTER', 'DOOSAN', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '6337', 0, 0),
(850, '10-02-01-01-013', '55', '138', 71, 57, 'WATER SEPARATOR ', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '5301-10', 0, 0),
(851, '10-01-01-01-013', '55', '137', 70, 56, 'AIR FILTER', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '7621', 0, 0),
(852, '10-05-01-01-005', '55', '141', 74, 63, 'HYDROLIC FILTER', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922315-0004', 0, 0),
(853, '10-05-01-01-006', '55', '141', 74, 63, 'HYDRAULIC FILTER', 'KALMAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.3095', 0, 0),
(854, '10-05-01-01-007', '55', '141', 74, 63, 'HYDROLIC OIL ELEMENT', 'KALMAR', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '400405-00005', 0, 0),
(855, '06-01-02-01-001', '51', '123', 64, 48, 'AC PUMP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(856, '06-01-01-01-001', '51', '123', 63, 46, 'ARMATURE (SELF STARTER)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(857, '06-01-02-01-002', '51', '123', 64, 48, 'AC PUMP KIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(858, '06-01-02-01-003', '51', '123', 64, 48, 'AC PUMP SPRING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(859, '06-01-02-01-004', '51', '123', 64, 48, 'AC PUMP LEVER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(860, '06-01-01-01-002', '51', '123', 63, 46, 'ALTERNATOR ROTOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(861, '06-02-02-01-001', '51', '124', 61, 44, 'AIR CONTROLLER KIT ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3-65', 0, 1),
(863, '06-01-02-01-006', '51', '123', 64, 48, 'AIR CLEANER HOSE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(864, '06-01-02-01-007', '51', '123', 64, 48, 'AIR CLEANER  (T)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(865, '06-01-02-01-008', '51', '123', 64, 48, 'AIR HARNRSS MIDDLE PART', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(866, '06-01-02-01-009', '51', '123', 64, 48, 'AIR CONTROLLER KIT ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3/86', 0, 1),
(867, '06-02-01-01-001', '51', '124', 60, 43, 'AIR PRESSURE SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(868, '06-01-01-01-003', '51', '123', 63, 46, 'AUTO REGULATOR', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(869, '06-01-01-01-004', '51', '123', 63, 46, 'BRAKE PRESSURE SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(870, '06-01-02-01-010', '51', '123', 64, 48, 'BRAKE CONTROLLER KIT ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '6/20', 0, 1),
(871, '06-01-02-01-011', '51', '123', 64, 48, 'BADAMI KIT SET (COMPLETE)', '--', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(872, '06-01-02-01-012', '51', '123', 64, 48, 'BOOSTER PLATE ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(873, '06-01-02-01-013', '51', '123', 64, 48, 'BONNET HANDLE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(874, '06-01-02-01-014', '51', '123', 64, 48, 'BALL KIT SET', '--', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(875, '06-01-02-01-015', '51', '123', 64, 48, 'BOOSTER RING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(876, '06-01-02-01-016', '51', '123', 64, 48, 'BOOSTER HEAD', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(877, '06-01-02-01-017', '51', '123', 64, 48, 'BOOSTER KIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(878, '06-01-02-01-018', '51', '123', 64, 48, 'BONNET LOCK', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(879, '06-01-02-01-019', '51', '123', 64, 48, 'BALL BEARING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(880, '06-01-02-01-020', '51', '123', 64, 48, 'BELT TENSION PULLY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(881, '06-01-01-01-005', '51', '123', 63, 46, 'BETTARY MAIN SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(882, '06-01-02-01-021', '51', '123', 64, 48, 'BADAMI KIT SET  (SINGLE)', 'Gear Box', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(883, '06-03-01-01-001', '51', '133', 66, 42, 'BACK LIGHT SET', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(884, '06-03-01-01-002', '51', '133', 66, 42, 'BACK LIGHT COVER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(885, '06-01-03-01-001', '51', '123', 65, 47, 'CAM SHAFT', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(886, '06-01-02-01-022', '51', '123', 64, 48, 'CLUTCH FINGER KIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(887, '06-02-02-01-002', '51', '124', 61, 44, 'CLUTCH FINGER KIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(888, '06-01-02-01-023', '51', '123', 64, 48, 'CLUTCH PLATE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(889, '06-02-02-01-003', '51', '124', 61, 44, 'CLUTCH PLATE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(890, '06-02-02-01-004', '51', '124', 61, 44, 'CLUTCH SERVO KIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(891, '06-01-02-01-024', '51', '123', 64, 48, 'CLUTCH SERVO KIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(892, '06-01-02-01-025', '51', '123', 64, 48, 'CLUTCH PAD', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1);
INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_level3_id`, `material_level4_id`, `material_description`, `spec`, `location`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`, `current_balance`, `is_manual_code_edit`) VALUES
(893, '06-01-02-01-026', '51', '123', 64, 48, 'CLUTCH CYLINDER KIT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(894, '06-01-02-01-027', '51', '123', 64, 48, 'CABIN MOUNTING SET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(895, '06-02-02-01-005', '51', '124', 61, 44, 'CABIN MOUNTING SET', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(896, '06-01-02-01-028', '51', '123', 64, 48, 'CABIN MOUNTING BOLT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(897, '06-01-02-01-029', '51', '123', 64, 48, 'CLUTCH SERVO ASSEMBLY', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(898, '06-02-02-01-006', '51', '124', 61, 44, 'CLUTCH SERVO ASSEMBLY', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(899, '06-03-01-01-003', '51', '133', 66, 42, 'CHASSIS BRAKE DIAPHRAGM', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(900, '06-03-01-01-004', '51', '133', 66, 42, 'CHASSIS WHEEL HUB NUT', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(901, '06-03-01-01-005', '51', '133', 66, 42, 'CHASSIS WHEEL STUD WITH NUT', '--', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(903, '06-02-02-01-007', '51', '124', 61, 44, 'CLUTCH CYLINDER ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(904, '06-03-01-01-006', '51', '133', 66, 42, 'CHASSIS CONTROLLER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(905, '06-03-01-01-007', '51', '133', 66, 42, 'CHASSIS HANGER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(906, '06-02-02-01-008', '51', '124', 61, 44, 'CHASSIS BRAKE CONTROL KIT ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3/78', 0, 1),
(907, '06-03-01-01-008', '51', '133', 66, 42, 'CHASSIS PANJA', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(908, '06-02-02-01-009', '51', '124', 61, 44, 'CHASSIS BRAKE AIR CONTROL KIT ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3/70', 0, 1),
(909, '06-03-01-01-009', '51', '133', 66, 42, 'CHASSIS NYLON BUSH (BIG)', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(910, '06-03-01-01-010', '51', '133', 66, 42, 'CHASSIS NYLON BUSH (SMALL)', '--', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(911, '06-01-02-01-030', '51', '123', 64, 48, 'CLUTCH BRAKE PADDLE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(912, '06-01-01-01-006', '51', '123', 63, 46, 'CARBON HOLDER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(913, '06-01-01-01-007', '51', '123', 63, 46, 'CONTACT SWITCH CAP', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(914, '06-01-01-01-008', '51', '123', 63, 46, 'CONTACT SWITCH PLANGER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(915, '06-01-01-01-009', '51', '123', 63, 46, 'CONTACT SWITCH ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(916, '06-01-02-01-031', '51', '123', 64, 48, 'CHATHI KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(917, '06-01-02-01-032', '51', '123', 64, 48, 'CENTER BOLT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(918, '06-01-02-01-033', '51', '123', 64, 48, 'CUTTING SHAFT CROSS', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(919, '06-02-02-01-010', '51', '124', 61, 44, 'CUTTING SHAFT CROSS', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(920, '06-01-01-01-010', '51', '123', 63, 46, 'DUEL RELAY', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(921, '06-01-02-01-034', '51', '123', 64, 48, 'DAY TANK', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(922, '06-01-02-01-035', '51', '123', 64, 48, 'DOOR GLASS', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(923, '06-02-02-01-011', '51', '124', 61, 44, 'DOOR GLASS', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(924, '06-01-02-01-036', '51', '123', 64, 48, 'DOOR MACHANISUM', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(925, '06-02-02-01-012', '51', '124', 61, 44, 'DOOR MACHANISUM', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(926, '06-01-02-01-037', '51', '123', 64, 48, 'DOOR HANDLE', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(927, '06-02-02-01-013', '51', '124', 61, 44, 'DOOR HANDLE', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(928, '06-01-02-01-038', '51', '123', 64, 48, 'DOOR CHANNEL', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(929, '06-01-02-01-039', '51', '123', 64, 48, 'DOOR LOCK', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(930, '06-02-02-01-014', '51', '124', 61, 44, 'DOOR LOCK', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(931, '06-01-02-01-040', '51', '123', 64, 48, 'DOOR HINGES', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(932, '06-01-02-01-041', '51', '123', 64, 48, 'DOOR GLASS RUBBER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(933, '06-03-01-01-011', '51', '133', 66, 42, 'DAIPHRAGAM SPRING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(934, '06-01-01-01-011', '51', '123', 63, 46, 'ELECTRIC CABLE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(935, '06-01-03-01-002', '51', '123', 65, 47, 'ENGINE CONNECTING BUSH', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(936, '06-02-03-01-001', '51', '124', 62, 45, 'ENGINE CONNECTING BUSH', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(937, '06-02-03-01-002', '51', '124', 62, 45, 'ENGINE VALVE GUIDE', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(938, '06-01-03-01-003', '51', '123', 65, 47, 'ENGINE VALVE GUIDE', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(939, '06-01-03-01-004', '51', '123', 65, 47, 'ENGINE LINNER SLEEVE', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(940, '06-02-03-01-003', '51', '124', 62, 45, 'ENGINE LINNER SLEEVE', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(941, '06-01-03-01-005', '51', '123', 65, 47, 'ENGINE PISTON ', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(942, '06-02-03-01-004', '51', '124', 62, 45, 'ENGINE PISTON ', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(943, '06-02-03-01-005', '51', '124', 62, 45, 'ENGINE PISTON RING', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(944, '06-01-03-01-006', '51', '123', 65, 47, 'ENGINE PISTON RING', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(945, '06-01-03-01-007', '51', '123', 65, 47, 'ENGINE MAIN & BIGEND BEARING', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(946, '06-02-03-01-006', '51', '124', 62, 45, 'ENGINE MAIN & BIGEND BEARING', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(947, '06-01-03-01-008', '51', '123', 65, 47, 'ENGINE CONNECTING BEARING', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(948, '06-02-03-01-007', '51', '124', 62, 45, 'ENGINE CONNECTING BEARING', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(949, '06-01-03-01-009', '51', '123', 65, 47, 'ENGINE CAM BUSH', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(950, '06-02-03-01-008', '51', '124', 62, 45, 'ENGINE CAM BUSH', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(951, '06-01-03-01-010', '51', '123', 65, 47, 'ENGINE CAM WASHER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(952, '06-01-03-01-011', '51', '123', 65, 47, 'ENGINE VALVE', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(953, '06-02-03-01-009', '51', '124', 62, 45, 'ENGINE VALVE', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(954, '06-02-03-01-010', '51', '124', 62, 45, 'ENGINE VALVE SEAT ', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(955, '06-01-03-01-012', '51', '123', 65, 47, 'ENGINE VALVE SEAT ', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(956, '06-01-03-01-013', '51', '123', 65, 47, 'ENGINE VALVE COTTON', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(957, '06-02-03-01-011', '51', '124', 62, 45, 'ENGINE VALVE COTTON', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(958, '06-02-03-01-012', '51', '124', 62, 45, 'ENGINE CAM WASHER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(959, '06-02-03-01-013', '51', '124', 62, 45, 'ENGINE OVERHOLDING KIT', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(960, '06-01-03-01-014', '51', '123', 65, 47, 'ENGINE OVERHAULING KIT', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(961, '06-01-02-01-042', '51', '123', 64, 48, 'ENGINE BELT PULLY ', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(962, '06-01-02-01-043', '51', '123', 64, 48, 'EMERGENCY KEY SWITCH', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(963, '06-01-02-01-044', '51', '123', 64, 48, 'EXCLATOR CABLE', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(964, '06-01-02-01-045', '51', '123', 64, 48, 'FLY WHEEL', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(965, '06-01-02-01-046', '51', '123', 64, 48, 'FUEL STRAINER', '--', '', '', 2, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(966, '06-01-02-01-047', '51', '123', 64, 48, 'FUEL PUMP ROTOR', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(967, '06-01-01-01-012', '51', '123', 63, 46, 'FLASHER', '--', '', '', 2, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(968, '06-01-01-01-013', '51', '123', 63, 46, 'FIELD COIL', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(969, '06-02-01-01-002', '51', '124', 60, 43, 'FIELD COIL', '--', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(970, '06-01-01-01-014', '51', '123', 63, 46, 'FOG LIGHT BULB', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(971, '06-01-01-01-015', '51', '123', 63, 46, 'FUEL PUMP SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(972, '06-02-01-01-003', '51', '124', 60, 43, 'FUEL PUMP SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(973, '06-02-02-01-015', '51', '124', 61, 44, 'FINGER PLATE', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(974, '06-01-02-01-048', '51', '123', 64, 48, 'FINGER SOCKET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(975, '06-01-02-01-049', '51', '123', 64, 48, 'FUEL TANK CAP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(976, '06-01-02-01-050', '51', '123', 64, 48, 'GEAR LEVER END', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(977, '06-01-02-01-051', '51', '123', 64, 48, 'GEAR LEVER ', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(978, '06-01-02-01-052', '51', '123', 64, 48, 'GEAR LEVER LINKONIZER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(979, '06-01-02-01-053', '51', '123', 64, 48, 'GEAR LEVER COVER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(980, '06-01-02-01-054', '51', '123', 64, 48, 'GEAR PENION (NO-6)', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(981, '06-02-02-01-016', '51', '124', 61, 44, 'GEAR PENION ', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'NO - 5/6', 0, 1),
(982, '06-01-02-01-055', '51', '123', 64, 48, 'GEAR PENION ( 3 NO )', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(983, '06-02-02-01-017', '51', '124', 61, 44, 'GEAR PENION ( 3 NO )', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(984, '06-02-02-01-018', '51', '124', 61, 44, 'GELLARY', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(985, '06-01-02-01-056', '51', '123', 64, 48, 'GEAR GELLARY', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3/4', 0, 1),
(986, '06-01-02-01-057', '51', '123', 64, 48, 'GEAR BOX KIT', 'TAPA KIT', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(987, '06-01-02-01-058', '51', '123', 64, 48, 'GEAR SYCHRONIZER RING (5/6)', 'BIG', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(988, '06-02-02-01-019', '51', '124', 61, 44, 'GEAR SYCHRONIZER RING (5/6)', 'BIG', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(989, '06-01-02-01-059', '51', '123', 64, 48, 'GEAR SYCHRONIZER RING (3/4)', 'SMALL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(990, '06-02-02-01-020', '51', '124', 61, 44, 'GEAR SYCHRONIZER RING (3/4)', 'SMALL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(991, '06-01-02-01-060', '51', '123', 64, 48, 'GEAR CIRCLIP LOCK SET', '--', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(992, '06-02-02-01-021', '51', '124', 61, 44, 'GEAR CIRCLIP LOCK SET', '--', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(993, '06-02-02-01-022', '51', '124', 61, 44, 'GEAR PENION ( 4 NO )', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(994, '06-01-02-01-061', '51', '123', 64, 48, 'GEAR PENION ( 4 NO )', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(995, '06-01-02-01-062', '51', '123', 64, 48, 'GEAR LEVER ROD', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(996, '06-01-02-01-063', '51', '123', 64, 48, 'OIL SEAL (GEAR BOX)', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(997, '06-01-02-01-064', '51', '123', 64, 48, 'GEAR SYCHRONIZER RING ( BIG )', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(998, '06-02-02-01-023', '51', '124', 61, 44, 'GEAR SYCHRONIZER RING ( BIG )', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(999, '06-01-02-01-065', '51', '123', 64, 48, 'GEAR SYCHRONIZER RING (Small)', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1000, '06-02-02-01-024', '51', '124', 61, 44, 'GEAR SYCHRONIZER RING (Small)', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1001, '06-01-02-01-066', '51', '123', 64, 48, 'GEAR BOX FLANGE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1002, '06-01-01-01-016', '51', '123', 63, 46, 'GEAR OPERATOR CABLE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1003, '06-01-01-01-017', '51', '123', 63, 46, 'HEAD DEEPER SWITCH', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1004, '06-02-01-01-004', '51', '124', 60, 43, 'HEAD DEEPER SWITCH', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1005, '06-01-01-01-018', '51', '123', 63, 46, 'HEAD LIGHT SET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1006, '06-02-01-01-005', '51', '124', 60, 43, 'HEAD LIGHT SET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1007, '06-01-01-01-019', '51', '123', 63, 46, 'HEAD LIGHT BULB', '--', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1008, '06-01-01-01-020', '51', '123', 63, 46, 'HEAD LIGHT HOLDER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1009, '06-01-01-01-021', '51', '123', 63, 46, 'HORN', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1010, '06-01-02-01-067', '51', '123', 64, 48, 'HUP SHAFT', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1011, '06-01-02-01-068', '51', '123', 64, 48, 'HUB-S BEARING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1012, '06-01-03-01-015', '51', '123', 65, 47, 'INJECTOR', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1013, '06-02-03-01-014', '51', '124', 62, 45, 'INJECTOR', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1014, '06-01-01-01-022', '51', '123', 63, 46, 'INDICATOR LIGHT SET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1015, '06-02-01-01-006', '51', '124', 60, 43, 'INDICATOR LIGHT SET', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1016, '06-01-02-01-069', '51', '123', 64, 48, 'KING PIN', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1017, '06-02-02-01-025', '51', '124', 61, 44, 'KING PIN', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1018, '06-01-02-01-070', '51', '123', 64, 48, 'KING PIN BUSH', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1019, '06-02-02-01-026', '51', '124', 61, 44, 'KING PIN BUSH', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1020, '06-01-02-01-071', '51', '123', 64, 48, 'KING PIN KIT', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1021, '06-02-02-01-027', '51', '124', 61, 44, 'KING PIN KIT', '--', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1022, '06-01-02-01-072', '51', '123', 64, 48, 'KING PIN BEARING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1023, '06-02-02-01-028', '51', '124', 61, 44, 'KING PIN BEARING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1024, '06-01-02-01-073', '51', '123', 64, 48, 'LOOKING GLASS', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1025, '06-01-02-01-074', '51', '123', 64, 48, 'LOCK KIT', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1026, '06-01-02-01-075', '51', '123', 64, 48, 'LEAF SPRING', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1027, '06-01-02-01-076', '51', '123', 64, 48, 'MASTER CYLINDER ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1028, '06-01-01-01-023', '51', '123', 63, 46, 'MILE MITER SENSOR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1029, '06-01-02-01-077', '51', '123', 64, 48, 'MAIN SHAFT ', 'IDLE SHAFT (GEAR BOX)', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1030, '06-01-02-01-078', '51', '123', 64, 48, 'MUD GUARD ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1031, '06-02-02-01-029', '51', '124', 61, 44, 'MUD GUARD ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1032, '06-01-02-01-079', '51', '123', 64, 48, 'OIL COOLER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1033, '06-01-01-01-024', '51', '123', 63, 46, 'OIL PRESSURE SWITCH', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1034, '06-01-02-01-080', '51', '123', 64, 48, 'OIL PUMP ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1035, '06-01-02-01-081', '51', '123', 64, 48, 'OIL GAUGE ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1036, '06-01-02-01-082', '51', '123', 64, 48, 'GEAR THRUST BEARING', 'PATA BEARING', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1037, '06-01-02-01-083', '51', '123', 64, 48, 'PILOT BEARING', 'GEAR BOX', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1038, '06-01-02-01-084', '51', '123', 64, 48, 'POWER STEERING SEAL KIT', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1039, '06-01-02-01-085', '51', '123', 64, 48, 'PRESSURE PLATE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1040, '06-02-02-01-030', '51', '124', 61, 44, 'PRESSURE PLATE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1041, '06-01-02-01-086', '51', '123', 64, 48, 'PUSH ROD END', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1042, '06-01-02-01-087', '51', '123', 64, 48, 'PUSH ROD KIT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1043, '06-03-01-01-012', '51', '133', 66, 42, 'PUNJA HOSE (AIR PIPE)', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1044, '06-01-02-01-088', '51', '123', 64, 48, 'POWER OIL TANK', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1045, '06-01-02-01-089', '51', '123', 64, 48, 'POWER HANGER BUSH', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1046, '06-01-01-01-025', '51', '123', 63, 46, 'PUSH SWITCH ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1047, '06-01-01-01-026', '51', '123', 63, 46, 'PM CABIN FAN', '--', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1048, '06-01-01-01-027', '51', '123', 63, 46, 'PM CABIN FAN SWITCH', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1049, '06-01-02-01-090', '51', '123', 64, 48, 'RADIATOR', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1050, '06-01-02-01-091', '51', '123', 64, 48, 'RADIATOR FAN', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1051, '06-01-03-01-016', '51', '123', 65, 47, 'RADIATOR FAN BELT', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1052, '06-02-03-01-015', '51', '124', 62, 45, 'RADIATOR FAN BELT', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1053, '06-01-03-01-017', '51', '123', 65, 47, 'RADIATOR FAN FLANGE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1054, '06-01-01-01-028', '51', '123', 63, 46, 'RPM MRTER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1055, '06-01-02-01-092', '51', '123', 64, 48, 'RING GEAR', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1056, '06-01-01-01-029', '51', '123', 63, 46, 'RECTIFIER PLATE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1057, '06-01-01-01-030', '51', '123', 63, 46, 'RELAY', '--', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1058, '06-01-02-01-093', '51', '123', 64, 48, 'REALISE BEARING (COMPLETE)', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1059, '06-02-02-01-031', '51', '124', 61, 44, 'REALISE BEARING (COMPLETE)', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1060, '06-01-02-01-094', '51', '123', 64, 48, 'RATCHER END', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1061, '06-01-02-01-095', '51', '123', 64, 48, 'REALISE BEARING (6212)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1062, '06-01-02-01-096', '51', '123', 64, 48, 'RATCHER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1063, '06-01-02-01-097', '51', '123', 64, 48, 'STEERING TIE ROD END  ', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1064, '06-01-02-01-098', '51', '123', 64, 48, 'STEERING TRANSMISSION FILTER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1065, '06-01-02-01-099', '51', '123', 64, 48, 'SHOCK ABSORBER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1066, '06-02-02-01-032', '51', '124', 61, 44, 'SHOCK ABSORBER', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1067, '06-01-02-01-100', '51', '123', 64, 48, 'SILENCER BELLOWS', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1068, '06-01-01-01-031', '51', '123', 63, 46, 'STARTING KEY SWITCH', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1070, '06-01-01-01-032', '51', '123', 63, 46, 'SELF STARTER CARBON', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1071, '06-01-01-01-033', '51', '123', 63, 46, 'SELF STARTER PINION', '--', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1072, '06-01-02-01-101', '51', '123', 64, 48, 'GEAR SYNCRONIZER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1073, '06-01-02-01-102', '51', '123', 64, 48, 'STEERING KIT', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1074, '06-01-02-01-103', '51', '123', 64, 48, 'HEAD LIGHT CASING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1075, '06-01-02-01-104', '51', '123', 64, 48, 'STEERING CROSS', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1076, '06-01-02-01-105', '51', '123', 64, 48, 'STEERING WHEEL COVER', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1077, '06-01-02-01-106', '51', '123', 64, 48, 'SELF STARTER HOUSING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1078, '06-01-01-01-034', '51', '123', 63, 46, 'SELF STARTER ', 'NEW', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1079, '06-01-02-01-107', '51', '123', 64, 48, 'SUN CLOSER', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1080, '06-01-02-01-108', '51', '123', 64, 48, 'TURBO CORE ASSEMBLY ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1081, '06-01-02-01-109', '51', '123', 64, 48, 'TURBO HOSE (SMALL)', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1082, '06-01-02-01-110', '51', '123', 64, 48, 'TABET COVER CAP', '--', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1083, '06-01-02-01-111', '51', '123', 64, 48, 'TOP SEAL', '--', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1084, '06-01-02-01-112', '51', '123', 64, 48, 'TOP GEAR', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1085, '06-01-02-01-113', '51', '123', 64, 48, 'TIMING SEAL', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1086, '06-01-02-01-114', '51', '123', 64, 48, 'TURBO STUD', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1087, '06-01-02-01-115', '51', '123', 64, 48, 'TOP SHAFT', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1088, '06-01-02-01-116', '51', '123', 64, 48, 'TOP SHAFT BEARING ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1089, '06-01-01-01-035', '51', '123', 63, 46, 'TEMPARATURE METER SWITCH', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1090, '06-01-02-01-117', '51', '123', 64, 48, 'TOP SHAFT BALL', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1091, '06-01-02-01-118', '51', '123', 64, 48, 'TENSION PULLY BEARING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1092, '06-01-02-01-119', '51', '123', 64, 48, 'TURNING GLASS', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1093, '06-01-02-01-120', '51', '123', 64, 48, 'TAIL CROWN BEARING', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1094, '06-01-02-01-121', '51', '123', 64, 48, 'TAIL CROWN ', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1095, '06-01-02-01-122', '51', '123', 64, 48, 'TAIL CROWN SEAL', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1096, '06-01-02-01-123', '51', '123', 64, 48, 'TAIL CROWN SHAFT', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1097, '06-03-01-01-013', '51', '133', 66, 42, 'U-BOLT CLAMP', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1098, '06-01-02-01-124', '51', '123', 64, 48, 'VENTILATOR GLASS', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1099, '06-01-01-01-036', '51', '123', 63, 46, 'WIPER HANDLE', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1100, '06-01-01-01-037', '51', '123', 63, 46, 'WIPER BLADE', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1101, '06-01-01-01-038', '51', '123', 63, 46, 'WIPER FOUNDATION', '--', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1102, '06-01-02-01-125', '51', '123', 64, 48, 'WATER PUMP', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 1),
(1104, '06-01-01-01-039', '51', '123', 63, 46, 'WIPER MOTOR', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1106, '10-01-01-01-014', '55', '137', 70, 56, 'AIR FILTER', 'TATA-EICHER', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1107, '10-03-01-01-012', '55', '139', 72, 58, 'ENGINE OIL FILTER (PM)', 'TATA-EICHER', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1108, '10-02-01-01-014', '55', '138', 71, 57, 'FUEL FILTER (PM)', 'TATA-EICHER', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1109, '10-02-01-01-015', '55', '138', 71, 57, 'FUEL WATER SEPERATOR (PM)', 'TATA-EICHER', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1110, '02-01-02-01-001', '47', '118', 30, 64, 'TT Guide Wheel Bearing', 'QJ212', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1111, '02-01-02-01-002', '47', '118', 30, 64, 'TT Guide Wheel Bearing', '22212 E', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1112, '06-01-01-01-040', '51', '123', 63, 46, 'METER BOARD', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1113, '02-02-01-01-105', '47', '119', 20, 12, 'MH Thruster Motor', 'Ed 201/16', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J030588', 0, 0),
(1114, '02-02-02-01-006', '47', '119', 21, 13, 'MH THRUSTER MOTOR BEARING', '6302', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1115, '02-02-02-01-007', '47', '119', 21, 13, 'V BELT ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '12PK1620', 0, 1),
(1116, '02-02-02-01-008', '47', '119', 21, 13, 'V BELT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '8PK1400', 0, 1),
(1117, '02-02-02-01-009', '47', '119', 21, 13, 'V BELT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '5PK1090', 0, 1),
(1118, '02-02-02-01-010', '47', '119', 21, 13, 'V BELT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '5PK900', 0, 1),
(1119, '02-02-02-01-011', '47', '119', 21, 13, 'V BELT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '12PK1900', 0, 1),
(1120, '02-02-02-01-012', '47', '119', 21, 13, 'V BELT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '8PK1200', 0, 1),
(1121, '02-02-02-01-013', '47', '119', 21, 13, 'V BELT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '8PK1450', 0, 1),
(1122, '06-01-01-01-041', '51', '123', 63, 46, 'ARMATURE (REPAIRED)', '--', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1123, '10-01-01-01-015', '55', '137', 70, 56, 'AIR FILTER MAIN', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP117486', 0, 0),
(1124, '10-01-01-01-016', '55', '137', 70, 56, 'AIF FILTER, PRIMARY', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP117487', 20, 0),
(1125, '06-01-01-01-042', '51', '123', 63, 46, 'DYNAMO PULLY', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1126, '06-01-03-01-018', '51', '123', 65, 47, 'ENGINE MOUNTING', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1127, '06-01-03-01-019', '51', '123', 65, 47, 'CABIN MOUNTING BASE', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1128, '06-01-02-01-126', '51', '123', 64, 48, 'AIR HOSE PIPE (LARGE)', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1129, '01-02-02-01-004', '46', '117', 15, 8, 'Bearing', '22215 E', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1130, '01-02-02-01-005', '46', '117', 15, 8, 'Bearing', 'NJ215', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1131, '01-02-02-01-006', '46', '117', 15, 8, 'Bearing', 'NU2305', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1132, '01-02-02-01-007', '46', '117', 15, 8, 'Bearing', '6405', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1133, '01-02-02-01-008', '46', '117', 15, 8, 'Bearing', '6205 ZZ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1134, '02-01-02-01-003', '47', '118', 30, 64, 'Bearing', 'NJ212 JRL', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1135, '02-01-02-01-004', '47', '118', 30, 64, 'Bearing', 'NJ212 JRL', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1136, '02-01-02-01-005', '47', '118', 30, 64, 'Bearing', 'NJ212 JRL', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1137, '06-01-01-01-043', '51', '123', 63, 46, 'CONTACT SWITCH FORK', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1138, '12-01-01-01-001', '57', '142', 76, 66, 'SCV-17 (ROUND POST)', '120 AH , 12V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1139, '12-01-01-01-002', '57', '142', 76, 66, 'SCV-17 (L-POST)', '120 AH , 12V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 20, 0),
(1140, '12-01-01-01-003', '57', '142', 76, 66, 'SCV-21 (ROUND POST)', '120 AH , 12V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1141, '12-01-01-01-004', '57', '142', 76, 66, 'SCV-21 (L-POST)', '120 AH , 12V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1142, '12-01-01-01-005', '57', '142', 76, 66, 'SCV-27 (ROUND POST)', '160 AH , 12V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1143, '12-01-01-01-006', '57', '142', 76, 66, 'SCV-27 (L-POST)', '160 AH , 12V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1144, '12-01-01-01-007', '57', '142', 76, 66, 'SCV-29 (ROUND POST)', '200 AH , 12V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1145, '12-01-01-01-008', '57', '142', 76, 66, 'SCV-29 (L POST)', '200 AH , 12V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1146, '04-01-03-01-026', '49', '125', 51, 35, 'CONVERTER , COMPLETE', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1761', 0, 1),
(1147, '04-01-01-01-047', '49', '125', 49, 34, 'FLEX PLATE KIT', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.1462', 0, 0),
(1148, '04-01-01-01-048', '49', '125', 49, 34, 'ENGINE SPEED INDICATOR', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.0719', 0, 0),
(1149, '04-01-01-01-049', '49', '125', 49, 34, 'SPEED SENSOR', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.0656', 0, 0),
(1150, '04-01-04-02-034', '49', '125', 52, 62, 'GASKET', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.1316', 0, 1),
(1151, '04-01-04-02-035', '49', '125', 52, 62, 'SEAL', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.2224', 0, 1),
(1152, '04-01-03-01-027', '49', '125', 51, 35, 'CONTROL VALVE', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923579.0081', 0, 1),
(1153, '04-01-04-02-036', '49', '125', 52, 62, 'INJECTOR , EXCHANGE UNIT', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.U119', 0, 1),
(1154, '04-01-03-01-028', '49', '125', 51, 35, 'O RING', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J038459', 0, 1),
(1155, '04-01-03-01-029', '49', '125', 51, 35, 'GASKET', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08216.0100', 0, 1),
(1156, '04-01-04-02-037', '49', '125', 52, 62, 'RUBBER RING', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0237', 0, 1),
(1157, '04-01-04-02-038', '49', '125', 52, 62, 'PLUG', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3310', 0, 1),
(1158, '04-01-04-02-039', '49', '125', 52, 62, 'ADJUST SCREW', '-', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0044', 0, 1),
(1159, '04-01-04-02-040', '49', '125', 52, 62, 'PLUG CAP', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0035', 0, 1),
(1160, '04-01-04-02-041', '49', '125', 52, 62, 'PISTON COOLING JET', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0107', 0, 1),
(1161, '04-01-03-01-030', '49', '125', 51, 35, 'SEAL', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1011', 0, 1),
(1162, '04-01-04-02-042', '49', '125', 52, 62, 'THRUST WASHER', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0274', 0, 1),
(1163, '04-01-04-02-043', '49', '125', 52, 62, 'SEAL', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1013', 0, 1),
(1164, '04-01-04-02-044', '49', '125', 52, 62, 'BEARING CAP', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0257', 0, 1),
(1165, '04-01-04-02-045', '49', '125', 52, 62, 'GEAR RIM', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0105', 0, 1),
(1166, '04-01-04-02-046', '49', '125', 52, 62, 'RUBBER RING', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0883', 0, 1),
(1167, '04-01-04-02-047', '49', '125', 52, 62, 'GASKET', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1286', 0, 1),
(1168, '04-01-04-02-048', '49', '125', 52, 62, 'CLAMP', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0228', 0, 1),
(1169, '04-01-04-02-049', '49', '125', 52, 62, 'COOLANT PUMP EXCHANGE UNIT', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08788.U100', 0, 1),
(1170, '04-01-04-02-050', '49', '125', 52, 62, 'OIL COOLER', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0849', 0, 1),
(1171, '04-01-03-01-031', '49', '125', 51, 35, 'GASKET', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0796', 0, 1),
(1172, '04-01-04-02-051', '49', '125', 52, 62, 'EXHAUST PIPE', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1461', 0, 1),
(1173, '04-01-04-02-052', '49', '125', 52, 62, 'GASKET', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1280', 0, 1),
(1174, '04-01-04-02-053', '49', '125', 52, 62, 'WATER SEPERATOR', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3259', 0, 1),
(1175, '04-01-04-02-054', '49', '125', 52, 62, 'FUEL PUMP EXCHANGE UNIT', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.U882', 0, 1),
(1176, '04-01-04-02-055', '49', '125', 52, 62, 'VALVE SEAT', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3030', 0, 1),
(1177, '04-01-04-02-056', '49', '125', 52, 62, 'VALVE', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J037972', 0, 1),
(1178, '04-01-04-02-057', '49', '125', 52, 62, 'DOWEL PIN', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0695', 0, 1),
(1179, '04-01-04-02-058', '49', '125', 52, 62, 'MAGNETIC VALVE', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3245', 0, 1),
(1180, '04-01-04-02-059', '49', '125', 52, 62, 'ROCKER ARM', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J00063.0100', 0, 1),
(1181, '04-01-04-02-060', '49', '125', 52, 62, 'BEARING BUSHING', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0423', 0, 1),
(1182, '04-01-04-02-061', '49', '125', 52, 62, 'BEARING SLEEVE', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3066', 0, 1),
(1183, '04-01-04-02-062', '49', '125', 52, 62, 'TAPPET', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3085', 0, 1),
(1184, '04-01-04-02-063', '49', '125', 52, 62, 'PUSH ROD', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0476', 0, 1),
(1185, '04-01-04-02-064', '49', '125', 52, 62, 'SEALING STRIP', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5635', 0, 1),
(1186, '04-01-04-02-065', '49', '125', 52, 62, 'ELBOW PIPE', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3175', 0, 1),
(1187, '04-01-04-02-066', '49', '125', 52, 62, 'OIL PUMP', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J09229.0100', 0, 1),
(1188, '04-01-04-02-067', '49', '125', 52, 62, 'CONNECTING ROD', '-', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ICM2017573', 0, 1),
(1189, '06-03-01-01-014', '51', '133', 66, 42, 'INDICATOR LIGHT COVER', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1190, '06-03-01-01-015', '51', '133', 66, 42, 'PANJA HOSE PIPE', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1191, '06-01-02-01-127', '51', '123', 64, 48, 'WIND SHEILD GLASS RUBBER', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1192, '04-01-04-02-068', '49', '125', 52, 62, 'FUEL WATER SEPERATOR FILTER', 'LOCAL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '21538975 New :8159975', 0, 1),
(1193, '04-01-04-02-069', '49', '125', 52, 62, 'OIL FILTER', '23476569/23958454', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '23273538', 0, 1),
(1194, '04-01-04-02-070', '49', '125', 52, 62, 'FUEL FILTER', 'LOCAL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '22296415', 0, 1),
(1195, '06-01-02-01-128', '51', '123', 64, 48, 'FORNT SHOW GRILL', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1196, '06-03-01-01-016', '51', '133', 66, 42, 'CHASSIS ELECTRIC HOLDER', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1197, '06-01-02-01-129', '51', '123', 64, 48, 'TURBO CLAMP', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1198, '06-01-02-01-130', '51', '123', 64, 48, 'ACCELATOR CABLE', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1199, '01-01-01-01-001', '46', '116', 17, 9, 'CAPACITOR', '330 µF(M), 200V', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1200, '02-01-02-01-006', '47', '118', 30, 64, 'GT REDUCER BEARING', '32028', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1201, '02-01-02-01-007', '47', '118', 30, 64, 'GT DIFFERENTIAL BEARING', '32026', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1202, '02-01-02-01-008', '47', '118', 30, 64, 'Gantry wheel stud bolt', 'L/L F, 14-18, M10.9', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1),
(1203, '07-01-01-01-010', '52', '134', 67, 53, 'TUBE', '14.00-24', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1204, '06-01-01-01-044', '51', '123', 63, 46, 'SELF STARTER BRASS BAR', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1205, '06-01-02-01-131', '51', '123', 64, 48, 'RELEASE BEARING BRASS BAR', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1206, '02-02-01-01-106', '47', '119', 20, 12, 'DRIVE GEAR', '-', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0001800', 0, 0),
(1207, '04-02-04-01-044', '49', '126', 48, 39, 'FAN BELT ', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'AX-59 And Others', 0, 1);
INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_level3_id`, `material_level4_id`, `material_description`, `spec`, `location`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`, `current_balance`, `is_manual_code_edit`) VALUES
(1208, '06-01-02-01-132', '51', '123', 64, 48, 'DRIVER SEAT (REPAIRED)', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1209, '06-01-01-01-045', '51', '123', 63, 46, 'STARTING KEY SWITCH(BS-3)', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1210, '06-01-01-01-046', '51', '123', 63, 46, 'DYNAMO FAN', 'ALTERNATOR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1211, '06-01-01-01-047', '51', '123', 63, 46, 'ALTERNATOR COMMUTATOR', 'ALTERNATOR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--', 0, 0),
(1212, '06-01-02-01-133', '51', '123', 64, 48, 'TAIL CROWN FLANGE', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1213, '04-02-02-01-062', '49', '126', 46, 60, 'ROLLER BEARING (LOCAL)', 'MAST PULLY', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '5022', 0, 1),
(1214, '06-01-02-01-134', '51', '123', 64, 48, 'TURBO CORE KIT', '-', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1215, '06-01-02-01-135', '51', '123', 64, 48, 'DOOR RUBBER SEAL', '-', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1216, '06-01-02-01-136', '51', '123', 64, 48, 'DOOR GARNISH BITE', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1217, '06-01-02-01-137', '51', '123', 64, 48, 'DOOR GLASS RUBBER', 'VELVET', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1218, '06-01-02-01-138', '51', '123', 64, 48, 'DOOR STEEL RUBBER', '-', '', '', 0, NULL, NULL, 0, '30', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1219, '06-01-02-01-139', '51', '123', 64, 48, 'GEAR LEVER SHAFT', 'GEAR BOX', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1220, '06-01-01-01-048', '51', '123', 63, 46, 'DESHBOARD CASING', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1221, '01-01-01-01-002', '46', '116', 17, 9, 'SIEMENS POWER SUPPLY', 'INPUT : AC 120/230V; OUTPUT 24V, 5A', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'SIMATIC PS 307', 0, 0),
(1222, '02-01-02-01-009', '47', '118', 30, 64, 'GT DRIVE CROSS SHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'CROSS SHAFT', 0, 1),
(1223, '02-02-04-01-018', '47', '119', 23, 15, 'RADIATOR FAN', 'PA6 GF30', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'VOLVO 3828964', 0, 1),
(1224, '02-01-02-01-010', '47', '118', 30, 64, 'TT drug chain', '450.30', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'IGUS 5050C.01.300', 0, 1),
(1225, '01-01-02-01-001', '46', '116', 18, 11, 'MH WIRE ROPE', '1770 N/M2, RHO, LUB-A2, UNGAL. 488 METER', '', '', 4, NULL, NULL, 0, '28', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'IWRC 25MM. 6X36, POWERFORM', 0, 1),
(1226, '02-02-04-02-069', '47', '119', 23, 16, 'RADIATOR CORE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '35X35X2', 0, 1),
(1227, '01-02-02-01-009', '46', '117', 15, 8, 'Air conditioner', 'Splet wall type 30000 BTU', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2.5 ton, cooltech brand', 0, 1),
(1228, '06-01-02-01-140', '51', '123', 64, 48, 'MAIN SHAFT OIL SEAL', 'GEAR BOX', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1229, '06-01-01-01-049', '51', '123', 63, 46, 'ALTERNATOR DYNAMO', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1230, '02-02-04-01-019', '47', '119', 23, 15, 'CYLINDER LINER KIT', 'LINER : P20737361, T120920, V4760; PISTON :23496710; LINER SEAL :20520607(VO 1543501, VO 8131248, VO', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028724', 0, 1),
(1231, '02-02-04-02-070', '47', '119', 23, 16, 'FUEL PUMP GEAR', 'AGCO SISU FUEL PUMP GEAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD PN : JO31322; NEW P/N : 924523.0282', 0, 1),
(1232, '02-02-04-01-020', '47', '119', 23, 15, 'Oil Cooler Seal Ring', 'TAD1641VE OIL COOLER SEAL', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0173', 0, 1),
(1233, '02-02-04-01-021', '47', '119', 23, 15, 'MAIN BEARING', 'TAD1641VE MAIN BEARING', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018160', 0, 1),
(1234, '02-02-04-01-022', '47', '119', 23, 15, 'BASE BEARING', 'TAD1641VE BASE BEARING', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018171', 0, 1),
(1235, '02-02-04-01-023', '47', '119', 23, 15, 'BIG END BEARING', 'TAD1641VE BIG END BEARING', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018189', 0, 1),
(1236, '02-02-04-01-024', '47', '119', 23, 15, 'CONNECTING PIPE WITH KIT', 'TAD1641VE CONNECTING PIPE WITH KIT', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '    J03269.0100', 0, 1),
(1237, '02-02-04-01-025', '47', '119', 23, 15, 'CYLINDER HEAD GASKET', 'TAD1641VE HEAD GASKET', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0027070', 0, 1),
(1238, '02-02-04-01-026', '47', '119', 23, 15, 'THERMOSTAT', 'TAD1641VE THERMOSTAT', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08619.0100', 0, 1),
(1239, '02-02-04-01-027', '47', '119', 23, 15, 'OVERHAULING GASKET KIT', 'TAD1641VE OVERHAULING GASKET KIT', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924504.4030', 0, 1),
(1240, '02-02-04-01-028', '47', '119', 23, 15, 'CABLE HARNESS', 'TAD1641VE CABLE HARNESS', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08597.0100', 0, 1),
(1241, '02-02-04-01-029', '47', '119', 23, 15, 'OIL COOLER', 'TAD1641VE OIL COOLER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028766', 0, 1),
(1242, '02-02-04-01-030', '47', '119', 23, 15, 'CONNECTING ROD', 'TAD1641VE CONNECTING ROD', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP117974', 0, 1),
(1243, '02-02-04-03-001', '47', '119', 23, 67, 'INJECTOR, EXCHANGE UNIT', 'FOUR PIN', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.U098', 0, 1),
(1244, '06-01-01-01-050', '51', '123', 63, 46, 'A B S BOARD', 'AVR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1245, '06-01-02-01-141', '51', '123', 64, 48, 'AIR HARNESS HOSE', 'AIR HARNESS SUPPORT BASE', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 1),
(1246, '04-02-01-01-034', '49', '126', 45, 33, 'STATOR', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144082', 0, 0),
(1247, '04-02-02-01-063', '49', '126', 46, 60, 'POWER STEERING UNIT', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D512962', 0, 0),
(1248, '04-02-01-01-035', '49', '126', 45, 33, 'SWITCH ASSY, WIPER', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144049', 0, 0),
(1249, '04-02-03-01-019', '49', '126', 47, 61, 'VALVE, BRAKE,ODB', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '410102.00012', 0, 0),
(1250, '02-02-04-01-031', '47', '119', 23, 15, 'CRANK SHAFT SEAL, FRONT', 'CRANK SHAFT FRONT SEAL', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '85108423/21347807; S/N-2016120951', 0, 0),
(1251, '02-02-04-01-032', '47', '119', 23, 15, 'CRANK SHAFT, REAR SEAL', 'CRANK SHAFT REAR SEAL', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '85108352; S/N-2016118292; 180*205*15', 0, 0),
(1252, '06-01-01-01-051', '51', '123', 63, 46, 'BATTERY MAIN SWITCH', 'MAIN SWITCH', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1253, '06-01-01-01-052', '51', '123', 63, 46, 'MUD GUARD INDICATOR LIGHT', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1254, '06-01-01-01-053', '51', '123', 63, 46, 'TEMPERATURE SWITCH ', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1255, '04-02-01-01-036', '49', '126', 45, 33, 'CONTROLLER ASSEMBLY', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '300611.00422', 0, 0),
(1256, '04-02-02-01-064', '49', '126', 46, 60, 'PISTON, CONTROL', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A138702', 0, 0),
(1257, '04-02-02-01-065', '49', '126', 46, 60, 'RING , PISTON', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A138615', 0, 0),
(1258, '04-02-01-01-037', '49', '126', 45, 33, 'FLANGE INPUT', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A148526', 0, 0),
(1259, '06-01-02-01-142', '51', '123', 64, 48, 'STEERING OIL SEAL', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1260, '06-01-02-01-143', '51', '123', 64, 48, 'STEERING WHEEL', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1261, '06-01-02-01-144', '51', '123', 64, 48, 'DOOR GLASS FRAME', 'GALLERY', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1262, '06-01-02-01-005', '51', '123', 64, 48, 'VENTILATION GLASS SET', 'WITH FRAME', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1263, '04-01-03-01-032', '49', '125', 51, 35, 'CYLINDER SLEEVE', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ECH000.0003G-01', 0, 0),
(1264, '04-01-03-01-033', '49', '125', 51, 35, 'CYLINDER SEAL KIT', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ECH000.0003G-03', 0, 0),
(1265, '04-02-01-01-038', '49', '126', 45, 33, 'FOG LIGHT SET ', 'LOCAL, DOOSAN-KALMAR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1266, '04-01-01-01-050', '49', '125', 49, 34, 'CABIN FAN (OPERETOR)', 'LOCAL DOOSAN-KALMAR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1267, '16-04-01-01-001', '61', '146', 77, 68, '--', '--', '', '', 1, NULL, NULL, 0, '29', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '16mm, IWRC, 6X36, UNG,A2,RHO', 0, 0),
(1268, '16-03-01-01-001', '61', '145', 78, 69, 'TT WIRE ROPE', '--', '', '', 1, NULL, NULL, 0, '29', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '18mm, IWRC, 6X36, UNG,A2,RHO', 0, 0),
(1269, '16-01-01-01-001', '61', '143', 79, 70, 'MH WIRE ROPE', '--', '', '', 1, NULL, NULL, 0, '29', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '22mm, IWRC, 6X36, UNG,A2,RHO', 0, 0),
(1270, '16-02-01-01-001', '61', '144', 80, 71, 'MH WIRE ROPE', '--', '', '', 1, NULL, NULL, 0, '29', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '25mm, IWRC, 6X36, UNG,A2,RHO', 0, 0),
(1271, '16-05-01-01-001', '61', '147', 81, 72, 'BH WIRE ROPE', '--', '', '', 1, NULL, NULL, 0, '28', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '30mm, IWRC, 6X36, UNG,A2,RHO', 0, 0),
(1272, '04-01-04-02-071', '49', '125', 52, 62, 'ROCKER ARM', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2302', 0, 0),
(1273, '04-01-01-01-051', '49', '125', 49, 34, 'SENSOR', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J04061.0100', 0, 0),
(1274, '02-02-02-01-014', '47', '119', 21, 13, 'TT SPROCKET ASSEMBLY BEARING', 'DOUBLE ROLLER WITH GREASE CHANNEL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '22211 MK , KYK', 0, 0),
(1275, '02-01-02-01-011', '47', '118', 30, 64, 'TT GUIDE ROLLER BEARING', 'DOUBLE ROLLER WITH GREASE CHANNEL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '22212 C3 , SKF', 0, 0),
(1276, '02-01-04-01-001', '47', '118', 32, 19, 'CYLINDER HEAD, HTC, RECON', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1277, '02-01-04-01-002', '47', '118', 32, 19, 'MAIN BEARING, STD', 'STD', '', '', 7, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3801260', 0, 0),
(1278, '02-01-04-01-003', '47', '118', 32, 19, 'CON ROD BERING', 'STD', '', '', 6, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '214950', 0, 0),
(1279, '02-01-04-01-004', '47', '118', 32, 19, 'TO GASKET KIT', '', '', '', 1, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '4029198  ', 0, 0),
(1280, '02-01-04-01-005', '47', '118', 32, 19, 'TOP GASKET KIT', '', '', '', 1, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '4029198  ', 0, 0),
(1281, '02-01-04-01-006', '47', '118', 32, 19, 'BOTTOM GASKET KIT', '', '', '', 1, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3014459', 0, 0),
(1282, '02-01-04-01-007', '47', '118', 32, 19, 'VALVE EXHAUST', '', '', '', 12, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3803524', 0, 0),
(1283, '02-01-04-01-008', '47', '118', 32, 19, 'INTAKE VALVE', '', '', '', 12, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3803512/3803516', 0, 0),
(1284, '02-01-04-01-009', '47', '118', 32, 19, 'VALVE GUIDE', '', '', '', 24, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3006456/3050369', 0, 0),
(1285, '02-01-04-01-010', '47', '118', 32, 19, 'VALVE SEAT, EXHAUST', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3017759', 0, 0),
(1286, '02-01-04-01-011', '47', '118', 32, 19, 'VALVE SEAT, INTAKE', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1287, '02-01-04-01-012', '47', '118', 32, 19, 'PISTON RING', '', '', '', 6, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '4089810/3803471', 0, 0),
(1288, '02-01-04-01-013', '47', '118', 32, 19, 'PISTON', '', '', '', 6, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3801534/3055099', 0, 0),
(1289, '02-01-05-01-001', '47', '118', 75, 65, 'CYLINDER LINER', '', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3801826', 0, 0),
(1290, '02-01-04-01-014', '47', '118', 32, 19, 'CYLINDER LINER SEAL KIT', '', '', '', 6, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3032874/215090', 0, 0),
(1291, '02-01-04-01-015', '47', '118', 32, 19, 'VALVE LOCK', '', '', '', 48, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1292, '02-01-04-01-016', '47', '118', 32, 19, 'INJECTOR SLEEV', '', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3011934/3070486', 0, 0),
(1293, '02-01-04-01-017', '47', '118', 32, 19, 'INJECTOR COMPLETE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1294, '02-01-05-01-002', '47', '118', 75, 65, 'WATER PUMP, COMPLETE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3801708/AR4284', 0, 0),
(1295, '02-01-04-01-018', '47', '118', 32, 19, 'TURBO CHARGER', 'W1705132759, HT 3B IMO T03', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3529032', 0, 0),
(1296, '02-01-04-01-019', '47', '118', 32, 19, 'TURBO CHARGER', 'W1705132759, HT 3B IMO T03', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3529032', 0, 0),
(1297, '02-01-04-01-020', '47', '118', 32, 19, 'OIL PUMP', 'CI IMPELLER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3821572', 0, 0),
(1298, '06-01-02-01-145', '51', '123', 64, 48, 'AIR MASTER CYLINDER KIT', '-', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '6/8', 0, 0),
(1299, '06-01-02-01-146', '51', '123', 64, 48, 'GEAR BOX GALLERY', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1300, '02-01-05-01-003', '47', '118', 75, 65, 'CYLINDER LINER', '', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1301, '02-02-04-01-033', '47', '119', 23, 15, 'OIL PUMP', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J09444.0100', 0, 0),
(1302, '06-01-01-01-054', '51', '123', 63, 46, 'SELF BACK COVER', 'SELF STARTER PART', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1303, '01-02-03-01-003', '46', '117', 16, 7, 'T/L/S HYDRAULIC MAIN CIRCULATION PUMP', 'A10VO71DR/31R-PPC12NOOM(CE421R1249-0)', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A10VO71DR/31R-PPC12NOOM', 0, 0),
(1304, '06-01-02-01-147', '51', '123', 64, 48, 'WIND SHEILD GLASS', 'Fornt Glass', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1305, '06-01-02-01-148', '51', '123', 64, 48, 'COUNTER SHAFT PENION', 'IDLE PENION GEAR BOX', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1306, '06-03-01-01-017', '51', '133', 66, 42, 'BRAKE PNEUMATIC PIPE', 'CHASSIS', '', '', 0, NULL, NULL, 0, '30', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1307, '02-01-05-01-004', '47', '118', 75, 65, 'RADIATOR FAN BELT', 'CX39', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'CX39, TOWYO POWER 9339', 0, 0),
(1308, '02-02-04-02-071', '47', '119', 23, 16, 'RADIATOR FAN BELT', '10PK1780', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '10PK1780', 0, 0),
(1309, '02-02-04-02-072', '47', '119', 23, 16, 'RADIATOR FAN BELT', '10PK 1890', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '10PK 1890', 0, 0),
(1310, '02-02-04-02-073', '47', '119', 23, 16, 'RADIATOR FAN BELT', '10PK1650', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '10PK1650', 0, 0),
(1311, '02-02-04-03-002', '47', '119', 23, 67, 'ALTERNATOR BELT', '8PK 1450', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '8PK 1450', 0, 0),
(1312, '02-02-04-01-034', '47', '119', 23, 15, 'ALTERNATOR BELT', '12PK 1330', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '12PK 1330', 0, 0),
(1313, '02-01-04-02-001', '47', '118', 32, 73, 'RADIATOR FAN BELT', '8PK1400', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '8PK1400', 0, 0),
(1314, '02-02-04-02-074', '47', '119', 23, 16, 'COOLANT PUMP BELT', '4K 894', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '4K 894', 0, 0),
(1315, '02-01-01-02-001', '47', '118', 29, 75, 'HT FUSE', ' 400A 600V 1BKN/75 AR 170M4956 EATON', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'THYRISTER FUSE', 0, 0),
(1316, '06-01-02-01-149', '51', '123', 64, 48, 'WHEEL HUB SEAL', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1317, '06-01-02-01-150', '51', '123', 64, 48, 'WHEEL HUB BEARING', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1318, '04-01-04-02-072', '49', '125', 52, 62, 'OIL FILTER (ENGINE)', 'RST', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF-3321', 0, 0),
(1319, '02-01-04-01-021', '47', '118', 32, 19, 'INJECTOR KIT', 'STC INJECTOR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1320, '02-01-04-01-022', '47', '118', 32, 19, 'PISTON COOLING NOZZLE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3013591', 0, 0),
(1321, '02-01-04-01-023', '47', '118', 32, 19, 'CAM SHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3044767', 0, 0),
(1322, '02-01-04-01-024', '47', '118', 32, 19, 'OIL PRESSURE SENSOR', '24V, TWO PIN', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '05701858', 0, 0),
(1323, '02-01-04-01-025', '47', '118', 32, 19, 'CAM BUSH', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3801106', 0, 0),
(1324, '06-01-01-01-055', '51', '123', 63, 46, 'ALTERNATOR FIELD COIL', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1325, '06-01-01-01-056', '51', '123', 63, 46, 'WIPER ADJUSTING ROD', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1326, '04-02-02-01-066', '49', '126', 46, 60, 'UNIVERSAL JOINT CROSS', 'DOOSAN-KALMAR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1327, '06-01-02-01-151', '51', '123', 64, 48, 'CLUTCH CYLINDER', 'TATA', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1328, '06-02-01-01-007', '51', '124', 60, 43, 'STARTING KEY SWITCH(ISUZU)', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1329, '02-02-04-03-003', '47', '119', 23, 67, 'CYLINDER HEAD GASKET', 'LOCAL P/N : 2824572', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J038447', 0, 0),
(1330, '02-02-04-03-004', '47', '119', 23, 67, 'CRANK SHAFT SEAL, FRONT', '150X180X15', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J038536', 0, 0),
(1331, '02-02-04-03-005', '47', '119', 23, 67, 'CRANK SHAFT, REAR', '136X159X13', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0015590', 0, 0),
(1332, '02-01-05-01-005', '47', '118', 75, 65, 'CYLINDER BLOCK', 'BIG CAM, STC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3081281', 0, 0),
(1333, '02-01-05-01-006', '47', '118', 75, 65, 'CAM SHAFT BUSHING', 'BIG CAM, STC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3011951', 0, 0),
(1334, '02-01-05-01-007', '47', '118', 75, 65, 'BIG END BEARING', 'STC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1335, '02-01-05-01-008', '47', '118', 75, 65, 'CONROD BUSHING', 'STC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '214950', 0, 0),
(1336, '06-01-03-01-020', '51', '123', 65, 47, 'ENGINE HEAD GASKET', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1337, '06-01-03-01-021', '51', '123', 65, 47, 'OIL COOLER GASKET', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1338, '04-01-04-02-073', '49', '125', 52, 62, 'GEAR RIM', 'GEARBOX', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J02884.0100', 0, 0),
(1339, '04-01-04-02-074', '49', '125', 52, 62, 'BELT', 'RADIATOR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J01998.0100', 0, 0),
(1340, '04-01-01-01-052', '49', '125', 49, 34, 'BRACKET SENSOR', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J05483.0100', 0, 0),
(1341, '04-01-03-01-034', '49', '125', 51, 35, 'ACCUMULATOR', 'NOT CHARGED', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922593.A001', 0, 0),
(1342, '04-01-04-02-075', '49', '125', 52, 62, 'WATER PUMP', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08976.0100', 0, 0),
(1343, '04-01-01-01-053', '49', '125', 49, 34, 'SPEED SENSOR', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1822', 0, 0),
(1344, '04-01-04-02-076', '49', '125', 52, 62, 'OIL PUMP', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1241', 0, 0),
(1345, '04-01-04-02-077', '49', '125', 52, 62, 'TURBO CHARGER', 'EXCHANGE UNIT', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J09141.0100', 0, 0),
(1346, '01-01-02-01-002', '46', '116', 18, 11, 'TT encoder wheel bearing', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'SKF 22207', 0, 0),
(1347, '02-01-01-02-002', '47', '118', 29, 75, 'CHARGING RESISTOR', '80W, 7.5 OHM', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'HF5C5504', 0, 0),
(1348, '06-01-03-01-022', '51', '123', 65, 47, 'WATER SEPERATOR FILTER', 'SIGNA (TATA)', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1349, '06-01-02-01-152', '51', '123', 64, 48, 'TAIL CROWN BEARING', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ABC 77213', 0, 0),
(1350, '04-02-02-01-067', '49', '126', 46, 60, 'YOKE ASSY ,FLANGE', 'Propeller shaft cross', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A148409', 0, 0),
(1351, '04-01-01-01-054', '49', '125', 49, 34, 'MAGNATIC VALVE', 'Hydraulic Block', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2304', 0, 0),
(1352, '06-01-02-01-153', '51', '123', 64, 48, 'GEAR BOX D -TEN KIT', 'ROLLER KIT', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1353, '02-02-01-01-108', '47', '119', 20, 12, 'FUSE', '600A, 680 V DC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104969', 0, 0),
(1354, '02-02-04-02-075', '47', '119', 23, 16, 'OVERHAULING REPAIR KIT', 'PISTON WITH RING=6, LINER=6, GASKET KIT=1, MAIN BEARING : 7, BIG END BEARING=6, FILTER=1,  TOTAL APR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO33122', 0, 0),
(1355, '02-02-02-01-015', '47', '119', 21, 13, 'BRAKE PAD/SHOE', 'RTG 16 TO 28', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO30584', 0, 0),
(1356, '02-02-04-01-035', '47', '119', 23, 15, 'CONNECTION PIPE', 'RTG 12 TO 15', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO32240', 0, 0),
(1357, '02-02-04-01-036', '47', '119', 23, 15, 'INLET VALVE', 'RTG 12 TO 15', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18063', 0, 0),
(1358, '02-02-04-01-037', '47', '119', 23, 15, 'EXHAUST VALVE', 'RTG 12 TO 15', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18064', 0, 0),
(1359, '02-02-04-01-038', '47', '119', 23, 15, 'VALVE SEAT, INTAKE', 'RTG 12 TO 15', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18061', 0, 0),
(1360, '02-02-04-01-039', '47', '119', 23, 15, 'VALVE SEAT, EXHAUST', 'RTG 12 TO 15', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18062', 0, 0),
(1361, '02-02-04-01-040', '47', '119', 23, 15, 'VALVE COTTER', 'RTG 12 TO 15', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO28690', 0, 0),
(1362, '02-02-01-01-109', '47', '119', 20, 12, 'REGULATOR, CHARGING ALTERNATOR ', 'RTG 12 TO 28', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO31399', 0, 0),
(1363, '02-02-01-01-110', '47', '119', 20, 12, 'REGULATOR, CHARGING ALTERNATOR', 'RTG 12 TO 28', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO31400', 0, 0),
(1364, '04-02-02-01-068', '49', '126', 46, 60, 'WHEEL STUD BOLT', 'DOOSAN-KALMAR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1365, '02-02-04-01-041', '47', '119', 23, 15, 'VALVE GUIDE', 'TAD1641 VALVE GUIDE', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18065', 0, 0),
(1366, '04-01-03-01-035', '49', '125', 51, 35, 'STEERING CYLINDER SEAL KIT', 'STEERING MOVING(KALMAR-DOOSAN)', '', '', 0, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1367, '02-01-04-01-026', '47', '118', 32, 19, 'PT PUMP REPAIR KIT', 'PT PUMP REPAIR KIT', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1368, '02-01-04-01-027', '47', '118', 32, 19, 'PT PUMP SHAFT', 'PT PUMP MAIN SHAFT', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1369, '02-01-04-01-028', '47', '118', 32, 19, 'PT PUMP PLUNGER', 'PT PUMP GOVERNOR PLUNGER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1370, '02-01-04-01-029', '47', '118', 32, 19, 'PT PUMP FILTER', 'PT PUMP FILTER SCREEN', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1371, '02-01-04-01-030', '47', '118', 32, 19, 'PT PUMP OIL SEAL, BIG', 'PT PUMP OIL SEAL BIG', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3803615', 0, 0),
(1372, '06-01-02-01-154', '51', '123', 64, 48, 'GEAR NEDDLE BEARING', 'GEAR BOX', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1373, '06-03-01-01-018', '51', '133', 66, 42, 'CABIN MOUNTING SET (BS-III))', 'TATA - BS-III', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1374, '04-01-01-01-055', '49', '125', 49, 34, 'CONTROL UNIT', 'ECU BOX', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923732.0021', 0, 0),
(1375, '06-01-02-01-155', '51', '123', 64, 48, 'DOOR CHANNEL RUBBER', 'VALVET', '', '', 0, NULL, NULL, 0, '30', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1376, '03-01-04-01-001', '48', '121', 40, 76, 'OIL FILTER', 'CUMMINS', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF-9080/14000', 0, 0),
(1377, '03-01-04-01-002', '48', '121', 40, 76, 'FUEL FILTER', 'CUMMINS', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FS-1000', 0, 0),
(1378, '03-01-04-01-003', '48', '121', 40, 76, 'FUEL WATER SEPERATOR', 'CUMMINS', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FS-36216 New P/N - 36126', 0, 0),
(1379, '02-01-04-01-031', '47', '118', 32, 19, 'CAM FOLLOWER', 'STC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1380, '02-01-04-01-032', '47', '118', 32, 19, 'ROCKER ARM, VALVE', 'STC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1381, '02-01-04-01-033', '47', '118', 32, 19, 'WATER PUMP IMPELLER', 'STC, CI', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1382, '02-01-04-01-034', '47', '118', 32, 19, 'ROCKER ARM BRIDGE', 'STC, CI', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1383, '02-01-04-01-035', '47', '118', 32, 19, 'THERMOSTAT', 'STC, CI', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1384, '02-01-04-01-036', '47', '118', 32, 19, 'FUEL LINE CONNECTOR', 'STC, CI', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1385, '02-01-04-01-037', '47', '118', 32, 19, 'ROCKER ARM, INJECTOR', 'STC, CI', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1386, '02-02-02-01-016', '47', '119', 21, 13, 'MAIN HOIST, BRAKE DISC ', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801905082', 0, 0),
(1387, '02-02-02-01-017', '47', '119', 21, 13, 'BRAKE PAD, FRICTION PLATE', 'RTG 16 TO 25', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J030583', 0, 0),
(1388, '04-01-01-01-056', '49', '125', 49, 34, 'SENSOR, ATTACHMENT,LEFT', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J05516.0100', 0, 0),
(1389, '04-01-01-01-057', '49', '125', 49, 34, 'SPRING PLATE (SENSOR)', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924627.1659', 0, 0),
(1390, '06-01-02-01-156', '51', '123', 64, 48, 'GEAR HUBS', 'TATA-EICHER (GEAR BOX)', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1391, '06-02-02-01-033', '51', '124', 61, 44, 'BEND AIR HOSE', 'ZIKZAK', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1392, '06-01-02-01-157', '51', '123', 64, 48, 'BRAKE OIL TANK', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1393, '02-02-04-03-006', '47', '119', 23, 67, 'CAM SHAFT PINION', 'VOLVO PN 21752320V:10:25:01,50,54', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0073110', 0, 0),
(1394, '07-01-01-01-011', '52', '134', 67, 53, 'TYRE (RE-CONDITION)', 'RE-CONDITION', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '12.00 - 240', 0, 0),
(1395, '06-01-01-01-057', '51', '123', 63, 46, 'BACK GEAR SWITCH', 'TATA-EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1396, '02-01-04-01-038', '47', '118', 32, 19, 'SPEED CONTROLLER', '24V DC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3044196', 0, 0),
(1397, '02-01-04-01-039', '47', '118', 32, 19, 'ROLLER, VALVE CAM', 'VALVE LIFTER WITH PIN', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3036933', 0, 0),
(1398, '02-01-04-01-040', '47', '118', 32, 19, 'ROLLER, INJECTOR', 'INJECTOR LIFTER WITHOUT PIN', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3081248', 0, 0),
(1399, '02-01-04-01-041', '47', '118', 32, 19, 'PT PUMP BUSHING', 'DIA 39MM', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '116391', 0, 0),
(1400, '04-01-01-01-058', '49', '125', 49, 34, 'PRESSURE SENSOR', 'RELIFE VALVE', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3250', 0, 0),
(1401, '02-01-04-01-042', '47', '118', 32, 19, 'RADIATOR FAN BELT', 'CX-40', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'CX40, TOWYO POWER 9340', 0, 0),
(1402, '01-02-03-01-004', '46', '117', 16, 7, 'BH EMERGENCY HYDRAULIC BRAKE SEAL KIT', '1. 6x14.75x194.8; 2. AMSY-A(5X9.5X103', '', '', 1, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '175-075-46739PT', 0, 0),
(1403, '01-02-03-01-005', '46', '117', 16, 7, 'PROPOTIONAL FLOW CONTROL VALVE', '2FRE 10-44/25LBK4M', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'HMEY1202', 0, 0),
(1404, '04-01-03-01-036', '49', '125', 51, 35, 'PUMP, HYDRAULIC', 'RST', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922976.0034', 0, 0),
(1405, '02-01-04-01-043', '47', '118', 32, 19, 'OIL CHANNEL', 'A18-1', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3054260', 0, 0),
(1406, '06-02-02-01-034', '51', '124', 61, 44, 'FLY WHEEL ', 'EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1407, '06-01-02-01-158', '51', '123', 64, 48, 'PROPELLER SHAFT', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1408, '06-01-02-01-159', '51', '123', 64, 48, 'AIR COMPRESSURE PISTON', 'BOOSTER PISTON', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1409, '10-06-01-01-001', '55', '148', 82, 77, 'VOLVO MAIN FUEL WATER SEPERATOR', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'VOVLO : 20998367, FLEETGUARD : FS 19735', 0, 0),
(1410, '10-07-01-01-001', '55', '149', 83, 78, 'OIL BYPASS FILTER', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'VOVLO : 21707132, FLEETGUARD : LF 3654', 0, 0),
(1411, '02-01-01-02-003', '47', '118', 29, 75, 'LIMIT SWITCH', 'ZCK-J1H29C, NC, AC15~240V, 3A', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'XCK-J. C', 0, 0),
(1412, '10-03-01-01-013', '55', '139', 72, 58, 'MAIN OIL FILTER', '', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'VOVLO : 23658092, FLEETGUARD : LF 4112', 0, 0),
(1413, '10-02-01-01-016', '55', '138', 71, 57, 'MAIN FUEL FILTER', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'VOVLO : 22480372, FLEETGUARD : FF 5507', 0, 0),
(1414, '10-01-01-01-017', '55', '137', 70, 56, 'MAIN AIR FILTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'VOVLO : 21702911', 0, 0),
(1415, '04-01-01-01-059', '49', '125', 49, 34, 'REGULATOR', 'Electrical Engine side', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.6381', 0, 0),
(1416, '02-01-04-03-001', '47', '118', 32, 79, 'OIL PUMP', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '21736639', 0, 0),
(1417, '02-02-04-04-001', '47', '119', 23, 81, 'OIL PUMP', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '21736639', 0, 0),
(1418, '02-01-04-01-044', '47', '118', 32, 19, 'CRANK SHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3608833', 0, 0),
(1419, '04-02-04-01-045', '49', '126', 48, 39, 'RADIATOR ASSY;D160S', 'DOOSAN (BIG)', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '440211-00232', 0, 0),
(1420, '04-02-04-01-046', '49', '126', 48, 39, 'HEAD GASKET', 'DOOSAN (BIG)', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65.03901 - 0058A', 0, 0),
(1421, '06-03-01-01-019', '51', '133', 66, 42, 'CHASSIS HANGER BRASS BUSH', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1422, '04-01-02-01-023', '49', '125', 50, 36, 'MECHANICAL SEAL (WATER PUMP)', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'CUMMINS-3033677', 0, 0),
(1423, '06-01-02-01-160', '51', '123', 64, 48, 'CLUTCH PAD PHASING', 'TATA - BSIII ', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1424, '06-01-02-01-161', '51', '123', 64, 48, 'AXEL BOLT WITH NUT', 'TATA  - EICHER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1425, '06-01-02-01-162', '51', '123', 64, 48, 'JAM NUT', 'GEAR BOX', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1426, '01-02-02-01-010', '46', '117', 15, 8, 'SPREADER MOTOR COUPLING SPACER', 'RX-38', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(1427, '06-01-02-01-163', '51', '123', 64, 48, 'LOCK WASHER ', 'GEAR BOX', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1428, '04-02-01-01-039', '49', '126', 45, 33, 'SELF STARTER PINION SET', 'RE - CONDITION', '', '', 0, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1429, '06-03-01-01-020', '51', '133', 66, 42, 'CHASSIS WHEEL HUB COVER', 'ALUMINIUM', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1430, '04-02-02-01-069', '49', '126', 46, 60, 'MAST BOLT', '30MM - 9', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1431, '06-01-02-01-164', '51', '123', 64, 48, 'GEAR HOUSING BUSH', '-', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '-', 0, 0),
(1432, '02-01-05-01-009', '47', '118', 75, 65, 'WATER PUMP REPAIR KIT', 'BEARING : 2PCS, 6302-2RZ, MECHANICAL SEAL : 1 PC, 16MM, 36MM, SHAFT : 1PC ', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '3801712', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialbalance`
--

CREATE TABLE `inv_materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `is_manual_code_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for checking manual code update	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_materialbalance`
--

INSERT INTO `inv_materialbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbin_val`, `mbout_qty`, `mbout_val`, `mbprice`, `mbtype`, `mbserial`, `mbserial_id`, `mbunit_id`, `jvno`, `part_no`, `project_id`, `warehouse_id`, `package_id`, `building_id`, `approval_status`, `is_manual_code_edit`) VALUES
(35944, 'MRR-CW001', '12-01-01-01-002', '2023-06-05', 10, 1500, 0, 0, 150, 'Receive', 1.1, '1', '20', 'MRR-CW001', '-', '1', '1', '', '', 0, 0),
(35945, 'MRR-CW001', '12-01-01-01-002', '2023-06-05', 10, 1500, 0, 0, 150, 'Receive', 1.1, '1', '20', 'MRR-CW001', '-', '1', '1', '', '', 0, 0),
(35946, 'MRR-CW001', '12-01-01-01-002', '2023-06-05', 10, 1750, 0, 0, 175, 'Receive', 1.1, '1', '20', 'MRR-CW001', '-', '1', '1', '', '', 0, 0),
(35947, 'MRR-CW001', '12-01-01-01-002', '2023-06-05', 10, 1750, 0, 0, 175, 'Receive', 1.1, '1', '20', 'MRR-CW001', '-', '1', '1', '', '', 0, 0),
(35948, 'MRR-CW001', '10-01-01-01-016', '2023-06-05', 10, 2000, 0, 0, 200, 'Receive', 1.1, '1', '20', 'MRR-CW001', 'JP117487', '1', '1', '', '', 0, 0),
(35949, 'MRR-CW001', '10-01-01-01-016', '2023-06-05', 10, 2000, 0, 0, 200, 'Receive', 1.1, '1', '20', 'MRR-CW001', 'JP117487', '1', '1', '', '', 0, 0),
(35950, 'MRR-CW001', '10-01-01-01-016', '2023-06-05', 10, 2250, 0, 0, 225, 'Receive', 1.1, '1', '20', 'MRR-CW001', 'JP117487', '1', '1', '', '', 0, 0),
(35951, 'MRR-CW001', '10-01-01-01-016', '2023-06-05', 10, 2250, 0, 0, 225, 'Receive', 1.1, '1', '20', 'MRR-CW001', 'JP117487', '1', '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategory`
--

CREATE TABLE `inv_materialcategory` (
  `id` int(11) NOT NULL,
  `material_sub_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_sub_description` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_materialcategory`
--

INSERT INTO `inv_materialcategory` (`id`, `material_sub_id`, `category_id`, `material_sub_description`) VALUES
(116, '01-01-00-00-000', '46', 'ZPMC'),
(117, '01-02-00-00-000', '46', 'MHI'),
(118, '02-01-00-00-000', '47', 'ZPMC'),
(119, '02-02-00-00-000', '47', 'KALMAR'),
(120, '02-03-00-00-000', '47', 'LIEBHERR'),
(121, '03-01-00-00-000', '48', 'KALMAR'),
(122, '03-02-00-00-000', '48', 'LIEBHERR'),
(123, '06-01-00-00-000', '51', 'TATA'),
(124, '06-02-00-00-000', '51', 'EICHER'),
(125, '04-01-00-00-000', '49', 'KALMAR'),
(126, '04-02-00-00-000', '49', 'DOOSAN'),
(127, '05-01-00-00-000', '50', 'LIEBHERR'),
(133, '06-03-00-00-000', '51', 'CHASSIS'),
(134, '07-01-00-00-000', '52', 'TYRE'),
(135, '09-01-00-00-000', '54', 'LUBRICANTS'),
(136, '08-01-00-00-000', '53', 'FUEL'),
(137, '10-01-00-00-000', '55', 'AIR FILTER'),
(138, '10-02-00-00-000', '55', 'MAIN FUEL FILTER'),
(139, '10-03-00-00-000', '55', 'MAIN OIL FILTER'),
(140, '10-04-00-00-000', '55', 'Coolant Filter'),
(141, '10-05-00-00-000', '55', 'Hydraulic Filter'),
(142, '12-01-00-00-000', '57', 'BATTERY'),
(143, '16-01-00-00-000', '61', '22mm, IWRC 6x29F'),
(144, '16-02-00-00-000', '61', '25mm, IWRC 6x29F'),
(145, '16-03-00-00-000', '61', '18mm, IWRC 6x29F'),
(146, '16-04-00-00-000', '61', 'USHA MARTIN OR ANY CONVENIENT BRAND'),
(147, '16-05-00-00-000', '61', '30mm, IWRC 6x29F'),
(148, '10-06-00-00-000', '55', 'FUEL WATER SEPERATOR'),
(149, '10-07-00-00-000', '55', 'OIL BYPASS FILTER');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategorysub`
--

CREATE TABLE `inv_materialcategorysub` (
  `id` int(11) NOT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `category_description` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stock_acct_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chk_sbalance` int(11) DEFAULT NULL,
  `consumption_ac` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_materialcategorysub`
--

INSERT INTO `inv_materialcategorysub` (`id`, `category_id`, `category_description`, `stock_acct_id`, `chk_sbalance`, `consumption_ac`) VALUES
(46, '01-00-00-00-000', 'QGC', NULL, NULL, NULL),
(47, '02-00-00-00-000', 'RTG', NULL, NULL, NULL),
(48, '03-00-00-00-000', 'RST', NULL, NULL, NULL),
(49, '04-00-00-00-000', 'FLT', NULL, NULL, NULL),
(50, '05-00-00-00-000', 'MHC', NULL, NULL, NULL),
(51, '06-00-00-00-000', 'TRAILER', NULL, NULL, NULL),
(52, '07-00-00-00-000', 'TYRE', NULL, NULL, NULL),
(53, '08-00-00-00-000', 'FUEL', NULL, NULL, NULL),
(54, '09-00-00-00-000', 'LUBRICANTS', NULL, NULL, NULL),
(55, '10-00-00-00-000', 'FILTER', NULL, NULL, NULL),
(56, '11-00-00-00-000', 'SC', NULL, NULL, NULL),
(57, '12-00-00-00-000', 'BATTERY', NULL, NULL, NULL),
(58, '13-00-00-00-000', 'MHI QGC SPREADER', NULL, NULL, NULL),
(59, '14-00-00-00-000', 'ZPMC QGC SPREADER', NULL, NULL, NULL),
(60, '15-00-00-00-000', 'ASP', NULL, NULL, NULL),
(61, '16-00-00-00-000', 'WIRE ROPE', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_level3`
--

CREATE TABLE `inv_material_level3` (
  `id` int(11) NOT NULL,
  `material_level3_code` varchar(15) NOT NULL,
  `category_id` varchar(15) NOT NULL,
  `category_sub_id` varchar(15) NOT NULL,
  `material_level3_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inv_material_level3`
--

INSERT INTO `inv_material_level3` (`id`, `material_level3_code`, `category_id`, `category_sub_id`, `material_level3_description`) VALUES
(14, '01-02-01-00-000', '46', '117', 'Electrical'),
(15, '01-02-02-00-000', '46', '117', 'Mechanical'),
(16, '01-02-03-00-000', '46', '117', 'Hydraulic'),
(17, '01-01-01-00-000', '46', '116', 'Electrical'),
(18, '01-01-02-00-000', '46', '116', 'Mechanical'),
(19, '01-01-03-00-000', '46', '116', 'Hydraulic'),
(20, '02-02-01-00-000', '47', '119', 'Electrical'),
(21, '02-02-02-00-000', '47', '119', 'Mechanical'),
(22, '02-02-03-00-000', '47', '119', 'Hydraulic'),
(23, '02-02-04-00-000', '47', '119', 'Engine'),
(24, '02-03-01-00-000', '47', '120', 'Electrical'),
(25, '02-03-02-00-000', '47', '120', 'Mechanical'),
(26, '02-03-03-00-000', '47', '120', 'Hydraulic'),
(27, '02-03-04-00-000', '47', '120', 'Engine'),
(29, '02-01-01-00-000', '47', '118', 'Electrical'),
(30, '02-01-02-00-000', '47', '118', 'Mechanical'),
(31, '02-01-03-00-000', '47', '118', 'Hydraulic'),
(32, '02-01-04-00-000', '47', '118', 'Engine'),
(33, '05-01-01-00-000', '50', '127', 'Engine'),
(34, '05-01-02-00-000', '50', '127', 'Electrical'),
(35, '05-01-03-00-000', '50', '127', 'Mechanical'),
(36, '05-01-04-00-000', '50', '127', 'Hydraulic'),
(37, '03-01-01-00-000', '48', '121', 'Electrical'),
(38, '03-01-02-00-000', '48', '121', 'Mechanical'),
(39, '03-01-03-00-000', '48', '121', 'Hydraulic'),
(40, '03-01-04-00-000', '48', '121', 'Engine'),
(41, '03-02-01-00-000', '48', '122', 'Electrical'),
(42, '03-02-02-00-000', '48', '122', 'Mechanical'),
(43, '03-02-03-00-000', '48', '122', 'Hydraulic'),
(44, '03-02-04-00-000', '48', '122', 'Engine'),
(45, '04-02-01-00-000', '49', '126', 'Electrical'),
(46, '04-02-02-00-000', '49', '126', 'Mechanical'),
(47, '04-02-03-00-000', '49', '126', 'Hydraulic'),
(48, '04-02-04-00-000', '49', '126', 'Engine'),
(49, '04-01-01-00-000', '49', '125', 'Electrical'),
(50, '04-01-02-00-000', '49', '125', 'Mechanical'),
(51, '04-01-03-00-000', '49', '125', 'Hydraulic'),
(52, '04-01-04-00-000', '49', '125', 'Engine'),
(60, '06-02-01-00-000', '51', '124', 'Electrical'),
(61, '06-02-02-00-000', '51', '124', 'Mechanical'),
(62, '06-02-03-00-000', '51', '124', 'Engine'),
(63, '06-01-01-00-000', '51', '123', 'Electrical'),
(64, '06-01-02-00-000', '51', '123', 'Mechanical'),
(65, '06-01-03-00-000', '51', '123', 'Engine'),
(66, '06-03-01-00-000', '51', '133', 'Mechanical'),
(67, '07-01-01-00-000', '52', '134', 'TYRE'),
(68, '09-01-01-00-000', '54', '135', 'LUBRICANTS'),
(69, '08-01-01-00-000', '53', '136', 'FUEL'),
(70, '10-01-01-00-000', '55', '137', 'AIR FILTER'),
(71, '10-02-01-00-000', '55', '138', 'FUEL FILTER'),
(72, '10-03-01-00-000', '55', '139', 'OIL FILTER'),
(73, '10-04-01-00-000', '55', '140', 'Coolant Filter'),
(74, '10-05-01-00-000', '55', '141', 'Hydraulic Filter'),
(75, '02-01-05-00-000', '47', '118', 'CUMMINS NTA855-G4'),
(76, '12-01-01-00-000', '57', '142', 'ENGINE'),
(77, '16-04-01-00-000', '61', '146', 'ANTI SWAY/CATENERY WIRE'),
(78, '16-03-01-00-000', '61', '145', 'TT WIRE ROPE'),
(79, '16-01-01-00-000', '61', '143', 'MH WIRE ROPE'),
(80, '16-02-01-00-000', '61', '144', 'MH WIRE ROPE'),
(81, '16-05-01-00-000', '61', '147', 'BH WIRE ROPE'),
(82, '10-06-01-00-000', '55', '148', 'MAIN FUEL WATER SEPERATOR'),
(83, '10-07-01-00-000', '55', '149', 'OIL BYPASS FILTER');

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_level4`
--

CREATE TABLE `inv_material_level4` (
  `id` int(11) NOT NULL,
  `material_level4_code` varchar(15) NOT NULL,
  `category_id` varchar(15) NOT NULL,
  `category_sub_id` varchar(15) NOT NULL,
  `level3_id` varchar(15) NOT NULL,
  `material_level4_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inv_material_level4`
--

INSERT INTO `inv_material_level4` (`id`, `material_level4_code`, `category_id`, `category_sub_id`, `level3_id`, `material_level4_description`) VALUES
(6, '01-02-01-01-000', '46', '117', '14', 'Electrical '),
(7, '01-02-03-01-000', '46', '117', '16', 'Hydraulic'),
(8, '01-02-02-01-000', '46', '117', '15', 'Mechanical'),
(9, '01-01-01-01-000', '46', '116', '17', 'Electrical'),
(10, '01-01-03-01-000', '46', '116', '19', 'Hydraulic'),
(11, '01-01-02-01-000', '46', '116', '18', 'Mechanical'),
(12, '02-02-01-01-000', '47', '119', '20', 'Electrical'),
(13, '02-02-02-01-000', '47', '119', '21', 'Mechanical'),
(14, '02-02-03-01-000', '47', '119', '22', 'Hydraulic'),
(15, '02-02-04-01-000', '47', '119', '23', 'Volvo Penta TAD1641VE'),
(16, '02-02-04-02-000', '47', '119', '23', 'AGCO SISU 84WI'),
(19, '02-01-04-01-000', '47', '118', '32', 'CUMMINS NTA 855-G4'),
(20, '05-01-02-01-000', '50', '127', '34', 'Electrical'),
(21, '05-01-03-01-000', '50', '127', '35', 'Mechanical'),
(22, '05-01-04-01-000', '50', '127', '36', 'Hydraulic'),
(23, '05-01-01-01-000', '50', '127', '33', 'MAN'),
(24, '05-01-01-02-000', '50', '127', '33', 'LIEBHERR'),
(25, '03-01-01-01-000', '48', '121', '37', 'Electrical'),
(26, '03-01-03-01-000', '48', '121', '39', 'Hydraulic'),
(27, '03-01-02-01-000', '48', '121', '38', 'Mechanical'),
(29, '03-02-01-01-000', '48', '122', '41', 'Electrical'),
(30, '03-02-02-01-000', '48', '122', '42', 'Mechanical'),
(31, '03-02-03-01-000', '48', '122', '43', 'Hydraulic'),
(33, '04-02-01-01-000', '49', '126', '45', 'Electrical'),
(34, '04-01-01-01-000', '49', '125', '49', 'Electrical'),
(35, '04-01-03-01-000', '49', '125', '51', 'Hydraulic'),
(36, '04-01-02-01-000', '49', '125', '50', 'Mechanical'),
(38, '04-01-04-01-000', '49', '125', '52', 'CUMMINS'),
(39, '04-02-04-01-000', '49', '126', '48', 'DOOSAN'),
(42, '06-03-01-01-000', '51', '133', '66', 'Mechanical'),
(43, '06-02-01-01-000', '51', '124', '60', 'Electrical'),
(44, '06-02-02-01-000', '51', '124', '61', 'Mechanical'),
(45, '06-02-03-01-000', '51', '124', '62', 'CUMMINS'),
(46, '06-01-01-01-000', '51', '123', '63', 'Electrical'),
(47, '06-01-03-01-000', '51', '123', '65', 'CUMMINS'),
(48, '06-01-02-01-000', '51', '123', '64', 'Mechanical'),
(49, '02-03-01-01-000', '47', '120', '24', 'Electrical'),
(50, '02-03-04-01-000', '47', '120', '27', 'VOLVO PENTA TAD1353VE'),
(51, '02-03-03-01-000', '47', '120', '26', 'Hydraulic'),
(52, '02-03-02-01-000', '47', '120', '25', 'Mechanical'),
(53, '07-01-01-01-000', '52', '134', '67', 'TYRE'),
(54, '09-01-01-01-000', '54', '135', '68', 'LUBRICANTS'),
(55, '08-01-01-01-000', '53', '136', '69', 'FUEL'),
(56, '10-01-01-01-000', '55', '137', '70', 'AIR FILTER'),
(57, '10-02-01-01-000', '55', '138', '71', 'FUEL FILTER'),
(58, '10-03-01-01-000', '55', '139', '72', 'OIL FILTER'),
(59, '10-04-01-01-000', '55', '140', '73', 'Coolant Filter'),
(60, '04-02-02-01-000', '49', '126', '46', 'Mechanical'),
(61, '04-02-03-01-000', '49', '126', '47', 'HYDRAULIC'),
(62, '04-01-04-02-000', '49', '125', '52', 'VOLVO PENTA'),
(63, '10-05-01-01-000', '55', '141', '74', 'Hydraulic Filter'),
(64, '02-01-02-01-000', '47', '118', '30', 'Mechanical'),
(65, '02-01-05-01-000', '47', '118', '75', 'CUMMINS NTA855-G4'),
(66, '12-01-01-01-000', '57', '142', '76', 'ENGINE'),
(67, '02-02-04-03-000', '47', '119', '23', 'VOLVO TAD1152VE'),
(68, '16-04-01-01-000', '61', '146', '77', 'RTG/QGC'),
(69, '16-03-01-01-000', '61', '145', '78', 'QGC'),
(70, '16-01-01-01-000', '61', '143', '79', '--'),
(71, '16-02-01-01-000', '61', '144', '80', '--'),
(72, '16-05-01-01-000', '61', '147', '81', '--'),
(73, '02-01-04-02-000', '47', '118', '32', 'VOLVO PENTA TAD1353VE'),
(74, '02-01-01-01-000', '47', '118', '29', ''),
(75, '02-01-01-02-000', '47', '118', '29', 'ELECTRICAL'),
(76, '03-01-04-01-000', '48', '121', '40', 'Engine'),
(77, '10-06-01-01-000', '55', '148', '82', 'MAIN FUEL WATER SEPERATOR'),
(78, '10-07-01-01-000', '55', '149', '83', 'OIL BYPASS FILTER'),
(79, '02-01-04-03-000', '47', '118', '32', 'TAD1152VE, VP274615'),
(80, '02-01-04-04-000', '47', '118', '32', 'TAD1640VE-B, VP-393697'),
(81, '02-02-04-04-000', '47', '119', '23', 'TAD1152VE, VP-274615');

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_partno_detail`
--

CREATE TABLE `inv_material_partno_detail` (
  `id` int(11) NOT NULL,
  `inv_material_id` int(11) DEFAULT NULL,
  `material_id_code` varchar(255) DEFAULT NULL,
  `part_no` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars`
--

CREATE TABLE `inv_particulars` (
  `id` int(11) NOT NULL,
  `particulars_id` varchar(100) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `particulars` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars_type`
--

CREATE TABLE `inv_particulars_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_product_price`
--

CREATE TABLE `inv_product_price` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(20) NOT NULL,
  `material_id` varchar(20) NOT NULL,
  `receive_details_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `part_no` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `cerated_by` varchar(15) NOT NULL,
  `updated_at` date NOT NULL,
  `updated_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv_product_price`
--

INSERT INTO `inv_product_price` (`id`, `mrr_no`, `material_id`, `receive_details_id`, `qty`, `price`, `part_no`, `status`, `created_at`, `cerated_by`, `updated_at`, `updated_by`) VALUES
(410, 'MRR-CW001', '12-01-01-01-002', 6861, 10, 150, '-', 1, '2023-06-05', '', '0000-00-00', ''),
(411, 'MRR-CW001', '12-01-01-01-002', 6862, 10, 175, '-', 1, '2023-06-05', '', '0000-00-00', ''),
(412, 'MRR-CW001', '10-01-01-01-016', 6863, 10, 200, 'JP117487', 1, '2023-06-05', '', '0000-00-00', ''),
(413, 'MRR-CW001', '10-01-01-01-016', 6864, 10, 225, 'JP117487', 1, '2023-06-05', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchase`
--

CREATE TABLE `inv_purchase` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `purchase_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `purchase_ware_hosue_id` int(11) DEFAULT NULL,
  `purchase_unit_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchasedetail`
--

CREATE TABLE `inv_purchasedetail` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `purchase_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_purchase` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_receive`
--

CREATE TABLE `inv_receive` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mrr_date` date DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `vat_challan_no` varchar(100) NOT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receive_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) DEFAULT NULL,
  `receive_unit_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `challan_date` date NOT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `received_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `mrr_image` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_receive`
--

INSERT INTO `inv_receive` (`id`, `mrr_no`, `mrr_date`, `purchase_id`, `receive_acct_id`, `supplier_id`, `postedtogl`, `vat_challan_no`, `remarks`, `receive_type`, `project_id`, `warehouse_id`, `receive_unit_id`, `chk_year_end`, `receive_total`, `no_of_material`, `challanno`, `challan_date`, `jv_no`, `part_no`, `requisitionno`, `requisition_date`, `received_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `mrr_image`) VALUES
(1610, 'MRR-CW001', '2023-06-05', '001', '6-14-010', 'SID-001', 0, '', 'okay', 'Credit', '1', '1', '1', NULL, 7500, 40, '001', '2023-06-05', NULL, 'JP117487', '001', '2023-06-05 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_receivedetail`
--

CREATE TABLE `inv_receivedetail` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `receive_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_receive` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(1000) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `is_manual_code_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for checking manual code update'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_receivedetail`
--

INSERT INTO `inv_receivedetail` (`id`, `mrr_no`, `material_id`, `material_name`, `unit_id`, `receive_qty`, `unit_price`, `sl_no`, `total_receive`, `rd_serial_id`, `part_no`, `project_id`, `warehouse_id`, `approval_status`, `is_manual_code_edit`) VALUES
(6861, 'MRR-CW001', '12-01-01-01-002', '1139', 20, 10, 150, 1, 1500, '', '-', '1', '1', 0, 0),
(6862, 'MRR-CW001', '12-01-01-01-002', '1139', 20, 10, 175, 1, 1750, '', '-', '1', '1', 0, 0),
(6863, 'MRR-CW001', '10-01-01-01-016', '1124', 20, 10, 200, 1, 2000, '', 'JP117487', '1', '1', 0, 0),
(6864, 'MRR-CW001', '10-01-01-01-016', '1124', 20, 10, 225, 1, 2250, '', 'JP117487', '1', '1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition`
--

CREATE TABLE `inv_requisition` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(25) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `requisition_date` datetime NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `no_of_material` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition_details`
--

CREATE TABLE `inv_requisition_details` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requisition_qty` float NOT NULL,
  `sl_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_return`
--

CREATE TABLE `inv_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(25) NOT NULL,
  `return_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_returndetail`
--

CREATE TABLE `inv_returndetail` (
  `id` int(11) NOT NULL,
  `return_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `return_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_serviceinvoice`
--

CREATE TABLE `inv_serviceinvoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `service_name` varchar(2000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplier`
--

CREATE TABLE `inv_supplier` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_company` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact_person` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sposition` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_phone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_op_balance` float NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL,
  `cc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplierbalance`
--

CREATE TABLE `inv_supplierbalance` (
  `id` int(11) NOT NULL,
  `sb_ref_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `sb_date` date NOT NULL,
  `sb_supplier_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sb_dr_amount` float NOT NULL,
  `sb_cr_amount` float NOT NULL,
  `sb_remark` varchar(175) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sb_partac_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_supplierbalance`
--

INSERT INTO `inv_supplierbalance` (`id`, `sb_ref_id`, `warehouse_id`, `sb_date`, `sb_supplier_id`, `sb_dr_amount`, `sb_cr_amount`, `sb_remark`, `sb_partac_id`, `approval_status`) VALUES
(1611, 'MRR-CW001', '1', '2023-06-05', 'SID-001', 0, 7500, 'okay', 'MRR-CW001', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_technicianinfo`
--

CREATE TABLE `inv_technicianinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `department` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `district` varchar(100) NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `emg_contact` varchar(100) NOT NULL,
  `emg_rel` varchar(100) NOT NULL,
  `emg_tel` varchar(100) NOT NULL,
  `emg_mob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_tranferdetail`
--

CREATE TABLE `inv_tranferdetail` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `transfer_qty` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `inwarehouse` varchar(100) NOT NULL,
  `outwarehouse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_transfermaster`
--

CREATE TABLE `inv_transfermaster` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `transfer_date` varchar(100) NOT NULL,
  `from_warehouse` varchar(100) NOT NULL,
  `to_warehouse` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher`
--

CREATE TABLE `inv_voucher` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucherdetails`
--

CREATE TABLE `inv_voucherdetails` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_cat` varchar(100) NOT NULL,
  `voucher_type` varchar(100) NOT NULL,
  `voucher_details` varchar(5000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher_cat`
--

CREATE TABLE `inv_voucher_cat` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_warehosueinfo`
--

CREATE TABLE `inv_warehosueinfo` (
  `id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_warehosueinfo`
--

INSERT INTO `inv_warehosueinfo` (`id`, `warehouse_id`, `name`, `short_name`, `project_id`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'WH-001', 'Port Warehouse', 'CTW', '1', 'Chattogram Port, Chattogram', NULL, 0, '2020-12-14 04:49:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `code` varchar(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `id` int(11) NOT NULL,
  `parent_item_id` int(11) NOT NULL,
  `sub_item_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `item_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materialbalance`
--

CREATE TABLE `materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `part_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') NOT NULL,
  `name` varchar(191) NOT NULL,
  `items` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) DEFAULT NULL COMMENT 'view_route',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - Dashboard , 2 - Email , 3 - Both',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `project_id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `page_slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `cannonical_link` varchar(191) DEFAULT NULL,
  `seo_title` varchar(191) DEFAULT NULL,
  `seo_keyword` varchar(191) DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_category`
--

CREATE TABLE `parent_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plant_and_equipment`
--

CREATE TABLE `plant_and_equipment` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `equipment_type` int(11) DEFAULT NULL,
  `date_form` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `name` varchar(700) DEFAULT NULL,
  `eel_code` varchar(300) DEFAULT NULL,
  `country_of_origin` varchar(400) DEFAULT NULL,
  `capacity` varchar(300) DEFAULT NULL,
  `make_by` varchar(300) DEFAULT NULL,
  `model` varchar(300) DEFAULT NULL,
  `year_of_manufac` int(11) DEFAULT NULL,
  `present_location` varchar(300) DEFAULT NULL,
  `present_condition` varchar(400) DEFAULT NULL,
  `remarks` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `present_condition`
--

CREATE TABLE `present_condition` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement`
--

CREATE TABLE `product_movement` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `project_form` int(11) DEFAULT NULL,
  `project_to` int(11) DEFAULT NULL,
  `total_quantity` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `movement_type` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement_details`
--

CREATE TABLE `product_movement_details` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `code`, `name`, `incharge`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PR-001', 'CTED, Chattogram', 'Lt Commander M Tafsir Uddin Ahmed(Retd)', 'Chattogram Port, Chattogram', NULL, NULL, '2020-12-14 04:48:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `id` int(11) NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT 0,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `seo_title` varchar(191) DEFAULT NULL,
  `seo_keyword` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `company_contact` varchar(191) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `from_name` varchar(191) DEFAULT NULL,
  `from_email` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `google` varchar(191) DEFAULT NULL,
  `copyright_text` varchar(191) DEFAULT NULL,
  `footer_text` varchar(191) DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `disclaimer` text DEFAULT NULL,
  `google_analytics` text DEFAULT NULL,
  `home_video1` varchar(191) DEFAULT NULL,
  `home_video2` varchar(191) DEFAULT NULL,
  `home_video3` varchar(191) DEFAULT NULL,
  `home_video4` varchar(191) DEFAULT NULL,
  `explanation1` varchar(191) DEFAULT NULL,
  `explanation2` varchar(191) DEFAULT NULL,
  `explanation3` varchar(191) DEFAULT NULL,
  `explanation4` varchar(191) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `post_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `token` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sttable`
--

CREATE TABLE `sttable` (
  `id` int(11) NOT NULL,
  `vehicleno` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `registrationno` varchar(150) NOT NULL,
  `tax_issdt` date NOT NULL,
  `tax_expdt` date NOT NULL,
  `fit_issdt` date NOT NULL,
  `fit_expdt` date NOT NULL,
  `ins_issdt` date NOT NULL,
  `ins_expdt` date NOT NULL,
  `rou_issdt` date NOT NULL,
  `rou_expdt` date NOT NULL,
  `engineno` varchar(55) NOT NULL,
  `chasisno` varchar(50) NOT NULL,
  `regdate` date NOT NULL,
  `serialno` varchar(50) NOT NULL,
  `modelno` varchar(50) NOT NULL,
  `ccno` varchar(50) NOT NULL,
  `netvalue` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `myear` varchar(50) NOT NULL,
  `office` varchar(75) NOT NULL,
  `division` varchar(79) NOT NULL,
  `location` varchar(80) NOT NULL,
  `photo` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sub_code` varchar(400) NOT NULL,
  `name` varchar(600) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `supplier_op_balance` varchar(100) NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `code`, `name`, `address`, `contact_person`, `supplier_phone`, `supplier_op_balance`, `supplier_type`, `material_type`) VALUES
(1, 'SID-001', 'Saif Powertec Ltd', '-', '-', '-', '-', 'cash', '47');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `voucherdate` date NOT NULL,
  `supplierid` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_billpayment`
--

CREATE TABLE `tb_billpayment` (
  `id` int(11) NOT NULL,
  `mr_no` varchar(100) NOT NULL,
  `mr_date` varchar(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `accheadname` varchar(100) NOT NULL,
  `debitamount` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `check_no` text NOT NULL,
  `check_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ledger`
--

CREATE TABLE `tb_ledger` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_product_receive_data`
--

CREATE TABLE `temp_product_receive_data` (
  `id` int(11) NOT NULL,
  `receive_no` varchar(500) NOT NULL,
  `receive_date` datetime NOT NULL,
  `product_id` int(11) NOT NULL,
  `part_no` varchar(500) NOT NULL,
  `supplier_id` varchar(250) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL,
  `project_to_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id2` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id2`, `first_name`, `last_name`, `user_type`, `project_id`, `warehouse_id`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `is_term_accept`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Admin', 'Saif', 'admin', '1', '1', 'admin@admin.com', 'bfb1e4e7ace6d70c18b69a2a6cf4a415', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 1, 1, '2019-01-14 00:17:02', '2019-01-20 20:36:38', NULL),
(4, 4, 'Super', 'Admin', 'superAdmin', '1', '1', 'superadmin@admin.com', 'be05977add575832dc52655d4ad5c42e', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 4, 4, NULL, NULL, NULL),
(7, 1, 'Test', 'User', 'admin', '1', '1', 'test_user@admin.com', '02cae080d3745359d6a896eb180d30ba', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 1, 1, '2019-01-14 00:17:02', '2019-01-20 20:36:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_type`
--
ALTER TABLE `complain_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_challan`
--
ALTER TABLE `inv_challan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complain`
--
ALTER TABLE `inv_complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_designation`
--
ALTER TABLE `inv_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_employee`
--
ALTER TABLE `inv_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issue`
--
ALTER TABLE `inv_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material`
--
ALTER TABLE `inv_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material_level3`
--
ALTER TABLE `inv_material_level3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material_level4`
--
ALTER TABLE `inv_material_level4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material_partno_detail`
--
ALTER TABLE `inv_material_partno_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_product_price`
--
ALTER TABLE `inv_product_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receive`
--
ALTER TABLE `inv_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_return`
--
ALTER TABLE `inv_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materialbalance`
--
ALTER TABLE `materialbalance`
  ADD KEY `id` (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sttable`
--
ALTER TABLE `sttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
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
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complain_type`
--
ALTER TABLE `complain_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `inv_challan`
--
ALTER TABLE `inv_challan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_complain`
--
ALTER TABLE `inv_complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_designation`
--
ALTER TABLE `inv_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_employee`
--
ALTER TABLE `inv_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8653;

--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28867;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1433;

--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35952;

--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `inv_material_level3`
--
ALTER TABLE `inv_material_level3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `inv_material_level4`
--
ALTER TABLE `inv_material_level4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `inv_material_partno_detail`
--
ALTER TABLE `inv_material_partno_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_product_price`
--
ALTER TABLE `inv_product_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611;

--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6865;

--
-- AUTO_INCREMENT for table `inv_return`
--
ALTER TABLE `inv_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1612;

--
-- AUTO_INCREMENT for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materialbalance`
--
ALTER TABLE `materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sttable`
--
ALTER TABLE `sttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
