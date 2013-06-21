-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2013 at 12:48 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `taymodel`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `person` int(11) NOT NULL,
  `status` enum('active','deactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortcontent` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `datecreate` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `status` enum('active','deactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blogcategory`
--

CREATE TABLE IF NOT EXISTS `blogcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `status` enum('active','deactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blogcategory`
--

INSERT INTO `blogcategory` (`id`, `name`, `parent`, `status`) VALUES
(1, 'Campaigns', 0, 'active'),
(2, 'Editorial', 0, 'active'),
(3, 'How-to', 0, 'active'),
(4, 'Interview', 0, 'active'),
(5, 'Lifestyle', 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','deactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent`, `description`, `status`) VALUES
(1, 'Men', 0, '', 'active'),
(2, 'International', 1, '', 'active'),
(3, 'Local', 1, '', 'active'),
(4, 'women', 0, '', 'active'),
(5, 'International', 4, '', 'active'),
(6, 'Local', 4, '', 'active'),
(7, 'NEW FACES ', 0, '', 'active'),
(8, 'DIRECT BOOKING', 0, '', 'active'),
(9, 'ARTISTS', 0, '', 'active'),
(10, 'SERVICES', 0, '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `configproduct`
--

CREATE TABLE IF NOT EXISTS `configproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `widthperson` int(11) NOT NULL,
  `heightpersion` int(11) NOT NULL,
  `thumbwidthperson` int(11) NOT NULL,
  `thumbheightperson` int(11) NOT NULL,
  `widthblog` int(11) NOT NULL,
  `heightblog` int(11) NOT NULL,
  `thumbwidthblog` int(11) NOT NULL,
  `thumbheightblog` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `homelogo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usersmtp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passsmtp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `portsmtp` int(11) NOT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `present` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('default','normal') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `name`, `homelogo`, `logo`, `keyword`, `description`, `title`, `smtp`, `usersmtp`, `passsmtp`, `portsmtp`, `sender`, `copyright`, `facebook`, `youtube`, `googleplus`, `present`, `twitter`, `status`) VALUES
(1, 'default', '49db2-logo-home.png', '8f447-logo.png', 'taymodel, taymodel', '', 'Tay-models.com', '', '', '', 0, '', '©copyright - 2013. Tay-models', '', '', '', '', '', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `status` enum('active','deactive') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bust` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `waist` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hips` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shoe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eyes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `dateofbirth` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `datecreate` int(11) NOT NULL,
  `status` enum('active','deactive') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','deactive') COLLATE utf8_unicode_ci DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `image`, `status`) VALUES
(2, 'slider 1', 'c54d9-1358783975_di_VW_Spring13_bride-1_1280x854.jpg', 'active'),
(3, 'slider 2', 'c6736-1358784017_di_VW_Spring13_collection-2_1280x854_0.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `dateofbirth` int(11) NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('actice','deactive') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
