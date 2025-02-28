-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: DB:3306
-- Generation Time: Oct 03, 2023 at 01:19 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--
DROP DATABASE IF EXISTS `music`;
CREATE DATABASE IF NOT EXISTS `music`;
USE `music`;

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artist_id` SMALLINT NOT NULL,
  `artist_name` VARCHAR(22) DEFAULT NULL,
  `artist_type_id` TINYINT DEFAULT NULL
) ENGINE=innodb DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (1, '2 Chainz', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (2, '21 Savage', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (3, '5 Seconds of Summer', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (4, '6ix9ine', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (5, 'A Boogie Wit da Hoodie', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (6, 'AJ Tracey', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (7, 'AJR', 4);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (8, 'Aminé', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (9, 'Anne-Marie', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (10, 'Anuel AA', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (11, 'Ariana Grande', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (12, 'Ashley O', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (13, 'Axwell / Ingrosso', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (14, 'B Young', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (15, 'Bad Bunny', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (16, 'Bazzi', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (17, 'Beyoncé', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (18, 'Billie Eilish', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (19, 'blackbear', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (20, 'BLACKPINK', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (21, 'BlocBoy JB', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (22, 'Blueface', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (23, 'Bruno Mars', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (24, 'BTS', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (25, 'Calvin Harris', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (26, 'Camila Cabello', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (27, 'Cardi B', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (28, 'Cashmere Cat', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (29, 'Charlie Puth', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (30, 'Cheat Codes', 4);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (31, 'Childish Gambino', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (32, 'Chris Brown', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (33, 'Clean Bandit', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (34, 'Dan + Shay', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (35, 'Daya', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (36, 'Demi Lovato', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (37, 'Deorro', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (38, 'DJ Khaled', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (39, 'DJ Snake', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (40, 'DNCE', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (41, 'Doja Cat', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (42, 'Drake', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (43, 'Dua Lipa', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (44, 'Ed Sheeran', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (45, 'Ella Mai', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (46, 'Enrique Iglesias', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (47, 'EO', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (48, 'Fifth Harmony', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (49, 'FINNEAS', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (50, 'Flipp Dinero', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (51, 'Florida Georgia Line', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (52, 'Future', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (53, 'Galantis', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (54, 'Garrett Nash', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (55, 'G-Eazy', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (56, 'George Ezra', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (57, 'Hailee Steinfeld', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (58, 'Halsey', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (59, 'iann dior', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (60, 'Imagine Dragons', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (61, 'James Arthur', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (62, 'Jason Aldean', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (63, 'Jax Jones', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (64, 'Joel Corry', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (65, 'Jonas Blue', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (66, 'Jonas Brothers', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (67, 'Juice WRLD', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (68, 'Justin Timberlake', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (69, 'Kehlani', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (70, 'Kendrick Lamar', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (71, 'Khalid', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (72, 'King Princess', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (73, 'KYLE', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (74, 'Lady Gaga', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (75, 'Lana Del Rey', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (76, 'Låpsley', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (77, 'Lauv', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (78, 'Lewis Capaldi', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (79, 'Liam Payne', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (80, 'Lil Baby', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (81, 'Lil Nas X', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (82, 'Lil Peep', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (83, 'Lil Pump', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (84, 'Lil Tecca', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (85, 'Lil Uzi Vert', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (86, 'Lil Wayne', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (87, 'Little Mix', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (88, 'Lizzo', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (89, 'Logic', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (90, 'Lorde', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (91, 'Loud Luxury', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (92, 'Luis Fonsi', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (93, 'Lunay', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (94, 'M.O', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (95, 'Macklemore', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (96, 'Maggie Rogers', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (97, 'Major Lazer', 4);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (98, 'Maluma', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (99, 'Marc E. Bassy', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (100, 'Mark Ronson', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (101, 'Maroon 5', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (102, 'Marshmello', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (103, 'Martin Garrix', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (104, 'Meek Mill', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (105, 'Megan Thee Stallion', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (106, 'Meghan Trainor', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (107, 'Migos', 4);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (108, 'Mike Perry', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (109, 'Mike Posner', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (110, 'Miley Cyrus', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (111, 'MK', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (112, 'MØ', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (113, 'Mustard', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (114, 'NF', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (115, 'Niall Horan', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (116, 'Nick Jonas', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (117, 'Nio Garcia', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (118, 'NLE Choppa', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (119, 'Normani', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (120, 'Offset', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (121, 'Olivia Holt', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (122, 'OneRepublic', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (123, 'Ozuna', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (124, 'P!nk', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (125, 'PARTYNEXTDOOR', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (126, 'Playboi Carti', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (127, 'Polo G', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (128, 'Portugal. The Man', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (129, 'Post Malone', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (130, 'Rae Sremmurd', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (131, 'Regard', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (132, 'Rich The Kid', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (133, 'Rihanna', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (134, 'Sam Feldt', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (135, 'Sam Smith', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (136, 'Saweetie', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (137, 'SAYGRACE', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (138, 'Scouting For Girls', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (139, 'Sean Paul', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (140, 'Sech', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (141, 'Selena Gomez', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (142, 'Shawn Mendes', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (143, 'Sheck Wes', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (144, 'Sigala', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (145, 'Sigrid', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (146, 'Steve Aoki', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (147, 'Stormzy', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (148, 'SZA', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (149, 'Taylor Swift', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (150, 'The 1975', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (151, 'The Chainsmokers', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (152, 'The Lumineers', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (153, 'The Vamps', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (154, 'The Weeknd', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (155, 'Timeflies', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (156, 'Tinie Tempah', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (157, 'Tove Lo', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (158, 'Travis Scott', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (159, 'Tyga', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (160, 'Tyler, The Creator', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (161, 'Vance Joy', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (162, 'Wiley', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (163, 'XXXTENTACION', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (164, 'Years & Years', 1);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (165, 'YG', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (166, 'Young T & Bugsey', 2);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (167, 'Young Thug', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (168, 'Zara Larsson', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (169, 'Zay Hilfigerrr', 3);
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_type_id`) VALUES (170, 'ZAYN', 3);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` SMALLINT NOT NULL,
  `genre_name` VARCHAR(20) DEFAULT NULL
) ENGINE=innodb DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (101, 'afroswing');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (102, 'alt z');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (103, 'art pop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (104, 'atl hip hop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (105, 'boy band');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (106, 'brostep');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (107, 'cali rap');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (108, 'canadian hip hop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (109, 'chicago rap');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (110, 'dance pop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (111, 'dfw rap');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (112, 'emo rap');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (113, 'folk-pop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (114, 'grime');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (115, 'hip hop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (116, 'indie pop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (117, 'latin');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (118, 'melodic rap');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (119, 'pop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (120, 'contemporary country');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (121, 'r&b');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (123, 'k-pop');
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES (124, 'modern rock');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` SMALLINT NOT NULL,
  `title` VARCHAR(94) DEFAULT NULL,
  `artist_id` SMALLINT DEFAULT NULL,
  `genre_id` SMALLINT DEFAULT NULL,
  `year` SMALLINT DEFAULT NULL,
  `bpm` SMALLINT DEFAULT NULL,
  `energy` TINYINT DEFAULT NULL,
  `danceability` TINYINT DEFAULT NULL,
  `loudness` SMALLINT DEFAULT NULL,
  `liveness` TINYINT DEFAULT NULL,
  `valence` TINYINT DEFAULT NULL,
  `duration` SMALLINT DEFAULT NULL,
  `acousticness` TINYINT DEFAULT NULL,
  `speechiness` TINYINT DEFAULT NULL,
  `popularity` TINYINT DEFAULT NULL
) ENGINE=innodb DEFAULT CHARSET=utf8;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1001, 'a lot', 2, 104, 2018, 146, 64, 84, -8, 34, 27, 289, 4, 9, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1002, 'Youngblood', 3, 105, 2018, 120, 85, 60, -5, 12, 15, 203, 2, 46, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1003, 'FEFE', 4, 112, 2018, 126, 39, 93, -9, 14, 38, 179, 9, 41, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1004, 'GUMMO', 4, 112, 2018, 157, 78, 66, -5, 13, 64, 158, 6, 17, 67);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1005, 'Swervin (feat. 6ix9ine)', 5, 118, 2018, 93, 66, 58, -5, 11, 43, 189, 2, 30, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1006, 'Look Back at It', 5, 118, 2018, 96, 59, 79, -5, 15, 54, 179, 41, 4, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1007, 'God is a woman', 11, 110, 2018, 145, 66, 60, -6, 24, 27, 198, 2, 6, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1008, 'no tears left to cry', 11, 110, 2018, 122, 71, 70, -6, 29, 35, 206, 4, 6, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1009, 'Jumanji', 14, 101, 2018, 96, 47, 79, -10, 10, 60, 173, 28, 25, 65);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1010, 'MIA (feat. Drake)', 15, 117, 2018, 97, 54, 82, -6, 10, 16, 210, 1, 6, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1011, 'Mine', 16, 110, 2018, 143, 79, 71, -4, 45, 72, 131, 2, 7, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1012, 'lovely (with Khalid)', 18, 103, 2018, 115, 30, 35, -10, 10, 12, 200, 93, 3, 91);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1014, 'Look Alive (feat. Drake)', 21, 115, 2018, 140, 58, 92, -7, 11, 60, 181, 0, 27, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1015, 'Thotiana', 22, 107, 2018, 104, 38, 91, -13, 11, 39, 129, 18, 27, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1016, 'One Kiss (with Dua Lipa)', 25, 110, 2018, 124, 86, 79, -3, 8, 59, 215, 4, 11, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1017, 'Havana (feat. Young Thug)', 26, 110, 2018, 105, 52, 77, -4, 13, 39, 217, 18, 3, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1018, 'Never Be the Same', 26, 110, 2018, 130, 71, 64, -4, 14, 24, 227, 18, 7, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1019, 'Bodak Yellow', 27, 110, 2018, 125, 70, 93, -6, 23, 49, 224, 7, 10, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1020, 'I Like It', 27, 110, 2018, 136, 73, 82, -4, 37, 65, 253, 10, 13, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1021, 'Bodak Yellow', 27, 110, 2018, 125, 70, 93, -6, 23, 49, 224, 7, 10, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1022, 'Be Careful', 27, 110, 2018, 152, 57, 82, -8, 10, 54, 211, 3, 41, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1023, 'Money', 27, 110, 2018, 130, 59, 95, -7, 11, 22, 184, 1, 29, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1024, 'Miss You (with Major Lazer & Tory Lanez)', 28, 110, 2018, 100, 64, 75, -5, 11, 45, 186, 25, 9, 61);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1025, 'How Long', 29, 110, 2018, 110, 56, 85, -5, 4, 81, 201, 21, 8, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1026, 'Done for Me (feat. Kehlani)', 29, 110, 2018, 112, 63, 86, -4, 7, 70, 180, 19, 7, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1027, 'The Way I Am', 29, 110, 2018, 115, 77, 76, -6, 6, 64, 186, 31, 19, 68);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1028, 'This Is America', 31, 104, 2018, 120, 46, 85, -6, 35, 55, 226, 12, 14, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1029, 'Tequila', 34, 120, 2018, 86, 58, 49, -6, 13, 49, 197, 3, 3, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1030, 'No Brainer', 38, 110, 2018, 136, 76, 55, -5, 9, 64, 260, 7, 34, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1031, 'God\'s Plan', 42, 108, 2018, 77, 45, 75, -9, 55, 36, 199, 3, 11, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1032, 'Nonstop', 42, 108, 2018, 155, 41, 91, -8, 10, 42, 239, 2, 12, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1033, 'Nice For What', 42, 108, 2018, 93, 91, 59, -6, 12, 76, 211, 9, 7, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1034, 'In My Feelings', 42, 108, 2018, 91, 63, 84, -6, 40, 35, 218, 6, 13, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1035, 'I\'m Upset', 42, 108, 2018, 150, 59, 90, -8, 8, 49, 214, 28, 34, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1036, 'Trip', 45, 110, 2018, 80, 61, 48, -6, 11, 36, 214, 23, 14, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1037, 'German', 47, 101, 2018, 103, 58, 86, -6, 19, 85, 171, 81, 7, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1038, 'Let\'s Fall in Love for the Night', 49, 102, 2018, 128, 41, 74, -8, 17, 37, 190, 80, 10, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1039, 'Shotgun', 56, 113, 2018, 116, 74, 67, -5, 24, 75, 201, 29, 5, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1040, 'Paradise', 56, 113, 2018, 138, 88, 64, -4, 21, 91, 222, 21, 4, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1041, 'Without Me', 58, 110, 2018, 136, 49, 75, -7, 9, 53, 202, 30, 7, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1042, 'You Make It Easy', 62, 120, 2018, 132, 57, 38, -5, 11, 41, 197, 14, 3, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1043, 'Perfect Strangers', 65, 110, 2018, 118, 86, 73, -4, 21, 70, 197, 39, 5, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1044, 'Fast Car', 65, 110, 2018, 114, 58, 67, -7, 31, 55, 212, 47, 6, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1045, 'Rise', 65, 110, 2018, 106, 79, 69, -5, 20, 66, 194, 33, 3, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1046, 'Lucid Dreams', 67, 109, 2018, 84, 57, 51, -7, 34, 22, 240, 35, 20, 89);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1047, 'Love Lies (with Normani)', 71, 119, 2018, 144, 65, 71, -6, 13, 34, 202, 10, 4, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1048, 'Better', 71, 119, 2018, 98, 55, 60, -10, 10, 11, 229, 8, 10, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1049, '1950', 72, 102, 2018, 72, 54, 60, -7, 16, 27, 225, 65, 11, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1050, 'Shallow', 74, 103, 2018, 96, 39, 57, -6, 23, 32, 216, 37, 3, 87);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1051, 'I Like Me Better', 77, 110, 2018, 92, 51, 75, -8, 10, 42, 197, 54, 25, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1052, 'Yes Indeed', 80, 104, 2018, 120, 35, 96, -9, 11, 56, 142, 4, 53, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1053, 'Bad Vibe', 94, 101, 2018, 110, 70, 81, -4, 10, 76, 214, 18, 4, 58);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1054, 'Corazón (feat. Nego do Borel)', 98, 117, 2018, 198, 74, 72, -6, 20, 75, 185, 33, 25, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1055, 'Nothing Breaks Like a Heart (feat. Miley Cyrus)', 100, 110, 2018, 114, 79, 60, -6, 39, 24, 217, 1, 7, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1056, 'Cold (feat. Future)', 101, 119, 2018, 100, 72, 69, -6, 5, 41, 234, 14, 11, 68);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1057, 'Don\'t Wanna Know (feat. Kendrick Lamar)', 101, 119, 2018, 100, 61, 78, -6, 10, 42, 214, 34, 7, 66);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1058, 'Wait', 101, 119, 2018, 126, 60, 66, -5, 11, 45, 191, 10, 6, 64);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1059, 'Happier', 102, 106, 2018, 100, 79, 69, -3, 17, 67, 214, 19, 5, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1060, 'FRIENDS', 102, 106, 2018, 95, 88, 63, -2, 13, 53, 203, 21, 5, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1061, 'Spotlight', 102, 106, 2018, 150, 82, 55, -4, 74, 62, 178, 1, 15, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1062, 'Going Bad (feat. Drake)', 104, 115, 2018, 86, 50, 89, -6, 25, 54, 181, 26, 9, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1063, 'Walk It Talk It', 107, 104, 2018, 146, 63, 91, -5, 11, 40, 276, 9, 18, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1064, 'MotorSport', 107, 104, 2018, 138, 52, 90, -5, 33, 19, 303, 3, 18, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1065, 'Stir Fry', 107, 104, 2018, 182, 82, 82, -5, 16, 51, 190, 0, 27, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1066, 'Te Boté - Remix', 117, 117, 2018, 97, 68, 90, -3, 6, 44, 418, 54, 21, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1067, 'Vaina Loca', 123, 117, 2018, 94, 81, 75, -4, 20, 56, 176, 32, 8, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1068, 'rockstar (feat. 21 Savage)', 129, 111, 2018, 160, 52, 59, -6, 13, 13, 218, 12, 7, 87);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1069, 'Better Now', 129, 111, 2018, 145, 58, 68, -6, 14, 34, 231, 33, 4, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1070, 'Psycho (feat. Ty Dolla $ign)', 129, 111, 2018, 140, 56, 75, -8, 11, 46, 221, 55, 11, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1071, 'Better Now', 129, 111, 2018, 145, 58, 68, -6, 14, 34, 231, 33, 4, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1072, 'Powerglide (feat. Juicy J) - From SR3MM', 130, 115, 2018, 174, 83, 71, -5, 12, 58, 332, 2, 15, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1073, 'Plug Walk', 132, 104, 2018, 95, 52, 88, -7, 11, 16, 175, 20, 14, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1074, 'No Lie', 139, 110, 2018, 102, 88, 74, -3, 21, 46, 221, 5, 12, 89);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1075, 'Mo Bamba', 143, 118, 2018, 146, 63, 73, -5, 25, 26, 184, 19, 3, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1076, 'Easy Love', 144, 110, 2018, 124, 94, 68, -4, 12, 65, 230, 18, 6, 70);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1077, 'Sweet Lovin\' - Radio Edit', 144, 110, 2018, 125, 85, 68, -3, 34, 71, 202, 21, 7, 69);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1078, 'Just Hold On', 146, 110, 2018, 115, 93, 65, -4, 6, 39, 199, 0, 8, 61);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1079, 'This Feeling', 151, 110, 2018, 105, 57, 57, -8, 9, 45, 198, 6, 4, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1080, 'Sick Boy', 151, 110, 2018, 90, 58, 66, -8, 12, 45, 193, 11, 5, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1081, 'Call Out My Name', 154, 121, 2018, 134, 59, 46, -5, 31, 18, 228, 17, 4, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1082, 'Pray For Me (with Kendrick Lamar)', 154, 121, 2018, 101, 68, 74, -5, 11, 19, 211, 8, 9, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1083, 'BUTTERFLY EFFECT', 158, 115, 2018, 141, 63, 76, -6, 11, 19, 191, 5, 5, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1084, 'SICKO MODE', 158, 115, 2018, 155, 73, 83, -4, 12, 45, 313, 1, 22, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1085, 'SICKO MODE', 158, 115, 2018, 155, 73, 83, -4, 12, 45, 313, 1, 22, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1086, 'Taste (feat. Offset)', 159, 110, 2018, 98, 56, 88, -7, 10, 34, 233, 2, 12, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1087, 'Saturday Sun', 161, 113, 2018, 100, 86, 64, -4, 22, 71, 215, 48, 5, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1088, 'SAD!', 163, 112, 2018, 75, 61, 74, -5, 12, 47, 167, 26, 14, 88);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1089, 'Moonlight', 163, 112, 2018, 128, 54, 92, -6, 10, 71, 135, 56, 8, 87);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1090, 'changes', 163, 112, 2018, 65, 31, 67, -10, 10, 52, 122, 88, 3, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1091, 'If You\'re Over Me', 164, 110, 2018, 104, 85, 65, -5, 6, 62, 189, 6, 9, 60);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1092, 'BIG BANK (feat. 2 Chainz, Big Sean, Nicki Minaj)', 165, 107, 2018, 204, 35, 75, -8, 9, 11, 237, 1, 33, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1093, 'Ladbroke Grove', 6, 114, 2019, 134, 84, 90, -9, 10, 73, 191, 9, 21, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1094, 'China', 10, 117, 2019, 105, 81, 79, -4, 8, 61, 302, 8, 9, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1095, 'Secreto', 10, 117, 2019, 92, 80, 81, -4, 14, 71, 259, 60, 13, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1096, '7 rings', 11, 110, 2019, 140, 32, 78, -11, 9, 33, 179, 59, 33, 88);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1097, 'thank u, next', 11, 110, 2019, 107, 65, 72, -6, 10, 41, 207, 23, 7, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1098, 'break up with your girlfriend, i\'m bored', 11, 110, 2019, 170, 55, 73, -5, 11, 34, 190, 4, 9, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1099, 'boyfriend (with Social House)', 11, 110, 2019, 190, 80, 40, -4, 16, 70, 186, 12, 46, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1100, 'On A Roll', 12, 119, 2019, 125, 81, 74, -6, 5, 39, 154, 8, 9, 62);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1101, 'Callaita', 15, 117, 2019, 176, 62, 61, -5, 24, 24, 251, 60, 31, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1102, 'bad guy', 18, 103, 2019, 135, 43, 70, -11, 10, 56, 194, 33, 38, 88);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1103, 'when the party\'s over', 18, 103, 2019, 83, 11, 37, -14, 9, 20, 196, 98, 10, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1104, 'bury a friend', 18, 103, 2019, 120, 39, 91, -15, 11, 20, 193, 74, 33, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1105, 'Kill This Love', 20, 123, 2019, 132, 84, 76, -5, 23, 65, 191, 32, 19, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1106, 'Boy With Luv (feat. Halsey)', 24, 123, 2019, 120, 86, 65, -5, 19, 80, 230, 9, 8, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1107, 'Please Me', 27, 110, 2019, 134, 57, 75, -7, 8, 65, 201, 6, 8, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1108, 'Beautiful People', 32, 110, 2019, 128, 78, 42, -6, 8, 54, 226, 7, 16, 59);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1109, 'Juicy', 41, 110, 2019, 170, 66, 79, -3, 7, 46, 202, 9, 7, 62);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1110, 'Money In The Grave (Drake ft. Rick Ross)', 42, 108, 2019, 101, 50, 83, -4, 12, 10, 205, 10, 5, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1111, 'Don\'t Start Now', 43, 110, 2019, 124, 79, 79, -5, 10, 68, 183, 1, 8, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1112, 'Take Me Back to London (feat. Stormzy)', 44, 119, 2019, 138, 76, 89, -6, 16, 61, 190, 22, 22, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1113, 'Cross Me (feat. Chance the Rapper & PnB Rock)', 44, 119, 2019, 95, 79, 75, -6, 7, 61, 206, 21, 12, 69);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1114, 'Antisocial (with Travis Scott)', 44, 119, 2019, 152, 82, 72, -5, 36, 91, 162, 13, 5, 68);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1115, 'Leave Me Alone', 50, 118, 2019, 150, 74, 79, -3, 18, 74, 196, 11, 9, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1116, 'Simple', 51, 120, 2019, 200, 88, 36, -4, 15, 86, 185, 8, 10, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1117, 'emotions', 59, 118, 2019, 81, 63, 63, -6, 14, 16, 131, 1, 4, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1118, 'gone girl', 59, 118, 2019, 95, 71, 68, -6, 7, 36, 137, 16, 3, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1119, 'All Day And Night', 63, 110, 2019, 122, 78, 59, -4, 16, 52, 169, 27, 9, 64);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1120, 'Sorry', 64, 110, 2019, 125, 79, 74, -5, 32, 85, 189, 5, 6, 68);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1121, 'Sucker', 66, 105, 2019, 138, 73, 84, -5, 11, 95, 181, 4, 6, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1122, 'Only Human', 66, 105, 2019, 94, 50, 80, -6, 6, 87, 183, 11, 7, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1123, 'Robbery', 67, 109, 2019, 80, 69, 62, -5, 15, 57, 240, 33, 5, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1124, 'Nights Like This (feat. Ty Dolla $ign)', 69, 110, 2019, 146, 73, 61, -5, 15, 29, 202, 37, 15, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1125, 'Talk (feat. Disclosure)', 71, 119, 2019, 136, 40, 90, -9, 6, 35, 198, 5, 13, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1126, 'Doin\' Time', 75, 103, 2019, 145, 56, 64, -11, 9, 52, 202, 40, 4, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1127, 'Someone You Loved', 78, 119, 2019, 110, 41, 50, -6, 11, 45, 182, 75, 3, 89);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1128, 'Grace', 78, 119, 2019, 104, 56, 72, -6, 17, 49, 186, 44, 3, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1129, 'Strip That Down (feat. Quavo)', 79, 110, 2019, 106, 50, 87, -5, 8, 55, 202, 20, 5, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1130, 'Old Town Road - Remix', 81, 115, 2019, 136, 62, 88, -6, 11, 64, 157, 5, 10, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1131, 'Old Town Road', 81, 115, 2019, 136, 53, 91, -6, 10, 51, 113, 6, 13, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1132, 'Panini', 81, 115, 2019, 154, 59, 70, -6, 12, 48, 115, 34, 8, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1133, 'Ransom', 84, 118, 2019, 180, 64, 75, -6, 7, 23, 131, 2, 29, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1134, 'Truth Hurts', 88, 110, 2019, 158, 62, 72, -3, 12, 41, 173, 11, 11, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1135, 'Good as Hell', 88, 110, 2019, 96, 92, 68, -3, 44, 54, 160, 26, 9, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1136, 'Despacito', 92, 117, 2019, 178, 80, 66, -5, 7, 84, 229, 20, 15, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1137, 'Soltera - Remix', 93, 117, 2019, 92, 78, 80, -4, 44, 80, 266, 36, 4, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1138, 'Alaska', 96, 116, 2019, 104, 39, 85, -11, 11, 18, 188, 41, 5, 70);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1139, 'Light On', 96, 116, 2019, 102, 57, 66, -6, 13, 40, 234, 20, 5, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1140, 'Here With Me', 102, 106, 2019, 100, 56, 79, -4, 16, 18, 156, 6, 4, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1141, 'One Thing Right', 102, 106, 2019, 88, 63, 66, -2, 58, 44, 182, 6, 5, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1142, 'Hot Girl Summer (feat. Nicki Minaj & Ty Dolla $ign)', 105, 110, 2019, 99, 81, 87, -5, 21, 57, 199, 0, 16, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1143, 'Slide Away', 110, 110, 2019, 148, 54, 53, -7, 25, 29, 234, 17, 3, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1144, 'Pure Water (with Migos)', 113, 107, 2019, 202, 56, 68, -6, 34, 14, 192, 17, 13, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1145, 'Shotta Flow (feat. Blueface) [Remix]', 118, 115, 2019, 120, 51, 89, -5, 14, 57, 177, 3, 42, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1146, 'Motivation', 119, 110, 2019, 171, 89, 60, -4, 30, 88, 194, 2, 10, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1147, 'Clout (feat. Cardi B)', 120, 104, 2019, 140, 62, 92, -7, 12, 42, 206, 23, 10, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1148, 'Pop Out (feat. Lil Tjay)', 127, 109, 2019, 168, 64, 77, -7, 7, 26, 167, 15, 47, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1149, 'Circles', 129, 111, 2019, 120, 76, 70, -3, 9, 55, 215, 19, 4, 89);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1150, 'Sunflower - Spider-Man: Into the Spider-Verse', 129, 111, 2019, 90, 52, 76, -4, 7, 93, 158, 53, 6, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1151, 'Wow.', 129, 111, 2019, 100, 54, 83, -7, 10, 39, 150, 14, 21, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1152, 'Goodbyes (feat. Young Thug)', 129, 111, 2019, 150, 65, 55, -4, 10, 16, 175, 46, 8, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1153, 'Ride It', 131, 110, 2019, 118, 75, 88, -4, 11, 88, 158, 18, 9, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1154, 'Post Malone (feat. RANI)', 134, 110, 2019, 107, 64, 59, -4, 11, 65, 174, 8, 12, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1155, 'My Type', 136, 107, 2019, 105, 81, 90, -6, 7, 59, 126, 0, 26, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1156, 'Otro Trago', 140, 117, 2019, 176, 70, 75, -5, 11, 62, 226, 14, 34, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1157, 'Strangers', 145, 110, 2019, 115, 72, 76, -6, 8, 13, 234, 1, 4, 64);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1158, 'Don’t Feel Like Crying', 145, 110, 2019, 120, 81, 75, -4, 7, 72, 157, 16, 4, 56);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1159, 'Vossi Bop', 147, 114, 2019, 188, 65, 68, -6, 13, 43, 196, 13, 34, 69);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1160, 'Lover', 149, 119, 2019, 69, 54, 36, -8, 12, 45, 221, 49, 9, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1161, 'Cruel Summer', 149, 119, 2019, 170, 70, 55, -6, 11, 56, 178, 12, 16, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1162, 'You Need To Calm Down', 149, 119, 2019, 85, 67, 77, -6, 6, 71, 171, 1, 6, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1163, 'EARFQUAKE', 160, 115, 2019, 80, 50, 55, -9, 80, 41, 190, 23, 7, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1164, 'Boasty (feat. Idris Elba)', 162, 114, 2019, 103, 77, 89, -5, 9, 46, 177, 1, 7, 68);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1165, 'Strike a Pose (feat. Aitch)', 166, 101, 2019, 138, 58, 53, -6, 10, 59, 214, 1, 10, 67);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1166, 'The London (feat. J. Cole & Travis Scott)', 167, 104, 2019, 98, 59, 80, -7, 13, 18, 200, 2, 15, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1167, 'Alarm', 9, 110, 2016, 147, 59, 76, -5, 18, 81, 206, 8, 23, 62);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1168, 'Into You', 11, 110, 2016, 108, 73, 62, -6, 14, 37, 244, 2, 11, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1169, 'Side To Side', 11, 110, 2016, 159, 74, 65, -6, 24, 61, 226, 5, 23, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1170, 'Dangerous Woman', 11, 110, 2016, 134, 60, 66, -5, 36, 29, 236, 5, 4, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1171, 'Sorry', 17, 110, 2016, 130, 60, 78, -7, 25, 36, 233, 0, 5, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1172, 'That\'s What I Like', 23, 110, 2016, 134, 56, 85, -5, 9, 86, 207, 1, 4, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1173, '24K Magic', 23, 110, 2016, 107, 80, 82, -4, 15, 63, 226, 3, 8, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1174, 'This Is What You Came For (feat. Rihanna)', 25, 110, 2016, 124, 93, 63, -3, 15, 47, 222, 20, 3, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1175, 'My Way', 25, 110, 2016, 120, 91, 82, -3, 16, 54, 219, 9, 4, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1176, 'We Don\'t Talk Anymore (feat. Selena Gomez)', 29, 110, 2016, 100, 56, 73, -8, 18, 35, 218, 62, 13, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1177, 'One Call Away', 29, 110, 2016, 91, 61, 67, -5, 12, 47, 194, 40, 3, 70);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1178, 'Dangerously', 29, 110, 2016, 112, 52, 70, -8, 20, 23, 199, 36, 4, 58);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1179, 'Sex', 30, 110, 2016, 102, 69, 51, -6, 14, 21, 228, 0, 17, 66);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1180, 'Redbone', 31, 104, 2016, 160, 34, 74, -11, 10, 58, 327, 17, 12, 87);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1181, 'Tears (feat. Louisa Johnson)', 33, 110, 2016, 130, 77, 61, -4, 16, 30, 226, 4, 4, 65);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1182, 'Rockabye (feat. Sean Paul & Anne-Marie)', 33, 110, 2016, 102, 76, 72, -4, 18, 74, 251, 41, 5, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1183, 'Sit Still, Look Pretty', 35, 102, 2016, 182, 74, 66, -4, 11, 54, 202, 14, 27, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1184, 'Hide Away', 35, 102, 2016, 95, 80, 89, -5, 7, 46, 192, 23, 8, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1185, 'Let Me Love You', 39, 110, 2016, 100, 72, 65, -5, 14, 16, 206, 9, 3, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1186, 'Middle', 39, 110, 2016, 105, 70, 58, -5, 5, 22, 221, 1, 4, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1187, 'Cake By The Ocean', 40, 110, 2016, 119, 75, 77, -5, 4, 90, 219, 15, 5, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1188, 'Hotline Bling', 42, 108, 2016, 135, 63, 89, -8, 5, 55, 267, 0, 6, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1189, 'Too Good', 42, 108, 2016, 118, 65, 79, -8, 10, 40, 263, 5, 10, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1190, 'DUELE EL CORAZON (feat. Wisin)', 46, 110, 2016, 91, 91, 72, -3, 14, 87, 200, 9, 10, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1191, 'Work from Home (feat. Ty Dolla $ign)', 48, 110, 2016, 105, 59, 80, -6, 6, 59, 214, 10, 4, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1192, 'All In My Head (Flex) (feat. Fetty Wap)', 48, 110, 2016, 95, 79, 69, -5, 5, 76, 211, 2, 5, 67);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1193, 'Low Life (feat. The Weeknd)', 52, 104, 2016, 144, 33, 72, -8, 15, 10, 314, 34, 7, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1194, 'No Money', 53, 110, 2016, 126, 92, 67, -4, 24, 80, 189, 3, 4, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1195, 'i hate u, i love u (feat. olivia o\'brien)', 54, 119, 2016, 93, 28, 49, -13, 10, 18, 251, 69, 30, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1196, 'Love Myself', 57, 110, 2016, 123, 76, 62, -7, 42, 32, 219, 0, 7, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1197, 'Starving', 57, 110, 2016, 100, 62, 73, -4, 11, 51, 182, 38, 6, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1198, 'Can I Be Him', 61, 119, 2016, 108, 54, 70, -6, 9, 48, 247, 31, 5, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1199, 'CAN\'T STOP THE FEELING! (from DreamWorks Animation\'s \"TROLLS\")', 68, 110, 2016, 113, 83, 67, -6, 10, 70, 238, 1, 7, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1200, 'iSpy (feat. Lil Yachty)', 73, 119, 2016, 75, 65, 75, -7, 23, 67, 253, 38, 29, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1201, 'Hurt Me', 76, 119, 2016, 138, 73, 66, -5, 16, 59, 231, 69, 13, 55);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1202, 'Sucker for Pain (with Wiz Khalifa, Imagine Dragons, Logic & Ty Dolla $ign feat. X Ambassadors)', 86, 115, 2016, 169, 79, 50, -4, 65, 74, 243, 26, 32, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1203, 'Shout Out to My Ex', 87, 110, 2016, 126, 75, 77, -4, 11, 80, 246, 2, 9, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1204, 'Touch (feat. Kid Ink)', 87, 110, 2016, 102, 75, 64, -4, 49, 55, 203, 4, 11, 59);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1205, 'Cold Water', 97, 110, 2016, 93, 80, 61, -5, 16, 50, 185, 7, 4, 72);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1206, 'Alone', 102, 106, 2016, 142, 95, 63, -4, 11, 42, 274, 2, 3, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1207, 'Animals - Radio Edit', 103, 110, 2016, 128, 91, 59, -5, 7, 4, 176, 0, 4, 64);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1208, 'In the Name of Love', 103, 110, 2016, 134, 52, 50, -6, 45, 17, 196, 11, 4, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1209, 'The Ocean (feat. Shy Martin)', 108, 110, 2016, 90, 57, 63, -6, 10, 19, 183, 2, 3, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1210, 'I Took A Pill In Ibiza - Seeb Remix', 109, 110, 2016, 102, 71, 66, -7, 8, 71, 198, 4, 11, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1211, 'Final Song', 112, 103, 2016, 105, 67, 70, -6, 8, 25, 236, 1, 3, 70);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1212, 'This Town', 115, 110, 2016, 112, 41, 68, -8, 12, 20, 233, 70, 3, 64);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1213, 'Close', 116, 110, 2016, 124, 62, 65, -5, 14, 40, 234, 25, 8, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1214, 'History', 121, 102, 2016, 101, 63, 77, -7, 12, 54, 204, 10, 5, 64);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1215, 'Wherever I Go', 122, 110, 2016, 100, 68, 54, -6, 24, 35, 170, 10, 4, 68);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1216, 'Just Like Fire (From the Original Motion Picture \"Alice Through The Looking Glass\")', 124, 110, 2016, 163, 70, 63, -6, 11, 52, 215, 1, 15, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1217, 'Not Nice', 125, 119, 2016, 128, 50, 60, -9, 12, 73, 203, 3, 8, 67);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1218, 'Congratulations', 129, 111, 2016, 123, 80, 63, -4, 25, 49, 220, 22, 4, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1219, 'I Fall Apart', 129, 111, 2016, 144, 54, 56, -5, 20, 29, 223, 7, 4, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1220, 'Swang', 130, 115, 2016, 140, 31, 68, -9, 10, 17, 208, 20, 6, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1221, 'Black Beatles', 130, 115, 2016, 146, 63, 79, -6, 13, 36, 292, 14, 6, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1222, 'Needed Me', 133, 119, 2016, 111, 31, 67, -8, 8, 30, 192, 11, 24, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1223, 'Work', 133, 119, 2016, 92, 53, 73, -6, 9, 56, 219, 8, 9, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1224, 'You Don\'t Own Me (feat. G-Eazy)', 137, 110, 2016, 186, 64, 33, -6, 6, 26, 201, 16, 9, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1225, 'Somebody Else', 150, 124, 2016, 101, 79, 61, -6, 15, 47, 348, 20, 6, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1226, 'The Sound', 150, 124, 2016, 121, 94, 65, -5, 45, 55, 249, 9, 8, 63);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1227, 'Closer', 151, 110, 2016, 95, 52, 75, -6, 11, 66, 245, 41, 3, 88);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1228, 'Don\'t Let Me Down', 151, 110, 2016, 160, 87, 53, -5, 14, 42, 208, 16, 17, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1229, 'Ophelia', 152, 119, 2016, 76, 57, 66, -7, 9, 57, 160, 61, 3, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1230, 'Starboy', 154, 121, 2016, 186, 59, 68, -7, 14, 49, 230, 14, 28, 88);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1231, 'I Feel It Coming', 154, 121, 2016, 93, 82, 77, -6, 7, 59, 269, 43, 12, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1232, 'Once In a While', 155, 110, 2016, 105, 69, 79, -6, 62, 35, 215, 1, 14, 65);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1233, 'Girls Like (feat. Zara Larsson)', 156, 110, 2016, 120, 80, 92, -3, 8, 54, 196, 37, 5, 67);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1234, 'Cool Girl', 157, 103, 2016, 102, 69, 67, -7, 8, 20, 199, 31, 11, 69);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1235, 'goosebumps', 158, 115, 2016, 130, 73, 84, -3, 15, 43, 244, 8, 5, 88);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1236, 'Juju on That Beat (TZ Anthem)', 169, 115, 2016, 161, 89, 81, -4, 39, 78, 144, 0, 28, 62);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1237, 'PILLOWTALK', 170, 110, 2016, 125, 70, 58, -4, 9, 44, 203, 12, 5, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1238, 'It\'s A Vibe', 1, 104, 2017, 73, 50, 82, -7, 11, 53, 210, 3, 15, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1239, 'Bank Account', 2, 104, 2017, 75, 35, 88, -8, 9, 38, 220, 2, 35, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1240, 'Drowning (feat. Kodak Black)', 5, 118, 2017, 129, 81, 84, -5, 12, 81, 209, 50, 6, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1241, 'Weak', 7, 124, 2017, 124, 64, 67, -5, 19, 70, 201, 12, 5, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1242, 'Caroline', 8, 115, 2017, 120, 34, 94, -10, 26, 71, 210, 17, 51, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1243, 'More Than You Know', 13, 110, 2017, 123, 74, 65, -5, 31, 57, 203, 3, 3, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1244, 'Bored', 18, 103, 2017, 120, 32, 61, -13, 8, 11, 181, 90, 5, 88);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1245, 'do re mi', 19, 119, 2017, 111, 59, 75, -6, 12, 17, 212, 1, 5, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1246, 'Finesse - Remix; feat. Cardi B', 23, 110, 2017, 105, 86, 70, -5, 2, 93, 217, 2, 10, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1247, 'Feels (feat. Pharrell Williams, Katy Perry & Big Sean)', 25, 110, 2017, 101, 75, 89, -3, 9, 87, 223, 6, 6, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1248, 'Slide (feat. Frank Ocean & Migos)', 25, 110, 2017, 104, 80, 74, -3, 25, 51, 231, 50, 5, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1249, 'No Promises (feat. Demi Lovato)', 30, 110, 2017, 113, 62, 74, -7, 11, 58, 223, 6, 16, 66);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1250, 'Sorry Not Sorry', 36, 110, 2017, 144, 64, 71, -7, 26, 89, 204, 2, 23, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1251, 'Five More Hours', 37, 110, 2017, 128, 88, 70, -3, 82, 50, 212, 3, 22, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1252, 'I\'m the One (feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)', 38, 110, 2017, 81, 67, 60, -4, 13, 82, 289, 5, 4, 70);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1253, 'Wild Thoughts (feat. Rihanna & Bryson Tiller)', 38, 110, 2017, 98, 68, 61, -3, 13, 62, 205, 3, 8, 70);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1254, 'Passionfruit', 42, 108, 2017, 112, 46, 81, -11, 11, 36, 299, 26, 4, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1255, 'Fake Love', 42, 108, 2017, 134, 48, 93, -9, 18, 61, 211, 11, 29, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1256, 'Hotter Than Hell', 43, 110, 2017, 110, 87, 53, -4, 6, 53, 188, 1, 9, 70);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1257, 'IDGAF', 43, 110, 2017, 97, 54, 84, -6, 8, 51, 218, 4, 9, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1258, 'Perfect', 44, 119, 2017, 95, 45, 60, -6, 11, 17, 263, 16, 2, 89);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1259, 'Shape of You', 44, 119, 2017, 96, 65, 83, -3, 9, 93, 234, 58, 8, 89);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1260, 'Boo\'d Up', 45, 110, 2017, 82, 78, 56, -5, 8, 24, 256, 9, 5, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1261, 'Mask Off', 52, 104, 2017, 150, 43, 83, -9, 17, 28, 205, 1, 43, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1262, 'Him & I (with Halsey)', 55, 116, 2017, 88, 73, 59, -6, 31, 19, 269, 5, 9, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1263, 'No Limit', 55, 116, 2017, 176, 77, 84, -4, 9, 41, 245, 1, 24, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1264, 'Him & I (with Halsey)', 55, 116, 2017, 88, 73, 59, -6, 31, 19, 269, 5, 9, 80);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1265, 'Most Girls', 57, 110, 2017, 103, 57, 76, -7, 9, 42, 204, 5, 8, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1266, 'Let Me Go (with Alesso, Florida Georgia Line & watt)', 57, 110, 2017, 103, 71, 66, -4, 8, 74, 175, 3, 5, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1267, 'Now Or Never', 58, 110, 2017, 110, 59, 67, -5, 13, 45, 215, 11, 4, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1268, 'Bad At Love', 58, 110, 2017, 118, 75, 68, -4, 9, 61, 181, 6, 3, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1269, 'Believer', 60, 124, 2017, 125, 78, 78, -4, 8, 67, 204, 6, 13, 91);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1270, 'Thunder', 60, 124, 2017, 168, 82, 61, -5, 15, 29, 187, 1, 4, 87);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1271, 'Whatever It Takes', 60, 124, 2017, 135, 66, 67, -5, 12, 56, 201, 4, 3, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1272, 'HUMBLE.', 70, 115, 2017, 150, 62, 91, -7, 10, 42, 177, 0, 10, 87);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1273, 'LOVE. FEAT. ZACARI.', 70, 115, 2017, 126, 59, 80, -7, 15, 78, 213, 26, 9, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1274, 'DNA.', 70, 115, 2017, 140, 52, 64, -7, 8, 42, 186, 0, 36, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1275, 'ELEMENT.', 70, 115, 2017, 190, 71, 75, -5, 25, 48, 209, 20, 49, 76);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1276, 'LOVE. FEAT. ZACARI.', 70, 115, 2017, 126, 59, 80, -7, 15, 78, 213, 26, 9, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1277, 'Young Dumb & Broke', 71, 119, 2017, 137, 54, 80, -6, 17, 39, 203, 20, 4, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1278, 'Location', 71, 119, 2017, 80, 45, 74, -11, 9, 33, 219, 33, 43, 83);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1279, 'Lust For Life (with The Weeknd)', 75, 103, 2017, 100, 66, 50, -9, 36, 26, 264, 60, 5, 73);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1280, 'Save That Shit', 82, 112, 2017, 106, 58, 53, -9, 42, 14, 232, 3, 3, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1281, 'Gucci Gang', 83, 112, 2017, 120, 52, 94, -7, 12, 70, 124, 24, 6, 69);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1282, 'XO Tour Llif3', 85, 118, 2017, 155, 75, 73, -6, 11, 40, 183, 0, 23, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1283, '1-800-273-8255', 89, 115, 2017, 100, 57, 62, -8, 19, 36, 250, 57, 5, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1284, 'Liability', 90, 103, 2017, 76, 23, 59, -11, 10, 38, 172, 92, 13, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1285, 'Green Light', 90, 103, 2017, 129, 72, 59, -8, 9, 25, 235, 2, 10, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1286, 'Homemade Dynamite (Feat. Khalid, Post Malone & SZA) - REMIX', 90, 103, 2017, 107, 55, 78, -5, 13, 18, 214, 23, 8, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1287, 'Body', 91, 110, 2017, 122, 76, 75, -4, 5, 58, 163, 5, 4, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1288, 'Glorious (feat. Skylar Grey)', 95, 119, 2017, 140, 79, 73, -5, 11, 36, 220, 3, 5, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1289, 'You & Me', 99, 119, 2017, 84, 64, 45, -8, 19, 61, 218, 4, 28, 69);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1290, 'Silence', 102, 106, 2017, 142, 76, 52, -3, 17, 29, 181, 26, 9, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1291, 'NO', 106, 110, 2017, 92, 80, 56, -4, 74, 66, 214, 1, 21, 75);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1292, 'Bad and Boujee (feat. Lil Uzi Vert)', 107, 104, 2017, 127, 67, 93, -5, 12, 17, 343, 6, 24, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1293, 'Slippery (feat. Gucci Mane)', 107, 104, 2017, 142, 68, 92, -6, 10, 75, 304, 31, 26, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1294, 'T-Shirt', 107, 104, 2017, 139, 69, 87, -4, 16, 49, 242, 24, 22, 71);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1295, 'Sky Walker (feat. Travis Scott)', 107, 110, 2017, 146, 51, 67, -11, 9, 18, 259, 17, 4, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1296, 'Malibu', 110, 110, 2017, 140, 78, 57, -6, 8, 34, 232, 8, 6, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1297, '17', 111, 110, 2017, 122, 83, 70, -7, 7, 67, 196, 0, 7, 69);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1298, 'Nights With You', 112, 103, 2017, 120, 67, 76, -4, 38, 60, 197, 40, 10, 61);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1299, 'Let You Down', 114, 115, 2017, 148, 71, 66, -6, 18, 46, 212, 31, 12, 84);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1300, 'Slow Hands', 115, 110, 2017, 86, 43, 74, -7, 6, 85, 188, 1, 5, 79);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1301, 'Ric Flair Drip (with Metro Boomin)', 120, 104, 2017, 100, 43, 88, -8, 11, 33, 173, 15, 21, 85);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1302, 'Magnolia', 126, 104, 2017, 163, 58, 79, -7, 35, 44, 182, 1, 29, 82);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1303, 'Feel It Still', 128, 124, 2017, 79, 80, 80, -5, 7, 75, 163, 4, 5, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1304, 'Too Good At Goodbyes', 135, 110, 2017, 92, 37, 68, -8, 17, 48, 201, 64, 4, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1305, 'This Ain\'t a Love Song', 138, 110, 2017, 177, 91, 46, -4, 38, 55, 211, 0, 5, 58);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1306, 'Fetish (feat. Gucci Mane)', 141, 110, 2017, 123, 62, 71, -4, 6, 27, 186, 2, 6, 74);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1307, 'Treat You Better', 142, 119, 2017, 83, 82, 44, -4, 11, 75, 188, 11, 34, 86);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1308, 'Love Galore (feat. Travis Scott)', 148, 119, 2017, 135, 59, 80, -6, 16, 41, 275, 11, 7, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1309, 'Look What You Made Me Do', 149, 119, 2017, 128, 71, 77, -6, 13, 51, 212, 20, 12, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1310, '...Ready For It?', 149, 119, 2017, 160, 76, 61, -7, 20, 42, 208, 5, 14, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1311, 'Delicate', 149, 119, 2017, 95, 40, 75, -10, 9, 5, 232, 22, 7, 81);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1312, 'Something Just Like This', 151, 110, 2017, 103, 64, 62, -7, 16, 45, 247, 5, 3, 87);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1313, 'Paris', 151, 110, 2017, 100, 66, 65, -6, 9, 22, 222, 2, 3, 77);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1314, 'All Night', 153, 105, 2017, 145, 80, 54, -5, 33, 51, 198, 0, 4, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1315, 'Middle Of The Night', 153, 105, 2017, 130, 75, 59, -4, 8, 40, 175, 0, 6, 65);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1316, 'Jocelyn Flores', 163, 112, 2017, 134, 39, 87, -9, 30, 44, 119, 47, 24, 89);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1317, 'Never Forget You', 168, 110, 2017, 146, 73, 58, -6, 27, 28, 213, 0, 5, 78);
INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `genre_id`, `year`, `bpm`, `energy`, `danceability`, `loudness`, `liveness`, `valence`, `duration`, `acousticness`, `speechiness`, `popularity`) VALUES (1318, 'I Would Like', 168, 110, 2017, 121, 71, 49, -4, 8, 30, 227, 9, 5, 62);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` TINYINT NOT NULL,
  `type_name` VARCHAR(10) DEFAULT NULL
) ENGINE=innodb DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`) VALUES
(1, 'Band/Group'),
(2, 'Duo'),
(3, 'Solo'),
(4, 'Trio');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`),
  ADD KEY `artist_type_id` (`artist_type_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artists`
--
ALTER TABLE `artists`
  ADD CONSTRAINT `artists_ibfk_1` FOREIGN KEY (`artist_type_id`) REFERENCES `types` (`type_id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`),
  ADD CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
