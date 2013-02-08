-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2013 at 04:27 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `afric-aventure`
--

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_accomodations`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_accomodations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `afric_aventure_accomodations`
--

INSERT INTO `afric_aventure_accomodations` (`id`, `title`, `category`) VALUES
(1, 'Test Accommodation', 15),
(2, 'Test Accommodation 2', 16),
(3, 'Test Accommodation 3', 17),
(4, 'Test Accommodation 4', 18);

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_accomodations_categories`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_accomodations_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(75) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `url` varchar(160) NOT NULL,
  `en_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `afric_aventure_accomodations_categories`
--

INSERT INTO `afric_aventure_accomodations_categories` (`id`, `title`, `en_title`, `parent`, `url`, `en_url`) VALUES
(1, 'De la Parc', 'By Park', 0, 'de-la-parc', 'by-park'),
(2, 'De la Plage', 'By Beach', 0, 'de-la-plage', 'by-beach'),
(15, 'Parc National 1', 'National Parc 1', 1, 'parc-national-1', 'national-parc-1'),
(16, 'Parc National 2', 'National Park 2', 1, 'parc-national-2', 'national-park-2'),
(17, 'Plage 1', 'Beach 1', 2, 'plage-1', 'beach-1'),
(18, 'Plage 2', 'Beach 2', 2, 'plage-2', 'beach-2');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_accomodations_sliders`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_accomodations_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accomodation_id` int(11) NOT NULL,
  `slide_pic` varchar(200) NOT NULL,
  `slide_title` varchar(70) NOT NULL,
  `slide_teaser` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `afric_aventure_accomodations_sliders`
--

INSERT INTO `afric_aventure_accomodations_sliders` (`id`, `accomodation_id`, `slide_pic`, `slide_title`, `slide_teaser`) VALUES
(1, 1, 'http://dummyimage.com/780x400/f2f2f2/fff', 'hi', 'this is s test'),
(2, 1, 'http://dummyimage.com/780x400/ffffff/fff', 'Testing Slider', 'This is a test.'),
(3, 2, 'http://dummyimage.com/780x400/cdcdcd/fff', 'hi', 'this is s test'),
(4, 2, 'http://dummyimage.com/780x400/cccccc/fff', 'Testing Slider', 'This is a test.'),
(5, 3, 'http://dummyimage.com/780x400/ffffff/fff', 'hi', 'this is s test'),
(6, 3, 'http://dummyimage.com/780x400/000000/fff', 'Testing Slider', 'This is a test.'),
(7, 4, 'http://dummyimage.com/780x400/aaaaaa/fff', 'hi', 'this is s test'),
(8, 4, 'http://dummyimage.com/780x400/dddddd/fff', 'Testing Slider', 'This is a test.');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_album_images`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_album_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `album` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_beach_vacations`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_beach_vacations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(75) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(160) NOT NULL,
  `en_url` varchar(255) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `en_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `afric_aventure_beach_vacations`
--

