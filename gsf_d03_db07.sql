-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2019 at 02:00 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsf_d03_db07`
--

-- --------------------------------------------------------

--
-- Table structure for table `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `send` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `recieve` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `trash` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `indate`, `send`, `recieve`, `trash`) VALUES
(6, 'php課題', '2019-06-08', '難しい', '2019-06-08 15:41:26', 'erekasi', '11111', 1),
(10, '課題', '2019-06-08', '難しい', '2019-06-08 15:45:20', '0', 'erekasi', 0),
(11, 'kadai', '2019-06-13', 'aaaa', '2019-06-08 17:05:54', '11111', 'erekasi', 1),
(12, 'モヤモヤ', '2019-06-15', 'モヤモヤモヤ', '2019-06-08 17:07:11', '11111', 'erekasi', 1),
(17, '企画', '2019-07-04', '期日守れよ', '2019-07-04 22:16:38', 'erekoba', 'erekasi', NULL),
(18, 'kadai', '2019-07-15', '早くやれよ', '2019-07-04 22:19:18', 'erekoba', 'erekasi', 0),
(19, '企画', '2019-07-10', 'aaaa', '2019-07-04 22:24:16', 'erekasi', '11111', 0),
(20, '課題', '2019-07-19', 'aaaa', '2019-07-04 22:24:29', 'erekasi', 'erekoba', 0),
(21, '企画', '2019-07-11', 'お疲れ', '2019-07-04 22:39:04', 'erekasi', 'erekoba', 1),
(22, 'whyme', '2019-07-12', 'さすがに終わったよね？', '2019-07-04 22:40:19', 'erekoba', 'erekasi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(3, 'kota', 'erekasi', '1111', 0, 0),
(4, 'koba', '0000', '0', 0, 1),
(5, 'recruit', '11111', '99999', 0, 0),
(6, 'kota kobayashi', 'erekoba', '753091', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
