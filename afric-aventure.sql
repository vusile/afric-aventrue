-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2013 at 03:12 PM
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
  `images` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `afric_aventure_accomodations`
--

INSERT INTO `afric_aventure_accomodations` (`id`, `title`, `category`, `images`) VALUES
(1, 'Test Accommodation', 15, '<a href = "http://localhost/afric-aventure/backend/afric_aventure_accomodations_sliders/1">Images</a>'),
(2, 'Test Accommodation 2', 16, '<a href = "http://localhost/afric-aventure/backend/afric_aventure_accomodations_sliders/2">Images</a>'),
(3, 'Test Accommodation 3', 17, '<a href = "http://localhost/afric-aventure/backend/afric_aventure_accomodations_sliders/3">Images</a>'),
(4, 'Test Accommodation 4', 18, '<a href = "http://localhost/afric-aventure/backend/afric_aventure_accomodations_sliders/4">Images</a>');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `afric_aventure_accomodations_categories`
--

INSERT INTO `afric_aventure_accomodations_categories` (`id`, `title`, `en_title`, `parent`, `url`, `en_url`) VALUES
(1, 'De la Parc', 'By Park', 0, 'de-la-parc', 'by-park'),
(2, 'De la Plage', 'By Beach', 0, 'de-la-plage', 'by-beach'),
(15, 'Parc National 1', 'National Parc 1', 1, 'parc-national-1', 'national-parc-1'),
(19, 'Test', 'Test', 1, 'test', 'test'),
(21, 'Test 2', 'Test', 1, 'test-2', 'test-test-test-test'),
(22, 'Test 2', 'Test', 2, 'test-2-test-2', 'test-test-test-test'),
(23, 'Test Beach', 'Test Beach', 2, 'test-beach', 'test-beach'),
(24, 'Test Safari 02', 'Test Safari 02', 2, 'test-safari-02', 'test-safari-02'),
(26, 'Plage 1', 'Beach 1', 2, 'plage-1-plage-1', 'beach-1-beach-1'),
(27, 'Sample 007', 'Sample 007', 1, 'sample-007', 'sample-007'),
(28, 'Very latest test', 'Very latest test', 2, 'very-latest-test', 'very-latest-test'),
(29, 'Test 09', 'Test 09', 1, 'test-09', 'test-09'),
(30, 'Beach Test Twoooo', 'Beach Test Tw0000', 2, 'beach-test-twoooo', 'beach-test-tw0000'),
(36, 'zzz', 'zzz', 1, 'zzz', 'zzz'),
(37, 'ss', 'ss', 1, 'ss', 'ss'),
(38, 'Testing this', 'Testing This', 1, 'testing-this', 'testing-this'),
(39, 'Testing this Now', 'Testing This Today', 1, 'testing-this-now', 'testing-this-today'),
(40, 'Two beaches', 'Two beaches', 2, 'two-beaches', 'two-beaches'),
(41, 'Why Two2', 'Why Two2', 1, 'why-two2', 'why-two2');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `afric_aventure_accomodations_sliders`
--

INSERT INTO `afric_aventure_accomodations_sliders` (`id`, `accomodation_id`, `slide_pic`, `slide_title`, `slide_teaser`) VALUES
(1, 1, '4ce37-accimodation-2.jpg', 'hi', 'this is s test'),
(2, 1, 'dbb51-accomodation-1.jpg', 'Testing Slider', 'This is a test.'),
(3, 2, 'http://dummyimage.com/780x400/cdcdcd/fff', 'hi', 'this is s test'),
(4, 2, 'http://dummyimage.com/780x400/cccccc/fff', 'Testing Slider', 'This is a test.'),
(5, 3, 'http://dummyimage.com/780x400/ffffff/fff', 'hi', 'this is s test'),
(6, 3, 'http://dummyimage.com/780x400/000000/fff', 'Testing Slider', 'This is a test.'),
(7, 4, 'http://dummyimage.com/780x400/aaaaaa/fff', 'hi', 'this is s test'),
(8, 4, 'http://dummyimage.com/780x400/dddddd/fff', 'Testing Slider', 'This is a test.'),
(9, 0, '2f6d2-accimodation-2.jpg', 'ksjgkfjgks', 'skgjsklgjksgj'),
(10, 0, '822bf-accomodation-3.jpg', 'hhh', 'hhh');

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
  `accomodation_beach` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `afric_aventure_beach_vacations`
--

