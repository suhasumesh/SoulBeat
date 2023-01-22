-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2017 at 10:12 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `slotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `albums`
--


INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Pathaan', 1, 7, 'assets/images/artwork/1.PathaanPic.jpg'),
(2, 'Chhichhore', 2, 2, 'assets/images/artwork/2.Chhichhore.jpg'),
(3, '3idiots', 3, 2, 'assets/images/artwork/3.3idiots.jpg'),
(4, 'Bangarada Manushya', 4, 9, 'assets/images/artwork/BM.jpg'),
(5, 'Kasturi Nivasa', 4, 9, 'assets/images/artwork/5.KasturiNivasaPic.jpg'),
(6, 'KGF2', 5, 9, 'assets/images/artwork/6.KGF2.jpg'),
(7, 'Kirik Party', 6, 9, 'assets/images/artwork/7.KirikParty.jpg'),
(8, 'War', 1, 6, 'assets/images/artwork/8.War.jpg'),
(9, 'English', 7, 11, 'assets/images/artwork/9.English.jpg'),
(10, 'Kannada', 8, 8, 'assets/images/artwork/10.Kannada.jpg'),
(11, 'Nagarahaavu', 9, 9, 'assets/images/artwork/11.Nagarahaavu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Vishal-Shekhar'),
(2, 'Pritam Chakraborty'),
(3, 'Shantanu-Ajay-Atul'),
(4, 'G.K.Venkatesh'),
(5, 'Ravi Basrur'),
(6, 'B Ajaneesh Loknath'),
(7, 'English'),
(8, 'Kannada'),
(9, 'Vijaya Bhaskar');


-- Pathaan-Jazz
-- 3idiots-Pop
-- Chhichhore-Pop
-- BangaradaManushya-
-- Rock-BackinBlack
-- Pop:ShapeofYou
-- Hip-Hop:Lose your self Rap
-- R&B - belli jin
-- Classical -malaya maruta
-- techno -faded
-- folk : maisuru maillgr
-- Country:country Roads
-- Filmy - 

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `genres`
--


INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'R & B'),
(5, 'Classical'),
(6, 'Techno'),
(7, 'Jazz'),
(8, 'Folk'),
(9, 'Filmy Pop'),
(10, 'Country'),
(11, 'Hybrid');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE IF NOT EXISTS `playlists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE IF NOT EXISTS `playlistSongs` (
`id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE IF NOT EXISTS `Songs` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `Songs`
--


INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Aadisdaatha Besara Moodi', 4, 5, 9, '3:37', 'assets/music/AadisidaathaBesaraMoodi.mp3', 1, 0),
(2, 'Adisinodu Beelisinodu', 4, 5, 9, '3:35', 'assets/music/AadisinoduBeelisinodu.mp3', 2, 0),
(3, 'Aadona Neenu Nannu', 4, 5, 9, '3:33', 'assets/music/AadonaNeenuNaanu.mp3', 3, 0),
(4, 'Agadu Yendu', 4, 4, 9, '4:02', 'assets/music/AagaduYenduKailaagaduYenduBM.mp3', 2, 0),
(5, 'Aaha Mysooru Mallige', 4, 4, 9, '3:29', 'assets/music/AahaMysooruBM.mp3', 3, 0),
(6, 'AallIzzWell', 3, 3, 2, '4:04', 'assets/music/AalIzzWell.mp3', 1, 0),
(7, 'Baare Baare', 9, 11, 9, '3:07', 'assets/music/BaareBaare.mp3', 4, 0),
(8, 'Balla Bangaara', 4, 4, 9, '3:08', 'assets/music/BallaBangaaraBM.mp3', 4, 0),
(9, 'Behti Hawa Sa Tha Woh', 3, 3, 2, '4:03', 'assets/music/BehtiHawaSaThaWoh.mp3', 2, 0),
(10, 'Belageddu', 6, 7, 7, '4:58', 'assets/music/Belageddu.mp3', 1, 0),
(11, 'Besharam Rang', 1, 1, 7, '2:59', 'assets/music/BesharamRangPathaan.mp3', 1, 0),
(12, 'Control ', 2, 2, 2, '3:03', 'assets/music/ControlChhichhore.mp3', 1, 0),
(13, 'Elle Iru Hege Iru', 4, 5, 9, '4:21', 'assets/music/ElleIruHegeIru.mp3', 5, 0),
(14, 'Fikar Not', 2, 2, 2, '3:45', 'assets/music/FikarNotChhichhore.mp3', 2, 0),
(15, 'Gagana Nee', 5, 6, 9, '3:44', 'assets/music/Gagana Nee.mp3', 1, 0),
(16, 'Ghungroo', 1, 8, 6, '2:49', 'assets/music/Ghungroo-War.mp3', 1, 0),
(17, 'Give Me Some Sunshine', 3, 3, 2, '3:50', 'assets/music/GiveMeSomeSunshine.mp3', 3, 0),
(18, 'HaavinaDweshaHanneraduVarusha', 9, 11, 9, '3:43', 'assets/music/HaavinaDweshaHanneraduVarusha.mp3', 1, 0),
(19, 'Hani Hani goodidre', 4, 4, 9, '3:32', 'assets/music/HaniHanigoodreBM.mp3', 5, 0),
(20, 'Hey Who Are You', 6, 7, 7, '4:58', 'assets/music/HeyWhoAreYou.mp3', 2, 0),
(21, 'Jai Jai Shivshankar', 1, 8, 6, '3:42', 'assets/music/JaiJaiShivshankar-War.mp3', 2, 0),
(22, 'Jane Nahin Denge', 3, 3, 2, '3:36', 'assets/music/JaneNahinDenge.mp3', 4, 0),
(23, 'Jhoome Jo Pathaan ', 1, 1, 7, '4:28', 'assets/music/Jhoome_Jo_Pathaan .mp3', 2, 0),
(24, 'Kaagadada Doniyalli', 6, 7, 7, '4:44', 'assets/music/KaagadadaDoniyalli.mp3', 3, 0),
(25, 'Kabirs Theme', 1, 8, 6, '3:26', 'assets/music/KabirsTheme(War).mp3', 3, 0),
(26, 'Kal Ki Hi BaatHai', 2, 2, 2, '4:20', 'assets/music/KalKiHiBaatHai.mp3', 3, 0),
(27, 'Kannada Naadina', 9, 11, 9, '4:07', 'assets/music/KannadaNaadina.mp3', 2, 0),
(28, 'Karpooradha Bombe ', 9, 11, 9, '3:03', 'assets/music/KarpooradhaBombe.mp3', 3, 0),
(29, 'Kathe Heluve', 9, 11, 9, '4:16', 'assets/music/KatheHeluve.mp3', 6, 0),
(30, 'Katheyonda Helide', 6, 7, 7, '3:26', 'assets/music/KatheyondaHelide.mp3', 4, 0),
(31, 'Katheyondu Helide Happy', 6, 7, 7, '2:54', 'assets/music/KatheyonduHelideHappy.mp3', 5, 0),
(32, 'Khairiyat', 2, 2, 2, '4:54', 'assets/music/Khairiyat.mp3', 4, 0),
(33, 'LastBenchuParty', 6, 7, 7, '4:54', 'assets/music/LastBenchuParty.mp3', 6, 0),
(34, 'Mehabooba', 5, 6, 9, '3:54', 'assets/music/Mehabooba.mp3', 2, 0),
(35, 'Nagunagutha Nali', 4, 4, 9, '3:54', 'assets/music/NagunaguthaNaliBM.mp3', 1, 0),
(36, 'NeeBanduNinthaaga', 4, 5, 9, '4:54', 'assets/music/NeeBanduNinthaaga.mp3 ', 5, 0),
(37, 'NeechaSulluSuthoNaalige', 6, 7, 2, '3:54', 'assets/music/NeechaSulluSuthoNaalige.mp3', 2, 0),
(38, 'Neenire Saniha', 6, 7, 7, '3:54', 'assets/music/NeenireSaniha.mp3', 7, 0),
(39, 'OGeleya', 4, 5, 9, '4:54', 'assets/music/OGeleya.mp3', 4, 0),
(40, 'Sangama Sangama', 9, 11, 9, '3:54', 'assets/music/SangamaSangama.mp3', 5, 0),
(41, 'Sulthana', 5, 6, 9, '3:54', 'assets/music/Sulthana.mp3', 3, 0),
(42, 'The Monster', 5, 6, 3, '3:54', 'assets/music/The Monster.mp3', 4, 0),
(43, 'ThirbokiJeevana', 6, 7, 7, '3:54', 'assets/music/ThirbokiJeevana.mp3', 8, 0),
(44, 'Toofan', 5, 6, 9, '4:54', 'assets/music/Toofan.mp3', 5, 0),
(45, 'WarThemeInstrumentalWar', 1, 8, 6, '3:54', 'assets/music/WarThemeInstrumentalWar.mp3', 4, 0),
(46, 'WohDin', 2, 2, 2, '4:54', 'assets/music/WohDin.mp3', 5, 0),
(47, 'Zoobi Doobi', 3, 3, 2, '3:54', 'assets/music/ZoobiDoobi.mp3', 5, 0),
(48, 'Bhagyada Balegara', 8, 10, 8, '3:54', 'assets/music/Bhagyada Balegara.mp3', 1, 0),
(49, 'Your Mind', 7, 9, 2, '4:54', 'assets/music/Paq-Your-Mind.mp3', 1, 0),
(50, 'Malaya Marutha', 8, 10, 8, '3:54', 'assets/music/Malaya Maruthagana.mp3', 2, 0),
(51, 'Billie Jean', 7, 9, 2, '3:54', 'assets/music/Michael_Jackson-Billie_Jean.mp3', 2, 0),
(52, 'Lose Yourself', 7, 9, 3, '4:54', 'assets/music/LoseYourselfEminem.mp3', 3, 0),
(53, 'Back In Black', 7, 9, 1, '3:54', 'assets/music/Back_In_Black.mp3', 4, 0),
(54, 'Take Me Home Country Roads', 7, 9, 10, '4:54', 'assets/music/Take Me Home Country Roads.mp3', 5, 0),
(55, 'Shape Of You', 7, 9, 2, '4:54', 'assets/music/Shape of You.mp3', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;




--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
