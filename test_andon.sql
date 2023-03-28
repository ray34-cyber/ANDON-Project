-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 09:02 AM
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
-- Database: `test_andon`
--

-- --------------------------------------------------------

--
-- Table structure for table `sma_itx_m_call`
--

CREATE TABLE `sma_itx_m_call` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `bootstrap_bg` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sma_itx_m_call`
--

INSERT INTO `sma_itx_m_call` (`id`, `name`, `is_active`, `bootstrap_bg`) VALUES
(0, 'CANCEL', 0, NULL),
(1, 'Quality', 1, 'danger'),
(2, 'Machine', 1, 'warning'),
(3, 'Bottom', 0, 'primary'),
(4, 'Upper', 0, 'cyan'),
(5, 'Material', 1, 'primary'),
(6, 'Dist. Center', 1, 'cyan'),
(7, 'Packing', 1, 'primary'),
(8, 'Insole', 1, 'cyan');

-- --------------------------------------------------------

--
-- Table structure for table `sma_itx_m_device_list`
--

CREATE TABLE `sma_itx_m_device_list` (
  `id` int(11) NOT NULL,
  `rf_address` varchar(50) NOT NULL,
  `group_id` int(11) DEFAULT NULL COMMENT 'id Repeater in sma_itx_m_repeater',
  `machine_id` int(11) DEFAULT NULL,
  `plant_id` int(11) DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `process_sub_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `zone_sub_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `pc_id` int(11) DEFAULT NULL,
  `id_call_01` int(5) NOT NULL DEFAULT 5,
  `id_call_02` int(5) NOT NULL DEFAULT 4,
  `id_call_04` int(5) NOT NULL DEFAULT 2,
  `id_call_08` int(5) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `create_user` varchar(50) NOT NULL DEFAULT 'root',
  `edit_date` datetime DEFAULT NULL,
  `edit_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sma_itx_m_device_list`
--

INSERT INTO `sma_itx_m_device_list` (`id`, `rf_address`, `group_id`, `machine_id`, `plant_id`, `line_id`, `process_id`, `process_sub_id`, `zone_id`, `zone_sub_id`, `is_active`, `pc_id`, `id_call_01`, `id_call_02`, `id_call_04`, `id_call_08`, `create_date`, `create_user`, `edit_date`, `edit_user`) VALUES
(1, '3DC81', 1, 0, 1, 1, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(2, '5DEF2', 1, 0, 1, 2, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(3, '4B178', 1, 0, 1, 3, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(4, '30AAC', 1, 0, 1, 4, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(5, '5D12A', 1, 0, 1, 5, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(6, '82BFC', 1, 0, 1, 6, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(7, '31738', 1, 0, 1, 7, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(8, 'BAE71', 1, 0, 1, 8, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(9, '2917A', 1, 0, 1, 9, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:37', 'root', NULL, NULL),
(10, 'E6C9C', 1, 0, 1, 10, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(11, '29D01', 1, 0, 1, 11, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(12, 'D7B66', 1, 0, 1, 12, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(13, 'F758C', 1, 0, 1, 13, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(14, 'EA90A', 1, 0, 1, 14, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(15, '4A88C', 1, 0, 1, 15, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(16, '322EA', 1, 0, 1, 16, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(17, 'FDD01', 1, 0, 1, 17, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(18, 'E10FC', 1, 0, 1, 18, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(19, '19D62', 1, 0, 1, 19, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(20, '2FB1A', 1, 0, 1, 20, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(21, '1BB2A', 1, 0, 1, 21, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(22, '24564', 1, 0, 1, 22, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(23, '1E80E', 1, 0, 1, 23, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(24, '36CDC', 1, 0, 1, 24, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:38', 'root', NULL, NULL),
(25, 'F6C01', 1, 0, 1, 25, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(26, '0BE32', 1, 0, 1, 26, 5, 0, 0, 0, 1, 1, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(27, 'CC9B4', 1, 0, 1, 27, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(28, '4D3EC', 1, 0, 1, 28, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(29, '4A86C', 1, 0, 1, 29, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(30, 'F287C', 1, 0, 1, 30, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(31, '835C8', 1, 0, 1, 31, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(32, 'A5762', 1, 0, 1, 32, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(33, '41232', 1, 0, 1, 33, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(34, '18A06', 1, 0, 1, 34, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(35, '39726', 1, 0, 1, 35, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(36, '9DECA', 1, 0, 1, 36, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(37, '3FB5C', 1, 0, 1, 37, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(38, '74992', 1, 0, 1, 38, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(39, '9714A', 1, 0, 1, 39, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(40, '7D992', 1, 0, 1, 40, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(41, '82BB1', 1, 0, 1, 41, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:39', 'root', NULL, NULL),
(42, '16282', 1, 0, 1, 42, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(43, 'F2FAE', 1, 0, 1, 43, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(44, 'E1A02', 1, 0, 1, 44, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(45, '8754C', 1, 0, 1, 45, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(46, '3145A', 1, 0, 1, 46, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(47, '7B36A', 1, 0, 1, 47, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(48, '82D33', 1, 0, 1, 48, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(49, '3658D', 1, 0, 1, 49, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(50, 'F2777', 1, 0, 1, 50, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(51, 'E6DFB', 1, 0, 1, 51, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(52, '0B591', 1, 0, 1, 52, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(53, '6861D', 1, 0, 1, 53, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(54, '24237', 1, 0, 1, 54, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(55, '74213', 1, 0, 1, 55, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:40', 'root', NULL, NULL),
(56, 'D79E7', 1, 0, 1, 56, 5, 0, 0, 0, 1, 2, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(57, 'CADFD', 3, 0, 1, 1, 2, 0, 0, 0, 1, 3, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(58, '655FB', 3, 0, 1, 2, 2, 0, 0, 0, 1, 3, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(59, '1B93D', 3, 0, 1, 1, 1, 0, 1, 0, 1, 3, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(60, '8D80F', 3, 0, 1, 1, 4, 0, 1, 0, 1, 3, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(61, '22A1D', 3, 0, 1, 1, 3, 0, 1, 0, 1, 3, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(62, '3AEA7', 3, 0, 1, 2, 3, 0, 1, 0, 1, 3, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(63, '50AED', 3, 0, 1, 3, 3, 0, 1, 0, 1, 3, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(64, '90573', 3, 0, 1, 1, 3, 0, 2, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(65, 'E0807', 3, 0, 1, 2, 3, 0, 2, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(66, '57C83', 3, 0, 1, 1, 4, 0, 2, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(67, 'CB10F', 3, 0, 1, 3, 3, 0, 2, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(68, '2781F', 3, 0, 1, 1, 1, 0, 2, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(69, '1C237', 3, 0, 1, 2, 1, 0, 2, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(70, '7123D', 3, 0, 1, 1, 3, 0, 3, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(71, 'E21DD', 3, 0, 1, 2, 3, 0, 3, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(72, '66767', 3, 0, 1, 1, 4, 0, 3, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(73, '4209D', 3, 0, 1, 3, 3, 0, 3, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(74, 'B5FDB', 3, 0, 1, 1, 1, 0, 3, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL),
(75, '765EB', 3, 0, 1, 2, 1, 0, 3, 0, 1, 4, 5, 6, 2, 1, '2022-09-19 10:02:41', 'root', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_itx_m_line`
--

