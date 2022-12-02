-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 12:29 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kingcommerce_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Administrator',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '0000000000', 'Administrator', '15455012941535429467review-profile.png', '$2y$10$9qkomlAvMPVMjqktEM5ekuPLVjR/xY8Vu04xBAd0jt6Y/fN0MgX.C', 1, 'Vq7OIVYpInRKYAXHRmzVu6kl6Kfd8yKidv4OQfkkeyR84gdnd3LyRZrYrX8Z', '2018-02-28 23:27:08', '2018-12-23 05:54:54'),
(2, 'Wu ZI Mu', 'wuzimu@gmail.com', '3242342345436554654645', 'Staff', '1539171190profile3.jpg', '$2y$10$f5TJcOwfSAUu1D.doxAZhuZBZdqrvrN1CVTMn8nPh3EY.XveZEBw2', 1, NULL, '2018-10-10 11:33:10', '2018-10-10 11:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(11, 'gfdg', 13, 'fdgfdgdf', '2018-11-29 08:40:03', '2018-11-29 08:40:03'),
(14, 'jrf', 13, 'dfsdfsdf', '2018-12-04 13:14:33', '2018-12-04 13:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(28, 11, 'fdgfdgdf', NULL, '2018-11-29 08:40:03', '2018-11-29 08:40:03'),
(31, 14, 'dfsdfsdf', NULL, '2018-12-04 13:14:34', '2018-12-04 13:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `script` text,
  `size` varchar(191) NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`id`, `type`, `photo`, `alt`, `url`, `script`, `size`, `clicks`, `status`) VALUES
(3, 'banner', '1520953940add.jpg', 'Advertisement', 'http://geniusocean.com/', NULL, '728x90', 5, 1),
(4, 'banner', '1520953955ad1.jpg', 'Advertisement', 'http://geniusocean.com/', NULL, '300x250', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) UNSIGNED NOT NULL,
  `top1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top1l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top2l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top3l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top4l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom1l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom2l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `top1`, `top2`, `top3`, `top4`, `bottom1`, `bottom2`, `top1l`, `top2l`, `top3l`, `top4l`, `bottom1l`, `bottom2l`) VALUES
(1, '154550106104-min.jpg', '154550107202-min.jpg', '15455011426-min.jpg', '154550108901-min.jpg', '1536060875banner-1.jpg', '1536060875banner-2.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `details`, `photo`, `source`, `views`, `status`, `created_at`, `updated_at`, `meta_tag`, `meta_description`) VALUES
(9, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15455012491534404112latest-news-1.jpg', 'www.geniusocean.com', 25, 1, '2018-03-06 09:53:41', '2018-12-23 06:02:23', NULL, NULL),
(10, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15455012691534404112latest-news-1.jpg', 'www.geniusocean.com', 13, 1, '2018-03-06 09:54:21', '2018-12-23 05:54:29', NULL, NULL),
(12, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15455012331534404112latest-news-1.jpg', 'www.geniusocean.com', 19, 1, '2018-03-06 22:04:20', '2019-01-21 11:54:17', NULL, NULL),
(13, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1534404112latest-news-1.jpg', 'www.geniusocean.com', 59, 1, '2018-03-06 22:04:36', '2019-01-19 09:32:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `photo`, `url`) VALUES
(1, '1525528423client_logo_01.png', 'https://www.google.com/'),
(2, '1525528470client_logo_02.png', 'https://www.google.com/'),
(3, '1525528512client_logo_03.png', 'https://www.google.com/'),
(4, '1525528518client_logo_04.png', 'https://www.google.com/'),
(5, '1525528524client_logo_05.png', 'https://www.google.com/'),
(6, '1525528531client_logo_06.png', 'https://www.google.com/'),
(7, '1525528531client_logo_06.png', 'https://www.google.com/'),
(8, '1525528536client_logo_07.png', 'https://www.google.com/'),
(9, '1525528542client_logo_08.png', 'https://www.google.com/'),
(10, '1525528634client_logo_10.png', 'https://www.google.com/'),
(18, '1535438306client_logo_11.png', 'https://www.google.com/'),
(19, '1535438312client_logo_09.png', 'https://www.google.com/'),
(21, '1535438321client_logo_10.png', 'https://www.google.com/'),
(22, '1535438325client_logo_06.png', 'https://www.google.com/'),
(23, '1535438329client_logo_04.png', 'https://www.google.com/'),
(24, '1535438337client_logo_03.png', 'https://www.google.com/'),
(26, '15455016451536465813client_logo_05.png', NULL),
(27, '15455016671525528542client_logo_08.png', 'https://www.google.com/'),
(28, '15455016801535438325client_logo_06.png', 'geniusocean.com/'),
(29, '15455016951525528536client_logo_07.png', 'geniusocean.com/');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_slug`, `status`, `photo`) VALUES
(11, 'Category 1', 'cat1', 1, '1536219926computer.png'),
(12, 'Category 2', 'cat2', 1, '15455525631536057812checked.png'),
(13, 'Category 3', 'cat3', 1, '15455526071536057812refresh-button.png'),
(14, 'Category 4', 'cat4', 1, '15455526191536057837customer-support.png'),
(15, 'Category 5', 'cat5', 1, '15455526281536058640delivery-van.png'),
(16, 'Category 6', 'cat6', 1, '15455526451539837442customer-support.png'),
(17, 'Category 7', 'cat7', 1, NULL),
(18, 'Category 8', 'cat8', 1, NULL),
(19, 'Category 9', 'cat9', 1, NULL),
(20, 'Category 10', 'cat10', 1, NULL),
(21, 'Category 11', 'cat11', 1, NULL),
(23, 'Category 12', 'cat12', 1, NULL),
(24, 'Category 13', 'cat13', 1, NULL),
(25, 'Category 14', 'cat14', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED NOT NULL,
  `child_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `child_name`, `child_slug`, `status`) VALUES
(14, 8, 'Child Category 1', 'c1', 1),
(15, 8, 'Child Category 2', 'c2', 1),
(16, 8, 'Child Category 3', 'c3', 1),
(17, 9, 'Child Category 4', 'c4', 1),
(18, 9, 'Child Category 5', 'c5', 1),
(19, 10, 'Child Category 6', 'c6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 2760, 0, NULL),
(4, 'browser', 'Linux', 221, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 384, 0, NULL),
(6, 'browser', 'Windows 7', 415, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 536, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 348, 0, NULL),
(11, 'browser', 'Mac OS X', 502, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 1, 0, NULL),
(18, 'browser', 'iPhone', 3, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, NULL, 9, 1, '2018-09-01', '2018-12-31'),
(2, 'sdsdsasd', 0, 11, NULL, 1, 1, '2018-09-01', '2018-12-31'),
(3, 'werwd', 0, 22, '46', 3, 1, '2018-09-01', '2018-12-31'),
(4, 'asdasd', 1, 23.5, '76', 1, 1, '2018-09-01', '2018-12-31'),
(5, 'kopakopakopa', 0, 40, NULL, 0, 1, '2018-10-05', '2019-01-31'),
(6, 'rererere', 1, 9, NULL, 0, 1, '2018-12-15', '2018-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 82.92649841308594, 0),
(6, 'EUR', '€', 0.864870011806488, 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To KingCommerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `text`) VALUES
(1, 'Reducing the visibility of the negative information', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),
(3, 'Protecting brand integrity', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),
(4, 'Protecting brand integrity', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),
(5, 'Protecting brand integrity', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(1, 42, '1545385661product (2).jpg'),
(2, 42, '1545385661product (3).jpg'),
(3, 42, '1545385661product (4).jpg'),
(4, 42, '1545385661product (5).jpg'),
(5, 43, '1545385661product (2).jpg'),
(6, 43, '1545385661product (3).jpg'),
(7, 43, '1545385661product (4).jpg'),
(8, 43, '1545385661product (4).jpg'),
(9, 44, '1545385661product (2).jpg'),
(10, 44, '1545385661product (3).jpg'),
(11, 44, '1545385661product (4).jpg'),
(12, 44, '1545385661product (5).jpg'),
(13, 45, '1545385661product (2).jpg'),
(14, 45, '1545385661product (3).jpg'),
(15, 45, '1545385661product (4).jpg'),
(16, 45, '1545385661product (5).jpg'),
(17, 46, '1545385661product (2).jpg'),
(18, 46, '1545385661product (3).jpg'),
(19, 46, '1545385661product (4).jpg'),
(20, 46, '1545385661product (5).jpg'),
(21, 47, '1545385661product (2).jpg'),
(22, 47, '1545385661product (3).jpg'),
(23, 47, '1545385661product (4).jpg'),
(24, 47, '1545385661product (5).jpg'),
(25, 48, '1545385661product (2).jpg'),
(26, 48, '1545385661product (3).jpg'),
(28, 48, '1545385661product (5).jpg'),
(29, 49, '1545385661product (2).jpg'),
(31, 49, '1545385661product (4).jpg'),
(32, 49, '1545385661product (5).jpg'),
(34, 50, '1545385661product (3).jpg'),
(35, 50, '1545385661product (4).jpg'),
(36, 50, '1545385661product (5).jpg'),
(37, 51, '1545385661product (2).jpg'),
(38, 51, '1545385661product (3).jpg'),
(39, 51, '1545385661product (4).jpg'),
(40, 51, '1545385661product (5).jpg'),
(41, 52, '1545385661product (2).jpg'),
(42, 52, '1545385661product (3).jpg'),
(43, 52, '1545385661product (4).jpg'),
(44, 52, '1545385661product (5).jpg'),
(45, 50, '1545501393product (1)-min.jpg'),
(47, 49, '1545501426product-(10)-min.jpg'),
(48, 48, '1545501448product (9)-min.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cimg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_text` text COLLATE utf8mb4_unicode_ci,
  `np` int(11) NOT NULL DEFAULT '0',
  `fp` int(11) NOT NULL DEFAULT '0',
  `pb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ss` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcheck` tinyint(4) NOT NULL DEFAULT '1',
  `scheck` tinyint(4) NOT NULL DEFAULT '1',
  `mcheck` tinyint(4) NOT NULL DEFAULT '1',
  `bcheck` tinyint(4) NOT NULL DEFAULT '1',
  `ccheck` tinyint(4) NOT NULL DEFAULT '1',
  `mmi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship` int(191) UNSIGNED NOT NULL,
  `vid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vidimg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `sign` tinyint(1) NOT NULL DEFAULT '0',
  `slider` tinyint(4) NOT NULL DEFAULT '1',
  `category` tinyint(4) NOT NULL DEFAULT '1',
  `sb` tinyint(4) NOT NULL DEFAULT '1',
  `hv` tinyint(4) NOT NULL DEFAULT '1',
  `ftp` tinyint(4) NOT NULL DEFAULT '1',
  `lp` tinyint(4) NOT NULL DEFAULT '1',
  `pp` tinyint(4) NOT NULL DEFAULT '1',
  `lb` tinyint(4) NOT NULL DEFAULT '1',
  `bs` tinyint(4) NOT NULL DEFAULT '1',
  `ts` tinyint(4) NOT NULL DEFAULT '1',
  `bl` tinyint(4) NOT NULL DEFAULT '1',
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bimg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_section` tinyint(10) NOT NULL DEFAULT '0',
  `order_title` text COLLATE utf8mb4_unicode_ci,
  `order_text` text COLLATE utf8mb4_unicode_ci,
  `cart_success` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_success` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_success` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_change` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_already` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdraw_charge` int(191) DEFAULT '0',
  `withdraw_fee` int(191) NOT NULL DEFAULT '0',
  `fixed_commission` int(191) DEFAULT '0',
  `percentage_commission` int(191) DEFAULT '0',
  `tax` int(191) DEFAULT '0',
  `ship_info` tinyint(10) NOT NULL DEFAULT '0',
  `multiple_ship` int(191) NOT NULL DEFAULT '0',
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `subscribe_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_text` text COLLATE utf8mb4_unicode_ci,
  `subscribe_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_subscribe` tinyint(1) NOT NULL DEFAULT '1',
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '1',
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `is_affilate` tinyint(1) NOT NULL DEFAULT '0',
  `affilate_charge` int(191) NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) DEFAULT '0',
  `affilate_banner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '0',
  `footer_background` text COLLATE utf8mb4_unicode_ci,
  `is_loader` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `site`, `bgimg`, `cimg`, `about`, `street`, `phone`, `fax`, `email`, `footer`, `bg_title`, `bg_link`, `bg_text`, `np`, `fp`, `pb`, `sk`, `ss`, `pcheck`, `scheck`, `mcheck`, `bcheck`, `ccheck`, `mmi`, `bi`, `ship`, `vid`, `vidimg`, `tags`, `sign`, `slider`, `category`, `sb`, `hv`, `ftp`, `lp`, `pp`, `lb`, `bs`, `ts`, `bl`, `colors`, `bimg`, `loader`, `count_title`, `count_heading`, `count_date`, `count_link`, `count_image`, `service_section`, `order_title`, `order_text`, `cart_success`, `cart_error`, `wish_success`, `wish_error`, `wish_remove`, `compare_success`, `compare_error`, `compare_remove`, `invalid`, `color_change`, `size_change`, `coupon_found`, `no_coupon`, `coupon_already`, `withdraw_charge`, `withdraw_fee`, `fixed_commission`, `percentage_commission`, `tax`, `ship_info`, `multiple_ship`, `is_talkto`, `talkto`, `subscribe_title`, `subscribe_text`, `subscribe_image`, `is_subscribe`, `is_language`, `reg_vendor`, `rtl`, `is_affilate`, `affilate_charge`, `guest_checkout`, `affilate_banner`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `footer_background`, `is_loader`) VALUES
(1, '154550162515376137271537337050logo.png', '15455008411525426363favicon (1).ico', 'Online Store', 'https://geniusocean.com/', '1534401824Slider-image3.jpg', '1535429167review-bg.jpg', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', '3584 Hickory Heights Drive ,Hanover MD 21076, USA', '00 000 000 000', '00 000 000 000', 'admin@geniusocean.com', 'COPYRIGHT 2018&nbsp;<a href=\"http://geniusocean.com/\">GeniusOcean.com</a>', 'Lorem ipsum dolor sit amet', 'https://geniusocean.com/', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam velit, sit debitis enim dicta a! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam velit, sit debitis enim dicta a!', 0, 10, 'shaon143-facilitator-1@gmail.com', 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 1, 0, 0, 1, '<span style=\"font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: none; font-family: Raleway, sans-serif;\">Faites vos depots sur les numero suivant 42784249 / 78939896 / 04835863</span>', '<span style=\"font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: none; font-family: Raleway, sans-serif;\">Bank Compte Bancaire</span>', 5, 'https://www.youtube.com/watch?v=_sI_Ps7JSEk', '1535432669video-bg.jpg', 'a,b,c,d,x,y,z,k', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '#0057ff', '1539851805images.JPG', '15455007811534395815Blocks-1s-125px.gif', 'Deal of The Day', 'GET UP TO 50% OFF', '2019/03/28', 'https://www.google.com/', '1536044322countdown-cover.jpg', 0, '<h1 class=\"text-center\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: green;\">Congratulation !!</h1>', '<h2 style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 51, 51); font-size: 36px; text-align: center;\">Your Order Has been Confirmed.</h2>', 'Successfully Added To Cart.', 'Out Of Stock !!', 'Successfully Added To Wishlist.', 'Already Added To Wishlist !!', 'Successfully Remove From Wishlist.', 'Successfully Added To Compare.', 'Already Added To Compare !!', 'Successfully Remove From Compare.', 'Invalid Input !!', 'Color has Changed Successfully.', 'Size Has Changed Successfully.', 'Coupon Applied Successfully', 'No Coupon Found.', 'This Coupon Has Already Been Applied.', 5, 5, 3, 5, 10, 1, 1, 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1539773680Slider-image3.jpg', 1, 1, 1, 0, 1, 8, 1, '15455529221538057747banner-2.jpg', 'in-v3.mailjet.com', '587', '0e05029e2dc70da691aa2223aa53c5be', '5df1b6242e86bce602c3fd9adc178460', 'admin@geniusocean.com', 'GeniusOcean', 1, 1, '1545561002footer-bg.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `photo`, `url`) VALUES
(3, '1538057747banner-2.jpg', 'https://www.google.com/'),
(4, '1538058113banner-1.jpg', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fht` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `h` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vdn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faqs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `maq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `con` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `spe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sucp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dashboard` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reset` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logout` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `np` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rnp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chnp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hcs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lns` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ston` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `s` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `al` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dni` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `search` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ec` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sbg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dopd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dopr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doci` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dosp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `don` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `app` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `md` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doad` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dofx` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dofpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dotpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dogpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dolpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doeml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doupl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `success` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dttl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ddesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ppr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cremove` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cimage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cproduct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cedit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cquantity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cupice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cst` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ccs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cpc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `odetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bdetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ship` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `onow` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ships` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `onotes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickupss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogsss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contacts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ctry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sctry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ecpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `acpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ft` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `review_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enter_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hot_sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `latest_special` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `big_sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_arrival` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_now` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `week` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `day` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hour` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `minute` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `second` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wish_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favorite_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_processing` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_completed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_all` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `all_categories` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wishlists` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wish_head` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `colors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linked_accounts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signinup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_registration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vshop_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `owner_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reg_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `optional` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_dashboard` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_bonus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `current_balance` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `item_sold` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_earning` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `clear` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favorite_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `messages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `purchased_item` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_withdraw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_products` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_orders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `withdraw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sliders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_cost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_apply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `availability` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wishlist_add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quick_view` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_condition` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `watch_video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `send_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `send_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_send` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `region` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `licence_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_favorite` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `digital_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tax` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `write_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `write_reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reply_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remove` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `update_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_rating` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_vendor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_available` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_compare` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `to_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_replies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancel_edit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `see_more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `see_less` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `rtl`, `is_default`, `language`, `home`, `fh`, `fht`, `h`, `vt`, `gt`, `vdn`, `about`, `blog`, `blogs`, `faq`, `faqs`, `maq`, `contact`, `con`, `cop`, `coe`, `cor`, `signin`, `sie`, `spe`, `signup`, `suf`, `suph`, `sue`, `sup`, `sucp`, `dashboard`, `edit`, `reset`, `logout`, `cp`, `np`, `rnp`, `chnp`, `bgs`, `rds`, `hcs`, `lns`, `lm`, `vd`, `ston`, `s`, `fl`, `sm`, `fpw`, `fpt`, `fpe`, `fpb`, `cn`, `al`, `bg`, `dni`, `search`, `ec`, `sbg`, `ss`, `bs`, `dopd`, `doo`, `dol`, `doa`, `doe`, `dor`, `dopr`, `doc`, `doci`, `dosp`, `don`, `doem`, `dom`, `fname`, `cup`, `pp`, `app`, `size`, `md`, `amf`, `doct`, `doad`, `doph`, `dofx`, `dofpl`, `dotpl`, `dogpl`, `dolpl`, `doeml`, `doupl`, `supl`, `success`, `dttl`, `ddesc`, `ppr`, `fpr`, `cremove`, `cimage`, `cproduct`, `cedit`, `cquantity`, `cupice`, `cst`, `ccs`, `cpc`, `odetails`, `bdetails`, `ship`, `onow`, `ships`, `shipss`, `pickup`, `pickups`, `onotes`, `tid`, `pickupss`, `blogss`, `blogsss`, `contacts`, `ctry`, `sctry`, `cpn`, `ecpn`, `acpn`, `ds`, `ft`, `review_title`, `video_title`, `enter_code`, `support`, `product_detail`, `hot_sale`, `latest_special`, `big_sale`, `featured_product`, `new_arrival`, `shop_now`, `week`, `day`, `hour`, `minute`, `second`, `view_website`, `wish_list`, `favorite_product`, `order_processing`, `order_completed`, `view_all`, `all_categories`, `wishlists`, `wish_head`, `others`, `colors`, `shop_name`, `vendor_description`, `linked_accounts`, `signinup`, `vendor_registration`, `vshop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `message`, `optional`, `sale`, `welcome`, `user_dashboard`, `conv`, `new_conv`, `no_conv`, `affilate_bonus`, `current_balance`, `item_sold`, `total_earning`, `clear`, `customer`, `favorite_seller`, `messages`, `purchased_item`, `affilate_settings`, `affilate_withdraw`, `affilate_code`, `vendor_products`, `vendor_orders`, `withdraw`, `settings`, `sliders`, `shop_description`, `shipping_cost`, `social_link`, `vendor_apply`, `availability`, `wishlist_add`, `quick_view`, `compare`, `product_condition`, `shipping_time`, `watch_video`, `add_seller`, `contact_seller`, `phone_number`, `send_message`, `send_to`, `new_message`, `vendor_subject`, `vendor_message`, `vendor_send`, `platform`, `region`, `licence_type`, `comment_login`, `comment_review`, `product_favorite`, `facebook_login`, `google_login`, `digital_login`, `tax`, `comment`, `comments`, `write_comment`, `write_reply`, `edit_button`, `reply_button`, `remove`, `update_comment`, `edit_comment`, `edit_reply`, `compare_title`, `compare_rating`, `compare_vendor`, `compare_description`, `compare_available`, `compare_cart`, `no_compare`, `to_review`, `product_review`, `view_replies`, `cancel_edit`, `see_more`, `see_less`) VALUES
(1, 0, 1, 'English', 'HOME', 'MY ACCOUNT', 'My Cart', 'Your Cart is Empty.', 'Total', 'CHECKOUT', 'VIEW CART', 'ABOUT US', 'BLOG', 'BLOG', 'FAQ', 'FREQUENTLY ASKED QUESTION', 'Most Asked Questions', 'CONTACT US', 'Your Name', 'Your Phone', 'Your Email', 'Write a Reply', 'Sign In', 'LOGIN', 'Sign Up', 'Create a new account', 'Review Description', 'Postal Code', 'HAPPY CUSTOMERS', 'Password', 'Confirm Password', 'Dashboard', 'Edit Profile', 'Change Password', 'Logout', 'Current Password', 'New Password', 'Re-Type New Password', 'Change Password', 'Top Category', 'Top Rate', 'Add To Cart', 'LATEST BLOGS', 'Best Sellers', 'VIEW DETAILS', 'Subscribe Our Newsletter', 'SUBSCRIBE', 'FOOTER LINKS', 'Send Message', 'Forgot your Password?', 'Forgot Password', 'Email Address', 'SUBMIT', 'Orders', 'Already Have Account? Login', 'Featured', 'Out Of Stock', 'Search', 'Search For Product', 'In Stock', 'Search Result', 'Source', 'Qty', 'Size', 'Quick Review', 'Filter Option', 'Sort By Latest Product', 'Sort By Oldest Product', 'Sort By Lowest Price', 'Sort By Highest Price', 'All Categories', 'Price', 'Search', 'Popular Tags', 'Tag', 'Full Name', 'Select Payment Method', 'Paypal', 'Credit Card', 'Submit Review', 'No Review', 'Related Products', 'City', 'Address', 'Phone Number', 'Fax', 'Your rating is', 'Mobile Money', 'Bank Wire', 'Cash On Delivery', 'Email Address', 'Update Profile', 'Enter Your Email', 'Successfully updated your profile', 'Reviews', 'Full Description', 'Return & Policy', 'Write a Review', 'Remove', 'Image', 'Product Name', 'Edit', 'Quantity', 'Unit Price', 'Sub Total', 'Continue Shopping', 'Proceed Checkout', 'Order Details', 'Billing Details', 'Shipping Cost', 'Order Now', 'Ship To Address', 'Ship to a Different Address?', 'Pick Up', 'Select a PickUp Location', 'Order Notes', 'Transaction ID#', 'Pickup From The Location you Selected', 'BLOG DETAILS', 'Recent Posts', 'Contact', 'Country', 'Select Country', 'Coupon Code', 'Enter Your Coupn Code', 'Apply Coupon', 'Discount', 'Final Total', 'What People Are Saying', 'See How it Works', 'Enter Code', 'Tickets', 'Product Details Page', 'Hot Sale', 'Latest Special', 'Big Save', 'FEATURED PRODUCTS', 'NEW ARRIVAL PRODUCTS', 'SHOP NOW!', 'Week(s)', 'Day(s)', 'Hour(s)', 'Minute(s)', 'Second(s)', 'View Website', 'Wishlists', 'Favorite Product(s)', 'Order(s) Processing !', 'Order(s) Completed !', 'View All', 'All Categories', 'WISHLIST', 'Wishlisted Product', 'OTHERS', 'Color', 'Shop Name', 'Description', 'Linked Accounts', 'Sign In / Up', 'Vendor Registration', 'Shop Name', 'Owner Name', 'Shop Contact Number', 'Shop Address', 'Registration Number', 'Message', 'This Field is Optional', 'SELL', 'Welcome !', 'User Dashboard', 'New Conversations.', 'You Have a New Message.', 'No New Message.', 'Affilate Bonus!', 'Current Balance!', 'Total Item Sold!', 'Total Earnings!', 'Clear All', 'Customer', 'Favorite Sellers', 'Messages', 'Purchased Items', 'Affilate Settings', 'Affilate Withdraw', 'Affilate Code', 'Vendor Products', 'Vendor Orders', 'Withdraw', 'Settings', 'Sliders', 'Shop Description', 'Shipping Cost', 'Social Links', 'Apply For Vendor', 'Availability', 'Add To Wishlist', 'Quick View', 'Compare', 'Product Condition', 'Estimated Shipping Time', 'Watch Video', 'Add To Favorite Seller', 'Contact Seller', 'Phone Number', 'Send Message To Seller', 'Send To', 'New Message', 'Subject', 'Message', 'Send', 'Platform:', 'Region:', 'Type:', 'Login', 'To Comment', 'Favorite', 'Login With Facebook', 'Login With Google', 'You must sign in to purchase Digital Product', 'Tax', 'COMMENT', 'COMMENTS', 'Write Your Comments Here...', 'Write Your Replies Here...', 'Edit', 'Reply', 'Remove', 'Update', 'Edit Your Comment...', 'Edit Your Reply...', 'Product Compare', 'Rating', 'Vendor', 'Description', 'Available', 'Cart', 'NO PRODUCTS TO COMPARE.', 'To Review', 'You can not provide review before purchase', 'View Replies', 'Cancel', 'See More', 'See Less'),
(2, 1, 0, 'Bangla', 'হোম', 'আমার অ্যাকাউন্ট', 'আমার অ্যাকাউন্ট', 'আমার অ্যাকাউন্ট', 'মোট', 'চেকআউট', 'কার্ট টেক্সট', 'পাঠ্য', 'ব্লগ', 'ব্লগস', 'ফক', 'ফক শিরোনাম', 'ফ্যাক পৃষ্ঠা শিরোনাম', 'যোগাযোগ', 'যোগাযোগের নাম', 'ফোনে  যোগাযোগ করুন', 'যোগাযোগ ইমেইল', 'যোগাযোগ করুন', 'সাইন ইন', 'লগইন করুন', 'সাইন আপ', 'সাইন আপ করুন', 'পর্যালোচনা বিবরণ', 'পোস্টাল কোড', 'শুভ গ্রাহক', 'সাইন আপ পাসওয়ার্ড', 'সাইন আপ পাসওয়ার্ড নিশ্চিত করুন', 'ড্যাশবোর্ড', 'প্রোফাইল সম্পাদন', 'পাসওয়ার্ড রিসেট', 'সাইন আউট', 'বর্তমান পাসওয়ার্ড', 'নতুন পাসওয়ার্ড', 'নতুন পাসওয়ার্ড পুনরায় টাইপ করুন', 'পাসওয়ার্ড পরিবর্তন', 'শীর্ষ বিভাগ', 'শীর্ষ হার', 'কারটে যোগ করুন', 'সর্বশেষ ব্লগ', 'সেরা বিক্রেতা', 'বিস্তারিত দেখুন', 'সাবস্ক্রাইব করুন', 'সাবস্ক্রাইব করুন', 'ফুটের লিংক', 'যোগাযোগ  করুন', 'পাসওয়ার্ড ভুলে গেছি', 'আপনি কি পাসওয়ার্ড ভুলে গেচেন ?', 'ইমেইল', 'ক্লিক করুন', 'নতুন অ্যাকাউন্ট ক্রিয়েট করুন', 'অলরেডি অ্যাকাউন্ট আছে', 'বৈশিষ্ট্যযুক্ত', 'আউট অফ স্টক', 'শিরোনাম', 'স্থানধারক পাঠ্য সন্ধান', 'উপলভ্য', 'অনুসন্ধান ফলাফল', 'ব্লগ উত্স', 'পরিমাণ', 'আকার', 'দ্রুত পর্যালোচনা', 'ফিল্টার অপশন', 'সর্বশেষ লেখা সাজান', 'প্রাচীনতম পাঠ্যক্রম সাজান', 'সর্বনিম্ন পাঠ্য সাজান', 'সাজানোর সর্বোচ্চ', 'সমস্ত বিভাগ', 'মূল্য', 'অনুসন্ধান', 'জনপ্রিয় ট্যাগ', 'ট্যাগ', 'সম্পূর্ণ নাম', 'পেমেন্ট পদ্ধতি', 'পেপ্যাল', 'ক্রেডিট কার্ড', 'রেভিএও সাবমিত করুন', 'নো রেভিএও', 'সম্পর্কিত পণ্য', 'সিটি', 'ঠিকানা', 'ফোন নম্বর', 'ফ্যাক্স', 'আপনার রেটিং', 'মোবাইল মানি', 'ব্যাংক ওয়্যার', 'ক্যাশ অন ডেলিভারি', 'ইমেল ঠিকানা', 'আপডেট', 'স্থানধারক পাঠ্যক্রম সাবস্ক্রাইব করুন', 'আপনি সাকসেসফুল্ভাবে আপডেত করেছেন', 'পর্যালোচনা', 'সম্পূর্ণ বর্ণনা', 'ফেরত এবং নীতি', 'একটি পর্যালোচনা লিখুন', 'কার্ট মুছে ফেলুন', 'ইমেজ', 'পণ্য নাম', 'সম্পাদনা', 'পরিমাণ', 'ইউনিট মূল্য', 'সাব টোটাল', 'শপিং চালিয়ে যান', 'চেকআউটে এগিয়ে যান', 'অর্ডার', 'বিলিং বিবরণ', 'শিপিং খরচ', 'অর্ডার করুন', 'শিপ করুন', 'অন্য ঠিকানা্তে শিপ করুন', 'বাছাই করুন', 'লোকেশান পিক করুন', 'অর্ডার নোট', 'ট্রান্সাকশন', 'লোকেশান পিক করুন', 'ব্লগ বিবরণ', 'সাম্প্রতিক পোস্ট', 'ব্লগ যোগাযোগ', 'দেশ', 'দেশ  নির্বাচন করুন', 'কুপন কোড', 'কুপন টেক্সট', 'কুপন  প্রয়োগ করুন', 'ডিসকাউন্ট', 'চূড়ান্ত মোট', 'পর্যালোচনা শিরোনাম', 'ভিডিও শিরোনাম', 'এন্টার কোড', 'টিকিট', 'পণ্য বিবরণ', 'হট বিক্রয়', 'সর্বশেষ বিশেষ', 'বড় সংরক্ষণ', 'বৈশিষ্ট্যযুক্ত পণ্য', 'নতুন আগমনের পণ্য', 'এখনই কেনাকাটা করুন', 'সপ্তাহের', 'দিন', 'ঘন্টা', 'মিনিট', 'সেকেন্ড', 'ওয়েবসাইট দেখুন', 'উইশলিস্ট', 'প্রিয় পণ্য', 'অর্ডার প্রক্রিয়াকরণ', 'অর্ডার সম্পূর্ণ', 'সব দেখুন', 'সমস্ত বিভাগ', 'ফ্রন্ট পেজ উইশ লিস্ট', 'ফ্রন্ট পেজ উইশ লিস্ট শিরোনাম', 'অন্য', 'রঙ', 'দোকানের নাম', 'ষপ ডেস্ক্রিপ্সন', 'লিঙ্কড অ্যাকাউন্ট', 'সাইন ইন / আপ', 'বিক্রেতা নিবন্ধন', 'দোকান নাম', 'মালিকের নাম', 'দোকান নম্বর', 'দোকানের ঠিকানা', 'নিবন্ধন সংখ্যা', 'বিক্রেতা বার্তা', 'এই ক্ষেত্রটি ঐচ্ছিক', 'বিক্রয়', 'স্বাগতম !', 'ব্যবহারকারী ড্যাশবোর্ড', 'নতুন কথোপকথন', 'ইউ হাভে আ নিউ  কনভারসেসন', 'নো নিউ কনভারসেশন', 'আফিলেট বোনাস', 'বর্তমান ব্যালান্স', 'আইটেম বিক্রি', 'মোট উপার্জন', 'সাফ করুন', 'গ্রাহক', 'প্রিয় বিক্রেতা', 'বার্তা', 'ক্রয় আইটেম', 'অ্যাফিলিয়েট সেটিংস', 'পাঠ্য প্রত্যাহার', 'অ্যাফিলিয়েট কোড', 'বিক্রেতা পণ্য', 'বিক্রেতা আদেশ', 'ওয়িথড্রা', 'সেটিংস', 'স্লাইডার্স', 'দোকান বর্ণনা', 'শিপিং খরচ', 'সামাজিক লিংক', 'বিক্রেতার জন্য আবেদন করুন', 'প্রাপ্যতা', 'উইশলিস্ট যোগ করুন', 'দ্রুত দেখুন', 'তুলনা করুন', 'পণ্য শর্ত', 'আনুমানিক শিপিং টাইম', 'ভিডিও  দেখুন', 'প্রিয় বিক্রেতা যোগ করুন', 'যোগাযোগ বিক্রেতা', 'বিক্রেতা ফোন নম্বর', 'বিক্রেতা  বার্তা পাঠান', 'পাঠান মেস', 'বিক্রেতা নতুন বার্তা', 'বিষয়', 'বার্তা', 'পাঠান', 'Platform', 'Region', 'Type', 'লগইন', 'মন্তব্য পর্যালোচনা', 'প্রিয়', 'ফেসবুকের সাথে লগইন করুন', 'গুগল এর সাথে লগইন করুন', 'ডিজিটাল চেকআউট বার্তা', 'কর', 'মন্তব্য', 'মন্তব্য', 'মন্তব্য লিখুন', 'উত্তর লিখুন', 'সম্পাদনা', 'উত্তর', 'সরান', 'আপডেট', 'মন্তব্য সম্পাদনা করুন', 'সম্পাদনা করুন', 'পণ্য তুলনা', 'রেটিং', 'বিক্রেতা', 'বর্ণনা', 'উপলব্ধ', 'কার্ট', 'কোন পণ্য তুলনা করুন।', 'পর্যালোচনা', 'কিনুন পর্যালোচনা করতে', 'দেখুন', 'বাতিল', 'আরো দেখুন', 'কম দেখুন');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `tax`, `dp`) VALUES
(39, 14, 'BZh91AY&SYaÐZ\0\nPA@Xÿú¿ïÿô¿ÿÿú`\n\0\0\0\0\0\0\0\0\0\0\r4ÁddÂ¦04É\r\Zi\r4ÈÉM\0a4i\0\Z4Ó2\Zi\0ÂhÓ&\048i¦d4Ó#&\r4Ñ¦L\0 hpÓLÈi¦FL \Zh	£L\0@Ð*HA4M& 2<ý\0§ê¢zLÂÂ&ÐÊw_\\ÿ/±î~ý£í{ÃÍ\0ýìhT)º\Zá=ÅFqûF\"¢ô¢úÒ*ªUùÆÚ*?ÔT^ll\\`b(Ü²,hd0lf`±®¦E\Z®±u72E¦S;e8Ág§ÑdÕJU2W··¿ííà~NV¬Þ\ZzTßêxs/³«vEûò	?Ây!ÑÅêx[ÞwÀå)÷¾ó¼§ ç/­¬äs÷ÄwÎ2|NëÔØqcääWläÕv,÷;3#4´¡HØ´bØÕvfk>&oB#\'C±ËC©DÞâ²4YNÒèÂÕÅW\n¢*3¤X¨¹w)xô5dÃçx9[f±ÎÉdºj*°Þ±¢¢¤²3)Û^%¡æº1¾í0ér5fTWS6I7*Q¼¢Æk¬d\r·Ø³Y³fËËMT¥çÑu.nUÎàí9Ù#E81\"KÂßhÔøØÞÑ¦jSe¹éxJ*\rÅîfv7:ì43ñ)ÚR]DP,v·0î¬à§)\'2¦(n¨Z5/cl>çü¿&Í¦Ïg3ªú®(»¬n0]ÜdÕ¢2Å\"£tb1Ñx´e£8º4ÅÊK°¦mfÊÆJYÛh¾d±© PX¨ÌdLÍ´\\Ó,¤Ð&ÍbâÆ\rKFÃt`¬îLÉx±òdIûjTK¤(¢~e$X¨)\"HÀ´K\n)(¤¡Ih±(Rb½¢Ê*%Au,¢YARñÙ½Ë¯\"K²ÒÖZ-b%Ë^IH\\¤Q©Æ7ï(o1ÁojÍ/$?8©;T`ÐÁÌbFE2â.Ì¹vâ³È¨´n-ÔÁ¢m­ñ¸ÍÌYCfVir±&fó5¡©i77c}hË}×+sMjdYML£cyELØÌ±e¥*ØÙ4fjg¢n47ËF&R¥\'+Èþ[Öb=¯¥üàÉøG9_¼ýÚ;xcÎÑò7?gÈÿ§[ü=­#\'Ðô©Ôó®ÃÄöÀ|ï©Þ|ñëuø÷>KÜøc­ÌæYò:c¸þ¥¤î·\Z</ðº½±ço¼üÍÇÖõ<CE\rÄúÙ*s¼¡3aç¸õÇCsï}NGÉxüÈô?¨§ñ9_î8ôÅ¢ä´b&èÀÞw]$YÖ¹äq9Ôt¤ù\"¡³ôÇ+369LÙÄt,\r£ºázÄ~ã&øõ\rFÑ¼¤P¢¢O¹gäõ:bdÙE£ÅÄâq<îwã¸9ò>¨oK#ª\'¼Qî¢ã©¡Ë©kd¶Q×5K<Ê|®·ddÌÆâb<c~9£ª7Fg%EÈÄhq$Ú*1Vl£<_h¨ll;eÍñ=ÏxSÁò>æ|lÝ üÔNÆÑò¸s½RÎêZ/ÌÉï®K²6dv>ÜñQc¸æ8Ü=â$ûiRU-I\'¡¤v\"xÈn#RHó\'âòFiØÄsÇª7Å£y<ËÅá¢n=M$uÆéG¤Õ¶nu§¢wÓÆ%)ÿÏ®2NIãìûÖtÇå<Ñç:âI£¾³¥ÐNe#­ÐÒ0Øê7´b/&¤Ê1Ø¦UGÐÊ0L¼qh±2E2$ùbÑhþ7´é Ã¸¦ó#hEÚ»k>ãPÚ;å5\'ÍD¨é\'ÆÞr\',eQÂ>têÆ;±c*©UZi>XåfÞ<g¾fP÷Ýçh;ñ-Ñá%:bÆãrÅÎ1õs¾*2ÃCÂÁÃTXpÙ¢Ç=ãtp<ç1ÀÜÍðÉëR¢«ÖTXJEHT***aDQB%TX R*H¤¨ã\ZÉ6\'0êtè ñ\ZÄ±F\"ÅÒq´mó ¢Ñ¨îÆóq£Hz[7ÇmËx¢Ñ¤p320¨ÜMÁ¢o2#ÈÖ7OA?ª7êMß%É:#ÞègD+C¹K¦#s$`ûÛØ¼{îS¾TKÇCrÅãìXßSÔ=±ç=ç­ÐõG¢zdJ)R,X²Z¢ÉÿâîH§\n:BÀ', 'Stripe', 'shipto', NULL, '6', 297.11, 'txn_1DfOJzJlIV5dN9n7rmIjop1f', 'ch_1DfOJzJlIV5dN9n7UZ0Syjoy', 'm01o1544346683', 'Completed', 'junnuns@gmail.com', 'Test', 'Angola', '43534564654645', 'Address', 'Washington', '1321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2018-12-09 09:11:29', '2018-12-09 09:11:29', NULL, NULL, '$', 1, 10, 10, 0),
(40, 13, 'BZh91AY&SY³|¥\0ßP Xwø)OüD¿ÿÿú`}B@A\"¡Ì&0a0`\02i cL`Âa4À\0dÓ@Ç0À	Âi\0É¦a0		Ó\0\0	M OI¡¢mIåHÚ¦i¤MI´ÈdéäÈSÔÍA²G©$É$êGÈþgÀø.X£ä})!q²Á<Ý`÷ÁÉ»@þØ:AOéZZRñ7áL¦KÙ»ä¦TÕîaf¬)5läË§É¥ÝXÌå,\ZMÉ¹ýOÑ»Äv¿É³ÆíáÛ-Ø\"êóÃÒ®ù$xê0{pë(ô¯fÎÓíI>äõ2~§áìQD1Pè£­s$¥!JQc¸¿YQiM¥)H©ü(«KM­,õ6.E\ZDr±&$2,dX7[ 1L²eø\\Ô®ªX¡F,ÕrÃÄÔÌÔÄ5/hT¼j½Ju,õ°Íä0¢]g³F\"/,ÅÖiì©(ÁaÝG\'Y´¤©y¬Ä¦8¶iÁÍÅ°ìlÑFA\n2AÈ£±ÌP²¦L¦[¢¥eÃTÊY0Õ£	IeË0ÕvQLÌ+K¦;Ïh!àx^Qù Å!PÉf*.T¥*QQyfE#Ì¤¨\\!ô!\nVS@$H\"]e×®²Y³¤ñrs9³ÔCôZÐIð<whÁ»3,Î30YÚaS1)ºÓ*6a3äjfÓ&Ìaw¸eÉs\r¦ÍÔ³æ\\QÉÃVÕ»g\'%¦2¥*O××=³Õ0ZxÄ¢|çíÞæMÓrãß=Ï¥Á©\Zj\0à»_GµÚÂàû?ô\'ïu½Í6\Zu]ÃCp>ä6:;¥GÂZh}ç¬ç5YÑ¤\"¤å4p)&Æ\'°1\'2E{Ãzæ<åß;«ÈæçDÔÐèt/%ÊNÉ=?´Ñv\Z,yríÃ3­Àq.7Pñuw¹¸Â26?;gAÿ=Î{\Z)cjô½\'ý|ð°9îGÐsiì\\^`Ì,l3v(®Dpzà!ÚkÔõF-8ýa;Þ°ív6v4\"æbOÖ]=\rNàv\'qJygCÍ>jZryÝÓ½ÌòË©ðR^K#/#¦é Ý»Aâoc*`-Å6)Õ²élÒs\0ÐCLTÅây68}oÜ\')¡ÈÙHí~AÎ\'üðh7i={ò4xNgÔô¥w wC¤¢éÖÃWsc¡ßøÄ4cRP!F1¡ó6!úZ7ÙÉÐú&\'iéOS¢4$HÆ\0ÐAa\Z °b#«j.Áô>`àFÚb´&MÚ(çi¼ó»´ËcË<íÚµÄê´¥LÎ\'y3;¦ãcíM§%\'Üæ;§#aµâRÃaÄx7:ç+ad¼kj-<&²ÒA«#ç=Ññýþ)IJK,±j?ø»)ÂÃå(', 'Cash On Delivery', 'shipto', NULL, '16', 1684.54, NULL, NULL, 'HxZy1548061091', 'Processing', 'user@gmail.com', 'User', 'United States', '1232324353', 'Address', 'Washington, DC', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2019-01-21 08:58:11', '2019-01-21 08:58:57', NULL, NULL, '$', 1, 5, 10, 0),
(41, 16, 'BZh91AY&SY°\0ßP`Xwø)OüD¿ÿÿú`~|\0))HJ¨JÂ`\0&	¦\0\0&9À&\0L&L\0\0&M4s	L\0L&\0\0Lhæ\00M0\0\04Ð0	¥OÐ\Z2e\r4a¡G hÐ*H DÔÐÈd¦éG¦Ôzõ=FC4zª»]Ê|úÀí\n éÔ÷	÷Ä.nn½¬$ö³KOñ*^\'LÝú)VjÉ\rY«\\¬läË©Gè³£¥&ÓBònCïnó¯ÄÙçvðíìHIôyð÷+¾I&g¼u>\'Äz\n=Æíì*GÛIäêñ0hüdñCÒ¢^¡ÑGØÃ	ÁfáP.¨`î=\">¢¥JRS>û%Õ7aÂóàÜ²99*%IQMÕu¥Ju,}ÍÌN²(ÊË4\\°ë4360ZQ©hBT´JP²ÏÔÂÒQ,³n0ÌFfW³­×RQtºîg7)¤ÖRT¼ÑÁ¦;[iÅÑÉ±ó6ÑFa\Z3AÍg ¡eLL·EK4Ë\r©²a«FËaªì¢7VM%´u\0C´í¶)=¤ 0b-!ÃÑ0NéC\0\\)B­DXDJTe^\ZT.¹d³gIæäæsg¨8\"µ´~¦ØhÁv\'[3LÌe£fTÌJl´ÊJlu,ÁçhÈáFp»v\\0ÚlÝK8^eÁe.ËftnËÓR\'åã<§Â`´ð>²>Ròá^¹¡´Ý7.>SâýÈ@Ü6Cpí~ÍFcè~Ï»ü}Gë>éÔùit´êyBxÜz9ï´ÐúÏÕgF=*ÑÀ¤>¦Æ7¤27BEzÃtC¡Üóss¢jht:å\'dÒÚh»\rzßù«&&\rÉÑÄùîuN¹´ÉIL#)ÌØÁtcù¶ê?0ðéÀÄÔÔ8K6¯qîß£ÚõÈæ~F(ÉÉãïm\rð\"¡å@qyEÞ!ÔÌ÷c&Îðmâ{ÁÔìmÚ4ÒYC Ðâ|æ²éíjtyØÅ)ê\\ù©iÉìwN÷3Õ,RR¦CÁIy,L½,J¦Aõ,Î&+ce6S¹´,lgïéÒPàÞdi\"¢¦¹úËãÎdAó	Âj~M©¯à9ÿ]íD)¢Oµäûô=Æîcº%<27<\r¯£MXâ£]XÐÀï¶&cú´q[©à9Ì£÷O\"4$HÆ\0ÐAa\Z °b#¹Ä7°gºÈÀ:ÍÁ¢±í7Çblz§±»V±±8V¢ÉÄâïIfgq3tÜlr³3	´ä¤ðý\ræs6^pb69÷åp8XùÅñ©èTZxMe¥&VGÎ{]£óýþØ)IJK,±j?ø»)Â\rLX', 'Paypal', 'shipto', NULL, '2', 215.38, NULL, NULL, 'e9J41548344273', 'Pending', 'shaoneel@gmail.com', 'Test Name', 'United States', '0000000000', 'Test Address', 'Los Angels', '6600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-01-24 15:37:53', '2019-01-24 15:37:53', NULL, NULL, '$', 1, 5, 10, 0),
(42, 16, 'BZh91AY&SY±°\0!ßP Xwø)OüD¿ÿÿúP¾Ë¢³6Z44SCb`#LÂ0\0\00¦#SJ=@2\0\0\Z04C !SH hÐ\0i¦d\0\0b`#LÂ0\0\00¤2hL¦2\Z5CÑ14ýP\Z\Zhd\Z=L\ZQâûÞçÁuÖSâðB`]=ñòm±µ`MÌ Ê¹9Ì\"ÌÙÌ´-:TÊ|I¼>!6+YHé~Ì9£´\\°Íù?L÷8~í=9ïpÞ	Sâõ¸¢0zMC4Æp+Æè}q®SÐ°£+Í4µqÌ©I°qu0â¬UTTÑE©¦ìîÉQ©Fj*eloi)/VöK´°mRáTSE­Ö6ÌZWc)Ò+*ëã. D±DV\"JB¢¦4*ei0^^û´1QMlX,¦¥Öhib¹ÍaßÄKàI°ÿ-À@èZty4³´bðÉÃÆ-,(4!^Ívñç`nA)&Ã½¢\ZMÓE6ØÆ¡AMEö¡°h*\0$0i&Ò¿tÆ¢÷-§lÕ­¯\rÐÑ$÷)kèÁædÖ!Ì©ÉEC*6I)àíÞC(fÚN¶\"Ñ>lNGF®F\"juË)1·ÞszØ,ñz§¶CËªíbÒÎf¹í~µ2ªZ¥Ú\0\\Óè1âÓ:£Ç¸È}ª$t°jÚ=-ÕØé¥OrÌ^·±±¶ât6µ±ÔTy­2rb4ÑJ¡Íæ4X;Ý\r6NÉkjåÔo<ú±¾Û·þËL+t¼4\'ìÜ6H		Ìh&jæ,e¿%=M;U5jn¾³÷ôø9¯\Zu2ú:T³lXºTÞº¯å9ªPë$Èàíáüg¡K·;\\®×,´½\Zqijy2\\ïÉ´÷ºçr«k±åK5ö÷8ìv,¢© xÔ¹hÁ¢õËV*(ä¢¦ì\rTÁ0ZJ$%,¬Íª5&ÍÑT¦L\\~KñqT§±Î7jØºS[ÉÕëzÞj¬k7ØÑâÖåça]Æãº:¼éV;õ7}´jSBÒÅêÚµ)iNõÒºÄhÉtÌß×³oÈ1ÞB14Æ4Pª*¤KTRT§CC¢LçÚßJ9bZ2`µ¦øÙfníõf.Çvy2dÔè²á&LÛº<ÄhÚ6§|Szê)¶ö2Ï[R^^c7°ëu°Ü§Ibó\'UK<Y,©ÉáÀø ïð\'E­ijZâîH§\n6³@', 'Paypal', 'shipto', NULL, '1', 110.44, NULL, NULL, '2K6o1548344328', 'Pending', 'shaoneel@gmail.com', 'Test Name', 'United States', '0000000000', 'Test Address', 'Los Angels', '6600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-01-24 15:38:48', '2019-01-24 15:38:48', NULL, NULL, '$', 1, 5, 10, 0),
(43, 13, 'BZh91AY&SY«]\0!ßP Xwø)OüD¿ÿÿúP¾ËÛ26\n2ÐæÓ0\0\0\0L#$M)õ\ZF\Z\0\0ÓÑ\Z\0I©)£z£`\'¤ÑèÀ\0@9¦&4À#\0\0\0À*ÐM\ny225CÒié4ýP\ZÒ\Z?T¹`3Gð{UQ/7¸ª?h|àÞÅ$bs`fú.9Ì1	g4¤´èj¦{Ñ9´½åñ­M3¶\\QÕ,@Åù¿\\v86ã½Ãx\"cäñrB=FkÇ0hºcFá,Í8Gs|&é0NÜ3È2Q®hÊ8Á#+ð£ÉzÉ0XbÔµi¥\"QY¤G*$F §{@áµX¥°¹	,ci©+~ÍÑ$ª½¡(«Wíb¥É%X­t²b²ôªËKTh`²§B{§¸Ì®þ\0`v(¥Z	µNê©½¥2xosBZÐ¬ªô}Ð.~tÁi\"c\ndPÂå\n¢2¥PaóbÜP`^¤A,Uv`VdD\'ÆÕMgÔ@%ô¼T¨ÝCIªØ¼±I6¦1)°naäêÚ,Lf4­`Ñ0VGc\\¶×W*¿Ñë\\£Åä½±^OrÌÆ*×ãÏ%ó&Î\0 øÅw\0OÁì~ºÎsörKV(Ôb¹±ég¥=­±ä÷(³Öö3_MvGdm+dL?¼TÜÖEì$Èèô®wµ3Ï8ÔÖkkTªMç}ëVëS»þ¾êEËvÊV\'Àé62ag/ É`c¼AøKÉ´ÆY6WIÁÃ{ú|ûýR£K,ÚõS\\p±ÌBf\"æáÙ4^pwp²¼£éJ­ç6*´ÅÉ2u^©ß{YïvGÏ·k¬¨ÓÝÅË7j&ZÅJBåpÈÆÊIé$»Pä9°@B^¥TF1­&HÏd,]¬³É^QÊÉ{!³,ÕD´º·CýoSÑ3i³ì}­-.~ÓÄØq¤«SlÚÜÙ÷IZeTw­&@ÊV¿w_ßÚs¹ F\"0 ,Y	L$b`b0:}McQIÎÅ!zå)á¸ï4`íqÆõñFMT3dÌpG%\Z-S°Q!V^#úÆ#_jüt¹\"QX¬Z7®ìv.ØÒböé<W¨±~«ÃæßàG%)H¤©ø»)ÂZìà', 'Paypal', 'shipto', NULL, '1', 110.44, NULL, NULL, 'L76V1548531839', 'Pending', 'user@gmail.com', 'User', 'United States', '1232324353', 'Address', 'Washington, DC', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-01-26 19:43:59', '2019-01-26 19:43:59', NULL, NULL, '$', 1, 5, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` tinyint(100) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `text`, `pos`, `meta_tag`, `meta_description`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 1<br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 3<br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\">Title number 9<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 2, NULL, NULL),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2>Title number 1</h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 3<br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \">Title number 9<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 1, 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(3, 'Service', 'services', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 1<br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 3<br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \">Title number 9<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 3, 't,t1,t2,t3,t4', 't has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.'),
(4, 'Test', 'test', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elit est, gravida et dolor vel, sollicitudin facilisis magna. Suspendisse justo erat, interdum a mi eleifend, aliquet commodo odio. Morbi fermentum sapien nisi, convallis vehicula tortor mattis a. Sed sed erat eget lorem porttitor accumsan sed in arcu. Curabitur imperdiet, nisi ac fermentum semper, neque urna tempus odio, quis ultrices felis dolor non ipsum. Nullam quam ligula, imperdiet semper aliquet ut, consectetur eget magna. Etiam interdum massa non odio finibus, ut convallis orci porttitor. Duis eu maximus urna. Praesent dignissim, felis ut congue sagittis, nibh tellus placerat augue, suscipit porttitor enim urna blandit orci. Aliquam vestibulum velit quis tortor maximus posuere. Praesent laoreet, lectus aliquam blandit consectetur, dolor enim venenatis metus, nec sollicitudin eros quam non orci. Vestibulum tempor, diam non convallis molestie, est nibh posuere lacus, et blandit quam mauris eu diam. Suspendisse vitae ante rhoncus, molestie erat et, pulvinar dolor. Donec nec nulla libero. Vivamus lobortis magna eget mi dignissim, sed viverra diam tincidunt.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Donec in eros viverra nunc congue porta. Integer lacus urna, tristique et imperdiet et, malesuada nec felis. Ut vitae neque sed magna tristique ultricies finibus et nisl. Quisque aliquam tortor erat, id molestie lectus faucibus at. Cras in quam sit amet metus egestas mollis. Ut ligula felis, dapibus ac tortor sed, sodales ultricies nisl. Pellentesque id ipsum nec elit placerat tincidunt sed sit amet magna. Morbi vel odio in enim porta iaculis quis nec magna.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Curabitur sodales ut lorem vel cursus. Morbi pretium ut mauris non laoreet. Sed a ipsum eu nibh elementum commodo gravida iaculis metus. Ut mollis a magna ut ultrices. Nullam non vestibulum ipsum. Donec in lectus in lacus gravida sagittis. Mauris commodo dictum neque, commodo pulvinar massa vulputate vitae. Aenean eget purus vehicula, convallis elit sit amet, ullamcorper felis. Nulla sed mi porttitor, suscipit ligula in, consequat odio. Duis feugiat nulla sed erat auctor, id cursus sem ullamcorper. Nulla accumsan leo sit amet maximus aliquam. Integer at arcu vehicula massa iaculis hendrerit ac at turpis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Fusce quis sollicitudin nibh. Donec ut pulvinar nulla, nec volutpat ipsum. Duis non consequat nisi, condimentum fermentum quam. Aliquam quis efficitur nisl. Nunc gravida cursus eros in dignissim. Integer ut sodales justo. Mauris eget magna auctor, tristique nulla at, aliquet ex. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed elementum, nibh eu pharetra placerat, urna mauris congue erat, et tincidunt tortor elit nec elit. Quisque a turpis a ligula cursus dapibus sit amet sit amet metus. Fusce nisl eros, dapibus sed nunc vitae, luctus dapibus risus. Cras at mattis diam.</p>', 0, 'a,a1,a2', 'Integer sit amet erat a tellus facilisis faucibus vitae nec tellus. Nam aliquam diam et dui convallis consequat. Sed viverra finibus fermentum. Donec viverra lacus mauris. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi at ante et ipsum congue consectetur. Pellentesque sit amet nisl urna. Aenean vel sagittis sapien, hendrerit vulputate nisi. Duis rhoncus, neque ac egestas fermentum, ipsum dolor porta metus, ut rutrum sapien orci quis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed viverra, ipsum sit amet maximus elementum, turpis nisi fringilla sapien, eu volutpat sapien augue vitae dolor. Sed auctor, libero et rutrum egestas, neque velit gravida magna, in ultrices orci nibh vel orci. Etiam eget justo suscipit, efficitur dolor vitae, rutrum risus.');

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `a_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bnimg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_currency` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `about`, `faq`, `c_status`, `a_status`, `f_status`, `bn`, `bnimg`, `is_currency`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@geniusocean.com', 'Drop Us a line', '<div style=\"text-align: justify;\">Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have to be managed to isolate ancient human DNA without turning up a single bone.</div>', '<div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 1<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 2<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 3<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 style=\"box-sizing: border-box; font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">Title number 9<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '<div>\r\n<h2>What is Lorem Ipsum, Really?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>', 1, 1, 1, 'https://www.google.com/', '1525536094Banner1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `featured` varchar(255) NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `process_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `txnid`, `paid_amount`, `payment_status`, `payment_id`, `featured`, `method`, `charge_id`, `process_time`) VALUES
(5, 24, 'txn_1CAM4hJlIV5dN9n7wuIhtbMO', 10, 'Completed', 'Vo1522173546', 'no', 'Stripe', 'ch_1CAM4gJlIV5dN9n74exxkQUJ', '2018-03-27 23:59:10'),
(6, 24, 'txn_1CAM9BJlIV5dN9n7L95Yg4RU', 10, 'Completed', 'wp1522173824', 'yes', 'Stripe', 'ch_1CAM9AJlIV5dN9n7GA4akuVa', '2018-03-28 00:03:48'),
(8, 13, '9V52144530246673F', 10, 'Completed', 'nm1522227283', 'no', 'Paypal', NULL, '2018-03-28 14:54:43'),
(9, 13, '4TL74232C9274030Y', 10, 'Completed', 'YM1522227864', 'yes', 'Paypal', NULL, '2018-03-28 15:04:24'),
(10, 22, 'txn_1CAhOaJlIV5dN9n7SscUvo5B', 20, 'Completed', '6R1522255501', 'yes', 'Stripe', 'ch_1CAhOaJlIV5dN9n740fbr6Rf', '2018-03-28 22:45:08'),
(16, 7, 'txn_1CAipgJlIV5dN9n75bFj2vtM', 10, 'Completed', '1Y1522261025', 'no', 'Stripe', 'ch_1CAipfJlIV5dN9n7OlUy3ugI', '2018-03-29 00:17:12'),
(17, 10, 'txn_1CB5PGJlIV5dN9n7CCj5x5mf', 10, 'Completed', 'cw1522347801', 'yes', 'Stripe', 'ch_1CB5PFJlIV5dN9n7EL0KpPKJ', '2018-03-30 00:23:25'),
(18, 10, 'txn_1CB5VOJlIV5dN9n75O7lhQvU', 10, 'Completed', '1N1522348180', 'yes', 'Stripe', 'ch_1CB5VOJlIV5dN9n7PEuwYLuy', '2018-03-30 00:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `title`, `text`, `status`) VALUES
(2, 'Rocket', '<b>Rocket Mobile No: 01728068515<br>Rocket Reference No: 6622</b>', 1),
(3, 'bKash', '<div style=\"text-align: left;\"><b>Mobile Number: 01732716885</b></div><b><div style=\"text-align: left;\"><b>Reference Number: 778899</b></div></b>', 1),
(4, 'QuickCash', '<b>MOBILE NUMBER: 9038423432849</b>', 0),
(5, 'Easy Cash', '<b>Please Call at 98989898989</b>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `client` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `client`, `photo`, `review`) VALUES
(3, 'David Smith', '1547893517review-profile.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nullam sapien elit'),
(4, 'EBangladesh', '1547893510review-profile.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nullam sapien elit'),
(5, 'The Usual Suspects', '1547893504review-profile.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nllam sapien elit'),
(6, 'Mr. XYZ', '1547893498review-profile.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nllam sapien elit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cprice` float NOT NULL,
  `pprice` float DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `views` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `user_id`, `name`, `photo`, `size`, `color`, `cprice`, `pprice`, `description`, `stock`, `policy`, `status`, `views`, `tags`, `created_at`, `updated_at`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `file`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`) VALUES
(42, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501526product-(10)-min.jpg', NULL, NULL, 50, 100, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 19, NULL, '2018-12-21 15:47:41', '2019-02-13 05:44:45', 1, 1, 1, 1, 1, 0, 'keyword', '#f0d90a', 2, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501517product (9)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 88, 100, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 4, NULL, '2018-12-21 15:47:41', '2019-01-26 19:36:46', 1, 1, 1, 1, 1, 1, '50% OFF', '#12d928', 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501507product (8)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 88, 100, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 3, NULL, '2018-12-21 15:47:41', '2019-01-26 19:36:46', 0, 0, 1, 1, 1, 1, NULL, NULL, 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501495product (7)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 100, 120, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 5, NULL, '2018-12-21 15:47:41', '2019-01-26 19:36:46', 1, 1, 1, 1, 1, 1, NULL, NULL, 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501480product (6)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 90, 100, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 5, NULL, '2018-12-21 15:47:41', '2019-04-10 08:24:02', 1, 1, 1, 1, 0, 1, NULL, NULL, 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501468product (5)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 88, 100, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 7, NULL, '2018-12-21 15:47:41', '2019-01-27 09:43:22', 1, 1, 1, 1, 1, 1, 'keyword 1,keyword 2', '#0a3aee,#0dcc0b', 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501458product (4)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 88, 100, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 20, NULL, '2018-12-21 15:47:41', '2019-01-28 06:48:23', 1, 1, 1, 1, 1, 1, NULL, NULL, 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501431product (3)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 88, 100, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 0, 12, NULL, '2018-12-21 15:47:41', '2019-01-28 06:48:29', 1, 1, 0, 1, 0, 1, NULL, NULL, 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545501399product (2)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 88, 100, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 18, NULL, '2018-12-21 15:47:41', '2019-02-13 04:52:27', 1, 1, 0, 1, 1, 1, NULL, NULL, 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 11, 8, 14, 13, 'Here will be your product title as your wish', '1545502810product (8)-min.jpg', 'X,XL,XXL,M,L,S', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 88, 0, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', NULL, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>', 1, 31, NULL, '2018-12-21 15:47:41', '2019-01-28 06:50:39', 1, 0, 1, 1, 1, 0, NULL, NULL, 2, '3 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=hVEaL9izgjs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 29, '2018-09-01'),
(2, 29, '2018-11-18'),
(3, 29, '2018-11-18'),
(8, 29, '2018-11-18'),
(9, 28, '2018-11-18'),
(10, 28, '2018-11-18'),
(15, 30, '2018-11-18'),
(16, 30, '2018-11-18'),
(17, 30, '2018-11-18'),
(18, 30, '2018-11-18'),
(19, 30, '2018-11-18'),
(20, 27, '2018-11-18'),
(22, 29, '2018-11-18'),
(23, 28, '2018-11-18'),
(24, 30, '2018-11-18'),
(25, 30, '2018-11-18'),
(26, 30, '2018-11-18'),
(27, 30, '2018-11-18'),
(28, 21, '2018-11-18'),
(29, 7, '2018-11-18'),
(30, 21, '2018-11-19'),
(31, 1, '2018-11-19'),
(32, 27, '2018-11-19'),
(33, 27, '2018-11-20'),
(34, 22, '2018-11-22'),
(35, 22, '2018-11-22'),
(36, 22, '2018-11-22'),
(46, 27, '2018-11-25'),
(47, 29, '2018-11-25'),
(48, 29, '2018-11-25'),
(49, 29, '2018-11-25'),
(50, 29, '2018-11-25'),
(51, 28, '2018-11-25'),
(52, 28, '2018-11-25'),
(53, 22, '2018-11-25'),
(54, 26, '2018-11-25'),
(55, 29, '2018-11-25'),
(56, 27, '2018-11-25'),
(57, 27, '2018-11-25'),
(58, 27, '2018-11-25'),
(59, 27, '2018-11-25'),
(61, 30, '2018-11-25'),
(62, 13, '2018-11-25'),
(115, 1, '2018-12-08'),
(116, 1, '2018-12-08'),
(118, 29, '2018-12-08'),
(119, 29, '2018-12-08'),
(120, 29, '2018-12-08'),
(121, 29, '2018-12-08'),
(122, 29, '2018-12-08'),
(123, 29, '2018-12-08'),
(138, 30, '2018-12-08'),
(139, 30, '2018-12-08'),
(140, 29, '2018-12-08'),
(141, 30, '2018-12-08'),
(142, 30, '2018-12-08'),
(143, 30, '2018-12-08'),
(144, 30, '2018-12-08'),
(145, 30, '2018-12-08'),
(146, 30, '2018-12-08'),
(147, 30, '2018-12-08'),
(148, 30, '2018-12-08'),
(149, 29, '2018-12-08'),
(151, 29, '2018-12-08'),
(152, 29, '2018-12-08'),
(153, 29, '2018-12-08'),
(154, 29, '2018-12-08'),
(155, 29, '2018-12-08'),
(156, 30, '2018-12-08'),
(157, 30, '2018-12-08'),
(158, 30, '2018-12-08'),
(159, 30, '2018-12-08'),
(160, 30, '2018-12-08'),
(161, 30, '2018-12-08'),
(162, 30, '2018-12-08'),
(163, 30, '2018-12-08'),
(164, 30, '2018-12-08'),
(165, 30, '2018-12-08'),
(166, 30, '2018-12-08'),
(167, 30, '2018-12-08'),
(168, 30, '2018-12-08'),
(169, 30, '2018-12-08'),
(170, 30, '2018-12-08'),
(171, 30, '2018-12-08'),
(172, 30, '2018-12-08'),
(173, 30, '2018-12-08'),
(174, 30, '2018-12-08'),
(175, 30, '2018-12-08'),
(176, 30, '2018-12-08'),
(177, 30, '2018-12-08'),
(178, 30, '2018-12-08'),
(179, 30, '2018-12-08'),
(180, 30, '2018-12-08'),
(181, 30, '2018-12-08'),
(182, 30, '2018-12-08'),
(183, 30, '2018-12-08'),
(184, 30, '2018-12-08'),
(185, 30, '2018-12-08'),
(186, 30, '2018-12-08'),
(187, 30, '2018-12-08'),
(188, 30, '2018-12-08'),
(189, 30, '2018-12-08'),
(190, 30, '2018-12-08'),
(191, 30, '2018-12-08'),
(199, 29, '2018-12-08'),
(200, 29, '2018-12-08'),
(201, 29, '2018-12-08'),
(213, 30, '2018-12-08'),
(214, 30, '2018-12-08'),
(215, 30, '2018-12-08'),
(216, 30, '2018-12-08'),
(217, 29, '2018-12-08'),
(218, 29, '2018-12-08'),
(219, 29, '2018-12-08'),
(220, 30, '2018-12-08'),
(221, 30, '2018-12-08'),
(222, 30, '2018-12-08'),
(223, 30, '2018-12-08'),
(224, 30, '2018-12-08'),
(225, 30, '2018-12-08'),
(226, 30, '2018-12-08'),
(227, 30, '2018-12-08'),
(228, 30, '2018-12-08'),
(229, 30, '2018-12-08'),
(230, 30, '2018-12-08'),
(231, 30, '2018-12-08'),
(232, 30, '2018-12-08'),
(233, 30, '2018-12-08'),
(234, 30, '2018-12-08'),
(235, 30, '2018-12-08'),
(236, 30, '2018-12-08'),
(237, 30, '2018-12-08'),
(238, 30, '2018-12-08'),
(239, 30, '2018-12-08'),
(240, 30, '2018-12-08'),
(241, 30, '2018-12-08'),
(242, 30, '2018-12-08'),
(243, 30, '2018-12-08'),
(244, 30, '2018-12-08'),
(245, 30, '2018-12-08'),
(246, 30, '2018-12-08'),
(247, 30, '2018-12-08'),
(277, 30, '2018-12-09'),
(302, 30, '2018-12-09'),
(303, 30, '2018-12-09'),
(315, 4, '2018-12-19'),
(316, 29, '2018-12-19'),
(317, 29, '2018-12-19'),
(318, 29, '2018-12-19'),
(319, 29, '2018-12-19'),
(320, 29, '2018-12-19'),
(321, 29, '2018-12-19'),
(322, 29, '2018-12-19'),
(323, 29, '2018-12-19'),
(324, 29, '2018-12-19'),
(325, 29, '2018-12-19'),
(326, 29, '2018-12-19'),
(327, 29, '2018-12-19'),
(328, 29, '2018-12-19'),
(329, 29, '2018-12-19'),
(330, 29, '2018-12-19'),
(331, 29, '2018-12-19'),
(332, 29, '2018-12-19'),
(333, 29, '2018-12-19'),
(334, 30, '2018-12-19'),
(335, 30, '2018-12-19'),
(336, 30, '2018-12-19'),
(337, 30, '2018-12-19'),
(338, 30, '2018-12-19'),
(339, 30, '2018-12-19'),
(340, 30, '2018-12-19'),
(341, 30, '2018-12-19'),
(342, 30, '2018-12-19'),
(371, 30, '2018-12-19'),
(372, 30, '2018-12-19'),
(376, 28, '2018-12-19'),
(395, 1, '2018-12-20'),
(396, 1, '2018-12-20'),
(397, 1, '2018-12-20'),
(398, 1, '2018-12-20'),
(399, 1, '2018-12-20'),
(400, 5, '2018-12-20'),
(401, 1, '2018-12-20'),
(402, 1, '2018-12-20'),
(403, 1, '2018-12-20'),
(404, 1, '2018-12-20'),
(719, 48, '2018-12-22'),
(720, 48, '2018-12-22'),
(721, 48, '2018-12-22'),
(722, 49, '2018-12-22'),
(723, 49, '2018-12-22'),
(724, 50, '2018-12-23'),
(725, 50, '2018-12-23'),
(726, 42, '2018-12-23'),
(727, 42, '2018-12-23'),
(728, 49, '2018-12-23'),
(729, 49, '2018-12-23'),
(730, 51, '2018-12-23'),
(731, 51, '2018-12-23'),
(732, 51, '2018-12-23'),
(733, 51, '2018-12-23'),
(734, 51, '2018-12-23'),
(735, 43, '2018-12-23'),
(736, 42, '2018-12-23'),
(737, 44, '2018-12-23'),
(738, 45, '2018-12-23'),
(739, 45, '2018-12-23'),
(740, 45, '2018-12-23'),
(741, 49, '2018-12-23'),
(742, 49, '2018-12-23'),
(743, 50, '2018-12-23'),
(744, 50, '2018-12-23'),
(745, 50, '2018-12-23'),
(746, 50, '2018-12-23'),
(747, 50, '2018-12-23'),
(748, 50, '2018-12-23'),
(749, 50, '2018-12-23'),
(750, 50, '2018-12-23'),
(751, 50, '2018-12-23'),
(752, 51, '2019-01-19'),
(753, 48, '2019-01-19'),
(754, 48, '2019-01-19'),
(755, 50, '2019-01-20'),
(756, 46, '2019-01-22'),
(757, 46, '2019-01-22'),
(758, 50, '2019-01-22'),
(759, 50, '2019-01-22'),
(760, 51, '2019-01-22'),
(761, 49, '2019-01-22'),
(762, 51, '2019-01-22'),
(763, 51, '2019-01-27'),
(764, 51, '2019-01-27'),
(765, 51, '2019-01-27'),
(766, 51, '2019-01-27'),
(767, 51, '2019-01-27'),
(768, 51, '2019-01-27'),
(769, 51, '2019-01-27'),
(770, 51, '2019-01-27'),
(771, 47, '2019-01-27'),
(772, 47, '2019-01-27'),
(773, 42, '2019-01-27'),
(774, 47, '2019-01-27'),
(775, 47, '2019-01-27'),
(776, 47, '2019-01-27'),
(777, 51, '2019-01-28'),
(778, 51, '2019-01-28'),
(779, 51, '2019-01-28'),
(780, 50, '2019-02-13'),
(781, 42, '2019-02-13'),
(782, 42, '2019-02-13'),
(783, 42, '2019-02-13'),
(784, 46, '2019-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(3, 14, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sollicitudin erat est, et mollis massa pharetra at. Fusce interdum leo nec faucibus elementum. Nam rutrum justo vel nisl porttitor, tempus convallis ex pellentesque. Nullam gravida velit eu magna dapibus pellentesque. Fusce euismod enim et venenatis ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque efficitur dapibus tortor commodo aliquet.', '2018-12-08 09:18:07', '2018-12-08 09:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `text`, `photo`) VALUES
(2, 'FREE SHIPPING', 'Free Shipping All Order', '1539837332delivery-van.png'),
(3, 'PAYMENT METHOD', 'Secure Payment', '1539837356checked.png'),
(4, '30 DAY RETURNS', '30-Day Return Policy', '1539837376refresh-button.png'),
(5, 'HELP CENTER', '24/7 Support System', '1539837442customer-support.png');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_anime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_anime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `photo`, `position`, `title_size`, `title_color`, `title_anime`, `desc_size`, `desc_color`, `desc_anime`) VALUES
(1, 'Slider Title 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry', '1534412737Slider-image.jpg', 'slide_style_left', '72', '#bd0954', 'fadeInLeft', '19', '#920000', 'fadeInLeft'),
(2, 'Slider Title Test', 'ttLorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry', '1534412745Slider-image3.jpg', 'slide_style_center', '74', '#bd497a', 'rollIn', '21', '#00c021', 'flipInY'),
(3, 'Slider Title 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry', '1534412750Slider-image4.jpg', 'slide_style_right', '72', '#e6cf06', 'flipInX', '19', '#b30000', 'fadeInDown');

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `fcheck` tinyint(10) DEFAULT NULL,
  `gcheck` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sociallinks`
--

INSERT INTO `sociallinks` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `f_status`, `g_status`, `t_status`, `l_status`, `fcheck`, `gcheck`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/updated/kingfinal/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/updated/kingfinal/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) UNSIGNED NOT NULL,
  `category_id` int(191) UNSIGNED NOT NULL,
  `sub_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `sub_name`, `sub_slug`, `status`) VALUES
(8, 11, 'Sub Category 1', 'sub1', 1),
(9, 11, 'Sub Category 2', 'sub2', 1),
(10, 11, 'Sub Category 3', 'sub3', 1),
(11, 11, 'Sub Category 4', 'sub4', 1),
(12, 12, 'Sub Category 5', 'sub5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(1, 'Basic', '$', 'USD', 0, 30, 1, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>');

-- --------------------------------------------------------

--
-- Table structure for table `sub_replies`
--

CREATE TABLE `sub_replies` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `reply_id` int(191) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `residency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `shop_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(10) NOT NULL DEFAULT '0',
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `f_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_check` tinyint(5) DEFAULT '0',
  `g_check` tinyint(5) DEFAULT '0',
  `t_check` tinyint(5) DEFAULT '0',
  `l_check` tinyint(5) DEFAULT '0',
  `shipping_cost` int(191) NOT NULL DEFAULT '0',
  `current_balance` int(191) NOT NULL DEFAULT '0',
  `affilate_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double DEFAULT '0',
  `date` date DEFAULT NULL,
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `residency`, `city`, `address`, `phone`, `fax`, `email`, `password`, `created_at`, `updated_at`, `is_provider`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `is_vendor`, `shop_details`, `f_url`, `g_url`, `t_url`, `l_url`, `f_check`, `g_check`, `t_check`, `l_check`, `shipping_cost`, `current_balance`, `affilate_code`, `affilate_income`, `date`, `mail_sent`) VALUES
(13, 'User', '1547699934500x600-size.jpg', '1234', 'Rain', 'Washington, DC', 'Address', '1232324353', '23123121', 'user@gmail.com', '$2y$10$80VuwakMupDVA21UQ37S1.igEVvP7QCP0/nBtuK78nBqkXfz3meZW', '2018-03-07 18:05:44', '2019-02-13 05:16:11', 0, 'Laravel Store', 'Alexander J Curtis', '6434534432423', '39 D/A, Washington DC.', '5345345435', 'Hiiiiii', 2, '<div style=\"text-align: justify;\"><b style=\"font-family: Roboto, sans-serif;\">Lorem</b><span style=\"font-family: Roboto, sans-serif;\"> ipsum dolor sit amet, consectetur adipisicing elit. Error hic unde soluta necessitatibus ad odit, dolores in. Omnis laborum, et nisi!7</span></div>', 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 1, 1, 1, 1, 5, 0, '33899bafa30292165430cb90b545728a', 0, '2021-06-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL DEFAULT '0',
  `conversation1_id` int(191) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 13, 1, 'Basic', '$', 'USD', 0, 30, 1, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-01-28 16:47:08', '2019-01-28 16:47:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(1, 13, 40, 5, 477, 'HxZy1548061091', 'processing'),
(2, 13, 40, 11, 1049, 'HxZy1548061091', 'processing'),
(3, 13, 41, 1, 95, 'e9J41548344273', 'pending'),
(4, 13, 41, 1, 95, 'e9J41548344273', 'pending'),
(5, 13, 42, 1, 95, '2K6o1548344328', 'pending'),
(6, 13, 43, 1, 95, 'L76V1548531839', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_sliders`
--

CREATE TABLE `vendor_sliders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_sliders`
--

INSERT INTO `vendor_sliders` (`id`, `user_id`, `photo`) VALUES
(5, 13, '1547892877flower-4.jpg'),
(6, 13, '1547892868flower-3.jpg'),
(7, 13, '1547892861flower-2.jpg'),
(15, 13, '1547892853flower-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(135, 13, 50),
(136, 13, 49),
(137, 13, 48),
(138, 13, 42);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bloodgroups_slug_unique` (`cat_slug`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_replies`
--
ALTER TABLE `sub_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `donors_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_sliders`
--
ALTER TABLE `vendor_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_replies`
--
ALTER TABLE `sub_replies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor_sliders`
--
ALTER TABLE `vendor_sliders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
