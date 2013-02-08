-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2013 at 08:09 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

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
(3, 'Theme de Vacance Plage 2', 'Theme Beach Vacation 2', 2, 'erat ligula nec dui. Suspendisse eu dolor nunc. Integer sodales, est eget dignissim iaculis, lorem ipsum ornare turpis, id condimentum nibh orci sagittis nisi. Nulla eu auctor ligula. Nunc gravida congue sapien at venenatis. In non porttitor risus. Proin luctus, metus sed consectetur viverra, erat metus condimentum erat, ut adipiscing risus augue quis urna. Phasellus tincidunt turpis vitae purus tincidunt tempus.', 'theme-de-vacance-plage-2', 'theme-beach-vacation-2', 'Jellyfish.jpg', '<p>\r\n	La confusion du ma&icirc;tre et de l&#39;homme, qui avait tout &agrave; fait oubli&eacute; l&#39;affaire &agrave; Bombay, pour lesquels ils &eacute;taient d&eacute;sormais d&eacute;tenus &agrave; Calcutta, peut &ecirc;tre imagin&eacute;e.</p>\r\n<p>\r\n	<br />\r\n	Difficult&eacute; le d&eacute;tective, avaient pr&eacute;vu l&#39;avantage escapade de laquelle Passepartout lui a donn&eacute;, et, de retarder son d&eacute;part pendant douze heures, avait consult&eacute; les pr&ecirc;tres de Malabar Hill. Sachant que la jurisprudence anglaise traite tr&egrave;s s&eacute;rieusement ce genre de d&eacute;lit, il leur avait promis une belle somme en dommages-int&eacute;r&ecirc;ts et les envoya vers l&#39;avant &agrave; Calcutta par le prochain train. En raison du retard caus&eacute; par le sauvetage de la jeune veuve, Fix et les pr&ecirc;tres ont atteints la capitale indienne avant M. Fogg et son serviteur, les magistrats ayant d&eacute;j&agrave; &eacute;t&eacute; avertis par une d&eacute;p&ecirc;che de les arr&ecirc;ter si ils arrivent.<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Jellyfish.jpg" style="height: 225px; width: 300px; float: left;" /></p>\r\n<p>\r\n	D&eacute;ception de Fix lorsqu&#39;il apprit que Phileas Fogg n&#39;avait pas fait son apparition &agrave; Calcutta peut &ecirc;tre imagin&eacute;e. Il est mis en t&ecirc;te par le fait que le voleur avait arr&ecirc;t&eacute; quelque part sur la route et trouv&eacute; refuge dans les provinces m&eacute;ridionales. Pendant vingt-quatre heures Fix a regard&eacute; la station avec anxi&eacute;t&eacute; f&eacute;brile ; Enfin, il est r&eacute;compens&eacute; par voir M. Fogg et Passepartout arrivent, accompagn&eacute;s d&#39;une jeune femme, dont il &eacute;tait tout &agrave; fait &agrave; une perte pour expliquer la pr&eacute;sence. Il se h&acirc;ta d&#39;un policier ; et c&#39;&eacute;tait comment le parti est arriv&eacute; &agrave; &ecirc;tre arr&ecirc;t&eacute; et traduit devant le juge Obadiah.</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p>\r\n	The confusion of master and man, who had quite forgotten the affair at Bombay, for which they were now detained at Calcutta, may be imagined.</p>\r\n<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Jellyfish.jpg" style="width: 300px; height: 225px; float: right;" />Fix the detective, had foreseen the advantage which Passepartout&#39;s escapade gave him, and, delaying his departure for twelve hours, had consulted the priests of Malabar Hill. Knowing that the English authorities dealt very severely with this kind of misdemeanour, he promised them a goodly sum in damages, and sent them forward to Calcutta by the next train. Owing to the delay caused by the rescue of the young widow, Fix and the priests reached the Indian capital before Mr. Fogg and his servant, the magistrates having been already warned by a dispatch to arrest them should they arrive.</p>\r\n<p>\r\n	Fix&#39;s disappointment when he learned that Phileas Fogg had not made his appearance in Calcutta may be imagined. He made up his mind that the robber had stopped somewhere on the route and taken refuge in the southern provinces. For twenty-four hours Fix watched the station with feverish anxiety; at last he was rewarded by seeing Mr. Fogg and Passepartout arrive, accompanied by a young woman, whose presence he was wholly at a loss to explain. He hastened for a policeman; and this was how the party came to be arrested and brought before Judge Obadiah.</p>\r\n'),
(5, 'Theme de Vacance Plage 1', 'Beach Vacation Theme 1', 2, '', 'theme-de-vacance-plage-1', 'beach-vacation-theme-1', 'Lighthouse.jpg', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Lighthouse.jpg" style="height: 225px; width: 300px;" /></p>\r\n<p>\r\n	&laquo; Bombay? &raquo; s&#39;&eacute;cria Passepartout.</p>\r\n<p>\r\n	&laquo; Bien s&ucirc;r. Nous parlons pas de la pagode de Pillaji, mais de la pagode de Malabar Hill, &agrave; Bombay. &raquo;<br />\r\n	&laquo; Et comme une preuve, &raquo; a ajout&eacute; le greffier, &laquo; Voici les chaussures tr&egrave;s de la desecrator, qu&#39;il laissa derri&egrave;re lui. &raquo;<br />\r\n	Apr&egrave;s quoi il a plac&eacute; une paire de chaussures sur son bureau.<br />\r\n	&laquo; Mes chaussures! &raquo; s&#39;&eacute;cria Passepartout, &agrave; sa grande surprise, autorisant cette exclamation imprudente pour lui &eacute;chapper.</p>\r\n', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Lighthouse.jpg" style="width: 300px; height: 225px;" /></p>\r\n<p>\r\n	&quot;Bombay?&quot; cried Passepartout.</p>\r\n<p>\r\n	&quot;Certainly. We are not talking of the pagoda of Pillaji, but of the pagoda of Malabar Hill, at Bombay.&quot;<br />\r\n	&quot;And as a proof,&quot; added the clerk, &quot;here are the desecrator&#39;s very shoes, which he left behind him.&quot;<br />\r\n	Whereupon he placed a pair of shoes on his desk.<br />\r\n	&quot;My shoes!&quot; cried Passepartout, in his surprise permitting this imprudent exclamation to escape him.</p>\r\n'),
(8, 'Plage 1', 'Beach 1', 1, '', 'plage-1', 'beach-1', 'Jellyfish.jpg', '<p>\r\n	Un instant plus tard, je me trouvais devant une douzaine Mahars &mdash; les enqu&ecirc;teurs sociaux de Phutra. Ils m&#39;ont demand&eacute; beaucoup de questions, gr&acirc;ce &agrave; un interpr&egrave;te Sagoth. Je leur r&eacute;pondit tout honn&ecirc;tement. Ils semblaient particuli&egrave;rement int&eacute;ress&eacute;s par mon compte de la terre externe et le v&eacute;hicule &eacute;trange qui avait apport&eacute; Perry et moi de Pellucidar. Je pensais que j&#39;avais convaincus, et apr&egrave;s qu&#39;ils &eacute;taient assis en silence pendant une longue p&eacute;riode, suite &agrave; mon examen, je m&#39;attendais &agrave; &ecirc;tre command&eacute; retourn&eacute; &agrave; mes quartiers.</p>\r\n<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Jellyfish.jpg" style="width: 300px; height: 225px; float: left;" /></p>\r\n<p>\r\n	Pendant ce silence apparent, ils ont &eacute;t&eacute; d&eacute;battre au moyen du langage &eacute;trange, non-dit au fond de mon conte. Enfin la t&ecirc;te du tribunal a communiqu&eacute; le r&eacute;sultat de leur conf&eacute;rence &agrave; l&#39;officier responsable de la garde Sagoth.</p>\r\n', '<p>\r\n	A moment later I was standing before a dozen Mahars&mdash;the social investigators of Phutra. They asked me many questions, through a Sagoth interpreter. I answered them all truthfully. They seemed particularly interested in my account of the outer earth and the strange vehicle which had brought Perry and me to Pellucidar. I thought that I had convinced them, and after they had sat in silence for a long time following my examination, I expected to be ordered returned to my quarters.</p>\r\n<p>\r\n	During this apparent silence they were debating through the medium of strange, unspoken language the merits of my tale. At last the head of the tribunal communicated the result of their conference to the officer in charge of the Sagoth guard.</p>\r\n'),
(9, 'Plage 2', 'Beach 2', 1, '', 'plage-2', 'beach-2', '', '<p>\r\n	C&#39;&eacute;tait sans espoir, et si je descendais en silence &agrave; c&ocirc;t&eacute; de mes gardes &agrave; travers les couloirs sombres et les pistes vers mon dur ch&acirc;timent. &Agrave; un niveau bas, nous sommes tomb&eacute;s sur un certain nombre de chambres lumineuses o&ugrave; nous avons vu que beaucoup Mahars engag&eacute;s dans divers m&eacute;tiers. &Agrave; l&#39;une de ces chambres de mes gardes m&#39;a escort&eacute;, et avant de partir, ils m&#39;encha&icirc;n&eacute;s &agrave; un mur lat&eacute;ral. Il y avait d&#39;autres hommes de m&ecirc;me encha&icirc;n&eacute;s. Sur une longue table poser une victime alors que j&#39;&eacute;tais fait entrer dans la chambre. Plusieurs Mahars se tenait sur la pauvre cr&eacute;ature lui enfon&ccedil;ant afin qu&#39;il ne pouvait pas bouger. Un autre, saisissant un couteau bien aiguis&eacute; avec elle trois doigts avant pied, &eacute;tait portant ouvrir la poitrine et l&#39;abdomen de la victime. Aucune anesth&eacute;sie n&#39;avait &eacute;t&eacute; administr&eacute; et les cris et les g&eacute;missements de l&#39;homme tortur&eacute; ont &eacute;t&eacute; terribles &agrave; entendre. Cela, en effet, &eacute;tait vivisection avec une vengeance. Sueurs froides ont &eacute;clat&eacute; sur moi que j&#39;ai r&eacute;alis&eacute; que bient&ocirc;t mon tour viendrait. Et de penser que l&agrave; o&ugrave; il n&#39;y n&#39;avait aucun une telle chose comme temps je pourrais facilement imaginer que ma souffrance &eacute;tait immuable pendant des mois avant la mort enfin lib&eacute;r&eacute; moi !</p>\r\n<p>\r\n	<br />\r\n	Les Mahars avait pay&eacute; pas la moindre attention &agrave; moi, comme j&#39;avais &eacute;t&eacute; amen&eacute; dans la pi&egrave;ce. Ils &eacute;taient si profond&eacute;ment immerg&eacute; dans leur travail que je suis s&ucirc;r qu&#39;ils ne savaient m&ecirc;me pas que le Sagoths est entr&eacute; avec moi. La porte &eacute;tait proche. Ce que je pouvais l&#39;atteindre ! Mais ces cha&icirc;nes lourdes interdit une telle possibilit&eacute;. J&#39;ai cherch&eacute; un moyen d&#39;&eacute;chapper &agrave; mes obligations. Sur le plancher entre moi et les Mahars jeter un petit instrument chirurgical dont l&#39;un d&#39;eux doit avoir tomb&eacute;. Il avait l&#39;air pas contrairement &agrave; un bouton-crochet, mais &eacute;tait beaucoup plus petite, et son point &eacute;tait aiguis&eacute;. Une centaine de fois dans mes jours d&#39;enfance avais j&#39;ai pris des serrures avec un bouton-crochet. Pourrais j&#39;arrive mais que peu d&#39;acier poli, que je pourrais encore effet au moins un refuge temporaire.</p>\r\n', '<p>\r\n	It was hopeless, and so I walked in silence beside my guard down through the dark corridors and runways toward my awful doom. At a low level we came upon a number of lighted chambers in which we saw many Mahars engaged in various occupations. To one of these chambers my guard escorted me, and before leaving they chained me to a side wall. There were other humans similarly chained. Upon a long table lay a victim even as I was ushered into the room. Several Mahars stood about the poor creature holding him down so that he could not move. Another, grasping a sharp knife with her three-toed fore foot, was laying open the victim&#39;s chest and abdomen. No anesthetic had been administered and the shrieks and groans of the tortured man were terrible to hear. This, indeed, was vivisection with a vengeance. Cold sweat broke out upon me as I realized that soon my turn would come. And to think that where there was no such thing as time I might easily imagine that my suffering was enduring for months before death finally released me!</p>\r\n<p>\r\n	<br />\r\n	The Mahars had paid not the slightest attention to me as I had been brought into the room. So deeply immersed were they in their work that I am sure they did not even know that the Sagoths had entered with me. The door was close by. Would that I could reach it! But those heavy chains precluded any such possibility. I looked about for some means of escape from my bonds. Upon the floor between me and the Mahars lay a tiny surgical instrument which one of them must have dropped. It looked not unlike a button-hook, but was much smaller, and its point was sharpened. A hundred times in my boyhood days had I picked locks with a button-hook. Could I but reach that little bit of polished steel I might yet effect at least a temporary escape.</p>\r\n');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=429 ;

--
-- Dumping data for table `afric_aventure_captcha`
--

INSERT INTO `afric_aventure_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(415, 1360304236, '127.0.0.1', 'U6F3EYK'),
(416, 1360306002, '127.0.0.1', 'JGUZ48M'),
(417, 1360307299, '127.0.0.1', 'E8DPRWH'),
(418, 1360307400, '127.0.0.1', '4U5APJY'),
(419, 1360307408, '127.0.0.1', '9DQVK4T'),
(420, 1360308387, '127.0.0.1', 'G4J8YS5'),
(421, 1360308930, '127.0.0.1', '5UXZEYM'),
(422, 1360308999, '127.0.0.1', 'EPBFNAR'),
(423, 1360309044, '127.0.0.1', 'KAV6CY4'),
(424, 1360309102, '127.0.0.1', 'Z4CYTFU'),
(425, 1360309142, '127.0.0.1', 'RS4B23G'),
(426, 1360309592, '127.0.0.1', 'PTMR3QW'),
(427, 1360310547, '127.0.0.1', 'BA7UDKG'),
(428, 1360310603, '127.0.0.1', '8NRCMEY');

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
(5, 'Qui Sommes-Nous', 'About Us', 0, 'qui-sommes-nous', 'about-us', '', '', 5, 'Afric'' Aventure | About Us', '<p>\r\n	Afric&rsquo;Aventure a &eacute;t&eacute; cr&eacute;&eacute;e en 2001 et est dirig&eacute;e par Anne Saels, n&eacute;e au Congo (RDC) et qui a v&eacute;cu la plus grande partie de sa vie en Afrique.</p>\r\n<p>\r\n	Au fil des ann&eacute;es, une petite &eacute;quipe, passionn&eacute;e, s&rsquo;est cr&eacute;&eacute;e, qui tend &agrave; offrir un service tant professionnel que personnalis&eacute; au sein d&rsquo;un environnement convivial.</p>\r\n<p>\r\n	Un nouveau safari est planifi&eacute; et organis&eacute; pour chaque client. Les itin&eacute;raires sont personnalis&eacute;s, utilisant nos v&eacute;hicules, des vols r&eacute;guliers ou non r&eacute;guliers s&ucirc;rs, des logements choisis. Les compagnies avec lesquelles nous travaillons sont choisies pour la qualit&eacute; de leurs services, nous n&rsquo;accordons aucune exclusivit&eacute;.</p>\r\n<p>\r\n	Notre promotion se fait principalement par le bouche &agrave; oreille, et c&rsquo;est l&agrave; une excellente motivation pour vous donner le meilleur service possible.</p>\r\n<p>\r\n	Etre reconnu comme organisateur de safari de qualit&eacute; en Tanzanie du Sud est notre but, et pour l&rsquo;atteindre, nous vous donnerons le meilleur !</p>\r\n<p>\r\n	Nous avons une notre licence tanzanienne comme tour op&eacute;rateur, &quot;Business Licence&quot; nr 00915506,<br />\r\n	la licence comme agent de tourisme &quot;Tourist Agent Licence&quot; classe A nr 00010423<br />\r\n	et nous sommes membre de <a href="http://www.tatotz.com/">l&#39;Association Tanzanienne des Tour Operateurs.</a></p>\r\n', '<p>\r\n	Afric&rsquo;Aventure was established in 2001 and is managed by Anne Saels who was born in Congo (DRC) and has lived almost all of her life in Africa.</p>\r\n<p>\r\n	Year after year, a small, passionate team has built up, which tries to give a professional and personalized service in a friendly environment.</p>\r\n<p>\r\n	A new safari is planned and organized for each client. Itineraries are personalized, using our own vehicles, secure scheduled or chartered flights and chosen accommodation. Companies we are working with are chosen for the service they give.</p>\r\n<p>\r\n	Our promotion is done mainly by recommandation, and this is an excellent reason to give you the best service possible.</p>\r\n<p>\r\n	Our aim is to be recognized as a quality safari&rsquo;s organizer for Southern Tanzania, and therefore, we&rsquo;ll give you the best!</p>\r\n<p>\r\n	We have the Tanzanian Business Licence nr 00915506 as Tour Operator,<br />\r\n	the Tourist Agent Licence class A nr 00010423<br />\r\n	and we are member from the<a href="http://www.tatotz.com/"> Tanzania Association of Tour Operator</a>.</p>\r\n', 'TRUE'),
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
(1, 'Thematique Safari 1', 'Theme Safari 1', 2, 'sjss kskskks sksk kskkhgkg ksk kj sjk kgjkjg jgkfgjk h khfghsgriirgtrig ghfkjgkgskhgjh  hekl o  dsthis is hjushtre  a teadfrty ', 'thematique-safari-1', 'theme-safari-1', 'Lighthouse.jpg', '<p>\r\n	Le jeddak, barre de Comas, qui &eacute;tait relativement jeune, a fait l&#39;objet de la haine f&eacute;roce et jalouse de son ancien lieutenant, Dak Kova, les jed qui avait captur&eacute; &agrave; moi, et je ne peut que noter l&#39;effort presque qui ce dernier de faire affront &agrave; son sup&eacute;rieur.</p>\r\n<p>\r\n	<br />\r\n	Il a omis enti&egrave;rement la salutation officielle habituelle que nous sommes entr&eacute;s dans la pr&eacute;sence de le jeddak, et comme il m&#39;a pouss&eacute; &agrave; peu pr&egrave;s avant le souverain, qu&#39;il s&#39;&eacute;cria d&#39;une voix forte et mena&ccedil;ante.</p>\r\n<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Lighthouse.jpg" style="width: 400px; height: 300px;" /></p>\r\n<p>\r\n	Le jeddak, barre de Comas, qui &eacute;tait relativement jeune, a fait l&#39;objet de la haine f&eacute;roce et jalouse de son ancien lieutenant, Dak Kova, les jed qui avait captur&eacute; &agrave; moi, et je ne peut que noter l&#39;effort presque qui ce dernier de faire affront &agrave; son sup&eacute;rieur.</p>\r\n<p>\r\n	<br />\r\n	Il a omis enti&egrave;rement la salutation officielle habituelle que nous sommes entr&eacute;s dans la pr&eacute;sence de le jeddak, et comme il m&#39;a pouss&eacute; &agrave; peu pr&egrave;s avant le souverain, qu&#39;il s&#39;&eacute;cria d&#39;une voix forte et mena&ccedil;ante.</p>\r\n', '<p>\r\n	The jeddak, Bar Comas, who was comparatively young, was the object of the fierce and jealous hatred of his old lieutenant, Dak Kova, the jed who had captured me, and I could not but note the almost studied efforts which the latter made to affront his superior.</p>\r\n<p>\r\n	<br />\r\n	He entirely omitted the usual formal salutation as we entered the presence of the jeddak, and as he pushed me roughly before the ruler he exclaimed in a loud and menacing voice.</p>\r\n<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Lighthouse.jpg" style="width: 300px; height: 225px;" /></p>\r\n<p>\r\n	The jeddak, Bar Comas, who was comparatively young, was the object of the fierce and jealous hatred of his old lieutenant, Dak Kova, the jed who had captured me, and I could not but note the almost studied efforts which the latter made to affront his superior.</p>\r\n<p>\r\n	<br />\r\n	He entirely omitted the usual formal salutation as we entered the presence of the jeddak, and as he pushed me roughly before the ruler he exclaimed in a loud and menacing voice.</p>\r\n'),
(2, 'Thematique Safari 2', 'Themed Safari 2', 2, 'jss kskskks sksk kskkhgkg ksk kj sjk kgjkjg jgkfgjk h khfghsgriirgtrig ghfkjgkgskhgjh  hekl o  dsthis is hjushtre  a teadfrty ', 'thematique-safari-2', 'themed-safari-2', 'Koala.jpg', '<p style="text-align: right;">\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Koala.jpg" style="width: 200px; height: 150px; float: right;" /></p>\r\n<p>\r\n	Juste avant la nuit, nous avons atteint le corps de troupes peu apr&egrave;s que qu&#39;ils avaient &eacute;tabli leur camp pour la nuit. J&#39;ai &eacute;t&eacute; imm&eacute;diatement avant le leader, qui s&#39;est av&eacute;r&eacute; pour &ecirc;tre le jeddak des hordes de Warhoon.</p>\r\n<p>\r\n	Comme les jed qui m&#39;avait amen&eacute;, il &eacute;tait terriblement marqu&eacute; et &eacute;galement d&eacute;cor&eacute; avec la cuirasse de cr&acirc;nes humains et s&eacute;ch&eacute; les mains mortes qui semblait marquer tous les guerriers plus grande parmi les Warhoons, aussi bien &agrave; indiquer leur f&eacute;rocit&eacute; terrible, qui a grandement d&eacute;passe m&ecirc;me celui de la Tharks.</p>\r\n', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Koala.jpg" style="width: 200px; height: 150px; float: left;" />Just before dark we reached the main body of troops shortly after they had made camp for the night. I was immediately taken before the leader, who proved to be the jeddak of the hordes of Warhoon.</p>\r\n<p>\r\n	Like the jed who had brought me, he was frightfully scarred, and also decorated with the breastplate of human skulls and dried dead hands which seemed to mark all the greater warriors among the Warhoons, as well as to indicate their awful ferocity, which greatly transcends even that of the Tharks.</p>\r\n'),
(11, 'Parc National 1', 'National Parc 1', 1, '', 'parc-national-1', 'national-parc-1', '', '<p>\r\n	Mais si nous baleine australe-p&ecirc;cheurs ne sommes pas donc confortablement log&eacute;s en altitude comme capitaine Sleet et ses Greenlandmen ont &eacute;t&eacute; ; encore cet inconv&eacute;nient est largement contrebalanc&eacute;e par la s&eacute;r&eacute;nit&eacute; contrastante largement de ces mers s&eacute;duisants dans lequel nous les p&ecirc;cheurs du Sud surtout flotter. D&#39;une part, j&#39;ai utilis&eacute; se pr&eacute;lasser jusqu&#39;&agrave; le gr&eacute;ement tr&egrave;s tranquille, au repos dans les premiers &agrave; avoir une conversation avec Queequeg, ou n&#39;importe quel autre repos que je pourrais trouver l&agrave; ; ascendant puis un peu plus loin et jeter une jambe paresseuse sur le triage de haut-voile, prendre un avis pr&eacute;liminaire de la larmoyants p&acirc;turages et donc enfin monter &agrave; ma destination finale.</p>\r\n<p>\r\n	<br />\r\n	Je voudrais faire un sein propre de celui-ci ici et franchement admettre que j&#39;ai gard&eacute; la garde mais d&eacute;sol&eacute;e. Le probl&egrave;me de l&#39;univers oscillant en moi, comment pourrais-je &mdash; &eacute;tant laiss&eacute; compl&egrave;tement &agrave; moi-m&ecirc;me &agrave; une telle altitude pens&eacute;e-engendrant &mdash; comment pourrais-je mais l&eacute;g&egrave;rement tenir mes obligations &agrave; observer les ordres permanents de toutes les baleines-navires, &laquo; garder votre &oelig;il ouvert et chanter &agrave; chaque fois. &raquo;</p>\r\n', '<p>\r\n	But if we Southern whale-fishers are not so snugly housed aloft as Captain Sleet and his Greenlandmen were; yet that disadvantage is greatly counter-balanced by the widely contrasting serenity of those seductive seas in which we South fishers mostly float. For one, I used to lounge up the rigging very leisurely, resting in the top to have a chat with Queequeg, or any one else off duty whom I might find there; then ascending a little way further, and throwing a lazy leg over the top-sail yard, take a preliminary view of the watery pastures, and so at last mount to my ultimate destination.</p>\r\n<p>\r\n	Let me make a clean breast of it here, and frankly admit that I kept but sorry guard. With the problem of the universe revolving in me, how could I&mdash;being left completely to myself at such a thought-engendering altitude&mdash;how could I but lightly hold my obligations to observe all whale-ships&#39; standing orders, &quot;Keep your weather eye open, and sing out every time.&quot;</p>\r\n'),
(12, 'Parc National 2', 'National Park 2', 1, '', 'parc-national-2', 'national-park-2', 'Koala.jpg', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Koala.jpg" style="width: 300px; height: 225px; float: left;" />Et permettez-moi en ce lieu et de fa&ccedil;on &eacute;mouvante te, ye armateurs de Nantucket ! M&eacute;fiez-vous de s&#39;enr&ocirc;ler dans votre p&ecirc;che vigilants tout gar&ccedil;on maigre front et les yeux creux ; donn&eacute; au recueillement hors de saison ; et qui vous propose d&#39;exp&eacute;dier avec le Phaedon au lieu de Bowditch dans sa t&ecirc;te. M&eacute;fiez-vous d&#39;une telle personne, je dis ; votre baleines doivent &ecirc;tre consid&eacute;r&eacute;s avant qu&#39;ils peuvent &ecirc;tre tu&eacute;s ; et cette platonicien jeune aux yeux enfonc&eacute;s va vous remorquer dix se r&eacute;veille autour du monde et jamais vous rendre une chopine de sperme les plus riches. Ni ces monitions inutiles &agrave; tous. De nos jours, la p&ecirc;che &agrave; la baleine-fournit un asile pour nombreux hommes jeunes romantiques, m&eacute;lancoliques et distraits, d&eacute;go&ucirc;t&eacute; par les soucis de carking de terre et en cherchant de sentiment dans le goudron et le lard. Childe Harold pas assez lui-m&ecirc;me est perch&eacute; sur le m&acirc;t de quelques malheureux d&eacute;&ccedil;u baleine-bateau et dans l&#39;expression de mauvaise humeur &eacute;jaculats: &mdash;</p>\r\n<p>\r\n	<br />\r\n	&quot;Rouler, tu profonde et sombre bleu oc&eacute;an, rouler ! Dix mille lard-chasseurs balayent sur toi en vain. &raquo;</p>\r\n', '<p>\r\n	<img alt="" src="/afric-aventure/ckfinder/userfiles/images/Koala.jpg" style="width: 300px; height: 225px; float: right;" />And let me in this place movingly admonish you, ye ship-owners of Nantucket! Beware of enlisting in your vigilant fisheries any lad with lean brow and hollow eye; given to unseasonable meditativeness; and who offers to ship with the Phaedon instead of Bowditch in his head. Beware of such an one, I say; your whales must be seen before they can be killed; and this sunken-eyed young Platonist will tow you ten wakes round the world, and never make you one pint of sperm the richer. Nor are these monitions at all unneeded. For nowadays, the whale-fishery furnishes an asylum for many romantic, melancholy, and absent-minded young men, disgusted with the carking cares of earth, and seeking sentiment in tar and blubber. Childe Harold not unfrequently perches himself upon the mast-head of some luckless disappointed whale-ship, and in moody phrase ejaculates:&mdash;</p>\r\n<p>\r\n	&quot;Roll on, thou deep and dark blue ocean, roll! Ten thousand blubber-hunters sweep over thee in vain.&quot;</p>\r\n');

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
(1, '\0\0', 'administrator', '59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4', '9462e8eee0', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1360304593, 1, 'Admin', 'istrator', 'ADMIN', '0');

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
