-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2008 at 04:00 AM
-- Server version: 4.1.22
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elmar_dilger`
--
CREATE DATABASE `elmar_dilger` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `elmar_dilger`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(56) NOT NULL default '',
  `position` int(11) NOT NULL default '0',
  `permalink` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `position`, `permalink`) VALUES
(1, 'Journey: Jamaica', 4, 'journey--jamaica'),
(2, 'Glas', 3, 'glas'),
(4, 'Akt', 2, 'akt'),
(5, 'Design', 1, 'design'),
(7, 'RV-Blumenmarkt', 5, 'rv-blumenmarkt'),
(8, 'Potpourri', 6, 'potpourri'),
(9, 'Just married', 7, 'just-married');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `category_id` int(11) NOT NULL default '0',
  `position` int(11) NOT NULL default '0',
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_on` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `caption`, `image`, `category_id`, `position`, `created_at`, `updated_on`) VALUES
(1, 'chromkanne.jpg', '', 'chromkanne.jpg', 5, 3, '2006-05-18 16:41:26', '2007-11-13 03:35:15'),
(2, 'Amphorenst__nder013.jpg', 'Ravensburg, Snega Keith', 'Amphorenst__nder013.jpg', 2, 8, '2006-05-22 15:09:27', '2006-06-18 08:04:31'),
(3, 'lippenstift.jpg', '', 'lippenstift.jpg', 5, 8, '2006-05-22 16:50:22', '2007-11-13 03:35:15'),
(4, 'abstrakt-papier.jpg', '', 'abstrakt-papier.jpg', 5, 8, '2006-05-22 16:56:11', '2007-11-13 03:35:15'),
(5, 'zange-03_keith.jpg', '', 'zange-03_keith.jpg', 5, 1, '2006-05-22 16:57:12', '2007-11-13 03:35:15'),
(6, 'rot1.jpg', '', 'rot1.jpg', 5, 9, '2006-05-22 16:58:31', '2007-11-13 03:35:15'),
(7, 'rt_detail0005.jpg', '', 'rt_detail0005.jpg', 5, 10, '2006-05-22 16:59:25', '2007-11-13 03:35:15'),
(8, 'jamaica0094.jpg', '', 'jamaica0094.jpg', 1, 10, '2006-05-22 17:20:57', '2006-05-25 17:50:42'),
(9, 'jamaicaII0045.jpg', '', 'jamaicaII0045.jpg', 1, 12, '2006-05-22 17:21:49', '2006-05-25 17:50:42'),
(10, 'jamaicaII0047.jpg', '', 'jamaicaII0047.jpg', 1, 14, '2006-05-22 17:22:09', '2006-05-25 17:50:42'),
(11, 'jamaicaIII0104.jpg', '', 'jamaicaIII0104.jpg', 1, 15, '2006-05-22 17:22:28', '2006-05-25 17:50:42'),
(12, 'jamaicaIV0061.jpg', '', 'jamaicaIV0061.jpg', 1, 16, '2006-05-22 17:22:52', '2006-05-25 17:50:42'),
(13, 'jamaicaIV0070.jpg', '', 'jamaicaIV0070.jpg', 1, 17, '2006-05-22 17:23:26', '2006-05-25 17:50:42'),
(14, 'jamaicaIV0098.jpg', '', 'jamaicaIV0098.jpg', 1, 18, '2006-05-22 17:24:13', '2006-05-25 17:50:42'),
(15, 'jamaicaIV0108.jpg', '', 'jamaicaIV0108.jpg', 1, 19, '2006-05-22 17:24:38', '2006-05-25 17:50:42'),
(16, 'jamaicaIV0114.jpg', '', 'jamaicaIV0114.jpg', 1, 20, '2006-05-22 17:24:57', '2006-05-25 17:50:42'),
(17, 'akt1.jpg', '', 'akt1.jpg', 4, 2, '2006-05-22 17:25:30', '2006-05-25 17:50:41'),
(18, 'akt2.jpg', '', 'akt2.jpg', 4, 3, '2006-05-22 17:26:06', '2006-05-25 17:50:41'),
(19, 'glas0001.jpg', '', 'glas0001.jpg', 2, 1, '2006-05-22 17:37:57', '2006-06-18 08:04:31'),
(20, 'glas0009.jpg', '', 'glas0009.jpg', 2, 3, '2006-05-22 17:38:18', '2006-06-18 08:04:31'),
(21, 'glas0017.jpg', '', 'glas0017.jpg', 2, 4, '2006-05-22 17:38:41', '2006-06-18 08:04:31'),
(22, 'udo-flaschen002.jpg', '', 'udo-flaschen002.jpg', 2, 5, '2006-05-22 17:39:34', '2006-06-18 08:04:31'),
(23, 'udo-flaschen003.jpg', '', 'udo-flaschen003.jpg', 2, 6, '2006-05-22 17:40:33', '2006-06-18 08:04:31'),
(24, 'udo-flaschen005.jpg', '', 'udo-flaschen005.jpg', 2, 7, '2006-05-22 17:41:24', '2006-06-18 08:04:31'),
(25, 'udo-flaschen001.jpg', '', 'udo-flaschen001.jpg', 2, 2, '2006-05-22 17:41:47', '2006-06-18 08:04:31'),
(26, 'udo-flaschen017.jpg', '', 'udo-flaschen017.jpg', 2, 8, '2006-05-22 17:42:38', '2006-06-18 08:04:31'),
(29, 'Akt3.jpg', 'Ravensburg, Akt, Dilger, Hand, Fotodesign, Fotografie, Fotos, Erotik,', 'Akt3.jpg', 4, 21, '2006-05-23 10:57:09', '2006-05-25 17:50:42'),
(30, 'Akt4.jpg', 'Fotodesign, Fotografie, Akt, Erotik, Ravensburg, Dilger, Werbung,', 'Akt4.jpg', 4, 22, '2006-05-23 15:31:39', '2006-05-25 17:50:42'),
(31, 'Akt5.jpg', 'Ravensburg, Fotodesign, Fotografie, Foto, Fotograf, Akt, Erotik, Dilger, Bild', 'Akt5.jpg', 4, 23, '2006-05-23 15:33:29', '2006-05-25 17:50:42'),
(32, 'Hogri.jpg', 'Ravensburg, Fotodesign, Foto, Fotograf, Dilger, Hogri, Besteck', 'Hogri.jpg', 5, 5, '2006-05-23 15:56:13', '2007-11-13 03:35:15'),
(33, 'riedel-461.jpg', 'Ravensburg, Fotodesign, Dilger, Foto, Bild, Riedel, RiedelglÃ¤ser, Weinglas, Kufstein,', 'riedel-461.jpg', 5, 2, '2006-05-23 15:58:31', '2007-11-13 03:35:15'),
(35, 'schwanger1.jpg', 'Ravensburg, Fotodesign, Dilger, Fotograf, Bild, Fotografie, Schwanger, Erotik, Akt,', 'schwanger1.jpg', 4, 24, '2006-05-23 16:35:45', '2006-05-25 17:50:42'),
(36, 'misterX_1.jpg', 'Ravensburg, Fotodesign, Dilger, Fotograf, Bild, People, GeschÃ¤ftsmann, Fotografie, Mensch,', 'misterX_1.jpg', 6, 5, '2006-05-23 16:59:04', '2006-05-25 17:50:41'),
(37, 'misterX_2.jpg', 'Ravensburg, Fotodesign, Dilger, Fotograf, Bild, People, GeschÃ¤ftsmann, Fotografie, Mensch,', 'misterX_2.jpg', 6, 4, '2006-05-23 16:59:34', '2006-05-25 17:50:41'),
(38, 'misterX_3.jpg', 'Ravensburg, Fotodesign, Dilger, Fotograf, Bild, People, GeschÃ¤ftsmann, Fotografie, Mensch,', 'misterX_3.jpg', 6, 6, '2006-05-23 17:00:10', '2006-05-25 17:50:41'),
(39, 'misterX_4.jpg', 'Ravensburg, Fotodesign, Dilger, Fotograf, Bild, People, GeschÃ¤ftsmann, Fotografie, Mensch,', 'misterX_4.jpg', 6, 6, '2006-05-23 17:00:36', '2006-05-25 17:50:42'),
(40, 'misterX_5.jpg', 'Ravensburg, Fotodesign, Dilger, Fotograf, Bild, People, GeschÃ¤ftsmann, Fotografie, Mensch,', 'misterX_5.jpg', 6, 8, '2006-05-23 17:01:01', '2006-05-25 17:50:42'),
(41, 'misterX_6.jpg', 'Ravensburg, Fotodesign, Dilger, Fotograf, Bild, People, GeschÃ¤ftsmann, Fotografie, Mensch,', 'misterX_6.jpg', 6, 5, '2006-05-23 17:01:27', '2006-05-25 17:50:41'),
(42, 'tanzer-blau-04.jpg', 'Ravensburg, Fotodesign, Foto, Fotograf, Bild, Dilger, Tanz, TÃ¤nzerin, Blau, Erotik\r\n', 'tanzer-blau-04.jpg', 5, 7, '2006-05-24 15:22:52', '2007-11-13 03:35:15'),
(43, 'DSC_0202.jpg', 'Ravensburg Udo Dilger Blumen Design Fotografie Fotodesign Natur Stadt Blumenmarkt Markt', 'DSC_0202.jpg', 7, 4, '2006-06-18 06:56:41', '2006-06-18 08:04:14'),
(44, 'DSC_0051.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0051.jpg', 7, 2, '2006-06-18 07:08:57', '2006-06-18 08:04:14'),
(47, 'DSC_0206.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0206.jpg', 7, 6, '2006-06-18 07:10:38', '2006-06-18 08:04:14'),
(52, 'DSC_0193.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage\r\n', 'DSC_0193.jpg', 7, 9, '2006-06-18 07:13:43', '2006-06-18 08:04:14'),
(58, 'DSC_0138.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0138.jpg', 7, 9, '2006-06-18 07:31:23', '2006-06-18 08:04:14'),
(65, 'DSC_0090.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0090.jpg', 7, 9, '2006-06-18 07:36:41', '2006-06-18 08:04:14'),
(67, 'DSC_0212.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0212.jpg', 7, 9, '2006-06-18 07:52:28', '2006-06-18 08:04:14'),
(68, 'DSC_0205.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0205.jpg', 7, 1, '2006-06-18 07:54:08', '2006-06-18 08:04:14'),
(69, 'DSC_0124.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0124.jpg', 7, 3, '2006-06-18 07:54:59', '2006-06-18 08:04:14'),
(70, 'DSC_0129.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0129.jpg', 7, 7, '2006-06-18 07:55:44', '2006-06-18 08:04:14'),
(71, 'DSC_0132.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0132.jpg', 7, 5, '2006-06-18 07:56:50', '2006-06-18 08:04:14'),
(72, 'DSC_0168.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0168.jpg', 7, 10, '2006-06-18 07:57:31', '2006-06-18 08:04:14'),
(73, 'DSC_0181.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0181.jpg', 7, 8, '2006-06-18 07:58:09', '2006-06-18 08:04:14'),
(74, 'DSC_0208.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0208.jpg', 7, 9, '2006-06-18 07:58:41', '2006-06-18 08:04:14'),
(75, 'DSC_0101.jpg', 'Ravensburg Fotodesign Blumenmarkt Natur Markt Blumen Udo Dilger Fotografie Foto Reportage', 'DSC_0101.jpg', 7, 8, '2006-06-18 07:59:20', '2006-06-18 08:04:14'),
(77, 'Hogriposter1.jpg', 'Hogri, Fotodesign, Ravensburg, Udo Dilger, Fotografie, Fotograf, Walnuss', 'Hogriposter1.jpg', 5, 6, '2007-11-12 09:36:52', '2007-11-13 03:35:15'),
(78, 'Hogriposter2.jpg', 'Hogri,Fotodesign, Ravensburg, Udo Dilger, Zucker,Milch,Fotografie, Fotograf', 'Hogriposter2.jpg', 5, 4, '2007-11-12 09:39:22', '2007-11-13 03:35:15'),
(79, '070914_Alno.jpg', 'Alno,KÃ¼chen,Udo,Fotodesign,Fotograf,Ravensburg,Fotografie,Kochen,Rezept', '070914_Alno.jpg', 8, 1, '2007-11-12 10:42:06', '2007-11-12 16:10:36'),
(80, 'Alno_Ham_Bot.jpg', 'KÃ¼che,Rezept,Udo,Ravensburg,Fotodesign,Fotograf,Fotografie,Alno,KÃ¼chenplanung', 'Alno_Ham_Bot.jpg', 8, 2, '2007-11-12 10:44:12', '2007-11-12 16:10:36'),
(81, 'Roesterei.jpg', 'Kaffee,RÃ¶sterei,Ravensburg,Udo Dilger,Fotodesign, Fotograf,Fotografie,Bohne,Arabica,OWB', 'Roesterei.jpg', 8, 7, '2007-11-12 10:46:25', '2007-11-12 16:10:36'),
(82, '070919_Mohren.jpg', 'Udo Dilger,Ravensburg,Mohren,Fotodesign,Fotografie,Fotgraf,Wellness,Natur,Urlaub', '070919_Mohren.jpg', 8, 4, '2007-11-12 10:49:00', '2007-11-12 16:10:36'),
(83, '070924_Mohren.jpg', 'Ravensburg,Udo Dilger, Wellness,Natur, Mohren,Fotograf,Fotodesign,Urlaub,Gesundheit', '070924_Mohren.jpg', 8, 5, '2007-11-12 10:50:34', '2007-11-12 16:10:36'),
(85, 'Haare1.jpg', 'Udo Dilger, Ravensburg, Haare,Friseur,Fotografie,Fotograf,Fotodesign,Mode,Modenschau,Frauen,Erotik,', 'Haare1.jpg', 8, 8, '2007-11-12 10:54:24', '2007-11-12 16:10:36'),
(86, 'Haare_2006.jpg', 'Udo Dilger, Ravensburg, Haare,Friseur,Fotografie,Fotograf,Fotodesign,Mode,Modenschau,Frauen,Erotik,', 'Haare_2006.jpg', 8, 8, '2007-11-12 10:57:12', '2007-11-12 16:10:36'),
(87, 'ligurien.jpg', 'Udo Dilger, Ravensburg, Haare,Friseur,Fotografie,Fotograf,Fotodesign,Reise,Ligurien,Italien,Erdrutsch', 'ligurien.jpg', 8, 6, '2007-11-12 10:58:48', '2007-11-12 16:10:36'),
(88, 'Kinderkunstf__hrer.jpg', 'Udo Dilger, FÃ¼hrer, Kinder,Kunst,Ravensburg,Fotografie,Fotograf,Fotodesign,StadtfÃ¼hrer,Skulptur,GemÃ¤lde,', 'Kinderkunstf__hrer.jpg', 8, 9, '2007-11-12 11:01:06', '2007-11-12 16:10:36'),
(92, 'AnjaRalf.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'AnjaRalf.jpg', 9, 10, '2007-11-12 15:28:48', '2007-11-13 04:46:55'),
(93, 'AR_out_0007.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'AR_out_0007.jpg', 9, 2, '2007-11-12 15:29:43', '2007-11-13 04:46:55'),
(94, 'AR_out_0009.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'AR_out_0009.jpg', 9, 1, '2007-11-12 15:30:50', '2007-11-13 04:46:55'),
(95, 'AR_out_0014.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto\r\n', 'AR_out_0014.jpg', 9, 4, '2007-11-12 15:32:38', '2007-11-13 04:46:55'),
(96, 'AR_out_0016.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'AR_out_0016.jpg', 9, 5, '2007-11-12 15:35:55', '2007-11-13 04:46:55'),
(97, 'AR_out_0018.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto\r\n', 'AR_out_0018.jpg', 9, 6, '2007-11-12 15:37:43', '2007-11-13 04:46:55'),
(98, 'AR_out_0020.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'AR_out_0020.jpg', 9, 7, '2007-11-12 15:38:27', '2007-11-13 04:46:55'),
(99, 'AR_out_0021.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'AR_out_0021.jpg', 9, 3, '2007-11-12 15:39:39', '2007-11-13 04:46:55'),
(100, 'AR_out_0024.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'AR_out_0024.jpg', 9, 8, '2007-11-12 15:41:15', '2007-11-13 04:46:55'),
(101, 'AR_sepia20.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'AR_sepia20.jpg', 9, 11, '2007-11-12 15:42:41', '2007-11-13 04:46:55'),
(102, 'HZ_AR_Studio0023_sw.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'HZ_AR_Studio0023_sw.jpg', 9, 12, '2007-11-12 15:44:41', '2007-11-13 04:46:55'),
(106, 'Alno_3.jpg', 'KÃ¼che,Rezept,Udo,Ravensburg,Fotodesign,Fotograf,Fotografie,Alno,KÃ¼chenplanung', 'Alno_3.jpg', 8, 3, '2007-11-12 16:06:58', '2007-11-12 16:10:57'),
(108, 'zell.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'zell.jpg', 9, 14, '2007-11-12 16:21:12', '2007-11-13 04:46:55'),
(109, 'Martin-N.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'Martin+N.jpg', 9, 13, '2007-11-12 16:23:07', '2007-11-13 04:46:55'),
(110, 'Snega.jpg', 'Hochzeit,Trauung,Udo Dilger,Ravensburg,Fotografie,Fotodesign,Liebe,Sex,Erotik,Anzug,Kleid,Strumpfband,Hochzeitsfeier,Ehe,Foto', 'Snega.jpg', 9, 15, '2007-11-12 16:25:00', '2007-11-13 04:46:55'),
(111, 'AOK1.jpg', 'AOK,Krankenkasse,Ravensburg,Udo,Dilger,Fotograf,Fotos,Fotografie,Management,Personen,Portrait,', 'AOK1.jpg', 8, 28, '2007-11-13 04:37:58', '2007-11-13 04:37:58'),
(112, 'AOK3.jpg', 'AOK,Krankenkasse,Ravensburg,Udo,Dilger,Fotograf,Fotos,Fotografie,Management,Personen,Portrait,', 'AOK3.jpg', 8, 29, '2007-11-13 04:38:24', '2007-11-13 04:38:24'),
(113, 'AnjaRalfII.jpg', 'Hochzeit,Hochzeitsfotos,Heirat,Trauung,Liebe,GlÃ¼ck,Sex,Erotik,Udo,Dilger,Fotodesign,Fotografie,Fotos,Ravensburg', 'AnjaRalfII.jpg', 9, 9, '2007-11-13 04:41:07', '2007-11-13 04:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `body` text NOT NULL,
  `raw_body` text NOT NULL,
  `parent_id` int(11) NOT NULL default '0',
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `position` int(11) NOT NULL default '0',
  `image` text,
  `permalink` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `name`, `body`, `raw_body`, `parent_id`, `created_at`, `updated_on`, `position`, `image`, `permalink`) VALUES
(1, 'About', 'About', '<p>Noch bin ich mir nicht sicher, was ich Ihnen Ã¼ber mich mitteilen soll. Wollen Sie wissen wie alt ich bin, interessieren Sie sich fÃ¼r meinen beruflichen Werdegang oder soll ich Ihnen etwas Ã¼ber meinen Familienstand erzÃ¤hlen??</p>\n\n\n	<p>Meine Bilder kÃ¶nnen Sie sich aber gerne ansehen und sich, aus welchem Grund auch immer, mit mir in Verbindung setzen.</p>\n\n\n	<p>AuÃŸerdem werde ich meine Bild-Kategorien stÃ¤ndig erweitern, lÃ¶schen, ersetzen oder ergÃ¤nzen und Sie Ã¼ber Aktuelles informieren. Es lohnt sich also immer wieder, bei mir rein zu schauen.</p>\n\n\n	<p>In KÃ¼rze wird dann auch Ã¼ber meine Person mehr zu erfahren sein &#8211; bis bald,</p>\n\n\n	<p>Udo Dilger</p>', 'Noch bin ich mir nicht sicher, was ich Ihnen Ã¼ber mich mitteilen soll. Wollen Sie wissen wie alt ich bin, interessieren Sie sich fÃ¼r meinen beruflichen Werdegang oder soll ich Ihnen etwas Ã¼ber meinen Familienstand erzÃ¤hlen??\r\n\r\nMeine Bilder kÃ¶nnen Sie sich aber gerne ansehen und sich, aus welchem Grund auch immer, mit mir in Verbindung setzen.\r\n\r\nAuÃŸerdem werde ich meine Bild-Kategorien stÃ¤ndig erweitern, lÃ¶schen, ersetzen oder ergÃ¤nzen und Sie Ã¼ber Aktuelles informieren. Es lohnt sich also immer wieder, bei mir rein zu schauen.\r\n\r\nIn KÃ¼rze wird dann auch Ã¼ber meine Person mehr zu erfahren sein - bis bald,\r\n\r\nUdo Dilger', 0, '2006-05-17 22:35:59', '2007-11-13 08:05:24', 1, 'PassbildinternetII.jpg', 'about'),
(4, 'Referenzen', 'Referenzen', '<p><strong>Baby Walz</strong> &#8211; <a href="http://www.babywalz.de">www.babywalz.de</a><br/>\n<strong><span class="caps">ALNO</span></strong> &#8211; <a href="http://www.alno.de">www.alno.de</a><br/>\n<strong>Riedel-Glas</strong> &#8211; <a href="http://www.riedel.com">www.riedel.com</a><br/>\n<strong>Stadt Ravensburg</strong> &#8211; <a href="http://www.ravensburg.de">www.ravensburg.de</a><br/>\n<strong>Hogri</strong> &#8211; <a href="http://www.hogri.de">www.hogri.de</a><br/>\n<strong>OberschwÃ¤bische WerkstÃ¤tten f. Behinderte</strong> &#8211; <a href="http://www.owb.de">www.owb.de</a><br/>\n<strong>KaffeerÃ¶sterei Ravensburg</strong> &#8211; <a href="http://www.ravensburger-kaffee-roesterei.de">www.ravensburger-kaffee-roesterei.de</a><br/>\n<strong>Naturhotel Mohren</strong> &#8211; <a href="http://www.naturhotel-mohren.de">www.naturhotel-mohren.de</a><br/>\n<strong><span class="caps">AOK</span></strong> &#8211; <a href="http://www.aok-bw.de">www.aok-bw.de</a><br/>\n<strong>Das Haus</strong> &#8211; <a href="http://www.haus.de">www.haus.de</a><br/></p>', '*Baby Walz* - "www.babywalz.de":http://www.babywalz.de<br/>\r\n*ALNO* - "www.alno.de":http://www.alno.de<br/>\r\n*Riedel-Glas* - "www.riedel.com":http://www.riedel.com<br/>\r\n*Stadt Ravensburg* - "www.ravensburg.de":http://www.ravensburg.de<br/>\r\n*Hogri* - "www.hogri.de":http://www.hogri.de<br/>\r\n*OberschwÃ¤bische WerkstÃ¤tten f. Behinderte* - "www.owb.de":http://www.owb.de<br/>\r\n*KaffeerÃ¶sterei Ravensburg* - "www.ravensburger-kaffee-roesterei.de":http://www.ravensburger-kaffee-roesterei.de<br/>\r\n*Naturhotel Mohren* - "www.naturhotel-mohren.de":http://www.naturhotel-mohren.de<br/>\r\n*AOK* - "www.aok-bw.de":http://www.aok-bw.de<br/>\r\n*Das Haus* - "www.haus.de":http://www.haus.de<br/>', 0, '2006-05-22 15:20:16', '2008-04-25 04:06:11', 2, 'EndlichwaslosinternetII.jpg', 'referenzen'),
(5, 'Kontakt', 'Kontakt', '<table>\n		<tr>\n			<td><strong>Udo Dilger</strong></td>\n			<td>Fotodesigner <span class="caps">AGD</span></td>\n		</tr>\n		<tr>\n			<td>Tel.</td>\n			<td>0751 &#8211; 888 799 3</td>\n		</tr>\n		<tr>\n			<td>Mobil </td>\n			<td> 0172 &#8211; 977 182 3</td>\n		</tr>\n		<tr>\n			<td>Kantstr. 5/3</td>\n			<td>88213 Ravensburg </td>\n		</tr>\n	</table>\n\n\n\n\n	<p>natÃ¼rlich kÃ¶nnen sie mich gerne auch direkt per <a href="mailto:dilger.fotodesign@t-online.de">Mail!</a> kontaktieren</p>', '|*Udo Dilger*|Fotodesigner AGD|\r\n|Tel.|0751 - 888 799 3|\r\n|Mobil | 0172 - 977 182 3|\r\n|Kantstr. 5/3|88213 Ravensburg |\r\n\r\nnatÃ¼rlich kÃ¶nnen sie mich gerne auch direkt per <a href="mailto:dilger.fotodesign@t-online.de">Mail!</a> kontaktieren', 0, '2006-05-22 16:03:41', '2007-11-13 08:05:24', 3, 'lippenstift.jpg', 'kontakt'),
(6, 'Hochzeitspreise / Gutschein', 'Hochzeitspreise / Gutschein', '<p>Im Angebot zum Thema Hochzeitsfotografie biete ich verschiedene Pakete an, welche sich durch Preis und Umfang unterscheiden. Schicken Sie mir einfach ein mail oder fordern Sie die Auflistung der Pakete telefonisch an. Es ist sicherlich auch etwas fÃ¼r Ihre Vorstellungen dabei &#8211; ich freue mich auf Sie,</p>\n\n\n	<p>Udo Dilger</p>\n\n\n	<p>Alle die mich bis zum 31.05.2008 buchen erhalten zu Ihrem Wunschpaket ein Bild aus der Hochzeitsserie nach Wahl im Wert von 58,00 â‚¬ im Format 30&#215;40 gratis.</p>', 'Im Angebot zum Thema Hochzeitsfotografie biete ich verschiedene Pakete an, welche sich durch Preis und Umfang unterscheiden. Schicken Sie mir einfach ein mail oder fordern Sie die Auflistung der Pakete telefonisch an. Es ist sicherlich auch etwas fÃ¼r Ihre Vorstellungen dabei - ich freue mich auf Sie,\r\n\r\nUdo Dilger\r\n\r\nAlle die mich bis zum 31.05.2008 buchen erhalten zu Ihrem Wunschpaket ein Bild aus der Hochzeitsserie nach Wahl im Wert von 58,00 â‚¬ im Format 30x40 gratis.\r\n\r\n', 0, '2007-11-13 07:48:56', '2008-04-22 04:59:13', 4, 'Hochzeitsanzeigeinternet.jpg', 'hochzeitspreise---gutschein');

-- --------------------------------------------------------

--
-- Table structure for table `schema_info`
--

CREATE TABLE IF NOT EXISTS `schema_info` (
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_info`
--

INSERT INTO `schema_info` (`version`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(40) default NULL,
  `email` varchar(100) default NULL,
  `crypted_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `crypted_password`, `salt`, `created_at`, `updated_at`) VALUES
(1, 'keith', 'keith@keithbingman.com', 'ac8e446de0c26fa9f3453f2d453d0f7339805cc2', '0f656d5052456d3d6fffa1e5f3192ac058b7c8b7', '2006-03-16 15:25:50', NULL),
(2, 'udo', 'test@test.com', 'd736d541355cc4d0b3add975e6cd5165c790d035', '45ca8856a41b50c603d83563ba8f83b3c0e36c99', '2006-05-17 22:39:01', '2006-05-17 22:39:01'),
(3, 'ulufu', 'dilger.fotodesign@t-online.de', '65d10a4cd1f92f6e083bff3c4547d542eafc2958', 'a7c64a8255af9894401eb64e1e5843012f2375f8', '2006-05-22 16:48:48', '2006-05-22 16:48:48');
