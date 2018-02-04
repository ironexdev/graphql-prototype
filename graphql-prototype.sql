-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2018 at 12:28 AM
-- Server version: 5.7.17
-- PHP Version: 7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noskill`
--
CREATE DATABASE IF NOT EXISTS `noskill` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `noskill`;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `published` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180118190251');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `reskill-api`
--
CREATE DATABASE IF NOT EXISTS `reskill-api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `reskill-api`;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `title` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `genre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `title`, `genre`) VALUES
(1, 'World of Warcraft', 1),
(2, 'Age of Empires', 2),
(3, 'Pong', 3),
(4, 'Zork', 4),
(5, 'Space Invaders', 5),
(6, 'Asteroids', 5),
(7, 'Adventure', 6),
(8, 'Pac-Man', 7),
(9, 'Defender', 5),
(10, 'Donkey Kong', 8),
(11, 'Galaga', 5),
(12, 'Joust', 9),
(13, 'Ms. Pac-Man', 7),
(14, 'Pitfall!', 8),
(15, 'Punch-Out!!', 3),
(16, 'Star Wars', 5),
(17, 'Elite', 10),
(18, 'Tetris', 11),
(19, 'Gauntlet', 12),
(20, 'Super Mario Bros.', 8),
(21, 'The Legend of Zelda', 6),
(22, 'Out Run', 13),
(23, 'Contra', 14),
(24, 'Double Dragon', 15),
(25, 'Tecmo Bowl', 3),
(26, 'Mega Man 2', 8),
(27, 'Ninja Gaiden', 8),
(28, 'Super Mario Bros. 3', 8),
(29, 'Prince of Persia', 8),
(30, 'SimCity', 16),
(31, 'The Secret of Monkey Island', 4),
(32, 'Super Mario World', 8),
(33, 'The Legend of Zelda: A Link to the Past', 6),
(34, 'Lemmings', 11),
(35, 'Monkey Island 2: LeChuck\'s Revenge', 4),
(36, 'Sonic the Hedgehog', 8),
(37, 'Street Fighter II', 17),
(38, 'Super Castlevania IV', 8),
(39, 'Mortal Kombat', 17),
(40, 'Sonic the Hedgehog 2', 8),
(41, 'Super Mario Kart', 18),
(42, 'Wolfenstein 3D', 19),
(43, 'Day of the Tentacle', 4),
(44, 'Daytona USA', 13),
(45, 'Doom', 19),
(46, 'Gunstar Heroes', 14),
(47, 'The Legend of Zelda: Link\'s Awakening', 6),
(48, 'Mega Man X', 8),
(49, 'Mortal Kombat II', 17),
(50, 'Myst', 4),
(51, 'NBA Jam', 3),
(52, 'Phantasy Star IV', 20),
(53, 'Sam & Max Hit the Road', 4),
(54, 'Secret of Mana', 12),
(55, 'SimCity 2000', 16),
(56, 'Donkey Kong Country', 8),
(57, 'EarthBound', 20),
(58, 'Final Fantasy VI', 20),
(59, 'Star Wars: TIE Fighter', 10),
(60, 'Super Metroid', 6),
(61, 'UFO: Enemy Unknown', 21),
(62, 'Chrono Trigger', 20),
(63, 'Command & Conquer', 22),
(64, 'Warcraft II: Tides of Darkness', 22),
(65, 'Wipeout', 13),
(66, 'Yoshi\'s Island', 8),
(67, 'Civilization II', 21),
(68, 'Command & Conquer: Red Alert', 22),
(69, 'Nights into Dreams...', 9),
(70, 'Pokémon Red and Blue', 20),
(71, 'Quake', 19),
(72, 'Resident Evil', 23),
(73, 'Super Mario 64', 8),
(74, 'Super Mario RPG', 20),
(75, 'Tomb Raider', 6),
(76, 'Castlevania: Symphony of the Night', 6),
(77, 'Fallout', 20),
(78, 'Final Fantasy Tactics', 24),
(79, 'Final Fantasy VII', 20),
(80, 'GoldenEye 007', 19),
(81, 'Gran Turismo', 13),
(82, 'Quake II', 19),
(83, 'Star Fox 64', 5),
(84, 'Star Wars Jedi Knight: Dark Forces II', 19),
(85, 'Tekken 3', 17),
(86, 'Ultima Online', 1),
(87, 'Grim Fandango', 4),
(88, 'Half-Life', 19),
(89, 'The Legend of Zelda: Ocarina of Time', 6),
(90, 'Metal Gear Solid', 25),
(91, 'Panzer Dragoon Saga', 20),
(92, 'Resident Evil 2', 23),
(93, 'SoulCalibur', 17),
(94, 'StarCraft', 22),
(95, 'Thief: The Dark Project', 25),
(96, 'Age of Empires II: The Age of Kings', 22),
(97, 'EverQuest', 1),
(98, 'Homeworld', 22),
(99, 'Planescape: Torment', 20),
(100, 'Shenmue', 4),
(101, 'Silent Hill', 23),
(102, 'Super Smash Bros.', 17),
(103, 'System Shock 2', 19),
(104, 'Unreal Tournament', 19),
(105, 'Baldur\'s Gate II: Shadows of Amn', 20),
(106, 'Counter-Strike', 19),
(107, 'Deus Ex', 12),
(108, 'Diablo II', 12),
(109, 'Jet Set Radio', 8),
(110, 'The Legend of Zelda: Majora\'s Mask', 6),
(111, 'The Sims', 26),
(112, 'Thief II: The Metal Age', 25),
(113, 'Tony Hawk\'s Pro Skater 2', 3),
(114, 'Advance Wars', 27),
(115, 'Final Fantasy X', 20),
(116, 'Gran Turismo 3: A-Spec', 13),
(117, 'Grand Theft Auto III', 6),
(118, 'Halo: Combat Evolved', 19),
(119, 'Ico', 6),
(120, 'Ikaruga', 5),
(121, 'Max Payne', 28),
(122, 'Metal Gear Solid 2: Sons of Liberty', 25),
(123, 'Phoenix Wright: Ace Attorney', 4),
(124, 'Rez', 5),
(125, 'Silent Hill 2', 23),
(126, 'Super Smash Bros. Melee', 17),
(127, 'Grand Theft Auto: Vice City', 6),
(128, 'The Legend of Zelda: The Wind Waker', 6),
(129, 'Metroid Prime', 6),
(130, 'Prince of Persia: The Sands of Time', 6),
(131, 'Star Wars: Knights of the Old Republic', 20),
(132, 'Burnout 3: Takedown', 13),
(133, 'Grand Theft Auto: San Andreas', 6),
(134, 'Half-Life 2', 19),
(135, 'Katamari Damacy', 9),
(136, 'Metal Gear Solid 3: Snake Eater', 25),
(137, 'Call of Duty 2', 19),
(138, 'Civilization IV', 21),
(139, 'Devil May Cry 3: Dante\'s Awakening', 6),
(140, 'God of War', 6),
(141, 'Guitar Hero', 29),
(142, 'Psychonauts', 8),
(143, 'Resident Evil 4', 23),
(144, 'Shadow of the Colossus', 6),
(145, 'Tom Clancy\'s Splinter Cell: Chaos Theory', 25),
(146, 'The Elder Scrolls IV: Oblivion', 20),
(147, 'Gears of War', 28),
(148, 'Guitar Hero II', 29),
(149, 'Ōkami', 6),
(150, 'Wii Sports', 3),
(151, 'BioShock', 19),
(152, 'Call of Duty 4: Modern Warfare', 19),
(153, 'God of War II', 6),
(154, 'Halo 3', 19),
(155, 'Portal', 30),
(156, 'Super Mario Galaxy', 8),
(157, 'Team Fortress 2', 19),
(158, 'Braid', 8),
(159, 'Dead Space', 23),
(160, 'Fallout 3', 12),
(161, 'Grand Theft Auto IV', 6),
(162, 'Left 4 Dead', 19),
(163, 'LittleBigPlanet', 8),
(164, 'Metal Gear Solid 4: Guns of the Patriots', 25),
(165, 'Shin Megami Tensei: Persona 4', 20),
(166, 'Spelunky', 8),
(167, 'Street Fighter IV', 17),
(168, 'Assassin\'s Creed II', 6),
(169, 'Batman: Arkham Asylum', 6),
(170, 'Uncharted 2: Among Thieves', 6),
(171, 'Limbo', 8),
(172, 'Mass Effect 2', 12),
(173, 'Red Dead Redemption', 6),
(174, 'Rock Band 3', 29),
(175, 'Super Mario Galaxy 2', 8),
(176, 'Super Meat Boy', 8),
(177, 'Batman: Arkham City', 6),
(178, 'Dark Souls', 12),
(179, 'The Elder Scrolls V: Skyrim', 12),
(180, 'Minecraft', 31),
(181, 'Portal 2', 30),
(182, 'Fire Emblem: Awakening', 21),
(183, 'Hotline Miami', 32),
(184, 'Journey', 4),
(185, 'Mass Effect 3', 12),
(186, 'The Walking Dead', 4),
(187, 'Dota 2', 33),
(188, 'Grand Theft Auto V', 6),
(189, 'The Last of Us', 6),
(190, 'TowerFall', 17),
(191, 'Bloodborne', 12),
(192, 'The Witcher 3: Wild Hunt', 12);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `title` varchar(180) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `title`) VALUES
(9, 'Action'),
(12, 'Action role-playing'),
(6, 'Action-adventure'),
(4, 'Adventure'),
(15, 'Beat \'em up'),
(16, 'City-building'),
(17, 'Fighting'),
(19, 'First-person shooter'),
(18, 'Kart racing'),
(26, 'Life simulation'),
(7, 'Maze'),
(1, 'MMORPG'),
(33, 'MOBA'),
(8, 'Platform'),
(11, 'Puzzle'),
(30, 'Puzzle platformer'),
(13, 'Racing'),
(22, 'Real-time strategy'),
(29, 'Rhythm'),
(20, 'Role-playing'),
(2, 'RTS'),
(14, 'Run and gun'),
(31, 'Sandbox'),
(5, 'Shoot \'em up'),
(10, 'Space simulation'),
(3, 'Sports'),
(25, 'Stealth'),
(23, 'Survival horror'),
(24, 'Tactical role-playing'),
(28, 'Third-person shooter'),
(32, 'Top-down shooter'),
(21, 'Turn-based strategy'),
(27, 'Turn-based tactics');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_232B318C2B36786B` (`title`),
  ADD KEY `IDX_232B318C835033F8` (`genre`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_835033F82B36786B` (`title`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `FK_232B318C835033F8` FOREIGN KEY (`genre`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
