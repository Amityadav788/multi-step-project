-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2024 at 04:07 AM
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
-- Database: `multi-step`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text,
  `twitter` text,
  `facebook` text,
  `google_plus` text,
  `first_name` text,
  `last_name` text,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `email`, `password`, `twitter`, `facebook`, `google_plus`, `first_name`, `last_name`, `phone`, `address`, `created_date`, `update_date`, `is_active`) VALUES
(1, 'ankityadavdc@gmail.com', '2121', 'amit@yadav', 'amit', 'ay', 'Amit', 'Yadav', '9140088783', 'Chak sethwal\r\nRani ki sarai', '2024-03-12 14:55:52', '2024-03-12 14:55:52', 1),
(3, 'amit@gmail.com', '5454', 'kapur@saab', 'kapur_saab', 'ks', 'kapur', 'saab', '5454545454', 'model town', '2024-03-12 15:03:13', '2024-03-12 15:03:13', 1),
(4, 'jk@gmail.com', '6565', 'nikhil', 'nikkk', 'np', 'nikhil', 'passi', '545', '', '2024-03-12 15:24:41', '2024-03-12 15:24:41', 1),
(5, 'jk@gmail.com', '6565', 'nikhil', 'nikkk', 'np', 'nikhil', 'passi', '5454', 'hjdfiher', '2024-03-12 15:24:49', '2024-03-12 15:24:49', 1),
(6, 'jk@gmail.com', '6565', 'nikhil', 'nikkk', 'np', 'vikas', 'bro', '5454', 'hjdfiher', '2024-03-12 15:28:47', '2024-03-12 15:28:47', 1),
(7, 'jk@gmail.com', '6565', 'jldhf', 'kjhfeiu', 'dklnfio', 'hjhj', 'kjkj', '545', '', '2024-03-12 15:31:35', '2024-03-12 15:31:35', 1),
(8, 'jk@gmail.com', '6565', 'jldhf', 'kjhfeiu', 'dklnfio', 'hjhj', 'kjkj', '897878', 'khudvuyfg', '2024-03-12 15:31:43', '2024-03-12 15:31:43', 1),
(9, 'jk@gmail.com', '6565', 'jldhf', 'kjhfeiu', 'dklnfio', 'yuyu', 'uyuy', '', '', '2024-03-12 15:39:09', '2024-03-12 15:39:09', 1),
(10, 'jk@gmail.com', '6565', 'jldhf', 'kjhfeiu', 'dklnfio', 'yuyu', 'uyuy', '5754545', 'model town', '2024-03-12 15:39:28', '2024-03-12 15:39:28', 1),
(11, 'jk@gmail.com', '6565', 'jldhf', 'kjhfeiu', 'dklnfio', 'djbviuefgk', 'hjvgeufg', '788754564', 'model town', '2024-03-12 15:40:38', '2024-03-12 15:40:38', 1),
(12, 'jk@gmail.com', '6565', 'jldhf', 'kjhfeiu', 'dklnfio', 'djbviuefgk', 'hjvgeufg', '788754564', 'model town', '2024-03-12 15:46:43', '2024-03-12 15:46:43', 1),
(13, 'jk@gmail.com', '6565', 'jldhf', 'kjhfeiu', 'dklnfio', 'djbviuefgk', 'hjvgeufg', '788754564', 'model town', '2024-03-12 15:48:38', '2024-03-12 15:48:38', 1),
(16, 'ankityadavdc@gmail.com', '12122154', '', '', '', 'nhjfefhe', 'jkbhfr', '545454', 'rhfu', '2024-03-12 22:21:36', '2024-03-12 22:21:36', 1),
(17, 'niik@gmail.com', '5454', 'nimmo', 'nimrat', 'nim_RAT', 'nimrat', 'rawat', '00000101', 'model town', '2024-03-12 22:46:29', '2024-03-12 22:46:29', 1),
(18, 'ankityadavdc@gmail.com', '1221', 'amit@yadav', 'amit', 'gfygy', 'Ankit', 'Yadav', '09140088783', 'Maya nagar colony,Kasabad\r\nRani ki sarai', '2024-03-12 23:20:49', '2024-03-12 23:20:49', 1),
(19, 'jeet@gmail.com', '0009', 'thor', 'loki', 'thor', 'Ankit', 'Yadav', '09140088783', 'Maya nagar colony,Kasabad\r\nRani ki sarai', '2024-03-13 06:50:32', '2024-03-13 06:50:32', 1),
(20, 'ps@gmail.com', '8989', '', '', '', 'Ankit', 'Yadav', '09140088783', 'New Hargobind Nagar\r\nBackside Hero steel', '2024-03-13 06:52:53', '2024-03-13 06:52:53', 1),
(21, 'GS@gmail.com', '6767', 'gopi', 'gurpreet', 'go_pi', 'gopi', 'singh', '0909878787', 'model town', '2024-03-13 06:54:06', '2024-03-13 06:54:06', 1),
(22, 'ankityadavdc@gmail.com', '2121', 'amit@yadav', 'amit', 'ay', 'Ankit', 'Yadav', '09140088783', 'Maya nagar colony,Kasabad\r\nRani ki sarai', '2024-03-13 13:33:14', '2024-03-13 13:33:14', 1),
(23, 'ankityadavdc@gmail.com', '2121', 'amit@yadav', 'amit', 'ay', 'Ankit', 'Yadav', '09140088783', 'Maya nagar colony,Kasabad\r\n', '2024-03-13 13:33:34', '2024-03-13 13:33:34', 1),
(24, 'ankityadavdc@gmail.com', '2121', 'amit@yadav', 'amit', 'ay', 'Ankit', 'Yadav', '09140088783', 'Maya nagar colony,Kasabad\r\n', '2024-03-13 13:33:40', '2024-03-13 13:33:40', 1),
(25, 'ankityadavdc@gmail.com', '2121', 'amit@yadav', 'amit', 'ay', 'Ankit', 'Yadav', '09140088783', 'Maya nagar colony,Kasabad\r\n', '2024-03-13 13:34:56', '2024-03-13 13:34:56', 1),
(26, 'ankityadavdc@gmail.com', '45415', 'amit@yadav', 'amit', 'gfygy', 'Ankit', 'Yadav', '09140088783', 'Maya nagar colony,Kasabad\r\nRani ki sarai', '2024-03-13 14:55:12', '2024-03-13 14:55:12', 1),
(27, 'vikas@viaks.com', 'vikas', '', '', '', 'nfieh', 'kjefheijf', '65465464', 'vbhjuhgf', '2024-03-13 14:57:59', '2024-03-13 14:57:59', 1),
(28, 'hklak@gmail.com', 'dnfkj', 'amit@yadav', 'amit', 'ay', 'Ankit', 'Yadav', '09140088783', 'Maya nagar colony,Kasabad\r\nRani ki sarai', '2024-03-13 15:11:15', '2024-03-13 15:11:15', 1),
(29, 'ks@gmail.com', '1321', 'amit@yadav', 'amit', 'ay', 'hdgih', 'kjdfjhe', '54646486', 'hbdsfh', '2024-03-13 16:28:36', '2024-03-13 16:28:36', 1),
(30, 'ks@gmail.com', '1321', 'amit@yadav', 'amit', 'ay', 'hdgih', 'kjdfjhe', '54646486', 'jhdgrfhur', '2024-03-13 16:51:20', '2024-03-13 16:51:20', 1),
(31, 'ks@gmail.com', '1321', 'amit@yadav', 'amit', 'ay', 'yuyu', 'kkk', '6545654556', 'model town', '2024-03-13 19:53:23', '2024-03-13 19:53:23', 1),
(32, 'ks@gmail.com', '1321', 'amit@yadav', 'amit', 'ay', 'yuyu', 'kkk', '6545654556', 'model town', '2024-03-13 19:56:39', '2024-03-13 19:56:39', 1),
(33, '', '', '', '', '', '', '', '', '', '2024-03-13 20:34:15', '2024-03-13 20:34:15', 1),
(34, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'oppo', 'mobile', '54215421', 'china', '2024-03-13 21:44:34', '2024-03-13 21:44:34', 1),
(35, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'oppo', 'mobile', '54215421', 'china', '2024-03-13 21:45:38', '2024-03-13 21:45:38', 1),
(36, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'oppo', 'mobile', '54215421', 'china', '2024-03-13 21:45:44', '2024-03-13 21:45:44', 1),
(37, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'oppo', 'mobile', '54215421', 'china', '2024-03-13 21:49:55', '2024-03-13 21:49:55', 1),
(38, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'oppo', 'mobile', '54215421', 'china', '2024-03-13 21:50:01', '2024-03-13 21:50:01', 1),
(39, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'oppo', 'mobile', '54215421', 'china', '2024-03-13 21:54:30', '2024-03-13 21:54:30', 1),
(40, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'oppo', 'mobile', '54215421', 'china', '2024-03-13 22:01:46', '2024-03-13 22:01:46', 1),
(41, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'yuyuuy', 'opoppo', '78547854', 'jkkj', '2024-03-13 22:10:43', '2024-03-13 22:10:43', 1),
(42, 'erre@gmail.com', '8789', 'po', 'poo', 'oppo', 'yuyuuy', 'opoppo', '78547854', 'jkkj', '2024-03-13 22:11:27', '2024-03-13 22:11:27', 1),
(43, 'erre@gmail.com', '8789', 'tyty', 'ytyt', 'gtgt', 'erer', 'rere', '21542154', 'mt', '2024-03-13 22:13:29', '2024-03-13 22:13:29', 1),
(44, 'ww@gmail.com', '9890', 'gaurav', 'gauRav', 'gaurav', 'gaurav', 'sharma', '78457854', 'model town', '2024-03-13 22:25:10', '2024-03-13 22:25:10', 1),
(45, 'manuk@gmail.com', '54215421', 'manu', 'm_kammu', 'manu_kamu', 'manu', 'kammu', '09090909', 'model town', '2024-03-13 23:10:17', '2024-03-13 23:10:17', 1),
(46, 'manuk@gmail.com', '54215421', 'manu', 'm_kammu', 'manu_kamu', 'manu', 'kamm', '9009900909', 'model town', '2024-03-13 23:10:48', '2024-03-13 23:10:48', 1),
(47, 'legends@inlnww', '090909', 'lnww', 'ln_ww', 'ln8787', 'muskan', 'yadav', '8998878787', 'model town', '2024-03-14 11:33:19', '2024-03-14 11:33:19', 1),
(48, 'yyyu@gmail.com', '09099889', 'ioio', 'ioiooiio', 'jojo', 'vivo', 'vvv', '98787878', 'china', '2024-03-14 11:37:25', '2024-03-14 11:37:25', 1),
(49, 'yyyu@gmail.com', '09099889', 'ioio', 'ioiooiio', 'jojo', 'vivo', 'vvv', '98787878', 'china', '2024-03-14 11:37:39', '2024-03-14 11:37:39', 1),
(50, 'ankityadavdc@gmail.com', '46616', 'ghvgh', 'gfdg', 'fdgdg', 'fgdgdf', 'fgd', '54545454', 'dfaf', '2024-03-14 11:57:16', '2024-03-14 11:57:16', 1),
(51, 'ankityadavdc@gmail.com', '46616', 'ghvgh', 'gfdg', 'fdgdg', 'fgdgdf', 'fgd', '54545454', 'dfaf', '2024-03-14 12:02:41', '2024-03-14 12:02:41', 1),
(52, 'yd@gmail.com', '2154', 'gdd', 'gdy', 'ytyty', 'rrr', 'mauli', '8987898778', 'mtdd', '2024-03-14 20:59:51', '2024-03-14 20:59:51', 1),
(53, 'yd@gmail.com', '2154', 'gdd', 'gdy', 'ytyty', 'rrr', 'mauli', '8987898778', 'mtdd', '2024-03-14 21:01:51', '2024-03-14 21:01:51', 1),
(54, 'yd@gmail.com', '2154', 'gdd', 'gdy', 'ytyty', 'rrr', 'mauli', '8987898778', 'mtdd', '2024-03-14 21:04:49', '2024-03-14 21:04:49', 1),
(55, 'ram@gmail.com', '9090', 'ram_ji', 'RaMa', 'ram_789', 'ram', 'raguvanshi', '108108108', 'model town', '2024-03-14 21:06:12', '2024-03-14 21:06:12', 1),
(56, 'rakesh@gmail.com', '215421', 'rakesh_yadav', 'uuyy', 'rakesh_yadav', 'rakesh', 'yadav', '8978678954', 'new delhi', '2024-03-14 21:15:23', '2024-03-14 21:15:23', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
