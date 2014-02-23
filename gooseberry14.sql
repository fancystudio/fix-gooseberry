-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Hostiteľ: localhost:3306
-- Vygenerované: St 11.Dec 2013, 22:32
-- Verzia serveru: 5.1.63-log
-- Verzia PHP: 5.4.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `gooseberry14`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_additional_htmlblob_users`
--

CREATE TABLE IF NOT EXISTS `cms_additional_htmlblob_users` (
  `additional_htmlblob_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `htmlblob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_htmlblob_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_additional_htmlblob_users_seq`
--

CREATE TABLE IF NOT EXISTS `cms_additional_htmlblob_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_additional_htmlblob_users_seq`
--

INSERT INTO `cms_additional_htmlblob_users_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_additional_users`
--

CREATE TABLE IF NOT EXISTS `cms_additional_users` (
  `additional_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_additional_users`
--

INSERT INTO `cms_additional_users` (`additional_users_id`, `user_id`, `page_id`, `content_id`) VALUES
(2, -3, NULL, 59);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_additional_users_seq`
--

CREATE TABLE IF NOT EXISTS `cms_additional_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_additional_users_seq`
--

INSERT INTO `cms_additional_users_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_adminlog`
--

CREATE TABLE IF NOT EXISTS `cms_adminlog` (
  `timestamp` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(40) DEFAULT NULL,
  KEY `cms_index_adminlog1` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_adminlog`
--

INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES
(1386776597, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776372, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386776371, 2, 'admin', -1, 'Kataloger', 'File "file_14.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776371, 2, 'admin', -1, 'Kataloger', 'File "file_13.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776371, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776371, 2, 'admin', -1, 'Kataloger', 'File "file_14.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776371, 2, 'admin', -1, 'Kataloger', 'File "file_13.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776371, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776265, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386776265, 2, 'admin', -1, 'Kataloger', 'File "file_11.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776265, 2, 'admin', -1, 'Kataloger', 'File "file_11.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776134, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386776134, 2, 'admin', -1, 'Kataloger', 'File "file_10.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776134, 2, 'admin', -1, 'Kataloger', 'File "file_10.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776023, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.128.216'),
(1386776006, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386775737, 2, 'admin', 114, 'Content Item: Vizuálny koncept konferencií', 'Edited', '85.216.128.216'),
(1386775567, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386775533, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386775413, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386775413, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386775413, 2, 'admin', -1, 'Kataloger', 'File "file_11.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386775413, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386775413, 2, 'admin', -1, 'Kataloger', 'File "file_11.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386775253, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386775063, 2, 'admin', 113, 'Content Item: Vráťte sa ako bohyňa ', 'Edited', '85.216.128.216'),
(1386775025, 2, 'admin', 113, 'Content Item: Vráťte sa ako bohyňa ', 'Edited', '85.216.128.216'),
(1386774744, 2, 'admin', 113, 'Content Item: Vráťte sa ako bohyňa ', 'Edited', '85.216.128.216'),
(1386774744, 2, 'admin', -1, 'Kataloger', 'File "file_4.mp4" uploaded for item come-back-as-a-godness.', '85.216.128.216'),
(1386774743, 2, 'admin', -1, 'Kataloger', 'File "file_4.mp4" uploaded for item come-back-as-a-godness.', '85.216.128.216'),
(1386774296, 2, 'admin', 133, 'Content Item: Nekadyl', 'Added', '85.216.128.216'),
(1386774296, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item nekadyl.', '85.216.128.216'),
(1386774296, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item nekadyl.', '85.216.128.216'),
(1386774220, 2, 'admin', 132, 'Content Item: S&D Pharma Slovensko', 'Added', '85.216.128.216'),
(1386774126, 2, 'admin', 109, 'Content Item: Floceta', 'Edited', '85.216.128.216'),
(1386774126, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item floceta.', '85.216.128.216'),
(1386774126, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item floceta.', '85.216.128.216'),
(1386774009, 2, 'admin', 129, 'Content Item: Noc reklamožrútov 2013', 'Edited', '85.216.128.216'),
(1386774009, 2, 'admin', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item the-night-of-the-adeaters.', '85.216.128.216'),
(1386774009, 2, 'admin', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item the-night-of-the-adeaters.', '85.216.128.216'),
(1386773838, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386773837, 2, 'admin', -1, 'Kataloger', 'File "file_13.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773837, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773837, 2, 'admin', -1, 'Kataloger', 'File "file_11.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773837, 2, 'admin', -1, 'Kataloger', 'File "file_13.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773837, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773837, 2, 'admin', -1, 'Kataloger', 'File "file_11.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773630, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386773630, 2, 'admin', -1, 'Kataloger', 'File "file_10.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773630, 2, 'admin', -1, 'Kataloger', 'File "file_10.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773575, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386773575, 2, 'admin', -1, 'Kataloger', 'File "file_9.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773575, 2, 'admin', -1, 'Kataloger', 'File "file_8.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773575, 2, 'admin', -1, 'Kataloger', 'File "file_9.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773575, 2, 'admin', -1, 'Kataloger', 'File "file_8.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386773485, 2, 'admin', 118, 'Content Item: Imidžová komunikácia', 'Edited', '85.216.128.216'),
(1386773434, 2, 'admin', 118, 'Content Item: Imidžová komunikácia', 'Edited', '85.216.128.216'),
(1386773434, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item image-communication.', '85.216.128.216'),
(1386773434, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item image-communication.', '85.216.128.216'),
(1386773389, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386773333, 2, 'admin', 118, 'Content Item: Imidžová komunikácia', 'Edited', '85.216.128.216'),
(1386773295, 2, 'admin', 118, 'Content Item: Imidžová komunikácia', 'Edited', '85.216.128.216'),
(1386773291, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item image-communication.', '85.216.128.216'),
(1386773291, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item image-communication.', '85.216.128.216'),
(1386773193, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386767480, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1386763619, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386763618, 2, 'admin', -1, 'Kataloger', 'File "file_7.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386763618, 2, 'admin', -1, 'Kataloger', 'File "file_7.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386763458, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386763458, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386763458, 2, 'admin', -1, 'Kataloger', 'File "file_5.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386763458, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386763458, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386763458, 2, 'admin', -1, 'Kataloger', 'File "file_5.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386763457, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386763457, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.128.216'),
(1386763173, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1386763170, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1386763159, 0, '', -1, '(IP: 89.173.129.149) Admin Username: fancystudio', 'Login Failed', ''),
(1386762000, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386761999, 2, 'admin', -1, 'Kataloger', 'File "file_3.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386761999, 2, 'admin', -1, 'Kataloger', 'File "file_3.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386761839, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Added', '85.216.128.216'),
(1386761839, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp4" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386761839, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386761839, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386761369, 2, 'admin', 119, 'Core', 'Content Item: Noc výskumníkov 2013', '85.216.128.216'),
(1386761358, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386761294, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386761158, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386761063, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386760567, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386760567, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386760567, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386760356, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386760226, 2, 'admin', 125, 'Content Item: Korporátna identita', 'Edited', '85.216.128.216'),
(1386760209, 2, 'admin', 117, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1386760188, 2, 'admin', 118, 'Content Item: Imidžová komunikácia', 'Edited', '85.216.128.216'),
(1386760170, 2, 'admin', 114, 'Content Item: Konferencie', 'Edited', '85.216.128.216'),
(1386760162, 2, 'admin', 113, 'Content Item: Vráťte sa ako bohyňa ', 'Edited', '85.216.128.216'),
(1386760153, 2, 'admin', 112, 'Content Item: Staňte sa bohyňou', 'Edited', '85.216.128.216'),
(1386760139, 2, 'admin', 108, 'Content Item: Korporátna identita', 'Edited', '85.216.128.216'),
(1386760121, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386760109, 2, 'admin', 127, 'Content Item: Logotyp Dr.Max akadémia', 'Edited', '85.216.128.216'),
(1386760074, 2, 'admin', 105, 'Content Item: Výročie 150 rokov ', 'Edited', '85.216.128.216'),
(1386760058, 2, 'admin', 103, 'Content Item: Každá sme originál!', 'Edited', '85.216.128.216'),
(1386760041, 2, 'admin', 113, 'Content Item: Vráťte sa ako bohyňa ', 'Edited', '85.216.128.216'),
(1386760016, 2, 'admin', 112, 'Content Item: Staňte sa bohyňou', 'Edited', '85.216.128.216'),
(1386759985, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386759973, 2, 'admin', 120, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.128.216'),
(1386759962, 2, 'admin', 121, 'Content Item: Noc výskumníkov 2011', 'Edited', '85.216.128.216'),
(1386759952, 2, 'admin', 122, 'Content Item: Noc výskumníkov 2009', 'Edited', '85.216.128.216'),
(1386759934, 2, 'admin', 121, 'Content Item: Noc výskumníkov 2011', 'Edited', '85.216.128.216'),
(1386759919, 2, 'admin', 120, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.128.216'),
(1386759907, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386759878, 2, 'admin', 114, 'Content Item: Konferencie', 'Edited', '85.216.128.216'),
(1386759803, 2, 'admin', 127, 'Content Item: Logotyp Dr.Max akadémia', 'Edited', '85.216.128.216'),
(1386759782, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.128.216'),
(1386759645, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386697640, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386697610, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386697610, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386697610, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386697610, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386697610, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386697479, 2, 'admin', 120, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.128.216'),
(1386697449, 2, 'admin', 120, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.128.216'),
(1386697448, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2012.', '85.216.128.216'),
(1386697448, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2012.', '85.216.128.216'),
(1386697448, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2012.', '85.216.128.216'),
(1386697448, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2012.', '85.216.128.216'),
(1386697277, 2, 'admin', 113, 'Content Item: Vráťte sa ako bohyňa ', 'Edited', '85.216.128.216'),
(1386530235, 1, 'fancystudio', -1, 'System maintenance', 'Cache cleared', '85.216.148.63'),
(1386526059, 1, 'fancystudio', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '85.216.148.63'),
(1386526058, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1386521723, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1386697277, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item come-back-as-a-godness.', '85.216.128.216'),
(1386697277, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item come-back-as-a-godness.', '85.216.128.216'),
(1386697121, 2, 'admin', 129, 'Content Item: Noc reklamožrútov 2013', 'Added', '85.216.128.216'),
(1386697120, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item the-night-of-the-adeaters.', '85.216.128.216'),
(1386697046, 2, 'admin', 128, 'Content Item: Cinema City Slovensko', 'Added', '85.216.128.216'),
(1386696947, 2, 'admin', 113, 'Content Item: Vráťte sa ako bohyňa ', 'Edited', '85.216.128.216'),
(1386696946, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item come-back-as-a-godness.', '85.216.128.216'),
(1386696946, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item come-back-as-a-godness.', '85.216.128.216'),
(1386696884, 2, 'admin', 114, 'Content Item: Konferencie', 'Edited', '85.216.128.216'),
(1386696847, 2, 'admin', 114, 'Content Item: Konferencie', 'Edited', '85.216.128.216'),
(1386696847, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item conference.', '85.216.128.216'),
(1386696847, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item conference.', '85.216.128.216'),
(1386696545, 2, 'admin', 127, 'Content Item: logotyp Dr.Max akadémia', 'Edited', '85.216.128.216'),
(1386696393, 2, 'admin', 127, 'Content Item: logotyp', 'Added', '85.216.128.216'),
(1386696393, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item logotype.', '85.216.128.216'),
(1386696337, 2, 'admin', 126, 'Content Item: Dr.Max Lekáreň', 'Added', '85.216.128.216'),
(1386695794, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386695745, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386695745, 2, 'admin', -1, 'Kataloger', 'File "file_11.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386695745, 2, 'admin', -1, 'Kataloger', 'File "file_11.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386695582, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386695359, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386695295, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386695252, 2, 'admin', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '85.216.128.216'),
(1386695251, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386609381, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1386759593, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386759593, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386759593, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386759505, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386759505, 2, 'admin', -1, 'Kataloger', 'File "file_5.mp4" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386759505, 2, 'admin', -1, 'Kataloger', 'File "file_5.mp4" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386759375, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386759345, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386759345, 2, 'admin', -1, 'Kataloger', 'File "file_4.mp4" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386759345, 2, 'admin', -1, 'Kataloger', 'File "file_4.mp4" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386759116, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386758979, 2, 'admin', 130, 'Content Item: Klub NIKÉ', 'Added', '85.216.128.216'),
(1386758975, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item club-nike.', '85.216.128.216'),
(1386757676, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386712889, 2, 'admin', 63, 'Content Item: služby', 'Edited', '77.247.224.29'),
(1386712736, 2, 'admin', 63, 'Content Item: služby', 'Edited', '77.247.224.29'),
(1386712596, 2, 'admin', 63, 'Content Item: služby', 'Edited', '77.247.224.29'),
(1386712452, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '77.247.224.29'),
(1386701749, 1, 'fancystudio', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1386701495, 1, 'fancystudio', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1386700943, 1, 'fancystudio', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1386700693, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1386700661, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1386790028, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1384117686, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384117719, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '127.0.0.1'),
(1384117840, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '127.0.0.1'),
(1384127397, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '127.0.0.1'),
(1384127398, 1, 'fancystudio', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '127.0.0.1'),
(1384127511, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '127.0.0.1'),
(1384127697, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '127.0.0.1'),
(1384127773, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '127.0.0.1'),
(1384172074, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384175914, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '127.0.0.1'),
(1384175915, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', '127.0.0.1'),
(1384189848, 1, 'fancystudio', -1, '(IP: 127.0.0.1) Admin Username: fancystudio', 'Login Failed', '127.0.0.1'),
(1384189857, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384191795, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384195810, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384196069, 1, 'fancystudio', 71, 'Core', 'Content Item: podklient 1 sk', '127.0.0.1'),
(1384196352, 1, 'fancystudio', 70, 'Content Item: klient 2 sk (Parent ID: 4.2)', 'Deleted', '127.0.0.1'),
(1384196352, 1, 'fancystudio', 69, 'Content Item: klient 1 sk (Parent ID: 4.1)', 'Deleted', '127.0.0.1'),
(1384196565, 1, 'fancystudio', 75, 'Content Item: SOVVA', 'Added', '127.0.0.1'),
(1384196731, 1, 'fancystudio', 76, 'Content Item: Bayer', 'Added', '127.0.0.1'),
(1384196748, 1, 'fancystudio', 76, 'Content Item: Bayer', 'Edited', '127.0.0.1'),
(1384196881, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item newsletter-scope.', '127.0.0.1'),
(1384196881, 1, 'fancystudio', 77, 'Content Item: Newsletter Scope', 'Added', '127.0.0.1'),
(1384196899, 1, 'fancystudio', 77, 'Content Item: Newsletter Scope', 'Edited', '127.0.0.1'),
(1384197000, 1, 'fancystudio', 77, 'Core', 'Content Item: Newsletter Scope', '127.0.0.1'),
(1384197202, 1, 'fancystudio', 78, 'Content Item: projekt', 'Added', '127.0.0.1'),
(1384197253, 1, 'fancystudio', 78, 'Core', 'Content Item: projekt', '127.0.0.1'),
(1384197654, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item newsletter-scope.', '127.0.0.1'),
(1384197655, 1, 'fancystudio', 79, 'Content Item: Newsletter Scope', 'Added', '127.0.0.1'),
(1384198682, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384198682, 1, 'fancystudio', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384198682, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384198682, 1, 'fancystudio', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384198682, 1, 'fancystudio', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384198682, 1, 'fancystudio', -1, 'Kataloger', 'File "file_5.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384198683, 1, 'fancystudio', 80, 'Content Item: Noc Výskumníkov 2013', 'Added', '127.0.0.1'),
(1384198801, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384198833, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384198860, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384198916, 1, 'fancystudio', -1, 'Kataloger', 'File "file_6.png" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384198916, 1, 'fancystudio', -1, 'Kataloger', 'File "file_6.png" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384198917, 1, 'fancystudio', 80, 'Content Item: Noc Výskumníkov 2013', 'Edited', '127.0.0.1'),
(1384198933, 1, 'fancystudio', 80, 'Content Item: Noc Výskumníkov 2013', 'Edited', '127.0.0.1'),
(1384199061, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '127.0.0.1'),
(1384199174, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384199600, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384199729, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384199920, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384200827, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384200942, 1, 'fancystudio', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384200942, 1, 'fancystudio', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384200942, 1, 'fancystudio', 79, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384202891, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '127.0.0.1'),
(1384203524, 1, 'fancystudio', 2, 'Admin Username: admin', 'Added', '127.0.0.1'),
(1384203567, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '127.0.0.1'),
(1384204369, 2, 'admin', -1, 'Kataloger', 'File "file_0.JPG" is not an acceptable format.', '127.0.0.1'),
(1384204369, 2, 'admin', -1, 'Kataloger', 'File "file_0.JPG" is not an acceptable format.', '127.0.0.1'),
(1384204448, 2, 'admin', -1, 'Kataloger', 'File "file_0.png" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384204448, 2, 'admin', -1, 'Kataloger', 'File "file_0.png" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384204449, 2, 'admin', 80, 'Content Item: Noc Výskumníkov 2013', 'Edited', '127.0.0.1'),
(1384204626, 2, 'admin', -1, '(IP: 127.0.0.1) Admin Username: fancystudio', 'Login Failed', '127.0.0.1'),
(1384204632, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '127.0.0.1'),
(1384204705, 2, 'admin', -1, 'Kataloger', 'File "file_1.JPG" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384204705, 2, 'admin', -1, 'Kataloger', 'File "file_1.JPG" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384204706, 2, 'admin', 80, 'Content Item: Noc Výskumníkov 2013', 'Edited', '127.0.0.1'),
(1384204776, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384205220, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384205220, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384205221, 1, 'fancystudio', 80, 'Content Item: Noc Výskumníkov 2013', 'Edited', '127.0.0.1'),
(1384205498, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384205518, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384205559, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384205711, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384205711, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vy-skumni-kov-2013.', '127.0.0.1'),
(1384205712, 1, 'fancystudio', 80, 'Content Item: Noc Výskumníkov 2013', 'Edited', '127.0.0.1'),
(1384206535, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '127.0.0.1'),
(1384210216, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1384210228, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384210422, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '127.0.0.1'),
(1384212510, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384213282, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.mp4" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384213282, 1, 'fancystudio', -1, 'Kataloger', 'File "file_1.png" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384213282, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.mp4" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384213282, 1, 'fancystudio', -1, 'Kataloger', 'File "file_1.png" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384213283, 1, 'fancystudio', 79, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384213864, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '127.0.0.1'),
(1384214298, 1, 'fancystudio', 59, 'Content Item: Referencie', 'Edited', '127.0.0.1'),
(1384214336, 1, 'fancystudio', 59, 'Content Item: Referencie', 'Edited', '127.0.0.1'),
(1384216083, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '127.0.0.1'),
(1384216902, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384216954, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384217024, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384217058, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1384217066, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384217124, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384217166, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384217206, 1, 'fancystudio', 1, 'Permission Group ID: 1', 'Changed', '127.0.0.1'),
(1384217498, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '127.0.0.1'),
(1384217620, 2, 'admin', 80, 'Core', 'Content Item: Noc Výskumníkov 2013', '127.0.0.1'),
(1384218342, 1, 'fancystudio', 79, 'Core', 'Content Item: Newsletter Scope', '127.0.0.1'),
(1384271787, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1384271984, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '127.0.0.1'),
(1384274524, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384274537, 1, 'fancystudio', 75, 'Core', 'Content Item: SOVVA', '85.216.148.63'),
(1384274540, 1, 'fancystudio', 76, 'Core', 'Content Item: Bayer', '85.216.148.63'),
(1384274719, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.148.63'),
(1384274767, 2, 'admin', -1, 'Error: Unable to load template content ''content_en', 'has occured', '85.216.148.63'),
(1384274887, 2, 'admin', 81, 'Content Item: SOVVA', 'Added', '85.216.148.63'),
(1384274952, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384274952, 2, 'admin', 82, 'Content Item: Newsletter Scope', 'Added', '85.216.148.63'),
(1384274967, 2, 'admin', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384275211, 2, 'admin', -1, 'Kataloger', 'File "file_0.mov" is not an acceptable format.', '85.216.148.63'),
(1384275211, 2, 'admin', -1, 'Kataloger', 'File "file_1.mov" is not an acceptable format.', '85.216.148.63'),
(1384275509, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.148.63'),
(1384275509, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2012.', '85.216.148.63'),
(1384275509, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2012.', '85.216.148.63'),
(1384275509, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp4" uploaded for item noc-vyskumnikov-2012.', '85.216.148.63'),
(1384275509, 2, 'admin', -1, 'Kataloger', 'File "file_3.mp4" uploaded for item noc-vyskumnikov-2012.', '85.216.148.63'),
(1384275509, 2, 'admin', 83, 'Content Item: Noc výskumníkov 2012', 'Added', '85.216.148.63'),
(1384276296, 2, 'admin', 84, 'Content Item: Noc výskumníkov 2013', 'Added', '85.216.148.63'),
(1384276314, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384276314, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384276314, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384276314, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384276314, 2, 'admin', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384276670, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384276670, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384276670, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384277014, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384277140, 1, 'fancystudio', -1, 'Kataloger', 'File "file_3.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277140, 1, 'fancystudio', -1, 'Kataloger', 'File "file_3.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277140, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384277285, 1, 'fancystudio', -1, 'Kataloger', 'File "file_4.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277285, 1, 'fancystudio', -1, 'Kataloger', 'File "file_4.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277285, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384277401, 1, 'fancystudio', -1, 'Kataloger', 'File "file_5.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277401, 1, 'fancystudio', -1, 'Kataloger', 'File "file_5.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277402, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384277561, 1, 'fancystudio', -1, 'Kataloger', 'File "file_6.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277561, 1, 'fancystudio', -1, 'Kataloger', 'File "file_7.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277561, 1, 'fancystudio', -1, 'Kataloger', 'File "file_8.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277561, 1, 'fancystudio', -1, 'Kataloger', 'File "file_6.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277561, 1, 'fancystudio', -1, 'Kataloger', 'File "file_7.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277561, 1, 'fancystudio', -1, 'Kataloger', 'File "file_8.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.148.63'),
(1384277561, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384277691, 1, 'fancystudio', 85, 'Content Item: Bayer', 'Added', '85.216.148.63'),
(1384277817, 1, 'fancystudio', -1, 'Kataloger', 'File "file_0.mp4" uploaded for item kazda-sme-original.', '85.216.148.63'),
(1384277817, 1, 'fancystudio', 86, 'Content Item: Každá sme originál', 'Added', '85.216.148.63'),
(1384289463, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384291115, 1, 'fancystudio', 83, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.148.63'),
(1384291211, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384291279, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384291738, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.148.63'),
(1384351936, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1384351937, 2, 'admin', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '85.216.128.216'),
(1384352228, 2, 'admin', 87, 'Content Item: klient sk', 'Added', '85.216.128.216'),
(1384352516, 2, 'admin', 87, 'Content Item: klient sk', 'Edited', '85.216.128.216'),
(1384352713, 2, 'admin', 87, 'Content Item: klient sk', 'Edited', '85.216.128.216'),
(1384352877, 2, 'admin', 81, 'Content Item: SOVVA', 'Edited', '85.216.128.216'),
(1384353699, 2, 'admin', -1, 'Kataloger', 'File "file_0.mp4" uploaded for item projekt-sk.', '85.216.128.216'),
(1384353699, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item projekt-sk.', '85.216.128.216'),
(1384353699, 2, 'admin', 88, 'Content Item: projekt sk', 'Added', '85.216.128.216'),
(1384353934, 2, 'admin', 88, 'Content Item: projekt sk', 'Edited', '85.216.128.216'),
(1384355054, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1384355116, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1384355162, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1384355417, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1384355486, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1384360275, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1384360297, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384360327, 1, 'fancystudio', 2, 'Admin Username: admin', 'Edited', '85.216.148.63'),
(1384360481, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384362052, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384362975, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384363473, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384363552, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384363911, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.148.63'),
(1384363980, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384365061, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384365375, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384365388, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384365473, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384366779, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367298, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367321, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367380, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367437, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367439, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367453, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367550, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367748, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367824, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384367928, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384368102, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384368201, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384368409, 1, 'fancystudio', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384368409, 1, 'fancystudio', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384368409, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384368539, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384368559, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384370105, 1, 'fancystudio', 85, 'Content Item: Bayer', 'Edited', '85.216.148.63'),
(1384370772, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384370772, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384370772, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384374148, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384381699, 1, 'fancystudio', -1, 'Kataloger', 'File "file_4.mp3" uploaded for item noc-vyskumnikov-2012.', '85.216.148.63'),
(1384381699, 1, 'fancystudio', -1, 'Kataloger', 'File "file_4.mp3" uploaded for item noc-vyskumnikov-2012.', '85.216.148.63'),
(1384381700, 1, 'fancystudio', 83, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.148.63'),
(1384382849, 1, 'fancystudio', 83, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.148.63'),
(1384456808, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1384456832, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384456977, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384459432, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384459750, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384459899, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384460032, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384462450, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384465830, 1, 'fancystudio', -1, 'System maintenance', 'Cache cleared', '85.216.148.63'),
(1384465971, 1, 'fancystudio', 88, 'Content Item: projekt sk', 'Edited', '85.216.148.63'),
(1384466013, 1, 'fancystudio', 86, 'Content Item: Každá sme originál', 'Edited', '85.216.148.63'),
(1384466120, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384466984, 1, 'fancystudio', 89, 'Content Item: klient 2 sk', 'Added', '85.216.148.63'),
(1384468522, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1384469088, 1, 'fancystudio', 88, 'Content Item: projekt sk', 'Edited', '85.216.148.63'),
(1384469159, 1, 'fancystudio', -1, 'Module', 'Expanded module: TinyMCE version 2.9.12', '89.173.129.149'),
(1384469159, 1, 'fancystudio', -1, 'TinyMCE WYSIWYG Basic editor', 'Modul verzia 2.9.12 nain&scaron;talovan&yacute;.', '89.173.129.149'),
(1384469159, 1, 'fancystudio', -1, 'TinyMCE', 'Installed version 2.9.12', '89.173.129.149'),
(1384469181, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Edited', '89.173.129.149'),
(1384469453, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1384469561, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1384469582, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1384469736, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1384469781, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1384469890, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1384469910, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1384469952, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384470066, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384470097, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384470109, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384470125, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384470219, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384470252, 1, 'fancystudio', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '89.173.129.149'),
(1384470272, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1384470293, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1384511959, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1384512015, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384512071, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384512086, 1, 'fancystudio', 63, 'Content Item: služby', 'Edited', '89.173.129.149'),
(1384535476, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384545976, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', '85.216.148.63'),
(1384549539, 1, 'fancystudio', -1, 'System maintenance', 'Cache cleared', '85.216.148.63'),
(1384550657, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384550691, 1, 'fancystudio', 89, 'Core', 'Content Item: klient 2 sk', '85.216.148.63'),
(1384552856, 1, 'fancystudio', 84, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.148.63'),
(1384553084, 1, 'fancystudio', -1, 'System maintenance', 'Cache cleared', '85.216.148.63'),
(1384553292, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.148.63'),
(1384553296, 1, 'fancystudio', -1, 'System maintenance', 'Cache cleared', '85.216.148.63'),
(1384554182, 1, 'fancystudio', 81, 'Content Item: SOVVA', 'Edited', '85.216.148.63'),
(1384554294, 1, 'fancystudio', 81, 'Content Item: SOVVA', 'Edited', '85.216.148.63'),
(1384555174, 1, 'fancystudio', 2, 'Admin Username: admin', 'Edited', '85.216.148.63'),
(1384555177, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged Out', '85.216.148.63'),
(1384555182, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.148.63'),
(1384624297, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384624319, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '85.216.148.63'),
(1384624352, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '85.216.148.63'),
(1384627319, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.148.63'),
(1384627325, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384627337, 1, 'fancystudio', -1, 'System maintenance', 'Cache cleared', '85.216.148.63'),
(1384627742, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '85.216.148.63'),
(1384627826, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '85.216.148.63'),
(1384627836, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '85.216.148.63'),
(1384682227, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1384701122, 1, 'fancystudio', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '89.173.129.149'),
(1384721490, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1384723262, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384723313, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384790081, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1384790137, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1384790188, 2, 'admin', 63, 'Content Item: služby', 'Edited', '85.216.128.216'),
(1384790235, 2, 'admin', 63, 'Content Item: služby', 'Edited', '85.216.128.216'),
(1384790329, 2, 'admin', 63, 'Content Item: služby', 'Edited', '85.216.128.216'),
(1384885679, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1384893356, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1384893357, 1, 'fancystudio', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '85.216.148.63'),
(1384893630, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384893630, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384893630, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384893649, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384893695, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384901588, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.148.63'),
(1384901750, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384901750, 1, 'fancystudio', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item newsletter-scope.', '85.216.148.63'),
(1384901751, 1, 'fancystudio', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.148.63'),
(1384943554, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1384943847, 2, 'admin', 90, 'Content Item: Slovenská advokátska komora', 'Added', '85.216.128.216'),
(1384943877, 2, 'admin', 90, 'Content Item: Slovenská advokátska komora', 'Edited', '85.216.128.216'),
(1384944082, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Added', '85.216.128.216'),
(1384944201, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384944337, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384944420, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item lawyers-on-your-side.', '85.216.128.216'),
(1384944420, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item lawyers-on-your-side.', '85.216.128.216'),
(1384944420, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item lawyers-on-your-side.', '85.216.128.216'),
(1384944420, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item lawyers-on-your-side.', '85.216.128.216'),
(1384944420, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item lawyers-on-your-side.', '85.216.128.216'),
(1384944420, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item lawyers-on-your-side.', '85.216.128.216'),
(1384944420, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384944500, 2, 'admin', 88, 'Core', 'Content Item: projekt sk', '85.216.128.216'),
(1384944504, 2, 'admin', 87, 'Core', 'Content Item: klient sk', '85.216.128.216'),
(1384944726, 2, 'admin', -1, 'Kataloger', 'File "file_3.m4v" is not an acceptable format.', '85.216.128.216'),
(1384944726, 2, 'admin', -1, 'Kataloger', 'File "file_3.m4v" is not an acceptable format.', '85.216.128.216');
INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES
(1384944758, 2, 'admin', -1, 'Kataloger', 'File "file_3.mp3" uploaded for item lawyers-on-your-side.', '85.216.128.216'),
(1384944758, 2, 'admin', -1, 'Kataloger', 'File "file_3.mp3" uploaded for item lawyers-on-your-side.', '85.216.128.216'),
(1384944758, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384944787, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384944831, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384944969, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384945058, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384945170, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384945219, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384945312, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384945355, 2, 'admin', 91, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1384945403, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item slovak-bar-association.', '85.216.128.216'),
(1384945403, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item slovak-bar-association.', '85.216.128.216'),
(1384945403, 2, 'admin', 90, 'Content Item: Slovenská advokátska komora', 'Edited', '85.216.128.216'),
(1384945534, 2, 'admin', 90, 'Content Item: Slovenská advokátska komora', 'Edited', '85.216.128.216'),
(1384945551, 2, 'admin', 90, 'Content Item: Slovenská advokátska komora', 'Edited', '85.216.128.216'),
(1384945583, 2, 'admin', 90, 'Content Item: Slovenská advokátska komora', 'Edited', '85.216.128.216'),
(1384945766, 2, 'admin', 92, 'Content Item: Microsoft', 'Added', '85.216.128.216'),
(1384945855, 2, 'admin', -1, 'Kataloger', 'File "file_0.mp4" uploaded for item wmas-offer.', '85.216.128.216'),
(1384945855, 2, 'admin', 93, 'Content Item: Xmas ponuka', 'Added', '85.216.128.216'),
(1384945914, 2, 'admin', 93, 'Content Item: Xmas ponuka', 'Edited', '85.216.128.216'),
(1384945936, 2, 'admin', 93, 'Content Item: Xmas ponuka', 'Edited', '85.216.128.216'),
(1384946004, 2, 'admin', 90, 'Content Item: SLOVENSKÁ ADVOKÁTSKA KOMORA', 'Edited', '85.216.128.216'),
(1384946042, 2, 'admin', 90, 'Content Item: SLOV. ADVOKÁTSKA KOMORA', 'Edited', '85.216.128.216'),
(1384946116, 2, 'admin', 92, 'Content Item: MICROSOFT', 'Edited', '85.216.128.216'),
(1384946158, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384946299, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1384946346, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1384946358, 2, 'admin', 81, 'Content Item: SOVVA', 'Edited', '85.216.128.216'),
(1384946415, 2, 'admin', 82, 'Content Item: Newsletter Scope', 'Edited', '85.216.128.216'),
(1384946469, 2, 'admin', 90, 'Content Item: SLOV. ADVOKÁTSKA KOMORA', 'Edited', '85.216.128.216'),
(1384946482, 2, 'admin', 90, 'Content Item: SLOV. ADVOKÁTSKA KOMORA', 'Edited', '85.216.128.216'),
(1384946510, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384946548, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384946571, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384946578, 2, 'admin', -1, 'Kataloger', 'File "file_0.pdf" is not an acceptable format.', '85.216.128.216'),
(1384946578, 2, 'admin', -1, 'Kataloger', 'File "file_0.pdf" is not an acceptable format.', '85.216.128.216'),
(1384946590, 2, 'admin', 90, 'Content Item: SLOV. ADVOKÁTSKA KOMORA', 'Edited', '85.216.128.216'),
(1384946602, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item slovak-bar-association.', '85.216.128.216'),
(1384946602, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item slovak-bar-association.', '85.216.128.216'),
(1384946602, 2, 'admin', 90, 'Content Item: SLOV. ADVOKÁTSKA KOMORA', 'Edited', '85.216.128.216'),
(1384946608, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item bayer.', '85.216.128.216'),
(1384946608, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item bayer.', '85.216.128.216'),
(1384946608, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384946677, 2, 'admin', 92, 'Content Item: MICROSOFT', 'Edited', '85.216.128.216'),
(1384946750, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384946894, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384946963, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384946968, 2, 'admin', 85, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1384961909, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.128.216'),
(1384961909, 2, 'admin', 2, 'Admin Username: admin', 'Logged Out', '85.216.128.216'),
(1384986068, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1384986632, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1384987292, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1384987408, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1384987414, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1384987450, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1384987465, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1384987499, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1384987525, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1384987711, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1384987928, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '89.173.129.149'),
(1385042475, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1385042477, 2, 'admin', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '85.216.128.216'),
(1385042538, 2, 'admin', 90, 'Content Item: SLOV. ADVOKÁTSKA KOMORA', 'Edited', '85.216.128.216'),
(1385042539, 2, 'admin', 90, 'Content Item: SLOV. ADVOKÁTSKA KOMORA', 'Edited', '85.216.128.216'),
(1385042563, 2, 'admin', 92, 'Content Item: MICROSOFT', 'Edited', '85.216.128.216'),
(1385073581, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1385321206, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1385325876, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1385325877, 1, 'fancystudio', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '89.173.129.149'),
(1385325895, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged Out', '89.173.129.149'),
(1385325900, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '89.173.129.149'),
(1385325911, 2, 'admin', 2, 'Admin Username: admin', 'Edited', '89.173.129.149'),
(1385325937, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.148.63'),
(1385405330, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1385408918, 2, 'admin', -1, '(IP: 89.173.129.149) Admin Username: fancystudio', 'Login Failed', '89.173.129.149'),
(1385414903, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1385592014, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1385731407, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1385812673, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1385812772, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '78.141.120.58'),
(1385812773, 1, 'fancystudio', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '78.141.120.58'),
(1385817910, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1385927775, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1385928550, 0, '', -1, '(IP: 89.173.129.149) Admin Username: admin', 'Login Failed', ''),
(1385928569, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1385928637, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '89.173.129.149'),
(1385928672, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1385932440, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1385932448, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1385934269, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1385934312, 1, 'fancystudio', -1, 'Global Settings', 'Edited', '89.173.129.149'),
(1385934334, 1, 'fancystudio', 24, 'HTML-template: main_template', 'Edited', '89.173.129.149'),
(1386103465, 1, 'fancystudio', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', '85.216.148.63'),
(1386103484, 1, 'fancystudio', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '85.216.148.63'),
(1386103516, 1, 'fancystudio', -1, 'System maintenance', 'Cache cleared', '85.216.148.63'),
(1386162614, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386162653, 2, 'admin', 86, 'Core', 'Content Item: Každá sme originál', '85.216.128.216'),
(1386162656, 2, 'admin', 85, 'Core', 'Content Item: BAYER', '85.216.128.216'),
(1386162662, 2, 'admin', 93, 'Core', 'Content Item: Xmas ponuka', '85.216.128.216'),
(1386162666, 2, 'admin', 92, 'Core', 'Content Item: MICROSOFT', '85.216.128.216'),
(1386162673, 2, 'admin', 91, 'Core', 'Content Item: Advokáti na vašej strane', '85.216.128.216'),
(1386162698, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386162712, 2, 'admin', 90, 'Core', 'Content Item: SLOV. ADVOKÁTSKA KOMORA', '85.216.128.216'),
(1386162715, 2, 'admin', 82, 'Core', 'Content Item: Newsletter Scope', '85.216.128.216'),
(1386162718, 2, 'admin', 83, 'Core', 'Content Item: Noc výskumníkov 2012', '85.216.128.216'),
(1386162721, 2, 'admin', 84, 'Core', 'Content Item: Noc výskumníkov 2013', '85.216.128.216'),
(1386162734, 2, 'admin', 81, 'Core', 'Content Item: SOVVA', '85.216.128.216'),
(1386162831, 2, 'admin', 94, 'Content Item: Bayer', 'Added', '85.216.128.216'),
(1386162864, 2, 'admin', 94, 'Content Item: Bayer', 'Edited', '85.216.128.216'),
(1386163004, 2, 'admin', 94, 'Content Item: Bayer', 'Edited', '85.216.128.216'),
(1386163059, 2, 'admin', 95, 'Content Item: Elgas', 'Added', '85.216.128.216'),
(1386163133, 2, 'admin', 96, 'Content Item: SOVVA', 'Added', '85.216.128.216'),
(1386163217, 2, 'admin', 97, 'Content Item: RE/MAX Slovensko', 'Added', '85.216.128.216'),
(1386163320, 2, 'admin', 98, 'Content Item: METHODS & PLANNING', 'Added', '85.216.128.216'),
(1386163422, 2, 'admin', 96, 'Content Item: SOVVA', 'Edited', '85.216.128.216'),
(1386163464, 2, 'admin', 99, 'Content Item: Niké', 'Added', '85.216.128.216'),
(1386163585, 2, 'admin', 100, 'Content Item: Medinea Beauty Clinic', 'Added', '85.216.128.216'),
(1386163736, 2, 'admin', 101, 'Content Item: Belupo', 'Added', '85.216.128.216'),
(1386163819, 2, 'admin', 95, 'Content Item: Elgas', 'Edited', '85.216.128.216'),
(1386163882, 2, 'admin', 95, 'Content Item: Elgas', 'Edited', '85.216.128.216'),
(1386163909, 2, 'admin', 96, 'Content Item: SOVVA', 'Edited', '85.216.128.216'),
(1386163973, 2, 'admin', 96, 'Content Item: SOVVA', 'Edited', '85.216.128.216'),
(1386164033, 2, 'admin', 102, 'Content Item: Slovenský národný podnik', 'Added', '85.216.128.216'),
(1386164134, 2, 'admin', 96, 'Content Item: SOVVA', 'Edited', '85.216.128.216'),
(1386164321, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item we-all-are-original.', '85.216.128.216'),
(1386164321, 2, 'admin', -1, 'Kataloger', 'File "file_1.ipad" is not an acceptable format.', '85.216.128.216'),
(1386164338, 2, 'admin', 103, 'Content Item: Každá sme originál!', 'Added', '85.216.128.216'),
(1386164392, 2, 'admin', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item we-all-are-original.', '85.216.128.216'),
(1386164392, 2, 'admin', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item we-all-are-original.', '85.216.128.216'),
(1386164392, 2, 'admin', 103, 'Content Item: Každá sme originál!', 'Edited', '85.216.128.216'),
(1386164630, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1386164676, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1386164700, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1386164725, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1386164758, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1386164791, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1386164868, 2, 'admin', 63, 'Content Item: služby', 'Edited', '85.216.128.216'),
(1386165546, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386165581, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386165610, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386165686, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386165732, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386165848, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386187582, 0, '', -1, '(IP: 89.173.129.149) Admin Username: fancystudio', 'Login Failed', ''),
(1386187586, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1386187590, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '89.173.129.149'),
(1386187689, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386187713, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386187733, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386187752, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386187762, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386188193, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386188247, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386188309, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386188450, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386188607, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386188651, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386188710, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188728, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188730, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188730, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188731, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188731, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188731, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188741, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188777, 1, 'fancystudio', 72, 'Content Item: o nás', 'Edited', '89.173.129.149'),
(1386188784, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386189271, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386189298, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386189477, 1, 'fancystudio', 73, 'Content Item: kontakt', 'Edited', '89.173.129.149'),
(1386190817, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1386238784, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386238786, 2, 'admin', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '85.216.128.216'),
(1386238888, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386238981, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386239019, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386239152, 2, 'admin', 73, 'Content Item: kontakt', 'Edited', '85.216.128.216'),
(1386239301, 2, 'admin', 94, 'Content Item: BAYER', 'Edited', '85.216.128.216'),
(1386239313, 2, 'admin', 101, 'Content Item: BELUPO', 'Edited', '85.216.128.216'),
(1386239370, 2, 'admin', 95, 'Content Item: ELGAS, člen skupiny GGE', 'Edited', '85.216.128.216'),
(1386239416, 2, 'admin', 95, 'Content Item: ELGAS', 'Edited', '85.216.128.216'),
(1386239439, 2, 'admin', 100, 'Content Item: MEDINEA BEAUTY CLINIC', 'Edited', '85.216.128.216'),
(1386239506, 2, 'admin', 99, 'Content Item: NIKÉ', 'Edited', '85.216.128.216'),
(1386239513, 2, 'admin', 97, 'Content Item: RE/MAX Slovensko', 'Edited', '85.216.128.216'),
(1386239543, 2, 'admin', 102, 'Content Item: SLOVENSKÝ NÁRODNÝ PODNIK', 'Edited', '85.216.128.216'),
(1386239625, 2, 'admin', 102, 'Content Item: Slovenský národný podnik', 'Edited', '85.216.128.216'),
(1386240665, 2, 'admin', 72, 'Content Item: o nás', 'Edited', '85.216.128.216'),
(1386240836, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item belupo.', '85.216.128.216'),
(1386240836, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item belupo.', '85.216.128.216'),
(1386240836, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item belupo.', '85.216.128.216'),
(1386240836, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item belupo.', '85.216.128.216'),
(1386240836, 2, 'admin', 101, 'Content Item: BELUPO', 'Edited', '85.216.128.216'),
(1386242540, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386242634, 2, 'admin', 104, 'Content Item: Marionnaud Parfumeries', 'Added', '85.216.128.216'),
(1386242810, 2, 'admin', 103, 'Content Item: Každá sme originál!', 'Edited', '85.216.128.216'),
(1386242831, 2, 'admin', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item we-all-are-original.', '85.216.128.216'),
(1386242832, 2, 'admin', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item we-all-are-original.', '85.216.128.216'),
(1386242832, 2, 'admin', 103, 'Content Item: Každá sme originál!', 'Edited', '85.216.128.216'),
(1386270282, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1386276009, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1386322879, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1386322891, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386323034, 2, 'admin', -1, 'Kataloger', 'File "file_0.JPG" uploaded for item 150-years-anniversary.', '85.216.128.216'),
(1386323034, 2, 'admin', -1, 'Kataloger', 'File "file_1.JPG" uploaded for item 150-years-anniversary.', '85.216.128.216'),
(1386323034, 2, 'admin', -1, 'Kataloger', 'File "file_2.JPG" uploaded for item 150-years-anniversary.', '85.216.128.216'),
(1386323035, 2, 'admin', 105, 'Content Item: Výročie 150 rokov ', 'Added', '85.216.128.216'),
(1386323206, 2, 'admin', 106, 'Content Item: Lady CarCare', 'Added', '85.216.128.216'),
(1386323362, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item corporate-identity.', '85.216.128.216'),
(1386323362, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item corporate-identity.', '85.216.128.216'),
(1386323362, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item corporate-identity.', '85.216.128.216'),
(1386323362, 2, 'admin', -1, 'Kataloger', 'File "file_3.pdf" is not an acceptable format.', '85.216.128.216'),
(1386323389, 2, 'admin', 107, 'Content Item: korporátna identita', 'Added', '85.216.128.216'),
(1386323456, 2, 'admin', 106, 'Content Item: Lady CarCare', 'Edited', '85.216.128.216'),
(1386323511, 2, 'admin', 107, 'Core', 'Content Item: korporátna identita', '85.216.128.216'),
(1386323659, 2, 'admin', 106, 'Content Item: Lady CarCare', 'Edited', '85.216.128.216'),
(1386323908, 2, 'admin', 106, 'Content Item: Lady CarCare', 'Edited', '85.216.128.216'),
(1386336406, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item lady-carcare-2.', '85.216.128.216'),
(1386336406, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item lady-carcare-2.', '85.216.128.216'),
(1386336406, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item lady-carcare-2.', '85.216.128.216'),
(1386336406, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item lady-carcare-2.', '85.216.128.216'),
(1386336406, 2, 'admin', 108, 'Content Item: Lady CarCare', 'Added', '85.216.128.216'),
(1386336525, 2, 'admin', 108, 'Content Item: korporátna identita', 'Edited', '85.216.128.216'),
(1386336659, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item floceta.', '85.216.128.216'),
(1386336659, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item floceta.', '85.216.128.216'),
(1386336659, 2, 'admin', 109, 'Content Item: Floceta', 'Added', '85.216.128.216'),
(1386336745, 2, 'admin', 101, 'Content Item: BELUPO', 'Edited', '85.216.128.216'),
(1386336862, 2, 'admin', 110, 'Content Item: Energia na mieru', 'Added', '85.216.128.216'),
(1386336885, 2, 'admin', 110, 'Core', 'Content Item: Energia na mieru', '85.216.128.216'),
(1386336934, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386336934, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Added', '85.216.128.216'),
(1386337041, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386337041, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item bespoke-energy.', '85.216.128.216'),
(1386337041, 2, 'admin', 111, 'Content Item: Energia na mieru', 'Edited', '85.216.128.216'),
(1386337328, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item become-a-godness.', '85.216.128.216'),
(1386337328, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item become-a-godness.', '85.216.128.216'),
(1386337328, 2, 'admin', 112, 'Content Item: Staňte sa bohyňou', 'Added', '85.216.128.216'),
(1386337575, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item come-back-as-a-godness.', '85.216.128.216'),
(1386337575, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item come-back-as-a-godness.', '85.216.128.216'),
(1386337575, 2, 'admin', 113, 'Content Item: Vráťte sa ako bohyňa ', 'Added', '85.216.128.216'),
(1386337810, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item conference.', '85.216.128.216'),
(1386337810, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item conference.', '85.216.128.216'),
(1386337810, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item conference.', '85.216.128.216'),
(1386337810, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item conference.', '85.216.128.216'),
(1386337810, 2, 'admin', 114, 'Content Item: konferencie', 'Added', '85.216.128.216'),
(1386338116, 2, 'admin', 115, 'Content Item: SLOVENSKÁ ADVOKÁTSKA KOMORA', 'Added', '85.216.128.216'),
(1386338173, 2, 'admin', 115, 'Content Item: Slovenská advokátska komora', 'Edited', '85.216.128.216'),
(1386338360, 2, 'admin', -1, 'Kataloger', 'File "file_0.ipad" is not an acceptable format.', '85.216.128.216'),
(1386338360, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item advocate-on-your-side.', '85.216.128.216'),
(1386338360, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item advocate-on-your-side.', '85.216.128.216'),
(1386338360, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item advocate-on-your-side.', '85.216.128.216'),
(1386338444, 2, 'admin', -1, 'Kataloger', 'File "file_0.mp4" uploaded for item advocate-on-your-side.', '85.216.128.216'),
(1386338444, 2, 'admin', 116, 'Content Item: advokáti na vašej strane', 'Added', '85.216.128.216'),
(1386338471, 2, 'admin', 116, 'Core', 'Content Item: advokáti na vašej strane', '85.216.128.216'),
(1386338571, 2, 'admin', -1, 'Kataloger', 'File "file_0.mp4" uploaded for item advocates-on-your-side.', '85.216.128.216'),
(1386338571, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item advocates-on-your-side.', '85.216.128.216'),
(1386338571, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item advocates-on-your-side.', '85.216.128.216'),
(1386338571, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item advocates-on-your-side.', '85.216.128.216'),
(1386338571, 2, 'admin', 117, 'Content Item: advokáti na vašej strane', 'Added', '85.216.128.216'),
(1386338753, 2, 'admin', 117, 'Content Item: advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1386338800, 2, 'admin', 117, 'Content Item: advokáti na vašej strane', 'Edited', '85.216.128.216'),
(1386340996, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.128.216'),
(1386341176, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item image-communication.', '85.216.128.216'),
(1386341176, 2, 'admin', -1, 'Kataloger', 'File "file_1.ipad" is not an acceptable format.', '85.216.128.216'),
(1386341205, 2, 'admin', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item image-communication.', '85.216.128.216'),
(1386341205, 2, 'admin', 118, 'Content Item: imidžová komunikácia', 'Added', '85.216.128.216'),
(1386341753, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341753, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341753, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341753, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341753, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341753, 2, 'admin', -1, 'Kataloger', 'File "file_5.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341753, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341753, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Added', '85.216.128.216'),
(1386341945, 2, 'admin', -1, 'Kataloger', 'File "file_9.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341945, 2, 'admin', -1, 'Kataloger', 'File "file_9.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386341946, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386341987, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386342375, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386342497, 2, 'admin', -1, 'Kataloger', 'File "file_10.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386342497, 2, 'admin', -1, 'Kataloger', 'File "file_10.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386342497, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386344138, 2, 'admin', -1, 'Kataloger', 'File "file_11.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386344138, 2, 'admin', -1, 'Kataloger', 'File "file_11.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386344138, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386345491, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386345551, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386345771, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386346132, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346132, 2, 'admin', -1, 'Kataloger', 'File "file_5.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346132, 2, 'admin', -1, 'Kataloger', 'File "file_6.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346132, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346132, 2, 'admin', -1, 'Kataloger', 'File "file_5.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346132, 2, 'admin', -1, 'Kataloger', 'File "file_6.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346133, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386346211, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386346427, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346427, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346427, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346427, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346427, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346427, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346427, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386346589, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346589, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346589, 2, 'admin', -1, 'Kataloger', 'File "file_5.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346589, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346589, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346589, 2, 'admin', -1, 'Kataloger', 'File "file_5.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346589, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386346731, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346731, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346731, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386346808, 2, 'admin', -1, 'Kataloger', 'File "file_7.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346808, 2, 'admin', -1, 'Kataloger', 'File "file_7.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386346808, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386347004, 2, 'admin', -1, 'Kataloger', 'File "file_0.mp4" uploaded for item noc-vyskumnikov-2012.', '85.216.128.216'),
(1386347004, 2, 'admin', -1, 'Kataloger', 'File "file_1.mp4" uploaded for item noc-vyskumnikov-2012.', '85.216.128.216'),
(1386347004, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item noc-vyskumnikov-2012.', '85.216.128.216'),
(1386347004, 2, 'admin', 120, 'Content Item: Noc výskumníkov 2012', 'Added', '85.216.128.216'),
(1386347034, 2, 'admin', 120, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.128.216'),
(1386347114, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2011.', '85.216.128.216'),
(1386347114, 2, 'admin', 121, 'Content Item: Noc výskumníkov 2011', 'Added', '85.216.128.216'),
(1386347178, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2009.', '85.216.128.216'),
(1386347178, 2, 'admin', 122, 'Content Item: Noc výskumníkov 2009', 'Added', '85.216.128.216'),
(1386347310, 2, 'admin', 123, 'Content Item: Team DC', 'Added', '85.216.128.216'),
(1386347339, 2, 'admin', 124, 'Content Item: Korporátna identita', 'Added', '85.216.128.216'),
(1386347347, 2, 'admin', 124, 'Core', 'Content Item: Korporátna identita', '85.216.128.216'),
(1386347442, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item corporate-identity.', '85.216.128.216'),
(1386347442, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item corporate-identity.', '85.216.128.216'),
(1386347442, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item corporate-identity.', '85.216.128.216'),
(1386347442, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item corporate-identity.', '85.216.128.216'),
(1386347442, 2, 'admin', 125, 'Content Item: Korporátna identita', 'Added', '85.216.128.216'),
(1386347796, 2, 'admin', 108, 'Content Item: Korporátna identita', 'Edited', '85.216.128.216'),
(1386347819, 2, 'admin', 114, 'Content Item: Konferencie', 'Edited', '85.216.128.216'),
(1386347858, 2, 'admin', 118, 'Content Item: Imidžová komunikácia', 'Edited', '85.216.128.216'),
(1386348028, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386348130, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348130, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348130, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348130, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348130, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348131, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348131, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348131, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348131, 2, 'admin', -1, 'Kataloger', 'File "file_3.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348131, 2, 'admin', -1, 'Kataloger', 'File "file_4.jpg" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348131, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386348325, 2, 'admin', -1, 'Kataloger', 'File "file_5.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348325, 2, 'admin', -1, 'Kataloger', 'File "file_5.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348326, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386348597, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348597, 2, 'admin', -1, 'Kataloger', 'File "file_6.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348598, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386348729, 2, 'admin', -1, 'Kataloger', 'File "file_7.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348729, 2, 'admin', -1, 'Kataloger', 'File "file_7.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348729, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386348863, 2, 'admin', -1, 'Kataloger', 'File "file_8.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348863, 2, 'admin', -1, 'Kataloger', 'File "file_8.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386348863, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386348966, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.128.216'),
(1386349292, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386349437, 2, 'admin', -1, 'Kataloger', 'File "file_9.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386349437, 2, 'admin', -1, 'Kataloger', 'File "file_9.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386349437, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386349571, 2, 'admin', -1, 'Kataloger', 'File "file_10.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386349571, 2, 'admin', -1, 'Kataloger', 'File "file_10.mp4" uploaded for item noc-vyskumnikov-2013.', '85.216.128.216'),
(1386349572, 2, 'admin', 119, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386350147, 0, '', -1, '(IP: 85.216.148.63) Admin Username: fancystudio', 'Login Failed', ''),
(1386350156, 1, 'fancystudio', 1, 'Admin Username: fancystudio', 'Logged In', '85.216.148.63'),
(1386776597, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776597, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386776731, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386776776, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776776, 2, 'admin', -1, 'Kataloger', 'File "file_12.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386776776, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386776950, 2, 'admin', 120, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.128.216'),
(1386777016, 2, 'admin', 120, 'Content Item: Noc výskumníkov 2012', 'Edited', '85.216.128.216'),
(1386777059, 2, 'admin', 94, 'Content Item: Bayer', 'Edited', '85.216.128.216'),
(1386777073, 2, 'admin', 101, 'Content Item: Belupo', 'Edited', '85.216.128.216'),
(1386777091, 2, 'admin', 95, 'Content Item: Elgas', 'Edited', '85.216.128.216'),
(1386777116, 2, 'admin', 100, 'Content Item: Medinea Beauty Clinic', 'Edited', '85.216.128.216'),
(1386777138, 2, 'admin', 98, 'Content Item: Methods & Planning', 'Edited', '85.216.128.216'),
(1386777156, 2, 'admin', 99, 'Content Item: Niké', 'Edited', '85.216.128.216'),
(1386777176, 2, 'admin', 96, 'Content Item: Sovva', 'Edited', '85.216.128.216'),
(1386778045, 2, 'admin', 134, 'Content Item: Eglo svietidlá', 'Added', '85.216.128.216'),
(1386778157, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item communication-visuals.', '85.216.128.216'),
(1386778157, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item communication-visuals.', '85.216.128.216'),
(1386778158, 2, 'admin', 135, 'Content Item: Komunikačné vizuály', 'Added', '85.216.128.216'),
(1386778362, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item communication-visuals.', '85.216.128.216'),
(1386778362, 2, 'admin', -1, 'Kataloger', 'File "file_2.jpg" uploaded for item communication-visuals.', '85.216.128.216'),
(1386778362, 2, 'admin', 135, 'Content Item: Komunikačné vizuály', 'Edited', '85.216.128.216'),
(1386778563, 2, 'admin', 103, 'Content Item: Každá sme originál!', 'Edited', '85.216.128.216'),
(1386779395, 2, 'admin', 136, 'Content Item: Plus Pharma', 'Added', '85.216.128.216'),
(1386779472, 2, 'admin', -1, 'Kataloger', 'File "file_0.jpg" uploaded for item gastronorm.', '85.216.128.216'),
(1386779472, 2, 'admin', -1, 'Kataloger', 'File "file_1.29" is not an acceptable format.', '85.216.128.216'),
(1386779472, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item gastronorm.', '85.216.128.216'),
(1386779507, 2, 'admin', 137, 'Content Item: Gastronorm', 'Added', '85.216.128.216'),
(1386779564, 2, 'admin', 134, 'Content Item: Eglo Slovensko', 'Edited', '85.216.128.216'),
(1386779587, 2, 'admin', -1, 'Kataloger', 'File "file_1.29" is not an acceptable format.', '85.216.128.216'),
(1386779587, 2, 'admin', -1, 'Kataloger', 'File "file_1.29" is not an acceptable format.', '85.216.128.216'),
(1386779625, 2, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '85.216.128.216'),
(1386779625, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item gastronorm.', '85.216.128.216'),
(1386779625, 2, 'admin', -1, 'Kataloger', 'File "file_1.jpg" uploaded for item gastronorm.', '85.216.128.216'),
(1386779626, 2, 'admin', 137, 'Content Item: Gastronorm', 'Edited', '85.216.128.216'),
(1386779656, 2, 'admin', 137, 'Content Item: Gastronorm', 'Edited', '85.216.128.216'),
(1386779686, 2, 'admin', 137, 'Content Item: Gastronorm', 'Edited', '85.216.128.216'),
(1386779720, 2, 'admin', 137, 'Content Item: Gastronorm', 'Edited', '85.216.128.216'),
(1386779814, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item gastronorm.', '85.216.128.216'),
(1386779814, 2, 'admin', -1, 'Kataloger', 'File "file_2.mp3" uploaded for item gastronorm.', '85.216.128.216'),
(1386779814, 2, 'admin', 137, 'Content Item: Gastronorm', 'Edited', '85.216.128.216'),
(1386780067, 2, 'admin', -1, 'Kataloger', 'File "file_13.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386780067, 2, 'admin', -1, 'Kataloger', 'File "file_13.jpg" uploaded for item researchers-night-2013.', '85.216.128.216'),
(1386780067, 2, 'admin', 131, 'Content Item: Noc výskumníkov 2013', 'Edited', '85.216.128.216'),
(1386780148, 2, 'admin', 137, 'Content Item: Gastronorm', 'Edited', '85.216.128.216'),
(1386780785, 2, 'admin', 2, 'Admin Username: admin', 'Logged In', '85.216.128.216'),
(1386780847, 2, 'admin', -1, 'Kataloger', 'File "file_4.mp3" uploaded for item advocates-on-your-side.', '85.216.128.216'),
(1386780847, 2, 'admin', -1, 'Kataloger', 'File "file_4.mp3" uploaded for item advocates-on-your-side.', '85.216.128.216'),
(1386780847, 2, 'admin', 117, 'Content Item: Advokáti na vašej strane', 'Edited', '85.216.128.216');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_admin_bookmarks`
--

CREATE TABLE IF NOT EXISTS `cms_admin_bookmarks` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`),
  KEY `cms_index_admin_bookmarks_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_admin_bookmarks_seq`
--

CREATE TABLE IF NOT EXISTS `cms_admin_bookmarks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_admin_bookmarks_seq`
--

INSERT INTO `cms_admin_bookmarks_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_admin_recent_pages`
--

CREATE TABLE IF NOT EXISTS `cms_admin_recent_pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_admin_recent_pages_seq`
--

CREATE TABLE IF NOT EXISTS `cms_admin_recent_pages_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_admin_recent_pages_seq`
--

INSERT INTO `cms_admin_recent_pages_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_content`
--

CREATE TABLE IF NOT EXISTS `cms_content` (
  `content_id` int(11) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `default_content` tinyint(4) DEFAULT NULL,
  `menu_text` varchar(255) DEFAULT NULL,
  `content_alias` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `markup` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  `id_hierarchy` varchar(255) DEFAULT NULL,
  `hierarchy_path` text,
  `prop_names` text,
  `metadata` text,
  `titleattribute` varchar(255) DEFAULT NULL,
  `tabindex` varchar(10) DEFAULT NULL,
  `accesskey` varchar(5) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `secure` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `cms_index_content_by_content_alias_active` (`content_alias`,`active`),
  KEY `cms_index_content_by_default_content` (`default_content`),
  KEY `cms_index_content_by_parent_id` (`parent_id`),
  KEY `cms_index_content_by_hierarchy` (`hierarchy`),
  KEY `cms_index_content_by_idhier` (`content_id`,`hierarchy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_content`
--

INSERT INTO `cms_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `collapsed`, `markup`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`, `secure`, `page_url`) VALUES
(15, 'Home', 'content', 1, -1, 24, 1, '00001', 1, 'Home', 'home', 1, 1, 'html', 1, 1, '15', 'home', 'target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,image1,content_en,obsah_en', '', 'Home Page, shortcut key=1', '', '1', 1, '2006-07-25 21:22:31', '2013-11-09 21:09:36', 0, ''),
(103, 'Každá sme originál!', 'catalogitem', 2, 94, 24, 1, '00004.00001.00001', 0, 'We All are Original!', 'we-all-are-original', 1, NULL, 'html', 1, 0, '59.94.103', 'referencie/bayer/we-all-are-original', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:38:58', '2013-12-11 17:16:03', 0, ''),
(94, 'Bayer', 'catalogcategory', 2, 59, 24, 1, '00004.00001', 0, 'Bayer', 'bayer', 1, NULL, 'html', 1, 0, '59.94', 'referencie/bayer', 'sort_order,sub_template,extra2,extra3,extra1,searchable,content_en,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:13:51', '2013-12-11 16:50:59', 0, ''),
(72, 'o nás', 'content', 1, -1, 24, 2, '00002', 0, 'about us', 'about-us', 1, NULL, 'html', 1, 1, '72', 'about-us', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,obsah_en,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-11-07 15:51:51', '2013-12-05 11:51:04', 0, ''),
(73, 'kontakt', 'content', 1, -1, 24, 5, '00005', 0, 'contact', 'kontakt', 1, NULL, 'html', 1, 1, '73', 'kontakt', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,obsah_en,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-11-07 15:53:19', '2013-12-05 11:25:52', 0, ''),
(63, 'služby', 'content', 1, -1, 24, 3, '00003', 0, 'services', 'sluzby', 1, NULL, 'html', 1, 1, '63', 'sluzby', 'obsah_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-11-06 22:03:09', '2013-12-10 23:01:29', 0, ''),
(59, 'Referencie', 'content', 1, -1, 24, 4, '00004', 0, 'Referencie', 'referencie', 1, NULL, 'html', 1, 1, '59', 'referencie', 'obsah_en,content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-11-06 21:24:30', '2013-11-12 00:58:55', 0, ''),
(102, 'Slovenský národný podnik', 'catalogcategory', 2, 59, 24, 15, '00004.00015', 0, 'Slovenský národný podnik', 'slovensky-narodny-podnik', 1, NULL, 'html', 1, 0, '59.102', 'referencie/slovensky-narodny-podnik', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:33:53', '2013-12-11 17:36:02', 0, ''),
(95, 'Elgas', 'catalogcategory', 2, 59, 24, 6, '00004.00006', 0, 'Elgas', 'elgas', 1, NULL, 'html', 1, 0, '59.95', 'referencie/elgas', 'items_per_page,recurse,sort_order,sub_template,extra2,extra3,extra1,searchable,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:17:39', '2013-12-11 17:36:34', 0, ''),
(96, 'Sovva', 'catalogcategory', 2, 59, 24, 16, '00004.00016', 0, 'Sovva', 'sovva', 1, NULL, 'html', 1, 0, '59.96', 'referencie/sovva', 'extra2,searchable,extra1,content_en,recurse,items_per_page,sort_order,sub_template,extra3', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:18:53', '2013-12-11 17:35:58', 0, ''),
(97, 'RE/MAX Slovensko', 'catalogcategory', 2, 59, 24, 12, '00004.00012', 0, 'RE/MAX Slovensko', 're-max-slovensko', 1, NULL, 'html', 1, 0, '59.97', 'referencie/re-max-slovensko', 'extra2,extra1,searchable,content_en,items_per_page,recurse,sort_order,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:20:17', '2013-12-11 17:36:13', 0, ''),
(98, 'Methods & Planning', 'catalogcategory', 2, 59, 24, 10, '00004.00010', 0, 'Methods & Planning', 'methods-planning', 1, NULL, 'html', 1, 0, '59.98', 'referencie/methods-planning', 'items_per_page,recurse,sort_order,extra3,sub_template,searchable,extra1,extra2,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:22:00', '2013-12-11 17:36:19', 0, ''),
(99, 'Niké', 'catalogcategory', 2, 59, 24, 11, '00004.00011', 0, 'Niké', 'nike', 1, NULL, 'html', 1, 0, '59.99', 'referencie/nike', 'items_per_page,extra1,extra2,extra3,sub_template,sort_order,recurse,content_en,searchable', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:24:24', '2013-12-11 17:36:16', 0, ''),
(100, 'Medinea Beauty Clinic', 'catalogcategory', 2, 59, 24, 9, '00004.00009', 0, 'Medinea Beauty Clinic', 'medinea-beauty-clinic', 1, NULL, 'html', 1, 0, '59.100', 'referencie/medinea-beauty-clinic', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:26:25', '2013-12-11 17:36:24', 0, ''),
(101, 'Belupo', 'catalogitem', 2, 59, 24, 2, '00004.00002', 0, 'Belupo', 'belupo', 1, NULL, 'html', 1, 0, '59.101', 'referencie/belupo', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-04 14:28:56', '2013-12-11 16:51:13', 0, ''),
(104, 'Marionnaud Parfumeries', 'catalogcategory', 2, 59, 24, 8, '00004.00008', 0, 'Marionnaud Parfumeries', 'marionnaud-parfumeries', 1, NULL, 'html', 1, 0, '59.104', 'referencie/marionnaud-parfumeries', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-05 12:23:54', '2013-12-11 17:36:28', 0, ''),
(105, 'Výročie 150 rokov ', 'catalogitem', 2, 94, 24, 2, '00004.00001.00002', 0, '150 Years Anniversary', '150-years-anniversary', 1, NULL, 'html', 1, 0, '59.94.105', 'referencie/bayer/150-years-anniversary', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 10:43:54', '2013-12-11 12:07:54', 0, ''),
(106, 'Lady CarCare', 'catalogcategory', 2, 59, 24, 7, '00004.00007', 0, 'Lady CarCare', 'lady-carcare', 1, NULL, 'html', 1, 0, '59.106', 'referencie/lady-carcare', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 10:46:46', '2013-12-11 17:36:31', 0, ''),
(108, 'Korporátna identita', 'catalogitem', 2, 106, 24, 1, '00004.00007.00001', 0, 'Corporate Identity', 'lady-carcare-2', 1, NULL, 'html', 1, 0, '59.106.108', 'referencie/lady-carcare/lady-carcare-2', 'searchable,extra1,content_en,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 14:26:46', '2013-12-11 12:08:59', 0, ''),
(109, 'Floceta', 'catalogitem', 2, 101, 24, 1, '00004.00002.00001', 0, 'Floceta', 'floceta', 1, NULL, 'html', 1, 0, '59.101.109', 'referencie/belupo/floceta', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 14:30:59', '2013-12-11 16:02:06', 0, ''),
(111, 'Energia na mieru', 'catalogitem', 2, 95, 24, 1, '00004.00006.00001', 0, 'Bespoke Energy', 'bespoke-energy', 1, NULL, 'html', 1, 0, '59.95.111', 'referencie/elgas/bespoke-energy', 'searchable,extra1,content_en,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 14:35:34', '2013-12-11 12:08:41', 0, ''),
(112, 'Staňte sa bohyňou', 'catalogitem', 2, 100, 24, 1, '00004.00009.00001', 0, 'Become a Goddess', 'become-a-godness', 1, NULL, 'html', 1, 0, '59.100.112', 'referencie/medinea-beauty-clinic/become-a-godness', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 14:42:08', '2013-12-11 12:09:13', 0, ''),
(113, 'Vráťte sa ako bohyňa ', 'catalogitem', 2, 100, 24, 2, '00004.00009.00002', 0, 'Come Back as a Goddess', 'come-back-as-a-godness', 1, NULL, 'html', 1, 0, '59.100.113', 'referencie/medinea-beauty-clinic/come-back-as-a-godness', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 14:46:15', '2013-12-11 16:17:42', 0, ''),
(114, 'Vizuálny koncept konferencií', 'catalogitem', 2, 98, 24, 1, '00004.00010.00001', 0, 'Visual Concept of Conferences', 'conference', 1, NULL, 'html', 1, 0, '59.98.114', 'referencie/methods-planning/conference', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 14:50:10', '2013-12-11 16:28:57', 0, ''),
(115, 'Slovenská advokátska komora', 'catalogcategory', 2, 59, 24, 14, '00004.00014', 0, 'Slovenská advokátska komora', 'slovenska-advokatska-komora', 1, NULL, 'html', 1, 0, '59.115', 'referencie/slovenska-advokatska-komora', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 14:55:15', '2013-12-11 17:36:05', 0, ''),
(117, 'Advokáti na vašej strane', 'catalogitem', 2, 115, 24, 1, '00004.00014.00001', 0, 'Advocates on your Side', 'advocates-on-your-side', 1, NULL, 'html', 1, 0, '59.115.117', 'referencie/slovenska-advokatska-komora/advocates-on-your-side', 'searchable,extra1,content_en,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 15:02:51', '2013-12-11 17:54:07', 0, ''),
(118, 'Imidžová komunikácia', 'catalogitem', 2, 97, 24, 1, '00004.00012.00001', 0, 'Image Communication', 'image-communication', 1, NULL, 'html', 1, 0, '59.97.118', 'referencie/re-max-slovensko/image-communication', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 15:46:45', '2013-12-11 15:51:25', 0, ''),
(131, 'Noc výskumníkov 2013', 'catalogitem', 2, 96, 24, 4, '00004.00016.00004', 0, 'Researchers'' Night 2013', 'researchers-night-2013', 1, NULL, 'html', 1, 0, '59.96.131', 'referencie/sovva/researchers-night-2013', 'searchable,extra1,content_en,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-11 12:37:19', '2013-12-11 17:41:07', 0, ''),
(120, 'Noc výskumníkov 2012', 'catalogitem', 2, 96, 24, 1, '00004.00016.00001', 0, 'Researchers'' Night 2012', 'noc-vyskumnikov-2012', 1, NULL, 'html', 1, 0, '59.96.120', 'referencie/sovva/noc-vyskumnikov-2012', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 17:23:24', '2013-12-11 16:50:16', 0, ''),
(121, 'Noc výskumníkov 2011', 'catalogitem', 2, 96, 24, 2, '00004.00016.00002', 0, 'Researchers'' Night 2011', 'noc-vyskumnikov-2011', 1, NULL, 'html', 1, 0, '59.96.121', 'referencie/sovva/noc-vyskumnikov-2011', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 17:25:14', '2013-12-11 12:06:02', 0, ''),
(122, 'Noc výskumníkov 2009', 'catalogitem', 2, 96, 24, 3, '00004.00016.00003', 0, 'Researchers'' Night 2009', 'noc-vyskumnikov-2009', 1, NULL, 'html', 1, 0, '59.96.122', 'referencie/sovva/noc-vyskumnikov-2009', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 17:26:18', '2013-12-11 12:05:51', 0, ''),
(123, 'Team DC', 'catalogcategory', 2, 59, 24, 18, '00004.00018', 0, 'Team DC', 'team-dc', 1, NULL, 'html', 1, 0, '59.123', 'referencie/team-dc', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 17:28:30', '2013-12-11 17:35:47', 0, ''),
(125, 'Korporátna identita', 'catalogitem', 2, 123, 24, 1, '00004.00018.00001', 0, 'Corporate Identity', 'corporate-identity', 1, NULL, 'html', 1, 0, '59.123.125', 'referencie/team-dc/corporate-identity', 'searchable,extra1,content_en,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-06 17:30:42', '2013-12-11 12:10:26', 0, ''),
(126, 'Dr.Max Lekáreň', 'catalogcategory', 2, 59, 24, 4, '00004.00004', 0, 'Dr.Max Lekáreň', 'dr-max-lekaren', 1, NULL, 'html', 1, 0, '59.126', 'referencie/dr-max-lekaren', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-10 18:25:37', '2013-12-10 18:39:31', 0, ''),
(127, 'Logotyp Dr.Max akadémia', 'catalogitem', 2, 126, 24, 1, '00004.00004.00001', 0, 'Logotype Dr.Max Academy', 'logotype', 1, NULL, 'html', 1, 0, '59.126.127', 'referencie/dr-max-lekaren/logotype', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-10 18:26:33', '2013-12-11 12:08:29', 0, ''),
(128, 'Cinema City Slovensko', 'catalogcategory', 2, 59, 24, 3, '00004.00003', 0, 'Cinema City Slovensko', 'cinema-city-slovensko', 1, NULL, 'html', 1, 0, '59.128', 'referencie/cinema-city-slovensko', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-10 18:37:26', '2013-12-10 18:39:31', 0, ''),
(129, 'Noc reklamožrútov 2013', 'catalogitem', 2, 128, 24, 1, '00004.00003.00001', 0, 'The Night of the AdEaters 2013', 'the-night-of-the-adeaters', 1, NULL, 'html', 1, 0, '59.128.129', 'referencie/cinema-city-slovensko/the-night-of-the-adeaters', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-10 18:38:40', '2013-12-11 16:00:09', 0, ''),
(130, 'Klub NIKÉ', 'catalogitem', 2, 99, 24, 1, '00004.00011.00001', 0, 'Club NIKÉ', 'club-nike', 1, NULL, 'html', 1, 0, '59.99.130', 'referencie/nike/club-nike', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-11 11:49:37', '2013-12-11 11:49:37', 0, ''),
(132, 'S&D Pharma Slovensko', 'catalogcategory', 2, 59, 24, 13, '00004.00013', 0, 'S&D Pharma Slovensko', 's-d-pharma-slovensko', 1, NULL, 'html', 1, 0, '59.132', 'referencie/s-d-pharma-slovensko', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-11 16:03:40', '2013-12-11 17:36:08', 0, ''),
(133, 'Nekadyl', 'catalogitem', 2, 132, 24, 1, '00004.00013.00001', 0, 'Nekadyl', 'nekadyl', 1, NULL, 'html', 1, 0, '59.132.133', 'referencie/s-d-pharma-slovensko/nekadyl', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-11 16:04:56', '2013-12-11 16:04:56', 0, ''),
(134, 'Eglo Slovensko', 'catalogcategory', 2, 59, 24, 5, '00004.00005', 0, 'Eglo Slovensko', 'eglo-svietidla', 1, NULL, 'html', 1, 0, '59.134', 'referencie/eglo-svietidla', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-11 17:07:25', '2013-12-11 17:36:34', 0, ''),
(135, 'Komunikačné vizuály', 'catalogitem', 2, 134, 24, 1, '00004.00005.00001', 0, 'Communication Visuals', 'communication-visuals', 1, NULL, 'html', 1, 0, '59.134.135', 'referencie/eglo-svietidla/communication-visuals', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-11 17:09:17', '2013-12-11 17:12:42', 0, ''),
(136, 'Plus Pharma', 'catalogcategory', 2, 59, 24, 17, '00004.00017', 0, 'Plus Pharma', 'plus-pharma', 1, NULL, 'html', 1, 0, '59.136', 'referencie/plus-pharma', 'content_en,searchable,extra1,extra2,extra3,sub_template,sort_order,recurse,items_per_page', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-11 17:29:54', '2013-12-11 17:35:53', 0, ''),
(137, 'Gastronorm', 'catalogitem', 2, 136, 24, 1, '00004.00017.00001', 0, 'Gastronorm', 'gastronorm', 1, NULL, 'html', 1, 0, '59.136.137', 'referencie/plus-pharma/gastronorm', 'content_en,searchable,extra1,extra2,extra3,sub_template', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2013-12-11 17:31:47', '2013-12-11 17:42:27', 0, '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_content_props`
--

CREATE TABLE IF NOT EXISTS `cms_content_props` (
  `content_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_content_props_by_content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_content_props`
--

INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
(31, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
(32, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
(15, 'string', 'target', '', '', '', '', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'pagedata', '', '', '', '', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'extra1', '', '', '', '', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'extra2', '', '', '', '', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'extra3', '', '', '', '', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'image', '', '', '', '-1', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'thumbnail', '', '', '', '-1', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'searchable', '', '', '', '1', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'image1', '', '', '', 'uploads/images/logo1.gif', NULL, '2009-05-13 10:12:18'),
(63, 'string', 'obsah_en', NULL, NULL, NULL, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2>Services</h2>\r\n<p><strong><span style="color: #8aaa1c;">MEDIA:</span></strong> PLANNING | BUYING | PARTNERSHIPS | ANALYSIS | ADVICE<br /><strong><font color="#8aaa1c">CREATION:</font></strong> STRATEGY | CORPORATE IDENTITY AND LOGOTYPE | ARTCREATING CAMPAIGNS | WEBDESIGN<br /><strong><span style="color: #8aaa1c;">MARKETING:</span></strong> UNTRADITIONAL MARKETING (GUERRILLA, AMBIENT, VIRAL, ETC.)<br /><strong><span style="color: #8aaa1c;">EVENT MARKETING</span></strong></p>\r\n<p><strong><span style="color: #8aaa1c;">MERCHANDISING</span></strong></p>\r\n<p><strong><span style="color: #8aaa1c;">PRODUCTION</span></strong></p>\r\n</body>\r\n</html>', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-12-10 23:01:29'),
(63, 'string', 'content_en', NULL, NULL, NULL, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2>Služby</h2>\r\n<p><strong><span style="color: #8aaa1c;">MÉDIÁ:</span></strong> STRATÉGIA | PLÁNOVANIE | NÁKUP | PARTNERSTVÁ | ANALÝZY | PORADENSTVO</p>\r\n<p><strong><span style="color: #8aaa1c;">KREATÍVA:</span></strong> VIZUÁLNA STRATÉGIA | CORPORATE IDENTITY A LOGOTYP | TVORBA KAMPANÍ | WEBDESIGN</p>\r\n<p><strong><span style="color: #8aaa1c;">MARKETING: </span></strong>STRATÉGIA | NETRADIČNÝ MARKETING (GUERRILLA, AMBIENT, VIRAL, ATĎ)</p>\r\n<p><strong><span style="color: #8aaa1c;">EVENT MARKETING</span></strong></p>\r\n<p><strong><span style="color: #8aaa1c;">MERCHANDISING</span></strong></p>\r\n<p><strong><span style="color: #8aaa1c;"><strong>PRODUKCIA  </strong></span></strong></p>\r\n<p> </p>\r\n</body>\r\n</html>', NULL, '2013-12-10 23:01:29'),
(15, 'string', 'content_en', '', '', '', '{main_content}', NULL, '2013-11-09 21:09:36'),
(15, 'string', 'obsah_en', NULL, NULL, NULL, '', NULL, '2013-11-09 21:09:36'),
(96, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:18:53'),
(96, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:18:53'),
(96, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:18:53'),
(94, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 16:50:59'),
(94, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:50:59'),
(72, 'string', 'content_en', NULL, NULL, NULL, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2>O nás</h2>\r\n<p>Sme mladá ale dynamicky sa rozvíjajúca agentúra<br />poskytujúca full servis v oblasti reklamy,<br />marketingu a médií</p>\r\n<p>Máme plnú hlavu nápadov, nebojíme sa inovácií<br />a správnej miery rizika<br />Tešíme sa na ďalšie výzvy.</p>\r\n</body>\r\n</html>', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'obsah_en', NULL, NULL, NULL, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2>About us</h2>\r\n<p>By combining of several years <br />of experiences on the field of <br />advertising and marketing</p>\r\n<p>young, full of energy and originality,<br />dynamically growing full-service advertising agency <br />was established in 2009.</p>\r\n</body>\r\n</html>', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-12-05 11:51:04'),
(72, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-12-05 11:51:04'),
(73, 'string', 'content_en', NULL, NULL, NULL, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong>gooseberry, s.r.o.</strong></p>\r\n<p>Jakubovo námestie 14 | 811 09 Bratislava, Slovensko<br />tel.: +421 2 2072 0083 | tel.: +421 905 484 035 | +421 918 855 348 <br />e-mail: <a href="mailto:info@gooseberry.sk">info@gooseberry.sk</a></p>\r\n<p> </p>\r\n<p><strong>Fakturačné údaje:</strong> <br />gooseberry, s.r.o. | Bohorova 3 | 851 01 Bratislava <br />zapísaná v Obch. registri Okresný súd Bratislava 1., Vložka číslo: 60284/B <br />IČO: 44957521 | DIČ: 2022883247 | IČ DPH: SK2022883247 <br />Bankové spojenie: Tatra banka, a.s. | Číslo účtu: 2621194353/1100</p>\r\n</body>\r\n</html>', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'obsah_en', NULL, NULL, NULL, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong>gooseberry, s.r.o.</strong></p>\r\n<p>Jakubovo námestie 14 | 811 09 Bratislava, Slovakia</p>\r\n<p>phone: +421 2 2072 0083 | tel.: +421 905 484 035 | +421 918 855 348 </p>\r\n<p>e-mail: <a href="mailto:info@gooseberry.sk">info@gooseberry.sk</a></p>\r\n<p> </p>\r\n<p><strong>Invoice address:</strong></p>\r\n<p>gooseberry, s.r.o. | Bohorova 3 | 851 01 Bratislava, Slovakia<br />zapísaná v Obch. registri Okresný súd Bratislava 1., Vložka číslo: 60284/B <br />Company No: 44957521 | TAX No: 2022883247 | VAT No: SK2022883247 <br />Bank: Tatra banka, a.s. | Account number: 2621194353/1100</p>\r\n<p>IBAN: SK97 1100 0000 0026 2119 4353 | SWIFT: TATR SK BX</p>\r\n</body>\r\n</html>', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-12-05 11:25:52'),
(73, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-12-05 11:25:52'),
(59, 'string', 'obsah_en', NULL, NULL, NULL, '', NULL, '2013-11-12 00:58:55'),
(94, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:13:51'),
(94, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:13:51'),
(94, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:13:51'),
(94, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:13:51'),
(94, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:13:51'),
(59, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-11-12 00:58:55'),
(59, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-11-12 00:58:55'),
(95, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 16:51:31'),
(96, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:18:53'),
(95, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 16:51:31'),
(95, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 16:51:31'),
(95, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:51:31'),
(95, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:17:39'),
(95, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:17:39'),
(95, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:17:39'),
(95, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:17:39'),
(94, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 16:50:59'),
(94, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 16:50:59'),
(95, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:17:39'),
(100, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:26:25'),
(99, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 16:52:36'),
(99, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:24:24'),
(99, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:24:24'),
(99, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:24:24'),
(99, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:52:36'),
(99, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 16:52:36'),
(99, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 16:52:36'),
(99, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:24:24'),
(98, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 16:52:18'),
(98, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 16:52:18'),
(98, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 16:52:18'),
(98, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:22:00'),
(98, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:52:18'),
(98, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:22:00'),
(98, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:22:00'),
(98, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:22:00'),
(98, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:22:00'),
(97, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:20:17'),
(97, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:20:17'),
(97, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:20:17'),
(96, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 16:52:56'),
(96, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 16:52:56'),
(97, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:20:17'),
(97, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-05 11:31:53'),
(97, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-05 11:31:53'),
(97, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-05 11:31:53'),
(97, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:20:17'),
(97, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-05 11:31:53'),
(99, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:24:24'),
(96, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 16:52:56'),
(96, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:52:56'),
(96, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:18:53'),
(100, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:26:25'),
(100, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:26:25'),
(100, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:26:25'),
(100, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:26:25'),
(100, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:51:56'),
(100, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 16:51:56'),
(100, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 16:51:56'),
(100, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 16:51:56'),
(101, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:28:56'),
(101, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:28:56'),
(101, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:28:56'),
(101, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:28:56'),
(101, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:28:56'),
(101, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 16:51:13'),
(101, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-05 11:28:33'),
(101, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-05 11:28:33'),
(101, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-05 11:28:33'),
(102, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:33:53'),
(102, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:33:53'),
(102, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:33:53'),
(102, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:33:53'),
(102, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:33:53'),
(102, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-05 11:33:45'),
(102, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-05 11:33:45'),
(102, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-05 11:33:45'),
(102, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-05 11:33:45'),
(103, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-04 14:38:58'),
(103, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-04 14:38:58'),
(103, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-04 14:38:58'),
(103, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-04 14:38:58'),
(103, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-04 14:38:58'),
(103, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 17:16:03'),
(104, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-05 12:23:54'),
(104, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-05 12:23:54'),
(104, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-05 12:23:54'),
(104, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-05 12:23:54'),
(104, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-05 12:23:54'),
(104, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-05 12:23:54'),
(104, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-05 12:23:54'),
(104, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-05 12:23:54'),
(104, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-05 12:23:54'),
(105, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 10:43:54'),
(105, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 10:43:54'),
(105, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 10:43:54'),
(105, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 10:43:54'),
(105, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 10:43:54'),
(105, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 12:07:54'),
(106, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 10:46:46'),
(106, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 10:46:46'),
(106, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 10:46:46'),
(106, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 10:46:46'),
(106, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 10:46:46'),
(106, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-06 10:58:28'),
(106, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-06 10:58:28'),
(106, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-06 10:58:28'),
(106, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-06 10:58:28'),
(108, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 14:26:46'),
(108, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 14:26:46'),
(108, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 14:26:46'),
(108, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 14:26:46'),
(108, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 14:26:46'),
(108, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 12:08:59'),
(109, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 14:30:59'),
(109, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 14:30:59'),
(109, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 14:30:59'),
(109, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 14:30:59'),
(109, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 14:30:59'),
(109, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 16:02:06'),
(111, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 14:35:34'),
(111, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 14:35:34'),
(111, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 14:35:34'),
(111, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 14:35:34'),
(111, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 14:35:34'),
(111, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 12:08:41'),
(112, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 14:42:08'),
(112, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 14:42:08'),
(112, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 14:42:08'),
(112, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 14:42:08'),
(112, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 14:42:08'),
(112, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 12:09:13'),
(113, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 14:46:15'),
(113, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 14:46:15'),
(113, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 14:46:15'),
(113, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 14:46:15'),
(113, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 14:46:15'),
(113, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 16:17:42'),
(114, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 14:50:10'),
(114, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 14:50:10'),
(114, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 14:50:10'),
(114, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 14:50:10'),
(114, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 14:50:10'),
(114, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 16:28:57'),
(115, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 14:55:15'),
(115, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 14:55:15'),
(115, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 14:55:15'),
(115, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 14:55:15'),
(115, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 14:55:15'),
(115, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-06 14:56:13'),
(115, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-06 14:56:13'),
(115, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-06 14:56:13'),
(115, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-06 14:56:13'),
(117, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 15:02:51'),
(117, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 15:02:51'),
(117, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 15:02:51'),
(117, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 15:02:51'),
(117, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 15:02:51'),
(117, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 17:54:07'),
(118, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 15:46:45'),
(118, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 15:46:45'),
(118, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 15:46:45'),
(118, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 15:46:45'),
(118, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 15:46:45'),
(118, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 15:51:25'),
(131, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-11 12:37:19'),
(131, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-11 12:37:19'),
(131, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-11 12:37:19'),
(120, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 17:23:24'),
(120, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 17:23:24'),
(120, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 17:23:24'),
(120, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 17:23:24'),
(120, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 17:23:24'),
(120, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 16:50:16'),
(121, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 17:25:14'),
(121, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 17:25:14'),
(121, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 17:25:14'),
(121, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 17:25:14'),
(121, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 17:25:14'),
(121, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 12:06:02'),
(122, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 17:26:18'),
(122, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 17:26:18'),
(122, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 17:26:18'),
(122, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 17:26:18'),
(122, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 17:26:18'),
(122, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 12:05:51'),
(123, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 17:28:30'),
(123, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 17:28:30'),
(123, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 17:28:30'),
(123, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 17:28:30'),
(123, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 17:28:30'),
(123, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-06 17:28:30'),
(123, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-06 17:28:30'),
(123, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-06 17:28:30'),
(123, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-06 17:28:30'),
(125, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-06 17:30:42'),
(125, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-06 17:30:42'),
(125, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-06 17:30:42'),
(125, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-06 17:30:42'),
(125, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-06 17:30:42'),
(125, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 12:10:26'),
(126, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-10 18:25:37'),
(126, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-10 18:25:37'),
(126, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-10 18:25:37'),
(126, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-10 18:25:37'),
(126, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-10 18:25:37'),
(126, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-10 18:25:37'),
(126, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-10 18:25:37'),
(126, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-10 18:25:37'),
(126, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-10 18:25:37'),
(127, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-10 18:26:33'),
(127, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-10 18:26:33'),
(127, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-10 18:26:33'),
(127, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-10 18:26:33'),
(127, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-10 18:26:33'),
(127, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 12:08:29'),
(128, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-10 18:37:26'),
(128, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-10 18:37:26'),
(128, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-10 18:37:26'),
(128, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-10 18:37:26'),
(128, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-10 18:37:26'),
(128, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-10 18:37:26'),
(128, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-10 18:37:26'),
(128, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-10 18:37:26'),
(128, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-10 18:37:26'),
(129, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-10 18:38:40'),
(129, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-10 18:38:40'),
(129, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-10 18:38:40'),
(129, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-10 18:38:40'),
(129, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-10 18:38:40'),
(129, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 16:00:09'),
(130, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-11 11:49:37'),
(130, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-11 11:49:37'),
(130, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-11 11:49:37'),
(130, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-11 11:49:37'),
(130, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-11 11:49:37'),
(130, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 11:49:37'),
(131, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-11 12:37:19'),
(131, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-11 12:37:19'),
(131, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 17:41:07'),
(132, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-11 16:03:40'),
(132, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:03:40'),
(132, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-11 16:03:40'),
(132, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-11 16:03:40'),
(132, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-11 16:03:40'),
(132, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:03:40'),
(132, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 16:03:40'),
(132, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 16:03:40'),
(132, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 16:03:40'),
(133, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-11 16:04:56'),
(133, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-11 16:04:56'),
(133, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-11 16:04:56'),
(133, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-11 16:04:56'),
(133, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-11 16:04:56'),
(133, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 16:04:56'),
(134, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-11 17:07:25'),
(134, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-11 17:07:25'),
(134, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-11 17:07:25'),
(134, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-11 17:07:25'),
(134, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-11 17:07:25'),
(134, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 17:32:44'),
(134, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 17:32:44'),
(134, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 17:32:44'),
(134, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 17:32:44'),
(135, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-11 17:09:17'),
(135, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-11 17:09:17'),
(135, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-11 17:09:17'),
(135, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-11 17:09:17'),
(135, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-11 17:09:17'),
(135, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 17:12:42'),
(136, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-11 17:29:54'),
(136, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-11 17:29:54'),
(136, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-11 17:29:54'),
(136, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-11 17:29:54'),
(136, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-11 17:29:54'),
(136, 'string', 'sub_template', NULL, NULL, NULL, '1', NULL, '2013-12-11 17:29:54'),
(136, 'string', 'sort_order', NULL, NULL, NULL, 'natural', NULL, '2013-12-11 17:29:54'),
(136, 'string', 'recurse', NULL, NULL, NULL, 'mixed_one', NULL, '2013-12-11 17:29:54'),
(136, 'string', 'items_per_page', NULL, NULL, NULL, '10', NULL, '2013-12-11 17:29:54'),
(137, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-12-11 17:31:47'),
(137, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-12-11 17:31:47'),
(137, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-12-11 17:31:47'),
(137, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-12-11 17:31:47'),
(137, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-12-11 17:31:47'),
(137, 'string', 'sub_template', NULL, NULL, NULL, '6', NULL, '2013-12-11 17:42:27');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_content_props_seq`
--

CREATE TABLE IF NOT EXISTS `cms_content_props_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_content_props_seq`
--

INSERT INTO `cms_content_props_seq` (`id`) VALUES
(56);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_content_seq`
--

CREATE TABLE IF NOT EXISTS `cms_content_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_content_seq`
--

INSERT INTO `cms_content_seq` (`id`) VALUES
(137);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_crossref`
--

CREATE TABLE IF NOT EXISTS `cms_crossref` (
  `child_type` varchar(100) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_crossref_by_child_type_child_id` (`child_type`,`child_id`),
  KEY `cms_index_crossref_by_parent_type_parent_id` (`parent_type`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_crossref`
--

INSERT INTO `cms_crossref` (`child_type`, `child_id`, `parent_type`, `parent_id`, `create_date`, `modified_date`) VALUES
('global_content', 1, 'template', 15, '2009-05-10 16:57:24', '2009-05-10 16:57:24'),
('global_content', 1, 'template', 16, '2009-05-09 17:04:30', '2009-05-09 17:04:30'),
('global_content', 1, 'template', 20, '2009-05-09 23:57:31', '2009-05-09 23:57:31'),
('global_content', 1, 'template', 18, '2009-05-09 17:19:20', '2009-05-09 17:19:20'),
('global_content', 1, 'template', 17, '2009-05-09 21:20:18', '2009-05-09 21:20:18'),
('global_content', 1, 'template', 21, '2009-05-10 16:59:13', '2009-05-10 16:59:13'),
('global_content', 1, 'template', 22, '2009-05-11 02:01:23', '2009-05-11 02:01:23');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_css`
--

CREATE TABLE IF NOT EXISTS `cms_css` (
  `css_id` int(11) NOT NULL,
  `css_name` varchar(255) DEFAULT NULL,
  `css_text` text,
  `media_type` varchar(255) DEFAULT NULL,
  `media_query` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`css_id`),
  KEY `cms_index_css_by_css_name` (`css_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_css`
--

INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(41, 'Handheld', '/*********************************************\r\nSample stylesheet for mobile and small screen handheld devices\r\n\r\nJust a simple layout suitable for smaller screens with less \r\nstyling cabapilities and minimal css\r\n\r\nNote: If you dont want to support mobile devices you can\r\nsafely remove this stylesheet.\r\n*********************************************/\r\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\r\nbody {\r\nmargin:0;\r\npadding:0;\r\nwidth:100%;\r\n}\r\n\r\n/* hide accessibility noprint and definition */\r\n.accessibility,\r\n.noprint,\r\ndfn {\r\ndisplay:none;\r\n}\r\n\r\n/* dont want to download image for header so just set bg color */\r\ndiv#header,\r\ndiv#footer {\r\nbackground-color: #385C72;  \r\ncolor: #fff;\r\ntext-align:center;\r\n}\r\n\r\n/* text colors for header and footer */\r\ndiv#header a,\r\ndiv#footer a {\r\ncolor: #fff;\r\n}\r\n\r\n/* this doesnt look as nice, but takes less space */\r\ndiv#menu_vert ul li,\r\ndiv#menu_horiz ul li {\r\ndisplay:inline;\r\n}\r\n\r\n/* small border at the bottom to have some indicator */\r\ndiv#menu_vert ul,\r\ndiv#menu_horiz ul {\r\nborder-bottom:1px solid #fff;\r\n}\r\n\r\n/* save some space */\r\ndiv.breadcrumbs {\r\ndisplay:none;\r\n}', 'handheld', '', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(30, 'Print', '/*\r\nSections that are hidden when printing the page. We only want the content printed.\r\n*/\r\n\r\n\r\nbody {\r\ncolor: #000 !important; /* we want everything in black */\r\nbackground-color:#fff !important; /* on white background */\r\nfont-family:arial; /* arial is nice to read ;) */\r\nborder:0 !important; /* no borders thanks */\r\n}\r\n\r\n/* This affects every tag */\r\n* {\r\nborder:0 !important; /* again no borders on printouts */\r\n}\r\n\r\n/* \r\nno need for accessibility on printout. \r\nMark all your elements in content you \r\ndont want to get printed with class="noprint"\r\n*/\r\n.accessibility,\r\n.noprint\r\n {\r\ndisplay:none !important; \r\n}\r\n\r\n/* \r\nremove all width constraints from content area\r\n*/\r\ndiv#content,\r\ndiv#main {\r\ndisplay:block !important;\r\nwidth:100% !important;\r\nborder:0 !important;\r\npadding:1em !important;\r\n}\r\n\r\n/* hide everything else! */\r\ndiv#header,\r\ndiv#header h1 a,\r\ndiv.breadcrumbs,\r\ndiv#search,\r\ndiv#footer,\r\ndiv#menu_vert,\r\ndiv#news,\r\ndiv.right49,\r\ndiv.left49,\r\ndiv#sidebar  {\r\n   display: none !important;\r\n}\r\n\r\nimg {\r\nfloat:none; /* this makes images couse a pagebreak if it doesnt fit on the page */\r\n}', 'print', '', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(31, 'Accessibility and cross-browser tools', '/* accessibility */\r\n/* menu links accesskeys */\r\nspan.accesskey {\r\n	text-decoration: none;\r\n}\r\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\r\n.accessibility, hr {\r\n/* position set so the rest can be set out side of visual browser viewport */\r\n	position: absolute;\r\n/* takes it out top side */\r\n	top: -999em;\r\n/* takes it out left side */\r\n	left: -999em;\r\n}\r\n/* definition tags are also hidden, these are also used for accessibility menu links */\r\ndfn {\r\n	position: absolute;\r\n	left: -1000px;\r\n	top: -1000px;\r\n	width: 0;\r\n	height: 0;\r\n	overflow: hidden;\r\n	display: inline;\r\n}\r\n/* end accessibility */\r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n	position: absolute;\r\n	left: -5000px;\r\n	width: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n	padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n	color: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n	color: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n	color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n	background-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* clearing */\r\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\r\n.clearfix:after {\r\n	content: ".";\r\n	display: block;\r\n	height: 0;\r\n	clear: both;\r\n	visibility: hidden;\r\n}\r\n.clear {\r\n	height: 0;\r\n	clear: both;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n#main .clear {\r\n	height: 0;\r\n	clear: right;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n* html>body .clearfix {\r\n	display: inline-block;\r\n	width: 100%;\r\n}\r\n* html .clear {\r\n/* Hides from IE-mac \\*/\r\n	height: 1%;\r\n	clear: right;\r\n	width: 90%;\r\n/* End hide from IE-mac */\r\n}\r\n/* end clearing */', 'screen', '', '2006-07-25 21:22:32', '2009-05-13 10:42:54'),
(32, 'Layout: Left sidebar + 1 column', '/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don''t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\na, a:link a:active {\r\n/* set all links to have underline */\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n/* this is a bluish color, you change this for all default link colors */\r\n	color: #18507C;\r\n}\r\na:visited {\r\n/* keeps the underline */\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n/* a different color is used for visited links */\r\n	color: #18507C;\r\n}\r\na:hover {\r\n/* remove underline on hover */\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n/* using a different color makes the hover obvious */\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv.back #main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 30px 1px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv.back {\r\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv#sidebara {\r\n	padding: 13px 15px 3px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 10px 1px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 14:06:00'),
(33, 'Navigation: CSSMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* just a little bump down for second level ul */\r\n	top: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n	top: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it''s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 220px;\r\n	padding: 0px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic apperance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it''s container */\r\n	position: relative;\r\n/* more padding to left than default */\r\n	padding: 6px 3px 6px 15px;\r\n	font-weight: normal;\r\n/* darker than first level "a" */\r\n	color: #000;\r\n/* removes any borders that may have been set in first level */\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n/* removes image set in first level "a" */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n	/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n/* removes padding that is used for arrows */\r\n	padding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n	color: #899092;\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 20:20:30'),
(34, 'Navigation: CSSMenu - Horizontal', '/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* same size but different color for each border */\r\n	border-top: 1px solid #C8D3D7;\r\n	border-right: 1px solid #C8D3D7;\r\n	border-bottom: 1px solid #ADC0C7;\r\n	border-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n	margin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n	top: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the "a" */\r\n	margin: 0px;\r\n	padding: 0px;\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n	margin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* set the "a" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px;\r\n	display: block;\r\n/* sets no underline on links */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n	color: #000;\r\n/* keep it the same */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can''t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* keeps it relative to it''s container */\r\n	position: relative;\r\n/* less padding than first level no need for large links here */\r\n	padding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n	font-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n	color: #000;\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 16:52:41'),
(35, 'Module: News', 'div#news {\r\n/* margin for the entire div surrounding the news items */\r\n	margin: 2em 0 1em 1em;\r\n/* border set here */\r\n	border: 1px solid #909799;\r\n/* sets it off from surroundings */\r\n	background: #f5f5f5;\r\n}\r\ndiv#news h2 {\r\n	line-height: 2em;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #f5f5f5;\r\n	border: none\r\n}\r\n.NewsSummary {\r\n/* padding for the news article summary */\r\n	padding: 0.5em 0.5em 1em;\r\n/* margin to the bottom of the news article summary */\r\n	margin: 0 0.5em 1em 0.5em;\r\n	border-bottom: 1px solid #ccc;\r\n}\r\n.NewsSummaryPostdate {\r\n/* smaller than default text size */\r\n	font-size: 90%;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n.NewsSummaryLink {\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n/* little more room at top */\r\n	padding-top: 0.2em;\r\n}\r\n.NewsSummaryCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	margin: 5px 0;\r\n}\r\n.NewsSummaryAuthor {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	padding-bottom: 0.5em;\r\n}\r\n.NewsSummarySummary, .NewsSummaryContent {\r\n/* larger than default text */\r\n	line-height: 140%;\r\n}\r\n.NewsSummaryMorelink {\r\n	padding-top: 0.5em;\r\n}\r\n#NewsPostDetailDate {\r\n/* smaller text */\r\n	font-size: 90%;\r\n	margin-bottom: 5px;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n#NewsPostDetailSummary {\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	border-top: 1px solid #ccc;\r\n	margin-top: 0.5em;\r\n	padding: 0.2em 0;\r\n}\r\n#NewsPostDetailContent {\r\n	margin-bottom: 15px;\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailAuthor {\r\n	padding-bottom: 1.5em;\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n}\r\n/* more divs, left unstyled, just so you know the IDs of them */ \r\n#NewsPostDetailTitle {\r\n}\r\n#NewsPostDetailHorizRule {\r\n}\r\n#NewsPostDetailPrintLink {\r\n}\r\n#NewsPostDetailReturnLink {\r\n}\ndiv#news ul li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-09 23:29:39'),
(38, 'Navigation: Simple - Horizontal', '/********************MENU*********************/\r\n/* hack for IE6 */\r\n* html div#menu_horiz {\r\n/* hide ie/mac \\*/\r\n	height: 1%;\r\n/* end hide */\r\n}\r\ndiv#menu_horiz {\r\n/* background color for the entire menu row */\r\n	background-color: #243135;\r\n/* insure full width */\r\n	width: 100%;\r\n/* set height */\r\n	height: 49px;\r\n	margin: 0;\r\n}\r\ndiv#menu_horiz ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\n/* menu list items */\r\ndiv#menu_horiz li {\r\n/* makes the list horizontal */\r\n	float: left;\r\n/* remove any default bullets */\r\n	list-style: none;\r\n/* still no margin */\r\n	margin: 0;\r\n}\r\n/* the links, that is each list item */\r\ndiv#menu_horiz a, div#menu_horiz h3 span, div#menu_horiz .sectionheader span {\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px 0px;\r\n/* still no margin */\r\n	margin: 0;\r\n/* removes default underline */\r\n	text-decoration: none;\r\n/* default link color */\r\n	color: #FFF;\r\n/* makes it hold a shape, IE has problems with this, fixed above */\r\n	display: block;\r\n}\r\n/* hover state for links */\r\ndiv#menu_horiz li a:hover {;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left -50px;\r\n}\r\ndiv#menu_horiz a span {\r\n/* compensates for no left padding on the "a" */\r\n	padding-left: 15px;\r\n}\r\ndiv#menu_horiz li.parent a span {\r\n/* no left padding on the "a" we can set it here, it lets us use the span for an image */\r\n	padding-left: 20px;\r\n/* set your image here, down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.parent a:hover span {\r\n	padding-left: 20px;\r\n/* hover replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.menuactive a span {\r\n	padding-left: 20px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.5em center;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz li.currentpage h3 span {\r\n	padding-left: 12px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz .sectionheader span {\r\n/* compensates for no left padding on the "sectionheader" */\r\n	padding-left: 15px;\r\n}\r\n/* active parent, that is the first level parent of a child page that is the current page */\r\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\r\n/* set your image here, light image with #000/black text set below*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2010-05-29 13:06:18');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(39, 'Layout: Top menu + 2 columns', '/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don''t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n	color: #18507C;\r\n}\r\na:visited {\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n	color: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n	/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 15px 10px 20px;\r\n/* this one is for sidebar with content and no menu */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n	margin: 2em 0 1em 0em;\r\n}\r\ndiv#sidebara {\r\n	padding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 00:13:04'),
(42, 'Navigation: Simple - Vertical', '/******************** MENU *********************/\n#menu_vert {\n	margin: 0;\n	padding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n	list-style: none;\n/* margin/padding set in li */\n	margin: 0px;\n	padding: 0px;\n}\n#menu_vert ul ul {\n	margin: 0;\n/* padding right sets second level li in on right from first li */\n	padding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n	list-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n	margin: 0px 0px -1px;\n/* bottom padding pushes "a" up enough to show our image */\n	padding: 0px 0px 4px 0px;\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n	padding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n	margin: 0;\n	padding: 0px;\n/* replaced by image in ul ul */\n	background: none;\n}\n#menu_vert li.menuactive ul {\n	margin: 0;\n}\n#menu_vert li.activeparent {\n	margin: 0;\n	padding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n	height: 1%;\n}\n* html #menu_vert li a {\n	height: 1%;\n}\n* html #menu_vert li hr {\n	height: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #18507C;\n/* Fixes IE7 whitespace bug */\n	min-height: 1em;\n/* no underline for links */\n	text-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n	font-size: 90%;\n	padding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n	padding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n	background-color: transparent;\n	color: #595959;\n	text-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n	color: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n	color: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n	color: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n	padding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n	padding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n	display: block;\n	margin: 0;\n/* adds left padding taken out of "a.parent" */\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n	text-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n	display: block;\n	margin: 0;\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n	padding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n	padding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n	display: block;\n	margin: 0;\n/* to contrast with non active pages */\n	font-weight: bold;\n	padding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n	text-decoration: none;\n	color: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n	color: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #000;\n/* instead of the normal font size for <h3> */\n	font-size: 1em;\n/* as <h3> normally has some margin by default */\n	margin: 0;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n	font-size: 90%;\n	padding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	color: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n	padding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn''t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n	border-right: none;\n	padding: 0.8em 0.5em 0.5em 1.5em;\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	line-height: 1em;\n	margin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n	height: 1px !important;\n	margin-top: -1px;\n	margin-bottom: 0;\n	-padding: 2px 0 2px 0;\n	background-color: #000;\n	overflow: hidden !important;\n	line-height: 1px !important;\n	font-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n	display: none;\n/* this is for accessibility */\n}', 'screen', '', '2009-04-30 01:09:15', '2009-07-23 00:17:42'),
(43, 'Navigation: ShadowMenu - Horizontal', '/* by Alexander Endresen and mark */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n	list-style-type: none;\r\n	margin: 0px;\r\n	padding-top: 10px;\r\n	padding-left: 10px;\r\n}\r\n#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 210px;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* room at top for li so image top shows correct */\r\n	padding-top: 9px;\r\n/* set your image here, tall enough for the ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul {\r\n	padding-top: 13px;\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.gif) no-repeat left top;\r\n}\r\n#primary-nav ul ul {\r\n/* insures no top margins */\r\n	margin-top: 0px;\r\n/* pulls the last ul back over the preceding ul */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative margin pulls the left centered in li next to it */\r\n	top: -3px;\r\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul ul {\r\n	margin-top: 0px;\r\n	padding-left: 5px;\r\n	left: 100%;\r\n	top: -7px;\r\n/* IE6 gets gif as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat right top;\r\n}\r\n#primary-nav li {\r\n/* a little space to the left of each top level menu item */\r\n	margin-left: 5px;\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n}\r\n#primary-nav li li {\r\n/* a little more space to the left of each menu item */\r\n	margin-left: 8px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav li li {\r\n	margin-left: 6px;\r\n/* helps hold it inside the ul */\r\n	width: 171px;\r\n}\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\r\n	padding: 0px 11px 0px 0px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* remove default "a" underline */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a span {\r\n/* takes normal "a" padding minus some for right image */\r\n	padding: 12px 4px 12px 15px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right -51px;\r\n}\r\nul#primary-nav li span {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left -51px;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li li {\r\n/* remove any image set in first level li */\r\n	background:  none;\r\n}\r\nul#primary-nav li li span {\r\n/* remove any image set in first level li span */\r\n	background:  none;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li:hover,\r\nul#primary-nav li.menuh,\r\nul#primary-nav li.menuparenth {\r\n/* set hover image, right side */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li:hover span,\r\nul#primary-nav li.menuh span,\r\nul#primary-nav li.menuparenth span {\r\n/* set hover image, left side */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* change text color on hover */\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an "h" as seen above and below */\r\nul#primary-nav li li.menuh {\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li span {\r\n	background:  none;\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparent span {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuh span {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparenth {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li.menuactive a {\r\n/* set your image here for active tab right */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li a.menuactive span {\r\n/* set your image here for active tab left */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a {\r\n/* second level padding, no image and not as big */\r\n	padding: 5px 10px;\r\n/* to keep it within li */\r\n	width: 165px;\r\n/* space between them */\r\n	margin: 5px;\r\n	background: none;\r\n}\r\n/* IE6 hacks to above code */\r\n* html #primary-nav li li a {\r\n	padding: 5px 10px;\r\n	width: 165px;\r\n	margin: 0px;\r\n	color: #000;\r\n}\r\n#primary-nav li li:hover {\r\n/* remove image set in first level */\r\n	background: none;\r\n}\r\n#primary-nav li li a:hover {\r\n/* set different image than first level */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* we need #FFF/white to contrast with dark background */\r\n	color: #FFF;\r\n}\r\n#primary-nav li.menuparent li a:hover span {\r\n/* insures text color */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span {\r\n/* first level is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* just to insure normal */\r\n	font-weight: normal;\r\n}\r\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\r\n/* set your image here, lighter than hover */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n}\r\n#primary-nav li li.menuactive a.menuactive span {\r\n/* insures text color */\r\n	color: #000\r\n}\r\n#primary-nav li li.menuactive a.menuactive:hover span {\r\n/* insures text color */\r\n	color: #000;\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent span {\r\n/* right arrow for menu parent, IE6 gif */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent:hover span {\r\n	color: #FFF\r\n}\r\n#primary-nav li li.menuparent a.menuparent span {\r\n/* right arrow for parent item */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* black text */\r\n	color: #000\r\n}\r\nul#primary-nav li li a.menuactive  span {\r\n/* remove image set in first level */\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n#primary-nav li.menuactive li a {\r\n/* second level active link color */\r\n	color: #0587A9;\r\n	text-decoration: none;\r\n	background: none;\r\n}\r\n#primary-nav li.menuactive li a:hover {\r\n/* dark image for hover */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* white text to contrast with dark background image on hover */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\r\n	padding: 0px;\r\n	background:  none;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 210px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -8px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* same as above for next level to insure it shows correct */\r\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\r\n	height: 9px;\r\n	margin: 0px 0px -8px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separator {\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separatorh {\r\n	margin: 0px 0px -8px;\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ultop.gif) no-repeat left top;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '', '2009-05-01 04:32:33', '2009-07-20 18:18:21'),
(45, 'Navigation: ShadowMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it''s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 190px;\r\n/* changes padding inherited from first level */\r\n	padding: 0px 10px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic appearance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li ul a {\r\n/* insure alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it''s container */\r\n	position: relative;\r\n/* even padding all 4 sides */\r\n	padding: 6px;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors from here on */\r\n	color: #000;\r\n/* remove any background that may have been set in level above */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 209px;\r\n	height: auto;\r\n/* negative margin pulls it over the parent ul */\r\n	margin: 0px 0px 0px -2px;\r\n/* top padding gives room for image shadow and pushes li down into image */\r\n	padding: 10px 0px 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative top pulls up so left arrow centered in li next to it */\r\n	top: -2px;\r\n	display: none;\r\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* a lot of the same as above, minor changes */\r\nul#primary-nav li ul ul {\r\n	list-style-type: none;\r\n/* bit more negative left margin */\r\n	margin: 0px 0px 0px -8px;\r\n/* you can call a property twice but not a property:''value'', this flat lines it */\r\n	padding: 0px;\r\n/* now we just change one with ''property''-top:value */\r\n	padding-top: 10px;\r\n	position: absolute;\r\n	width: 209px;\r\n	height: auto;\r\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\r\n	top: -5px;\r\n	left: 100%;\r\n	display: none;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 209px;\r\n	padding: 0px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -9px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 ''star html'' Hack */\r\n* html #primary-nav  li ul li.separator {\r\n	height: 2px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* Fixes IE7 bug*/\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive a.menuactive {\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span,\r\n#primary-nav li.menuparenth span {\r\n/* right arrow on hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	padding-left: 0px;\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover li a,\r\n#primary-nav li.menuh li a,\r\n#primary-nav li.menuparenth li a,\r\n#primary-nav li.menuactiveh li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li, #primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '', '2009-05-02 00:20:03', '2009-05-11 00:43:17'),
(46, 'Navigation: FatFootMenu', '#footer ul {\r\n/* some margin is set in the footer padding */\r\n   margin: 0px;\r\n/* calling a specific side, left in this case */\r\n   margin-left: 5px;\r\n   padding: 0px;\r\n/* remove any default bullets, image used in li call */\r\n   list-style: none;\r\n}\r\n#footer ul li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* float left to set first level li items across the top */\r\n   float:left;\r\n/* a little margin at top */\r\n   margin: 5px 0px 0px;\r\n/* padding all the way around */\r\n   padding: 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 10px;\r\n}\r\n#footer ul li a {\r\n/* this will make the "a" link a solid shape */\r\n   display:block;\r\n   margin: 2px 0px 4px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a" */\r\n#footer li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 2px 0px 2px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a", less margin at this level */\r\n#footer li li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n#footer ul li li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* less margin/padding */\r\n   margin: 0px;\r\n   padding: 0px 0px 0px 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 3px;\r\n}\r\n/* fix for IE6 */\r\n* html #footer ul li a {\r\n   margin: 2px 0px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n* html #footer ul li li a {\r\n   margin: 0px 0px 0px;\r\n   padding: 0px 5px 0px 5px;\r\n}\r\n/* End fix for IE6 */\r\n#footer ul ul {\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}\r\n#footer ul ul ul {\r\n/* remove float so they line up under li above it */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}', 'screen', '', '2009-05-02 15:05:04', '2009-05-09 23:47:45'),
(47, 'ncleanbluecore', '/*\r\n  @Nuno Costa [criacaoweb.net] Core CSS.\r\n  @Licensed under GPL and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/*----------- Global Containers ----------- */\r\n/* \r\n.core-wrap-100   =  width - 100% of Browser Fluid\r\n.core-wrap-960   =  width - 960px  - fixed\r\n.core-wrap-780   =  width - 780px  - fixed\r\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\r\n*/\r\n.core-wrap-100 {\r\n	width: 100%;\r\n}\r\n.core-wrap-960 {\r\n	width: 960px;\r\n}\r\n.core-wrap-780 {\r\n	width: 780px;\r\n}\r\n.core-wrap-100,\r\n.core-wrap-960,\r\n.core-wrap-780,\r\n.custom-wrap-x {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}\r\n/*----------- Global Float ----------- */\r\n.core-wrap-100  .core-float-left,\r\n.core-wrap-960  .core-float-left,\r\n.core-wrap-780  .core-float-left,\r\n.custom-wrap-x  .core-float-left {\r\n	float: left;\r\n	display: inline;\r\n}\r\n.core-wrap-100  .core-float-right,\r\n.core-wrap-960  .core-float-right,\r\n.core-wrap-780  .core-float-right,\r\n.custom-wrap-x  .core-float-right {\r\n	float: right;\r\n	display: inline;\r\n}\r\n/*----------- Global Center ----------- */\r\n.core-wrap-100   .core-center,\r\n.core-wrap-960   .core-center,\r\n.core-wrap-780   .core-center,\r\n.custom-wrap-x   .core-center {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}', 'screen', '', '2009-05-06 14:28:28', '2009-05-11 02:35:43'),
(48, 'ncleanblueutils', '/*\r\n  @Nuno Costa [criacaoweb.net] Utils CSS.\r\n  @Licensed under GPL2 and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\r\n/* v1.0 | 20080212 */\r\nhtml, body, div, span, applet, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, big, cite, code,\r\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\r\nsmall, strike, strong, sub, sup, tt, var,\r\nb, u, i, center,\r\ndl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: 0;\r\n	outline: 0;\r\n	font-size: 100%;\r\n	vertical-align: baseline;\r\n	background: transparent;\r\n}\r\n/*\r\nStantby for nowbody {\r\n	line-height: 1;\r\n}\r\n*/\r\nol, ul {\r\n	list-style: none;\r\n}\r\nblockquote, q {\r\n	quotes: none;\r\n}\r\nblockquote:before,\r\nblockquote:after,\r\nq:before, q:after {\r\n	content: '''';\r\n	content: none;\r\n}\r\n/* remember to define focus styles! */\r\n:focus {\r\n	outline: 0;\r\n}\r\n/* remember to highlight inserts somehow! */\r\nins {\r\n	text-decoration: none;\r\n}\r\ndel {\r\n	text-decoration: line-through;\r\n}\r\n/* tables still need ''cellspacing="0"'' in the markup */\r\ntable {\r\n	border-collapse: collapse;\r\n	border-spacing: 0;\r\n}\r\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\r\n* {\r\n	font-weight: inherit;\r\n	font-style: inherit;\r\n	font-family: inherit;\r\n}\r\ndfn {\r\n	display: none;\r\n	overflow: hidden;\r\n}\r\n/* ----------- Clear Floated Elements ----------- */\r\nhtml body .util-clearb {\r\n	background: none;\r\n	border: 0;\r\n	clear: both;\r\n	display: block;\r\n	float: none;\r\n	font-size: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	position: static;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0;\r\n}\r\n/* ----------- Fix to Clear Floated Elements ----------- */\r\n.util-clearfix:after {\r\n	clear: both;\r\n	content: ''.'';\r\n	display: block;\r\n	visibility: hidden;\r\n	height: 0;\r\n}\r\n.util-clearfix {\r\n	display: inline-block;\r\n}\r\n* html .util-clearfix {\r\n	height: 1%;\r\n}\r\n.util-clearfix {\r\n	display: block;\r\n}', 'screen', '', '2009-05-06 14:29:17', '2009-05-11 02:38:10');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(49, 'Layout: NCleanBlue', '/*  \n@Nuno Costa [criacaoweb.net]\n@Since [cmsms 1.6]\n@Contributors: Mark and Dev-Team\n*/\nbody {\n/* default text for entire site */\n	font: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\n/* default text color for entire site */\n	color: #3A3A36;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\n#ncleanblue {\n/* set to width of viewport */\n	width: auto;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* wiki style external links */\n/* external links will have "(external link)" text added, lets hide it */\na.external span {\n	position: absolute;\n	left: -5000px;\n	width: 4000px;\n}\na.external {\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\n	padding: 0 12px 0 0;\n}\n/* colors for external links */\na.external:link {\n	color: #679EBC;\n/* background image for the link to show wiki style arrow */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:visited {\n	color: #18507C;\n/* a different color can be used for visited external links */\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:hover {\n	color: #18507C;\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\n	background-color: inherit;\n}\n/* end wiki style external links */\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\n.accessibility, hr {\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\n	position: absolute;\n	top: -9999em;\n	left: -9999em;\n	background: none;\n	border: 0;\n	clear: both;\n	display: block;\n	float: none;\n	font-size: 0;\n	margin: 0;\n	padding: 0;\n	overflow: hidden;\n	visibility: hidden;\n	width: 0;\n	height: 0;\n	border: none;\n}\n/* ------------ Standard  HTML elements and their default settings ------------ */\nb, strong{font-weight: bold;}i, em{	font-style: italic;}\np {\n	padding: 0;\n	margin-top: 0.5em;\n    margin-bottom: 1em;\n   text-align:left;\n}\nh1, h2, h3, h4, h5 {\n	line-height: 1.6em;\n	font-weight: normal;\n	width: auto;\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n}\n/*default link styles*/\na {\n	color: #679EBC;\n	text-decoration: none;\n	text-align: left;\n}\na:hover {\n	color: #3A6B85;\n}\na:active {\n	color: #3A6B85;\n}\na:visited {\n	color: #679EBC;\n}\ninput, textarea, select {\n	font-size: 0.95em;\n}\n/* ------------ Wrapper ------------ */\ndiv#pagewrapper {\n	font-size: 95%;\n	position: relative;\n	z-index: 1;\n}\n/* ------------ Header ------------ */\n#header {\n	height: 111px;\n	width: 960px;\n}\n#logo a {\n/* adjust according your image size */\n	height: 75px;\n	width: 215px;\n/* forces full link size */\n	display: block;\n/* this hides the text */\n	text-indent: -9999em;\n	margin-top: 0;\n	margin-left: 0;\n/* you can set your own image here, note size adjustments */\n	background: url([[root_url]]/uploads/NCleanBlue/logo.png) no-repeat left top;\n}\n/* ------------ Header - Search ------------ */\ndiv#search {\n	width: 190px;\n	height: 28px;\n	margin-top: 31px;\n	margin-right: 20px;\n}\ndiv#search label {\n	text-indent: -9999em;\n	height: 0pt;\n	width: 0pt;\n	display: none;\n}\ndiv#search input.search-input {\n/* specific size for image, your image may need these adjusted */\n	width: 143px;\n	height: 17px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* text color */\n	color: #999;\n/* padding of text */\n	padding: 7px 0px 4px 10px;\n	float: left;\n/* set all font properties at once, weight, size, family */\n	font: bold 0.9em Arial, Helvetica, sans-serif;\n/* left input image, set your own here */\n	background: url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat left top;\n}\ndiv#search input.search-button {\n/* specific size for image, your image may need these adjusted */\n	width: 37px;\n	height: 28px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* hides text, image has text */\n	text-indent: -9999em;\n	float: left;\n	margin: 0;\n/* provides positive hover effect */\n	cursor: pointer;\n/* removes default size/height */\n	font-size: 0px;\n	line-height: 0px;\n/* submit button image, set your own here */\n	background: transparent url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat right top;\n}\n/* ------------ Content ------------ */\n#content {\n	width: auto;\n/* all text in #content will default align left, changed in other calls */\n	text-align: left;\n}\n#bar {\n	width: auto;\n	height: 40px;\n	padding-right: 1em;\n	padding-left: 1em;\n}\n.print {\n	margin-right: 75px;\n	margin-top: 10px;\n}\n#version {\n	width: 50px;\n	height: 31px;\n	position: absolute;\n	z-index: 5;\n	top: 130px;\n	right: -16px;\n	font-size: 1.6em;\n	font-weight: bold;\n	padding: 28px 15px;\n	color: #FFF;\n	text-align: center;\n	vertical-align: middle;\n	background:  url([[root_url]]/uploads/NCleanBlue/version.png) no-repeat left top;\n}\n/* IE6 fixes */\n* html div#version {\n	top: 150px;\n}\n/* End IE6 fixes */\n/* Site Title */\nh1.title {\n	font-size: 1.8em;\n	color: #666666;\n	margin-bottom: 0.5em;\n}\n/* Breadcrumbs */\ndiv.breadcrumbs {\n	padding: 0.5em 0;\n	font-size: 80%;\n	margin: 0 1em;\n}\ndiv.breadcrumbs span.lastitem {\n	font-weight: bold;\n}\n/* ------------ Side Bar (Left) ------------ */\n#left {\n	width: 250px;\n}\n/* Image that Represents the new CMS design */\n#left .screen {\n	margin: 10px 50px;\n}\n/* End  */\n.sbar-title {\n	font: bold 1.2em Arial, Helvetica, sans-serif;\n	color: #252523;\n}\n.sbar-top {\n	height: 20px;\n	width: auto;\n	padding: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left top;\n}\n.sbar-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n}\nspan.sbar-bottom {\n	width: auto;\n	display: block;\n	height: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\n}\n/* ------------ Main (Right) ------------ */\n#main {\n	width: 690px;\n}\n.main-top {\n	height: 15px;\n	width: auto;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right top;\n}\n.main-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n	padding: 20px;\n	padding-top: 0px;\n}\n.main-bottom {\n	width: auto;\n	height: 41px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\n}\n.right49, .left49 {\n	font-size: 0.85em;\n	margin: 7px 5px 5px 10px;\n	font-weight: bold;\n}\n.left49 span {\n	display: block;\n	padding-top: 1px;\n}\n.left49 a {\n	font-weight: normal;\n}\n.right49 {\n	height: 28px;\n	width: 50px;\n	padding-right: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat right top;\n}\n.right49 a, .right49 a:visited {\n	padding: 7px 4px;\n	display: block;\n	color: #000;\n	height: 15px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat  left top;\n}\n#main h2,\n#main h3,\n#main h4,\n#main h5,\n#main h6 {\n	font-size: 1.4em;\n	color: #301E12;\n}\ndiv#main ul,\ndiv#main ol,\ndiv#main dl,\n#footer ul,\n#footer ol {\n	line-height: 1em;\n	margin: 0 0 1.5em 0;\n}\ndiv#main ul,\n#footer ul {\n	list-style: circle;\n}\ndiv#main ul li,\ndiv#main ol li,\n#footer ul li,\n#footer ol li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}\n/* definition lists topics on bold */\ndiv#main dl dt {\n	font-weight: bold;\n	margin: 0 0 0 1em;\n}\ndiv#main dl dd {\n	margin: 0 0 1em 1em;\n}\ndiv#main dl {\n	margin-bottom: 2em;\n	padding-bottom: 1em;\n	border-bottom: 1px solid #c0c0c0;\n}\n/* ------------ Footer ------------ */\n#footer-wrapper {\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	width: auto;\n	margin-top: 5px;\n	text-align: center;\n	margin-right: 00px;\n	margin-left: 0px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer {\n	color: #FFF;\n	font-size: 0.8em;\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer .block {\n	width: 300px;\n	margin: 20px 10px 10px;\n}\n#footer .cms {\n	text-align: right;\n}\n/* ------------ Footer Links ------------ */\n#footer ul {\n	width: auto;\n	text-align: left;\n	margin-left: 50px;\n}\n#footer ul ul {\n	margin-left: 0px;\n}\n#footer ul li a {\n	color: #FFF;\n	display: block;\n	font-weight: normal;\n	margin-bottom: 0.5em;\n	text-decoration: none;\n}\n#footer a {\n	color: #DCEDF1;\n	text-decoration: underline;\n	font-weight: bold;\n}\n/* ------------ END LAYOUT ---------------*/\n/* ------------  Menu  ROOT  ------------ */\n.page-menu {\n	width: auto;\n	height: 35px;\n	margin: 3px 0 0 20px;\n}\n.menuwrapper {}\n\nul#primary-nav li hr.menu_separator{\n        position: relative;\n        visibility: hidden;\n        display:block;\n        width:5px;\n       	height: 32px;\n       	margin: 0px 5px 0px;\n}\n.page-menu ul#primary-nav {\n	height: 1%;\n	float: left;\n	list-style: none;\n	padding: 0;\n	margin: 0;\n}\n.page-menu ul#primary-nav li {\n	float: left;\n}\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a span {\n	display: block;\n	padding: 0 10px;\n	background-repeat: no-repeat;\n	background-image: url([[root_url]]/uploads/NCleanBlue/tabs.gif);\n}\n.page-menu ul#primary-nav li a {\n	padding-left: 0;\n	color: #000;\n	font-weight: bold;\n	line-height: 2.15em;\n	text-decoration: none;\n	margin-left: 1px;\n	font-size: 0.85em;\n}\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:active {\n	color: #000;\n}\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover span {\n	color: #000;\n}\n.page-menu ul#primary-nav li a span {\n	padding-top: 6px;\n	padding-right: 0;\n	padding-bottom: 5px;\n}\n.page-menu ul#primary-nav li a.menuparenth,\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n	background-position: 100% -120px;\n}\n.page-menu ul#primary-nav li a {\n	background-position: 100% -80px;\n}\n.page-menu ul#primary-nav li a.menuactive span,\n.page-menu ul#primary-nav li a:hover span,\n.page-menu ul#primary-nav li a:focus span,\n.page-menu ul#primary-nav li a:active span {\n	background-position: 0 -40px;\n}\n.page-menu ul#primary-nav li a span {\n	background-position: 0 0;\n}\n.page-menu ul#primary-nav .sectionheader,\n.page-menu ul#primary-nav li a:link.menuactive,\n.page-menu ul#primary-nav li a:visited.menuactive {\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\n	cursor: text;\n}\n.page-menu ul#primary-nav li span,\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n/* @ Opera, we need to be explicit again here now... */\n	cursor: pointer;\n}\n/* Additional IE specific bug fixes... */\n* html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n*:first-child+html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n/* --------------------  menu dropdow  -------------------------\n/* Unless you know what you do, do not touch this */\n/* Reset all ROOT menu styles. */\nul#primary-nav ul.unli li li a span,\nul#primary-nav ul.unli li a span,\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\n	font-weight: normal;\n	background-image: none;\n	display: block;\n	padding-top: 0px;\n	padding-left: 0px;\n	padding-right: 0px;\n	padding-bottom: 0px;\n}\n#primary-nav {\n	margin: 0px;\n	padding: 0px;\n}\n#primary-nav ul {\n	list-style: none;\n	margin: -6px 0px 0px;\n	padding: 0px;\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\n	width: 209px;\n}\n#primary-nav ul {\n	position: absolute;\n	z-index: 1001;\n	top: auto;\n	display: none;\n	padding-top: 9px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.png) no-repeat left top;\n}\n* html #primary-nav ul.unli {\n	padding-top: 12px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.gif) no-repeat left top;\n}\n#primary-nav ul.unli ul {\n	margin-left: -7px;\n	left: 100%;\n	top: 3px;\n}\n* html #primary-nav ul.unli ul {\n	margin-left: -0px;\n}\n#primary-nav li {\n	margin: 0px;\n	float: left;\n}\n#primary-nav li li {\n	margin-left: 7px;\n	margin-top: -1px;\n	float: none;\n	position: relative;\n}\n/* Styling the basic appearance of the menu elements */\nul#primary-nav ul hr.menu_separator{\n        position: relative;\n        visibility: visible;\n        display:block;\n        width:130px;\n       	height: 1px;\n       	margin: 2px 30px 2px;\n	padding: 0em;\n	border-bottom: 1px solid #ccc;\n	border-top-width: 0px;\n	border-right-width: 0px;\n	border-left-width: 0px;\n	border-top-style: none;\n	border-right-style: none;\n	border-left-style: none;\n}\n#primary-nav .separator,\n#primary-nav .separatorh {\n	height: 9px;\n	width: 209px;\n	margin: 0px 0px -8px;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\n}\n* html #primary-nav .separator {\n       z-index:-1;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\n}\n*:first-child+html #primary-nav .separator {\n       z-index:-1;\n}\n#primary-nav ul.unli li a {\n	padding: 0px 10px;\n	width: 165px;\n	margin: 5px;\n	background-image: none;\n}\n* html #primary-nav ul.unli li a {\n	padding: 0px 10px 0px 5px;\n	width: 165px;\n	margin: 5px 0px;\n}\n#primary-nav li li a:hover {\n	background-color: #DBE7F2;\n}\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\n#primary-nav li.menuactive li a {\n	text-decoration: none;\n	background: none;\n}\n#primary-nav ul.unli li.menuparenth,\n#primary-nav ul.unli a:hover,\n#primary-nav ul.unli a.menuactive {\n	background-color: #DBE7F2;\n}\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\n#primary-nav ul.unli li .menuparent,\n#primary-nav ul.unli li .menuparent:hover,\n#primary-nav ul.unli li .menuparent,\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\n	background-image: url([[root_url]]/uploads/NCleanBlue/arrow.gif);\n	background-position: center right;\n	background-repeat: no-repeat;\n}\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\n#primary-nav ul,\n#primary-nav li:hover ul,\n#primary-nav li:hover ul ul,\n#primary-nav li:hover ul ul ul,\n#primary-nav li.menuparenth ul,\n#primary-nav li.menuparenth ul ul,\n#primary-nav li.menuparenth ul ul ul {\n	display: none;\n}\n#primary-nav li:hover ul,\n#primary-nav ul li:hover ul,\n#primary-nav ul ul li:hover ul,\n#primary-nav ul ul ul li:hover ul,\n#primary-nav li.menuparenth ul,\n#primary-nav ul li.menuparenth ul,\n#primary-nav ul ul li.menuparenth ul,\n#primary-nav ul ul ul li.menuparenth ul {\n	display: block;\n}\n/* IE Hacks */\n#primary-nav li li {\n	float: left;\n	clear: both;\n}\n#primary-nav li li a {\n	height: 1%;\n}\n/*************** End Menu *****************/\n/* ------------ News Module ------------ */\n#news {\n	padding: 10px;\n}\n.NewsSummary {\n}\n.NewsSummaryPostdate,\n.NewsSummaryCategory,\n.NewsSummaryAuthor {\n	font-style: italic;\n	font-size: 0.8em;\n}\n.NewsSummaryLink {\n	margin: 2px 0;\n}\n.NewsSummaryContent {\n	margin: 10px 0;\n}\n.NewsSummaryMorelink {\n	margin: 5px 0 15px;\n}\n/* ------------ End News Module ------------ */', 'screen', '', '2009-05-06 14:30:25', '2009-07-22 17:39:51'),
(50, 'Simplex: Core', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n/* =====================================\r\nBASE STYLES\r\n===================================== */\r\narticle, aside, details, figcaption, figure, footer, header, hgroup, nav, section { \r\n    display: block\r\n}\r\n/* taken from HTML5 Boilerplate http://h5bp.com */\r\nhtml { \r\n    font-size: 100%; \r\n    -webkit-text-size-adjust: 100%; \r\n    -ms-text-size-adjust: 100%\r\n}\r\naudio, canvas, video { \r\n    display: inline-block; \r\n    *display: inline; \r\n    *zoom: 1\r\n}\r\naudio:not([controls]) { \r\n    display: none\r\n}\r\n[hidden] { \r\n    display: none\r\n}\r\n/* text selection */\r\n.content-wrapper ::-moz-selection { \r\n    background: #f39c2c;\r\n    background: rgba(243,156,44,0.7);\r\n    color: #555;\r\n    text-shadow: none\r\n}\r\n.content-wrapper ::selection { \r\n    background: #f39c2c; \r\n    background: rgba(243,156,44,0.7);\r\n    color: #555;\r\n    text-shadow: none \r\n}\r\n/* Consistent box sizing and appearance */\r\ninput[type="checkbox"], input[type="radio"] { \r\n    box-sizing: border-box; \r\n    padding: 0; \r\n    *width: 13px; \r\n    *height: 13px\r\n}\r\ninput[type="search"] { \r\n    -webkit-appearance: textfield; \r\n    -moz-box-sizing: content-box; \r\n    -webkit-box-sizing: content-box; \r\n    box-sizing: content-box\r\n}\r\ninput[type="search"]::-webkit-search-decoration, input[type="search"]::-webkit-search-cancel-button { \r\n    -webkit-appearance: none\r\n}\r\n/* Remove inner padding and border in FF3/4 */\r\nbutton::-moz-focus-inner, input::-moz-focus-inner { \r\n    border: 0; \r\n    padding: 0\r\n}\r\n/*\r\n * 1. Remove default vertical scrollbar in IE6/7/8/9\r\n * 2. Allow only vertical resizing\r\n */\r\ntextarea { \r\n    overflow: auto; \r\n    vertical-align: top; \r\n    resize: vertical\r\n}\r\nul, ol { \r\n    margin: 1em 0; \r\n    padding: 0 0 0 40px\r\n}\r\ndd { \r\n    margin: 0 0 0 40px\r\n}\r\nnav ul, nav ol { \r\n    list-style: none; \r\n    list-style-image: none; \r\n    margin: 0; \r\n    padding: 0\r\n}\r\n/* Redeclare monospace font family */\r\npre, code, kbd, samp { \r\n    font-family: monospace, serif; _font-family: ''courier new'', monospace; \r\n    font-size: 1em }\r\n/* Improve readability of pre-formatted text in all browsers */\r\npre { \r\n    white-space: pre;\r\n    white-space: pre-wrap; \r\n    word-wrap: break-word\r\n}\r\nq { \r\n    quotes: none\r\n}\r\nq:before, q:after { \r\n    content: ""; \r\n    content: none\r\n}\r\nsmall { \r\n    font-size: 85%\r\n}\r\n/* Hide from both screenreaders and browsers */\r\n.hidden { \r\n    display: none !important; \r\n    visibility: hidden\r\n}\r\n/* Hide only visually, but have it available for screenreaders */\r\n.visuallyhidden { \r\n    border: 0; \r\n    clip: rect(0,0,0,0); \r\n    height: 1px; \r\n    margin: -1px; \r\n    overflow: hidden; \r\n    padding: 0; \r\n    position: absolute; \r\n    width: 1px\r\n}\r\n/* Extends the .visuallyhidden class to allow the element to be focusable when navigated to via the keyboard */\r\n.visuallyhidden.focusable:active, \r\n.visuallyhidden.focusable:focus { \r\n    clip: auto; \r\n    height: auto; \r\n    margin: 0; \r\n    overflow: visible; \r\n    position: static; \r\n    width: auto\r\n}\r\n/* Hide visually and from screenreaders, but maintain layout */\r\n.invisible { \r\n    visibility: hidden\r\n}\r\n/* correct text resizing */\r\nhtml { \r\n    font-size: 100%; \r\n    -webkit-text-size-adjust: 100%; \r\n    -ms-text-size-adjust: 100% \r\n}\r\nbody { \r\n    margin: 0; \r\n    font-size: 1em;\r\n   /* -webkit-font-smoothing: antialiased */\r\n}\r\n/* =====================================\r\n12 COLUMN GRID\r\n===================================== */\r\n\r\n/* ================================\r\nDesktop\r\n================================ */\r\n\r\n/* the wraping container */\r\n.container {\r\n    width: 92%;\r\n    min-width: 980px;\r\n    max-width: 1260px\r\n}\r\n/* align the site */\r\n.leftaligned {\r\n    margin: 0 auto 0  0\r\n}\r\n.rightaligned {\r\n    margin: 0 0 0 auto\r\n}\r\n.centered {\r\n    margin: 0 auto\r\n}\r\n/* Global Grid layout */\r\n.grid_1,\r\n.grid_2,\r\n.grid_3,\r\n.grid_4,\r\n.grid_5,\r\n.grid_6,\r\n.grid_7,\r\n.grid_8,\r\n.grid_9,\r\n.grid_10,\r\n.grid_11,\r\n.grid_12 {\r\n	display:inline;\r\n	float: left;\r\n	position: relative;\r\n	margin-left: .96%;\r\n	margin-right: .96%   \r\n}\r\n\r\n/* alpha and omega classes remove margins, aplha = no margin left, omega = no margin right */\r\n.alpha { margin-left: 0 }\r\n.omega { margin-right: 0 }\r\n\r\n/* Grid sizes up to 12 columns */\r\n.container .grid_1 { width:6.333% }\r\n.container .grid_2 { width:14.667% }\r\n.container .grid_3 { width:23.0% }\r\n.container .grid_4 { width:31.333% }\r\n.container .grid_5 { width:39.667% }\r\n.container .grid_6 { width:48.0% }\r\n.container .grid_7 { width:56.333% }\r\n.container .grid_8 { width:64.667% }\r\n.container .grid_9 { width:73.0% }\r\n.container .grid_10 { width:81.333% }\r\n.container .grid_11 { width:89.667% }\r\n.container .grid_12 { width:98.0% }\r\n\r\n/* Prefix to add extra space left */\r\n.container .prefix_1 { padding-left:8.333% }\r\n.container .prefix_2 { padding-left:16.667% }\r\n.container .prefix_3 { padding-left:25.0% }\r\n.container .prefix_4 { padding-left:33.333% }\r\n.container .prefix_5 { padding-left:41.667% }\r\n.container .prefix_6 { padding-left:50.0% }\r\n.container .prefix_7 { padding-left:58.333% }\r\n.container .prefix_8 { padding-left:66.667% }\r\n.container .prefix_9 { padding-left:75.0% }\r\n.container .prefix_10 { padding-left:83.333% }\r\n.container .prefix_11 { padding-left:91.667% }\r\n\r\n/* Suffix to add extra space right */\r\n.container .suffix_1 { padding-right:8.333% }\r\n.container .suffix_2 { padding-right:16.667% }\r\n.container .suffix_3 { padding-right:25.0% }\r\n.container .suffix_4 { padding-right:33.333% }\r\n.container .suffix_5 { padding-right:41.667% }\r\n.container .suffix_6 { padding-right:50.0% }\r\n.container .suffix_7 { padding-right:58.333% }\r\n.container .suffix_8 { padding-right:66.667% }\r\n.container .suffix_9 { padding-right:75.0% }\r\n.container .suffix_10 { padding-right:83.333% }\r\n.container .suffix_11 { padding-right:91.667% }\r\n\r\n/* Push columns to right */\r\n.container .push_1 { left:8.333% }\r\n.container .push_2 { left:16.667% }\r\n.container .push_3 { left:25.0% }\r\n.container .push_4 { left:33.333% }\r\n.container .push_5 { left:41.667% }\r\n.container .push_6 { left:50.0% }\r\n.container .push_7 { left:58.333% }\r\n.container .push_8 { left:66.667% }\r\n.container .push_9 { left:75.0% }\r\n.container .push_10 { left:83.333% }\r\n.container .push_11 { left:91.667% }\r\n\r\n/* Pull columns to left */\r\n.container .pull_1 { left:-8.333% }\r\n.container .pull_2 { left:-16.667% }\r\n.container .pull_3 { left:-25.0% }\r\n.container .pull_4 { left:-33.333% }\r\n.container .pull_5 { left:-41.667% }\r\n.container .pull_6 { left:-50.0% }\r\n.container .pull_7 { left:-58.333% }\r\n.container .pull_8 { left:-66.667% }\r\n.container .pull_9 { left:-75.0% }\r\n.container .pull_10 { left:-83.333% }\r\n.container .pull_11 { left:-91.667% }\r\n\r\n/* =====================================\r\nTablet (Portrait) \r\n===================================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation : portrait) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 768px;\r\n        max-width: 1024px\r\n    } \r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portait) \r\n===================================== */\r\n@media only screen and (max-width: 320px) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 300px;\r\n        max-width: 320px\r\n    } \r\n    .container .grid_1, \r\n    .container .grid_2,\r\n    .container .grid_3,\r\n    .container .grid_4,\r\n    .container .grid_5,\r\n    .container .grid_6,\r\n    .container .grid_7,\r\n    .container .grid_8,\r\n    .container .grid_9,\r\n    .container .grid_10,\r\n    .container .grid_11,\r\n    .container .grid_12 { \r\n        width: 98%;  \r\n        margin: 0 1%;\r\n        float: none\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 321px) and (max-width: 767px) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 321px;\r\n        max-width: 767px\r\n    } \r\n    .container .grid_1, \r\n    .container .grid_2,\r\n    .container .grid_3,\r\n    .container .grid_4,\r\n    .container .grid_5,\r\n    .container .grid_6,\r\n    .container .grid_7,\r\n    .container .grid_8,\r\n    .container .grid_9,\r\n    .container .grid_10,\r\n    .container .grid_11,\r\n    .container .grid_12 { \r\n        width: 98%;\r\n        margin: 0 1%;\r\n        display: block;\r\n        float: none\r\n    }    \r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portrait & Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 300px) and (max-width: 767px) {\r\n    .container .prefix_1,\r\n    .container .prefix_2,\r\n    .container .prefix_3,\r\n    .container .prefix_4,\r\n    .container .prefix_5,\r\n    .container .prefix_6,\r\n    .container .prefix_7,\r\n    .container .prefix_8,\r\n    .container .prefix_9,\r\n    .container .prefix_10,\r\n    .container .prefix_11,\r\n    .container .suffix_1,\r\n    .container .suffix_2,\r\n    .container .suffix_3,\r\n    .container .suffix_4,\r\n    .container .suffix_5,\r\n    .container .suffix_6,\r\n    .container .suffix_7,\r\n    .container .suffix_8,\r\n    .container .suffix_9,\r\n    .container .suffix_10,\r\n    .container .suffix_11 { \r\n        padding-right: 0;\r\n        padding-left: 0\r\n    } \r\n    .container .push_1,\r\n    .container .push_2,\r\n    .container .push_3,\r\n    .container .push_4,\r\n    .container .push_5,\r\n    .container .push_6,\r\n    .container .push_7,\r\n    .container .push_8,\r\n    .container .push_9,\r\n    .container .push_10,\r\n    .container .push_11,\r\n    .container .pull_1,\r\n    .container .pull_2,\r\n    .container .pull_3,\r\n    .container .pull_4,\r\n    .container .pull_5,\r\n    .container .pull_6,\r\n    .container .pull_7,\r\n    .container .pull_8,\r\n    .container .pull_9,\r\n    .container .pull_10,\r\n    .container .pull_11 {\r\n        left: auto;\r\n        right: auto\r\n    }\r\n}\r\n\r\n/* =====================================\r\niPhone 4, iPad2, Retina stuff ?\r\n===================================== */\r\n@media only screen and (-webkit-min-device-pixel-ratio : 1.5), only screen and (min-device-pixel-ratio : 1.5) {\r\n\r\n/* if you buy me one i might test and add something here */\r\n\r\n}\r\n\r\n/* =====================================\r\nCLEARING FLOATS\r\n===================================== */\r\n.clear {\r\n	clear: both;\r\n	display: block;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0\r\n}\r\n\r\n.cf:before, \r\n.cf:after,\r\n.row:before,\r\n.row:after{ \r\n    content: ""; \r\n    display: table\r\n}\r\n.cf:after,\r\n.row:after{ \r\n    clear: both\r\n}\r\n.cf,\r\n.row { \r\n    *zoom: 1\r\n}\r\n\r\n[[/strip]]', '', 'screen', '2012-04-24 13:15:51', '2012-05-06 18:49:29');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(51, 'Simplex: Layout', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n\r\n[[* APPEARANCE *]]\r\n[[* \r\nBy adding #boxed id to body tag you can easily change appearance of the site.\r\nThis would add a background image to body and content would be wrapped in a box.\r\nBy removing that id the background is removed and site is presented in white.\r\n\r\nHow: Go to Template -> Simplex and find <body>\r\nNow simply edit as following <body id=''boxed''>\r\n\r\nYou can as well reposition your site by changing class on wrapping div.\r\nFind in Simplex Template following: \r\n\r\n<div class=''container centered'' id=''wrapper''>\r\n\r\nNow change "centered" to "left" or "right" and page will be left or right aligned.\r\n*]]\r\n\r\n[[* assign the images path to a variable *]]\r\n[[capture assign=''path'']][[uploads_url]]/simplex/images[[/capture]]\r\n\r\n[[* COLORS *]]\r\n\r\n[[assign var=''boxed_bg'' value="#d1d1d1 url(`$path`/boxed-bg.gif)"]]\r\n\r\n[[assign var=''light_grey'' value=''#f1f1f1'']]\r\n[[assign var=''grey'' value=''#e9e9e9'']]\r\n[[assign var=''dark_grey'' value=''#555'']]\r\n[[assign var=''white'' value=''#fff'']]\r\n[[assign var=''orange'' value=''#f39c2c'']]\r\n[[assign var=''dark_orange'' value=''#e6870e'']]\r\n[[assign var=''yellow'' value=''#fdbd34'']]\r\n\r\n\r\n/* =====================================\r\nBASIC STYLES\r\n===================================== */\r\nbody {\r\n    background: [[$white]];\r\n    font-family: sans-serif; /* sans-serif falls back to default OS and Browser font, usually Arial or Helvetica and so on */\r\n    font-size: 12px;\r\n    color: [[$dark_grey]];\r\n    line-height: 1.3\r\n}\r\n/* you can change appearance of the page by adding or removing #boxed id to body tag. */\r\nbody#boxed {\r\n    background: [[$boxed_bg]] repeat\r\n}\r\n/* add some space inside the boxed container */\r\n#boxed .container {\r\n    padding: 0 1%\r\n}\r\na img {\r\n    border: none\r\n}\r\n/* you can use these classes to align images to left or right */\r\n.right {\r\n    float: right\r\n}\r\n.left {\r\n    float:left\r\n}\r\n/* if image needs some space add this class to img tag\r\n * so at the end a left floating image would be <img src=''some.jpg'' class=''left spacing'' alt=''foo'' />\r\n */\r\n.spacing {\r\n    margin: 10px\r\n}\r\n.spacing.left {\r\n    margin: 10px 10px 10px 0\r\n}\r\n.spacing.right {\r\n    margin: 10px 0 10px 10px\r\n}\r\n/* or add a 2 px border to image or something, change as you need it */\r\n.border {\r\n    border: 2px solid [[$grey]]\r\n}\r\n/* some styling for code chunks */\r\ncode, samp, kbd {\r\n    font-family: Consolas, ''Andale Mono WT'', ''Andale Mono'', ''Lucida Console'', ''Lucida Sans Typewriter'', monospace;\r\n    color: [[$dark_grey]]\r\n}\r\npre code {\r\n    line-height: 1.4;\r\n    font-size: 11px\r\n}\r\npre {\r\n    padding: 10px;\r\n    margin: 10px 0;\r\n    overflow: auto;\r\n    width: 93%;\r\n    background: [[$light_grey]];\r\n    border-radius: 6px;\r\n    -webkit-border-radius: 6px;\r\n    -moz-border-radius: 6px;\r\n    -o-border-radius: 6px\r\n}\r\n/* target IE7 and IE6 */\r\n*:first-child+html pre {\r\n    padding-bottom: 20px;\r\n    overflow-y: hidden;\r\n    overflow: visible;\r\n    overflow-x: auto\r\n}\r\n* html pre {\r\n    padding-bottom: 20px;\r\n    overflow: visible;\r\n    overflow-x: auto\r\n}\r\n/* horizontal ruler */\r\nhr { \r\n    border: solid [[$grey]]; \r\n    border-width: 1px 0 0 0; \r\n    clear: both; \r\n    margin: 10px 0 30px 0; \r\n    height: 0\r\n}\r\n/* =====================================\r\nCOMMON TYPOGRAPHY\r\n===================================== */\r\n\r\n/* link default styles */\r\na { \r\n    color: [[$orange]];\r\n}\r\na:visited {  \r\n    color: [[$dark_orange]] \r\n}\r\na:hover { \r\n    color: [[$dark_grey]];\r\n    transition: transform 0.6s ease-out;\r\n    -webkit-transition: color 0.6s ease-out;\r\n    -moz-transition: color 0.6s ease-out;\r\n    -o-transition: color 0.6s ease-out;     \r\n    text-decoration: underline\r\n}\r\na:focus { \r\n    outline: thin dotted\r\n}\r\na:hover, a:active { \r\n    outline: 0\r\n}\r\n/* add icon to links with class external */\r\na.external span {\r\n    display: inline-block;\r\n    width: 9px;\r\n    height: 9px;\r\n    text-indent: -999em;\r\n    margin: 0 3px;\r\n    /* using sprite image, but left as reference to single image \r\n    background: transparent url([[$path]]/external-icon.png) no-repeat 0 0\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -130px;\r\n}\r\na.external:hover span {\r\n    background-position: -10px -139px\r\n}\r\n/* default heading styles */\r\nh1,\r\nh2,\r\nh3 {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n}\r\nh1 {\r\n    color: [[$orange]];\r\n    margin: 10px 0;\r\n    font-size: 28px;\r\n    text-transform: uppercase;\r\n}\r\nh2 {\r\n    color: [[$dark_grey]];\r\n    font-size: 22px\r\n}\r\nh3 {\r\n    color: [[$dark_grey]];\r\n    font-weight: 300;\r\n    font-size: 18px\r\n}\r\n/* blockquotes and cites */\r\nblockquote, \r\nblockquote p { \r\n    font-size: 14px; \r\n    line-height: 1.5; \r\n    color: [[$dark_grey]]; \r\n    font-style: italic;\r\n    font-family: Georgia, Times New Roman, serif\r\n}\r\nblockquote { \r\n    margin: 0 0 20px 0; \r\n    padding: 9px 10px 10px 19px; \r\n    border-left: 5px solid [[$light_grey]]\r\n}\r\nblockquote cite { \r\n    display: block; \r\n    font-size: 12px; \r\n    color: [[$dark_grey]] \r\n}\r\nblockquote cite:before { \r\n    content: "\\2014 \\0020"; \r\n}\r\nblockquote cite a, \r\nblockquote cite a:visited, \r\nblockquote cite a:visited {\r\n    font-family: Georgia, Times New Roman, serif;    \r\n}\r\n\r\n/* =====================================\r\nLAYOUT\r\n===================================== */\r\n/* wrapping the page in a box */\r\n#wrapper {\r\n    margin-top: 10px;\r\n    border-top: 5px solid [[$orange]]\r\n}\r\n/* you can switch appearance of the page by adding or removing id #boxed to body tag */\r\n#boxed #wrapper {\r\n    background: [[$white]];\r\n    box-shadow: 2px 2px 8px [[$dark_grey]]\r\n}\r\n   \r\n/* ------ HEADER SECTION ------ */\r\n/* if you need height or something for header part add style here */\r\n.header {\r\n \r\n}\r\n/* the logo */\r\n.logo {\r\n    margin-top: 12px;\r\n    position: relative\r\n}\r\n/* having some fun with palm, rotating with css3, will not work in IE */\r\n.logo .palm {\r\n    position: absolute;\r\n    top: 5px;\r\n    left: 45px;\r\n    /* using sprite image as background, left as reference to single image \r\n    background: url([[$path]]/palm-circle.png) no-repeat;\r\n    */\r\n    background: url([[$path]]/simplex-sprite.png) no-repeat -10px -10px;\r\n    display: block;\r\n    width: 48px;\r\n    height: 48px;\r\n    transition: transform 0.6s ease-out;    \r\n    -webkit-transition: -webkit-transform 0.6s ease-out;\r\n    -moz-transition: -moz-transform 0.6s ease-out;\r\n    -o-transition: -o-transform 0.6s ease-out;\r\n    -webkit-perspective: 1000;\r\n    -webkit-backface-visibility: hidden;     \r\n}\r\n/* css3 transform rotating palm on hover */\r\n.logo a:hover .palm {\r\n    transform: rotate(360deg);    \r\n    -webkit-transform: rotate(360deg);\r\n    -moz-transform: rotate(360deg);\r\n    -o-transform: rotate(360deg)   \r\n}\r\n.top .header {\r\n    border-bottom: 1px solid [[$light_grey]]\r\n}\r\n\r\n/* ------ NAVIGATION ------ */\r\n\r\n/* first level */\r\nnav.main-navigation {\r\n    z-index: 990;\r\n    height: 55px;\r\n    line-height: 37px;\r\n    margin-top: 20px;\r\n}\r\nnav.main-navigation > ul {\r\n    float:right;\r\n    padding: 0\r\n}\r\nnav.main-navigation > ul > li {\r\n    float: left;\r\n    padding: 0;\r\n    margin:0 12px;\r\n    position: relative\r\n}\r\nnav.main-navigation > ul > li:first-child,\r\nnav.main-navigation > ul > li.first {\r\n    margin-left: 0\r\n}\r\nnav.main-navigation > ul > li:last-child,\r\nnav.main-navigation > ul > li.last {\r\n    margin-right: 0\r\n}\r\nnav.main-navigation > ul > li > a,\r\nnav.main-navigation > ul > li.sectionheader span {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none;\r\n    font-size: 14px;\r\n    font-weight: 600;\r\n    cursor: pointer;\r\n    text-transform: uppercase\r\n}\r\n/* Second Level */\r\nnav.main-navigation ul li ul {\r\n    top: -999em;\r\n    left: -999em;\r\n    position: absolute;\r\n    display: block;\r\n    height: 0px;\r\n    width: 200px;  \r\n    padding: 10px;\r\n    background: [[$white]];\r\n    background: rgba(255,255,255,.95);    \r\n    box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -webkit-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -moz-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -o-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    border-radius: 6px;\r\n    -webkit-border-radius: 6px;\r\n    -moz-border-radius: 6px;\r\n    -o-border-radius: 6px;\r\n    border: 1px solid [[$grey]] \r\n}\r\nnav.main-navigation > ul > li:hover > ul {    \r\n    height: auto;\r\n    z-index: 9999;\r\n    top: 37px;\r\n    right: 0;\r\n    left: auto;\r\n    display: block\r\n}\r\nnav.main-navigation ul ul li {\r\n    position: relative;\r\n    line-height: 1;\r\n    margin: 0;\r\n    padding: 0;\r\n    border-bottom: 1px dotted [[$grey]]\r\n}\r\n/* third level */\r\nnav.main-navigation > ul > li > ul > li:hover > ul { \r\n    height: auto;\r\n    top: 0;\r\n    right: auto;\r\n    left: -210px;\r\n    z-index: 999;    \r\n    display: block\r\n}\r\n/* navigation text color */\r\nnav.main-navigation ul li li a,\r\nnav.main-navigation ul li li.sectionheader span {\r\n    padding: 6px 12px;\r\n    font-family: sans-serif;\r\n    text-transform: none;\r\n    font-weight: normal;\r\n    font-size: 12px;\r\n    text-decoration: none;\r\n    color: [[$dark_grey]];\r\n    display: block\r\n}\r\nnav.main-navigation a:hover,\r\nnav.main-navigation a.current,\r\nnav.main-navigation li.sectionheader span:hover,\r\nnav.main-navigation li.sectionheader span.current,\r\nnav.main-navigation li.sectionheader span.parent,\r\nnav.main-navigation ul ul li a:hover,\r\nnav.main-navigation ul ul li a.current {\r\n    color: [[$orange]]\r\n}\r\n/* bottom part of header*/\r\n.header-bottom {\r\n    height: 55px;\r\n    line-height: 55px\r\n}\r\n/* catchphrase */\r\n.phrase span {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n    text-transform: uppercase;\r\n    color: #ddd;\r\n    font-size: 16px;\r\n    font-weight: 700\r\n}\r\n/* search */\r\n.search {\r\n    text-align: right;\r\n}\r\n/* webkit browser add icons to input of type search, we dont want it here now */\r\ninput.search-input::-webkit-search-decoration,\r\ninput.search-input::-webkit-search-results-button,\r\ninput.search-input::-webkit-search-results-decoration {\r\n    -webkit-appearance:none\r\n}\r\n/* styling the search input field */\r\ninput.search-input {\r\n    border: 1px solid [[$light_grey]];  \r\n    height: 17px;\r\n    line-height: 17px;\r\n    outline: 0;\r\n    margin: 13px 0 0 0;\r\n    width: 165px;\r\n    padding: 5px 0 3px 35px;\r\n    font-size: 11px;\r\n    color: [[$dark_grey]];\r\n    transition: all .35s ease-in-out;\r\n    -webkit-transition: all .35s ease-in-out;\r\n    -moz-transition: all .35s ease-in-out;\r\n    -o-transition: all .35s ease-in-out; \r\n    /* using sprite image, left as reference to single image \r\n    background: [[$white]] url([[$path]]/search-icon.png) 10px 50% no-repeat\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) 0px -434px no-repeat\r\n}\r\ninput.search-input:focus {\r\n    border: 1px solid [[$orange]];\r\n    width: 240px;      \r\n    box-shadow: 0 0 3px [[$orange]];    \r\n    -webkit-box-shadow: 0 0 3px [[$orange]];\r\n    -moz-box-shadow: 0 0 3px [[$orange]];\r\n    -o-box-shadow: 0 0 3px [[$orange]];\r\n}\r\n   \r\n/* ------ BANNER AREA ------ */\r\n.banner {\r\n    overflow: hidden;\r\n    background: [[$orange]]\r\n}\r\n/* left text in orange box */\r\n.banner-text {\r\n    padding:0 0 0 1%;\r\n    position: relative;\r\n    float: left;\r\n    max-height: 275px;\r\n    width: 30.333%\r\n}\r\n.banner-text ul {\r\n    padding: 32px 0;\r\n}\r\n.banner-text li {\r\n    list-style: none;\r\n    display: block;\r\n    color: [[$dark_orange]];\r\n    text-shadow: 0px 1px 0 [[$yellow]], 0 -1px 0 rgba(0,0,0,0.3);\r\n    font-size: 36px;\r\n    font-weight: 700;\r\n    transition: all 2s linear;\r\n    -webkit-transition: all 1.5s linear;\r\n    -moz-transition: all 1.5s linear;\r\n    -o-transition: all 1.5s linear;\r\n    display: block\r\n}\r\n/* animating unordered list text in banner */\r\n.banner-text li:hover {\r\n    text-indent: 120px;\r\n    opacity: 0;\r\n    transform: scale(2) rotate(35deg);\r\n    -webkit-transform: scale(2) rotate(35deg);\r\n    -moz-transform: scale(2) rotate(35deg);\r\n    -o-transform: scale(2) rotate(35deg)\r\n}\r\n/* images on the right */\r\n.banner-image {\r\n    float:right;\r\n    display: block;\r\n    position: relative;\r\n    width: 67.667%;\r\n    overflow: hidden;\r\n    background: [[$grey]]\r\n}\r\n.banner-image div {\r\n    position: absolute;\r\n    z-index: 0;\r\n    width: 100%;\r\n    min-height: 100px;\r\n    overflow: hidden;\r\n    display: block;\r\n    top: 0;\r\n    left: 0\r\n}\r\n.banner-image img {\r\n    display: block;\r\n	height: auto;\r\n    width: 100%;\r\n    bottom: 0;\r\n    max-width: 100%;\r\n}\r\n/* ------ CONTENT AREA ------ */\r\n.content-wrapper {\r\n    padding-top: 20px\r\n}\r\n.content-top {\r\n    background: url([[$path]]/dots.gif) repeat-x 0 50%;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    color: [[$dark_grey]];\r\n    font-style: italic;\r\n    line-height: 20px\r\n}\r\n\r\n/* breadcrumbs */\r\n.breadcrumb {\r\n    display: inline-block;\r\n    background: [[$white]];\r\n    width: auto;\r\n    padding-right: 6px\r\n}\r\n.breadcrumb a {\r\n    color: [[$dark_grey]];\r\n    display: inline-block;\r\n    width: auto;\r\n    background: [[$white]]\r\n}\r\n\r\n/* print button */\r\na.printbutton {\r\n    display: block;\r\n    padding-left: 6px;\r\n    width: 16px;\r\n    height: 16px;\r\n    float:right;\r\n    text-indent: -999em;\r\n    /* using sprite image, left as reference to single image\r\n    background: [[$white]] url([[$path]]/print-icon.png) no-repeat 6px -16px;\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) no-repeat -4px -94px;\r\n    transition: all 0.2s ease-out;    \r\n    -webkit-transition: all 0.2s ease-out;\r\n    -moz-transition: all 0.2s ease-out;\r\n    -o-transition: all 0.2s ease-out     \r\n}\r\na.printbutton:hover {\r\n    /* using sprite image, left as reference to single image\r\n    background: [[$white]] url([[$path]]/print-icon.png) no-repeat 6px 0;\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) no-repeat -4px -78px;\r\n}\r\n\r\n/* news module summary -> content */\r\n.content .news-summary  span.heading {\r\n    display: none\r\n}\r\n.content .news-article {\r\n    margin-bottom: 15px;\r\n    padding-bottom: 15px;\r\n    border-bottom: 1px dotted [[$grey]]\r\n}\r\n.content .news-summary ul.category-list {\r\n    margin: 15px 0\r\n}\r\n.content .news-summary ul.category-list li a,\r\n.news-summary ul.category-list li span {\r\n    border-radius: 4px\r\n}\r\n.news-summary ul.category-list li span {\r\n    opacity: .4\r\n}\r\n/* news module summary -> sitewide (content + sidebar) */\r\n/* article heading */\r\n.news-article h2 {\r\n    margin: 0 0 15px 0\r\n}\r\n.news-article h2 a {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n    text-transform: uppercase;\r\n    color: [[$dark_grey]];\r\n    font-size: 16px;\r\n    text-decoration: none;\r\n    font-weight: 700\r\n}\r\n/* date circle, well square for IE  */\r\n.news-article .date {\r\n    background: [[$orange]];\r\n    color: [[$white]];\r\n    display: block;\r\n    float:left;\r\n    width: 40px;\r\n    padding: 6px;\r\n    height: 40px;\r\n    border-radius: 26px;\r\n    text-align: center;\r\n    font-family: Georgia, Times New Roman, serif\r\n}\r\n.news-article .day {\r\n    font-size: 20px;\r\n    line-height: 1;\r\n    padding-bottom: 2px;\r\n    font-style: italic;\r\n    display: block\r\n}\r\n.news-article.month {\r\n    font-size: 11px;\r\n    display: block\r\n}\r\n/* author and category */\r\n.news-article .author,\r\n.news-article .category {\r\n    font-family: Georgia, Times New Roman, serif;\r\n    display: block;\r\n    padding-left: 60px;\r\n    font-size: 11px;\r\n    font-style: italic\r\n}\r\n/* category list on top of summary */\r\n.news-summary ul.category-list {\r\n    margin:15px 0 0 0;\r\n    padding:0;\r\n    list-style: none\r\n}\r\n.news-summary ul.category-list li {\r\n    float:left;\r\n    display: block;\r\n    width: auto;\r\n    margin-right: 5px\r\n}\r\n.news-summary ul.category-list li a,\r\n.news-summary ul.category-list li span {\r\n    display: block;\r\n    color: [[$dark_grey]];\r\n    padding: 4px 8px;\r\n    background: [[$light_grey]];\r\n    border-radius: 4px 4px 0 0;\r\n    text-decoration: none;\r\n    font-size: 11px;\r\n    text-transform: uppercase\r\n}\r\n.news-summary ul.category-list li a:hover {\r\n    color: [[$orange]]\r\n}\r\n.news-summary .paginate {\r\n    font: italic 11px/1.2 Georgia, Times New Roman, serif;\r\n    \r\n}\r\n.news-summary .paginate a {\r\n    padding: 0 3px;\r\n}\r\n.news-meta {\r\n    background: [[$light_grey]];\r\n    padding: 10px;\r\n    margin: 10px 0\r\n}\r\n/* more link */\r\n.more,\r\n.more a,\r\n/* back link */\r\n.back,\r\n.back a,\r\n/* previous, next links */\r\n.previous a,\r\n.next a,\r\n.previous,\r\n.next {\r\n    font:  italic 12px/1.3 Georgia, Times New Roman, serif;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none\r\n} \r\n/* hover behavior of more, next, previous links */\r\n.more a:hover,\r\n.back a:hover,\r\n.previous a:hover,\r\n.next a:hover {\r\n    text-decoration: underline\r\n}\r\n.previous,\r\n.next {\r\n    padding: 6px 0;\r\n}\r\n/* align next link to right */\r\n.previous {\r\n    float:left;\r\n}\r\n.next {\r\n    float: right\r\n}\r\n\r\n/* ------ SIDEBAR AREA ------ */\r\n\r\n/* news module summary -> sidebar */\r\n.sidebar .news-summary  span.heading {\r\n    background: url([[$path]]/dots.gif) repeat-x 0 50%;\r\n    color: [[$dark_grey]];\r\n    font:  normal 16px/20px Georgia, Times New Roman, serif;\r\n    margin: 0 0 15px 0;\r\n    display: block\r\n}\r\n.sidebar .news-summary .heading span {\r\n    display: inline-block;\r\n    width: auto;\r\n    background: [[$white]];\r\n    padding-right: 6px\r\n}\r\n.sidebar .news-article {\r\n    padding: 15px;\r\n    position: relative;\r\n    background: [[$light_grey]];\r\n    margin-bottom: 20px;\r\n    border-radius: 0 0 6px 0\r\n}\r\n/* creating a bubble box with css3 */\r\n.sidebar .news-article:before {\r\n    content:'''';\r\n    position: absolute;\r\n    bottom: -15px;\r\n    right: 25px;\r\n    width: 10px;\r\n    height: 35px;\r\n    -webkit-transform: rotate(55deg) skewY(55deg);\r\n    -moz-transform: rotate(55deg) skewY(55deg);\r\n    -o-transform: rotate(55deg) skewY(55deg);\r\n    -ms-transform: rotate(55deg) skewY(55deg);\r\n    transform: rotate(55deg) skewY(55deg);\r\n    background: [[$light_grey]]\r\n}\r\n\r\n/* ------ FOOTER AREA ------ */\r\n/* footer wrapper */\r\n.footer {\r\n    position: relative;\r\n    background: transparent url([[$path]]/footer-background.png) repeat-x top;\r\n    border-bottom: 1px dotted [[$grey]];\r\n    margin: 25px 0 10px 0;\r\n    padding: 20px 0\r\n}\r\n/* copyright text */\r\n.copyright {\r\n    padding-top: 15px\r\n}\r\n.copyright p,\r\n.copyright a {\r\n    color: [[$dark_grey]];\r\n    font-size: 11px\r\n}\r\n/* social icons */\r\n.footer ul.social {\r\n    padding: 0;\r\n    margin: 0\r\n}\r\n.footer .social li {\r\n    float:left;\r\n    margin: 0;\r\n    padding: 0;\r\n    list-style: none;\r\n    margin-right: 6px\r\n}\r\n.footer .social li a {\r\n    display: block;\r\n    width: 24px;\r\n    height: 24px;\r\n    transition: all 0.2s ease-out;    \r\n    -webkit-transition: all 0.2s ease-out;\r\n    -moz-transition: all 0.2s ease-out;\r\n    -o-transition: all 0.2s ease-out;     \r\n    text-indent: -999em\r\n}\r\n.footer .social li.facebook a { \r\n    /* using sprite image, left as reference to single image \r\n    background: transparent url([[$path]]/facebook-icon.png) no-repeat 0 -24px\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -260px\r\n}\r\n.footer .social li.facebook a:hover {\r\n    /* using sprite image, left as reference to single image \r\n    background: transparent url([[$path]]/facebook-icon.png) no-repeat 0 0\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -236px\r\n}\r\n.footer .social li.twitter a { \r\n    /* background: transparent url([[$path]]/twitter-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -192px\r\n}\r\n.footer .social li.twitter a:hover {\r\n    /* background: transparent url([[$path]]/twitter-icon.png) no-repeat 0 0 */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -168px\r\n}\r\n.footer .social li.linkedin a { \r\n    /* background: transparent url([[$path]]/linkedin-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -328px\r\n}\r\n.footer .social li.linkedin a:hover {\r\n   /*  background: transparent url([[$path]]/linkedin-icon.png) no-repeat 0 0 */\r\n   background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -304px\r\n}\r\n.footer .social li.youtube a { \r\n    /* background: transparent url([[$path]]/youtube-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -396px\r\n}\r\n.footer .social li.youtube a:hover {\r\n    /* background: transparent url([[$path]]/youtube-icon.png) no-repeat 0 0 */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -372px\r\n}\r\n/* back to top anchor */\r\n.back-top a {\r\n    display: inline-block;\r\n    width: auto;\r\n    padding: 8px;\r\n    border-left: 5px solid [[$white]];\r\n    border-right: 5px solid [[$white]];\r\n    font:  normal italic 11px/20px Georgia, Times New Roman, serif;\r\n    text-decoration: none;\r\n    color: [[$dark_grey]];\r\n    background: [[$light_grey]];\r\n    color: [[$dark_grey]];\r\n    border-radius: 10px 0 10px 0;\r\n    -webkit-border-radius: 10px 0 10px 0;\r\n    -moz-border-radius: 10px 0 10px 0;\r\n    -o-border-radius: 10px 0 10px 0;\r\n    position: absolute;\r\n    top: -14px;\r\n    left: 48%\r\n}\r\n/* Footer navigation */\r\n.footer-navigation {\r\n    padding-top: 15px\r\n}\r\n.footer-navigation > ul > li {\r\n    float:left;\r\n    width: 32.333%\r\n}\r\n.footer-navigation > ul > li > a,\r\n.footer-navigation > ul > li span.sectionheader {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n    text-transform: uppercase;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none;\r\n    display: block\r\n}\r\n/* second level */\r\n.footer-navigation > ul ul {\r\n    margin-top: 10px\r\n}\r\n.footer-navigation > ul > li li {\r\n    float: none;\r\n    width: 100%;\r\n    display: block\r\n}\r\n.footer-navigation > ul > li li a,\r\n.footer-navigation > ul > li.sectionheader li a,\r\n.footer-navigation > ul > li li span.sectionheader  {\r\n    text-decoration: none;\r\n    font-family: sans-serif;\r\n    font-weight: normal;\r\n    text-transform: none; \r\n    display: block;\r\n    padding: 2px 0;\r\n    color: [[$dark_grey]]\r\n}\r\n.footer-navigation > ul > li li a:hover {\r\n    color: [[$orange]]\r\n}\r\n\r\n[[/strip]]', '', 'screen', '2012-04-24 13:16:21', '2013-04-17 14:33:49'),
(52, 'Simplex: Print', '/* reset body background and color, just in case */\r\nbody {\r\n    background: #fff;\r\n    color: #000;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    font-size: 12pt\r\n}\r\n/* any element with class noprint or listed below should not be printed */\r\n.noprint,\r\n.visuallyhidden {\r\n    display: none\r\n}\r\n/* display image as block */\r\nimg {\r\n    display: block;\r\n    float: none\r\n}\r\n/* remove width and floats from elements */\r\n#wrapper,\r\n.container,\r\n.container .grid_1, \r\n.container .grid_2,\r\n.container .grid_3,\r\n.container .grid_4,\r\n.container .grid_5,\r\n.container .grid_6,\r\n.container .grid_7,\r\n.container .grid_8,\r\n.container .grid_9,\r\n.container .grid_10,\r\n.container .grid_11,\r\n.container .grid_12 {\r\n    width: 100%;\r\n    margin: 0;\r\n    float: none    \r\n}\r\n/* links arent clickable on paper, lets display url */\r\na:link:after {\r\n    content: " (" attr(href) ") ";\r\n}\r\na {\r\n    text-decoration: underline\r\n}\r\n', 'print', '', '2012-04-26 07:47:10', '2012-05-06 17:10:32'),
(53, 'Simplex: Mobile', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n\r\n/* Default styles for screens up to 1024px width */\r\n/* realign logo for mobile devices */\r\n.logo.grid_4 {\r\n    float: none;\r\n    display: block;\r\n    text-align: center;\r\n    margin:10px 0;\r\n    padding:0;\r\n    width: 100%\r\n}\r\n/* hide rotating palm */\r\n.logo .palm {\r\n    display: none\r\n}\r\n/* realign navigation for mobile devices */\r\nnav.main-navigation {\r\n    float: none;\r\n    margin: 0;\r\n    height: auto;\r\n    line-height: 1\r\n}\r\nnav.main-navigation > ul {\r\n    float:none;\r\n    position: relative;\r\n    padding: 0\r\n}\r\nnav.main-navigation ul li {\r\n    background: #f1f1f1;\r\n    display: block;\r\n    position: relative;\r\n    border-radius: 4px 4px 0 0;\r\n    padding: 0 10px;\r\n    margin: 0 1px\r\n}\r\nnav.main-navigation > ul > li > a,\r\nnav.main-navigation > ul > li.sectionheader > span {\r\n    font-size: 12px;\r\n    line-height: 28px;\r\n}\r\n/* second level navigation */\r\nnav.main-navigation ul li ul {\r\n    top: -999em;\r\n    left: -999em;\r\n    width: 200px;\r\n    height: auto;\r\n    display: block;\r\n    position: absolute;\r\n}\r\nnav.main-navigation > ul > li:hover > ul,\r\nnav.main-navigation > ul > li.active > ul {\r\n    top: 28px;\r\n    left: 0;\r\n    z-index: 999;\r\n    right: auto\r\n}\r\nnav.main-navigation ul ul li {\r\n    position: relative;\r\n    background: #fff;\r\n    line-height: 1;\r\n    height: auto;\r\n    margin: 0;\r\n    padding: 0\r\n} \r\nnav.main-navigation > ul > li li a {\r\n    line-height: 1\r\n}\r\n/* third level */\r\nnav.main-navigation > ul > li > ul > li:hover > ul {\r\n    left: 0;\r\n    top: 28px\r\n}\r\n/* close button (appended to dropdown with jquery) */\r\n.close-button {\r\n    display: block;\r\n    background: url([[uploads_url]]/simplex/images/close_button.png) no-repeat;\r\n    text-indent: -999em;\r\n    position: absolute;\r\n    bottom: -5px;\r\n    right: -5px;\r\n    width: 24px;\r\n    height: 24px\r\n}\r\n/* display phrase text and search box in full width */\r\n.header-bottom {\r\n    height: auto;\r\n    line-height: 1.2;\r\n    padding: 10px 0\r\n}\r\n.search input {\r\n    text-align: center;\r\n    padding: 5px 0 3px 0;\r\n    display: block\r\n}\r\n/* phrase */\r\n.phrase .grid_7 {\r\n    margin: 0;\r\n    width: 100%;\r\n    float: none;\r\n    display: block\r\n}\r\n/* hide banner text and size image area */\r\n.banner-text {\r\n    display: none;\r\n    width: 0\r\n}\r\n.banner-image {\r\n    display: block;\r\n    width: 100%;\r\n    float:none;\r\n    margin: 0;\r\n    padding: 0\r\n}\r\n/* hide print button */\r\na.printbutton {\r\n    display: none\r\n}\r\n\r\n/* =====================================\r\nTablet (Portrait) \r\n===================================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation : portrait) {\r\n    /* realign navigation for mobile devices */\r\n    nav.main-navigation {\r\n        float: none;\r\n        margin: 0;\r\n        line-height: 1\r\n    }\r\n    nav.main-navigation ul li {\r\n        position: static\r\n    }\r\n    nav.main-navigation > ul > li > a,\r\n    nav.main-navigation > ul > li.sectionheader > span {\r\n        font-size: 14px\r\n    } \r\n    .header-bottom {\r\n        height: auto;\r\n        line-height: 1.2;\r\n        padding: 10px 0\r\n    }\r\n    .search input {\r\n        width: 60%;\r\n        text-align: center;\r\n        padding: 5px 0 3px 0;\r\n        display: block\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 321px) and (max-width: 767px) { \r\n    nav.main-navigation ul li {\r\n        position: static\r\n    }    \r\n    nav.main-navigation > ul > li > a.\r\n    nav.main-navigation > ul > li.sectionheader > span {\r\n        font-size: 10px\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portait) \r\n===================================== */\r\n@media only screen and (max-width: 480px) {\r\n    .logo img {\r\n        margin: 20px auto\r\n    }\r\n    /* realing navigation */\r\n    nav.main-navigation {\r\n        line-height: 1\r\n    }\r\n    nav.main-navigation > ul > li:hover > ul,\r\n    nav.main-navigation > ul > li.active > ul {\r\n        top: 58px;\r\n        left: 2%;\r\n        right: auto\r\n    }    \r\n    nav.main-navigation ul li {\r\n        float: none;\r\n        position: relative;\r\n        background: none;\r\n        border-bottom: 1px dotted #f1f1f1;\r\n        border-radius: 0;\r\n        padding: 8px 0;\r\n        margin: 0\r\n    }\r\n    nav.main-navigation > ul > li > a,\r\n    nav.main-navigation > ul > li.sectionheader span {\r\n        font-size: 20px\r\n    }\r\n    /* search box */\r\n    .grid_5.search {\r\n        float:none;\r\n        margin: 0 auto;\r\n        width: 100%;\r\n    }    \r\n    .search input {\r\n        width: 80%;\r\n        text-align: center;\r\n        padding: 5px 0 3px 0;\r\n        display: block\r\n    }     \r\n    /* hiding footer navigation or it is squeezed to much */\r\n    .footer-navigation {\r\n        display: none\r\n    }\r\n    .footer .copyright {\r\n        text-align: center\r\n    }\r\n}\r\n\r\n[[/strip]]', '', 'screen and (min-width: 300px) and (max-width: 1024px)', '2012-04-30 12:27:44', '2013-04-17 14:36:32');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_css_assoc`
--

CREATE TABLE IF NOT EXISTS `cms_css_assoc` (
  `assoc_to_id` int(11) DEFAULT NULL,
  `assoc_css_id` int(11) DEFAULT NULL,
  `assoc_type` varchar(80) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `assoc_order` int(11) DEFAULT NULL,
  KEY `cms_index_css_assoc_by_assoc_to_id` (`assoc_to_id`),
  KEY `cms_index_css_assoc_by_assoc_css_id` (`assoc_css_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_css_seq`
--

CREATE TABLE IF NOT EXISTS `cms_css_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_css_seq`
--

INSERT INTO `cms_css_seq` (`id`) VALUES
(53);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_events`
--

CREATE TABLE IF NOT EXISTS `cms_events` (
  `originator` varchar(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `cms_originator` (`originator`),
  KEY `cms_event_name` (`event_name`),
  KEY `cms_event_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_events`
--

INSERT INTO `cms_events` (`originator`, `event_name`, `event_id`) VALUES
('Core', 'LoginPost', 1),
('Core', 'LogoutPost', 2),
('Core', 'AddUserPre', 3),
('Core', 'AddUserPost', 4),
('Core', 'EditUserPre', 5),
('Core', 'EditUserPost', 6),
('Core', 'DeleteUserPre', 7),
('Core', 'DeleteUserPost', 8),
('Core', 'AddGroupPre', 9),
('Core', 'AddGroupPost', 10),
('Core', 'EditGroupPre', 11),
('Core', 'EditGroupPost', 12),
('Core', 'DeleteGroupPre', 13),
('Core', 'DeleteGroupPost', 14),
('Core', 'AddStylesheetPre', 15),
('Core', 'AddStylesheetPost', 16),
('Core', 'EditStylesheetPre', 17),
('Core', 'EditStylesheetPost', 18),
('Core', 'DeleteStylesheetPre', 19),
('Core', 'DeleteStylesheetPost', 20),
('Core', 'AddTemplatePre', 21),
('Core', 'AddTemplatePost', 22),
('Core', 'EditTemplatePre', 23),
('Core', 'EditTemplatePost', 24),
('Core', 'DeleteTemplatePre', 25),
('Core', 'DeleteTemplatePost', 26),
('Core', 'TemplatePreCompile', 27),
('Core', 'TemplatePostCompile', 28),
('Core', 'AddGlobalContentPre', 29),
('Core', 'AddGlobalContentPost', 30),
('Core', 'EditGlobalContentPre', 31),
('Core', 'EditGlobalContentPost', 32),
('Core', 'DeleteGlobalContentPre', 33),
('Core', 'DeleteGlobalContentPost', 34),
('Core', 'GlobalContentPreCompile', 35),
('Core', 'GlobalContentPostCompile', 36),
('Core', 'ContentEditPre', 37),
('Core', 'ContentEditPost', 38),
('Core', 'ContentDeletePre', 39),
('Core', 'ContentDeletePost', 40),
('Core', 'AddUserDefinedTagPre', 41),
('Core', 'AddUserDefinedTagPost', 42),
('Core', 'EditUserDefinedTagPre', 43),
('Core', 'EditUserDefinedTagPost', 44),
('Core', 'DeleteUserDefinedTagPre', 45),
('Core', 'DeleteUserDefinedTagPost', 46),
('Core', 'ModuleInstalled', 47),
('Core', 'ModuleUninstalled', 48),
('Core', 'ModuleUpgraded', 49),
('Core', 'ContentStylesheet', 50),
('Core', 'ContentPreCompile', 51),
('Core', 'ContentPostCompile', 52),
('Core', 'ContentPostRender', 53),
('Core', 'SmartyPreCompile', 54),
('Core', 'SmartyPostCompile', 55),
('Core', 'ChangeGroupAssignPre', 56),
('Core', 'ChangeGroupAssignPost', 57),
('Core', 'StylesheetPreCompile', 58),
('Core', 'StylesheetPostCompile', 59),
('Core', 'LoginFailed', 60),
('Core', 'TemplatePreFetch', 61),
('FileManager', 'OnFileUploaded', 62),
('News', 'NewsArticleAdded', 63),
('News', 'NewsArticleEdited', 64),
('News', 'NewsArticleDeleted', 65),
('News', 'NewsCategoryAdded', 66),
('News', 'NewsCategoryEdited', 67),
('News', 'NewsCategoryDeleted', 68),
('Search', 'SearchInitiated', 69),
('Search', 'SearchCompleted', 70),
('Search', 'SearchItemAdded', 71),
('Search', 'SearchItemDeleted', 72),
('Search', 'SearchAllItemsDeleted', 73);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_events_seq`
--

CREATE TABLE IF NOT EXISTS `cms_events_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_events_seq`
--

INSERT INTO `cms_events_seq` (`id`) VALUES
(73);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_event_handlers`
--

CREATE TABLE IF NOT EXISTS `cms_event_handlers` (
  `event_id` int(11) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(160) DEFAULT NULL,
  `removable` int(11) DEFAULT NULL,
  `handler_order` int(11) DEFAULT NULL,
  `handler_id` int(11) NOT NULL,
  PRIMARY KEY (`handler_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_event_handlers`
--

INSERT INTO `cms_event_handlers` (`event_id`, `tag_name`, `module_name`, `removable`, `handler_order`, `handler_id`) VALUES
(38, NULL, 'MenuManager', 0, 1, 1),
(40, NULL, 'MenuManager', 0, 1, 2),
(38, NULL, 'Search', 0, 2, 3),
(40, NULL, 'Search', 0, 2, 4),
(48, NULL, 'Search', 0, 1, 5),
(53, NULL, 'TinyMCE', 0, 1, 6);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_event_handler_seq`
--

CREATE TABLE IF NOT EXISTS `cms_event_handler_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_event_handler_seq`
--

INSERT INTO `cms_event_handler_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_groups`
--

CREATE TABLE IF NOT EXISTS `cms_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_groups`
--

INSERT INTO `cms_groups` (`group_id`, `group_name`, `active`, `create_date`, `modified_date`) VALUES
(1, 'Admin', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(2, 'Editor', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(3, 'Designer', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_groups_seq`
--

CREATE TABLE IF NOT EXISTS `cms_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_groups_seq`
--

INSERT INTO `cms_groups_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_group_perms`
--

CREATE TABLE IF NOT EXISTS `cms_group_perms` (
  `group_perm_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_perm_id`),
  KEY `cms_index_group_perms_by_group_id_permission_id` (`group_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_group_perms`
--

INSERT INTO `cms_group_perms` (`group_perm_id`, `group_id`, `permission_id`, `create_date`, `modified_date`) VALUES
(348, 3, 16, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(347, 3, 24, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(346, 3, 27, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(345, 2, 13, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(344, 3, 32, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(343, 3, 11, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(342, 3, 22, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(341, 3, 26, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(340, 3, 31, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(339, 2, 6, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(338, 2, 44, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(337, 3, 4, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(336, 3, 25, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(335, 2, 1, '2013-11-12 01:46:45', '2013-11-12 01:46:45'),
(334, 3, 30, '2013-11-12 01:46:45', '2013-11-12 01:46:45');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_group_perms_seq`
--

CREATE TABLE IF NOT EXISTS `cms_group_perms_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_group_perms_seq`
--

INSERT INTO `cms_group_perms_seq` (`id`) VALUES
(348);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_htmlblobs`
--

CREATE TABLE IF NOT EXISTS `cms_htmlblobs` (
  `htmlblob_id` int(11) NOT NULL,
  `htmlblob_name` varchar(255) DEFAULT NULL,
  `html` text,
  `description` text,
  `use_wysiwyg` tinyint(4) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`htmlblob_id`),
  KEY `cms_index_htmlblobs_by_htmlblob_name` (`htmlblob_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_htmlblobs`
--

INSERT INTO `cms_htmlblobs` (`htmlblob_id`, `htmlblob_name`, `html`, `description`, `use_wysiwyg`, `owner`, `create_date`, `modified_date`) VALUES
(1, 'footer', '<p>&copy; Copyright {custom_copyright} - CMS Made Simple<br />\r\nThis site is powered by <a href="http://www.cmsmadesimple.org">CMS Made Simple</a> version {cms_version}</p>', '', 1, 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(2, 'htmlblok', '{user_agent}', '{user_agent}', 0, 1, '2013-11-07 12:39:53', '2013-11-07 12:41:45');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_htmlblobs_seq`
--

CREATE TABLE IF NOT EXISTS `cms_htmlblobs_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_htmlblobs_seq`
--

INSERT INTO `cms_htmlblobs_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_modules`
--

CREATE TABLE IF NOT EXISTS `cms_modules` (
  `module_name` varchar(160) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT '0',
  `active` tinyint(4) DEFAULT NULL,
  `allow_fe_lazyload` tinyint(4) DEFAULT NULL,
  `allow_admin_lazyload` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`module_name`),
  KEY `cms_index_modules_by_module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_modules`
--

INSERT INTO `cms_modules` (`module_name`, `status`, `version`, `admin_only`, `active`, `allow_fe_lazyload`, `allow_admin_lazyload`) VALUES
('CMSMailer', 'installed', '5.2.2', 0, 1, 1, 0),
('CMSPrinting', 'installed', '1.0.5', 0, 1, 0, 1),
('FileManager', 'installed', '1.4.3', 0, 1, 1, 0),
('MenuManager', 'installed', '1.8.6', 0, 1, 0, 0),
('MicroTiny', 'installed', '1.2.5', 0, 1, 1, 1),
('ModuleManager', 'installed', '1.5.5', 1, 1, 0, 1),
('News', 'installed', '2.13', 0, 1, 1, 1),
('Search', 'installed', '1.7.11', 0, 1, 1, 1),
('ThemeManager', 'installed', '1.1.8', 1, 1, 0, 1),
('Cataloger', 'installed', '0.11.3', 0, 1, 0, 0),
('TinyMCE', 'installed', '2.9.12', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_catalog_attr`
--

CREATE TABLE IF NOT EXISTS `cms_module_catalog_attr` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `alias` varchar(60) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `defaultval` text,
  `field_type` varchar(25) DEFAULT 'text',
  `select_values` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_catalog_attr_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_catalog_attr_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_catalog_attr_seq`
--

INSERT INTO `cms_module_catalog_attr_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_catalog_template`
--

CREATE TABLE IF NOT EXISTS `cms_module_catalog_template` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `template` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_catalog_template`
--

INSERT INTO `cms_module_catalog_template` (`id`, `type_id`, `title`, `template`) VALUES
(1, 2, 'Category-CSS-based', '<h1>{$title}</h1>{section name=numimg loop=$image_url_array}<img src="{$image_url_array[numimg]}" alt="{$title}" title="{$title}" />{/section}{$notes}<div class="category_items">   {if $hasnav == 1}<div class="catnav">{$prev}{$navstr}{$next}</div>	{/if}    {section name=numloop loop=$items}        <div class="category_item"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a></div>    {/section}    {if $hasnav == 1}{* The number that is without a link (a href) have a <span class="nolink" ) have a look in source code-html*}<div class="catnav">{$prev}{$navstr}{$next}</div>	{/if}</div>'),
(2, 2, 'Category-Table-based', '{assign var="cols" value="3"}<h1>{$title}</h1>{section name=numimg loop=$image_url_array}<img src="{$image_url_array[numimg]}" title="{$title}" alt="{$title}" />{/section}{$notes}<table style="border: solid 1px black;"><tr>    {section name=numloop loop=$items}        <td style="width: 200px;"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a></td>        {if not ($smarty.section.numloop.rownum mod $cols)}                {if not $smarty.section.numloop.last}                        </tr><tr>                {/if}        {/if}        {if $smarty.section.numloop.last}                {math equation = "n - a % n" n=$cols a=$items|@count assign="cells"}                {if $cells ne $cols}                {section name=pad loop=$cells}                        <td style="width: 200px;">&nbsp;</td>                {/section}                {/if}                </tr>        {/if}    {/section}\n    {if $hasnav == 1}<tr><td{if $cols gt 1} colspan="{$cols}"{/if} style="border-top: solid 1px black;">{$prev}{$navstr}{$next}</td></tr>\n	{/if}</table>'),
(3, 4, 'Comparison-Table-based', '<div class="item_comparison"><table>	<tr>		<th></th>		{section name=at loop=$attrlist}			<th>{$attrlist[at]->attr}</th>		{/section}	</tr>	{foreach from=$items item=ti}		<tr>			<td>				<a href="{$ti.link}">				<img src="{$image_root}?i={$ti.alias}_t_1_50_1.jpg" /></a><br />				{$ti.title}			</td>			{section name=at loop=$attrlist}				<td>					{assign var=attrkey value=`$attrlist[at]->safe`}{$ti[$attrkey]}				</td>			{/section}		</tr>	{/foreach}</table></div>'),
(4, 5, 'Feature-CSS-based', '<div class="feature_items">    {section name=numloop loop=$items}        <div class="feature_item"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a></div>    {/section}</div>'),
(5, 5, 'Feature-Table-based', '{assign var="cols" value="1"}<table style="border: solid 1px black;"><tr>    {section name=numloop loop=$items}        <td style="width: 200px;"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a></td>        {if not ($smarty.section.numloop.rownum mod $cols)}                {if not $smarty.section.numloop.last}                        </tr><tr>                {/if}        {/if}        {if $smarty.section.numloop.last}                {math equation = "n - a % n" n=$cols a=$items|@count assign="cells"}                {if $cells ne $cols}                {section name=pad loop=$cells}                        <td style="width: 200px;">&nbsp;</td>                {/section}                {/if}                </tr>        {/if}    {/section}\n</table>'),
(6, 1, 'Item-CSS-based', '<div class="catalog_item"><p>{$title}</p><div class="item_images"><img id="item_image" name="item_image"  src="{$image_1_url}" alt="{$title}" title="{$title}" /><div class="item_thumbnails">{section name=ind loop=$image_url_array}<a href="javascript:repl(''{$image_url_array[ind]}'')"><img src="{$image_thumb_url_array[ind]}" title="{$title}" alt="{$title}" /></a>{/section}</div></div>{section name=at loop=$attrlist}<div class="item_attribute_name">{$attrlist[at].name}:</div><div class="item_attribute_val">{eval var=$attrlist[at].key}</div>{/section}{literal}<script type="text/javascript">function repl(img)   {   document.item_image.src=img;   }</script>{/literal}{if $file_count > 0}<ul class="files">{section name=ind loop=$file_name_array}<li><a href="{$file_url_array[ind]}">{$file_name_array[ind]}</a></li>{/section}</ul>{/if}</div>'),
(7, 1, 'Item-Table-based', '<div class="item"><p>{$title}</p><table><tr><td><img id="item_image" name="item_image"  src="{$image_1_url}" title="{$title}" alt="{$title}" /></td><td>{section name=ind loop=$image_url_array}<a href="javascript:repl(''{$image_url_array[ind]}'')"><img src="{$image_thumb_url_array[ind]}" title="{$title}" alt="{$title}" /></a>{/section}</td></tr></table>{section name=at loop=$attrlist}<p><strong>{$attrlist[at].name}</strong>: {eval var=$attrlist[at].key}</p>{/section}{literal}<script type="text/javascript">function repl(img)   {   document.item_image.src=img;   }</script>{/literal}</div>'),
(8, 3, 'Printable-Catalog-Table-based', '{assign var="cols" value="3"}<h1>{$title}</h1>{$notes}<table style="border: solid 1px black;"><tr>    {section name=numloop loop=$items}        <td style="width: 200px;"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a><br />Category: {$items[numloop].cat}<br />{foreach from=$attrlist item=attr key=k}{$attr}: {$items[numloop][$k]}<br />{/foreach}</td>        {if not ($smarty.section.numloop.rownum mod $cols)}                {if not $smarty.section.numloop.last}                        </tr><tr>                {/if}        {/if}        {if $smarty.section.numloop.last}                {math equation = "n - a % n" n=$cols a=$items|@count assign="cells"}                {if $cells ne $cols}                {section name=pad loop=$cells}                        <td style="width: 200px;">&nbsp;</td>                {/section}                {/if}                </tr>        {/if}   {/section}</table>{$copyright}');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_catalog_template_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_catalog_template_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_catalog_template_seq`
--

INSERT INTO `cms_module_catalog_template_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_catalog_template_type`
--

CREATE TABLE IF NOT EXISTS `cms_module_catalog_template_type` (
  `type_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_catalog_template_type`
--

INSERT INTO `cms_module_catalog_template_type` (`type_id`, `name`) VALUES
(1, 'Str&aacute;nka položky'),
(2, 'Str&aacute;nka kateg&oacu'),
(3, 'Katal&oacute;g na vytlače'),
(4, 'Item Comparison'),
(5, 'Feature List');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_deps`
--

CREATE TABLE IF NOT EXISTS `cms_module_deps` (
  `parent_module` varchar(25) DEFAULT NULL,
  `child_module` varchar(25) DEFAULT NULL,
  `minimum_version` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_deps`
--

INSERT INTO `cms_module_deps` (`parent_module`, `child_module`, `minimum_version`, `create_date`, `modified_date`) VALUES
('FileManager', 'MicroTiny', '1.4.2', '2013-11-06 21:22:13', '2013-11-06 21:22:13');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_news`
--

CREATE TABLE IF NOT EXISTS `cms_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_data` text,
  `news_date` datetime DEFAULT NULL,
  `summary` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_extra` varchar(255) DEFAULT NULL,
  `news_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `cms_news_postdate` (`news_date`),
  KEY `cms_news_daterange` (`start_time`,`end_time`),
  KEY `cms_news_author` (`author_id`),
  KEY `cms_news_hier` (`news_category_id`),
  KEY `cms_news_url` (`news_url`),
  KEY `cms_news_startenddate` (`start_time`,`end_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_news`
--

INSERT INTO `cms_module_news` (`news_id`, `news_category_id`, `news_title`, `news_data`, `news_date`, `summary`, `start_time`, `end_time`, `status`, `icon`, `create_date`, `modified_date`, `author_id`, `news_extra`, `news_url`) VALUES
(1, 1, 'News Module Installed', 'The news module was installed.  Exciting. This news article is not using the Summary field and therefore there is no link to read more. But you can click on the news heading to read only this article.', '2013-11-06 21:22:13', NULL, NULL, NULL, 'published', NULL, '2013-11-06 21:22:13', '2013-11-06 21:22:13', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_news_categories`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `long_name` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_news_categories`
--

INSERT INTO `cms_module_news_categories` (`news_category_id`, `news_category_name`, `parent_id`, `hierarchy`, `long_name`, `create_date`, `modified_date`) VALUES
(1, 'General', -1, '00001', 'General', '2013-11-06 21:22:13', '2013-11-06 21:22:13');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_news_categories_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_news_categories_seq`
--

INSERT INTO `cms_module_news_categories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_news_fielddefs`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  `extra` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_news_fieldvals`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`,`fielddef_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_news_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_news_seq`
--

INSERT INTO `cms_module_news_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_search_index`
--

CREATE TABLE IF NOT EXISTS `cms_module_search_index` (
  `item_id` int(11) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `cms_index_search_count` (`count`),
  KEY `cms_index_search_index` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_search_index`
--

INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES
(336, '0026', 1),
(336, '0000', 1),
(336, ' sk97', 1),
(336, 'iban', 1),
(336, 'number', 1),
(336, '| account', 1),
(348, 'natural', 1),
(346, '2009', 1),
(346, 'established', 1),
(346, 'was', 1),
(346, 'agency', 1),
(346, 'service', 1),
(346, 'growing', 1),
(346, 'dynamically', 1),
(346, 'originality', 1),
(346, 'energy', 1),
(346, 'young', 1),
(346, 'marketing', 1),
(346, 'and', 2),
(346, 'advertising', 2),
(346, 'field', 1),
(346, 'the', 1),
(346, 'experiences', 1),
(346, 'years', 1),
(346, 'several', 1),
(430, 'analysis', 1),
(430, 'partnerships', 1),
(430, 'buying', 1),
(495, 'mixed_one', 1),
(495, 'natural', 1),
(336, 'sk2022883247 bank', 1),
(336, '| vat', 1),
(336, '| tax', 1),
(336, 'b company', 1),
(336, 'slovakiazapísaná', 1),
(430, 'planning', 1),
(430, 'media', 1),
(430, 'produkcia', 1),
(430, 'merchandising', 2),
(430, 'event', 2),
(430, 'atĎ', 1),
(430, 'viral', 2),
(430, 'ambient', 2),
(430, 'guerrilla', 2),
(430, 'netradiČnÝ', 1),
(107, 'home', 4),
(336, 'address', 1),
(336, 'invoice', 1),
(336, '348 ', 1),
(336, 'phone', 1),
(34, 'the', 3),
(34, 'news', 5),
(34, 'module', 3),
(34, 'was', 1),
(34, 'installed', 3),
(34, 'exciting', 1),
(34, 'this', 2),
(34, 'article', 2),
(34, 'not', 1),
(34, 'using', 1),
(34, 'summary', 1),
(34, 'field', 1),
(34, 'and', 1),
(34, 'therefore', 1),
(34, 'there', 1),
(34, 'link', 1),
(34, 'read', 2),
(34, 'more', 1),
(34, 'but', 1),
(34, 'you', 1),
(34, 'can', 1),
(34, 'click', 1),
(34, 'heading', 1),
(34, 'only', 1),
(133, 'referencie', 4),
(430, ' stratÉgia', 1),
(495, 'bayer', 4),
(430, 'marketing', 5),
(508, 'mixed_one', 1),
(501, 'mixed_one', 1),
(500, 'mixed_one', 1),
(497, 'mixed_one', 1),
(498, 'mixed_one', 1),
(498, 'natural', 1),
(498, 'clinic', 4),
(498, 'medinea', 4),
(500, 'niké', 4),
(336, 'slovakia', 1),
(336, '1100', 3),
(336, '2621194353', 2),
(336, 'účtu', 1),
(336, '| Číslo', 1),
(501, 'natural', 1),
(336, 'banka', 2),
(336, 'tatra', 2),
(336, 'spojenie', 1),
(336, 'sk2022883247 bankové', 1),
(336, 'dph', 1),
(336, '| iČ', 1),
(336, '2022883247', 2),
(336, '| diČ', 1),
(336, '44957521', 2),
(336, 'b iČo', 1),
(430, 'webdesign', 1),
(430, 'kampanÍ', 1),
(430, 'tvorba', 1),
(430, 'logotyp', 1),
(430, 'identity', 2),
(430, 'corporate', 2),
(430, 'vizuÁlna', 1),
(430, 'kreatÍva', 1),
(430, 'poradenstvo', 1),
(430, 'analÝzy', 1),
(346, 'combining', 1),
(346, 'výzvy', 1),
(346, 'ďalšie', 1),
(346, 'rizikatešíme', 1),
(346, 'miery', 1),
(346, 'inováciía', 1),
(430, 'partnerstvÁ', 1),
(499, 'mixed_one', 1),
(343, 'mixed_one', 1),
(343, 'natural', 1),
(500, 'natural', 1),
(499, 'natural', 1),
(499, 'planning', 4),
(499, 'methods', 4),
(498, 'beauty', 4),
(343, 'slovensko', 4),
(343, 'max', 4),
(501, 'sovva', 4),
(348, 'marionnaud', 4),
(496, 'belupo', 4),
(345, 'mixed_one', 1),
(345, 'natural', 1),
(345, 'podnik', 4),
(345, 'národný', 4),
(345, 'slovenský', 4),
(505, 'original', 2),
(505, 'are', 2),
(505, 'all', 2),
(505, 'originál', 2),
(505, 'sme', 2),
(346, 'správnej', 1),
(346, 'nebojíme', 1),
(346, 'nápadov', 1),
(346, 'hlavu', 1),
(346, 'plnú', 1),
(346, 'máme', 1),
(346, 'médií', 1),
(346, 'marketingu', 1),
(346, 'reklamy', 1),
(346, 'oblasti', 1),
(346, 'servis', 1),
(346, 'full', 3),
(346, 'agentúraposkytujúca', 1),
(346, 'rozvíjajúca', 1),
(346, 'dynamicky', 1),
(346, 'mladá', 1),
(346, 'sme', 1),
(346, 'about', 3),
(336, '60284', 2),
(336, 'číslo', 2),
(336, 'vložka', 2),
(336, 'súd', 2),
(336, 'okresný', 2),
(336, 'registri', 2),
(336, 'obch', 2),
(336, 'bratislava zapísaná', 1),
(336, '| 851', 2),
(336, '| bohorova', 2),
(336, 'údaje', 1),
(336, 'fakturačné', 1),
(336, 'info@gooseberry', 2),
(336, 'mail', 2),
(336, '348', 1),
(336, '855', 2),
(336, '918', 2),
(336, '| ', 2),
(336, '035', 2),
(336, '484', 2),
(336, '905', 2),
(336, '| tel', 2),
(336, '0083', 2),
(336, '2072', 2),
(336, '421', 6),
(336, 'slovenskotel', 1),
(336, 'bratislava', 5),
(336, '| 811', 2),
(336, 'námestie', 2),
(336, 'jakubovo', 2),
(336, 'contact', 2),
(346, 'nás', 3),
(336, 'gooseberry', 4),
(336, 'kontakt', 2),
(336, '2119', 1),
(336, '4353', 1),
(336, '| swift', 1),
(336, ' tatr', 1),
(348, 'parfumeries', 4),
(497, 'natural', 1),
(497, 'elgas', 4),
(348, 'mixed_one', 1),
(505, 'každá', 2),
(449, 'anniversary', 2),
(449, 'years', 2),
(449, 'rokov', 2),
(449, '150', 4),
(449, 'výročie', 2),
(356, 'lady', 4),
(452, 'identity', 2),
(356, 'natural', 1),
(356, 'mixed_one', 1),
(356, 'carcare', 4),
(452, 'corporate', 2),
(452, 'identita', 2),
(452, 'korporátna', 2),
(476, 'floceta', 4),
(471, 'communication', 2),
(458, 'identity', 2),
(451, 'energy', 2),
(453, 'goddess', 2),
(453, 'become', 2),
(453, 'bohyňou', 2),
(481, 'goddess', 2),
(481, 'back', 2),
(481, 'come', 2),
(481, 'bohyňa', 2),
(486, 'konferencií', 2),
(368, 'natural', 1),
(368, 'komora', 4),
(368, 'advokátska', 4),
(368, 'slovenská', 4),
(368, 'mixed_one', 1),
(516, 'side', 2),
(516, 'your', 2),
(516, 'advocates', 2),
(516, 'strane', 2),
(516, 'vašej', 2),
(516, 'advokáti', 2),
(475, 'night', 2),
(471, 'image', 2),
(471, 'komunikácia', 2),
(514, 'night', 2),
(514, 'researchers', 2),
(514, '2013', 4),
(494, 'night', 2),
(494, 'researchers', 2),
(494, '2012', 4),
(443, 'night', 2),
(443, 'researchers', 2),
(443, '2011', 4),
(442, '2009', 4),
(442, 'výskumníkov', 2),
(442, 'noc', 2),
(393, 'team', 4),
(393, 'natural', 1),
(393, 'mixed_one', 1),
(458, 'corporate', 2),
(458, 'identita', 2),
(458, 'korporátna', 2),
(486, 'koncept', 2),
(471, 'imidžová', 2),
(412, 'max', 4),
(412, 'lekáreň', 4),
(412, 'natural', 1),
(412, 'mixed_one', 1),
(450, 'academy', 2),
(450, 'logotype', 2),
(450, 'akadémia', 2),
(450, 'max', 4),
(450, 'logotyp', 2),
(486, 'vizuálny', 2),
(481, 'vráťte', 2),
(418, 'cinema', 4),
(418, 'city', 4),
(418, 'slovensko', 4),
(418, 'natural', 1),
(418, 'mixed_one', 1),
(475, 'the', 4),
(475, '2013', 4),
(475, 'reklamožrútov', 2),
(475, 'noc', 2),
(451, 'energia', 2),
(430, 'nÁkup', 1),
(430, 'plÁnovanie', 1),
(430, 'stratÉgia', 2),
(430, 'mÉdiÁ', 1),
(430, 'services', 3),
(430, 'služby', 3),
(430, 'advicecreation', 1),
(430, ' strategy', 1),
(430, 'and', 1),
(430, 'logotype', 1),
(430, 'artcreating', 1),
(430, 'campaigns', 1),
(430, 'webdesignmarketing', 1),
(430, ' untraditional', 1),
(430, 'etc', 1),
(430, 'production', 1),
(431, 'klub', 2),
(431, 'nikÉ', 4),
(431, 'club', 2),
(451, 'bespoke', 2),
(451, 'mieru', 2),
(514, 'výskumníkov', 2),
(514, 'noc', 2),
(494, 'výskumníkov', 2),
(494, 'noc', 2),
(443, 'výskumníkov', 2),
(443, 'noc', 2),
(442, 'researchers', 2),
(442, 'night', 2),
(453, 'staňte', 2),
(475, 'adeaters', 2),
(477, 's&d', 4),
(477, 'pharma', 4),
(477, 'slovensko', 4),
(477, 'natural', 1),
(477, 'mixed_one', 1),
(478, 'nekadyl', 4),
(486, 'visual', 2),
(486, 'concept', 2),
(486, 'conferences', 2),
(508, 'natural', 1),
(508, 'slovensko', 4),
(508, 'eglo', 4),
(504, 'communication', 2),
(504, 'vizuály', 2),
(504, 'komunikačné', 2),
(504, 'visuals', 2),
(506, 'plus', 4),
(506, 'pharma', 4),
(506, 'natural', 1),
(506, 'mixed_one', 1),
(515, 'gastronorm', 4);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_search_items`
--

CREATE TABLE IF NOT EXISTS `cms_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `extra_attr` varchar(100) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `content_id` (`content_id`),
  KEY `extra_attr` (`extra_attr`),
  KEY `cms_index_search_items` (`module_name`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_search_items`
--

INSERT INTO `cms_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES
(107, 'Search', 15, 'content', NULL),
(430, 'Search', 63, 'content', NULL),
(499, 'Search', 98, 'content', NULL),
(495, 'Search', 94, 'content', NULL),
(346, 'Search', 72, 'content', NULL),
(336, 'Search', 73, 'content', NULL),
(34, 'News', 1, 'article', NULL),
(133, 'Search', 59, 'content', NULL),
(343, 'Search', 97, 'content', NULL),
(497, 'Search', 95, 'content', NULL),
(501, 'Search', 96, 'content', NULL),
(500, 'Search', 99, 'content', NULL),
(498, 'Search', 100, 'content', NULL),
(496, 'Search', 101, 'content', NULL),
(345, 'Search', 102, 'content', NULL),
(505, 'Search', 103, 'content', NULL),
(348, 'Search', 104, 'content', NULL),
(449, 'Search', 105, 'content', NULL),
(356, 'Search', 106, 'content', NULL),
(452, 'Search', 108, 'content', NULL),
(476, 'Search', 109, 'content', NULL),
(451, 'Search', 111, 'content', NULL),
(453, 'Search', 112, 'content', NULL),
(481, 'Search', 113, 'content', NULL),
(486, 'Search', 114, 'content', NULL),
(368, 'Search', 115, 'content', NULL),
(516, 'Search', 117, 'content', NULL),
(471, 'Search', 118, 'content', NULL),
(514, 'Search', 131, 'content', NULL),
(494, 'Search', 120, 'content', NULL),
(443, 'Search', 121, 'content', NULL),
(442, 'Search', 122, 'content', NULL),
(393, 'Search', 123, 'content', NULL),
(458, 'Search', 125, 'content', NULL),
(412, 'Search', 126, 'content', NULL),
(450, 'Search', 127, 'content', NULL),
(418, 'Search', 128, 'content', NULL),
(475, 'Search', 129, 'content', NULL),
(431, 'Search', 130, 'content', NULL),
(477, 'Search', 132, 'content', NULL),
(478, 'Search', 133, 'content', NULL),
(508, 'Search', 134, 'content', NULL),
(504, 'Search', 135, 'content', NULL),
(506, 'Search', 136, 'content', NULL),
(515, 'Search', 137, 'content', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_search_items_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_search_items_seq`
--

INSERT INTO `cms_module_search_items_seq` (`id`) VALUES
(516);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_search_words`
--

CREATE TABLE IF NOT EXISTS `cms_module_search_words` (
  `word` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_smarty_plugins`
--

CREATE TABLE IF NOT EXISTS `cms_module_smarty_plugins` (
  `sig` varchar(80) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `module` varchar(160) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sig`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_smarty_plugins`
--

INSERT INTO `cms_module_smarty_plugins` (`sig`, `name`, `module`, `type`, `callback`, `available`, `cachable`) VALUES
('a13f88201fd98d2fbb219f4bb4d4d75e', 'FileManager', 'FileManager', 'function', 's:15:"function_plugin";', 1, 0),
('d077ec0a46ac7ac76f7ebb22bf223dd5', 'MenuManager', 'MenuManager', 'function', 's:15:"function_plugin";', 1, 0),
('0d66b5f48afdb3ab28b1b00f23e3251f', 'menu', 'MenuManager', 'function', 's:15:"function_plugin";', 1, 1),
('042ecc80bd5585fce43393f9d3f434b6', 'cms_breadcrumbs', 'MenuManager', 'function', 's:22:"smarty_cms_breadcrumbs";', 1, 1),
('6db731a58353c03d0b79fe4e4adacdbd', 'News', 'News', 'function', 's:15:"function_plugin";', 1, 0),
('1ec62e1e885cc0fd80237da2d5ea8778', 'news', 'News', 'function', 's:15:"function_plugin";', 1, 1),
('bb0d76390dd2c0ab4e365e2e49d534b0', 'Search', 'Search', 'function', 's:15:"function_plugin";', 1, 0),
('f3114372c8995dd5974b0306430a3ce3', 'search', 'Search', 'function', 's:15:"function_plugin";', 1, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_module_templates`
--

CREATE TABLE IF NOT EXISTS `cms_module_templates` (
  `module_name` varchar(160) DEFAULT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_module_templates_by_module_name_template_name` (`module_name`,`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_module_templates`
--

INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
('CMSPrinting', 'linktemplate', '{if isset($imgsrc)}\n{capture assign=''image''}\n  <img src="{$imgsrc}" title="{$linktext}" alt="{$linktext}" {if isset($imgclass) && $imgclass!=''''}class="{$imgclass}"{/if} />\n{/capture}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$image}</a>\n{else}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$linktext}</a>\n{/if}\n', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('CMSPrinting', 'printtemplate', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n  <head>\n    <title>Printing {title}</title>\n    <meta name="robots" content="noindex" />\n    <base href="{$rooturl}" />\n    <meta name="Generator" content="CMS Made Simple - Copyright (C) 2004-12 Ted Kulp. All rights reserved." />\n    <meta http-equiv="Content-Type" content="text/html; charset={$encoding}" />\n\n    {cms_stylesheet media=''print'' templateid=$templateid}\n\n    {if $overridestylesheet!=''''}\n    <style type="text/css">\n    {$overridestylesheet}\n    </style>\n    {/if}\n    \n  </head>\n  <body style="background-color: white; color: black; background-image: none; text-align: left;">	\n    {$content}\n        \n    {$printscript}\n  </body>\n</html>\n', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('News', 'summarySample', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you''re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don''t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsSummaryField">\n        {if $field->type == ''file''}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('News', 'summarySummary_Simplex', '{strip}\n\n<!-- .news-summary wrapper -->\n<article class=''news-summary''>\n<span class=''heading''><span>News</span></span>\n        <ul class=''category-list cf''>\n        {foreach from=$cats item=''node''}\n        {if $node.depth > $node.prevdepth}\n            {repeat string=''<ul>'' times=$node.depth-$node.prevdepth}\n        {elseif $node.depth < $node.prevdepth}\n            {repeat string=''</li></ul>'' times=$node.prevdepth-$node.depth}\n            </li>\n            {elseif $node.index > 0}</li>\n            {/if}\n            <li{if $node.index == 0} class=''first''{/if}>\n        {if $node.count > 0}\n                <a href=''{$node.url}''>{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n        {/foreach}\n        {repeat string=''</li></ul>'' times=$node.depth-1}</li>\n        </ul>\n    {foreach from=$items item=''entry''}\n    <!-- .news-article (wrapping each article) -->\n    <section class=''news-article''>\n        <header>\n            <h2><a href=''{$entry->moreurl}'' title=''{$entry->title|cms_escape:htmlall}''>{$entry->title|cms_escape}</a></h2>\n            <div class=''meta cf''>\n                <time class=''date'' datetime=''{$entry->postdate|date_format:''%Y-%m-%d''}''>\n                    <span class=''day''> {$entry->postdate|date_format:''%d''} </span>\n                    <span class=''month''> {$entry->postdate|date_format:''%b''} </span>\n                </time>\n                <span class=''author''> {$author_label} {$entry->author} </span>\n                <span class=''category''> {$category_label} {$entry->category}</span>\n            </div>\n        </header>\n        {if $entry->summary}\n            <p>{eval var=$entry->summary|strip_tags}</p>\n            <span class=''more''>{$entry->morelink} →</span>\n        {else if $entry->content}\n            <p>{eval var=$entry->content|strip_tags}</p>\n        {/if}\n    </section>\n    <!-- .news-article //-->\n    {/foreach}\n        <!-- news pagination -->\n        {if $pagecount > 1}\n        <span class=''paginate''>\n            {if $pagenumber > 1}\n                {$firstpage} {$prevpage}\n            {/if}\n                {$pagetext} {$pagenumber} {$oftext} {$pagecount}\n            {if $pagenumber < $pagecount}\n                {$nextpage} {$lastpage}\n            {/if}\n        </span>\n        {/if}\n</article>\n<!-- .news-summary //-->\n\n{/strip}', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('News', 'detailSample', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n     displayvalue (mixed) = A displayable value for the field.  This is particularly useful in the case of dropdown fields.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=''canonical'' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != ''''} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsDetailField">\n        {if $field->type == ''file''}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('News', 'detailSimplex_Detail', '{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=''canonical'' value=$entry->canonical}\n{/if}\n\n<h2>{$entry->title|cms_escape:htmlall}</h2>\n{if $entry->summary}\n    {eval var=$entry->summary}\n{/if}\n    {eval var=$entry->content}\n{if $entry->extra}\n		{$extra_label} {$entry->extra}\n{/if}\n{if $return_url != ""}\n    <br />\n        <span class=''back''>← {$return_url}{if $category_name != ''''} - {$category_link}{/if}</span>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div>\n        {if $field->type == ''file''}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\n          <img src=''{$entry->file_location}/{$field->value}'' alt='''' />\n        {else}\n          {$field->name}: {eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n    <footer class=''news-meta''>\n    {if $entry->postdate}\n        {$entry->postdate|cms_date_format}\n    {/if}\n    {if $entry->category}\n        <strong>{$category_label}</strong> {$entry->category}\n    {/if}\n    {if $entry->author}\n        <strong>{$author_label}</strong> {$entry->author}\n    {/if}\n    </footer>', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('News', 'formSample', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=''onefield''}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('News', 'browsecatSample', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('News', 'email_template', 'A new news article has been posted to your website.  The details are as follows:\nTitle:      {$title}\nIP Address: {$ipaddress}\nSummary:    {$summary|strip_tags}\nPost Date:  {$postdate|date_format}\nStart Date: {$startdate|date_format}\nEnd Date:   {$enddate|date_format}\n', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('Search', 'displaysearch', '\n{$startform}\n<label for="{$search_actionid}searchinput">{$searchprompt}:&nbsp;</label><input type="text" class="search-input" id="{$search_actionid}searchinput" name="{$search_actionid}searchinput" size="20" maxlength="50" value="{$searchtext}" {$hogan}/>\n{*\n<br/>\n<input type="checkbox" name="{$search_actionid}use_or" value="1"/>\n*}\n<input class="search-button" name="submit" value="{$submittext}" type="submit" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('Search', 'displayresult', '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href="{$entry->url}">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {* \n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry \n      ie: {if $entry->module == ''News''}{News action=''detail'' article_id=$entry->modulerecord detailpage=''News''} \n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
('Cataloger', 'catalog_1', '<h1>{$title}</h1>{section name=numimg loop=$image_url_array}<img src="{$image_url_array[numimg]}" alt="{$title}" title="{$title}" />{/section}{$notes}<div class="category_items">   {if $hasnav == 1}<div class="catnav">{$prev}{$navstr}{$next}</div>	{/if}    {section name=numloop loop=$items}        <div class="category_item"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a></div>    {/section}    {if $hasnav == 1}{* The number that is without a link (a href) have a <span class="nolink" ) have a look in source code-html*}<div class="catnav">{$prev}{$navstr}{$next}</div>	{/if}</div>', '2013-11-06 21:23:03', '2013-11-06 21:23:03'),
('Cataloger', 'catalog_2', '{assign var="cols" value="3"}<h1>{$title}</h1>{section name=numimg loop=$image_url_array}<img src="{$image_url_array[numimg]}" title="{$title}" alt="{$title}" />{/section}{$notes}<table style="border: solid 1px black;"><tr>    {section name=numloop loop=$items}        <td style="width: 200px;"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a></td>        {if not ($smarty.section.numloop.rownum mod $cols)}                {if not $smarty.section.numloop.last}                        </tr><tr>                {/if}        {/if}        {if $smarty.section.numloop.last}                {math equation = "n - a % n" n=$cols a=$items|@count assign="cells"}                {if $cells ne $cols}                {section name=pad loop=$cells}                        <td style="width: 200px;">&nbsp;</td>                {/section}                {/if}                </tr>        {/if}    {/section}\n    {if $hasnav == 1}<tr><td{if $cols gt 1} colspan="{$cols}"{/if} style="border-top: solid 1px black;">{$prev}{$navstr}{$next}</td></tr>\n	{/if}</table>', '2013-11-06 21:23:03', '2013-11-06 21:23:03'),
('Cataloger', 'catalog_3', '<div class="item_comparison"><table>	<tr>		<th></th>		{section name=at loop=$attrlist}			<th>{$attrlist[at]->attr}</th>		{/section}	</tr>	{foreach from=$items item=ti}		<tr>			<td>				<a href="{$ti.link}">				<img src="{$image_root}?i={$ti.alias}_t_1_50_1.jpg" /></a><br />				{$ti.title}			</td>			{section name=at loop=$attrlist}				<td>					{assign var=attrkey value=`$attrlist[at]->safe`}{$ti[$attrkey]}				</td>			{/section}		</tr>	{/foreach}</table></div>', '2013-11-06 21:23:03', '2013-11-06 21:23:03'),
('Cataloger', 'catalog_4', '<div class="feature_items">    {section name=numloop loop=$items}        <div class="feature_item"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a></div>    {/section}</div>', '2013-11-06 21:23:03', '2013-11-06 21:23:03'),
('Cataloger', 'catalog_5', '{assign var="cols" value="1"}<table style="border: solid 1px black;"><tr>    {section name=numloop loop=$items}        <td style="width: 200px;"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a></td>        {if not ($smarty.section.numloop.rownum mod $cols)}                {if not $smarty.section.numloop.last}                        </tr><tr>                {/if}        {/if}        {if $smarty.section.numloop.last}                {math equation = "n - a % n" n=$cols a=$items|@count assign="cells"}                {if $cells ne $cols}                {section name=pad loop=$cells}                        <td style="width: 200px;">&nbsp;</td>                {/section}                {/if}                </tr>        {/if}    {/section}\n</table>', '2013-11-06 21:23:03', '2013-11-06 21:23:03'),
('Cataloger', 'catalog_6', '<div class="catalog_item"><p>{$title}</p><div class="item_images"><img id="item_image" name="item_image"  src="{$image_1_url}" alt="{$title}" title="{$title}" /><div class="item_thumbnails">{section name=ind loop=$image_url_array}<a href="javascript:repl(''{$image_url_array[ind]}'')"><img src="{$image_thumb_url_array[ind]}" title="{$title}" alt="{$title}" /></a>{/section}</div></div>{section name=at loop=$attrlist}<div class="item_attribute_name">{$attrlist[at].name}:</div><div class="item_attribute_val">{eval var=$attrlist[at].key}</div>{/section}{literal}<script type="text/javascript">function repl(img)   {   document.item_image.src=img;   }</script>{/literal}{if $file_count > 0}<ul class="files">{section name=ind loop=$file_name_array}<li><a href="{$file_url_array[ind]}">{$file_name_array[ind]}</a></li>{/section}</ul>{/if}</div>', '2013-11-06 21:23:03', '2013-11-06 21:23:03'),
('Cataloger', 'catalog_7', '<div class="item"><p>{$title}</p><table><tr><td><img id="item_image" name="item_image"  src="{$image_1_url}" title="{$title}" alt="{$title}" /></td><td>{section name=ind loop=$image_url_array}<a href="javascript:repl(''{$image_url_array[ind]}'')"><img src="{$image_thumb_url_array[ind]}" title="{$title}" alt="{$title}" /></a>{/section}</td></tr></table>{section name=at loop=$attrlist}<p><strong>{$attrlist[at].name}</strong>: {eval var=$attrlist[at].key}</p>{/section}{literal}<script type="text/javascript">function repl(img)   {   document.item_image.src=img;   }</script>{/literal}</div>', '2013-11-06 21:23:03', '2013-11-06 21:23:03'),
('Cataloger', 'catalog_8', '{assign var="cols" value="3"}<h1>{$title}</h1>{$notes}<table style="border: solid 1px black;"><tr>    {section name=numloop loop=$items}        <td style="width: 200px;"><a href="{$items[numloop].link}"><img src="{$items[numloop].image}" title="{$items[numloop].title}" alt="{$items[numloop].title}"/></a><br /><a href="{$items[numloop].link}">{$items[numloop].title}</a><br />Category: {$items[numloop].cat}<br />{foreach from=$attrlist item=attr key=k}{$attr}: {$items[numloop][$k]}<br />{/foreach}</td>        {if not ($smarty.section.numloop.rownum mod $cols)}                {if not $smarty.section.numloop.last}                        </tr><tr>                {/if}        {/if}        {if $smarty.section.numloop.last}                {math equation = "n - a % n" n=$cols a=$items|@count assign="cells"}                {if $cells ne $cols}                {section name=pad loop=$cells}                        <td style="width: 200px;">&nbsp;</td>                {/section}                {/if}                </tr>        {/if}   {/section}</table>{$copyright}', '2013-11-06 21:23:03', '2013-11-06 21:23:03');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_permissions`
--

CREATE TABLE IF NOT EXISTS `cms_permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `permission_text` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_permissions`
--

INSERT INTO `cms_permissions` (`permission_id`, `permission_name`, `permission_text`, `create_date`, `modified_date`) VALUES
(1, 'Add Pages', 'Add Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(2, 'Add Groups', 'Add Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(4, 'Add Templates', 'Add Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(5, 'Add Users', 'Add Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(6, 'Modify Any Page', 'Modify Any Page', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(7, 'Modify Groups', 'Modify Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(8, 'Modify Group Assignments', 'Modify Group Assignments', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(9, 'Modify Permissions', 'Modify Permissions for Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(11, 'Modify Templates', 'Modify Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(12, 'Modify Users', 'Modify Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(13, 'Remove Pages', 'Remove Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(14, 'Remove Groups', 'Remove Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(16, 'Remove Templates', 'Remove Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(17, 'Remove Users', 'Remove Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(18, 'Modify Modules', 'Modify Modules', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(20, 'Modify Files', 'Modify Files', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(21, 'Modify Site Preferences', 'Modify Site Preferences', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(22, 'Modify Stylesheets', 'Modify Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(23, 'Add Stylesheets', 'Add Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(24, 'Remove Stylesheets', 'Remove Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(25, 'Add Stylesheet Assoc', 'Add Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(26, 'Modify Stylesheet Assoc', 'Modify Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(27, 'Remove Stylesheet Assoc', 'Remove Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(28, 'Modify User-defined Tags', 'Modify User defined Tags', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(29, 'Clear Admin Log', 'Clear Admin Log', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(30, 'Add Global Content Blocks', 'Add Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(31, 'Modify Global Content Blocks', 'Modify Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(32, 'Remove Global Content Blocks', 'Remove Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(35, 'Modify Events', 'Modify Events', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
(36, 'View Tag Help', 'View Tag Help', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
(44, 'Manage All Content', 'Manage All Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
(46, 'Reorder Content', 'Reorder Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
(47, 'Use FileManager Advanced', 'Pokročil&eacute; vyžitie s&uacute;borov&eacute;ho manaž&eacute;ru', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
(48, 'Manage Menu', 'Manage Menu', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
(49, 'MicroTiny View HTML Source', 'MicroTiny View HTML Source', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
(50, 'Modify News', 'Modify News', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
(51, 'Approve News', 'Approve News For Frontend Display', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
(52, 'Delete News', 'Delete News Articles', '2013-11-06 21:22:13', '2013-11-06 21:22:13'),
(53, 'Manage Themes', 'Manage Themes', '2013-11-06 21:22:17', '2013-11-06 21:22:17'),
(54, 'Modify Catalog Settings', 'Modify Catalog Settings', '2013-11-06 21:23:03', '2013-11-06 21:23:03'),
(55, 'allowadvancedprofile', 'Povoliť použ&iacute;vanie roz&scaron;&iacute;ren&eacute;ho profulu v TinyMCE', '2013-11-14 23:45:59', '2013-11-14 23:45:59');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_permissions_seq`
--

CREATE TABLE IF NOT EXISTS `cms_permissions_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_permissions_seq`
--

INSERT INTO `cms_permissions_seq` (`id`) VALUES
(55);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_reference_files`
--

CREATE TABLE IF NOT EXISTS `cms_reference_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `file_name` varchar(255) COLLATE utf8_slovak_ci NOT NULL,
  `reference_type` enum('0','1','2') COLLATE utf8_slovak_ci NOT NULL COMMENT '0 - klient, 1 - projekt, 2 - nahlad',
  `position` int(11) DEFAULT NULL,
  `desc_sk` text COLLATE utf8_slovak_ci,
  `desc_en` text COLLATE utf8_slovak_ci,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci AUTO_INCREMENT=3431 ;

--
-- Sťahujem dáta pre tabuľku `cms_reference_files`
--

INSERT INTO `cms_reference_files` (`id`, `reference_alias`, `file_name`, `reference_type`, `position`, `desc_sk`, `desc_en`, `date_modified`) VALUES
(1573, 'lawyers-on-your-side', 'lawyers-on-your-side_src_3.jpg', '2', NULL, '', NULL, '2013-11-20 12:02:34'),
(1424, 'lawyers-on-your-side', 'lawyers-on-your-side_src_3.jpg', '0', 0, '', '', '2013-11-20 11:45:37'),
(1423, 'lawyers-on-your-side', 'lawyers-on-your-side_src_2.jpg', '0', 0, '', '', '2013-11-20 11:45:37'),
(1655, 'slovak-bar-association', 'slovak-bar-association_src_1.jpg', '0', 0, '', '', '2013-11-21 15:02:19'),
(1642, 'slovak-bar-association', 'slovak-bar-association_src_1.jpg', '2', NULL, '', NULL, '2013-11-20 12:23:22'),
(1643, 'slovak-bar-association', 'file_0.jpg', '1', 0, '', '', '2013-11-20 12:23:22'),
(1328, 'projekt-sk', 'file_1.jpg', '1', 2, 'po', '', '2013-11-14 23:44:48'),
(960, 'klient-en', 'klient-en_src_3.jpg', '0', 30, 'popis sk', 'popis en', '2013-11-13 15:25:13'),
(1327, 'projekt-sk', 'file_0.mp4', '1', 1, 'video sk', 'vide en', '2013-11-14 23:44:48'),
(958, 'klient-en', 'klient-en_src_1.jpg', '0', 10, 'popis sk<br>popis sk', 'popis en', '2013-11-13 15:25:13'),
(959, 'klient-en', 'klient-en_src_2.jpg', '0', 20, 'popis sk', 'popis en', '2013-11-13 15:25:13'),
(1316, 'kazda-sme-original', 'file_0.mp4', '1', 1, '', '', '2013-11-14 22:53:33'),
(2599, 'noc-vyskumnikov-2009', 'file_0.jpg', '1', 1, '', '', '2013-12-11 12:05:51'),
(2601, 'noc-vyskumnikov-2011', 'file_0.jpg', '1', 1, '', '', '2013-12-11 12:06:02'),
(3303, 'noc-vyskumnikov-2012', 'noc-vyskumnikov-2012_src_1.jpg', '2', NULL, '', NULL, '2013-12-11 16:50:16'),
(3346, 'communication-visuals', 'file_2.jpg', '1', 7, '', '', '2013-12-11 17:12:42'),
(2843, 'noc-vyskumnikov-2013', 'file_12.jpg', '1', 0, '', '', '2013-12-11 12:28:13'),
(2842, 'noc-vyskumnikov-2013', 'file_11.jpg', '1', 10, '', '', '2013-12-11 12:28:13'),
(2841, 'noc-vyskumnikov-2013', 'file_10.mp4', '1', 9, '', '', '2013-12-11 12:28:13'),
(3308, 'noc-vyskumnikov-2012', 'file_4.jpg', '1', 6, '', '', '2013-12-11 16:50:16'),
(3307, 'noc-vyskumnikov-2012', 'file_3.jpg', '1', 2, '', '', '2013-12-11 16:50:16'),
(3306, 'noc-vyskumnikov-2012', 'file_2.jpg', '1', 1, '', '', '2013-12-11 16:50:16'),
(3305, 'noc-vyskumnikov-2012', 'file_1.mp4', '1', 7, '', '', '2013-12-11 16:50:16'),
(1622, 'newsletter-scope', 'file_0.jpg', '1', 9, '', '', '2013-11-20 12:20:15'),
(1623, 'newsletter-scope', 'file_1.mp4', '1', 2, 'popis video', 'popis video en', '2013-11-20 12:20:15'),
(1624, 'newsletter-scope', 'file_2.mp3', '1', 1, '', '', '2013-11-20 12:20:15'),
(1422, 'lawyers-on-your-side', 'lawyers-on-your-side_src_1.jpg', '0', 0, '', '', '2013-11-20 11:45:37'),
(1572, 'lawyers-on-your-side', 'lawyers-on-your-side_src_2.jpg', '2', NULL, '', NULL, '2013-11-20 12:02:34'),
(1571, 'lawyers-on-your-side', 'lawyers-on-your-side_src_1.jpg', '2', NULL, '', NULL, '2013-11-20 12:02:34'),
(1577, 'lawyers-on-your-side', 'file_3.mp3', '1', 3, '', '', '2013-11-20 12:02:34'),
(1576, 'lawyers-on-your-side', 'file_2.jpg', '1', 2, '', '', '2013-11-20 12:02:34'),
(1575, 'lawyers-on-your-side', 'file_1.jpg', '1', 6, '', '', '2013-11-20 12:02:34'),
(1574, 'lawyers-on-your-side', 'file_0.jpg', '1', 1, '', '', '2013-11-20 12:02:34'),
(1600, 'wmas-offer', 'file_0.mp4', '1', 1, '', '', '2013-11-20 12:12:16'),
(3310, 'bayer', 'bayer_src_1.jpg', '0', 4, '', '', '2013-12-11 16:50:59'),
(3318, 'elgas', 'elgas_src_2.jpg', '0', 1, '', '', '2013-12-11 16:51:31'),
(3338, 'sovva', 'sovva_src_5.jpg', '0', 16, '', '', '2013-12-11 16:52:56'),
(1738, 're-max-slovensko', 're-max-slovensko_src_1.jpg', '0', 3, '', '', '2013-12-05 11:31:53'),
(3326, 'methods-planning', 'methods-planning_src_1.jpg', '0', 5, '', '', '2013-12-11 16:52:18'),
(3337, 'sovva', 'sovva_src_4.jpg', '0', 15, '', '', '2013-12-11 16:52:56'),
(3328, 'nike', 'nike_src_1.jpg', '0', 7, '', '', '2013-12-11 16:52:36'),
(3324, 'medinea-beauty-clinic', 'medinea-beauty-clinic_src_3.jpg', '0', 12, '', '', '2013-12-11 16:51:56'),
(3323, 'medinea-beauty-clinic', 'medinea-beauty-clinic_src_2.jpg', '0', 9, '', '', '2013-12-11 16:51:56'),
(3322, 'medinea-beauty-clinic', 'medinea-beauty-clinic_src_1.jpg', '0', 8, '', '', '2013-12-11 16:51:56'),
(1720, 'belupo', 'belupo_src_2.jpg', '0', 11, '', '', '2013-12-05 11:28:32'),
(1719, 'belupo', 'belupo_src_1.jpg', '0', 10, '', '', '2013-12-05 11:28:32'),
(3317, 'elgas', 'elgas_src_1.jpg', '0', 14, '', '', '2013-12-11 16:51:31'),
(3336, 'sovva', 'sovva_src_3.jpg', '0', 13, '', '', '2013-12-11 16:52:56'),
(3335, 'sovva', 'sovva_src_2.jpg', '0', 6, '', '', '2013-12-11 16:52:56'),
(1742, 'slovensky-narodny-podnik', 'slovensky-narodny-podnik_src_1.jpg', '0', 15, '', '', '2013-12-05 11:33:45'),
(3334, 'sovva', 'sovva_src_1.jpg', '0', 2, '', '', '2013-12-11 16:52:56'),
(3350, 'we-all-are-original', 'file_1.mp4', '1', 4, '', '', '2013-12-11 17:16:03'),
(3349, 'we-all-are-original', 'file_0.jpg', '1', 1, '', '', '2013-12-11 17:16:03'),
(3314, 'belupo', 'belupo_src_2.jpg', '2', NULL, '', NULL, '2013-12-11 16:51:13'),
(3313, 'belupo', 'belupo_src_1.jpg', '2', NULL, '', NULL, '2013-12-11 16:51:13'),
(2670, 'bespoke-energy', 'bespoke-energy_src_1.jpg', '2', NULL, '', NULL, '2013-12-11 12:08:41'),
(1753, 'bayer', 'bayer_src_1.jpg', '2', NULL, NULL, NULL, '2013-12-05 12:25:56'),
(1754, 'bayer', 'file_0.jpg', '1', NULL, NULL, NULL, '2013-12-05 12:25:56'),
(2659, '150-years-anniversary', 'file_2.JPG', '1', 7, '', '', '2013-12-11 12:07:54'),
(2658, '150-years-anniversary', 'file_1.JPG', '1', 4, '', '', '2013-12-11 12:07:54'),
(2657, '150-years-anniversary', 'file_0.JPG', '1', 1, '', '', '2013-12-11 12:07:54'),
(2727, 'corporate-identity', 'file_3.jpg', '1', 10, '', '', '2013-12-11 12:10:26'),
(2726, 'corporate-identity', 'file_2.jpg', '1', 7, '', '', '2013-12-11 12:10:26'),
(2725, 'corporate-identity', 'file_1.jpg', '1', 4, '', '', '2013-12-11 12:10:26'),
(2685, 'lady-carcare-2', 'file_3.jpg', '1', 10, '', '', '2013-12-11 12:08:59'),
(2684, 'lady-carcare-2', 'file_2.jpg', '1', 7, '', '', '2013-12-11 12:08:59'),
(2683, 'lady-carcare-2', 'file_1.jpg', '1', 4, '', '', '2013-12-11 12:08:59'),
(2682, 'lady-carcare-2', 'file_0.jpg', '1', 1, '', '', '2013-12-11 12:08:59'),
(2992, 'floceta', 'file_2.jpg', '1', 7, '', '', '2013-12-11 16:02:06'),
(2991, 'floceta', 'file_1.jpg', '1', 4, '', '', '2013-12-11 16:02:06'),
(2677, 'bespoke-energy', 'file_6.mp4', '1', 7, '', '', '2013-12-11 12:08:41'),
(2676, 'bespoke-energy', 'file_5.mp4', '1', 4, '', '', '2013-12-11 12:08:41'),
(2689, 'become-a-godness', 'file_1.jpg', '1', 4, '', '', '2013-12-11 12:09:13'),
(2688, 'become-a-godness', 'file_0.jpg', '1', 1, '', '', '2013-12-11 12:09:13'),
(3024, 'come-back-as-a-godness', 'file_4.mp4', '1', 3, '', '', '2013-12-11 16:17:42'),
(3023, 'come-back-as-a-godness', 'file_3.jpg', '1', 2, '', '', '2013-12-11 16:17:42'),
(3128, 'conference', 'file_4.jpg', '1', 2, '', '', '2013-12-11 16:28:57'),
(3127, 'conference', 'file_3.jpg', '1', 5, '', '', '2013-12-11 16:28:57'),
(3126, 'conference', 'file_2.jpg', '1', 7, '', '', '2013-12-11 16:28:57'),
(3125, 'conference', 'file_1.jpg', '1', 4, '', '', '2013-12-11 16:28:57'),
(1823, 'advocate-on-your-side', 'file_3.jpg', '1', 8, '', '', '2013-12-06 15:00:44'),
(1822, 'advocate-on-your-side', 'file_2.jpg', '1', 5, '', '', '2013-12-06 15:00:44'),
(1821, 'advocate-on-your-side', 'file_1.jpg', '1', 3, '', '', '2013-12-06 15:00:44'),
(1824, 'advocate-on-your-side', 'file_0.mp4', '1', 1, '', '', '2013-12-06 15:00:44'),
(3430, 'advocates-on-your-side', 'file_4.mp3', '1', 6, '', '', '2013-12-11 17:54:07'),
(3429, 'advocates-on-your-side', 'file_3.jpg', '1', 7, '', '', '2013-12-11 17:54:07'),
(3428, 'advocates-on-your-side', 'file_2.jpg', '1', 3, '', '', '2013-12-11 17:54:07'),
(3427, 'advocates-on-your-side', 'file_1.jpg', '1', 2, '', '', '2013-12-11 17:54:07'),
(2912, 'image-communication', 'file_3.jpg', '1', 2, '', '', '2013-12-11 15:51:25'),
(2911, 'image-communication', 'file_2.jpg', '1', 5, '', '', '2013-12-11 15:51:25'),
(2840, 'noc-vyskumnikov-2013', 'file_9.mp4', '1', 12, '', '', '2013-12-11 12:28:13'),
(2839, 'noc-vyskumnikov-2013', 'file_8.mp4', '1', 11, '', '', '2013-12-11 12:28:13'),
(2838, 'noc-vyskumnikov-2013', 'file_7.mp4', '1', 8, '', '', '2013-12-11 12:28:13'),
(2724, 'corporate-identity', 'file_0.jpg', '1', 1, '', '', '2013-12-11 12:10:26'),
(2837, 'noc-vyskumnikov-2013', 'file_6.mp4', '1', 7, '', '', '2013-12-11 12:28:13'),
(2836, 'noc-vyskumnikov-2013', 'file_5.mp4', '1', 4, '', '', '2013-12-11 12:28:13'),
(2835, 'noc-vyskumnikov-2013', 'file_4.jpg', '1', 3, '', '', '2013-12-11 12:28:13'),
(2834, 'noc-vyskumnikov-2013', 'file_1.jpg', '1', 1, '', '', '2013-12-11 12:28:13'),
(2661, 'logotype', 'file_0.jpg', '1', 1, '', '', '2013-12-11 12:08:29'),
(3124, 'conference', 'file_0.jpg', '1', 1, '', '', '2013-12-11 16:28:57'),
(3022, 'come-back-as-a-godness', 'file_2.jpg', '1', 6, '', '', '2013-12-11 16:17:42'),
(2351, 'cinema-city-slovensko', 'cinema-city-slovensko_src_1.jpg', '0', 18, '', '', '2013-12-10 18:37:26'),
(2986, 'the-night-of-the-adeaters', 'file_1.mp4', '1', 4, '', '', '2013-12-11 16:00:09'),
(3021, 'come-back-as-a-godness', 'file_1.jpg', '1', 7, '', '', '2013-12-11 16:17:42'),
(3304, 'noc-vyskumnikov-2012', 'file_0.mp4', '1', 3, '', '', '2013-12-11 16:50:16'),
(2675, 'bespoke-energy', 'file_4.mp4', '1', 3, '', '', '2013-12-11 12:08:41'),
(2674, 'bespoke-energy', 'file_3.jpg', '1', 5, '', '', '2013-12-11 12:08:41'),
(2477, 'club-nike', 'file_0.jpg', '1', 1, '', '', '2013-12-11 11:49:35'),
(2673, 'bespoke-energy', 'file_2.jpg', '1', 2, '', '', '2013-12-11 12:08:41'),
(2672, 'bespoke-energy', 'file_1.jpg', '1', 6, '', '', '2013-12-11 12:08:41'),
(2671, 'bespoke-energy', 'file_0.jpg', '1', 1, '', '', '2013-12-11 12:08:41'),
(3345, 'communication-visuals', 'file_1.jpg', '1', 4, '', '', '2013-12-11 17:12:42'),
(3410, 'researchers-night-2013', 'file_9.jpg', '1', 10, '', '', '2013-12-11 17:41:07'),
(3411, 'researchers-night-2013', 'file_10.mp4', '1', 11, '', '', '2013-12-11 17:41:07'),
(3413, 'researchers-night-2013', 'file_12.jpg', '1', 13, '', '', '2013-12-11 17:41:07'),
(3412, 'researchers-night-2013', 'file_11.mp4', '1', 12, '', '', '2013-12-11 17:41:07'),
(2910, 'image-communication', 'file_1.mp4', '1', 4, '', '', '2013-12-11 15:51:25'),
(2909, 'image-communication', 'file_0.jpg', '1', 1, '', '', '2013-12-11 15:51:25'),
(3409, 'researchers-night-2013', 'file_8.jpg', '1', 9, '', '', '2013-12-11 17:41:07'),
(3408, 'researchers-night-2013', 'file_7.mp4', '1', 8, '', '', '2013-12-11 17:41:07'),
(3407, 'researchers-night-2013', 'file_6.mp4', '1', 7, '', '', '2013-12-11 17:41:07'),
(3406, 'researchers-night-2013', 'file_5.jpg', '1', 6, '', '', '2013-12-11 17:41:07'),
(3405, 'researchers-night-2013', 'file_4.jpg', '1', 5, '', '', '2013-12-11 17:41:07'),
(3404, 'researchers-night-2013', 'file_3.mp4', '1', 4, '', '', '2013-12-11 17:41:07'),
(3403, 'researchers-night-2013', 'file_2.mp4', '1', 3, '', '', '2013-12-11 17:41:07'),
(3402, 'researchers-night-2013', 'file_1.jpg', '1', 2, '', '', '2013-12-11 17:41:07'),
(2985, 'the-night-of-the-adeaters', 'file_0.jpg', '1', 1, '', '', '2013-12-11 16:00:09'),
(2990, 'floceta', 'file_0.jpg', '1', 1, '', '', '2013-12-11 16:02:06'),
(2993, 'nekadyl', 'file_0.jpg', '1', 1, '', '', '2013-12-11 16:04:56'),
(2994, 'nekadyl', 'file_1.jpg', '1', 4, '', '', '2013-12-11 16:04:56'),
(3020, 'come-back-as-a-godness', 'file_0.jpg', '1', 1, '', '', '2013-12-11 16:17:42'),
(3401, 'researchers-night-2013', 'file_0.jpg', '1', 1, '', '', '2013-12-11 17:41:07'),
(3344, 'communication-visuals', 'file_0.jpg', '1', 1, '', '', '2013-12-11 17:12:42'),
(3420, 'gastronorm', 'file_2.mp3', '1', 7, '', '', '2013-12-11 17:42:27'),
(3419, 'gastronorm', 'file_1.jpg', '1', 4, 'rebranding balenia produktu', '', '2013-12-11 17:42:27'),
(3414, 'researchers-night-2013', 'file_13.jpg', '1', 14, '', '', '2013-12-11 17:41:07'),
(3418, 'gastronorm', 'file_0.jpg', '1', 1, '', '', '2013-12-11 17:42:27'),
(3426, 'advocates-on-your-side', 'file_0.mp4', '1', 1, '', '', '2013-12-11 17:54:07');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_routes`
--

CREATE TABLE IF NOT EXISTS `cms_routes` (
  `term` varchar(255) NOT NULL,
  `key1` varchar(50) NOT NULL,
  `key2` varchar(50) DEFAULT NULL,
  `key3` varchar(50) DEFAULT NULL,
  `data` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`term`,`key1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_routes`
--

INSERT INTO `cms_routes` (`term`, `key1`, `key2`, `key3`, `data`, `created`) VALUES
('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:97:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2013-11-06 21:22:13'),
('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:70:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2013-11-06 21:22:13'),
('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:55:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2013-11-06 21:22:13'),
('/[nN]ews\\/(?P<articleid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:5:{s:4:"term";s:33:"/[nN]ews\\/(?P<articleid>[0-9]+)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;s:8:"defaults";a:1:{s:8:"returnid";i:-1;}}s:18:"\0CmsRoute\0_results";N;}', '2013-11-06 21:22:13');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_siteprefs`
--

CREATE TABLE IF NOT EXISTS `cms_siteprefs` (
  `sitepref_name` varchar(255) NOT NULL,
  `sitepref_value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sitepref_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_siteprefs`
--

INSERT INTO `cms_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES
('enablesitedownmessage', '0', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('sitedownmessage', '<p>Site is currently down for maintenance.</p>', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('sitedownmessagetemplate', '-1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('useadvancedcss', '1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('metadata', '<meta charset="utf-8">\r\n<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">\r\n<meta name="description" content="Sme mladá ale dynamicky sa rozvíjajúca agentúra poskytujúca full servis v oblasti reklamy, marketingu a médií">\r\n\r\n	<meta name="viewport" initial-scale=1.0 />\r\n        <link rel="stylesheet" href="css/bootstrap.css">\r\n        <link rel="stylesheet" href="css/idangerous.swiper.css">\r\n        <link rel="stylesheet" href="css/swipebox.css">\r\n        <link rel="stylesheet" href="css/main.css">\r\n<!--[if IE]>\r\n	<link rel="stylesheet" type="text/css" href="css/ie.css" />\r\n<![endif]-->\r\n\r\n<link rel="apple-touch-icon-precomposed" \r\n    sizes="144x144" href="apple-touch-icon-144-precomposed.png">\r\n    <link rel="apple-touch-icon-precomposed" \r\n    sizes="114x114" href="apple-touch-icon-114-precomposed.png">\r\n    <link rel="apple-touch-icon-precomposed" \r\n    sizes="72x72" href="apple-touch-icon-72-precomposed.png">\r\n    <link rel="apple-touch-icon-precomposed" \r\n    href="apple-touch-icon-57-precomposed.png">\r\n    <link rel="shortcut icon" href="favicon.ico">\r\n\r\n\r\n\r\n<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>       \r\n<script src="js/vendor/bootstrap.min.js"></script>\r\n<script src="js/vendor/idangerous.swiper-2.3.js"></script> \r\n<script src="js/vendor/idangerous.swiper.scrollbar.js"></script> \r\n<script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>\r\n<script src="js/vendor/jquery.swipebox.min.js"></script>\r\n<script src="js/vendor/jquery.touchSwipe.min.js"></script>\r\n<script type="text/javascript" src="js/vendor/jquery.cookie.js"></script>\r\n<script src="js/vendor/jquery.imageready.js"></script>\r\n<link href="css/video-js.css" rel="stylesheet" type="text/css">\r\n<script src="js/vendor/video.js"></script>\r\n<script>videojs.options.flash.swf = "js/vendor/video-js.swf";</script>\r\n<!--[if lt IE 8]>\r\n<script src="js/vendor/respond.min.js"></script>\r\n<![endif]-->', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('xmlmodulerepository', '', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('logintheme', 'OneEleven', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('global_umask', '022', NULL, NULL),
('frontendlang', 'sk_SK', NULL, NULL),
('frontendwysiwyg', '-1', NULL, NULL),
('nogcbwysiwyg', '0', NULL, NULL),
('urlcheckversion', '', NULL, NULL),
('defaultdateformat', '', NULL, NULL),
('css_max_age', '0', NULL, NULL),
('backendwysiwyg', 'MicroTiny', NULL, NULL),
('disablesafemodewarning', '0', NULL, NULL),
('allowparamcheckwarnings', '0', NULL, NULL),
('enablenotifications', '1', NULL, NULL),
('page_active', '1', NULL, NULL),
('page_showinmenu', '1', NULL, NULL),
('page_cachable', '1', NULL, NULL),
('page_metadata', '{* Add code here that should appear in the metadata section of all new pages *}', NULL, NULL),
('defaultpagecontent', '<!-- Add code here that should appear in the content block of all new pages -->', NULL, NULL),
('default_parent_page', '-1', NULL, NULL),
('additional_editors', '', NULL, NULL),
('page_searchable', '1', NULL, NULL),
('page_extra1', '', NULL, NULL),
('page_extra2', '', NULL, NULL),
('page_extra3', '', NULL, NULL),
('sitedownexcludes', '', NULL, NULL),
('clear_vc_cache', '0', NULL, NULL),
('sitename', 'gooseberry', NULL, NULL),
('sitemask', 'D@$HsZTb3iNSPzal', NULL, NULL),
('CMSMailer_mapi_pref_mailer', 'smtp', NULL, NULL),
('CMSMailer_mapi_pref_host', 'localhost', NULL, NULL),
('CMSMailer_mapi_pref_port', '25', NULL, NULL),
('CMSMailer_mapi_pref_from', 'root@localhost', NULL, NULL),
('CMSMailer_mapi_pref_fromuser', 'CMS Administrator', NULL, NULL),
('CMSMailer_mapi_pref_sendmail', '/usr/sbin/sendmail', NULL, NULL),
('CMSMailer_mapi_pref_timeout', '1000', NULL, NULL),
('CMSMailer_mapi_pref_smtpauth', '0', NULL, NULL),
('CMSMailer_mapi_pref_username', '', NULL, NULL),
('CMSMailer_mapi_pref_password', '', NULL, NULL),
('CMSMailer_mapi_pref_secure', '', NULL, NULL),
('CMSPrinting_mapi_pref_overridestyle', '/*\nYou can put css stuff here, which will be inserted in the header after calling the cmsms-stylesheets.\nProvided you don''t remove the {$overridestylesheet} in PrintTemplate, of course.\n\nAny suggestions for default content in this stylesheet?\n\nHave fun!\n*/', NULL, NULL),
('FileManager_mapi_pref_iconsize', '32px', NULL, NULL),
('FileManager_mapi_pref_uploadboxes', '5', NULL, NULL),
('FileManager_mapi_pref_showhiddenfiles', '0', NULL, NULL),
('ModuleManager_mapi_pref_module_repository', 'http://www.cmsmadesimple.org/ModuleRepository/request/v2/', NULL, NULL),
('News_mapi_pref_default_summary_template_contents', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you''re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don''t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsSummaryField">\n        {if $field->type == ''file''}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', NULL, NULL),
('News_mapi_pref_current_summary_template', 'Sample', NULL, NULL),
('News_mapi_pref_default_detail_template_contents', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n     displayvalue (mixed) = A displayable value for the field.  This is particularly useful in the case of dropdown fields.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=''canonical'' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != ''''} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsDetailField">\n        {if $field->type == ''file''}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', NULL, NULL),
('News_mapi_pref_current_detail_template', 'Sample', NULL, NULL),
('News_mapi_pref_default_form_template_contents', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=''onefield''}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', NULL, NULL),
('News_mapi_pref_current_form_template', 'Sample', NULL, NULL),
('News_mapi_pref_default_browsecat_template_contents', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, NULL),
('News_mapi_pref_current_browsecat_template', 'Sample', NULL, NULL),
('News_mapi_pref_email_subject', 'Bola pridan&aacute; novinka', NULL, NULL),
('News_mapi_pref_allowed_upload_types', 'gif,png,jpeg,jpg', NULL, NULL),
('News_mapi_pref_auto_create_thumbnails', 'gif,png,jpeg,jpg', NULL, NULL),
('Search_mapi_pref_stopwords', 'Ja, ja, moja, ja, my, na&scaron;e, na&scaron;e, my, vy, v&aacute;&scaron;, vy, sami, sami, on, on, jeho, s&aacute;m, ona, jej, jej, Sama to jeho, s&aacute;m, oni, je, ich, oni samy, čo, ktor&yacute;, kto, koho, to, že to, ty, ja, je, s&uacute;, bolo, bolo, je, bol, je, že sa musel, ktor&aacute; m&aacute; robiť, rob&iacute;, to, robiť,,,, a, ale, ak je, alebo preto, as, až do doby, zatiaľ čo o, u, o, u, s, o, pred, medzi, do, až v priebehu, pred, po, nad, pod, na, od, hore, dole, in, out, zapnut&yacute;, vypnut&yacute;, nad, pod, znovu, ďalej potom, raz, tu, tam, kedy, kde, prečo, ako, v&scaron;etci, každ&yacute;, ako každ&yacute;, m&aacute;lo, viac, najviac, ostatn&eacute;, niektor&eacute;, ako napr&iacute;klad, nie, ani nie, len, vlastn&eacute;, rovnako tak, ako tiež veľmiUndo edits', NULL, NULL),
('Search_mapi_pref_usestemming', 'false', NULL, NULL),
('Search_mapi_pref_searchtext', 'Enter Search...', NULL, NULL),
('__NOTIFICATIONS__', 'a:1:{i:0;O:8:"stdClass":5:{s:8:"priority";i:1;s:4:"link";s:116:"http://gooseberry_admin.fancystudio.sk/admin/moduleinterface.php?mact=CMSMailer,m1_,defaultadmin,0&amp;_sx_=a2017ef5";s:4:"html";s:425:"Va&scaron;e nastavenia pre e-maily neboli nakonfigurovan&eacute;, čo m&ocirc;že sp&ocirc;sobiť nefunkčnosť posielať e-mailov&eacute; spr&aacute;vy cet web.  Konfigurovať e-maily m&ocirc;žete v <a href="moduleinterface.php?module=CMSMailer">Extensions >> CMSMailer</a>.&nbsp;Kontrolovanie tohto nastavenia je nepravideln&eacute;, v pr&iacute;pade prenastavenia, m&ocirc;že toto upozornenie zmizn&uacute;ť priebežne.";s:4:"name";s:9:"CMSMailer";s:12:"friendlyname";s:15:"CMSMailer Modul";}}', NULL, NULL),
('PruneAdminlog_lastexecute', '1386790028', NULL, NULL),
('pseudocron_lastrun', '1386795167', NULL, NULL),
('cms_is_uptodate', '1', NULL, NULL),
('lastcmsversioncheck', '1386716395', NULL, NULL),
('Cataloger_mapi_pref_item_image_count', '2', NULL, NULL),
('Cataloger_mapi_pref_item_file_count', '15', NULL, NULL),
('Cataloger_mapi_pref_item_file_types', 'png,jpg,jpeg,mp4,mp3,PNG,JPG,JPEG,MP4,MP3', NULL, NULL),
('Cataloger_mapi_pref_category_image_count', '1', NULL, NULL),
('Cataloger_mapi_pref_item_image_size_hero', '400', NULL, NULL),
('Cataloger_mapi_pref_item_image_size_thumbnail', '70', NULL, NULL),
('Cataloger_mapi_pref_category_image_size_hero', '400', NULL, NULL),
('Cataloger_mapi_pref_category_image_size_thumbnail', '90', NULL, NULL),
('Cataloger_mapi_pref_item_image_size_category', '70', NULL, NULL),
('Cataloger_mapi_pref_item_image_size_catalog', '100', NULL, NULL),
('Cataloger_mapi_pref_force_aspect_ratio', '0', NULL, NULL),
('Cataloger_mapi_pref_image_aspect_ratio', '4:3', NULL, NULL),
('Cataloger_mapi_pref_category_recurse', 'mixed_one', NULL, NULL),
('Cataloger_mapi_pref_category_sort_order', 'natural', NULL, NULL),
('Cataloger_mapi_pref_category_items_per_page', '10', NULL, NULL),
('Cataloger_mapi_pref_show_extant', '1', NULL, NULL),
('Cataloger_mapi_pref_flush_cats', '0', NULL, NULL),
('Cataloger_mapi_pref_image_upload_path', '/images/catalog_src', NULL, NULL),
('Cataloger_mapi_pref_file_upload_path', '/catalogerfiles', NULL, NULL),
('Cataloger_mapi_pref_image_proc_path', '/images/catalog', NULL, NULL),
('Cataloger_mapi_pref_show_missing', '1', NULL, NULL),
('__listcontent_timelock__', '1386779794', NULL, NULL),
('thumbnail_width', '96', NULL, NULL),
('thumbnail_height', '96', NULL, NULL),
('searchmodule', 'Search', NULL, NULL),
('TinyMCE_mapi_pref_skin', 'default', NULL, NULL),
('TinyMCE_mapi_pref_source_formatting', '1', NULL, NULL),
('TinyMCE_mapi_pref_editor_width', '800', NULL, NULL),
('TinyMCE_mapi_pref_editor_width_auto', '1', NULL, NULL),
('TinyMCE_mapi_pref_editor_width_unit', 'px', NULL, NULL),
('TinyMCE_mapi_pref_editor_height', '400', NULL, NULL),
('TinyMCE_mapi_pref_editor_height_auto', '1', NULL, NULL),
('TinyMCE_mapi_pref_editor_height_unit', 'px', NULL, NULL),
('TinyMCE_mapi_pref_show_path', '1', NULL, NULL),
('TinyMCE_mapi_pref_striptags', 'true', NULL, NULL),
('TinyMCE_mapi_pref_imagebrowserstyle', 'both', NULL, NULL),
('TinyMCE_mapi_pref_allowscaling', '0', NULL, NULL),
('TinyMCE_mapi_pref_scalingwidth', '800', NULL, NULL),
('TinyMCE_mapi_pref_scalingheight', '600', NULL, NULL),
('TinyMCE_mapi_pref_filepickerstyle', 'both', NULL, NULL),
('TinyMCE_mapi_pref_fpwidth', '700', NULL, NULL),
('TinyMCE_mapi_pref_fpheight', '500', NULL, NULL),
('TinyMCE_mapi_pref_toolbar1', 'cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect', NULL, NULL),
('TinyMCE_mapi_pref_toolbar2', 'bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,customdropdown,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help', NULL, NULL),
('TinyMCE_mapi_pref_toolbar3', '', NULL, NULL),
('TinyMCE_mapi_pref_allow_tables', '0', NULL, NULL),
('TinyMCE_mapi_pref_allowupload', '0', NULL, NULL),
('TinyMCE_mapi_pref_showtogglebutton', '1', NULL, NULL),
('TinyMCE_mapi_pref_advanced_toolbar1', 'cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect', NULL, NULL),
('TinyMCE_mapi_pref_advanced_toolbar2', 'bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,customdropdown,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help', NULL, NULL),
('TinyMCE_mapi_pref_advanced_toolbar3', '', NULL, NULL),
('TinyMCE_mapi_pref_advanced_allow_tables', '0', NULL, NULL),
('TinyMCE_mapi_pref_advanced_allowupload', '0', NULL, NULL),
('TinyMCE_mapi_pref_advanced_showtogglebutton', '1', NULL, NULL),
('TinyMCE_mapi_pref_front_toolbar1', 'cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect', NULL, NULL),
('TinyMCE_mapi_pref_front_toolbar2', 'bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help', NULL, NULL),
('TinyMCE_mapi_pref_front_toolbar3', '', NULL, NULL),
('TinyMCE_mapi_pref_front_allow_tables', '0', NULL, NULL),
('TinyMCE_mapi_pref_front_showtogglebutton', '1', NULL, NULL),
('TinyMCE_mapi_pref_plugins', 'advhr,advimage,advlink,advlist,contextmenu,fullpage,inlinepopups,legacyoutput,lists,noneditable,pagebreak,paste,spellchecker,style,visualblocks,xhtmlxtras', NULL, NULL),
('TinyMCE_mapi_pref_newlinestyle', 'p', NULL, NULL),
('TinyMCE_mapi_pref_usehtml5scheme', '0', NULL, NULL),
('TinyMCE_mapi_pref_usecompression', '0', NULL, NULL),
('TinyMCE_mapi_pref_entityencoding', 'raw', NULL, NULL),
('TinyMCE_mapi_pref_bodycss', '', NULL, NULL),
('TinyMCE_mapi_pref_forcedrootblock', 'false', NULL, NULL),
('TinyMCE_mapi_pref_customdropdown', 'Insert CMS version info|{cms_version} {cms_versionname}\n---|---\nInsert Smarty {literal} around selection|{literal}|{/literal}', NULL, NULL),
('TinyMCE_mapi_pref_extraconfig', '', NULL, NULL),
('TinyMCE_mapi_pref_forcecleanpaste', '1', NULL, NULL),
('TinyMCE_mapi_pref_startenabled', '1', NULL, NULL),
('TinyMCE_mapi_pref_loadcmslinker', '1', NULL, NULL),
('TinyMCE_mapi_pref_cmslinkerstyle', 'selflink', NULL, NULL),
('TinyMCE_mapi_pref_cmslinkeradds', '', NULL, NULL),
('TinyMCE_mapi_pref_usestaticconfig', '0', NULL, NULL),
('TinyMCE_mapi_pref_ignoremodifyfiles', '0', NULL, NULL),
('TinyMCE_mapi_pref_dropdownblockformats', 'h1,h2,h3,h4,h5,h6,blockquote,dt,dd,code,samp', NULL, NULL),
('TinyMCE_mapi_pref_module_plugins', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_templates`
--

CREATE TABLE IF NOT EXISTS `cms_templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `template_content` text,
  `stylesheet` text,
  `encoding` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `default_template` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `cms_index_templates_by_template_name` (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_templates`
--

INSERT INTO `cms_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES
(24, 'main_template', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>{sitename} - {title}</title>\r\n{metadata}\r\n</head>\r\n<body>\r\n<!--[if lt IE 7]>\r\n<p class="chromeframe">Používate <strong>zastaralý</strong> prehliadač. Prosím <a href="http://browsehappy.com/">aktualizujte Váš prehliadač</a> alebo <a href="http://www.google.com/chromeframe/?redirect=true">aktivujte Google frame</a> pre bezproblémové prehliadanie na súčasnom prehliadači</p>\r\n<![endif]-->\r\n\r\n<div class="logo-wrapper"><img src="/img/logo.png"></img></div><!--logo-->\r\n<div class="body-wrapper">\r\n<div class="main-content-wrapper">\r\n	<div class="content-top-bar">\r\n		<img src="/img/gooseberry-logo-sm.png">\r\n	</div><!--content-top-bar-->\r\n		<div class="bx-prev"><span class="prev-arrow"></span></div>\r\n		<div class="bx-next"><span class="next-arrow"></span></div>{content}{js_inicializacia} </div>\r\n\r\n<!--main-content-wrapper-->\r\n<div class="bottom-menu-wrapper">\r\n<div class="bottom-menu">\r\n{hlavne_menu}\r\n	<ul class="nav nav-pills lang-switch">\r\n		<li class="langClass skLang active"><a href="#">SK</a></li>\r\n		<li class="divider">|</li>\r\n		<li class="langClass enLang "><a href="#">EN</a></li>\r\n	</ul>\r\n</div><!--end-bottom-menu-->\r\n\r\n\r\n\r\n</div><!--bottom-menu-wrapper-->\r\n</div><!-- body wrapper-->\r\n\r\n{content block=obsah_en label="Obsah EN"}\r\n\r\n</body>\r\n</html>', '', '', 1, 1, '2013-11-06 22:06:31', '2013-12-01 22:45:34');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_templates_seq`
--

CREATE TABLE IF NOT EXISTS `cms_templates_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_templates_seq`
--

INSERT INTO `cms_templates_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_userplugins`
--

CREATE TABLE IF NOT EXISTS `cms_userplugins` (
  `userplugin_id` int(11) NOT NULL,
  `userplugin_name` varchar(255) DEFAULT NULL,
  `code` text,
  `description` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`userplugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_userplugins`
--

INSERT INTO `cms_userplugins` (`userplugin_id`, `userplugin_name`, `code`, `description`, `create_date`, `modified_date`) VALUES
(1, 'user_agent', '//Code to show the user''s user agent information.\r\necho $_SERVER["HTTP_USER_AGENT"];', 'Code to show the users user agent information', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(2, 'custom_copyright', '//set start to date your site was published\r\n$startCopyRight=''2004'';\r\n\r\n// check if start year is this year\r\nif(date(''Y'') == $startCopyRight){\r\n// it was, just print this year\r\n    echo $startCopyRight;\r\n}else{\r\n// it wasnt, print startyear and this year delimited with a dash\r\n    echo $startCopyRight.''-''. date(''Y'');\r\n}', 'Code to output copyright information', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(3, 'main_content', 'require_once(''lib/hlavny_obsah.php'');', 'hlavny obsah', '2013-11-07 12:44:29', '2013-11-07 12:49:53');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_userplugins_seq`
--

CREATE TABLE IF NOT EXISTS `cms_userplugins_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_userplugins_seq`
--

INSERT INTO `cms_userplugins_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_userprefs`
--

CREATE TABLE IF NOT EXISTS `cms_userprefs` (
  `user_id` int(11) NOT NULL,
  `preference` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`preference`),
  KEY `cms_index_userprefs_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_userprefs`
--

INSERT INTO `cms_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES
(1, 'use_wysiwyg', '1', NULL),
(1, 'default_cms_language', 'sk_SK', NULL),
(1, 'date_format_string', '%x %X', NULL),
(1, 'admintheme', 'OneEleven', NULL),
(1, 'bookmarks', '1', NULL),
(1, 'recent', 'on', NULL),
(1, 'indent', '1', NULL),
(1, 'ajax', '0', NULL),
(1, 'paging', '0', NULL),
(1, 'hide_help_links', '0', NULL),
(1, 'wysiwyg', 'TinyMCE', NULL),
(1, 'collapse', '0=1.87=1.59=1.92=1.90=1.81=1.96=1.', NULL),
(2, 'wysiwyg', 'TinyMCE', NULL),
(2, 'default_cms_language', 'sk_SK', NULL),
(2, 'admintheme', 'OneEleven', NULL),
(2, 'bookmarks', '1', NULL),
(2, 'recent', 'on', NULL),
(2, 'collapse', '59=1.0=1.126=1.98=1.100=1.96=1.95=1.94=1.101=1.128=1.106=1.97=1.115=1.123=1.134=1.136=1.', NULL),
(1, 'gcb_wysiwyg', '1', NULL),
(1, 'syntaxhighlighter', '-1', NULL),
(1, 'enablenotifications', '1', NULL),
(1, 'default_parent', '-1', NULL),
(1, 'homepage', '', NULL),
(1, 'listtemplates_pagelimit', '20', NULL),
(1, 'liststylesheets_pagelimit', '20', NULL),
(1, 'listgcbs_pagelimit', '20', NULL),
(1, 'ignoredmodules', '', NULL),
(2, 'gcb_wysiwyg', '1', NULL),
(2, 'syntaxhighlighter', '-1', NULL),
(2, 'hide_help_links', '0', NULL),
(2, 'indent', '1', NULL),
(2, 'enablenotifications', '1', NULL),
(2, 'paging', '0', NULL),
(2, 'date_format_string', '%x %X', NULL),
(2, 'default_parent', '-1', NULL),
(2, 'homepage', '', NULL),
(2, 'listtemplates_pagelimit', '20', NULL),
(2, 'liststylesheets_pagelimit', '20', NULL),
(2, 'listgcbs_pagelimit', '20', NULL),
(2, 'ignoredmodules', '', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `admin_access` tinyint(4) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_users`
--

INSERT INTO `cms_users` (`user_id`, `username`, `password`, `admin_access`, `first_name`, `last_name`, `email`, `active`, `create_date`, `modified_date`) VALUES
(1, 'fancystudio', '13ef2e8da5cfb4ed424078fda56af804', 1, '', '', '', 1, '2006-07-25 21:22:33', '2013-11-07 12:10:14'),
(2, 'admin', '4f42372e542e3e5697e1486a61356de4', 1, 'Gooseberry', '', '', 1, '2013-11-11 21:58:43', '2013-11-15 23:39:34');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_users_seq`
--

CREATE TABLE IF NOT EXISTS `cms_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_users_seq`
--

INSERT INTO `cms_users_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_user_groups`
--

CREATE TABLE IF NOT EXISTS `cms_user_groups` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_user_groups`
--

INSERT INTO `cms_user_groups` (`group_id`, `user_id`, `create_date`, `modified_date`) VALUES
(1, 1, '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cms_version`
--

CREATE TABLE IF NOT EXISTS `cms_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `cms_version`
--

INSERT INTO `cms_version` (`version`) VALUES
(37);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