INSERT INTO `afric_aventure_beach_vacations` (`id`, `title`, `en_title`, `category`, `description`, `url`, `en_url`, `thumbnail`, `text`, `en_text`, `accomodation_beach`) VALUES
(3, 'Theme de Vacance Plage 2', 'Theme Beach Vacation 2', 2, 'erat ligula nec dui. Suspendisse eu dolor nunc. Integer sodales, est eget dignissim iaculis, lorem ipsum ornare turpis, id condimentum nibh orci sagittis nisi. Nulla eu auctor ligula. Nunc gravida congue sapien at venenatis. In non porttitor risus. Proin luctus, metus sed consectetur viverra, erat metus condimentum erat, ut adipiscing risus augue quis urna. Phasellus tincidunt turpis vitae purus tincidunt tempus.', 'theme-de-vacance-plage-2', 'theme-beach-vacation-2', 'animals-q-c-450-300-9.jpg', '<p>\r\n	La confusion du ma&icirc;tre et de l&#39;homme, qui avait tout &agrave; fait oubli&eacute; l&#39;affaire &agrave; Bombay, pour lesquels ils &eacute;taient d&eacute;sormais d&eacute;tenus &agrave; Calcutta, peut &ecirc;tre imagin&eacute;e.</p>\r\n<p>\r\n	<br />\r\n	Difficult&eacute; le d&eacute;tective, avaient pr&eacute;vu l&#39;avantage escapade de laquelle Passepartout lui a donn&eacute;, et, de retarder son d&eacute;part pendant douze heures, avait consult&eacute; les pr&ecirc;tres de Malabar Hill. Sachant que la jurisprudence anglaise traite tr&egrave;s s&eacute;rieusement ce genre de d&eacute;lit, il leur avait promis une belle somme en dommages-int&eacute;r&ecirc;ts et les envoya vers l&#39;avant &agrave; Calcutta par le prochain train. En raison du retard caus&eacute; par le sauvetage de la jeune veuve, Fix et les pr&ecirc;tres ont atteints la capitale indienne avant M. Fogg et son serviteur, les magistrats ayant d&eacute;j&agrave; &eacute;t&eacute; avertis par une d&eacute;p&ecirc;che de les arr&ecirc;ter si ils arrivent.<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-300-9.jpg" style="width: 450px; height: 300px; float: left;" /></p>\r\n<p>\r\n	D&eacute;ception de Fix lorsqu&#39;il apprit que Phileas Fogg n&#39;avait pas fait son apparition &agrave; Calcutta peut &ecirc;tre imagin&eacute;e. Il est mis en t&ecirc;te par le fait que le voleur avait arr&ecirc;t&eacute; quelque part sur la route et trouv&eacute; refuge dans les provinces m&eacute;ridionales. Pendant vingt-quatre heures Fix a regard&eacute; la station avec anxi&eacute;t&eacute; f&eacute;brile ; Enfin, il est r&eacute;compens&eacute; par voir M. Fogg et Passepartout arrivent, accompagn&eacute;s d&#39;une jeune femme, dont il &eacute;tait tout &agrave; fait &agrave; une perte pour expliquer la pr&eacute;sence. Il se h&acirc;ta d&#39;un policier ; et c&#39;&eacute;tait comment le parti est arriv&eacute; &agrave; &ecirc;tre arr&ecirc;t&eacute; et traduit devant le juge Obadiah.</p>\r\n<p>\r\n	La confusion du ma&icirc;tre et de l&#39;homme, qui avait tout &agrave; fait oubli&eacute; l&#39;affaire &agrave; Bombay, pour lesquels ils &eacute;taient d&eacute;sormais d&eacute;tenus &agrave; Calcutta, peut &ecirc;tre imagin&eacute;e.</p>\r\n<p>\r\n	<br />\r\n	Difficult&eacute; le d&eacute;tective, avaient pr&eacute;vu l&#39;avantage escapade de laquelle Passepartout lui a donn&eacute;, et, de retarder son d&eacute;part pendant douze heures, avait consult&eacute; les pr&ecirc;tres de Malabar Hill. Sachant que la jurisprudence anglaise traite tr&egrave;s s&eacute;rieusement ce genre de d&eacute;lit, il leur avait promis une belle somme en dommages-int&eacute;r&ecirc;ts et les envoya vers l&#39;avant &agrave; Calcutta par le prochain train. En raison du retard caus&eacute; par le sauvetage de la jeune veuve, Fix et les pr&ecirc;tres ont atteints la capitale indienne avant M. Fogg et son serviteur, les magistrats ayant d&eacute;j&agrave; &eacute;t&eacute; avertis par une d&eacute;p&ecirc;che de les arr&ecirc;ter si ils arrivent.La confusion du ma&icirc;tre et de l&#39;homme, qui avait tout &agrave; fait oubli&eacute; l&#39;affaire &agrave; Bombay, pour lesquels ils &eacute;taient d&eacute;sormais d&eacute;tenus &agrave; Calcutta, peut &ecirc;tre imagin&eacute;e.Difficult&eacute; le d&eacute;tective, avaient pr&eacute;vu l&#39;avantage escapade de laquelle Passepartout lui a donn&eacute;, et, de retarder son d&eacute;part pendant douze heures,<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-300-9.jpg" style="width: 450px; height: 300px; float: right;" /> avait consult&eacute; les pr&ecirc;tres de Malabar Hill. Sachant que la jurisprudence anglaise traite tr&egrave;s s&eacute;rieusement ce genre de d&eacute;lit, il leur avait promis une belle somme en dommages-int&eacute;r&ecirc;ts et les envoya vers l&#39;avant &agrave; Calcutta par le prochain train. En raison du retard caus&eacute; par le sauvetage de la jeune veuve, Fix et les pr&ecirc;tres ont atteints la capitale indienne avant M. Fogg et son serviteur, les magistrats ayant d&eacute;j&agrave; &eacute;t&eacute; avertis par une d&eacute;p&ecirc;che de les arr&ecirc;ter si ils arrivent.La confusion du ma&icirc;tre et de l&#39;homme, qui avait tout &agrave; fait oubli&eacute; l&#39;affaire &agrave; Bombay, pour lesquels ils &eacute;taient d&eacute;sormais d&eacute;tenus &agrave; Calcutta, peut &ecirc;tre imagin&eacute;e.</p>\r\n<p>\r\n	<br />\r\n	Difficult&eacute; le d&eacute;tective, avaient pr&eacute;vu l&#39;avantage escapade de laquelle Passepartout lui a donn&eacute;, et, de retarder son d&eacute;part pendant douze heures, avait consult&eacute; les pr&ecirc;tres de Malabar Hill. Sachant que la jurisprudence anglaise traite tr&egrave;s s&eacute;rieusement ce genre de d&eacute;lit, il leur avait promis une belle somme en dommages-int&eacute;r&ecirc;ts et les envoya vers l&#39;avant &agrave; Calcutta par le prochain train. En raison du retard caus&eacute; par le sauvetage de la jeune veuve, Fix et les pr&ecirc;tres ont atteints la capitale indienne avant M. Fogg et son serviteur, les magistrats ayant d&eacute;j&agrave; &eacute;t&eacute; avertis par une d&eacute;p&ecirc;che de les arr&ecirc;ter si ils arrivent.La confusion du ma&icirc;tre et de l&#39;homme, qui avait tout &agrave; fait oubli&eacute; l&#39;affaire &agrave; Bombay, pour lesquels ils &eacute;taient d&eacute;sormais d&eacute;tenus &agrave; Calcutta, peut &ecirc;tre imagin&eacute;e.</p>\r\n<p>\r\n	Difficult&eacute; le d&eacute;tective, avaient pr&eacute;vu l&#39;avantage escapade de laquelle Passepartout lui a donn&eacute;, et, de retarder son d&eacute;part pendant douze heures, avait consult&eacute; les pr&ecirc;tres de Malabar Hill. Sachant que la jurisprudence anglaise traite tr&egrave;s s&eacute;rieusement ce genre de d&eacute;lit, il leur avait promis une belle somme en dommages-int&eacute;r&ecirc;ts et les envoya vers l&#39;avant &agrave; Calcutta par le prochain train. En raison du retard caus&eacute; par le sauvetage de la jeune veuve, Fix et les pr&ecirc;tres ont atteints la capitale indienne avant M. Fogg et son serviteur, les magistrats ayant d&eacute;j&agrave; &eacute;t&eacute; avertis par une d&eacute;p&ecirc;che de les arr&ecirc;ter si ils arrivent.La confusion du ma&icirc;tre et de l&#39;homme, qui avait tout &agrave; fait oubli&eacute; l&#39;affaire &agrave; Bombay, pour lesquels ils &eacute;taient d&eacute;sormais d&eacute;tenus &agrave; Calcutta, peut &ecirc;tre imagin&eacute;e.</p>\r\n<p>\r\n	Difficult&eacute; le d&eacute;tective, avaient pr&eacute;vu l&#39;avantage escapade de laquelle Passepartout lui a donn&eacute;, et, de retarder son d&eacute;part pendant douze heures, avait consult&eacute; les pr&ecirc;tres de Malabar Hill. Sachant que la jurisprudence anglaise traite tr&egrave;s s&eacute;rieusement ce genre de d&eacute;lit, il leur avait promis une belle somme en dommages-int&eacute;r&ecirc;ts et les envoya vers l&#39;avant &agrave; Calcutta par le prochain train. En raison du retard caus&eacute; par le sauvetage de la jeune veuve, Fix et les pr&ecirc;tres ont atteints la capitale indienne avant M. Fogg et son serviteur, les magistrats ayant d&eacute;j&agrave; &eacute;t&eacute; avertis par une d&eacute;p&ecirc;che de les arr&ecirc;ter si ils arrivent.</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p>\r\n	The confusion of master and man, who had quite forgotten the affair at Bombay, for which they were now detained at Calcutta, may be imagined.</p>\r\n<p>\r\n	Fix the detective, had foreseen the advantage which Passepartout&#39;s escapade gave him, and, delaying his departure for twelve hours, had consulted the priests of Malabar Hill. Knowing that the English authorities dealt very severely with this kind of misdemeanour, he promised them a goodly sum in damages, and sent them forward to Calcutta by the next train. Owing to the delay caused by the rescue of the young widow, Fix and the priests reached the Indian capital before Mr. Fogg and his servant, the magistrates having been already warned by a dispatch to arrest them should they arrive.</p>\r\n<p>\r\n	Fix&#39;s disappointment when he learned that Phileas Fogg had not made his appearance in Calcutta may be imagined. He made up his mind that the robber had stopped somewhere on the route and taken refuge in the southern <img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-300-9.jpg" style="width: 450px; height: 300px; float: left;" />provinces. For twenty-four hours Fix watched the station with feverish anxiety; at last he was rewarded by seeing Mr. Fogg and Passepartout arrive, accompanied by a young woman, whose presence he was wholly at a loss to explain. He hastened for a policeman; and this was how the party came to be arrested and brought before Judge Obadiah.</p>\r\n<p>\r\n	Fix the detective, had foreseen the advantage which Passepartout&#39;s escapade gave him, and, delaying his departure for twelve hours, had consulted the priests of Malabar Hill. Knowing that the English authorities dealt very severely with this kind of misdemeanour, he promised them a goodly sum in damages, and sent them forward to Calcutta by the next train. Owing to the delay caused by the rescue of the young widow, Fix and the priests reached the Indian capital before Mr. Fogg and his servant, the magistrates having been already warned by a dispatch to arrest them should they arrive.</p>\r\n<p>\r\n	Fix&#39;s disappointment when he learned that Phileas Fogg had not made his appearance in Calcutta may be imagined. He made up his mind that the robber had stopped somewhere on the route and taken refuge in the southern provinces. For twenty-four hours Fix watched the station with feverish anxiety; at last he was rewarded by seeing Mr. Fogg and Passepartout arrive, accompanied by a young woman, whose presence he was wholly at a loss to explain. He hastened for a policeman; and this was how the party came to be arrested and brought before Judge Obadiah.Fix the detective, had foreseen the advantage which Passepartout&#39;s escapade gave him, and, delaying his departure for twelve hours, had consulted the priests of Malabar Hill. Knowing that the English authorities dealt very severely with<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-300-9.jpg" style="width: 450px; height: 300px; float: left;" /> this kind of misdemeanour, he promised them a goodly sum in damages, and sent them forward to Calcutta by the next train. Owing to the delay caused by the rescue of the young widow, Fix and the priests reached the Indian capital before Mr. Fogg and his servant, the magistrates having been already warned by a dispatch to arrest them should they arrive.</p>\r\n<p>\r\n	Fix&#39;s disappointment when he learned that Phileas Fogg had not made his appearance in Calcutta may be imagined. He made up his mind that the robber had stopped somewhere on the route and taken refuge in the southern provinces. For twenty-four hours Fix watched the station with feverish anxiety; at last he was rewarded by seeing Mr. Fogg and Passepartout arrive, accompanied by a young woman, whose presence he was wholly at a loss to explain. He hastened for a policeman; and this was how the party came to be arrested and brought before Judge Obadiah.Fix the detective, had foreseen the advantage which Passepartout&#39;s escapade gave him, and, delaying his departure for twelve hours, had consulted the priests of Malabar Hill. Knowing that the English authorities dealt very severely with this kind of misdemeanour, he promised them a goodly sum in damages, and sent them forward to Calcutta by the next train. Owing to the delay caused by the rescue of the young widow, Fix and the priests reached the Indian capital before Mr. Fogg and his servant, the magistrates having been already warned by a dispatch to arrest them should they arrive.</p>\r\n<p>\r\n	Fix&#39;s disappointment when he learned that Phileas Fogg had not made his appearance in Calcutta may be imagined. He made up his mind that the robber had stopped somewhere on the route and taken refuge in the southern provinces. For twenty-four hours Fix watched the station with feverish anxiety; at last he was rewarded by seeing Mr. Fogg and Passepartout arrive, accompanied by a young woman, whose presence he was wholly at a loss to explain. He hastened for a policeman; and this was how the party came to be arrested and brought before Judge Obadiah.Fix the detective, had foreseen the advantage which Passepartout&#39;s escapade gave him, and, delaying his departure for <img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-300-9.jpg" style="width: 450px; height: 300px; float: left;" />twelve hours, had consulted the priests of Malabar Hill. Knowing that the English authorities dealt very severely with this kind of misdemeanour, he promised them a goodly sum in damages, and sent them forward to Calcutta by the next train. Owing to the delay caused by the rescue of the young widow, Fix and the priests reached the Indian capital before Mr. Fogg and his servant, the magistrates having been already warned by a dispatch to arrest them should they arrive.</p>\r\n<p>\r\n	Fix&#39;s disappointment when he learned that Phileas Fogg had not made his appearance in Calcutta may be imagined. He made up his mind that the robber had stopped somewhere on the route and taken refuge in the southern provinces. For twenty-four hours Fix watched the station with feverish anxiety; at last he was rewarded by seeing Mr. Fogg and Passepartout arrive, accompanied by a young woman, whose presence he was wholly at a loss to explain. He hastened for a policeman; and this was how the party came to be arrested and brought before Judge Obadiah.Fix the detective, had foreseen the advantage which Passepartout&#39;s escapade gave him, and, delaying his departure for twelve hours, had consulted the priests of Malabar Hill. Knowing that the English authorities dealt very severely with this kind of misdemeanour, he promised them a goodly sum in damages, and sent them forward to Calcutta by the next train. Owing to the delay caused by the rescue of the young widow, Fix and the priests reached the Indian capital before Mr. Fogg and his servant, the magistrates having been already warned by a dispatch to arrest them should they arrive.</p>\r\n<p>\r\n	Fix&#39;s disappointment when he learned that Phileas Fogg had not made his appearance in Calcutta may be imagined. He made up his mind that the robber had stopped somewhere on the route and taken refuge in the southern provinces. For twenty-four hours Fix watched the station with feverish anxiety; at last he was rewarded by seeing Mr. Fogg and Passepartout arrive, accompanied by a young woman, whose presence he was wholly at a loss to explain. He hastened for a policeman; and this was how the party came to be arrested and brought before Judge Obadiah.Fix the detective, had foreseen the advantage which Passepartout&#39;s escapade gave him, and, delaying his departure for twelve hours, had consulted the priests of Malabar Hill. Knowing that the English authorities dealt very severely with this kind of misdemeanour, he promised them a goodly sum in damages, and sent them forward to Calcutta by the next train. Owing to the delay caused by the rescue of the young widow, Fix and the priests reached the Indian capital before Mr. Fogg and his servant, the magistrates having been already warned by a dispatch to arrest them should they arrive.</p>\r\n<p>\r\n	Fix&#39;s disappointment when he learned that Phileas Fogg had not made his appearance in Calcutta may be imagined. He made up his mind that the robber had stopped somewhere on the route and taken refuge in the southern provinces. For twenty-four hours Fix watched the station with feverish anxiety; at last he was rewarded by seeing Mr. Fogg and Passepartout arrive, accompanied by a young woman, whose presence he was wholly at a loss to explain. He hastened for a policeman; and this was how the party came to be arrested and brought before Judge Obadiah.</p>\r\n', 0),
(5, 'Theme de Vacance Plage 1', 'Beach Vacation Theme 1', 2, '', 'theme-de-vacance-plage-1', 'beach-vacation-theme-1', 'animals-q-c-250-200-8.jpg', '<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&laquo; Bombay? &raquo; s&#39;&eacute;cria Passepartout.</p>\r\n<p>\r\n	&laquo; Bien s&ucirc;r. Nous parlons pas de la pagode de Pillaji, mais de la pagode de Malabar Hill, &agrave; Bombay. &raquo;<br />\r\n	&laquo; Et comme une preuve, &raquo; a ajout&eacute; le greffier, &laquo; Voici les chaussures tr&egrave;s de la desecrator, qu&#39;il laissa derri&egrave;re lui. &raquo;<br />\r\n	Apr&egrave;s quoi il a plac&eacute; une paire de chaussures sur son bureau.<br />\r\n	&laquo; Mes chaussures! &raquo; s&#39;&eacute;cria Passepartout, &agrave; sa grande surprise, autorisant cette exclamation imprudente pour lui &eacute;chapper.</p>\r\n<p>\r\n	Bombay? &raquo; s&#39;&eacute;cria Passepartout.</p>\r\n<p>\r\n	&laquo; Bien s&ucirc;r. Nous parlons pas de la pagode de Pillaji, mais de la pagode de Malabar Hill, &agrave; Bombay. &raquo;<br />\r\n	&laquo; Et comme une preuve, &raquo; a ajout&eacute; le greffier, &laquo; Voici les chaussures tr&egrave;s de la desecrator, qu&#39;il laissa derri&egrave;re lui. &raquo;<br />\r\n	Apr&egrave;s quoi il a plac&eacute; une paire de chaussures sur son bureau.<br />\r\n	&laquo; Mes chaussures! &raquo; s&#39;&eacute;cria Passepartout, &agrave; sa grande surprise, autorisant cette exclamation imprudente pour lui &eacute;chapper.</p>\r\n<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg" style="width: 250px; height: 200px; float: right;" /></p>\r\n<div>\r\n	<br />\r\n	<p>\r\n		Bombay? &raquo; s&#39;&eacute;cria Passepartout.</p>\r\n	<p>\r\n		&laquo; Bien s&ucirc;r. Nous parlons pas de la pagode de Pillaji, mais de la pagode de Malabar Hill, &agrave; Bombay. &raquo;<br />\r\n		&laquo; Et comme une preuve, &raquo; a ajout&eacute; le greffier, &laquo; Voici les chaussures tr&egrave;s de la desecrat</p>\r\n	<p>\r\n		or, qu&#39;il laissa derri&egrave;re lui. &raquo;<br />\r\n		Apr&egrave;s quoi il a plac&eacute; une paire de chaussures sur son bureau.<br />\r\n		&laquo; Mes chaussures! &raquo; s&#39;&eacute;cria Passepartout, &agrave; sa grande surprise, autorisant cette exclamation imprudente pour lui &eacute;chapper.</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&quot;Bombay?&quot; cried Passepartout.</p>\r\n<p>\r\n	&quot;Certainly. We are not talking of the pagoda of Pillaji, but of the pagoda of Malabar Hill, at Bombay.&quot;<br />\r\n	&quot;And as a proof,&quot; added the clerk, &quot;here are the desecrator&#39;s very shoes, which he left behind him.&quot;<br />\r\n	Whereupon he placed a pair of shoes on his desk.<br />\r\n	&quot;My shoes!&quot; cried Passepartout, in his surprise permitting this imprudent exclamation to escape him.</p>\r\n<p>\r\n	&quot;Bombay?&quot; cried Passepartout.</p>\r\n<p>\r\n	&quot;Certainly. We are not talking of the pagoda of Pillaji, but of the pagoda of Malabar Hill, at Bombay.&quot;<br />\r\n	&quot;And as a proof,&quot; added the clerk, &quot;here are the desecrator&#39;s very shoes, which he left behind him.&quot;<br />\r\n	Whereupon he placed a pair of shoes on his desk.<br />\r\n	&quot;My shoes!&quot; cried Passepartout, in his surprise permitting this imprudent exclamation to escape him.</p>\r\n<p>\r\n	&quot;Bombay?&quot; cried Passepartout.<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg" style="width: 250px; height: 200px; float: right;" /></p>\r\n<div>\r\n	<br />\r\n	<p>\r\n		&quot;Certainly. We are not talking of the pagoda of Pillaji, but of the pagoda of Malabar Hill, at&nbsp;</p>\r\n	<p>\r\n		Bombay.&quot;<br />\r\n		&quot;And as a proof,&quot; added the clerk, &quot;here are the desecrator&#39;s very shoes, which he left behind him.&quot;<br />\r\n		Whereupon he placed a pair of shoes on his desk.<br />\r\n		&quot;My shoes!&quot; cried Passepartout, in his surprise permitting this imprudent exclamation to escape him.</p>\r\n	<p style="">\r\n		&quot;Bombay?&quot; cried Passepartout.</p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		&quot;Certainly. We are not talking of the pagoda of Pillaji, but of the pagoda of Malabar Hill, at Bombay.&quot;<br />\r\n		&quot;And as a proof,&quot; added the clerk, &quot;here are the desecrator&#39;s very shoes, which he left behind him.&quot;<br />\r\n		Whereupon he placed a pair of shoes on his desk.<br />\r\n		&quot;My shoes!&quot; cried Passepartout, in his surprise permitting this imprudent exclamation to escape him.</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0),
(8, 'Plage 1', 'Beach 1', 1, '', 'plage-1', 'beach-1', '', '<p>\r\n	Un instant plus tard, je me trouvais devant une douzaine Mahars &mdash; les enqu&ecirc;teurs sociaux de Phutra. Ils m&#39;ont demand&eacute; beaucoup de questions, gr&acirc;ce &agrave; un interpr&egrave;te Sagoth. Je leur r&eacute;pondit tout honn&ecirc;tement. Ils semblaient particuli&egrave;rement int&eacute;ress&eacute;s par mon compte de la terre externe et le v&eacute;hicule &eacute;trange qui avait apport&eacute; Perry et moi de Pellucidar. Je pensais que j&#39;avais convaincus, et apr&egrave;s qu&#39;ils &eacute;taient assis en silence pendant une longue p&eacute;riode, suite &agrave; mon examen, je m&#39;attendais &agrave; &ecirc;tre command&eacute; retourn&eacute; &agrave; mes quartiers.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Pendant ce silence apparent, ils ont &eacute;t&eacute; d&eacute;battre au moyen du langage &eacute;trange, non-dit au fond de mon conte. Enfin la t&ecirc;te du tribunal a communiqu&eacute; le r&eacute;sultat de leur conf&eacute;rence &agrave; l&#39;officier responsable de la garde Sagoth.</p>\r\n', '<p>\r\n	A moment later I was standing before a dozen Mahars&mdash;the social investigators of Phutra. They asked me many questions, through a Sagoth interpreter. I answered them all truthfully. They seemed particularly interested in my account of the outer earth and the strange vehicle which had brought Perry and me to Pellucidar. I thought that I had convinced them, and after they had sat in silence for a long time following my examination, I expected to be ordered returned to my quarters.</p>\r\n<p>\r\n	During this apparent silence they were debating through the medium of strange, unspoken language the merits of my tale. At last the head of the tribunal communicated the result of their conference to the officer in charge of the Sagoth guard.</p>\r\n', 26),
(9, 'Plage 2', 'Beach 2', 1, '', 'plage-2', 'beach-2', '', '<p>\r\n	C&#39;&eacute;tait sans espoir, et si je descendais en silence &agrave; c&ocirc;t&eacute; de mes gardes &agrave; travers les couloirs sombres et les pistes vers mon dur ch&acirc;timent. &Agrave; un niveau bas, nous sommes tomb&eacute;s sur un certain nombre de chambres lumineuses o&ugrave; nous avons vu que beaucoup Mahars engag&eacute;s dans divers m&eacute;tiers. &Agrave; l&#39;une de ces chambres de mes gardes m&#39;a escort&eacute;, et avant de partir, ils m&#39;encha&icirc;n&eacute;s &agrave; un mur lat&eacute;ral. Il y avait d&#39;autres hommes de m&ecirc;me encha&icirc;n&eacute;s. Sur une longue table poser une victime alors que j&#39;&eacute;tais fait entrer dans la chambre. Plusieurs Mahars se tenait sur la pauvre cr&eacute;ature lui enfon&ccedil;ant afin qu&#39;il ne pouvait pas bouger. Un autre, saisissant un couteau bien aiguis&eacute; avec elle trois doigts avant pied, &eacute;tait portant ouvrir la poitrine et l&#39;abdomen de la victime. Aucune anesth&eacute;sie n&#39;avait &eacute;t&eacute; administr&eacute; et les cris et les g&eacute;missements de l&#39;homme tortur&eacute; ont &eacute;t&eacute; terribles &agrave; entendre. Cela, en effet, &eacute;tait vivisection avec une vengeance. Sueurs froides ont &eacute;clat&eacute; sur moi que j&#39;ai r&eacute;alis&eacute; que bient&ocirc;t mon tour viendrait. Et de penser que l&agrave; o&ugrave; il n&#39;y n&#39;avait aucun une telle chose comme temps je pourrais facilement imaginer que ma souffrance &eacute;tait immuable pendant des mois avant la mort enfin lib&eacute;r&eacute; moi !</p>\r\n<p>\r\n	<br />\r\n	Les Mahars avait pay&eacute; pas la moindre attention &agrave; moi, comme j&#39;avais &eacute;t&eacute; amen&eacute; dans la pi&egrave;ce. Ils &eacute;taient si profond&eacute;ment immerg&eacute; dans leur travail que je suis s&ucirc;r qu&#39;ils ne savaient m&ecirc;me pas que le Sagoths est entr&eacute; avec moi. La porte &eacute;tait proche. Ce que je pouvais l&#39;atteindre ! Mais ces cha&icirc;nes lourdes interdit une telle possibilit&eacute;. J&#39;ai cherch&eacute; un moyen d&#39;&eacute;chapper &agrave; mes obligations. Sur le plancher entre moi et les Mahars jeter un petit instrument chirurgical dont l&#39;un d&#39;eux doit avoir tomb&eacute;. Il avait l&#39;air pas contrairement &agrave; un bouton-crochet, mais &eacute;tait beaucoup plus petite, et son point &eacute;tait aiguis&eacute;. Une centaine de fois dans mes jours d&#39;enfance avais j&#39;ai pris des serrures avec un bouton-crochet. Pourrais j&#39;arrive mais que peu d&#39;acier poli, que je pourrais encore effet au moins un refuge temporaire.</p>\r\n', '<p>\r\n	It was hopeless, and so I walked in silence beside my guard down through the dark corridors and runways toward my awful doom. At a low level we came upon a number of lighted chambers in which we saw many Mahars engaged in various occupations. To one of these chambers my guard escorted me, and before leaving they chained me to a side wall. There were other humans similarly chained. Upon a long table lay a victim even as I was ushered into the room. Several Mahars stood about the poor creature holding him down so that he could not move. Another, grasping a sharp knife with her three-toed fore foot, was laying open the victim&#39;s chest and abdomen. No anesthetic had been administered and the shrieks and groans of the tortured man were terrible to hear. This, indeed, was vivisection with a vengeance. Cold sweat broke out upon me as I realized that soon my turn would come. And to think that where there was no such thing as time I might easily imagine that my suffering was enduring for months before death finally released me!</p>\r\n<p>\r\n	<br />\r\n	The Mahars had paid not the slightest attention to me as I had been brought into the room. So deeply immersed were they in their work that I am sure they did not even know that the Sagoths had entered with me. The door was close by. Would that I could reach it! But those heavy chains precluded any such possibility. I looked about for some means of escape from my bonds. Upon the floor between me and the Mahars lay a tiny surgical instrument which one of them must have dropped. It looked not unlike a button-hook, but was much smaller, and its point was sharpened. A hundred times in my boyhood days had I picked locks with a button-hook. Could I but reach that little bit of polished steel I might yet effect at least a temporary escape.</p>\r\n', 0),
(10, 'Test Beach', 'Test Beach', 1, '', 'test-beach', 'test-beach', '', '<p>\r\n Test</p>\r\n', '<p>\r\n TEst</p>\r\n', 23),
(11, 'Beach Test Twoooo', 'Beach Test Tw0000', 1, '', 'beach-test-twoooo', 'beach-test-tw0000', '', '<p>\r\n	hello beach</p>\r\n', '<p>\r\n	hello beach</p>\r\n', 30),
(12, 'Two beaches', 'Two beaches', 1, '', 'two-beaches', 'two-beaches', '', '', '', 40);

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
  `draws_from` varchar(40) NOT NULL,
  `url_prefix` varchar(40) NOT NULL,
  `en_url_prefix` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `afric_aventure_beach_vacation_categories`
--

INSERT INTO `afric_aventure_beach_vacation_categories` (`id`, `title`, `en_title`, `parent`, `url`, `en_url`, `draws_from`, `url_prefix`, `en_url_prefix`) VALUES
(1, 'Destinations de Vacances de Plage', 'Beach Vacation Destinations', 0, 'destinations-de-vacances-de-plage', 'beach-vacation-destinations', 'afric_aventure_beach_vacations', 'plage', 'beach'),
(2, 'Thèmes de Vacances Plage', 'Beach Vacation Themes', 0, 'themes-de-vacances-plage', 'beach-vacation-themes', 'afric_aventure_beach_vacations', 'plage', 'beach');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1009 ;

--
-- Dumping data for table `afric_aventure_captcha`
--

INSERT INTO `afric_aventure_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(722, 1360845663, '127.0.0.1', 'PCXSGMD'),
(723, 1360845851, '127.0.0.1', 'E5B3XPH'),
(724, 1360846670, '127.0.0.1', '29UGRWV'),
(725, 1360907876, '127.0.0.1', 'X4APDCM'),
(726, 1360907921, '127.0.0.1', '6EYZHRK'),
(727, 1360908216, '127.0.0.1', 'VGYZ6ED'),
(728, 1360908318, '127.0.0.1', 'CZHGAE7'),
(729, 1360908546, '127.0.0.1', '6JP4B2V'),
(730, 1360908554, '127.0.0.1', '9AVWD5B'),
(731, 1360915460, '127.0.0.1', 'WRQH982'),
(732, 1360915526, '127.0.0.1', 'Y6SC3EM'),
(733, 1360943733, '127.0.0.1', 'VQTSZCG'),
(734, 1360943755, '127.0.0.1', 'TBU4PHC'),
(735, 1361167764, '127.0.0.1', 'NGFE9H5'),
(736, 1361167923, '127.0.0.1', 'Y8USGWQ'),
(737, 1361167982, '127.0.0.1', '2YBSVQJ'),
(738, 1361170184, '127.0.0.1', 'BNMP487'),
(739, 1361170252, '127.0.0.1', 'HYGA6DU'),
(740, 1361170336, '127.0.0.1', 'R3HPY8B'),
(741, 1361170384, '127.0.0.1', '6BP9XVS'),
(742, 1361170555, '127.0.0.1', 'ZQR6NA9'),
(743, 1361170683, '127.0.0.1', '86HTA5P'),
(744, 1361170747, '127.0.0.1', 'Q9JZM64'),
(745, 1361170873, '127.0.0.1', 'E2Y93MA'),
(746, 1361170923, '127.0.0.1', 'PW42MXV'),
(747, 1361171081, '127.0.0.1', 'TG9PVBE'),
(748, 1361171200, '127.0.0.1', 'SVKD3WM'),
(749, 1361171281, '127.0.0.1', 'MAXWJUE'),
(750, 1361171446, '127.0.0.1', 'FHMYVCK'),
(751, 1361171664, '127.0.0.1', 'M2JNU9W'),
(752, 1361171672, '127.0.0.1', 'CB8XFQ7'),
(753, 1361171716, '127.0.0.1', '3WQD8HY'),
(754, 1361172004, '127.0.0.1', 'VSFHXY2'),
(755, 1361172011, '127.0.0.1', 'DJ4EKQP'),
(756, 1361172306, '127.0.0.1', 'H2R784E'),
(757, 1361172408, '127.0.0.1', '7C23W5Z'),
(758, 1361172430, '127.0.0.1', 'J5B7QKN'),
(759, 1361172475, '127.0.0.1', 'Q5J328H'),
(760, 1361172485, '127.0.0.1', '3CNT4XJ'),
(761, 1361172584, '127.0.0.1', 'MQWVHRK'),
(762, 1361172590, '127.0.0.1', 'DKRVM7U'),
(763, 1361172724, '127.0.0.1', 'KQ7WPXG'),
(764, 1361172767, '127.0.0.1', '4EHCXTY'),
(765, 1361172797, '127.0.0.1', 'TNXSGE7'),
(766, 1361172850, '127.0.0.1', 'AJRM3KU'),
(767, 1361173130, '127.0.0.1', '3KTVH4Z'),
(768, 1361173180, '127.0.0.1', '6P7JZE2'),
(769, 1361173294, '127.0.0.1', 'P8FEAH3'),
(770, 1361173335, '127.0.0.1', '3GW2P8U'),
(771, 1361173375, '127.0.0.1', 'BZFUWDE'),
(772, 1361173423, '127.0.0.1', 'KUCZ3N7'),
(773, 1361173495, '127.0.0.1', '5PTGF3S'),
(774, 1361173509, '127.0.0.1', 'P8JEDQ3'),
(775, 1361173514, '127.0.0.1', 'KGMAYX3'),
(776, 1361173514, '127.0.0.1', 'ZN56QTF'),
(777, 1361173515, '127.0.0.1', 'EUNYKW4'),
(778, 1361173515, '127.0.0.1', 'UNGVE7W'),
(779, 1361173615, '127.0.0.1', 'EZPJGH8'),
(780, 1361173627, '127.0.0.1', 'DU53QK2'),
(781, 1361173628, '127.0.0.1', 'T5R7E9P'),
(782, 1361173628, '127.0.0.1', 'DREKT63'),
(783, 1361173715, '127.0.0.1', 'NQFC68A'),
(784, 1361173786, '127.0.0.1', 'NP64KQ9'),
(785, 1361173826, '127.0.0.1', '46GJYAU'),
(786, 1361173897, '127.0.0.1', 'F7WM6Z8'),
(787, 1361173897, '127.0.0.1', 'B3AZF9N'),
(788, 1361173897, '127.0.0.1', 'WYDGEB9'),
(789, 1361174011, '127.0.0.1', '6H8K9ZV'),
(790, 1361174294, '127.0.0.1', 'NTJG4AM'),
(791, 1361174338, '127.0.0.1', 'JC3BMW9'),
(792, 1361187500, '127.0.0.1', 'S3ZM86T'),
(793, 1361187609, '127.0.0.1', '4WB3H5Y'),
(794, 1361188948, '127.0.0.1', 'J3NPKQB'),
(795, 1361188982, '127.0.0.1', 'SXYG9E3'),
(796, 1361190454, '127.0.0.1', '73DXVP5'),
(797, 1361190951, '127.0.0.1', 'HFJZNX7'),
(798, 1361361159, '127.0.0.1', '9DHFRBV'),
(799, 1361861540, '127.0.0.1', 'GVYTZ94'),
(800, 1361947702, '127.0.0.1', 'PQGUC7K'),
(801, 1361952817, '127.0.0.1', 'AWGZSJK'),
(802, 1362554352, '127.0.0.1', '9GKAY53'),
(803, 1362555033, '127.0.0.1', 'V2BTPRD'),
(804, 1362555331, '127.0.0.1', 'R25GT6D'),
(805, 1362555569, '127.0.0.1', 'PS7NDHG'),
(806, 1362555665, '127.0.0.1', 'ZAY8XCS'),
(807, 1362555706, '127.0.0.1', '867TAZ5'),
(808, 1362555732, '127.0.0.1', 'PGKV9DX'),
(809, 1362557213, '127.0.0.1', '8CQP4S9'),
(810, 1362557244, '127.0.0.1', '2BW9FQP'),
(811, 1362557449, '127.0.0.1', 'SJF49ZQ'),
(812, 1362557680, '127.0.0.1', 'R7VSFNT'),
(813, 1362557700, '127.0.0.1', 'DGH5P3Z'),
(814, 1362573239, '127.0.0.1', 'J7BT4YE'),
(815, 1362573257, '127.0.0.1', 'D57PFEY'),
(816, 1362573502, '127.0.0.1', '546CTUD'),
(817, 1362573547, '127.0.0.1', 'YEK2WNM'),
(818, 1362573731, '127.0.0.1', '5MZY8AS'),
(819, 1362574190, '127.0.0.1', 'R4TKN6P'),
(820, 1362574228, '127.0.0.1', 'ZRTXYEV'),
(821, 1362575590, '127.0.0.1', 'PYS63JF'),
(822, 1362577123, '127.0.0.1', 'TV47Y2U'),
(823, 1362577241, '127.0.0.1', 'M6BU4VQ'),
(824, 1362577241, '127.0.0.1', 'GUS2AQN'),
(825, 1362635072, '127.0.0.1', '3UGJDCA'),
(826, 1362635080, '127.0.0.1', 'QPFT4CJ'),
(827, 1362635883, '127.0.0.1', 'GT8XZWN'),
(828, 1362636205, '127.0.0.1', 'C4RHVQK'),
(829, 1362636274, '127.0.0.1', 'HE46WXA'),
(830, 1362636354, '127.0.0.1', '5MQK2C4'),
(831, 1362636419, '127.0.0.1', 'NMDW6VB'),
(832, 1362636545, '127.0.0.1', 'W4YA8TB'),
(833, 1362636697, '127.0.0.1', '3HS7XGT'),
(834, 1362637044, '127.0.0.1', 'U9AEW47'),
(835, 1362637237, '127.0.0.1', 'QT5N83H'),
(836, 1362637368, '127.0.0.1', 'AEYK38Q'),
(837, 1362637435, '127.0.0.1', 'NSC8F69'),
(838, 1362637528, '127.0.0.1', 'FZGC3BV'),
(839, 1362638017, '127.0.0.1', '2X456ZG'),
(840, 1362638060, '127.0.0.1', 'QCZTYAR'),
(841, 1362638175, '127.0.0.1', '4JUVMS7'),
(842, 1362638439, '127.0.0.1', 'FRD3A4J'),
(843, 1362638485, '127.0.0.1', 'JR573NU'),
(844, 1362638558, '127.0.0.1', 'H5PVAC8'),
(845, 1362638715, '127.0.0.1', 'G9SKYVC'),
(846, 1362638794, '127.0.0.1', 'D5HY9ZM'),
(847, 1362638919, '127.0.0.1', 'FKBM3QA'),
(848, 1362639080, '127.0.0.1', '79KCD56'),
(849, 1362639264, '127.0.0.1', 'DYZARHM'),
(850, 1362639380, '127.0.0.1', '4P9KZBA'),
(851, 1362639572, '127.0.0.1', 'X3HGT8Q'),
(852, 1362639593, '127.0.0.1', 'GP7VEUW'),
(853, 1362639603, '127.0.0.1', 'UR86AYN'),
(854, 1362639668, '127.0.0.1', '3NA45PX'),
(855, 1362639683, '127.0.0.1', 'TQSEKR5'),
(856, 1362639694, '127.0.0.1', '63VFNXW'),
(857, 1362639864, '127.0.0.1', 'RMXF5HS'),
(858, 1362640039, '127.0.0.1', 'UBMNH9V'),
(859, 1362640092, '127.0.0.1', '83THSZQ'),
(860, 1362640160, '127.0.0.1', '4STZRCB'),
(861, 1362644310, '127.0.0.1', 'FZ6YGBC'),
(862, 1362644468, '127.0.0.1', 'NKWMGAX'),
(863, 1362647605, '127.0.0.1', 'CQDZN2F'),
(864, 1362647754, '127.0.0.1', '8XYS4CK'),
(865, 1362647994, '127.0.0.1', 'FNC3WM5'),
(866, 1362660980, '127.0.0.1', '5HJVZDB'),
(867, 1362661293, '127.0.0.1', 'TDNE23U'),
(868, 1362661500, '127.0.0.1', 'AHDT2S6'),
(869, 1362661526, '127.0.0.1', 'W72BQZC'),
(870, 1362661531, '127.0.0.1', 'C78ZV9J'),
(871, 1362661531, '127.0.0.1', 'F7NE32J'),
(872, 1362661531, '127.0.0.1', 'T9VJG4C'),
(873, 1362661531, '127.0.0.1', 'D7WNHYQ'),
(874, 1362661532, '127.0.0.1', 'NGEPHDB'),
(875, 1362661580, '127.0.0.1', 'HAV5D3X'),
(876, 1362661747, '127.0.0.1', 'AFJRU45'),
(877, 1362662071, '127.0.0.1', 'VKMHTF5'),
(878, 1362662076, '127.0.0.1', 'Y5NHZFA'),
(879, 1362662249, '127.0.0.1', 'B3J6RXW'),
(880, 1362662361, '127.0.0.1', 'GJPFDAU'),
(881, 1362662420, '127.0.0.1', '986RCTY'),
(882, 1362662475, '127.0.0.1', '9E6MBGF'),
(883, 1362662500, '127.0.0.1', '36GYXT7'),
(884, 1362662799, '127.0.0.1', 'Z8FS5EW'),
(885, 1362662835, '127.0.0.1', '95QSJ7Z'),
(886, 1362662916, '127.0.0.1', 'CUT5J2Z'),
(887, 1362662997, '127.0.0.1', 'M9G7K3U'),
(888, 1362664055, '127.0.0.1', 'E4SHWVM'),
(889, 1362664072, '127.0.0.1', 'U6E3NDF'),
(890, 1362664079, '127.0.0.1', 'AERN85F'),
(891, 1362664079, '127.0.0.1', '7X254ZK'),
(892, 1362664079, '127.0.0.1', '6PG3VDE'),
(893, 1362664080, '127.0.0.1', 'WSJE6DK'),
(894, 1362664080, '127.0.0.1', 'CDVSNW3'),
(895, 1362664080, '127.0.0.1', 'DRWYSKV'),
(896, 1362664080, '127.0.0.1', '7WX5JYV'),
(897, 1362664140, '127.0.0.1', 'K7ZEH36'),
(898, 1362664196, '127.0.0.1', 'AXG4PFN'),
(899, 1362664199, '127.0.0.1', 'NW89TDM'),
(900, 1362664215, '127.0.0.1', 'VENH56A'),
(901, 1362664529, '127.0.0.1', '7AEJNXB'),
(902, 1362664538, '127.0.0.1', '2MHZVGC'),
(903, 1362664538, '127.0.0.1', 'TZU6KC4'),
(904, 1362664538, '127.0.0.1', 'U8HPFT3'),
(905, 1362664538, '127.0.0.1', 'VJKYCUN'),
(906, 1362664614, '127.0.0.1', 'XBZU53S'),
(907, 1362664665, '127.0.0.1', 'UETPBMZ'),
(908, 1362664679, '127.0.0.1', 'AYCE3JK'),
(909, 1362664702, '127.0.0.1', 'Y9KUGX5'),
(910, 1362664732, '127.0.0.1', '2XMHYRG'),
(911, 1362664736, '127.0.0.1', '8AYXJ54'),
(912, 1362664979, '127.0.0.1', 'ZU4JK27'),
(913, 1362665080, '127.0.0.1', 'YET4Q7R'),
(914, 1362665087, '127.0.0.1', 'J9FRPNA'),
(915, 1362665087, '127.0.0.1', 'RNJG9K6'),
(916, 1362665103, '127.0.0.1', 'X83KEYQ'),
(917, 1362665209, '127.0.0.1', 'MJT3PAH'),
(918, 1362665215, '127.0.0.1', 'P23TZNV'),
(919, 1362665216, '127.0.0.1', 'KDM3VBG'),
(920, 1362665216, '127.0.0.1', 'N26QXH9'),
(921, 1362665362, '127.0.0.1', 'VGPQMEN'),
(922, 1362665396, '127.0.0.1', 'CZ8TPRX'),
(923, 1362665437, '127.0.0.1', 'HW4PNM9'),
(924, 1362665449, '127.0.0.1', 'ATV8M45'),
(925, 1362666782, '127.0.0.1', 'ZDN8BQX'),
(926, 1362666806, '127.0.0.1', 'RDQCTYS'),
(927, 1362666833, '127.0.0.1', 'Y59X8H7'),
(928, 1362666856, '127.0.0.1', 'CHKPR7Z'),
(929, 1362666870, '127.0.0.1', '4WAMTX9'),
(930, 1362667897, '127.0.0.1', '3NFKAZ7'),
(931, 1362668759, '127.0.0.1', 'CG2N643'),
(932, 1362668782, '127.0.0.1', 'NJH59TK'),
(933, 1362668802, '127.0.0.1', 'DFE8PSK'),
(934, 1362728146, '127.0.0.1', 'ZYM4Q2B'),
(935, 1362728875, '127.0.0.1', 'G946HXM'),
(936, 1362729118, '127.0.0.1', 'ADE4MY5'),
(937, 1362745882, '127.0.0.1', '4PA9SUK'),
(938, 1362746663, '127.0.0.1', '43RPXUC'),
(939, 1362747223, '127.0.0.1', 'VS9HQKX'),
(940, 1362748424, '127.0.0.1', 'H78S9A3'),
(941, 1362748432, '127.0.0.1', 'RD9MKBP'),
(942, 1362748475, '127.0.0.1', 'KX8HPBR'),
(943, 1362748508, '127.0.0.1', 'SC7F5MN'),
(944, 1362748538, '127.0.0.1', '2MY5ZC6'),
(945, 1362748575, '127.0.0.1', 'V4PAQZT'),
(946, 1362748604, '127.0.0.1', '4JW3BU8'),
(947, 1362748611, '127.0.0.1', 'KX8ABPH'),
(948, 1363090486, '127.0.0.1', 'S7K3CXW'),
(949, 1363090567, '127.0.0.1', '269XZPN'),
(950, 1363096110, '127.0.0.1', 'UFGE325'),
(951, 1363097090, '127.0.0.1', '9H2BJK7'),
(952, 1363097141, '127.0.0.1', 'ZPFJ3QD'),
(953, 1363097196, '127.0.0.1', '9Z8VE63'),
(954, 1363097205, '127.0.0.1', 'CZSXUKW'),
(955, 1363097481, '127.0.0.1', 'X9J2VFW'),
(956, 1363099456, '127.0.0.1', '8J9WAD5'),
(957, 1363166472, '127.0.0.1', '3M54TKV'),
(958, 1363166580, '127.0.0.1', 'W2NSDEQ'),
(959, 1363166606, '127.0.0.1', 'AT498CF'),
(960, 1363166696, '127.0.0.1', 'JRESB9D'),
(961, 1363166884, '127.0.0.1', 'Y8UW9XT'),
(962, 1363166922, '127.0.0.1', 'M2GQ3WH'),
(963, 1363166930, '127.0.0.1', 'TYD673W'),
(964, 1363166930, '127.0.0.1', 'PW85U4K'),
(965, 1363167024, '127.0.0.1', 'UZVEN6F'),
(966, 1363167107, '127.0.0.1', 'VZFQ8HW'),
(967, 1363167309, '127.0.0.1', 'UG8CH4X'),
(968, 1363167351, '127.0.0.1', 'JN6WEY7'),
(969, 1363167604, '127.0.0.1', '7RGWPT6'),
(970, 1363167922, '127.0.0.1', '5X2M7QV'),
(971, 1363167972, '127.0.0.1', 'SX9PQNV'),
(972, 1363168031, '127.0.0.1', '79SMYHR'),
(973, 1363168066, '127.0.0.1', 'BGWKECH'),
(974, 1363168977, '127.0.0.1', 'JZ4YAD7'),
(975, 1363169164, '127.0.0.1', 'JWDB3U4'),
(976, 1363169248, '127.0.0.1', 'UTN8MFJ'),
(977, 1363175903, '127.0.0.1', '3TZS58X'),
(978, 1363175926, '127.0.0.1', 'JNDXPF3'),
(979, 1363175965, '127.0.0.1', '9TPWSYE'),
(980, 1363177839, '127.0.0.1', 'J87VKAZ'),
(981, 1363177919, '127.0.0.1', '4HZ3RCK'),
(982, 1363177950, '127.0.0.1', 'D4HGC36'),
(983, 1363178331, '127.0.0.1', 'S52JRCY'),
(984, 1363178390, '127.0.0.1', 'GQJZRY2'),
(985, 1363178414, '127.0.0.1', 'TN8MJS3'),
(986, 1363178421, '127.0.0.1', 'M5J6AEK'),
(987, 1363178472, '127.0.0.1', 'PMHWB3N'),
(988, 1363178619, '127.0.0.1', '3HZ4NRX'),
(989, 1363178714, '127.0.0.1', '2QPZ5BR'),
(990, 1363179176, '127.0.0.1', '2SCA3GD'),
(991, 1363179253, '127.0.0.1', 'VAW9728'),
(992, 1363179442, '127.0.0.1', 'ATCFK8E'),
(993, 1363179727, '127.0.0.1', '2BZ5PES'),
(994, 1363179823, '127.0.0.1', 'MAB78HW'),
(995, 1363179966, '127.0.0.1', '3UST8FD'),
(996, 1363180028, '127.0.0.1', 'UB6HVTG'),
(997, 1363180342, '127.0.0.1', 'Z9QH4US'),
(998, 1363180592, '127.0.0.1', 'WNZTDAX'),
(999, 1363180884, '127.0.0.1', 'VSQC5RH'),
(1000, 1363180906, '127.0.0.1', 'U2QRASC'),
(1001, 1363182581, '127.0.0.1', '3BCKQN2'),
(1002, 1363182646, '127.0.0.1', 'BP9NX7Q'),
(1003, 1363182746, '127.0.0.1', 'WQDS36M'),
(1004, 1363182807, '127.0.0.1', 'DF2U67G'),
(1005, 1363182878, '127.0.0.1', '3WKAME2'),
(1006, 1363182967, '127.0.0.1', 'JPUCGK9'),
(1007, 1363183036, '127.0.0.1', 'Q98UHD5'),
(1008, 1363183446, '127.0.0.1', '89YPJVQ');

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
  `site_url` varchar(255) NOT NULL,
  `site_en_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `afric_aventure_pages`
--

INSERT INTO `afric_aventure_pages` (`id`, `title`, `en_title`, `parent_page`, `url`, `en_url`, `thumbnail`, `draws_from`, `priority`, `browser_title`, `text`, `en_text`, `active`, `site_url`, `site_en_url`) VALUES
(1, 'Accueil', 'Home', 0, 'home', 'home', '', '', 1, 'Afric'' Aventure | Home', '', '', 'TRUE', '', ''),
(2, 'Vacances Plage', 'Beach Vacations', 0, 'vacances-plage', 'beach-vacations', '', 'afric_aventure_beach_vacation_categories', 3, 'Afric'' Aventure | Beach Vacations', '', '', 'TRUE', '', ''),
(3, 'Safaris', 'Safaris', 0, 'safaris', 'safaris', '', 'afric_aventure_safaris_categories', 2, 'Afric'' Aventure | Safaris', '', '', 'TRUE', '', ''),
(4, 'Hébergement', 'Accomodations', 0, 'hebergement', 'accommodations', '', 'afric_aventure_accomodations_categories', 4, 'Afric'' Aventure | Accomodations', '', '', 'TRUE', '', ''),
(5, 'Qui Sommes-Nous', 'About Us', 0, 'qui-sommes-nous', 'about-us', '', '', 5, 'Afric'' Aventure | About Us', '<p>\r\n	Afric&rsquo;Aventure a &eacute;t&eacute; cr&eacute;&eacute;e en 2001 et est dirig&eacute;e par Anne Saels, n&eacute;e au Congo (RDC) et qui a v&eacute;cu la plus grande partie de sa vie en Afrique.</p>\r\n<p>\r\n	Au fil des ann&eacute;es, une petite &eacute;quipe, passionn&eacute;e, s&rsquo;est cr&eacute;&eacute;e, qui tend &agrave; offrir un service tant professionnel que personnalis&eacute; au sein d&rsquo;un environnement convivial.</p>\r\n<p>\r\n	Un nouveau safari est planifi&eacute; et organis&eacute; pour chaque client. Les itin&eacute;raires sont personnalis&eacute;s, utilisant nos v&eacute;hicules, des vols r&eacute;guliers ou non r&eacute;guliers s&ucirc;rs, des logements choisis. Les compagnies avec lesquelles nous travaillons sont choisies pour la qualit&eacute; de leurs services, nous n&rsquo;accordons aucune exclusivit&eacute;.</p>\r\n<p>\r\n	Notre promotion se fait principalement par le bouche &agrave; oreille, et c&rsquo;est l&agrave; une excellente motivation pour vous donner le meilleur service possible.</p>\r\n<p>\r\n	Etre reconnu comme organisateur de safari de qualit&eacute; en Tanzanie du Sud est notre but, et pour l&rsquo;atteindre, nous vous donnerons le meilleur !</p>\r\n<p>\r\n	Nous avons une notre licence tanzanienne comme tour op&eacute;rateur, &quot;Business Licence&quot; nr 00915506,<br />\r\n	la licence comme agent de tourisme &quot;Tourist Agent Licence&quot; classe A nr 00010423<br />\r\n	et nous sommes membre de <a href="http://www.tatotz.com/">l&#39;Association Tanzanienne des Tour Operateurs.</a></p>\r\n', '<p>\r\n	Afric&rsquo;Aventure was established in 2001 and is managed by Anne Saels who was born in Congo (DRC) and has lived almost all of her life in Africa.</p>\r\n<p>\r\n	Year after year, a small, passionate team has built up, which tries to give a professional and personalized service in a friendly environment.</p>\r\n<p>\r\n	A new safari is planned and organized for each client. Itineraries are personalized, using our own vehicles, secure scheduled or chartered flights and chosen accommodation. Companies we are working with are chosen for the service they give.</p>\r\n<p>\r\n	Our promotion is done mainly by recommandation, and this is an excellent reason to give you the best service possible.</p>\r\n<p>\r\n	Our aim is to be recognized as a quality safari&rsquo;s organizer for Southern Tanzania, and therefore, we&rsquo;ll give you the best!</p>\r\n<p>\r\n	We have the Tanzanian Business Licence nr 00915506 as Tour Operator,<br />\r\n	the Tourist Agent Licence class A nr 00010423<br />\r\n	and we are member from the<a href="http://www.tatotz.com/"> Tanzania Association of Tour Operator</a>.</p>\r\n', 'TRUE', '', ''),
(6, 'Nous Contacter', 'Contact Us', 0, 'nous-contacter', 'contact-us', '', '', 6, 'Afric'' Aventure | Contact Us', '<p>\r\n	Maecenas vel odio turpis. Donec sapien ante, accumsan et pulvinar ac, mollis id</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 'TRUE', '', ''),
(20, 'Parks Served', '', 3, 'parks-served', '', '', '', 1, '', '', '', 'TRUE', '', ''),
(21, 'Themed Safaris', '', 3, 'themed-safaris', '', '', '', 2, '', '', '', 'TRUE', '', ''),
(22, 'By Park', '', 4, 'by-park', '', '', '', 1, '', '', '', 'TRUE', '', ''),
(23, 'By Beach', '', 4, 'by-beach', '', '', '', 2, '', '', '', 'TRUE', '', ''),
(24, 'Test Page', 'The Testing Page', 0, 'test-page', 'the-testing-page', '', '', 0, 'Test Page Test', '', '', 'FALSE', 'http://localhost/afric-aventure/page/test-page', 'http://localhost/afric-aventure/en/page/the-testing-page');

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
  `accomodation_park` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `afric_aventure_safaris`
--

INSERT INTO `afric_aventure_safaris` (`id`, `title`, `en_title`, `category`, `description`, `url`, `en_url`, `thumbnail`, `text`, `en_text`, `accomodation_park`) VALUES
(1, 'Thematique Safari 1', 'Theme Safari 1', 2, 'sjss kskskks sksk kskkhgkg ksk kj sjk kgjkjg jgkfgjk h khfghsgriirgtrig ghfkjgkgskhgjh  hekl o  dsthis is hjushtre  a teadfrty ', 'thematique-safari-1', 'theme-safari-1', 'animals-q-c-450-300-9.jpg', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-300-9.jpg" style="width: 450px; height: 300px; float: left;" />Praesent fringilla neque sed lectus condimentum ut feugiat nisl ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris feugiat ultrices sollicitudin. Nulla in nibh lacus. Curabitur pellentesque, orci et molestie pharetra, libero elit laoreet risus, nec suscipit felis massa nec arcu. Proin facilisis sagittis risus at volutpat. Ut iaculis eros ac lectus tristique iaculis. Nullam lobortis faucibus massa et dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempus.</p>\r\n<p>\r\n	Praesent fringilla neque sed lectus condimentum ut feugiat nisl ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris feugiat ultrices sollicitudin. Nulla in nibh lacus. Curabitur pellentesque, orci et molestie pharetra, libero elit laoreet risus, nec suscipit felis massa nec arcu. Proin facilisis sagittis risus at volutpat. Ut iaculis eros ac lectus tristique iaculis. Nullam lobortis faucibus massa et dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempus. <img ac="" adipiscing="" aliquam="" alt="" amet="" ante="" arcu.="" at="" c="" commodo="" condimentum="" consectetur="" cubilia="" curabitur="" dictum.="" dolor="" egestas="" eget="" eleifend="" elit="" elit.="" eros="" et="" facilisis="" faucibus="" felis="" feugiat="" feugiat.="" float:="" fringilla="" height:="" iaculis="" iaculis.="" id="" img="" in="" interdum="" ipsum="" lacus.="" laoreet="" lectus="" leo.="" libero="" lobortis="" lorem="" luctus="" malesuada.="" massa="" mauris="" molestie="" mollis="" nec="" neque="" nibh="" nisl="" nulla="" nullam="" orci="" pellentesque="" porttitor="" posuere="" praesent="" pretium="" primis="" proin="" que="" quis="" risus="" sagittis="" sed="" sem.="" sit="" sollicitudin.="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-350-10.jpg" style="float: left;" suscipit="" tincidunt="" tortor="" tristique="" ullamcorper="" ultrices="" ultrices.="" ut="" velit="" vestibulum="" volutpat.="" /></p>\r\n<p>\r\n	Praesent fringilla neque sed lectus condimentum ut feugiat nisl ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris feugiat ultrices sollicitudin. Nulla in nibh lacus. Curabitur pellentesque, orci et molestie pharetra, libero elit laoreet risus, nec suscipit felis massa nec arcu. Proin facilisis sagittis risus at volutpat. Ut iaculis eros ac lectus tristique iaculis. Nullam lobortis faucibus massa et dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempus.tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestastincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '<p>\r\n	Praesent fringilla neque sed lectus condimentum ut feugiat nisl ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris feugiat ultrices sollicitudin. Nulla in nibh lacus. Curabitur pellentesque, orci et molestie pharetra, libero elit laoreet risus, nec suscipit felis massa nec arcu. Proin facilisis sagittis risus at volutpat. Ut iaculis eros ac lectus tristique iaculis. Nullam lobortis faucibus massa et dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempus.<img ac="" adipiscing="" alt="" ante="" arcu.="" at="" commodo="" condimentum="" consectetur="" cubilia="" curabitur="" dictum.="" dolor="" eget="" eleifend="" elit="" elit.="" eros="" et="" facilisis="" faucibus="" felis="" feugiat="" float:="" fringilla="" height:="" iaculis="" iaculis.="" id="" img="" in="" ipsum="" lacus.="" laoreet="" lectus="" leo.="" libero="" lobortis="" lorem="" luctus="" massa="" mauris="" molestie="" nec="" neque="" nibh="" nisl="" nulla="" nullam="" orci="" posuere="" praesent="" pretium="" primis="" proin="" risus="" sagittis="" sed="" sit="" sollicitudin.="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg" style="float: right;" suscipit="" tristique="" ultrices="" ultrices.="" ut="" vestibulum="" volutpat.="" />mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempus.adipiscing elit. Mauris feugiat ultrices sollicitudin. Nulla in nibh lacus. Curabitur pellentesque, orci et molestie pharetra, libero elit laoreet risus, nec suscipit felis massa nec arcu. Proin facilisis sagittis risus at volutpat. Ut iaculis eros ac lectus tristique iaculis. Nullam lobortis faucibus massa et dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempusmollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempus.adipiscing elit. Mauris feugiat ultrices sollicitudin. Nulla in nibh lacus. Curabitur pellentesque, orci et molestie pharetra, libero elit laoreet risus, nec suscipit felis massa nec arcu. Proin facilisis sagittis risus at volutpat. Ut iaculis eros ac lectus tristique iaculis. Nullam lobortis faucibus massa et dictum. Vestibulum ante ipsum primis in faucibus</p>\r\n<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg" style="width: 250px; height: 200px; float: right;" />orci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempusorci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempusorci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempusorci luctus et ultrices posuere cubilia Curae; In nulla velit, pretium eget commodo eu, eleifend id leo. Pellentesque mollis aliquam feugiat. Mauris lorem turpis, ullamcorper sed interdum a, tincidunt quis sem. Aliquam id velit sit amet eros porttitor malesuada. In ac ipsum eget tortor egestas tempus</p>\r\n', 0),
(2, 'Thematique Safari 2', 'Themed Safari 2', 2, 'jss kskskks sksk kskkhgkg ksk kj sjk kgjkjg jgkfgjk h khfghsgriirgtrig ghfkjgkgskhgjh  hekl o  dsthis is hjushtre  a teadfrty ', 'thematique-safari-2', 'themed-safari-2', 'animals-q-c-250-200-8.jpg', '<p style="text-align: right;">\r\n	&nbsp;</p>\r\n<p>\r\n	Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.</p>\r\n<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le <img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg" style="width: 250px; height: 200px; float: right;" />jeddak des hordes de Warhoon.Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.</p>\r\n<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.</p>\r\n<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-350-10.jpg" style="width: 450px; height: 350px; float: left;" /></p>\r\n<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.</p>\r\n', '<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg" style="width: 250px; height: 200px; float: right;" /></p>\r\n<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s</p>\r\n<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu <img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-350-10.jpg" style="width: 450px; height: 350px; float: right;" />apr&egrave;sComme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s</p>\r\n<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s</p>\r\n', 0),
(12, 'Parc National 2', 'National Park 2', 1, '', 'parc-national-2', 'national-park-2', 'animals-q-c-450-350-10.jpg', '<p>\r\n	Et permettez-moi en ce lieu et de fa&ccedil;on &eacute;mouvante te, ye armateurs de Nantucket ! M&eacute;fiez-vous de s&#39;enr&ocirc;ler dans votre p&ecirc;che vigilants tout gar&ccedil;on maigre front et les yeux creux ; donn&eacute; au recueillement hors de saison ; et qui vous propose d&#39;exp&eacute;dier avec le Phaedon au lieu de Bowditch dans sa t&ecirc;te. M&eacute;fiez-vous d&#39;une telle personne, je dis ; votre baleines doivent &ecirc;tre consid&eacute;r&eacute;s avant qu&#39;ils peuvent &ecirc;tre tu&eacute;s ; et cette platonicien jeune aux yeux enfonc&eacute;s va vous remorquer dix se r&eacute;veille autour du monde et jamais vous rendre une chopine de sperme les plus riches. Ni ces monitions inutiles &agrave; tous. De nos jours, la p&ecirc;che &agrave; la baleine-fournit un asile pour nombreux hommes jeunes <img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-350-10.jpg" style="width: 450px; height: 350px; float: left;" />romantiques, m&eacute;lancoliques et distraits, d&eacute;go&ucirc;t&eacute; par les soucis de carking de terre et en cherchant de sentiment dans le goudron et le lard. Childe Harold pas assez lui-m&ecirc;me est perch&eacute; sur le m&acirc;t de quelques malheureux d&eacute;&ccedil;u baleine-bateau et dans l&#39;expression de mauvaise humeur &eacute;jaculats: &mdash;</p>\r\n<p>\r\n	Et permettez-moi en ce lieu et de fa&ccedil;on &eacute;mouvante te, ye armateurs de Nantucket ! M&eacute;fiez-vous de s&#39;enr&ocirc;ler dans votre p&ecirc;che vigilants tout gar&ccedil;on maigre front et les yeux creux ; donn&eacute; au recueillement hors de saison ; et qui vous propose d&#39;exp&eacute;dier avec le Phaedon au lieu de Bowditch dans sa t&ecirc;te. M&eacute;fiez-vous d&#39;une telle personne, je dis ; votre baleines doivent &ecirc;tre consid&eacute;r&eacute;s avant qu&#39;ils peuvent &ecirc;tre tu&eacute;s ; et cette platonicien jeune aux yeux enfonc&eacute;s va vous remorquer dix se r&eacute;veille autour du monde et jamais vous rendre une chopine de sperme les plus riches. Ni ces monitions inutiles &agrave; tous. De nos jours, la p&ecirc;che &agrave; la baleine-fournit un asile pour nombreux hommes jeunes romantiques, m&eacute;lancoliques et distraits, d&eacute;go&ucirc;t&eacute; par les soucis de carking de terre et en cherchant de sentiment dans le goudron et le lard. Childe Harold pas assez lui-m&ecirc;me est perch&eacute; sur le m&acirc;t de quelques malheureux d&eacute;&ccedil;u baleine-bateau et dans l&#39;expression de mauvaise humeur &eacute;jaculats: &mdash;Et permettez-moi en ce lieu et de fa&ccedil;on &eacute;mouvante te, ye armateurs de Nantucket ! M&eacute;fiez-vous de s&#39;enr&ocirc;ler dans votre p&ecirc;che vigilants tout gar&ccedil;on maigre front et les yeux creux ; donn&eacute; au recueillement hors de saison ; et qui vous propose d&#39;exp&eacute;dier avec le Phaedon au lieu de Bowditch dans sa t&ecirc;te. M&eacute;fiez-vous d&#39;une telle personne, je dis ; votre baleines doivent &ecirc;tre consid&eacute;r&eacute;s avant qu&#39;ils peuvent &ecirc;tre tu&eacute;s ; et cette platonicien jeune aux yeux enfonc&eacute;s va vous remorquer dix se r&eacute;veille autour du monde et jamais vous rendre une chopine de sperme les plus riches. Ni ces monitions inutiles &agrave; tous. De nos jours, la p&ecirc;che &agrave; la baleine-fournit un asile pour nombreux hommes jeunes romantiques, m&eacute;lancoliques et distraits, d&eacute;go&ucirc;t&eacute; par les soucis de carking de terre et en cherchant de sentiment <img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg" style="width: 250px; height: 200px; float: right;" />dans le goudron et le lard. Childe Harold pas assez lui-m&ecirc;me est perch&eacute; sur le m&acirc;t de quelques malheureux d&eacute;&ccedil;u baleine-bateau et dans l&#39;expression de mauvaise humeur &eacute;jaculats: &mdash;</p>\r\n<p>\r\n	Et permettez-moi en ce lieu et de fa&ccedil;on &eacute;mouvante te, ye armateurs de Nantucket ! M&eacute;fiez-vous de s&#39;enr&ocirc;ler dans votre p&ecirc;che vigilants tout gar&ccedil;on maigre front et les yeux creux ; donn&eacute; au recueillement hors de saison ; et qui vous propose d&#39;exp&eacute;dier avec le Phaedon au lieu de Bowditch dans sa t&ecirc;te. M&eacute;fiez-vous d&#39;une telle personne, je dis ; votre baleines doivent &ecirc;tre consid&eacute;r&eacute;s avant qu&#39;ils peuvent &ecirc;tre tu&eacute;s ; et cette platonicien jeune aux yeux enfonc&eacute;s va vous remorquer dix se r&eacute;veille autour du monde et jamais vous rendre une chopine de sperme les plus riches. Ni ces monitions inutiles &agrave; tous. De nos jours, la p&ecirc;che &agrave; la baleine-fournit un asile pour nombreux hommes jeunes romantiques, m&eacute;lancoliques et distraits, d&eacute;go&ucirc;t&eacute; par les soucis de carking de terre et en cherchant de sentiment dans le goudron et le lard. Childe Harold pas assez lui-m&ecirc;me est perch&eacute; sur le m&acirc;t de quelques malheureux d&eacute;&ccedil;u baleine-bateau et dans l&#39;expression de mauvaise humeur &eacute;jaculats: &mdash;</p>\r\n<p>\r\n	<br />\r\n	&quot;Rouler, tu profonde et sombre bleu oc&eacute;an, rouler ! Dix mille lard-chasseurs balayent sur toi en vain. &raquo;</p>\r\n', '<p>\r\n	And let me in this place movingly admonish you, ye ship-owners of Nantucket! Beware of enlisting in your vigilant fisheries any lad with lean brow and hollow eye; given to unseasonable meditativeness; and who offers to ship with the Phaedon instead of Bowditch in his head. Beware of such an one, I say; your whales must be seen before they can be killed; and this sunken-eyed young Platonist will tow you ten wakes round the world, and never make you one pint of sperm the richer. Nor are these monitions at all unneeded. For nowadays, the whale-fishery furnishes an asylum for many romantic, melancholy, and absent-minded young men, disgusted with the carking cares of earth, and seeking sentiment in tar and blubber. Childe Harold not unfrequently perches himself upon the mast-head of some luckless disappointed whale-ship, and in moody phrase ejaculates:&mdash;<img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-450-350-10.jpg" style="width: 450px; height: 350px; float: left;" /></p>\r\n<p>\r\n	&quot;Roll on, thou deep and dark blue ocean, roll! Ten thousand blubber-hunters sweep over thee in vain.&quot;</p>\r\n<p>\r\n	And let me in this place movingly admonish you, ye ship-owners of Nantucket! Beware of enlisting in your vigilant fisheries any lad with lean brow and hollow eye; given to unseasonable meditativeness; and who offers to ship with the Phaedon instead of Bowditch in his head. Beware of such an one, I say; your whales must be seen before they can be killed; and this sunken-eyed young Platonist will tow you ten wakes round the world, and never make you one pint of sperm the richer. Nor are these monitions at all unneeded. For nowadays, the whale-fishery furnishes an asylum for many romantic, melancholy, and absent-minded young men, disgusted with the carking cares of earth, and seeking sentiment in tar and blubber. Childe Harold not unfrequently perches himself upon the mast-head of some luckless disappointed whale-ship, and in moody phrase ejaculates:&mdash;</p>\r\n<p>\r\n	&quot;Roll on, thou deep and dark blue ocean, roll! Ten thousand blubber-hunters sweep over thee in vain.&quot;And let me in this place movingly admonish you, ye ship-owners of Nantucket! Beware of enlisting in your vigilant fisheries any lad with lean brow and hollow eye; given to unseasonable meditativeness; and who offers to ship with the Phaedon instead of Bowditch in his head. Beware of such an one, I say; your whales must be seen before they can be killed; and this sunken-eyed young Platonist will tow you ten wakes round the world, and never make you one pint of sperm the richer. Nor are these monitions at all unneeded. For nowadays, the whale-fishery furnishes an asylum for many romantic, melancholy, and absent-minded young men, disgusted with the carking cares of earth, and seeking sentiment in tar and blubber. Childe Harold not unfrequently perches himself upon the mast-head of some luckless disappointed whale-ship, and in moody phrase ejaculates:&mdash;</p>\r\n<p>\r\n	&quot;Roll on, thou deep and dark blue ocean, roll! Ten thousand blubber-hunters sweep over thee in vain.&quot;And let me in this place movingly admonish you, ye ship-owners of Nantucket! Beware of enlisting in your vigilant fisheries any lad with lean brow and hollow eye; given to unseasonable meditativeness; and who offers to ship with the Phaedon <img alt="" src="/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg" style="width: 250px; height: 200px; float: right;" />instead of Bowditch in his head. Beware of such an one, I say; your whales must be seen before they can be killed; and this sunken-eyed young Platonist will tow you ten wakes round the world, and never make you one pint of sperm the richer. Nor are these monitions at all unneeded. For nowadays, the whale-fishery furnishes an asylum for many romantic, melancholy, and absent-minded young men, disgusted with the carking cares of earth, and seeking sentiment in tar and blubber. Childe Harold not unfrequently perches himself upon the mast-head of some luckless disappointed whale-ship, and in moody phrase ejaculates:&mdash;</p>\r\n<p>\r\n	&quot;Roll on, thou deep and dark blue ocean, roll! Ten thousand blubber-hunters sweep over thee in vain.&quot;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 16),
(15, 'Test Safari 02', 'Test Safari 02', 1, '', 'test-safari-02', 'test-safari-02', '', '<p>\r\n &lt;img alt=&quot;&quot; data-cke-saved-src=&quot;/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg&quot; src=&quot;/afric-aventure/ckfinder/userfiles/images/animals-q-c-250-200-8.jpg&quot; 250px;=&quot;&quot; height:=&quot;&quot; 200px;=&quot;&quot; float:=&quot;&quot; right;&quot;=&quot;&quot; style=&quot;float: left;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eleifend imperdiet lectus sit amet condimentum. Donec dictum porta eros, eget pharetra urna lobortis fringilla. Praesent nec orci eget velit tempor luctus sit amet eget ante. Quisque vestibulum, nibh rutrum fringilla pharetra, justo nisi cursus turpis, eu faucibus dolor quam non odio. Ut est ligula, bibendum ac tristique nec, varius convallis arcu. Proin quis justo tempus sem viverra euismod. Ut fringilla, neque et auctor cursus, erat nibh viverra urna, facilisis convallis metus eros quis lacus. Vivamus ac porta magna. Vivamus iaculis, nisl non dictum commodo, dui ante congue ipsum, non fermentum lacus diam nec risus. Nullam elit mi, ullamcorper vitae scelerisque nec, bibendum nec urna. Donec lorem mi, pellentesque vitae pulvinar eu, malesuada a enim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin eu enim vel nibh ultrices vehicula vel ac turpis.</p>\r\n', '<p>\r\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eleifend imperdiet lectus sit amet condimentum. Donec dictum porta eros, eget pharetra urna lobortis fringilla. Praesent nec orci eget velit tempor luctus sit amet eget ante. Quisque vestibulum, nibh rutrum fringilla pharetra, justo nisi cursus turpis, eu faucibus dolor quam non odio. Ut est ligula, bibendum ac tristique nec, varius convallis arcu. Proin quis justo tempus sem viverra euismod. Ut fringilla, neque et auctor cursus, erat nibh viverra urna, facilisis convallis metus eros quis lacus. Vivamus ac porta magna. Vivamus iaculis, nisl non dictum commodo, dui ante congue ipsum, non fermentum lacus diam nec risus. Nullam elit mi, ullamcorper vitae scelerisque nec, bibendum nec urna. Donec lorem mi, pellentesque vitae pulvinar eu, malesuada a enim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin eu enim vel nibh ultrices vehicula vel ac turpis.</p>\r\n<p>\r\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eleifend imperdiet lectus sit amet condimentum. Donec dictum porta eros, eget pharetra urna lobortis fringilla. Praesent nec orci eget velit tempor luctus sit amet eget ante. Quisque vestibulum, nibh rutrum fringilla pharetra, justo nisi cursus turpis, eu faucibus dolor quam non odio. Ut est ligula, bibendum ac tristique nec, varius convallis arcu. Proin quis justo tempus sem viverra euismod. Ut fringilla, neque et auctor cursus, erat nibh viverra urna, facilisis convallis metus eros quis lacus. Vivamus ac porta magna. Vivamus iaculis, nisl non dictum commodo, dui ante congue ipsum, non fermentum lacus diam nec risus. Nullam elit mi, ullamcorper vitae scelerisque nec, bibendum nec urna. Donec lorem mi, pellentesque vitae pulvinar eu, malesuada a enim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin eu enim vel nibh ultrices vehicula vel ac turpis.</p>\r\n', 24),
(21, 'Will it work', 'I hope so', 1, '', 'will-it-work', 'i-hope-so', '', '', '', 36),
(22, 'ssd', 'ssd', 1, '', 'ssd', 'ssd', '', '', '', 37),
(23, 'Testing this', 'Testing This', 1, '', 'testing-this', 'testing-this', '', '', '', 38),
(24, 'Testing this Now', 'Testing This Today', 1, '', 'testing-this-now', 'testing-this-today', '', '', '', 39),
(25, 'Why Two2', 'Why Two2', 1, '', 'why-two2', 'why-two2', '', '', '', 41);

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
  `draws_from` varchar(40) NOT NULL,
  `url_prefix` varchar(40) NOT NULL,
  `en_url_prefix` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `afric_aventure_safaris_categories`
--

INSERT INTO `afric_aventure_safaris_categories` (`id`, `title`, `en_title`, `parent`, `url`, `en_url`, `draws_from`, `url_prefix`, `en_url_prefix`) VALUES
(1, 'Parcs Servis', 'Parks Served', 0, 'parcs-servis', 'parks-served', 'afric_aventure_safaris', 'safari', 'safari'),
(2, 'Safaris Thématiques', 'Themed Safaris', 0, 'safaris-thematiques', 'themed-safaris', 'afric_aventure_safaris', 'safari', 'safari');

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
  `en_caption` varchar(250) NOT NULL,
  `en_photo_title` varchar(250) NOT NULL,
  `priority` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `afric_aventure_slider`
--

INSERT INTO `afric_aventure_slider` (`id`, `photo_title`, `caption`, `photo`, `en_caption`, `en_photo_title`, `priority`) VALUES
(2, 'Cras justo odio, dapibus ac in', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehic', '35459-animals-q-c-940-400-9.jpg', '', '', 0),
(3, 'Lorem ipsum dolor sit amet, consectetur', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto rerum alias aliquid ex quis assumenda ab adipisci odio. Blanditiis consequatur qu', '27a29-people-q-c-940-400-2.jpg', '', '', 0),
(4, 'Ut a pulvinar purus. Fusce ac diam ligula', 'Nam quis leo lectus, sit amet mollis metus. Aliquam sed dolor nec turpis viverra malesuada. Nulla id magna sed augue aliquam lobortis sed quis lorem. ', '98c78-animals-q-c-940-400-1.jpg', '', '', 0),
(5, 'Lorem Lipsum Liakjfnnn', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac velit massa. Donec eleifend laoreet eros. Ut interdum risus vel nisi tempor tempo', '59fe5-technics-q-c-940-400-7.jpg', '', '', 0);

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
(1, '\0\0', 'administrator', '59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4', '9462e8eee0', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1363090680, 1, 'Admin', 'istrator', 'ADMIN', '0');

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