INSERT INTO `afric_aventure_beach_vacations` (`id`, `title`, `en_title`, `category`, `description`, `url`, `en_url`, `thumbnail`, `text`, `en_text`) VALUES
(3, 'Proin luctus, metus sed consectetur', '', 2, 'erat ligula nec dui. Suspendisse eu dolor nunc. Integer sodales, est eget dignissim iaculis, lorem ipsum ornare turpis, id condimentum nibh orci sagittis nisi. Nulla eu auctor ligula. Nunc gravida congue sapien at venenatis. In non porttitor risus. Proin luctus, metus sed consectetur viverra, erat metus condimentum erat, ut adipiscing risus augue quis urna. Phasellus tincidunt turpis vitae purus tincidunt tempus.', 'proin-luctus-metus-sed-consectetur', '', 'demo2.jpg', '<p>\r\n	Fusce fringilla adipiscing blandit. Vestibulum bibendum pulvinar risus, ac rhoncus nisi fermentum condimentum.</p>\r\n<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/demo2.jpg" style="height: 200px; width: 470px; float: left;" /></p>\r\n<p>\r\n	Nullam iaculis, massa nec rutrum luctus, sem lectus mollis nunc, a varius nisl neque non mauris. Pellentesque pulvinar mollis risus, id venenatis neque viverra eu. Proin sit amet ante dolor, eget aliquam orci. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam elementum augue in tortor condimentum sit amet euismod tortor feugiat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in lobortis lectus. Pellentesque vel libero in urna condimentum sagittis vehicula non quam. Quisque malesuada dignissim faucibus.</p>\r\n', ''),
(5, 'Testing Titles', '', 2, '', 'testing-titles', '', 'demo1(1).jpg', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/demo1(1).jpg" style="height: 300px; width: 705px;" />Cras facilisis suscipit nisl, ut vulputate mi pellentesque ac. Morbi ligula purus, fermentum id feugiat a, consequat at enim. In pretium magna ac justo ullamcorper nec rhoncus velit feugiat. Vivamus quis felis dolor. Curabitur suscipit lobortis quam, in consequat mauris scelerisque a. Donec nulla ipsum, scelerisque vitae rhoncus sit amet, dapibus et enim. Vestibulum placerat ligula sed enim adipiscing ac condimentum nunc porta. Vivamus nec tortor dolor. Phasellus molestie sagittis dui, sit amet rhoncus libero pretium in. Morbi ipsum lorem, suscipit at ultrices eu, pharetra facilisis massa.</p>\r\n', ''),
(8, 'Plage 1', 'Beach 1', 1, '', 'plage-1', 'beach-1', '', '', ''),
(9, 'Plage 2', 'Beach 2', 1, '', 'plage-2', 'beach-2', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_beach_vacation_categories`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_beach_vacation_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(75) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `url` varchar(160) NOT NULL,
  `en_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `afric_aventure_beach_vacation_categories`
--

INSERT INTO `afric_aventure_beach_vacation_categories` (`id`, `title`, `en_title`, `parent`, `url`, `en_url`) VALUES
(1, 'Destinations de Vacances de Plage', 'Beach Vacation Destinations', 0, 'destinations-de-vacances-de-plage', 'beach-vacation-destinations'),
(2, 'Thèmes de Vacances Plage', 'Beach Vacation Themes', 0, 'themes-de-vacances-plage', 'beach-vacation-themes');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_captcha`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=415 ;

--
-- Dumping data for table `afric_aventure_captcha`
--

INSERT INTO `afric_aventure_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(343, 1360221152, '127.0.0.1', 'WTDN53F'),
(344, 1360221529, '127.0.0.1', 'SXHBC9U'),
(345, 1360221627, '127.0.0.1', 'Y2G7VDT'),
(346, 1360221655, '127.0.0.1', 'Q5U84BW'),
(347, 1360221709, '127.0.0.1', '9AVC6B2'),
(348, 1360221758, '127.0.0.1', 'HNJGDM7'),
(349, 1360222099, '127.0.0.1', '8BKWJ7S'),
(350, 1360222119, '127.0.0.1', 'FD93C5A'),
(351, 1360222339, '127.0.0.1', 'FG9ZUWS'),
(352, 1360222577, '127.0.0.1', '39JTKMP'),
(353, 1360223223, '127.0.0.1', 'BH9XWJA'),
(354, 1360223472, '127.0.0.1', 'PY7RJ5H'),
(355, 1360223522, '127.0.0.1', 'DS74CWU'),
(356, 1360223527, '127.0.0.1', 'WY4ABEH'),
(357, 1360223632, '127.0.0.1', 'J3USHN4'),
(358, 1360223678, '127.0.0.1', 'AKNZ4SW'),
(359, 1360223719, '127.0.0.1', 'PJ6B3TF'),
(360, 1360223908, '127.0.0.1', '4GQAEYS'),
(361, 1360224697, '127.0.0.1', 'ZG7ADNT'),
(362, 1360224834, '127.0.0.1', 'C4EDVP8'),
(363, 1360225208, '127.0.0.1', '6QJX8AY'),
(364, 1360225212, '127.0.0.1', 'RC3U94Y'),
(365, 1360225234, '127.0.0.1', 'CJZV4MN'),
(366, 1360225254, '127.0.0.1', '59YBFVT'),
(367, 1360225338, '127.0.0.1', 'ZJ5GUFW'),
(368, 1360225362, '127.0.0.1', 'AR349GB'),
(369, 1360225840, '127.0.0.1', 'HXYBPS9'),
(370, 1360225869, '127.0.0.1', '8AM7SZ6'),
(371, 1360225930, '127.0.0.1', 'DBNCVU5'),
(372, 1360226027, '127.0.0.1', '2F5XKDZ'),
(373, 1360226045, '127.0.0.1', 'YZNMF38'),
(374, 1360226125, '127.0.0.1', 'D3VPFMY'),
(375, 1360227087, '127.0.0.1', 'ZS3KNXC'),
(376, 1360227163, '127.0.0.1', 'T7EHAKP'),
(377, 1360227441, '127.0.0.1', 'STPEDCR'),
(378, 1360227632, '127.0.0.1', 'ETZAF2N'),
(379, 1360227679, '127.0.0.1', '2ZX35TD'),
(380, 1360227705, '127.0.0.1', 'RB94VQ7'),
(381, 1360228020, '127.0.0.1', '3KA9SRD'),
(382, 1360228081, '127.0.0.1', '76M2TQC'),
(383, 1360228122, '127.0.0.1', 'E4X7T3B'),
(384, 1360228189, '127.0.0.1', '72B3WZ8'),
(385, 1360228365, '127.0.0.1', 'SZ794WM'),
(386, 1360228494, '127.0.0.1', '97NVTBS'),
(387, 1360228600, '127.0.0.1', 'AGV7HUD'),
(388, 1360228637, '127.0.0.1', 'V8QH4FJ'),
(389, 1360228674, '127.0.0.1', '4U5T3E6'),
(390, 1360237427, '127.0.0.1', 'QGA4NSB'),
(391, 1360237563, '127.0.0.1', '7E34DR5'),
(392, 1360237667, '127.0.0.1', 'VK49N2R'),
(393, 1360238246, '127.0.0.1', 'CY5TVN2'),
(394, 1360238337, '127.0.0.1', 'URWTS5D'),
(395, 1360238459, '127.0.0.1', 'GN68YMD'),
(396, 1360238767, '127.0.0.1', 'S9QFVWA'),
(397, 1360239048, '127.0.0.1', '4YRNUBS'),
(398, 1360242275, '127.0.0.1', 'NEYG6H8'),
(399, 1360258411, '127.0.0.1', 'RYKN8EB'),
(400, 1360293865, '127.0.0.1', '5G2NJT6'),
(401, 1360293884, '127.0.0.1', 'V2AGBF7'),
(402, 1360294633, '127.0.0.1', 'XPTN56G'),
(403, 1360295338, '127.0.0.1', '42HU3GK'),
(404, 1360295409, '127.0.0.1', 'V2BPKFJ'),
(405, 1360296383, '127.0.0.1', '4TXRYZS'),
(406, 1360296399, '127.0.0.1', 'QVBJP7Y'),
(407, 1360296443, '127.0.0.1', 'KGC7F89'),
(408, 1360296495, '127.0.0.1', '7EZQRP4'),
(409, 1360296607, '127.0.0.1', 'TNEJ7YK'),
(410, 1360296805, '127.0.0.1', 'WR6U34S'),
(411, 1360296809, '127.0.0.1', 'M58AY97'),
(412, 1360296811, '127.0.0.1', 'DTGJKMW'),
(413, 1360297594, '127.0.0.1', 'U9EVW8G'),
(414, 1360297598, '127.0.0.1', '2XSEYKB');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_destinations`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_destinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination_type` int(20) NOT NULL,
  `destination_name` varchar(200) NOT NULL,
  `thumb_nail` varchar(200) NOT NULL,
  `desination_description` text NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_groups`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `afric_aventure_groups`
--

INSERT INTO `afric_aventure_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_login_attempts`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_login_attempts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_menu`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(100) NOT NULL DEFAULT '#',
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `afric_aventure_menu`
--

INSERT INTO `afric_aventure_menu` (`id`, `label`, `link`, `parent`, `sort`) VALUES
(1, 'Home', '#home', 0, 0),
(2, 'code', '#code', 0, 0),
(3, 'contact', '#', 0, 0),
(4, 'php', '#', 0, 0),
(5, 'css', '#', 2, 0),
(6, 'scripts', '#', 4, 0),
(7, 'Archive', '#', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_pages`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `parent_page` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `en_url` varchar(255) NOT NULL,
  `thumbnail` varchar(50) NOT NULL,
  `draws_from` varchar(100) NOT NULL,
  `priority` int(11) NOT NULL,
  `browser_title` varchar(70) NOT NULL,
  `text` text NOT NULL,
  `en_text` text NOT NULL,
  `active` enum('TRUE','FALSE') NOT NULL DEFAULT 'FALSE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `afric_aventure_pages`
--

INSERT INTO `afric_aventure_pages` (`id`, `title`, `en_title`, `parent_page`, `url`, `en_url`, `thumbnail`, `draws_from`, `priority`, `browser_title`, `text`, `en_text`, `active`) VALUES
(1, 'Accueil', 'Home', 0, 'home', 'home', '', '', 1, 'Afric'' Aventure | Home', '', '', 'TRUE'),
(2, 'Vacances Plage', 'Beach Vacations', 0, 'vacances-plage', 'beach-vacations', '', 'afric_aventure_beach_vacation_categories', 3, 'Afric'' Aventure | Beach Vacations', '', '', 'TRUE'),
(3, 'Safaris', 'Safaris', 0, 'safaris', 'safaris', '', 'afric_aventure_safaris_categories', 2, 'Afric'' Aventure | Safaris', '', '', 'TRUE'),
(4, 'Hébergement', 'Accommodations', 0, 'hebergement', 'accommodations', '', 'afric_aventure_accomodations_categories', 4, 'Afric'' Aventure | Accomodations', '', '', 'TRUE'),
(5, 'Qui Sommes-Nous', 'About Us', 0, 'qui-sommes-nous', 'about-us', '', '', 5, 'Afric'' Aventure | About Us', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur laoreet iaculis sollicitudin. Maecenas ut arcu felis. Morbi non justo eros. Nullam laoreet molestie tincidunt. In hac habitasse platea dictumst. Ut dapibus dui a elit acuere tortor, eu ultricies nibh arcu non quam. Nunc blandit elit id dolor feugiat varius. Aenean consequat, est et pellentesque luctus, felis nisl vulputate sem, porttitor sodales nunc leo eu nisl. Vivamus sit amet nunc eu dolor eleifend blandit eu eget tortor. In<strong>teger ante velit, sagittis ac rhoncus non, adipiscing eget nunc. Morbi molestie nulla nec ante sollicitudin id lacinia erat rhoncus. Suspendisse odio arcu, bibendum id tincidunt eget, euismod non massa.</strong></p>\r\n<p>\r\n	Maecenas vel odio turpis. Donec sapien ante, accumsan et pulvinar ac, mollis id diam. Praesent nec ipsum sem. Curabitur a ante sed orci lobortis faucibus eu eget mi. Pellentesque vitae nulla et arcu commodo sollicitudin. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent eget aliquet ipsum. Sed vel justo id metus accumsan elementum. Nullam suscipit auctor dolor, nec dignissim lectus ornare at. Suspendisse potenti.</p>\r\n', '', 'TRUE'),
(6, 'Nous Contacter', 'Contact Us', 0, 'nous-contacter', 'contact-us', '', '', 6, 'Afric'' Aventure | Contact Us', '<p>\r\n	Maecenas vel odio turpis. Donec sapien ante, accumsan et pulvinar ac, mollis id</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 'TRUE'),
(20, 'Parks Served', '', 3, 'parks-served', '', '', '', 1, '', '', '', 'TRUE'),
(21, 'Themed Safaris', '', 3, 'themed-safaris', '', '', '', 2, '', '', '', 'TRUE'),
(22, 'By Park', '', 4, 'by-park', '', '', '', 1, '', '', '', 'TRUE'),
(23, 'By Beach', '', 4, 'by-beach', '', '', '', 2, '', '', '', 'TRUE'),
(24, 'Test Page', '', 0, 'test-page', '', 'Koala.jpg', '', 0, 'Test Page Test', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Koala.jpg" style="width: 300px; height: 225px;" />&nbsp;&nbsp;</p>\r\n', '', 'FALSE');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_page_categories`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_page_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(75) NOT NULL,
  `parent_category` int(11) NOT NULL,
  `intro_text` text NOT NULL,
  `url` varchar(160) NOT NULL,
  `template` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `safari_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `afric_aventure_page_categories`
--

INSERT INTO `afric_aventure_page_categories` (`id`, `title`, `parent_category`, `intro_text`, `url`, `template`, `type`, `safari_type`) VALUES
(1, 'Destinations', 0, '', 'beach-vacations-destinations', '', 0, 0),
(2, 'Themes', 0, '', 'themes-destinations', '', 0, 0),
(3, 'Parks Served', 0, '', 'parks-served', '', 0, 0),
(4, 'Themed Safaris', 0, '', 'themed-safaris', '', 0, 0),
(5, 'By Park', 0, '', 'by-park', '', 0, 0),
(6, 'By Beach', 0, '', 'by-beach', '', 0, 0),
(7, 'National Park 1', 5, '', 'nat-park-1', '', 0, 0),
(8, 'National Park 2', 5, '', 'nat-park-2', '', 0, 0),
(9, 'By Beach 1', 6, '', 'by-beach-1', '', 0, 0),
(10, 'By Beach 2', 6, '', 'by-beach-2', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_photo_albums`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_photo_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `thumb_nail` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_safaris`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_safaris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `en_url` varchar(255) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `en_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `afric_aventure_safaris`
--

INSERT INTO `afric_aventure_safaris` (`id`, `title`, `en_title`, `category`, `description`, `url`, `en_url`, `thumbnail`, `text`, `en_text`) VALUES
(1, 'Armageddon', '', 2, 'sjss kskskks sksk kskkhgkg ksk kj sjk kgjkjg jgkfgjk h khfghsgriirgtrig ghfkjgkgskhgjh  hekl o  dsthis is hjushtre  a teadfrty ', 'armageddon', '', 'Lighthouse.jpg', '<p>\r\n	Pellentesque vitae pulvinar sapien. Nullam hendrerit pellentesque est nec placerat. In porttitor tristique odio, eu placerat libero pretium ac. In at dolor vel massa rutrum porttitor vitae ac turpis. Sed tortor lectus, semper vel vestibulum ut, pharetra at mauris. Nullam ut mi leo. Suspendisse potenti. <img alt="" src="/afric-aventure/ckfinder/userfiles/images/Lighthouse.jpg" style="width: 400px; height: 300px;" />Curabitur suscipit justo sagittis nisl varius auctor placerat tortor malesuada. Praesent mollis neque in est molestie blandit. Proin interdum commodo faucibus. Nullam rutrum sem quis justo rhoncus consectetur. Vivamus aliquam nibh ac sem fermentum dignissim. Etiam ante justo, rutrum sed dictum sed, sodales ac urna. Morbi at nunc sed risus pretium feugiat ut id felis</p>\r\n', ''),
(2, 'Themed Safaris ', '', 2, 'jss kskskks sksk kskkhgkg ksk kj sjk kgjkjg jgkfgjk h khfghsgriirgtrig ghfkjgkgskhgjh  hekl o  dsthis is hjushtre  a teadfrty ', 'themed-safaris', '', 'ppp.jpg', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/ppp.jpg" style="width: 100px; height: 100px; float: left;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vestibulum libero at magna mollis quis sodales lorem sagittis. Morbi id neque id tortor molestie fringilla. Quisque tempor elit sed erat cursus malesuada. Sed sed venenatis tortor. Morbi pretium, ligula sed rhoncus volutpat, magna libero eleifend lacus, sed aliquam nunc erat quis magna. Donec quis commodo libero. Morbi sed leo lectus, a accumsan magna. Phasellus ultrices justo non massa rhoncus ut fermentum nulla sodales. Maecenas convallis nisl sit amet massa rutrum sodales. Curabitur mollis, metus eu pharetra consequat, lorem quam consequat felis, id suscipit sapien enim nec mauris. Vivamus consectetur, augue sed dapibus aliquam, velit purus commodo lorem, eu vehicula nisl lorem ac nulla. Duis dui sem, feugiat nec convallis non, hendrerit venenatis risus. Etiam sed metus erat, eu malesuada urna.</p>\r\n', ''),
(11, 'Parc National 1', 'National Parc 1', 1, '', 'parc-national-1', 'national-parc-1', '', '', ''),
(12, 'Parc National 2', 'National Park 2', 1, '', 'parc-national-2', 'national-park-2', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_safaris_categories`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_safaris_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `en_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `afric_aventure_safaris_categories`
--

INSERT INTO `afric_aventure_safaris_categories` (`id`, `title`, `en_title`, `parent`, `url`, `en_url`) VALUES
(1, 'Parcs Servis', 'Parks Served', 0, 'parcs-servis', 'parks-served'),
(2, 'Safaris Thématiques', 'Themed Safaris', 0, 'safaris-thematiques', 'themed-safaris');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_sections`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url_string` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_slider`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_title` varchar(50) NOT NULL,
  `caption` varchar(150) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `afric_aventure_slider`
--

INSERT INTO `afric_aventure_slider` (`id`, `photo_title`, `caption`, `photo`) VALUES
(2, 'Cras justo odio, dapibus ac in', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehic', '7bbb9-demo1.jpg'),
(3, 'Lorem ipsum dolor sit amet, consectetur', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto rerum alias aliquid ex quis assumenda ab adipisci odio. Blanditiis consequatur qu', 'a8ace-demo2.jpg'),
(4, 'Ut a pulvinar purus. Fusce ac diam ligula', 'Nam quis leo lectus, sit amet mollis metus. Aliquam sed dolor nec turpis viverra malesuada. Nulla id magna sed augue aliquam lobortis sed quis lorem. ', '824c1-demo3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_users`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `afric_aventure_users`
--

INSERT INTO `afric_aventure_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '\0\0', 'administrator', '59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4', '9462e8eee0', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1360289446, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `afric_aventure_users_groups`
--

CREATE TABLE IF NOT EXISTS `afric_aventure_users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `afric_aventure_users_groups`
--

INSERT INTO `afric_aventure_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 2),
(5, 4, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