CREATE TABLE `sma_itx_m_line` (
  `id` int(11) NOT NULL,
  `plant_id` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `initial` varchar(50) DEFAULT NULL,
  `sound` varchar(50) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `create_user` varchar(50) NOT NULL DEFAULT 'root',
  `edit_date` datetime DEFAULT NULL,
  `edit_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sma_itx_m_line`
--

INSERT INTO `sma_itx_m_line` (`id`, `plant_id`, `description`, `initial`, `sound`, `is_active`, `create_date`, `create_user`, `edit_date`, `edit_user`) VALUES
(1, 1, '1', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(2, 1, '2', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(3, 1, '3', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(4, 1, '4', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(5, 1, '5', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(6, 1, '6', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(7, 1, '7', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(8, 1, '8', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(9, 1, '9', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(10, 1, '10', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(11, 1, '11', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(12, 1, '12', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(13, 1, '13', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(14, 1, '14', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(15, 1, '15', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(16, 1, '16', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(17, 1, '17', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(18, 1, '18', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(19, 1, '19', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(20, 1, '20', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(21, 1, '21', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(22, 1, '22', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(23, 1, '23', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(24, 1, '24', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(25, 1, '25', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(26, 1, '26', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(27, 1, '27', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(28, 1, '28', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(29, 1, '29', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(30, 1, '30', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(31, 1, '31', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(32, 1, '32', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(33, 1, '33', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(34, 1, '34', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(35, 1, '35', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(36, 1, '36', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(37, 1, '37', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(38, 1, '38', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(39, 1, '39', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(40, 1, '40', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(41, 1, '41', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(42, 1, '42', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(43, 1, '43', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(44, 1, '44', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(45, 1, '45', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(46, 1, '46', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(47, 1, '47', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(48, 1, '48', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(49, 1, '49', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(50, 1, '50', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(51, 1, '51', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(52, 1, '52', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(53, 1, '53', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(54, 1, '54', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(55, 1, '55', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL),
(56, 1, '56', NULL, NULL, 1, '2022-09-12 08:53:43', 'root', '2022-09-12 03:53:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_itx_m_machine`
--

CREATE TABLE `sma_itx_m_machine` (
  `id` int(11) NOT NULL,
  `machine_cat_id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `description_call` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `create_user` varchar(50) NOT NULL DEFAULT 'root',
  `edit_date` datetime DEFAULT NULL,
  `edit_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sma_itx_m_machine`
--

INSERT INTO `sma_itx_m_machine` (`id`, `machine_cat_id`, `plant_id`, `description`, `description_call`, `is_active`, `create_date`, `create_user`, `edit_date`, `edit_user`) VALUES
(1, 1, 1, 'Lectra MC', '', 1, '2022-08-19 09:08:26', 'root', NULL, NULL),
(2, 1, 1, 'Comelz MC', '', 1, '2022-08-19 09:09:51', 'root', NULL, NULL),
(3, 1, 1, 'ESA NEK (NESTING)', '', 1, '2022-08-19 09:09:51', 'root', NULL, NULL),
(4, 1, 1, 'Travelling MC', '', 1, '2022-08-19 09:09:51', 'root', NULL, NULL),
(5, 1, 1, 'Hyd Plan MC', '', 1, '2022-08-19 09:09:51', 'root', NULL, NULL),
(6, 1, 1, 'Swing Arm MC', '', 1, '2022-08-19 09:09:51', 'root', NULL, NULL),
(7, 5, 1, 'Back part molding MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(8, 5, 1, 'Heel Act MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(10, 5, 1, 'Toe vamp Mold MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(12, 5, 1, 'Toe&Heel Molding Machine', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(13, 5, 1, 'Steam box MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(14, 5, 1, 'Gathering MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(15, 5, 1, 'Strobel MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(16, 5, 1, 'Gauge Marking MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(17, 5, 1, 'Hand Grinding MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(18, 5, 1, 'Heel laste MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(19, 5, 1, 'Flash Activator', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(20, 5, 1, 'Single Non Pad Press', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(21, 5, 1, 'Press Infant', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(22, 5, 1, 'Press Double', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(23, 5, 1, 'Universal press single MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(24, 5, 1, 'Universal press double MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(25, 5, 1, 'Mini Chiller 60', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(26, 5, 1, 'chiler (120)', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(27, 5, 1, 'chiller (180)', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(28, 5, 1, 'blower', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(29, 5, 1, 'Sockliner MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(30, 5, 1, 'Sockliner  Besar MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(31, 5, 1, 'Sockliner Baiyi', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(32, 5, 1, 'Laste puller MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(33, 5, 1, 'Metal Detector MC', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(37, 5, 1, 'Rotary', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(38, 5, 1, 'Conveyor Line 120', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(39, 5, 1, 'Conveyor Line 180', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(40, 5, 1, 'Ariance', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(41, 5, 1, 'Roll Coater ', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(43, 5, 1, 'Last Inserter (Semi Auto) (Install on Strobel M/C)', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(44, 5, 1, 'Pneumatic Laste Puller', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(45, 5, 1, 'Heater Setting', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(46, 5, 1, 'UV STERILIZATION', '', 1, '2022-08-19 09:18:13', 'root', NULL, NULL),
(47, 2, 1, 'Skiving Leather', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(48, 2, 1, 'Skiving Heel Counter', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(49, 2, 1, 'Splitting Machine', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(50, 2, 1, 'Size Label MC', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(51, 2, 1, 'Roll hotmelt MC', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(52, 3, 1, 'CS 1310/1510', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(53, 3, 1, 'CS 3020', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(54, 3, 1, 'ST-6040', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(55, 3, 1, 'JK-6030', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(56, 3, 1, 'CS 3 Strips', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(57, 3, 1, 'CS 3020 Auto Feeding', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(58, 3, 1, 'CS 2210 (Auto Laceloop)', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(59, 3, 1, 'Auto Laceloop', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(60, 4, 1, 'F 1N', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(61, 4, 1, 'F 2N', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(62, 4, 1, 'F 4N', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(63, 4, 1, 'P 1N', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(64, 4, 1, 'P 2N', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(65, 4, 1, 'P 4N', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(66, 4, 1, 'Z/Z MC', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(67, 4, 1, 'Z/Z BINDING MC', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(68, 4, 1, 'tonge forming', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(69, 4, 1, 'Lem Ball', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(70, 4, 1, 'Leather Buffing MC', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(71, 4, 1, 'Last Cleaner', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(72, 4, 1, 'Single Folding MC', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(74, 4, 1, 'Double Folding MC', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(75, 4, 1, 'Double Folding MC SUNTECH', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(76, 4, 1, 'Metal eyestay', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(77, 4, 1, 'Spray ', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(78, 4, 1, 'Spray Glue Machine', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(79, 4, 1, 'Hammering MC', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(80, 4, 1, 'Upper Hammering Machine', '', 1, '2022-08-19 09:19:24', 'root', NULL, NULL),
(81, 4, 1, 'Spray Hamering Multi', '', 1, '2022-08-19 09:19:25', 'root', NULL, NULL),
(82, 4, 1, 'Multi Spray & Hammer', '', 1, '2022-08-19 09:19:25', 'root', NULL, NULL),
(83, 4, 1, 'Punching MC', '', 1, '2022-08-19 09:19:25', 'root', NULL, NULL),
(84, 4, 1, 'Power Punching', '', 1, '2022-08-19 09:19:25', 'root', NULL, NULL),
(85, 4, 1, 'Booster Punching MC', '', 1, '2022-08-19 09:19:25', 'root', NULL, NULL),
(86, 4, 1, 'Cylinder Bed', '', 1, '2022-08-19 09:19:25', 'root', NULL, NULL),
(87, 4, 1, 'Desk Type Double Head Pressing and Iron Machine', '', 1, '2022-08-19 09:19:25', 'root', NULL, NULL),
(88, 4, 1, 'Obaroko', '', 1, '2022-08-19 09:19:25', 'root', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_itx_m_plant`
--

CREATE TABLE `sma_itx_m_plant` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `create_user` varchar(50) NOT NULL DEFAULT 'root',
  `edit_date` datetime DEFAULT NULL,
  `edit_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sma_itx_m_plant`
--

INSERT INTO `sma_itx_m_plant` (`id`, `code`, `description`, `create_date`, `create_user`, `edit_date`, `edit_user`) VALUES
(1, 'F1', 'FACTORY 1', '2022-09-12 08:46:04', 'root', '2022-09-12 03:46:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_itx_m_process`
--

CREATE TABLE `sma_itx_m_process` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `plant_id` int(11) DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `initial` varchar(50) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `create_user` varchar(50) NOT NULL DEFAULT 'root',
  `edit_date` datetime DEFAULT NULL,
  `edit_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sma_itx_m_process`
--

INSERT INTO `sma_itx_m_process` (`id`, `category_id`, `plant_id`, `description`, `initial`, `create_date`, `create_user`, `edit_date`, `edit_user`) VALUES
(1, 1, 1, 'Manual Cutting', 'MC', '2022-09-12 08:47:19', 'root', '2022-09-12 03:47:16', NULL),
(2, 1, 1, 'Auto Cutting', 'AC', '2022-09-12 08:47:21', 'root', '2022-09-12 03:47:16', NULL),
(3, 2, 1, 'Preparation', 'PP', '2022-09-12 08:47:19', 'root', '2022-09-12 03:47:16', NULL),
(4, 3, 1, 'Computer Stitching', 'CS', '2022-09-12 08:47:21', 'root', '2022-09-12 03:47:16', NULL),
(5, 4, 1, 'Assembly', 'A', '2022-09-12 08:47:21', 'root', '2022-09-12 03:47:16', NULL),
(6, 4, 1, 'Sewing', 'S', '2022-09-12 08:47:21', 'root', '2022-09-12 03:47:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_itx_m_status`
--

CREATE TABLE `sma_itx_m_status` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `create_user` varchar(50) NOT NULL DEFAULT 'root',
  `edit_date` datetime DEFAULT NULL,
  `edit_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sma_itx_m_status`
--

INSERT INTO `sma_itx_m_status` (`id`, `description`, `create_date`, `create_user`, `edit_date`, `edit_user`) VALUES
(1, 'Calling', '2021-03-29 13:37:48', 'root', NULL, NULL),
(2, 'Arrival', '2021-03-29 13:37:48', 'root', NULL, NULL),
(3, 'Completed', '2021-03-29 13:37:48', 'root', NULL, NULL),
(4, 'Canceled', '2021-03-29 13:37:48', 'root', NULL, NULL),
(5, 'Mute', '2021-03-29 13:38:10', 'root', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_itx_t_data`
--

CREATE TABLE `sma_itx_t_data` (
  `id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `machine_id` int(11) DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `call_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `date_arrival` datetime DEFAULT NULL,
  `date_finish` datetime DEFAULT NULL,
  `date_next` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sma_itx_t_data`
--

INSERT INTO `sma_itx_t_data` (`id`, `plant_id`, `datetime`, `machine_id`, `line_id`, `process_id`, `call_id`, `status_id`, `date_arrival`, `date_finish`, `date_next`) VALUES
(1, 1, '2023-03-09 14:58:45', 1, 1, 1, 1, 1, NULL, NULL, NULL),
(2, 1, '2023-03-09 14:58:45', 2, 1, 1, 1, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sma_itx_m_call`
--
ALTER TABLE `sma_itx_m_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`is_active`);

--
-- Indexes for table `sma_itx_m_device_list`
--
ALTER TABLE `sma_itx_m_device_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rf_address` (`rf_address`),
  ADD KEY `id` (`id`,`rf_address`,`group_id`,`machine_id`,`plant_id`,`line_id`,`process_id`,`process_sub_id`,`zone_id`,`zone_sub_id`,`is_active`);

--
-- Indexes for table `sma_itx_m_line`
--
ALTER TABLE `sma_itx_m_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`plant_id`);

--
-- Indexes for table `sma_itx_m_machine`
--
ALTER TABLE `sma_itx_m_machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`machine_cat_id`,`is_active`);

--
-- Indexes for table `sma_itx_m_plant`
--
ALTER TABLE `sma_itx_m_plant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_itx_m_process`
--
ALTER TABLE `sma_itx_m_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_itx_m_status`
--
ALTER TABLE `sma_itx_m_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_itx_t_data`
--
ALTER TABLE `sma_itx_t_data`
  ADD PRIMARY KEY (`id`,`plant_id`,`datetime`),
  ADD KEY `id` (`id`,`plant_id`,`datetime`,`machine_id`,`line_id`,`process_id`,`call_id`,`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sma_itx_m_call`
--
ALTER TABLE `sma_itx_m_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sma_itx_m_device_list`
--
ALTER TABLE `sma_itx_m_device_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sma_itx_m_line`
--
ALTER TABLE `sma_itx_m_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `sma_itx_m_machine`
--
ALTER TABLE `sma_itx_m_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `sma_itx_m_plant`
--
ALTER TABLE `sma_itx_m_plant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_itx_m_process`
--
ALTER TABLE `sma_itx_m_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_itx_m_status`
--
ALTER TABLE `sma_itx_m_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sma_itx_t_data`
--
ALTER TABLE `sma_itx_t_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
