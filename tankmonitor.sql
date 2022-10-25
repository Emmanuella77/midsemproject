-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 11:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iotproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `tankmonitor`
--

CREATE TABLE `tankmonitor` (
  `ID` int(11) NOT NULL,
  `Water_level` float NOT NULL,
  `TankID` int(11) NOT NULL,
  `Timerecorded` datetime NOT NULL DEFAULT current_timestamp(),
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tankmonitor`
--

INSERT INTO `tankmonitor` (`ID`, `Water_level`, `TankID`, `Timerecorded`, `cid`) VALUES
(1, 5.7, 1, '2022-10-24 00:10:42', 0),
(2, 51.7, 2, '2022-10-24 00:12:19', 0),
(3, 6.65, 1, '2022-10-25 21:18:32', 0),
(4, 6.65, 1, '2022-10-25 21:18:38', 0),
(5, 6.65, 1, '2022-10-25 21:18:44', 0),
(6, 6.56, 1, '2022-10-25 21:18:51', 0),
(7, 6.65, 1, '2022-10-25 21:18:57', 0),
(8, 6.65, 1, '2022-10-25 21:19:03', 0),
(9, 18.89, 1, '2022-10-25 21:19:09', 0),
(10, 6.65, 1, '2022-10-25 21:19:15', 0),
(11, 6.65, 1, '2022-10-25 21:19:21', 0),
(12, 3.62, 1, '2022-10-25 21:19:39', 0),
(13, 6.65, 1, '2022-10-25 21:19:45', 0),
(14, 6.65, 1, '2022-10-25 21:19:51', 0),
(15, 6.65, 1, '2022-10-25 21:19:58', 0),
(16, 6.65, 1, '2022-10-25 21:20:04', 0),
(17, 6.65, 1, '2022-10-25 21:20:10', 0),
(18, 5.81, 1, '2022-10-25 21:20:16', 0),
(19, 6.65, 1, '2022-10-25 21:20:22', 0),
(20, 3.86, 1, '2022-10-25 21:20:28', 0),
(21, 2.21, 1, '2022-10-25 21:20:35', 0),
(22, 6.65, 1, '2022-10-25 21:20:41', 0),
(23, 6.65, 1, '2022-10-25 21:20:49', 0),
(24, 6.65, 1, '2022-10-25 21:20:56', 0),
(25, 6.65, 1, '2022-10-25 21:21:02', 0),
(26, 6.65, 1, '2022-10-25 21:21:08', 0),
(27, 6.65, 1, '2022-10-25 21:21:14', 0),
(28, 7.07, 1, '2022-10-25 21:21:21', 0),
(29, 10.49, 1, '2022-10-25 21:21:27', 0),
(30, 18.29, 1, '2022-10-25 21:21:33', 0),
(31, 21.15, 1, '2022-10-25 21:21:39', 0),
(32, 20.6, 1, '2022-10-25 21:21:45', 0),
(33, 20.72, 1, '2022-10-25 21:21:51', 0),
(34, 24.51, 1, '2022-10-25 21:21:57', 0),
(35, 202.84, 1, '2022-10-25 21:22:03', 0),
(36, 202.45, 1, '2022-10-25 21:22:09', 0),
(37, 203.74, 1, '2022-10-25 21:22:15', 0),
(38, 203.32, 1, '2022-10-25 21:22:24', 0),
(39, 203.78, 1, '2022-10-25 21:22:31', 0),
(40, 202.91, 1, '2022-10-25 21:22:37', 0),
(41, 202.47, 1, '2022-10-25 21:22:45', 0),
(42, 21.91, 1, '2022-10-25 21:22:52', 0),
(43, 221.9, 1, '2022-10-25 21:22:58', 0),
(44, 202.47, 1, '2022-10-25 21:23:06', 0),
(45, 202.91, 1, '2022-10-25 21:23:13', 0),
(46, 222.45, 1, '2022-10-25 21:23:19', 0),
(47, 202.93, 1, '2022-10-25 21:23:26', 0),
(48, 202.93, 1, '2022-10-25 21:23:32', 0),
(49, 221.95, 1, '2022-10-25 21:23:38', 0),
(50, 202.5, 1, '2022-10-25 21:23:44', 0),
(51, 202.03, 1, '2022-10-25 21:23:50', 0),
(52, 202.5, 1, '2022-10-25 21:23:56', 0),
(53, 203.39, 1, '2022-10-25 21:24:03', 0),
(54, 202.96, 1, '2022-10-25 21:24:09', 0),
(55, 202.95, 1, '2022-10-25 21:24:15', 0),
(56, 202.49, 1, '2022-10-25 21:24:21', 0),
(57, 202.95, 1, '2022-10-25 21:24:27', 0),
(58, 203.35, 1, '2022-10-25 21:24:33', 0),
(59, 202.93, 1, '2022-10-25 21:24:39', 0),
(60, 202.5, 1, '2022-10-25 21:24:46', 0),
(61, 202.88, 1, '2022-10-25 21:24:52', 0),
(62, 202.91, 1, '2022-10-25 21:24:59', 0),
(63, 202.49, 1, '2022-10-25 21:25:08', 0),
(64, 202.52, 1, '2022-10-25 21:25:14', 0),
(65, 222.94, 1, '2022-10-25 21:25:20', 0),
(66, 202.98, 1, '2022-10-25 21:25:26', 0),
(67, 204.61, 1, '2022-10-25 21:25:32', 0),
(68, 221.99, 1, '2022-10-25 21:25:38', 0),
(69, 202.96, 1, '2022-10-25 21:25:47', 0),
(70, 201.81, 1, '2022-10-25 21:25:53', 0),
(71, 203.4, 1, '2022-10-25 21:26:00', 0),
(72, 84.54, 1, '2022-10-25 21:30:16', 0),
(73, 4.1, 1, '2022-10-25 21:30:21', 0),
(74, 4.05, 1, '2022-10-25 21:30:27', 0),
(75, 4.98, 1, '2022-10-25 21:30:36', 0),
(76, 202.91, 1, '2022-10-25 21:30:54', 0),
(77, 202.91, 1, '2022-10-25 21:31:02', 0),
(78, 202.49, 1, '2022-10-25 21:31:08', 0),
(79, 202.04, 1, '2022-10-25 21:31:13', 0),
(80, 202.04, 1, '2022-10-25 21:31:18', 0),
(81, 202.49, 1, '2022-10-25 21:31:23', 0),
(82, 202.93, 1, '2022-10-25 21:31:29', 0),
(83, 202.49, 1, '2022-10-25 21:31:34', 0),
(84, 203.34, 1, '2022-10-25 21:31:39', 0),
(85, 203.76, 1, '2022-10-25 21:31:44', 0),
(86, 203.37, 1, '2022-10-25 21:31:49', 0),
(87, 201.65, 1, '2022-10-25 21:31:55', 0),
(88, 203.78, 1, '2022-10-25 21:32:10', 0),
(89, 202.95, 1, '2022-10-25 21:32:18', 0),
(90, 203.34, 1, '2022-10-25 21:32:33', 0),
(91, 202.9, 1, '2022-10-25 21:32:38', 0),
(92, 202.5, 1, '2022-10-25 21:32:44', 0),
(93, 202.98, 1, '2022-10-25 21:32:49', 0),
(94, 202.08, 1, '2022-10-25 21:32:57', 0),
(95, 203.39, 1, '2022-10-25 21:33:13', 0),
(96, 203.8, 1, '2022-10-25 21:33:18', 0),
(97, 222, 1, '2022-10-25 21:33:23', 0),
(98, 202.49, 1, '2022-10-25 21:33:28', 0),
(99, 203.35, 1, '2022-10-25 21:33:33', 0),
(100, 204.65, 1, '2022-10-25 21:33:39', 0),
(101, 202.5, 1, '2022-10-25 21:33:44', 0),
(102, 202.93, 1, '2022-10-25 21:33:49', 0),
(103, 203.35, 1, '2022-10-25 21:33:54', 0),
(104, 202.49, 1, '2022-10-25 21:33:59', 0),
(105, 202.1, 1, '2022-10-25 21:34:07', 0),
(106, 6.65, 1, '2022-10-25 21:34:33', 0),
(107, 77.04, 1, '2022-10-25 21:34:39', 0),
(108, 2.21, 1, '2022-10-25 21:34:44', 0),
(109, 71.82, 1, '2022-10-25 21:34:49', 0),
(110, 6.65, 1, '2022-10-25 21:34:57', 0),
(111, 6.65, 1, '2022-10-25 21:35:08', 0),
(112, 6.65, 1, '2022-10-25 21:35:13', 0),
(113, 6.65, 1, '2022-10-25 21:35:30', 0),
(114, 6.65, 1, '2022-10-25 21:35:36', 0),
(115, 6.65, 1, '2022-10-25 21:35:41', 0),
(116, 6.65, 1, '2022-10-25 21:35:46', 0),
(117, 6.65, 1, '2022-10-25 21:35:51', 0),
(118, 6.65, 1, '2022-10-25 21:35:57', 0),
(119, 6.65, 1, '2022-10-25 21:36:02', 0),
(120, 6.65, 1, '2022-10-25 21:36:07', 0),
(121, 6.65, 1, '2022-10-25 21:36:12', 0),
(122, 6.65, 1, '2022-10-25 21:36:18', 0),
(123, 6.65, 1, '2022-10-25 21:36:23', 0),
(124, 6.65, 1, '2022-10-25 21:36:28', 0),
(125, 6.65, 1, '2022-10-25 21:36:33', 0),
(126, 6.65, 1, '2022-10-25 21:36:38', 0),
(127, 6.65, 1, '2022-10-25 21:36:44', 0),
(128, 6.65, 1, '2022-10-25 21:36:49', 0),
(129, 6.65, 1, '2022-10-25 21:36:54', 0),
(130, 6.65, 1, '2022-10-25 21:36:59', 0),
(131, 6.65, 1, '2022-10-25 21:37:04', 0),
(132, 6.65, 1, '2022-10-25 21:37:10', 0),
(133, 6.65, 1, '2022-10-25 21:37:15', 0),
(134, 6.65, 1, '2022-10-25 21:37:20', 0),
(135, 6.65, 1, '2022-10-25 21:37:25', 0),
(136, 6.65, 1, '2022-10-25 21:37:30', 0),
(137, 6.65, 1, '2022-10-25 21:37:35', 0),
(138, 6.65, 1, '2022-10-25 21:37:41', 0),
(139, 6.65, 1, '2022-10-25 21:37:46', 0),
(140, 6.65, 1, '2022-10-25 21:37:51', 0),
(141, 6.65, 1, '2022-10-25 21:37:56', 0),
(142, 6.65, 1, '2022-10-25 21:38:01', 0),
(143, 6.65, 1, '2022-10-25 21:38:07', 0),
(144, 6.65, 1, '2022-10-25 21:38:12', 0),
(145, 6.65, 1, '2022-10-25 21:38:17', 0),
(146, 6.65, 1, '2022-10-25 21:38:22', 0),
(147, 6.65, 1, '2022-10-25 21:38:27', 0),
(148, 6.65, 1, '2022-10-25 21:38:33', 0),
(149, 6.65, 1, '2022-10-25 21:38:38', 0),
(150, 6.65, 1, '2022-10-25 21:38:43', 0),
(151, 6.65, 1, '2022-10-25 21:38:48', 0),
(152, 6.65, 1, '2022-10-25 21:38:53', 0),
(153, 6.65, 1, '2022-10-25 21:38:58', 0),
(154, 6.65, 1, '2022-10-25 21:39:04', 0),
(155, 6.65, 1, '2022-10-25 21:39:09', 0),
(156, 6.65, 1, '2022-10-25 21:39:14', 0),
(157, 6.65, 1, '2022-10-25 21:39:19', 0),
(158, 6.65, 1, '2022-10-25 21:39:25', 0),
(159, 6.65, 1, '2022-10-25 21:39:30', 0),
(160, 6.65, 1, '2022-10-25 21:39:35', 0),
(161, 6.65, 1, '2022-10-25 21:39:41', 0),
(162, 6.65, 1, '2022-10-25 21:39:46', 0),
(163, 6.65, 1, '2022-10-25 21:39:51', 0),
(164, 6.65, 1, '2022-10-25 21:39:56', 0),
(165, 6.65, 1, '2022-10-25 21:40:01', 0),
(166, 0.92, 1, '2022-10-25 21:40:41', 0),
(167, 6.65, 1, '2022-10-25 21:40:46', 0),
(168, 6.65, 1, '2022-10-25 21:40:51', 0),
(169, 6.65, 1, '2022-10-25 21:41:06', 0),
(170, 6.65, 1, '2022-10-25 21:41:17', 0),
(171, 6.65, 1, '2022-10-25 21:41:22', 0),
(172, 6.68, 1, '2022-10-25 21:41:31', 0),
(173, 6.65, 1, '2022-10-25 21:41:39', 0),
(174, 62.07, 1, '2022-10-25 21:41:44', 0),
(175, 5.76, 1, '2022-10-25 21:41:49', 0),
(176, 6.65, 1, '2022-10-25 21:41:54', 0),
(177, 6.65, 1, '2022-10-25 21:41:59', 0),
(178, 6.65, 1, '2022-10-25 21:42:05', 0),
(179, 6.65, 1, '2022-10-25 21:42:10', 0),
(180, 6.68, 1, '2022-10-25 21:42:15', 0),
(181, 6.65, 1, '2022-10-25 21:42:20', 0),
(182, 6.65, 1, '2022-10-25 21:42:25', 0),
(183, 6.65, 1, '2022-10-25 21:42:31', 0),
(184, 6.65, 1, '2022-10-25 21:42:36', 0),
(185, 6.65, 1, '2022-10-25 21:42:41', 0),
(186, 6.68, 1, '2022-10-25 21:42:46', 0),
(187, 6.65, 1, '2022-10-25 21:42:51', 0),
(188, 6.65, 1, '2022-10-25 21:42:56', 0),
(189, 6.65, 1, '2022-10-25 21:43:02', 0),
(190, 6.65, 1, '2022-10-25 21:43:07', 0),
(191, 6.65, 1, '2022-10-25 21:43:12', 0),
(192, 6.65, 1, '2022-10-25 21:43:17', 0),
(193, 6.65, 1, '2022-10-25 21:43:22', 0),
(194, 6.65, 1, '2022-10-25 21:43:28', 0),
(195, 6.65, 1, '2022-10-25 21:43:33', 0),
(196, 6.65, 1, '2022-10-25 21:43:38', 0),
(197, 6.65, 1, '2022-10-25 21:43:43', 0),
(198, 6.65, 1, '2022-10-25 21:43:49', 0),
(199, 6.65, 1, '2022-10-25 21:43:54', 0),
(200, 6.65, 1, '2022-10-25 21:43:59', 0),
(201, 6.65, 1, '2022-10-25 21:44:04', 0),
(202, 6.65, 1, '2022-10-25 21:44:10', 0),
(203, 6.65, 1, '2022-10-25 21:44:15', 0),
(204, 6.65, 1, '2022-10-25 21:44:20', 0),
(205, 6.65, 1, '2022-10-25 21:44:25', 0),
(206, 6.65, 1, '2022-10-25 21:44:51', 0),
(207, 6.65, 1, '2022-10-25 21:44:56', 0),
(208, 6.68, 1, '2022-10-25 21:45:01', 0),
(209, 6.65, 1, '2022-10-25 21:45:06', 0),
(210, 6.65, 1, '2022-10-25 21:45:11', 0),
(211, 57.39, 1, '2022-10-25 21:45:17', 0),
(212, 5.76, 1, '2022-10-25 21:45:22', 0),
(213, 6.65, 1, '2022-10-25 21:45:27', 0),
(214, 6.65, 1, '2022-10-25 21:45:32', 0),
(215, 6.65, 1, '2022-10-25 21:45:37', 0),
(216, 222.67, 1, '2022-10-25 21:45:43', 0),
(217, 6.65, 1, '2022-10-25 21:45:48', 0),
(218, 256.19, 1, '2022-10-25 21:45:53', 0),
(219, 7.05, 1, '2022-10-25 21:45:58', 0),
(220, 6.24, 1, '2022-10-25 21:46:03', 0),
(221, 5.81, 1, '2022-10-25 21:46:09', 0),
(222, 6.24, 1, '2022-10-25 21:46:14', 0),
(223, 6.22, 1, '2022-10-25 21:46:19', 0),
(224, 6.24, 1, '2022-10-25 21:46:24', 0),
(225, 6.24, 1, '2022-10-25 21:46:29', 0),
(226, 6.22, 1, '2022-10-25 21:46:34', 0),
(227, 4.52, 1, '2022-10-25 21:46:40', 0),
(228, 4.1, 1, '2022-10-25 21:46:45', 0),
(229, 1.97, 1, '2022-10-25 21:46:51', 0),
(230, 6.65, 1, '2022-10-25 21:46:56', 0),
(231, 6.65, 1, '2022-10-25 21:47:01', 0),
(232, 6.65, 1, '2022-10-25 21:47:06', 0),
(233, 6.65, 1, '2022-10-25 21:47:11', 0),
(234, 6.65, 1, '2022-10-25 21:47:17', 0),
(235, 6.73, 1, '2022-10-25 21:47:22', 0),
(236, 6.65, 1, '2022-10-25 21:47:27', 0),
(237, 6.65, 1, '2022-10-25 21:47:32', 0),
(238, 6.65, 1, '2022-10-25 21:47:37', 0),
(239, 6.65, 1, '2022-10-25 21:47:43', 0),
(240, 6.65, 1, '2022-10-25 21:47:48', 0),
(241, 6.65, 1, '2022-10-25 21:47:53', 0),
(242, 6.65, 1, '2022-10-25 21:47:58', 0),
(243, 6.65, 1, '2022-10-25 21:48:03', 0),
(244, 6.65, 1, '2022-10-25 21:48:09', 0),
(245, 6.65, 1, '2022-10-25 21:48:14', 0),
(246, 0.9, 1, '2022-10-25 21:48:19', 0),
(247, 5.76, 1, '2022-10-25 21:48:24', 0),
(248, 5.76, 1, '2022-10-25 21:48:29', 0),
(249, 0.9, 1, '2022-10-25 21:48:35', 0),
(250, 6.65, 1, '2022-10-25 21:48:40', 0),
(251, 7.05, 1, '2022-10-25 21:48:45', 0),
(252, 221.49, 1, '2022-10-25 21:48:50', 0),
(253, 0.9, 1, '2022-10-25 21:48:55', 0),
(254, 7.05, 1, '2022-10-25 21:49:00', 0),
(255, 6.65, 1, '2022-10-25 21:49:06', 0),
(256, 6.65, 1, '2022-10-25 21:49:11', 0),
(257, 6.65, 1, '2022-10-25 21:49:16', 0),
(258, 6.65, 1, '2022-10-25 21:49:21', 0),
(259, 6.65, 1, '2022-10-25 21:49:26', 0),
(260, 0.9, 1, '2022-10-25 21:49:32', 0),
(261, 62.25, 1, '2022-10-25 21:49:37', 0),
(262, 6.66, 1, '2022-10-25 21:49:42', 0),
(263, 6.65, 1, '2022-10-25 21:49:47', 0),
(264, 0.9, 1, '2022-10-25 21:49:52', 0),
(265, 5.76, 1, '2022-10-25 21:49:58', 0),
(266, 5.76, 1, '2022-10-25 21:50:03', 0),
(267, 5.76, 1, '2022-10-25 21:50:08', 0),
(268, 5.76, 1, '2022-10-25 21:50:13', 0),
(269, 6.65, 1, '2022-10-25 21:50:18', 0),
(270, 6.65, 1, '2022-10-25 21:50:23', 0),
(271, 6.65, 1, '2022-10-25 21:50:29', 0),
(272, 6.65, 1, '2022-10-25 21:50:34', 0),
(273, 6.65, 1, '2022-10-25 21:50:39', 0),
(274, 6.65, 1, '2022-10-25 21:50:44', 0),
(275, 6.65, 1, '2022-10-25 21:50:49', 0),
(276, 6.65, 1, '2022-10-25 21:50:55', 0),
(277, 6.65, 1, '2022-10-25 21:51:00', 0),
(278, 6.65, 1, '2022-10-25 21:51:05', 0),
(279, 6.65, 1, '2022-10-25 21:51:10', 0),
(280, 6.65, 1, '2022-10-25 21:51:15', 0),
(281, 6.65, 1, '2022-10-25 21:51:21', 0),
(282, 6.65, 1, '2022-10-25 21:51:26', 0),
(283, 6.65, 1, '2022-10-25 21:51:31', 0),
(284, 6.65, 1, '2022-10-25 21:51:36', 0),
(285, 6.65, 1, '2022-10-25 21:51:41', 0),
(286, 6.65, 1, '2022-10-25 21:51:46', 0),
(287, 6.65, 1, '2022-10-25 21:51:52', 0),
(288, 6.65, 1, '2022-10-25 21:51:57', 0),
(289, 6.65, 1, '2022-10-25 21:52:02', 0),
(290, 6.65, 1, '2022-10-25 21:52:07', 0),
(291, 6.65, 1, '2022-10-25 21:52:12', 0),
(292, 6.65, 1, '2022-10-25 21:52:18', 0),
(293, 6.65, 1, '2022-10-25 21:52:23', 0),
(294, 6.65, 1, '2022-10-25 21:52:28', 0),
(295, 6.65, 1, '2022-10-25 21:52:33', 0),
(296, 6.65, 1, '2022-10-25 21:52:38', 0),
(297, 6.75, 1, '2022-10-25 21:52:44', 0),
(298, 6.65, 1, '2022-10-25 21:52:49', 0),
(299, 6.65, 1, '2022-10-25 21:52:54', 0),
(300, 6.65, 1, '2022-10-25 21:52:59', 0),
(301, 6.65, 1, '2022-10-25 21:53:04', 0),
(302, 6.65, 1, '2022-10-25 21:53:09', 0),
(303, 6.65, 1, '2022-10-25 21:53:15', 0),
(304, 6.65, 1, '2022-10-25 21:53:20', 0),
(305, 6.65, 1, '2022-10-25 21:53:25', 0),
(306, 6.65, 1, '2022-10-25 21:53:31', 0),
(307, 6.65, 1, '2022-10-25 21:54:00', 0),
(308, 6.65, 1, '2022-10-25 21:54:05', 0),
(309, 6.65, 1, '2022-10-25 21:54:10', 0),
(310, 6.65, 1, '2022-10-25 21:54:15', 0),
(311, 6.65, 1, '2022-10-25 21:54:20', 0),
(312, 6.65, 1, '2022-10-25 21:54:26', 0),
(313, 6.65, 1, '2022-10-25 21:54:31', 0),
(314, 6.65, 1, '2022-10-25 21:54:36', 0),
(315, 6.65, 1, '2022-10-25 21:54:41', 0),
(316, 6.65, 1, '2022-10-25 21:54:46', 0),
(317, 6.65, 1, '2022-10-25 21:54:52', 0),
(318, 6.65, 1, '2022-10-25 21:54:57', 0),
(319, 6.65, 1, '2022-10-25 21:55:02', 0),
(320, 6.65, 1, '2022-10-25 21:55:07', 0),
(321, 6.65, 1, '2022-10-25 21:55:12', 0),
(322, 6.65, 1, '2022-10-25 21:55:18', 0),
(323, 6.65, 1, '2022-10-25 21:55:23', 0),
(324, 6.65, 1, '2022-10-25 21:55:28', 0),
(325, 6.65, 1, '2022-10-25 21:55:33', 0),
(326, 6.65, 1, '2022-10-25 21:55:38', 0),
(327, 6.65, 1, '2022-10-25 21:55:43', 0),
(328, 6.65, 1, '2022-10-25 21:55:49', 0),
(329, 6.65, 1, '2022-10-25 21:55:54', 0),
(330, 6.65, 1, '2022-10-25 21:55:59', 0),
(331, 6.65, 1, '2022-10-25 21:56:04', 0),
(332, 6.65, 1, '2022-10-25 21:56:10', 0),
(333, 6.65, 1, '2022-10-25 21:56:15', 0),
(334, 6.65, 1, '2022-10-25 21:56:20', 0),
(335, 6.65, 1, '2022-10-25 21:56:25', 0),
(336, 6.65, 1, '2022-10-25 21:56:31', 0),
(337, 6.65, 1, '2022-10-25 21:56:36', 0),
(338, 6.65, 1, '2022-10-25 21:56:41', 0),
(339, 6.65, 1, '2022-10-25 21:56:46', 0),
(340, 6.65, 1, '2022-10-25 21:56:51', 0),
(341, 6.65, 1, '2022-10-25 21:56:57', 0),
(342, 6.65, 1, '2022-10-25 21:57:02', 0),
(343, 6.65, 1, '2022-10-25 21:57:07', 0),
(344, 6.65, 1, '2022-10-25 21:57:12', 0),
(345, 6.65, 1, '2022-10-25 21:57:17', 0),
(346, 6.65, 1, '2022-10-25 21:57:23', 0),
(347, 6.65, 1, '2022-10-25 21:57:28', 0),
(348, 6.65, 1, '2022-10-25 21:57:33', 0),
(349, 6.65, 1, '2022-10-25 21:57:38', 0),
(350, 6.65, 1, '2022-10-25 21:57:43', 0),
(351, 6.65, 1, '2022-10-25 21:57:52', 0),
(352, 6.65, 1, '2022-10-25 21:57:57', 0),
(353, 6.65, 1, '2022-10-25 21:58:02', 0),
(354, 6.65, 1, '2022-10-25 21:58:07', 0),
(355, 6.65, 1, '2022-10-25 21:58:25', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tankmonitor`
--
ALTER TABLE `tankmonitor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TankID` (`TankID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tankmonitor`
--
ALTER TABLE `tankmonitor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tankmonitor`
--
ALTER TABLE `tankmonitor`
  ADD CONSTRAINT `tankmonitor_ibfk_1` FOREIGN KEY (`TankID`) REFERENCES `ownerdetails` (`Tank_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;