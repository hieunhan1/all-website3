-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2015 at 06:43 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dayamthuc_v3`
--

-- --------------------------------------------------------

--
-- Table structure for table `web_chat_customer`
--

CREATE TABLE IF NOT EXISTS `web_chat_customer` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `group_id` varchar(20) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `keychat` bigint(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_chat_message`
--

CREATE TABLE IF NOT EXISTS `web_chat_message` (
`id` int(11) NOT NULL,
  `message` text NOT NULL,
  `keychat` bigint(10) NOT NULL,
  `user` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_chat_nv`
--

CREATE TABLE IF NOT EXISTS `web_chat_nv` (
`id` int(2) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `group_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web_chat_customer`
--
ALTER TABLE `web_chat_customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_chat_message`
--
ALTER TABLE `web_chat_message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_chat_nv`
--
ALTER TABLE `web_chat_nv`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `web_chat_customer`
--
ALTER TABLE `web_chat_customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_chat_message`
--
ALTER TABLE `web_chat_message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_chat_nv`
--
ALTER TABLE `web_chat_nv`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
