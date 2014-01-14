-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 14, 2014 at 06:43 PM
-- Server version: 5.0.96-community
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dayamthu_netspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_vi`
--

CREATE TABLE IF NOT EXISTS `category_vi` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `name_rewrite` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `date_create` datetime default NULL,
  `date_update` datetime default NULL,
  `parent_id` tinyint(3) default NULL,
  `order` tinyint(3) default NULL,
  `title` varchar(255) default NULL,
  `description` text,
  `tags` text,
  `status` bit(1) NOT NULL,
  `user_create` varchar(255) default NULL,
  `user_update` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `category_vi`
--

INSERT INTO `category_vi` (`id`, `name`, `name_rewrite`, `url`, `date_create`, `date_update`, `parent_id`, `order`, `title`, `description`, `tags`, `status`, `user_create`, `user_update`) VALUES
(1, 'Trang chủ', 'trang-chu', 'trang-chu.html', '2013-11-08 00:00:00', NULL, 0, 1, 'Trường dạy nấu ăn - mở quán ăn - học nấu ăn - Học pha chế - Dạy pha chế - Dạy ẩm thực', 'Trường dạy ẩm thực - Trường dạy nấu ăn - Trường học nấu ăn - đào tạo mở quán ăn hàng đầu - Học pha chế - Dạy pha chế', 'Trường dạy nấu ăn,học nấu ăn,dạy ẩm thực,đào tạo mở quán ăn,học bếp chính,bếp trưởng,học pha chế,dạy pha chế', '', 'Admin', NULL),
(2, 'Nghiên cứu và Phát triển ẩm thực', 'nghien-cuu-va-phat-trien-am-thuc', 'nghien-cuu-va-phat-trien-am-thuc.html', '2013-11-08 00:00:00', NULL, 0, 1, 'Nghiên cứu và Phát triển ẩm thực', 'Nghiên cứu và Phát triển ẩm thực', 'nghiên cứu,ẩm thực,nghien cuu,am thuc', '', 'Admin', NULL),
(3, 'Dạy nấu ăn online', 'day-nau-an-online', 'day-nau-an-online.html', '2013-11-08 00:00:00', NULL, 0, 2, 'Dạy nấu ăn online', 'Dạy nấu ăn online', 'dạy nấu ăn,day nau an, dạy nấu ăn online,day nau an online', '', 'Admin', NULL),
(4, 'Công thức dạy nấu ăn', 'cong-thuc-day-nau-an', 'cong-thuc-day-nau-an.html', '2013-11-08 00:00:00', '0000-00-00 00:00:00', 0, 0, 'Công thức dạy nấu ăn', 'Công thức dạy nấu ăn', 'công thức, dạy nấu ăn', '', 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_vi`
--

CREATE TABLE IF NOT EXISTS `subject_vi` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `name_rewrite` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `description` text,
  `content` text,
  `date_create` datetime default NULL,
  `date_update` datetime default NULL,
  `status` bit(1) default NULL,
  `tags` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
