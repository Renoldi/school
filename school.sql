-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 08:18 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'X', 1, '2022-03-27 21:22:18', '2022-03-27 21:22:18', '0000-00-00 00:00:00'),
(2, 'Xi', 1, '2022-03-27 21:22:18', '2022-03-27 21:22:18', '0000-00-00 00:00:00'),
(3, 'XII', 1, '2022-03-27 21:22:18', '2022-03-27 21:22:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`) VALUES
(1, 'IPA', 1),
(2, 'IPS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `questionImage` varchar(50) DEFAULT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `point` int(2) NOT NULL,
  `answer` char(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `classId`, `subjectId`, `question`, `questionImage`, `a`, `b`, `c`, `d`, `e`, `point`, `answer`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:29', '2022-03-27 21:22:29', '0000-00-00 00:00:00'),
(2, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:29', '2022-03-27 21:22:29', '0000-00-00 00:00:00'),
(3, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:29', '2022-03-27 21:22:29', '0000-00-00 00:00:00'),
(4, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(5, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(6, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(7, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(8, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(9, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(10, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(11, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(12, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'c', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(13, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(14, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(15, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'a', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(16, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(17, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'a', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(18, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(19, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(20, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(21, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(22, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(23, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(24, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(25, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(26, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(27, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'c', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(28, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'a', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(29, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(30, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(31, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(32, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(33, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(34, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(35, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(36, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(37, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(38, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(39, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'c', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(40, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(41, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'a', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(42, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(43, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'd', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(44, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(45, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'e', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(46, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'c', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00'),
(47, 3, 10, 'Salah  satu  faktor  yang  menyebabkan  sejarah  tidak  dapat  dipisahkan  dari  kehidupan manusia adalah …', NULL, 'manusia merupakan penggerak sejarah', 'sejarah merupakan ilmu yang mempelajari manusia', 'manusia selalu mengalami perubahan di dalam kehidupannya', 'sejarah selalu membahas kehidupan manusia dan lingkungannya', 'Sesuatu bisa dikatakan sebagai sejarah jika terdapat saksi dan bukti', 0, 'b', 1, '2022-03-27 21:22:30', '2022-03-27 21:22:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hoomrooms`
--

CREATE TABLE `hoomrooms` (
  `id` int(11) NOT NULL,
  `roomId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-03-25-112730', 'App\\Database\\Migrations\\Classes', 'default', 'App', 1648389101, 1),
(2, '2022-03-25-112810', 'App\\Database\\Migrations\\Exams', 'default', 'App', 1648389101, 1),
(3, '2022-03-25-112843', 'App\\Database\\Migrations\\Hoomrooms', 'default', 'App', 1648389101, 1),
(4, '2022-03-25-112858', 'App\\Database\\Migrations\\Resultexams', 'default', 'App', 1648389101, 1),
(5, '2022-03-25-112910', 'App\\Database\\Migrations\\Rooms', 'default', 'App', 1648389101, 1),
(6, '2022-03-25-112923', 'App\\Database\\Migrations\\Scheduleexams', 'default', 'App', 1648389101, 1),
(7, '2022-03-25-112936', 'App\\Database\\Migrations\\Students', 'default', 'App', 1648389101, 1),
(8, '2022-03-25-112948', 'App\\Database\\Migrations\\Subjects', 'default', 'App', 1648389101, 1),
(9, '2022-03-25-112959', 'App\\Database\\Migrations\\Teachers', 'default', 'App', 1648389101, 1),
(10, '2022-03-25-150223', 'App\\Database\\Migrations\\Privileges', 'default', 'App', 1648389101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'superadmin', 1, '2022-03-27 21:22:46', '2022-03-27 21:22:46', '0000-00-00 00:00:00'),
(2, 'admin', 1, '2022-03-27 21:22:46', '2022-03-27 21:22:46', '0000-00-00 00:00:00'),
(3, 'editor', 1, '2022-03-27 21:22:46', '2022-03-27 21:22:46', '0000-00-00 00:00:00'),
(4, 'teacher', 1, '2022-03-27 21:22:46', '2022-03-27 21:22:46', '0000-00-00 00:00:00'),
(5, 'student', 1, '2022-03-27 21:22:46', '2022-03-27 21:22:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `resultexams`
--

CREATE TABLE `resultexams` (
  `id` int(11) UNSIGNED NOT NULL,
  `studentId` int(11) NOT NULL,
  `examId` int(11) NOT NULL,
  `choise` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resultexams`
--

INSERT INTO `resultexams` (`id`, `studentId`, `examId`, `choise`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 360, 10, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(2, 196, 26, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(3, 373, 11, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(4, 233, 13, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(5, 212, 7, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(6, 256, 27, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(7, 299, 6, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(8, 251, 21, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(9, 359, 12, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(10, 345, 27, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(11, 280, 1, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(12, 229, 13, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(13, 335, 19, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(14, 309, 26, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(15, 294, 5, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(16, 369, 22, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(17, 212, 4, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(18, 226, 2, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(19, 311, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(20, 267, 19, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(21, 329, 10, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(22, 229, 9, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(23, 204, 6, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(24, 208, 15, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(25, 338, 22, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(26, 273, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(27, 293, 4, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(28, 253, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(29, 179, 9, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(30, 336, 21, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(31, 228, 26, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(32, 292, 17, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(33, 248, 20, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(34, 219, 11, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(35, 231, 19, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(36, 197, 27, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(37, 195, 19, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(38, 374, 20, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(39, 202, 25, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(40, 264, 10, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(41, 192, 6, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(42, 344, 25, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(43, 166, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(44, 190, 22, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(45, 248, 27, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(46, 207, 8, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(47, 264, 16, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(48, 374, 7, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(49, 307, 19, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(50, 177, 7, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(51, 193, 25, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(52, 355, 10, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(53, 288, 17, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(54, 383, 19, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(55, 229, 15, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(56, 365, 22, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(57, 279, 6, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(58, 351, 24, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(59, 362, 17, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(60, 226, 16, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(61, 247, 19, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(62, 360, 14, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(63, 283, 7, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(64, 178, 1, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(65, 243, 19, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(66, 371, 12, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(67, 257, 5, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(68, 199, 24, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(69, 336, 12, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(70, 224, 22, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(71, 323, 19, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(72, 326, 8, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(73, 389, 26, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(74, 221, 12, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(75, 389, 13, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(76, 220, 14, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(77, 305, 13, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(78, 315, 4, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(79, 346, 13, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(80, 317, 25, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(81, 353, 22, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(82, 346, 23, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(83, 277, 6, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(84, 216, 25, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(85, 156, 27, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(86, 301, 16, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(87, 289, 22, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(88, 262, 26, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(89, 227, 1, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(90, 324, 7, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(91, 286, 16, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(92, 180, 24, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(93, 213, 3, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(94, 325, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(95, 313, 15, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(96, 159, 9, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(97, 235, 24, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(98, 233, 10, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(99, 344, 2, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(100, 289, 7, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(101, 259, 9, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(102, 294, 21, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(103, 261, 26, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(104, 305, 9, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(105, 279, 4, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(106, 325, 16, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(107, 275, 27, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(108, 159, 20, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(109, 333, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(110, 234, 19, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(111, 160, 21, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(112, 366, 4, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(113, 156, 13, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(114, 223, 11, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(115, 210, 3, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(116, 387, 3, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(117, 296, 1, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(118, 322, 17, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(119, 319, 7, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(120, 208, 4, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(121, 364, 23, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(122, 366, 27, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(123, 261, 18, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(124, 295, 24, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(125, 390, 22, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(126, 370, 26, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(127, 368, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(128, 357, 9, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(129, 372, 6, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(130, 211, 20, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(131, 360, 3, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(132, 161, 10, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(133, 229, 3, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(134, 372, 18, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(135, 302, 11, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(136, 262, 23, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(137, 253, 11, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(138, 313, 20, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(139, 259, 18, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(140, 369, 17, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(141, 220, 22, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(142, 382, 14, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(143, 389, 2, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(144, 268, 14, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(145, 290, 6, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(146, 230, 18, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(147, 175, 19, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(148, 380, 4, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(149, 284, 19, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(150, 226, 22, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(151, 182, 17, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(152, 365, 25, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(153, 350, 17, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(154, 362, 12, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(155, 242, 17, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(156, 156, 8, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(157, 351, 19, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(158, 196, 19, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(159, 278, 4, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(160, 328, 19, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(161, 230, 5, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(162, 284, 26, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(163, 224, 12, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(164, 294, 10, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(165, 374, 2, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(166, 370, 11, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(167, 296, 25, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(168, 185, 7, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(169, 253, 20, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(170, 383, 15, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(171, 301, 27, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(172, 238, 15, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(173, 374, 27, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(174, 275, 5, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(175, 322, 4, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(176, 267, 20, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(177, 329, 7, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(178, 324, 22, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(179, 327, 23, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(180, 165, 21, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(181, 242, 8, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(182, 383, 16, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(183, 195, 1, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(184, 331, 17, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(185, 342, 21, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(186, 313, 11, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(187, 293, 16, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(188, 386, 17, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(189, 158, 4, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(190, 183, 2, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(191, 252, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(192, 350, 14, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(193, 311, 17, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(194, 208, 16, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(195, 209, 8, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(196, 322, 6, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(197, 201, 19, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(198, 195, 27, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(199, 254, 24, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(200, 258, 11, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(201, 364, 12, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(202, 272, 6, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(203, 319, 1, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(204, 241, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(205, 266, 27, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(206, 252, 2, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(207, 337, 23, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(208, 359, 18, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(209, 155, 3, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(210, 333, 5, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(211, 367, 16, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(212, 289, 3, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(213, 282, 22, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(214, 264, 12, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(215, 168, 16, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(216, 273, 1, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(217, 386, 15, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(218, 171, 19, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(219, 382, 5, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(220, 167, 3, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(221, 295, 22, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(222, 160, 20, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(223, 367, 18, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(224, 162, 17, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(225, 373, 7, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(226, 300, 17, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(227, 238, 14, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(228, 251, 4, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(229, 365, 15, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(230, 334, 12, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(231, 233, 10, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(232, 372, 4, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(233, 275, 15, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(234, 274, 14, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(235, 249, 8, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(236, 286, 11, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(237, 288, 11, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(238, 191, 11, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(239, 159, 7, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(240, 218, 8, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(241, 306, 25, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(242, 270, 4, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(243, 327, 24, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(244, 223, 16, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(245, 297, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(246, 377, 18, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(247, 203, 24, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(248, 214, 11, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(249, 171, 12, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(250, 219, 19, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(251, 322, 12, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(252, 284, 4, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(253, 343, 9, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(254, 390, 10, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(255, 348, 5, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(256, 336, 23, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(257, 386, 17, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(258, 334, 11, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(259, 306, 13, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(260, 310, 26, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(261, 357, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(262, 213, 10, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(263, 156, 8, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(264, 237, 9, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(265, 318, 14, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(266, 303, 11, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(267, 306, 8, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(268, 235, 15, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(269, 188, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(270, 378, 23, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(271, 285, 20, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(272, 391, 1, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(273, 392, 23, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(274, 190, 8, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(275, 353, 18, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(276, 272, 10, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(277, 188, 10, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(278, 370, 24, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(279, 347, 1, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(280, 208, 1, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(281, 262, 8, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(282, 160, 27, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(283, 345, 25, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(284, 171, 16, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(285, 247, 20, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(286, 197, 27, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(287, 229, 13, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(288, 362, 6, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(289, 238, 2, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(290, 367, 19, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(291, 188, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(292, 262, 2, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(293, 323, 26, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(294, 325, 20, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(295, 385, 2, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(296, 331, 21, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(297, 372, 27, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(298, 280, 8, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(299, 208, 8, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(300, 389, 3, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(301, 175, 5, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(302, 229, 27, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(303, 295, 14, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(304, 278, 5, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(305, 372, 24, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(306, 164, 24, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(307, 383, 9, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(308, 259, 20, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(309, 338, 4, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(310, 274, 1, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(311, 364, 5, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(312, 254, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(313, 282, 19, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(314, 274, 12, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(315, 157, 13, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(316, 164, 6, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(317, 188, 22, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(318, 285, 12, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(319, 280, 15, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(320, 172, 21, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(321, 177, 22, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(322, 380, 5, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(323, 340, 6, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(324, 155, 5, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(325, 377, 23, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(326, 192, 7, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(327, 181, 19, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(328, 267, 19, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(329, 211, 6, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(330, 333, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(331, 322, 21, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(332, 252, 3, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(333, 242, 26, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(334, 370, 18, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(335, 329, 27, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(336, 193, 27, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(337, 239, 11, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(338, 215, 23, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(339, 231, 17, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(340, 166, 10, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(341, 330, 25, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(342, 253, 9, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(343, 290, 16, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(344, 185, 21, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(345, 182, 7, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(346, 373, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(347, 330, 18, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(348, 353, 22, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(349, 327, 6, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(350, 309, 20, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(351, 186, 13, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(352, 219, 24, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(353, 327, 27, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(354, 180, 15, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(355, 169, 16, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(356, 315, 7, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(357, 373, 10, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(358, 300, 26, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(359, 347, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(360, 225, 1, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(361, 358, 7, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(362, 341, 21, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(363, 314, 11, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(364, 326, 24, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(365, 215, 23, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(366, 169, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(367, 215, 9, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(368, 158, 16, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(369, 322, 15, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(370, 354, 7, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(371, 180, 17, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(372, 386, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(373, 292, 23, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(374, 320, 4, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(375, 232, 14, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(376, 292, 10, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(377, 213, 15, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(378, 343, 21, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(379, 280, 27, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(380, 340, 8, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(381, 164, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(382, 258, 20, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(383, 238, 25, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(384, 216, 5, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(385, 361, 10, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(386, 244, 21, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(387, 213, 8, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(388, 192, 20, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(389, 216, 7, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(390, 226, 14, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(391, 321, 12, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(392, 346, 3, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(393, 176, 4, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(394, 177, 1, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(395, 344, 6, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(396, 158, 7, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(397, 328, 4, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(398, 221, 3, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(399, 362, 27, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(400, 234, 17, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(401, 195, 3, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(402, 223, 27, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(403, 158, 9, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(404, 226, 5, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(405, 319, 2, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(406, 192, 14, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(407, 207, 1, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(408, 197, 21, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(409, 220, 24, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(410, 245, 3, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(411, 312, 24, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(412, 293, 4, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(413, 295, 10, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(414, 392, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(415, 387, 7, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(416, 239, 1, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(417, 320, 27, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(418, 218, 5, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(419, 216, 9, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(420, 234, 18, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(421, 201, 13, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(422, 166, 10, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(423, 193, 9, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(424, 319, 13, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(425, 188, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(426, 200, 1, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(427, 250, 27, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(428, 284, 21, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(429, 280, 1, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(430, 192, 26, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(431, 170, 22, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(432, 294, 22, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(433, 181, 10, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(434, 212, 15, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(435, 167, 7, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(436, 247, 19, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(437, 303, 16, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(438, 282, 2, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(439, 243, 15, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(440, 305, 9, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(441, 161, 23, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(442, 186, 16, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(443, 228, 13, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(444, 321, 18, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(445, 316, 5, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(446, 382, 25, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(447, 373, 27, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(448, 310, 21, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(449, 339, 26, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(450, 186, 24, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(451, 214, 9, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(452, 242, 7, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(453, 290, 14, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(454, 371, 20, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(455, 342, 3, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(456, 277, 27, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(457, 248, 27, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(458, 300, 8, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(459, 210, 4, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(460, 368, 20, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(461, 304, 23, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(462, 390, 1, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(463, 388, 1, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(464, 257, 25, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(465, 344, 6, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(466, 202, 23, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(467, 286, 1, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(468, 303, 26, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(469, 294, 16, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(470, 306, 8, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(471, 315, 15, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(472, 256, 8, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(473, 169, 8, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(474, 239, 12, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(475, 190, 7, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(476, 275, 19, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(477, 237, 3, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(478, 378, 14, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(479, 166, 13, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(480, 262, 18, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(481, 327, 1, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(482, 157, 3, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(483, 304, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(484, 359, 8, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(485, 313, 23, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(486, 302, 23, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(487, 352, 5, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(488, 311, 19, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(489, 335, 5, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(490, 322, 12, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(491, 326, 19, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(492, 326, 13, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(493, 238, 9, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(494, 227, 11, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(495, 186, 27, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(496, 388, 25, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(497, 334, 4, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(498, 296, 2, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(499, 256, 19, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(500, 355, 26, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(501, 283, 2, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(502, 231, 7, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(503, 217, 4, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(504, 383, 6, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(505, 247, 14, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(506, 263, 17, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(507, 203, 3, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(508, 219, 9, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(509, 364, 8, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(510, 334, 1, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(511, 291, 22, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(512, 268, 20, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(513, 169, 26, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(514, 188, 3, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(515, 215, 12, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(516, 181, 2, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(517, 172, 4, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(518, 367, 20, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(519, 239, 10, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(520, 390, 18, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(521, 158, 12, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(522, 203, 10, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(523, 277, 26, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(524, 157, 23, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(525, 278, 26, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(526, 194, 12, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(527, 379, 21, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(528, 365, 15, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(529, 368, 4, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(530, 238, 4, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(531, 352, 11, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(532, 230, 4, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(533, 378, 1, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(534, 225, 18, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(535, 272, 13, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(536, 176, 8, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(537, 279, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(538, 257, 18, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(539, 319, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(540, 253, 12, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(541, 377, 8, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(542, 227, 10, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(543, 252, 18, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(544, 253, 15, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(545, 198, 2, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(546, 207, 12, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(547, 159, 13, 'd', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(548, 245, 21, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(549, 196, 3, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(550, 222, 5, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(551, 297, 9, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00');
INSERT INTO `resultexams` (`id`, `studentId`, `examId`, `choise`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(552, 244, 17, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(553, 311, 26, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(554, 361, 23, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(555, 287, 19, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(556, 208, 25, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(557, 225, 7, 'e', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(558, 391, 5, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(559, 285, 23, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(560, 254, 19, 'c', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(561, 342, 20, 'a', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00'),
(562, 275, 18, 'b', 0, '2022-03-27 21:23:16', '2022-03-27 21:23:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `status`, `departmentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'IPA 1', 1, 1, '2022-03-27 21:23:52', '2022-03-27 21:23:52', '0000-00-00 00:00:00'),
(2, 'IPA 2', 1, 1, '2022-03-27 21:23:52', '2022-03-27 21:23:52', '0000-00-00 00:00:00'),
(3, 'IPA 3', 1, 1, '2022-03-27 21:23:52', '2022-03-27 21:23:52', '0000-00-00 00:00:00'),
(4, 'IPA 4', 1, 1, '2022-03-27 21:23:52', '2022-03-27 21:23:52', '0000-00-00 00:00:00'),
(5, 'IPS 1', 1, 2, '2022-03-27 21:23:52', '2022-03-27 21:23:52', '0000-00-00 00:00:00'),
(6, 'IPS 2', 1, 2, '2022-03-27 21:23:52', '2022-03-27 21:23:52', '0000-00-00 00:00:00'),
(7, 'IPS 3', 1, 2, '2022-03-27 21:23:52', '2022-03-27 21:23:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `scheduleexams`
--

CREATE TABLE `scheduleexams` (
  `id` int(11) UNSIGNED NOT NULL,
  `subjectId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `classId` int(11) NOT NULL,
  `roomId` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `privilegeId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `nisn`, `email`, `name`, `image`, `password`, `classId`, `roomId`, `gender`, `status`, `privilegeId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '1000000000', 'admins@admin.com', 'ABDYAN ABDAN MAHANA', 'avatar.png', '$2y$10$RGY8OCYZg9KGN4LoHadUh.T44vuAXI4l0s5BxWHNEPGwdjo41iCcm', 1, 1, 'L', 0, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(2, '1000000001', 'adehayati929@man.com', 'ADE HAYATI', 'avatar.png', '$2y$10$UeLHxsbbHR/fO56wo4V.OOZFVDul1MGRso0k/bx.Bsb3XgoOS0mUO', 1, 1, 'P', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(3, '1000000002', 'ahmadqaismughitsulhaq712@man.com', 'AHMAD QAIS MUGHITSULHAQ', 'avatar.png', '$2y$10$aLnirYRrqVwPyEbfFVpoaO3CT0.wHC3mBF6YgYC5TokY5jUR1I/zG', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(4, '1000000003', 'aidilhadi776@man.com', 'AIDIL HADI', 'avatar.png', '$2y$10$mASWRnZUAJuxAuCODZw6IOVIDrT53wDmyEJKpqYPA7Px9QeO2YX8e', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(5, '1000000004', 'andiarba469@man.com', 'ANDI ARBA', 'avatar.png', '$2y$10$7sin0e9Jf8oI/wCBaSfJe.0F0RUGc0pE6PNxl2wn38D0DgdB1ASAa', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(6, '1000000005', 'chainaramadana334@man.com', 'CHAINA RAMADANA', 'avatar.png', '$2y$10$yB6F20ysacBYMpkYrb1e8ukeCqBe0k08TL4fIRcKBhaOMeiEqJV..', 1, 1, 'P', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(7, '1000000006', 'dimasoktavian566@man.com', 'DIMAS OKTAVIAN', 'avatar.png', '$2y$10$6u7qMnwmgH0gW6A4xqLMduy6TGruvq4ZmVCSSBMaePU1uzs4Gx.uG', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(8, '1000000007', 'duhaindrawansyah727@man.com', 'DUHA INDRA WANSYAH', 'avatar.png', '$2y$10$VBa3FMavXkfMpnG8yJTAhOZT2rR5xCoh414xCxj9V9fTjsju0UTRC', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(9, '1000000008', 'erwinmaulana117@man.com', 'ERWIN MAULANA', 'avatar.png', '$2y$10$JWghk8chfVPHtXnt3P6OtuvYHcABKWCMbY/ye2EZ9gnnu2A327BN.', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(10, '1000000009', 'fauzanalkhairi273@man.com', 'FAUZAN AL KHAIRI', 'avatar.png', '$2y$10$BKjlkySgWdYdgD.RE6H7m.2sUC19V7RIiTSSe7NFAi6CVkbvUYZWW', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(11, '1000000010', 'fihadianfitra199@man.com', 'FIHADIAN FITRA', 'avatar.png', '$2y$10$/wVpq1qMc9slmZqmNA5NXOyrwfe5HcEBHYyfzbSHcFwCdZL/8UzDu', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(12, '1000000011', 'futriyasmini437@man.com', 'FUTRI YASMINI', 'avatar.png', '$2y$10$2zp1Wm0EaLWH9bEykbfxSuA7a937Gsj6Ra6sF3zcg4JeBqvGr.6yy', 1, 1, 'P', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(13, '1000000012', 'ikhsanzikri43@man.com', 'IKHSAN ZIKRI', 'avatar.png', '$2y$10$yE/Nko1g07IgRfpSLgBnjuVwQ6Cw5rck3NAySmzjVFqiZFGK1xj0q', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(14, '1000000013', 'iqbalaimulhusni946@man.com', 'IQBAL AIMUL HUSNI', 'avatar.png', '$2y$10$1ohTa.t2I0yCjhMG8plHeeLt/j1lixRKB.sv9vKpvEH7b6NHjYsS.', 1, 1, 'L', 1, 5, '2022-03-28 12:25:23', '2022-03-28 12:25:23', '0000-00-00 00:00:00'),
(15, '1000000014', 'maulandara175@man.com', 'MAULAN DARA', 'avatar.png', '$2y$10$NqD2cuCOAGQaREYzugvFp.UIIdaBZKoqRqd30Z4WzLIhVxqa5nNp.', 1, 1, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(16, '1000000015', 'miftahulrifkimy545@man.com', 'MIFTAHUL RIFKI MY', 'avatar.png', '$2y$10$zEEVr7hAebg7I3m0JrXm8O7HQYop.qChG21t0Rkq3neBqCr4buB5.', 1, 1, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(17, '1000000016', 'muhammadraoshah394@man.com', 'MUHAMMAD RAOSHAH', 'avatar.png', '$2y$10$tT3ecz6XQjIRWcqffCz8puZFcWFdIWNbNL2dfbK3AI9g3II9xS/PK', 1, 1, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(18, '1000000017', 'shirathalfadhla160@man.com', 'SHIRATHAL FADHLA', 'avatar.png', '$2y$10$4d.mJU2Sv7a85/dtAZuRJenfqCp4wTDzGXi7thR2OjI8v1YQneYtq', 1, 1, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(19, '1000000018', 'nabilabibesmi762@man.com', 'NABILA BIBESMI', 'avatar.png', '$2y$10$KKF02wNGeNjUhZ16/Y2RfOdcx4/JJkBcJa.gbR9mQmpHwM4sanSxS', 1, 1, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(20, '1000000019', 'naufalfadhil781@man.com', 'NAUFAL FADHIL', 'avatar.png', '$2y$10$C4gjVNpMLnUSoDE84zOSSOEDRXF9KFlc5i2UfROu6c6bfXY9zE3zS', 1, 1, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(21, '1000000020', 'niantahafidza645@man.com', 'NIANTA HAFIDZA', 'avatar.png', '$2y$10$gUgQmR.q8rwOSWl/ELXt.eQERLRx9mNmT1YBQg2.RCL7BQh4zNUEO', 1, 1, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(22, '1000000021', 'relifwantona998@man.com', 'RELIF WANTONA', 'avatar.png', '$2y$10$S3UezxPyk67SSu6sHVVJm.U/VwaozoFlgZbFNOpDIBYwa3/fKRdX.', 1, 1, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(23, '1000000022', 'rendifebriandi72@man.com', 'RENDI FEBRIANDI', 'avatar.png', '$2y$10$NP.BISYhwNBGKnBl5NSLnu2q7HxSeRUvUy4OAdfq78XLm3/BCg.8y', 1, 1, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(24, '1000000023', 'rezkimahara285@man.com', 'REZKI MAHARA', 'avatar.png', '$2y$10$C60Bnbqtk2YE/XE6khAlS.Acz9PmgePA9SYr/ewsXy7a4fI7pGZpe', 1, 1, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(25, '1000000024', 'sismacantikaputri470@man.com', 'SISMA CANTIKA PUTRI', 'avatar.png', '$2y$10$KFW3qcSopkrMkeTX5HTPgu2DBDykGUhzf0WFCt6PeJ/5BELdUm0MW', 1, 1, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(26, '1000000025', 'wenihafizah370@man.com', 'WENI HAFIZAH', 'avatar.png', '$2y$10$U0V3LoFx/YCBpCuGn7zhJuDALdL60MVYfeZ85ZDbSzv5EW.lNcAWa', 1, 1, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(27, '1000000026', 'ariyanaamelia563@man.com', 'ARIYANA AMELIA', 'avatar.png', '$2y$10$E032K5KMt39wpGnTqC8NseWWVzq95d8hInEklsWETmJLJg5dCdQ22', 1, 2, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(28, '1000000027', 'ashpianisa617@man.com', 'ASHPIA NISA', 'avatar.png', '$2y$10$G8IIlIqCs30UhZPYa2JOTuxBm6sKV7N8WsafhCATtjNi5BndRtB96', 1, 2, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(29, '1000000028', 'asnimulyani642@man.com', 'ASNI MULYANI', 'avatar.png', '$2y$10$WWEhKPPgfEkoew2PCLoXzuJrNgufmsBYF.oCYoXAbyPQFJxTD5mm6', 1, 2, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(30, '1000000029', 'bakri786@man.com', 'BAKRI', 'avatar.png', '$2y$10$HQBiQvDQYoFEMXFsZuydyuD87eMtqh5x1iwVBnVZl1Hq5MawGbbAu', 1, 2, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(31, '1000000030', 'bilhaqqi380@man.com', 'BILHAQQI', 'avatar.png', '$2y$10$3chIZLtQqPZDtfluij31Z.eXRIAiaoAv.SAVBmiNoTuzpjMwsn5t2', 1, 2, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(32, '1000000031', 'fatmawati261@man.com', 'FATMAWATI', 'avatar.png', '$2y$10$TtFAETOhACb/vMNKv4JF4.LtGrxKhFsrsByXjwgbfRxGNkzEl5yCK', 1, 2, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(33, '1000000032', 'firzairinululazmi906@man.com', 'FIRZAIRIN ULUL AZMI', 'avatar.png', '$2y$10$71mf0Rypj9qltDZKv/uUEOecvJGBYutbcrDRU91/dvOSM/x8fPNYO', 1, 2, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(34, '1000000033', 'futrimaharani575@man.com', 'FUTRI MAHARANI', 'avatar.png', '$2y$10$yDMqTCnU36NV1K8XRnWATOBx6zEqyO1Wx6cYGjSS2XgBY5MqnUCyu', 1, 2, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(35, '1000000034', 'gilanggemilang235@man.com', 'GILANG GEMILANG', 'avatar.png', '$2y$10$/emdOgwkFmUFS0uU21pn3.XuTgjpyaVFf//.OLINKS.xd/3UCe1xG', 1, 2, 'L', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(36, '1000000035', 'helsiherlinda946@man.com', 'HELSI HERLINDA', 'avatar.png', '$2y$10$pd.2mesJXIbi3.PbNyTdAOk8JXhqHjVltz5SXo9xFhG6.S.6o1g8e', 1, 2, 'P', 1, 5, '2022-03-28 12:25:24', '2022-03-28 12:25:24', '0000-00-00 00:00:00'),
(37, '1000000036', 'iftinahsyifa760@man.com', 'IFTINAH SYIFA', 'avatar.png', '$2y$10$d4lV7P9csnZeeWWhm6APgO0C0qEDkHG4JJF0c9B9gegILVA3zrawW', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(38, '1000000037', 'kamisaaidaputri194@man.com', 'KAMISA AIDA PUTRI', 'avatar.png', '$2y$10$g0vIHIA6MBw9BbDDiiSWSOgoiTLFDLnyaBLL2YgLc/jy3GQurZPOy', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(39, '1000000038', 'malanoviafitri694@man.com', 'MALA NOVIA FITRI', 'avatar.png', '$2y$10$PPNm7V22GHF7vhryw6Tq3OXobekU/Jx8wDkIPNzKn07DpnH6lzyaW', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(40, '1000000039', 'muhammadhaikal924@man.com', 'MUHAMMAD HAIKAL', 'avatar.png', '$2y$10$y29nR7fB2peNHnyHScqL4eta1AuEFqaVFF.CEoTC9iuHLKMA02/KS', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(41, '1000000040', 'nabilayanti428@man.com', 'NABILA YANTI', 'avatar.png', '$2y$10$EqRggpbTgnyl1F6wMadZiOq/Lhxfd4iVigYZeWR2no9r0pcQkgX8G', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(42, '1000000041', 'naufalhibatullah199@man.com', 'NAUFAL HIBATULLAH', 'avatar.png', '$2y$10$rrWktxqpR6l6ZKG12jNN4eU78c23kMr9kmtm9uHQKJLKOkym0kIMG', 1, 2, 'L', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(43, '1000000042', 'qhandiraalsagufrana776@man.com', 'QHANDIRA ALSA GUFRANA', 'avatar.png', '$2y$10$Tz3ORvBMkEFledEV.Wfp7O3IEvZTcdl6hnVezfKV6IOa5wXRE4dPe', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(44, '1000000043', 'rauzatulzannah687@man.com', 'RAUZATUL ZANNAH', 'avatar.png', '$2y$10$DzZdIykcWLObCcGJBQzkYOwFXaMrSiBQ8SwTooqHZgSgwmN1aM6wm', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(45, '1000000044', 'residianoktesya287@man.com', 'RESI DIAN OKTESYA', 'avatar.png', '$2y$10$J1EgY6UoICnUbSK7cnRPauG2jR1zPZaq4FJKgGdQgjOmGYD3TF.ka', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(46, '1000000045', 'riyanda485@man.com', 'RIYANDA', 'avatar.png', '$2y$10$yp5wC.bIrJlFE/M7QxMiOebTsCJwfI3gTyoR4xXvO.MEJBHJp6W8e', 1, 2, 'L', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(47, '1000000046', 'rifarahman958@man.com', 'RIFA RAHMAN', 'avatar.png', '$2y$10$4QuowqOt94FHilxnaGQ50eQI1hfZg0AhEW1VZdquGOoV8jpGyNlBa', 1, 2, 'L', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(48, '1000000047', 'rinidianti705@man.com', 'RINI DIANTI', 'avatar.png', '$2y$10$7D8EniZgiA4BTtvq8dqPT.dSXYjaYni6DtVHdibzmBsmHYGyG4X1W', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(49, '1000000048', 'rozaameliasahraini17@man.com', 'ROZA AMELIA SAHRAINI', 'avatar.png', '$2y$10$TWvsAiTW8zMWwoB.q78a2O.A/2a0Ohred6.hXpwPBwhhVxn4GUvBa', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(50, '1000000049', 'muhammaddzakihabibi978@man.com', 'MUHAMMAD DZAKI HABIBI', 'avatar.png', '$2y$10$GQtpSBZI8vsSnlaqmWL9duhoFsn/qhnQCxR2KCPHXXE6LPphLKoOe', 1, 2, 'L', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(51, '1000000050', 'sinthiaatikah288@man.com', 'SINTHIA ATIKAH', 'avatar.png', '$2y$10$BxvvpLlC1C5r5TbXVzJBT..2YvtRNhs0N0i86.PH.UuTA9kjYhvma', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(52, '1000000051', 'taufikhidayat440@man.com', 'TAUFIK HIDAYAT', 'avatar.png', '$2y$10$UQa45YJ7d9JF9MM.ijCBH.z5icICUes3./G3BHB7KtzNvUVmzRD2W', 1, 2, 'L', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(53, '1000000052', 'ulfafitria972@man.com', 'ULFA FITRIA', 'avatar.png', '$2y$10$0kDzhVudok3vgcXZyc5yeuVhj5dlA7zidWQiL7nShxkQSFOEjkW7y', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(54, '1000000053', 'uswatunnazwa895@man.com', 'USWATUN NAZWA', 'avatar.png', '$2y$10$1OLXjBSxLTQ0udTZZcb..uoWPn/ibBex5jRXvdqUm.u9tN0jSNALe', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(55, '1000000054', 'yuliarnia965@man.com', 'YULI ARNIA', 'avatar.png', '$2y$10$zmtEhYXMHCz.r5m7mrSpVuxrLVzY/RdgRaEitFAwZsLzNKjX7vRSO', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(56, '1000000055', 'zahrinaizzatis740@man.com', 'ZAHRINA IZZATI S', 'avatar.png', '$2y$10$WYluqRqHW3IKcKNhLDt2E.MhUuazsyUoiQSWITmAQloTE/1cYtEgm', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(57, '1000000056', 'dalilakhairy546@man.com', 'DALILA KHAIRY', 'avatar.png', '$2y$10$uDlFjXJLJNBQClcr18ZJqen/9VyN3h4RvLz36VbqhM5i.m2oVYATe', 1, 2, 'P', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(58, '1000000057', 'naufalzahran63@man.com', 'NAUFAL ZAHRAN', 'avatar.png', '$2y$10$RX8kogQHcL9rdJKETcjUIO4QcNIeBcPtsYJ77Mq/Sh5U42B6onl5.', 1, 2, 'L', 1, 5, '2022-03-28 12:25:25', '2022-03-28 12:25:25', '0000-00-00 00:00:00'),
(59, '1000000058', 'syafauqbaharrafi447@man.com', 'SYAFA UQBAH ARRAFI', 'avatar.png', '$2y$10$kQsOqRyNrxtgNfv8k9QGGOe0QP1tul/8CJP/st4DU8EUxLBEvDZFW', 1, 2, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(60, '1000000059', 'arikasimehate464@man.com', 'ARIKA SIMEHATE', 'avatar.png', '$2y$10$0ESVw75dy/4h0VeF2AHXauzFUHKOF5q97n6Bv/5R8.OqvBYRgCU8W', 1, 2, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(61, '1000000060', 'alpandi824@man.com', 'ALPANDI', 'avatar.png', '$2y$10$9S9RG8TG0B61GE4THret1ezfNT5ZHbL/077.D0KnQnw.Mu5H1Fj52', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(62, '1000000061', 'auradina850@man.com', 'AURA DINA', 'avatar.png', '$2y$10$o37vOuuU2k/vOgt74WxA4.4qaeAKldfM9G5mbzpuFk5b1JR/frPVW', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(63, '1000000062', 'bungelusiana963@man.com', 'BUNGE LUSIANA', 'avatar.png', '$2y$10$6x5ioZ2TXvpymsP.QwZ/d.kIseM5l8pYvbT9gJ9W.2QEq3thm5jnK', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(64, '1000000063', 'futrisalsabila93@man.com', 'FUTRI SALSABILA', 'avatar.png', '$2y$10$.uN3LaDPxUfuKkgA9fh1PeIdFqYfxrcmb/w6fyDTRDqvCWBjSqmbi', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(65, '1000000064', 'hamdan354@man.com', 'HAMDAN', 'avatar.png', '$2y$10$K4dD2X9O8fDkvcxQKSVczevCa5XW10XeMeNlzrDBLXBgF5YBSbzte', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(66, '1000000065', 'jurfanajwa248@man.com', 'JURFA NAJWA', 'avatar.png', '$2y$10$haLYt9/Wb6OvAgAeUorPOuL.aN0KCoPrML434ojPpXqfKKuWIqTHG', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(67, '1000000066', 'khairifikri664@man.com', 'KHAIRI FIKRI', 'avatar.png', '$2y$10$PkPuVs5JXCdKIqbjXY.9eO1P/X1QQI5MqT.4mhiUY2p4NqWjXxWqW', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(68, '1000000067', 'lizanovriana822@man.com', 'LIZA NOVRIANA', 'avatar.png', '$2y$10$XUaF6.EIhWQ0rJlXrXN/b.CtrwUDfDDkpOzBAJYrxWFiMT2raTsfu', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(69, '1000000068', 'mauzaismiadi844@man.com', 'MAUZA ISMIADI', 'avatar.png', '$2y$10$rgXaoh.mmc9Bz2xjHFIc1eHXzwGu8PyPz9xsZLLpfUr.hA9/Foe2C', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(70, '1000000069', 'melayunita284@man.com', 'MELA YUNITA', 'avatar.png', '$2y$10$shWOFC.OGSEAUjPhEh44YOx5JePU1J26732zoZNcd351HRXiqigmS', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(71, '1000000070', 'mutiararamadhani789@man.com', 'MUTIARA RAMADHANI', 'avatar.png', '$2y$10$jA9fYGODDQeSaTc3UPvqiuww/GHfs/CiyiiX3VenzzMY6.cY0q/za', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(72, '1000000071', 'nadia683@man.com', 'NADIA ', 'avatar.png', '$2y$10$APp2ENwdT1hcitf1zpzlLeyRkGC2dgG0JmcnY5GU4xYWmyBvlUopu', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(73, '1000000072', 'naufalwaliyulhaq110@man.com', 'NAUFAL WALIYUL HAQ', 'avatar.png', '$2y$10$/bxhxtLtTLRiuOkxGLp3PewJp1FKNH.Jomq36ZjCPnJE2VOBuf9Gq', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(74, '1000000073', 'pintasari65@man.com', 'PINTA SARI', 'avatar.png', '$2y$10$RXDEqJtkd9UrNb/MvUqIrOzOvy.0ui97.P7JTEEVvuyUqhMP8L7HK', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(75, '1000000074', 'rendiafitrawan274@man.com', 'RENDIA FITRAWAN', 'avatar.png', '$2y$10$ykjjMByYrz/AA0Zfb.W/UeYF3ZW8mYS3YIhSAFv9YcHK3zfWigy3K', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(76, '1000000075', 'ridhajunita18@man.com', 'RIDHA JUNITA', 'avatar.png', '$2y$10$YEe8i1KL0pc7/.T8uXZiD.VW.CBb/mwjcOUC/FEnfGa/3D6z/1fDK', 1, 3, 'P', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(77, '1000000076', 'rifdafriatin846@man.com', 'RIFDA FRIATIN', 'avatar.png', '$2y$10$0ssZD2ceiOpIMr8n8.Eu/en.Ba7LyrmcHN1yly9MyNumNMUXfPY1a', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(78, '1000000077', 'rifkirahmanhakim906@man.com', 'RIFKI RAHMAN HAKIM', 'avatar.png', '$2y$10$SgR9DPGaTCCrtXbLi4BEmOYeW6J/8TsGKYdjGL9B/Z3D7b3lp5WSC', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(79, '1000000078', 'rizkaanindra393@man.com', 'RIZKA ANINDRA', 'avatar.png', '$2y$10$7tchpKeFXwjBNYHUl73TI.mOGOJ8kds//vaSR9Vub9AKCtbJtCSI.', 1, 3, 'L', 1, 5, '2022-03-28 12:25:26', '2022-03-28 12:25:26', '0000-00-00 00:00:00'),
(80, '1000000079', 'rizkisyafitri793@man.com', 'RIZKI SYAFITRI', 'avatar.png', '$2y$10$iNDiMCOGhkJEfaLuQOlO5uMaBk1RBruaciFOc0xnyQZ5ehVEhv8G6', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(81, '1000000080', 'sahraniputri919@man.com', 'SAHRANI PUTRI', 'avatar.png', '$2y$10$CHYHfU/aCXweOlPXiaUEZOaRAXC38FiKzjoCQqJTvVYFCVFi1DWDa', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(82, '1000000081', 'selviaafriani43@man.com', 'SELVIA AFRIANI', 'avatar.png', '$2y$10$3/xvtE8gecrsaigDSIBqzeKJYf9DsblJIu7zAm4VgXfDUW0cV8ec2', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(83, '1000000082', 'sopiaramadhani262@man.com', 'SOPIA RAMADHANI', 'avatar.png', '$2y$10$erd/zLDasTbkyYtCUb6Ate2oRGGQlsN7G9vJa0IcS6UrAYV1q79RK', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(84, '1000000083', 'sulastriulandari388@man.com', 'SULASTRI ULANDARI', 'avatar.png', '$2y$10$pVXPMn4maWwX0KjmWQh3Gus4m.kKbnXmUDlekFxCg/zILJNi8if2S', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(85, '1000000084', 'yogasetiawan586@man.com', 'YOGA SETIAWAN', 'avatar.png', '$2y$10$iHA6cxHiaZUf5MGhn.zj9upwjG4.iy0vvaPlrZXA77qkhETblXPW2', 1, 3, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(86, '1000000085', 'zaharadwearianti980@man.com', 'ZAHARA DWE ARIANTI', 'avatar.png', '$2y$10$VDw3.Ae0VNH6HT8TGcXzFOtdSUQ/kl6Y9V5pc3N5nqSaaxGrxB9.G', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(87, '1000000086', 'zaharamurni527@man.com', 'ZAHARA MURNI', 'avatar.png', '$2y$10$HSIqSjJn2PRbJdTp5wHU0.y4UzbQM/0JSrTb7lYnKvPuuvPtJABT6', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(88, '1000000087', 'zahraniizzatis621@man.com', 'ZAHRANI IZZATI S', 'avatar.png', '$2y$10$UHv7yPR8DyZFFzYiOR0XiuOF0WSxT9iUdGk/aMpHFxIpxJ9gzyRau', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(89, '1000000088', 'zilfanakhairunnisa752@man.com', 'ZILFANA KHAIRUN NISA', 'avatar.png', '$2y$10$yMmytw6gzFDmssQ9c3nIH.VK4ROvT.35i6QJRVWMy5cVfDMteNyMe', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(90, '1000000089', 'juspikaaradi72@man.com', 'JUSPIKA ARADI', 'avatar.png', '$2y$10$khkZzinUQ.JknUxq9fQ5YuuMV4FDi/Bdy2gD1RjBO0q29anlGJDVC', 1, 3, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(91, '1000000090', 'novadiliza238@man.com', 'NOVA DILIZA', 'avatar.png', '$2y$10$fseP.fhkv7H7R0Bli5YdcubbIoBxmJOK/DIsi9A0h5T2fmML5Hcsa', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(92, '1000000091', 'fitraariga796@man.com', 'FITRA ARIGA', 'avatar.png', '$2y$10$eTfYFbnMza1t9sYyjGCH7uleasiMsiWe8XOt2yJXtbu2FH8gujQUW', 1, 3, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(93, '1000000092', 'intannurhayati862@man.com', 'INTAN NURHAYATI', 'avatar.png', '$2y$10$nM69vFE2.sAEtzOw8KNuQO2jMexc1FR/zyvbE3D3xa8VN2OPTA2eS', 1, 3, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(94, '1000000093', 'winteguhiwanrantoni666@man.com', 'WIN TEGUH IWAN RANTONI', 'avatar.png', '$2y$10$U/hBucWQKTUGNyold8xE6.SkkLbAkRhzlYellZK0lz4Y1nq001vkm', 1, 3, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(95, '1000000094', 'abdyanabdanmahana182@man.com', 'ABDYAN ABDAN MAHANA', 'avatar.png', '$2y$10$kM0pJ2mPh40t1BqxVdxRIuh2Rrbaum/8jhPVaijAkXajajMfcNsBG', 2, 1, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(96, '1000000095', 'adehayati842@man.com', 'ADE HAYATI', 'avatar.png', '$2y$10$JezE5KCvbNJcWpU9RiNTiu/380CBNTSCfP.2R.NkdTsCZNwjGS4r2', 2, 1, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(97, '1000000096', 'ahmadqaismughitsulhaq945@man.com', 'AHMAD QAIS MUGHITSULHAQ', 'avatar.png', '$2y$10$Qwl833o9kLYaM/qVji9yyezM8fpHOSBaIQuSkZYB4p4VMyM6eV95y', 2, 1, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(98, '1000000097', 'aidilhadi296@man.com', 'AIDIL HADI', 'avatar.png', '$2y$10$H9u6Yqan9ntTJkTHLGD.eOHBQfQhsAgJmIJPvvdVNCDiDuiSgOymO', 2, 1, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(99, '1000000098', 'andiarba930@man.com', 'ANDI ARBA', 'avatar.png', '$2y$10$ZFQm9P1Y0pgCeadCQlS/A.l/sVFiFcJV1.ca70DP/VXFZFza5rpD.', 2, 1, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(100, '1000000099', 'chainaramadana316@man.com', 'CHAINA RAMADANA', 'avatar.png', '$2y$10$A82m8jYNBmWKBuWnXDzmPe54W0jVs3plkYDX4MPHV18UkC3l9kdqi', 2, 1, 'P', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(101, '1000000100', 'dimasoktavian97@man.com', 'DIMAS OKTAVIAN', 'avatar.png', '$2y$10$bXpTphuc3oRIXKhUmFrQv.0blWq.JzPPXdOzambGCLHrlqC24bqX6', 2, 1, 'L', 1, 5, '2022-03-28 12:25:27', '2022-03-28 12:25:27', '0000-00-00 00:00:00'),
(102, '1000000101', 'duhaindrawansyah178@man.com', 'DUHA INDRA WANSYAH', 'avatar.png', '$2y$10$7cLxwFq4fj8wvsGz5q18.ereEg0KrWkQycI/4YJu5Ks2mnLpgfzkW', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(103, '1000000102', 'erwinmaulana822@man.com', 'ERWIN MAULANA', 'avatar.png', '$2y$10$NUA1l1EAPevWyQrsibMSE.yy7vsxTWFYZe5UCeyGOWg51LTbXhKsy', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(104, '1000000103', 'fauzanalkhairi68@man.com', 'FAUZAN AL KHAIRI', 'avatar.png', '$2y$10$gDQ6odadqFuVHNzdnnzxCOVmjYPhVQ8qvKFkri1Ge3vj7BgGp4o6W', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(105, '1000000104', 'fihadianfitra207@man.com', 'FIHADIAN FITRA', 'avatar.png', '$2y$10$3Xm0uneSxawEuptsRlS3/OzJp0HSnnqqLQfBRDLY1JIfLHLswh8pW', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(106, '1000000105', 'futriyasmini5@man.com', 'FUTRI YASMINI', 'avatar.png', '$2y$10$i.V5H6qFxmm7OBtuateef.Rm2vxL6lLHLyfcpDpQP0AlYFd7E6xcW', 2, 1, 'P', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(107, '1000000106', 'ikhsanzikri590@man.com', 'IKHSAN ZIKRI', 'avatar.png', '$2y$10$2UJctoAmFeWKh4UNcqM8jui9XqdH48mOhlewTWCIOXxazWXjhqpLG', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(108, '1000000107', 'iqbalaimulhusni417@man.com', 'IQBAL AIMUL HUSNI', 'avatar.png', '$2y$10$EbyUWvstvnhz6bTXXC4t0eh7vp2G9ZX5QpohuX9EbbSUwr.gwKAG.', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(109, '1000000108', 'maulandara895@man.com', 'MAULAN DARA', 'avatar.png', '$2y$10$ThqYJZcnsV36m5pWvrenFOQlOEJNZBPFJQqQm4vnQKjnoqSKQDRGe', 2, 1, 'P', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(110, '1000000109', 'miftahulrifkimy297@man.com', 'MIFTAHUL RIFKI MY', 'avatar.png', '$2y$10$GJciJjiI7Q3ydbjSD1krluShEry0P6dE1.5.SzP0A1RMXK4OS36g.', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(111, '1000000110', 'muhammadraoshah300@man.com', 'MUHAMMAD RAOSHAH', 'avatar.png', '$2y$10$aM8nRhAyRqA1DpJoGwEX0ujDJPSr06vkNwaNSqBdvR4kwmd2xI/0O', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(112, '1000000111', 'shirathalfadhla876@man.com', 'SHIRATHAL FADHLA', 'avatar.png', '$2y$10$HqUWCyNr/CUaMGigVJYWu.5aealGqlfWDpTumWWQyXl1fEAva.jY6', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(113, '1000000112', 'nabilabibesmi492@man.com', 'NABILA BIBESMI', 'avatar.png', '$2y$10$OA/VjAY9NeUohqTpulhKmeoRb/iJgKGtg7rlAOC3svbrtBSFY1VDW', 2, 1, 'P', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(114, '1000000113', 'naufalfadhil340@man.com', 'NAUFAL FADHIL', 'avatar.png', '$2y$10$rXXAe0XGgIQN02u0ClXxq.JVjNUPPamI/Sr9Op4Yx0QV6mgJEIDea', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(115, '1000000114', 'niantahafidza953@man.com', 'NIANTA HAFIDZA', 'avatar.png', '$2y$10$tv1eNBE5P7D/mVw0aAmm3e75Z2oB39QHrK0zmSV1d.5Kb8a/inDPu', 2, 1, 'P', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(116, '1000000115', 'relifwantona116@man.com', 'RELIF WANTONA', 'avatar.png', '$2y$10$48yUwzlBW0vnaCZa6uxJj.gkIxJiHQ8KxBXf1R9ONHlJQPTxwhJTG', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(117, '1000000116', 'rendifebriandi452@man.com', 'RENDI FEBRIANDI', 'avatar.png', '$2y$10$Q74BrgQXd/KGnnvUHNOuhufbkwdWJDcbl10xLpJjuWMUJdTPv.tfa', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(118, '1000000117', 'rezkimahara804@man.com', 'REZKI MAHARA', 'avatar.png', '$2y$10$LJQ47UGbN6mE1bMxsk0sceIzupd.kM/nvhBuQQwdqCvxYEITKRP2e', 2, 1, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(119, '1000000118', 'sismacantikaputri520@man.com', 'SISMA CANTIKA PUTRI', 'avatar.png', '$2y$10$vnRFwYa0cMlLKf5n8kkErefOVngU9QG9hvmbd5.kWI0iQJ7I99f0W', 2, 1, 'P', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(120, '1000000119', 'wenihafizah915@man.com', 'WENI HAFIZAH', 'avatar.png', '$2y$10$Mlrh4JkJ8v3PBRaJ6FV9suWXzd3mkcBdiSzMNqpCcjO.Kb/BvBA6K', 2, 1, 'P', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(121, '1000000120', 'agihilham631@man.com', 'AGIH ILHAM', 'avatar.png', '$2y$10$WNfqLhspwXGZAVpV.db9Nu8xkn3QW3LWKP5BwzWxEAly1XjHZtsg6', 2, 2, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(122, '1000000121', 'aisyfahrozi717@man.com', 'AISY FAHROZI', 'avatar.png', '$2y$10$Vzv.JxbQRKf7r4ni2vdbou6wjyqznYuw1g.Elthx9lDVs/Y7uzRde', 2, 2, 'L', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(123, '1000000122', 'angguncytrarozha26@man.com', 'ANGGUN CYTRA ROZHA', 'avatar.png', '$2y$10$v36kGiRY7xZIq21gYCszIOYC/VZXny1V2.x.aWYEQBP.91.Pazh5q', 2, 2, 'P', 1, 5, '2022-03-28 12:25:28', '2022-03-28 12:25:28', '0000-00-00 00:00:00'),
(124, '1000000123', 'aryana725@man.com', 'ARYANA', 'avatar.png', '$2y$10$iIu3PtHu2OGjOG3JT5yy5uFIiIcDh3u2FixJAYgk47zeAyLlmT2JK', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(125, '1000000124', 'awalludinnovriandim822@man.com', 'AWALLUDIN NOVRIANDI M', 'avatar.png', '$2y$10$kP8BeZPSU0CxVsyCvawpceXmmw901IR7FJ.3Ez/eX2x/L7OLtksbm', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(126, '1000000125', 'diana658@man.com', 'DIANA', 'avatar.png', '$2y$10$GQIvCwLTteU1oW4n1kRs6OF5HIrpTjPOrJRxwZm6gKy24uENYgDcG', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(127, '1000000126', 'fanilidiafutri702@man.com', 'FANI LIDIA FUTRI', 'avatar.png', '$2y$10$xBG7G6ktX38tmUngwdQ6L.LBXQM6y42uBuhBECD2.Gxi4vDWgPRS2', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(128, '1000000127', 'ghufranabal715@man.com', 'GHUFRAN ABAL', 'avatar.png', '$2y$10$5cn/O0IsJYYX6BNO91g9A.B17bkU8vFZQGMNSeHdBZc20XHdydUai', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(129, '1000000128', 'hafidzalfarizi593@man.com', 'HAFIDZ  ALFARIZI', 'avatar.png', '$2y$10$aS8hSLbSLoX..HEJYUSpp.drg5ZGiZIgSy7rBtXZ60SDc8yU.fbQS', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(130, '1000000129', 'hafidzahafifaziz919@man.com', 'HAFIDZA HAFIF AZIZ', 'avatar.png', '$2y$10$a/F2elqY005wGszyJoTOXe5B2i7KuQH9bVUn14vYHFHbE7GBUkAI6', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(131, '1000000130', 'ilhamelsandi365@man.com', 'ILHAM ELSANDI', 'avatar.png', '$2y$10$boyw222h51okwC52iXdPeuqiSUCXSaXlaJUS0E1.I7D9z1U9JUP7K', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(132, '1000000131', 'inesalvanirenggali948@man.com', 'INE SALVANI RENGGALI ', 'avatar.png', '$2y$10$/HqqVJkYG4zNPKrouOwgw.cw9ofdgFX67SUeiYEoo/SB6v5.jIEzK', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(133, '1000000132', 'iwanrezeki150@man.com', 'IWAN REZEKI', 'avatar.png', '$2y$10$AzW845fpoeZA577yqJdRXOJXydQwK3J4GPbqOp5P37LAqESYWh7Pi', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(134, '1000000133', 'junaidi941@man.com', 'JUNAIDI', 'avatar.png', '$2y$10$t76DBJljXW7ztIuRRTPt.uuCm8QAsDS1y/H9BCcBsrnLVbvnxxDV.', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(135, '1000000134', 'kamisa535@man.com', 'KAMISA', 'avatar.png', '$2y$10$e7nHMUAquOZGKFba65w.au8iWzhmykfkBsduDafBHCQR7puaFi6LG', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(136, '1000000135', 'najwasalsabilalaili198@man.com', 'NAJWA SALSABILA LAILI', 'avatar.png', '$2y$10$x2fb34VnrcuLs44OZa60iOkzgj/NcLCnphKrtxpAPLGciQKtkCQ3i', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(137, '1000000136', 'novyasalisca28@man.com', 'NOVYA SALISCA', 'avatar.png', '$2y$10$5i16O29ECKb.GHMZBo1hi.FVBPP3vP5J2hoLuSrH1Pio6jzwcTby2', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(138, '1000000137', 'radiansyah571@man.com', 'RADIANSYAH', 'avatar.png', '$2y$10$Xl71DbHFRWv/ud2NiclK7etMySws0W5JFObctoTKS/yiczpe6hQim', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(139, '1000000138', 'rahmitafitri953@man.com', 'RAHMITA FITRI', 'avatar.png', '$2y$10$stJk/QD7OKTGp0.CvSNECepE8JUdCtbY0dyhfFejKCWax4lumIL9G', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(140, '1000000139', 'rajagilang194@man.com', 'RAJA GILANG', 'avatar.png', '$2y$10$pY7eCSUKdC17PJBVHYZ0Duh2iJqBZ1CQ2TFS0mDPDg3LZWKFqfdky', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(141, '1000000140', 'rasikadewis584@man.com', 'RASIKA DEWI S', 'avatar.png', '$2y$10$S9TManYqKBcKCJm6QD4osO1sbRP2uK2xqvnMtrxgJsy4N/qDZPsWS', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(142, '1000000141', 'renisimahbengi811@man.com', 'RENI SIMAHBENGI', 'avatar.png', '$2y$10$fH9elgFalYmfvsRx4n5HVefqUrZkqMb8JCwqg/TRrsfOMtsa1m5AK', 2, 2, 'P', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(143, '1000000142', 'renomihaldiko367@man.com', 'RENO MIHALDIKO', 'avatar.png', '$2y$10$04n4lc/qylNPPUsuqZDOae4uE6Wj3gD3rS9DtJb5v6uj9UpLix45K', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(144, '1000000143', 'rifkisetiawan516@man.com', 'RIFKI SETIAWAN', 'avatar.png', '$2y$10$wZDCEE.gRLXk08eHscrTPOZB94VL.V3FTnYP1irieN61yrZmXfxb.', 2, 2, 'L', 1, 5, '2022-03-28 12:25:29', '2022-03-28 12:25:29', '0000-00-00 00:00:00'),
(145, '1000000144', 'rimasimehate614@man.com', 'RIMA SIMEHATE', 'avatar.png', '$2y$10$dxcDifX3ke651.nnA9gQyuD4Jb.CAmiKlWTBz/RB/w9OiECvEU2rm', 2, 2, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(146, '1000000145', 'rizahidayah872@man.com', 'RIZA HIDAYAH', 'avatar.png', '$2y$10$VNFG.zkeFb8uDUJMDjPlfu21TRbzay7i2TVhaeRhqqSjcwmBsHGpy', 2, 2, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(147, '1000000146', 'rizqiiwanfajri497@man.com', 'RIZQI IWAN FAJRI', 'avatar.png', '$2y$10$KbN9P9AEYf6TRlkpOucmXOO6vvOsKKYsFC5owaGl7bRl5tTgbgI4u', 2, 2, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(148, '1000000147', 'ruhdini470@man.com', 'RUHDINI', 'avatar.png', '$2y$10$HCnDXxPMFz1Nmo7LYL..6e4CfNmD3IUWhbEr.dOy5rxaPYuWN4WZu', 2, 2, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(149, '1000000148', 'sahriramadhan60@man.com', 'SAHRI RAMADHAN', 'avatar.png', '$2y$10$7mH6zFObO6c4JMQacZG8DOrxvO14vfAH3PlLdHSKPYVShUmIHML2a', 2, 2, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(150, '1000000149', 'saidnibrasalhabsyi802@man.com', 'SAID NIBRAS ALHABSYI', 'avatar.png', '$2y$10$zTJPHSoE5qXZTMr1PrHWmeEFxJFhwtd5xjAG3NZfvqKK7SKGn1PHG', 2, 2, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(151, '1000000150', 'silfaniazrimaisa434@man.com', 'SILFANI AZRI MAISA', 'avatar.png', '$2y$10$R6M0XWWQwDD9mh1yCs6oVOFzAgvV4.hq5sjJJJhUEODoO26T3zoxS', 2, 2, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(152, '1000000151', 'silfinaazrimaisa117@man.com', 'SILFINA AZRI MAISA', 'avatar.png', '$2y$10$n9.O/Gv8fMwBcFQttCHMtOkDt/u6nCM9yU3zB.6NQUc.bqM2/4lTO', 2, 2, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(153, '1000000152', 'syahrawidia444@man.com', 'SYAHRA WIDIA', 'avatar.png', '$2y$10$4rR24oGjRMotse9wZNIe6.Lq2aB6xFTfOxtE1EijScrNT5h.D2jfG', 2, 2, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(154, '1000000153', 'semalisyukran985@man.com', 'SEMALI SYUKRAN', 'avatar.png', '$2y$10$T491/oh4C7VBvE3ZB7/uzeEybBSsIq0vxR8BCPGjJr7Ff5KyWqyBa', 2, 2, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(155, '1000000154', 'anamaria856@man.com', 'ANA MARIA', 'avatar.png', '$2y$10$7UhyEC0MDi7EkdHZ.ItmXO/pfg0iZOij5gIeHIqlWPA.iMs9EvEXO', 3, 1, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(156, '1000000155', 'annasrimulia258@man.com', 'ANNASRI MULIA', 'avatar.png', '$2y$10$Gq9uNAUVUEqfGoz2hJLE7ewed645GMPCA.BeKpCojp4.lfHXhjQSS', 3, 1, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(157, '1000000156', 'cutamalia230@man.com', 'CUT AMALIA', 'avatar.png', '$2y$10$2Xa7Q3POPNdQjQoQinW9HOveq8K7TxWvAvlXf38vXNh.8gMnzoI76', 3, 1, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(158, '1000000157', 'desisilfiyana833@man.com', 'DESI SILFIYANA', 'avatar.png', '$2y$10$uDVl3nTFsqapAfdxjZ324el0m6j08Xww9TjzgFtV.cXN1TxoesX0.', 3, 1, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(159, '1000000158', 'dirgasyidratussalwa165@man.com', 'DIRGA SYIDRATUS SALWA', 'avatar.png', '$2y$10$m/WouScYe4Ma8tVhoKWCAek25kPNrCI5qpbW54oD3puBFibbmo5O.', 3, 1, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(160, '1000000159', 'elizasapitri771@man.com', 'ELIZA SAPITRI', 'avatar.png', '$2y$10$OYEGBkU1TtI362qOauDJUeuRmv4n8XuA017Kwi8yPViKrzlXxM5j2', 3, 1, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(161, '1000000160', 'fakhriwijdan92@man.com', 'FAKHRI WIJDAN', 'avatar.png', '$2y$10$tapo9Ic8U2AsxJGh4Ey/ouBLBOeTyqyb.UGO69c0xMI4gGETAtcoG', 3, 1, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(162, '1000000161', 'fanita378@man.com', 'FANITA', 'avatar.png', '$2y$10$ktv.ALGEcRwoBk8AbfU0t.g26KY/5bQrN9901ko2OG0kkXag3Vz4S', 3, 1, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(163, '1000000162', 'ihsanuddin1000@man.com', 'IHSANUDDIN', 'avatar.png', '$2y$10$qk/J39vP7CYkccQwapJlmepGv8L88LaWWBdS5RMtI03/cu.awsdI2', 3, 1, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(164, '1000000163', 'ilhamekafarisy176@man.com', 'ILHAM EKA FARISY', 'avatar.png', '$2y$10$oYJQEtPW6xo3UWy8iAUIgOz9kcxJrx0uG.9XNGqztptfWFTu0gEeC', 3, 1, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(165, '1000000164', 'jannatiakanju566@man.com', 'JANNATIA KANJU', 'avatar.png', '$2y$10$x0vFXRHC/SxM4IScQ7UiY.WoaEGZH4knB9OqH0Fnw2XumogBCEVr6', 3, 1, 'P', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(166, '1000000165', 'm.rizki955@man.com', 'M. RIZKI', 'avatar.png', '$2y$10$eytxYd4Lrklu3Qa9AoJnsuBWIhKgj7QC.8.Dx9F4VuG0P/iNUrEK.', 3, 1, 'L', 1, 5, '2022-03-28 12:25:30', '2022-03-28 12:25:30', '0000-00-00 00:00:00'),
(167, '1000000166', 'm.sejahtera442@man.com', 'M. SEJAHTERA', 'avatar.png', '$2y$10$ztFIBtXHZ4l2XChltpHIau7a70X8XvVIvndFw5RNtDDXD.2j5/o5i', 3, 1, 'L', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(168, '1000000167', 'syardifitrah649@man.com', 'SYARDI FITRAH', 'avatar.png', '$2y$10$1FGDrGubgmw0ZbUb.5e.euRlgoh5vorgHAf4Hymm0zD3hxKoEYHGS', 3, 1, 'L', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(169, '1000000168', 'lindaamalia670@man.com', 'LINDA AMALIA', 'avatar.png', '$2y$10$24Ub9BOF3.8s3EfNJ.1sLOhE4GtzNatv703AlGtfiVABgSgHYx4Sa', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(170, '1000000169', 'mahridalativa822@man.com', 'MAHRIDA LATIVA', 'avatar.png', '$2y$10$nV6vKdsclzT1hrsnxl./ueHvLMHGQJcDQqLCxv1T6nPcxbO6EGAtK', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(171, '1000000170', 'maulidasimahara184@man.com', 'MAULIDA SIMAHARA', 'avatar.png', '$2y$10$9npOZ3OpxuF/EiVom.wUfOj/80fCbYNZHnmFVCJmXK39hOBWuGXG.', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(172, '1000000171', 'nabilaraudhatunnisya165@man.com', 'NABILA RAUDHATUN NISYA', 'avatar.png', '$2y$10$4PWrE/xY7CtSZSXmtRkEMeq9iLvZDShTQGil.ixToj33VHAMf6ose', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(173, '1000000172', 'naurahsalsabila89@man.com', 'NAURAH SALSABILA', 'avatar.png', '$2y$10$dxgkUgyxzs2viwurQxA55.Ug2Qn5MS6ZawKJShT.9ijusLvF2M9P6', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(174, '1000000173', 'nilmafatimahazzahra241@man.com', 'NILMA FATIMAH AZZAHRA', 'avatar.png', '$2y$10$tLT4Dzw3eors7YWO1/28N.sSJ7sfzyPE.QxMOAzoKHhQ9YYzwm4GK', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(175, '1000000174', 'nurhafidzah79@man.com', 'NUR HAFIDZAH', 'avatar.png', '$2y$10$8P90uS.w9sKLPPTaC00IhOtUayZt0glFIY8i1xs/t5hS8VlaRhhjS', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(176, '1000000175', 'pingkannapisah419@man.com', 'PINGKAN NAPISAH', 'avatar.png', '$2y$10$owsUo29boDtvSHIYrpPEquVwEu6mf914LJIH/c6IEipwlvBZ3VsKO', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(177, '1000000176', 'rikamahyani481@man.com', 'RIKA MAHYANI', 'avatar.png', '$2y$10$/uolcuWyBKZ2oh0z5sWIzeRSlno3g01E/8sTc1cUr18zJgwpTCnfq', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(178, '1000000177', 'rimaputrimegaandria504@man.com', 'RIMA PUTRI MEGA ANDRIA', 'avatar.png', '$2y$10$nMOJnxH5yS/IEbAEmLnj/.7PWlJNJlQ50repXcZKYWzTd2VWI65/K', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(179, '1000000178', 'sarabensu424@man.com', 'SARA BENSU', 'avatar.png', '$2y$10$.csO9QrhAOUUNtxxedj3kuqRXnivjyAH74Drq0lQK1jQNdh86NOBm', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(180, '1000000179', 'zannatulazila41@man.com', 'ZANNATUL AZILA', 'avatar.png', '$2y$10$g99F44s/EI4ouTlhjYDBluwlQoCW6sj1IeIncjDt/yWNDKNcgCm4W', 3, 1, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(181, '1000000180', 'abdanfitrahmenye362@man.com', 'ABDAN FITRAH MENYE', 'avatar.png', '$2y$10$ISTUN4IQ8XMGdbtpsl8ju.Em/peF/Vd5pNoL4FCc2H18PFy85cBDu', 3, 2, 'L', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(182, '1000000181', 'almunadi205@man.com', 'AL MUNADI', 'avatar.png', '$2y$10$eA3KDM7pJ8n7TalFU80pOu9mX3WAbANP7CqnVXOOHiJAxGeGvu9si', 3, 2, 'L', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(183, '1000000182', 'andreancanhari569@man.com', 'ANDREAN CANHARI', 'avatar.png', '$2y$10$o76CqryqzRpLcmakPkaLL.7mdnbhYgjD7EjN8HmpVYk2XOfrVo7Ou', 3, 2, 'L', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(184, '1000000183', 'assyifawahiddayati808@man.com', 'ASSYIFA WAHIDDAYATI', 'avatar.png', '$2y$10$0so2ZIZeQ92Yx8dPiAW.aum/VlgpKW0RoAxU1KYHM0.lyEFZuQ1Va', 3, 2, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(185, '1000000184', 'ayudalisma648@man.com', 'AYU DALISMA', 'avatar.png', '$2y$10$CpgEvrLqJWrzrKcASA65BuFz3CauWwaAr3/Zx/av7/wpSd2rRV3IW', 3, 2, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(186, '1000000185', 'daffaelzafadhil513@man.com', 'DAFFA ELZA FADHIL', 'avatar.png', '$2y$10$6wOjo/kdjqfoGyDfcg8PFuXcvAHEbv/Ur0L7IW9ip9o2q3rSKA2iq', 3, 2, 'L', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(187, '1000000186', 'hafnizahara105@man.com', 'HAFNI ZAHARA', 'avatar.png', '$2y$10$miMdwW0h78sM8067jtos8uheVR7HfKJCr5XDxiiLEI7x4SpCQMIz6', 3, 2, 'P', 1, 5, '2022-03-28 12:25:31', '2022-03-28 12:25:31', '0000-00-00 00:00:00'),
(188, '1000000187', 'hendra197@man.com', 'HENDRA', 'avatar.png', '$2y$10$ijXnNv1zVADz/BTddtcVauS0x5cpkBuyK8C0Nd5VN9v6n8GsrMwLu', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(189, '1000000188', 'heniwijayanti27@man.com', 'HENI WIJAYANTI', 'avatar.png', '$2y$10$ZRfdzLZqmSprOOZpKuOnXuodqE4oltrHiskLoMg7GozqlHNZJQNjW', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(190, '1000000189', 'hermavalentina641@man.com', 'HERMA VALENTINA', 'avatar.png', '$2y$10$y976q0nmlLgLvwkRRgUz4ONS/UUdFqfc6v8JRZQUMDrnBFBKa842i', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(191, '1000000190', 'hidayatunnahar472@man.com', 'HIDAYATUN NAHAR', 'avatar.png', '$2y$10$nyPsWnvnbirdJwdlvpFjsemnFlxpVhRppmn9G8hOq6Y4SYxvoo6xW', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(192, '1000000191', 'ilhamrizkipratama477@man.com', 'ILHAM RIZKI PRATAMA ', 'avatar.png', '$2y$10$rJNQySgd7nJUwgE99lwST.YkYTcimb77zVuPWupqVuTrz0HfjmtAq', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(193, '1000000192', 'imamsamudra512@man.com', 'IMAM SAMUDRA', 'avatar.png', '$2y$10$qAUve8b0czh2RrU4jIZWOuLC3KyznpDoVIDMB9//TPa2vSJ9CRaim', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(194, '1000000193', 'intantamara469@man.com', 'INTAN TAMARA', 'avatar.png', '$2y$10$CeR7bTKDFv4mYMCmZbwcZ.jarwVK/7QASu.0bLk.AJ1zeQo1Va/kK', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(195, '1000000194', 'ismajunipratama685@man.com', 'ISMA JUNI PRATAMA', 'avatar.png', '$2y$10$ohacGkWqpIPI4wSYEtp03eVUULBkmOuWxzMG/4zvIYDC07sJzvME2', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(196, '1000000195', 'jonisyahwannara494@man.com', 'JONI SYAHWANNARA', 'avatar.png', '$2y$10$zW42VgLp.wfDrkAFSL8JZeopBhF5Fsc7u22efybjK3CNi10Qkoa36', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(197, '1000000196', 'juhriasyah273@man.com', 'JUHRIASYAH', 'avatar.png', '$2y$10$STd8OtOC/sT3ENhAiBBUMe227dcJ/plCMuCId29rJQ/LgfezdV/Ui', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(198, '1000000197', 'khairunnisa1@man.com', 'KHAIRUNNISA', 'avatar.png', '$2y$10$wBdKbjXGIM9qmNvwwmuNWuDzDdp/9NF/IagLa.KAnaGR.a.062.hO', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(199, '1000000198', 'jumadirahman606@man.com', 'JUMADI RAHMAN', 'avatar.png', '$2y$10$QXRQhfk9TZ5E0MZSAQtm3eaVGVkZCdOz2xGxBPOpgl3Obt7Pc55vG', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(200, '1000000199', 'fathulanisa677@man.com', 'FATHUL ANISA', 'avatar.png', '$2y$10$tb4PDj3QiU.VvVge1/BtXOxPy4DSh3h6lNSvM8yPcwvkqVJTSXCqq', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(201, '1000000200', 'm.nur333@man.com', 'M.NUR', 'avatar.png', '$2y$10$4Iiq1BQt3SxRLO6YqeKSVO40tguxL6ccjPj9SQQlFs5jPCU2YfRt.', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(202, '1000000201', 'mauzialfadila361@man.com', 'MAUZI ALFADILA', 'avatar.png', '$2y$10$9SZ.wcEsGUgFK4.y9Q/RK.pN2xeI6YKw9STIdyths8OtKGQ5CR7pG', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(203, '1000000202', 'mawaddah362@man.com', 'MAWADDAH', 'avatar.png', '$2y$10$rPWicxgwiDqiyBXieZ0Ph.jBlkpRHRHdL8s7eTr.ZwaPKsy6NWMlW', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(204, '1000000203', 'mirzabugemusampe53@man.com', 'MIRZA BUGE MUSAMPE', 'avatar.png', '$2y$10$PyMT8EmS83bCoShaqvlnkOlu5Cw/4q6HuyCvX71TwbyETXfMVwvzG', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(205, '1000000204', 'mukhsin544@man.com', 'MUKHSIN', 'avatar.png', '$2y$10$D8RBsPC14qfTgZZ8JqVzk.5um3effsy2gwHxZPtt.gRAwPAAXxAvu', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(206, '1000000205', 'nurhayati431@man.com', 'NURHAYATI', 'avatar.png', '$2y$10$1WQjg0Cwt4.0slLTAlrBe.Bk8OWZLKZoNn0eAmeQ3aUdwttBCBBiO', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(207, '1000000206', 'orijagunawans712@man.com', 'ORIJA GUNAWAN S', 'avatar.png', '$2y$10$XVgY4PB9xxQve0nW.VpOO.vF7a5VHsbPfgp/WvN7sHTA57lnOQPyW', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(208, '1000000207', 'rahmisapitri141@man.com', 'RAHMI SAPITRI', 'avatar.png', '$2y$10$pyweLywMFL/7B/MZRBH6IuOoPz5W8SzK5EU8.1040mKVsaIGc5cWe', 3, 2, 'P', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(209, '1000000208', 'sabarollah894@man.com', 'SABAROLLAH', 'avatar.png', '$2y$10$MqZpksGhz9It0Gho7qOzdeBvH7qtXSd7NaqAnq1Epj3qmSvCSqrL2', 3, 2, 'L', 1, 5, '2022-03-28 12:25:32', '2022-03-28 12:25:32', '0000-00-00 00:00:00'),
(210, '1000000209', 'salmanalfarizi16@man.com', 'SALMAN AL FARIZI', 'avatar.png', '$2y$10$.bWlKqKfhFdIyr0jGlnGKOLkZhzwZRN/U1lov26V1WqIZ3vzKjr6e', 3, 2, 'L', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(211, '1000000210', 'sauqiqalbiiksan550@man.com', 'SAUQI QALBI IKSAN', 'avatar.png', '$2y$10$bwHlspYzU6Jfwx0Yba8Wfujr1Y1Pg3DMFPM23ghlRwRsM60X6pQ4a', 3, 2, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(212, '1000000211', 'seprianaputri599@man.com', 'SEPRIANA PUTRI', 'avatar.png', '$2y$10$Slt8AoePz8Q9ZALMEHNqOuMjqjKnw7tICZJ/p3wvhvvf5Mlnd2KQi', 3, 2, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(213, '1000000212', 'septiasuliabreta40@man.com', 'SEPTIA SULIA BRETA', 'avatar.png', '$2y$10$rM/.Y41u6./G/CyYTp0tK.m3qyRYR32zfjxNrsfTKB4e8eiThMG7W', 3, 2, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(214, '1000000213', 'sujadanaufal161@man.com', 'SUJADA NAUFAL', 'avatar.png', '$2y$10$pN3BKEIM9HywqGXh6zBOWegg6SpZHXJlfXdQY0OytWBoMUiJlo.1q', 3, 2, 'L', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(215, '1000000214', 'tiararezeki79@man.com', 'TIARA REZEKI', 'avatar.png', '$2y$10$WRsxK48c8BBT2.LrTD7anuKm7B4X/sndR1GhwrfD/WvgXqDlx1NSa', 3, 2, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(216, '1000000215', 'vaniaamanda734@man.com', 'VANIA AMANDA', 'avatar.png', '$2y$10$xqlmVCsNYIJE3ljN2G6/beKZFVO6nXJgNQkZaruwdkvUQMsDB/DG2', 3, 2, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(217, '1000000216', 'wardani502@man.com', 'WARDANI', 'avatar.png', '$2y$10$wWvYBnn3ExMhGuRdw6v2kuZkYlpvGImGi.3HlyNjq0jqDrr5CGKuK', 3, 2, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(218, '1000000217', 'wiramahendra152@man.com', 'WIRA MAHENDRA', 'avatar.png', '$2y$10$mCi.T3Iu301OOWU91wJCQ.HmeUEgUQkEd7a6epRmIzWABHwUmX.fi', 3, 2, 'L', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `nisn`, `email`, `name`, `image`, `password`, `classId`, `roomId`, `gender`, `status`, `privilegeId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(219, '1000000218', 'ardianokta467@man.com', 'ARDIAN OKTA', 'avatar.png', '$2y$10$iUqFVooinaMJxJFdh3N0B.jAMKC7k27oCdEVU48RGA/6SikOEz4/y', 3, 3, 'L', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(220, '1000000219', 'auliarafiqi847@man.com', 'AULIA RAFIQI', 'avatar.png', '$2y$10$6D9ImsMvWuRSDQWcvTDFYuVb/82Me3GXRBm.AvbqdU8xLJerKLOUu', 3, 3, 'L', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(221, '1000000220', 'auliarahmi788@man.com', 'AULIA RAHMI', 'avatar.png', '$2y$10$AHxzMJxfDL6XatWBJaDBT.Gn0XDXD71h8OYZj6TFeV16oDNdTSaye', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(222, '1000000221', 'azzatilakmar341@man.com', 'AZZATIL AKMAR', 'avatar.png', '$2y$10$GlnAUoUv6LVORaRp125qReHToSbrbPzXsGODoC3A1yOqUz0LT1iZO', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(223, '1000000222', 'dhiyajinansausan957@man.com', 'DHIYA JINAN SAUSAN', 'avatar.png', '$2y$10$Mv3HvZCVJRimBZGmeuRDVOKkcQcTATf63cGxBbzQnYR3jaYbqoruu', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(224, '1000000223', 'elmafebriani382@man.com', 'ELMA FEBRIANI', 'avatar.png', '$2y$10$CMOh0feT.cX3yUKjsnW1VuFkgK98xo2M/Gy3.QjZKG8NcnUlCgJce', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(225, '1000000224', 'hendrik685@man.com', 'HENDRIK', 'avatar.png', '$2y$10$mqviKT1jgL74vTEThE9JpOQ4OSZVa.eH6sxa0f0obvMj.p4YB8vRS', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(226, '1000000225', 'firamaulana495@man.com', 'FIRA MAULANA', 'avatar.png', '$2y$10$SIz6h6JgSpALCvrGy.wLsODULO8DQclp9pshfGMVM5L1o93XS/w/O', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(227, '1000000226', 'ifasilvia503@man.com', 'IFA SILVIA', 'avatar.png', '$2y$10$FwH0vS0TLsf2HKLHiuMot.bXKE8KOJAlL/5XXT9wz/q/bnccQe4Nu', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(228, '1000000227', 'intanrindipurwati363@man.com', 'INTAN RINDI PURWATI', 'avatar.png', '$2y$10$PMIYkpfTEoaSsoL3OD/OVOflqeqXZau/R.8RYi4iGclvb0pSWcxKK', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(229, '1000000228', 'iradah88@man.com', 'IRADAH', 'avatar.png', '$2y$10$rFJ30NUS9VURJLKyt1E3bu0c97.jPewIepeJUWI5xpbVvXp4U5LdO', 3, 3, 'P', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(230, '1000000229', 'khairunnasirin93@man.com', 'KHAIRUN NASIRIN', 'avatar.png', '$2y$10$CLTp/alxHESzf7/KMnTGiutoAuaqaxsL5ClKbGoYT7WzeCbZHxrz.', 3, 3, 'L', 1, 5, '2022-03-28 12:25:33', '2022-03-28 12:25:33', '0000-00-00 00:00:00'),
(231, '1000000230', 'm.fahri959@man.com', 'M. FAHRI', 'avatar.png', '$2y$10$KZNyCruhSJ6dNCng/NcLM.cH/U74iK6YXIyQdAWFVB90MRSFGHE6C', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(232, '1000000231', 'm.riezapahlevi241@man.com', 'M. RIEZA PAHLEVI', 'avatar.png', '$2y$10$xrftFpB549fze43MTCHckuidosUBstYjbtiFlawpgFPIiudu2eqZu', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(233, '1000000232', 'm.putrawansyah339@man.com', 'M.PUTRA WANSYAH', 'avatar.png', '$2y$10$Mfjjxwe.okUbVSFauRBulORhTkoQQlKDmEC4Y.6P34MBFOr7HAfcu', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(234, '1000000233', 'maharani813@man.com', 'MAHARANI', 'avatar.png', '$2y$10$R7Kw8grlNlvsK97D.LKCH.EaJZEN3NY13HPRuFPeCkNFEXHCVYxqW', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(235, '1000000234', 'marlindapuspita860@man.com', 'MARLINDA PUSPITA', 'avatar.png', '$2y$10$6rQoscYnNfDJx3xS4ylrIuzivPHA2GV6aLvm4CErc4jwPx6apoKkS', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(236, '1000000235', 'maulidaafriani451@man.com', 'MAULIDA AFRIANI', 'avatar.png', '$2y$10$0HW2Brma3KoCtEjU0Ig7AOExR6iYqaQcqkas271jeJix1BtD1zkvW', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(237, '1000000236', 'mutiarezeki591@man.com', 'MUTIA REZEKI', 'avatar.png', '$2y$10$ylIzb5biIlMHNKTOqfpGKeDlKrmzoXElsopSCxpnGrYYada.wB1oi', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(238, '1000000237', 'nadiamahara336@man.com', 'NADIA MAHARA', 'avatar.png', '$2y$10$f2HHKjl6OkPY7ZRu2h7Rye6tqv.AYJc9UPh02QWnNWBAqXCsEvK1q', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(239, '1000000238', 'nadiasari332@man.com', 'NADIA SARI', 'avatar.png', '$2y$10$bLhTchT55fHzCTuieb482.EzanuLc7EdGCEuOvPstelCAjoyoX2zS', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(240, '1000000239', 'nadyabrudio2@man.com', 'NADYA BRUDIO', 'avatar.png', '$2y$10$esVRil3pX4e5UNoblJ6MtuNO/JH2gZ476FAVmsfJOIiERx4htfivO', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(241, '1000000240', 'najibmusapatinugraha70@man.com', 'NAJIB MUSAPATI NUGRAHA', 'avatar.png', '$2y$10$sJEA1bsZQ5SHFKThQbrPj.lqyiUlmakEYeYXCY6/bO1UalPDWrjmy', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(242, '1000000241', 'nazlaaqnia803@man.com', 'NAZLA AQNIA', 'avatar.png', '$2y$10$5cc3Xap5Rb/BjUn0uafeEupjbd9895i3ptCYy1gG21vi55tvpVcKa', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(243, '1000000242', 'niarahmadani522@man.com', 'NIA RAHMADANI', 'avatar.png', '$2y$10$963dOPM1X6QmKVVff.XBPOjIUVmKelX96NQRejR6F5L5H5BN826Z.', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(244, '1000000243', 'nindasafitri111@man.com', 'NINDA SAFITRI', 'avatar.png', '$2y$10$XbfEhEV97.ngWWARY2O2pe/Bvl7j8qRAgM6tAMe3R94hJejiG/ilq', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(245, '1000000244', 'pujasimehate489@man.com', 'PUJA SIMEHATE', 'avatar.png', '$2y$10$nIoAtnnbnUQzWQqOkvZ.5O3z92xCMhV/3NrliVkXMlgyXPRm0Z7qq', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(246, '1000000245', 'rahmadayanti464@man.com', 'RAHMADAYANTI', 'avatar.png', '$2y$10$1lJRLMzlfrKFFfQJ.3yA/esVGEKNOQ.UvPuf8nLnxCB5RGEbHgW4C', 3, 3, 'P', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(247, '1000000246', 'raihandandi812@man.com', 'RAIHAN DANDI', 'avatar.png', '$2y$10$iICbXwXCHjII7aN378zFFeFwfNGRWLG3plN0aWvHGULffSnfbNTJK', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(248, '1000000247', 'razakrafsanjani74@man.com', 'RAZAK RAFSANJANI', 'avatar.png', '$2y$10$K4HpuHxcyOPUIE.fkmeRpuKFYnrvBUQvmiAfyGi7D.wMWJIRvW0o6', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(249, '1000000248', 'refkiwiyanda333@man.com', 'REFKI WIYANDA', 'avatar.png', '$2y$10$yoesNtVvm8Etsqn9K4TBL.chF03ERnOQbChAzfWFiNVCaj7lOkoYe', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(250, '1000000249', 'riswandianugrah792@man.com', 'RISWANDI ANUGRAH', 'avatar.png', '$2y$10$HufMq9AeKg0NMCR/yzfjAu0Jmpr44FF/.fJ.eg6jhm9nznsc9cgT.', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(251, '1000000250', 'rizkaiwanpasaranggayo493@man.com', 'RIZKA IWAN PASA RANGGAYO', 'avatar.png', '$2y$10$JWxwEvowO0trdKaqFLyOceixwmBjzYUM2HUWJYAPj5O13wJI3cFzq', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(252, '1000000251', 'safrinandaputra492@man.com', 'SAFRINANDA PUTRA', 'avatar.png', '$2y$10$VE/61aYSVm.Msv8g04QQnueqpNVRWi2Jyl/a1VbiXmZnLoC.Q6MxW', 3, 3, 'L', 1, 5, '2022-03-28 12:25:34', '2022-03-28 12:25:34', '0000-00-00 00:00:00'),
(253, '1000000252', 'yuliana414@man.com', 'YULIANA', 'avatar.png', '$2y$10$HvvMR6/PrbTy37Ol4KSUSOeLVZb7.pfmdPPsCIzvxMYX2ITA9xyKC', 3, 3, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(254, '1000000253', 'yulianda446@man.com', 'YULIANDA', 'avatar.png', '$2y$10$P1GvGoMdQ/XYeGuNuBRa2uqfsE/rM.3f4ylMq8wN3oJdnpN4oC/h6', 3, 3, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(255, '1000000254', 'zahran970@man.com', 'ZAHRAN', 'avatar.png', '$2y$10$J9uI.OxzLMwjV3dcoMn3GeelmuTw74IL1JAsTHfkflbQX4orcx8ju', 3, 3, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(256, '1000000255', 'abrarilliyin808@man.com', 'ABRAR ILLIYIN', 'avatar.png', '$2y$10$zXxYdB7AK7RM4oKrFZP/PO595QfA0KycE5f8.QXX2C0MrHO17ykja', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(257, '1000000256', 'adenovalkurnia111@man.com', 'ADE NOVAL KURNIA', 'avatar.png', '$2y$10$RMUZbiisMdiJhRz7axA/Bu8wmf7.4pMAVxD2QI2P7FzTKRAFlUeuG', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(258, '1000000257', 'anandasaskia986@man.com', 'ANANDA SASKIA', 'avatar.png', '$2y$10$mvOe.9c0qwiUuwqd0TkkF.e.Xb.gubYaQv3hvVdUeWIrK7bcUsx4.', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(259, '1000000258', 'asparina537@man.com', 'ASPARINA', 'avatar.png', '$2y$10$VP4Jp5z8XfIOElbH7KRvfuHaFYWHHq7tNX5oR7r8t0dL93CKoPtnK', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(260, '1000000259', 'cutmeriahsyamsi446@man.com', 'CUT MERIAH SYAMSI', 'avatar.png', '$2y$10$r/t4VhdAHieguIaEgD2gUOIsXXz2IFXao8rfQyZMRgwkGgXtTidUC', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(261, '1000000260', 'dahriaziz472@man.com', 'DAHRI AZIZ', 'avatar.png', '$2y$10$4iczpoT6Gyf31i9kGiXueON0KBGhHDKvYQTyaz0g7yO7YsSsy8Txi', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(262, '1000000261', 'diskiadlani900@man.com', 'DISKI ADLANI', 'avatar.png', '$2y$10$kq3UOLh3izbrci9zu2ffT.NYwYPRVrBPCDot89gKiAFksw0sz1Pa6', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(263, '1000000262', 'desimahbengi66@man.com', 'DESI MAHBENGI', 'avatar.png', '$2y$10$sFzKwN0Y9NUItjg.0I3ws.nk1Wef2KFGUxJkbKqIxKLfr2vWMxX5e', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(264, '1000000263', 'fahmimaisya872@man.com', 'FAHMI MAISYA', 'avatar.png', '$2y$10$HdxGdDDIS5J4NE6teNDixuFiIpkadPFSJZHpgfnW641hK49/FIOJW', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(265, '1000000264', 'humairanadila799@man.com', 'HUMAIRA NADILA', 'avatar.png', '$2y$10$eILqOCS3Wys3P6.EHFF/sO8G7gLxH9n0PbQ6bw0LkTtfqIszuy..a', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(266, '1000000265', 'husnimahtuah475@man.com', 'HUSNI MAHTUAH', 'avatar.png', '$2y$10$nh8CqV.x1H5gu1Nt2izU8OqxH80IyEhHCFbl0zpXFUU1CENrbeDx.', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(267, '1000000266', 'iqbaldarmawan304@man.com', 'IQBAL DARMAWAN', 'avatar.png', '$2y$10$dRCFR/0BYWqkDLAOpsvjweaXEa.4y4zqWcw6SqDcBBbRa3/1qx05W', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(268, '1000000267', 'israazzahra932@man.com', 'ISRA AZZAHRA', 'avatar.png', '$2y$10$T1ljzQKTTf.DlslbXqnbyuIxBikQLlRpB7GD2RkL6FxBmRP2ZXHk2', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(269, '1000000268', 'jamianqalbu598@man.com', 'JAMIAN QALBU', 'avatar.png', '$2y$10$fRDioQ8n5.TriY2mjQQPKeGvxZIcM5.yPQDWh6m6.VVMBSPnZaldW', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(270, '1000000269', 'khairunisa709@man.com', 'KHAIRUNISA', 'avatar.png', '$2y$10$H5NgH2gCdAx/ckD8C.RASOuaMPgj/oIS6pQhumKL0ldDPETTKUkpa', 3, 4, 'L', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(271, '1000000270', 'laulasalsabila295@man.com', 'LAULA SALSABILA', 'avatar.png', '$2y$10$x8ADAIRaZWBgk2er114L3ei.Mzu10/QxkR1AGtkGLvVKISu4hQoA2', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(272, '1000000271', 'niaramadhana118@man.com', 'NIA RAMADHANA', 'avatar.png', '$2y$10$i66ONjbBCZKlHEnho2Chu.nR4gKfiLpAjl/y0eM4L4kJBjafmqMqu', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(273, '1000000272', 'magfirahyurisma418@man.com', 'MAGFIRAH YURISMA', 'avatar.png', '$2y$10$TJ7OuiyDu7/PPG7eRKfGGemBcCkHtdzDpJDl8/7LQK7feACQev6t2', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(274, '1000000273', 'mauliyana445@man.com', 'MAULIYANA', 'avatar.png', '$2y$10$hjDruglFDuh1OcRw3A.lFubWymGGmeJivEOPlncsoSc76G/LynLOS', 3, 4, 'P', 1, 5, '2022-03-28 12:25:35', '2022-03-28 12:25:35', '0000-00-00 00:00:00'),
(275, '1000000274', 'meethalaura987@man.com', 'MEETHA LAURA', 'avatar.png', '$2y$10$uZZ/1C./oki9AdG7Y5nQ0.W3dj2qz4i1IKxqEQ88iavC1D2OTSxEG', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(276, '1000000275', 'mislanbahana741@man.com', 'MISLAN BAHANA', 'avatar.png', '$2y$10$sK4WXp5PxgpiLYCZJUeh9ebvgzaj78EV9FN6/ySEXPdhXy2tF.l96', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(277, '1000000276', 'nadilaraudatunnisya326@man.com', 'NADILA RAUDATUN NISYA ', 'avatar.png', '$2y$10$hItyh8qLiHfa0PotDtDQ7e5JtcrgWzz8m453nihm68qb0W57wDg92', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(278, '1000000277', 'nadyatiaraniaprilia458@man.com', 'NADYA TIARANI APRILIA', 'avatar.png', '$2y$10$.5DXcai45GixUMFrwU4dseCDZ19A4fSXdZPecliye/NF.ayi/UdJ6', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(279, '1000000278', 'm.subki509@man.com', 'M.SUBKI', 'avatar.png', '$2y$10$xKoRP08XygJz42ixlKmsV.pm0J/0WXUn6SbXtNzjMoGasNKR12mGK', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(280, '1000000279', 'noraarifah898@man.com', 'NORA ARIFAH', 'avatar.png', '$2y$10$9kUq1loCyF/jGlWnOn93GOnJBJ6tG/qJAfRFl49cygGXuSh7bFlyy', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(281, '1000000280', 'putrialyasalsabila580@man.com', 'PUTRI ALYA SALSABILA', 'avatar.png', '$2y$10$K7JEPGQi5kA6FcnUSa5rK.n.wNxtgFj3Ml0tkQqJNlpuMqW4d3Xqy', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(282, '1000000281', 'putrikawazula341@man.com', 'PUTRI KAWAZULA', 'avatar.png', '$2y$10$F4kCwMB04wyaOUhyVnsIguiQXernYBZvOSJrbyHLkcLTewVg3A05K', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(283, '1000000282', 'ramadhanfitra434@man.com', 'RAMADHAN FITRA', 'avatar.png', '$2y$10$qjmKQMl2SPdukTUesBMCo.m1isFqb61wbObYnpEYMA/f8JTJJ3cZC', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(284, '1000000283', 'randarizki239@man.com', 'RANDA RIZKI', 'avatar.png', '$2y$10$1zSTCNwI8.BJhVjpkNEq2.8k3G8yxxeEvF6UdiZwQRVRFpsy7FiFu', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(285, '1000000284', 'reladi708@man.com', 'RELADI', 'avatar.png', '$2y$10$sjdS7unSeml117buhHRxU.8KJ6uJyQPNjyF7i8HChhzzJ1BDvfIiq', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(286, '1000000285', 'rezekiwananto938@man.com', 'REZEKI WANANTO', 'avatar.png', '$2y$10$McbT4ZpOzOQek0.fym9gYuY2XjJ2ehog/3B33C33D3QdUFiWk.922', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(287, '1000000286', 'riski803@man.com', 'RISKI', 'avatar.png', '$2y$10$MCwmeWN5Piig4PljB9YEjeINR6tywTme4kpn0nIhFTVaJJ4CqogFG', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(288, '1000000287', 'riskisetiawan467@man.com', 'RISKI SETIAWAN', 'avatar.png', '$2y$10$1oc/1th4gcI2RkQ2W0EB4OVfpPPokbaHRChpvQwmPXcERRtqcVuEa', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(289, '1000000288', 'rizkiiwanramadan192@man.com', 'RIZKI IWAN RAMADAN', 'avatar.png', '$2y$10$j1LMBc7tdxYmT2Sga9.9OOI0BOw2mJUapOOiqEA4OO7RaQP7Zlruq', 3, 4, 'L', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(290, '1000000289', 'ruaida195@man.com', 'RUAIDA', 'avatar.png', '$2y$10$8Q/uLAwkppzo.UtbhUHDCOdqw20SP28iDH1OoSO1BNOUcL/Jrvr3i', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(291, '1000000290', 'selviapintenate421@man.com', 'SELVIA PINTE NATE', 'avatar.png', '$2y$10$Eji15bRLPefdsy6gJE4s7ecAPY.CPVG7dl.ANILmUDQ2RC4fle.v6', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(292, '1000000291', 'wulanmelisa582@man.com', 'WULAN MELISA', 'avatar.png', '$2y$10$Ox3.xzfF3SXvl.fk2Z4A3OLClfPQbGdyptqdZFwvMxI733vHpcF7O', 3, 4, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(293, '1000000292', 'anggunkaniya526@man.com', 'ANGGUN KANIYA', 'avatar.png', '$2y$10$5Fwk9oVFipxAu0UVro3IsuFU3xz8PloiPep4jj0.VzMrZnyTJrUzS', 3, 5, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(294, '1000000293', 'binautami407@man.com', 'BINA UTAMI', 'avatar.png', '$2y$10$RfSXle71Hxxe6nc49scXuuXF10hXLdeZ2NQzZIpweQk7UFm6qc7fW', 3, 5, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(295, '1000000294', 'ditaarmazayani21@man.com', 'DITA ARMAZA YANI', 'avatar.png', '$2y$10$9PDsjCVbuPmGstsrkUYhveOEJJeX7S6jsS62WkEkGKzkMDdQOJ3rm', 3, 5, 'P', 1, 5, '2022-03-28 12:25:36', '2022-03-28 12:25:36', '0000-00-00 00:00:00'),
(296, '1000000295', 'husnasari222@man.com', 'HUSNA SARI', 'avatar.png', '$2y$10$BxVgd.ZBLZGDdWSHNryAnujgQpxvKPXmOa9pV2Xz3PkVzLDXcgaVi', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(297, '1000000296', 'ipakyana959@man.com', 'IPAK YANA', 'avatar.png', '$2y$10$UbR40Cz6V8WwSAa.rHA5/OVRK1B8CHrgnfbxlbYxqeOxrx3Zcyh3K', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(298, '1000000297', 'istiqomah237@man.com', 'ISTIQOMAH', 'avatar.png', '$2y$10$3.CfnNm8mgji5idmwBL61u1IjczJZramIjxKbYK4C.TLojWN.VwUK', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(299, '1000000298', 'lidyaaudina106@man.com', 'LIDYA AUDINA', 'avatar.png', '$2y$10$.Zu/Sd1luM7x6KfEe9p3d.DaxhnPFG.3Zh.JQtQxIu./AWAP9jDZW', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(300, '1000000299', 'ma\'rifatinzahra327@man.com', 'MA\'RIFATIN ZAHRA', 'avatar.png', '$2y$10$ilbd/znb6DHRdEAWcIkWWu2vgqzrcyfMZFPz6T9KQTa3XI77ptfJW', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(301, '1000000300', 'melawatiputri551@man.com', 'MELAWATI PUTRI', 'avatar.png', '$2y$10$30HuhpwXLCC5UMHNgkQMVuaPX1MIUEeH9QEaCcVrS.AvISdwY5m2m', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(302, '1000000301', 'milajunitaslasih874@man.com', 'MILA JUNITA SLASIH', 'avatar.png', '$2y$10$WE/0OPYW3N10kbrZ5xyT/usG35P7oTC.1zgsdWUFyQHgtWNzkYPIG', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(303, '1000000302', 'mirnayanti750@man.com', 'MIRNA YANTI', 'avatar.png', '$2y$10$4bCAyst4O7bpXLjBXPzP0.fGhSUVwMlVYF//SrHaXNsh.R4UedhF6', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(304, '1000000303', 'nazirahusna377@man.com', 'NAZIRA HUSNA', 'avatar.png', '$2y$10$wTPhXPTnYIlANOhtjS4DLOUrQGxLIXQBXGZjZqdVpffR4KyC39IpS', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(305, '1000000304', 'helmifauziansah622@man.com', 'HELMI FAUZIANSAH', 'avatar.png', '$2y$10$xJtS4TyJSwv5qU7qJCrOO.t2RargYHLhUmH4eD0dk0nZJnZXLdRkS', 3, 5, 'L', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(306, '1000000305', 'nuraisyahborun257@man.com', 'NUR AISYAH BORU N', 'avatar.png', '$2y$10$nnO.wh3FY5wgT6fuqUJJf.SHETV.ZcCZF1XNQZv1Sh9R5q2ifOZ6G', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(307, '1000000306', 'pinterezeki135@man.com', 'PINTE REZEKI', 'avatar.png', '$2y$10$H6NclkGu/A9GAx15yuEZMeQ31q8vxnJSgo5kKf.Bzno/z3F2.Jt/u', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(308, '1000000307', 'putridamayani109@man.com', 'PUTRI DAMAYANI', 'avatar.png', '$2y$10$h5jIfLqAs2kqQYQav.tP..8FkLYYEnuUlfJFiZoJkjcWA8DRlONOC', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(309, '1000000308', 'raniapermataputri744@man.com', 'RANIA PERMATA PUTRI', 'avatar.png', '$2y$10$cz6oYac8d6PJDdpqkNgzBeLtsv6ebraEyMJCxiVVz3T0aOEt6MmGC', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(310, '1000000309', 'ruhda771@man.com', 'RUHDA', 'avatar.png', '$2y$10$V0SF4LUYSuDZtVpTwRl7xOmnU4sLbskbVNDPx7wMbiQalpdB1s2Ri', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(311, '1000000310', 'sarawidamelala241@man.com', 'SARAWIDA MELALA', 'avatar.png', '$2y$10$KdYcDeqDh0sCU5TGkhSSU.248FOG4Oh3jIIerPuG1dO4lVx6Zlr5O', 3, 5, 'L', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(312, '1000000311', 'sariramadani574@man.com', 'SARI RAMADANI', 'avatar.png', '$2y$10$lVIYxXbuq2XH7km3UI3w0.2Ex9VTJMl3YxArZ7J15xFALDqRFh3bu', 3, 5, 'L', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(313, '1000000312', 'saufayarda197@man.com', 'SAUFA YARDA', 'avatar.png', '$2y$10$pmYFX.ZpqfEWhL2vrO7m/eJofA3cUQHGOis.paLUGt5BzI1joN.1S', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(314, '1000000313', 'sitinurkhadijah566@man.com', 'SITI NUR KHADIJAH', 'avatar.png', '$2y$10$KPSWy5KuIo37f2DKP.ItUerz9J3PRYt4txv.BbuUFIFLuHjZus9UG', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(315, '1000000314', 'winnaufalmuhammad138@man.com', 'WIN NAUFAL MUHAMMAD', 'avatar.png', '$2y$10$MkAWvEK/RNyr4OrKZ.5gTuvte/gTNmCdYQImTxIwpFLbmlUKQeCxK', 3, 5, 'L', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(316, '1000000315', 'ylmianafitri353@man.com', 'YLMIANA FITRI', 'avatar.png', '$2y$10$vtPnabq6Yav0IUGwescfquNo3ttym3sDTi22KaXoGoRrfdSmHjm9m', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(317, '1000000316', 'yowenibahgie692@man.com', 'YOWENI BAHGIE', 'avatar.png', '$2y$10$RWzAtAhfwqn7zYwRaJrv6.FnR8NxWPZYE/7TfsfxcsqmBQcqAsbgq', 3, 5, 'P', 1, 5, '2022-03-28 12:25:37', '2022-03-28 12:25:37', '0000-00-00 00:00:00'),
(318, '1000000317', 'ayunisamahbengi505@man.com', 'AYU NISA MAHBENGI', 'avatar.png', '$2y$10$Pj.wdP/5flW1NgqT8/4yvuaKsot1uHv6DZCmz4GV05GaQDYPSFssm', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(319, '1000000318', 'alfisahri622@man.com', 'ALFI SAHRI', 'avatar.png', '$2y$10$0Ye/Gdr/0wxj1tg16rusZ.MWMAuHQcDyiX9QwSNUPAoF/1D1L2BC6', 3, 6, 'L', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(320, '1000000319', 'arjunaarisisara246@man.com', 'ARJUNA ARISISARA', 'avatar.png', '$2y$10$VCuIUqOqIp2PS45tdOZagegfCmCaf3ZN296I4UYOeUgrGDD.2UVOK', 3, 6, 'L', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(321, '1000000320', 'bayupitraarlo443@man.com', 'BAYU PITRA ARLO', 'avatar.png', '$2y$10$Xtchq5qyVmus17YM.zuAz.iYUb8EqDwZZXrnQUrAVanULOjzv9mF2', 3, 6, 'L', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(322, '1000000321', 'budicandra256@man.com', 'BUDI CANDRA', 'avatar.png', '$2y$10$zA21JFuU03MzGY0qFhWLlO1vbsLBh/Di5YOsUd1jRYMojOiSQr7Ty', 3, 6, 'L', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(323, '1000000322', 'dechitaisnadiani180@man.com', 'DECHITA ISNADIANI', 'avatar.png', '$2y$10$Gx2k10hBE6oaXAs11aWyS.SkPpiLkJmhf.Off1R.v.s8PYQTYAGom', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(324, '1000000323', 'desimahara442@man.com', 'DESI MAHARA', 'avatar.png', '$2y$10$hBGsHsOpkIarazoezoiaV.Npuf7xo/ULNqL3A4i6nFLrN8MQYdGum', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(325, '1000000324', 'devianggraini257@man.com', 'DEVI ANGGRAINI', 'avatar.png', '$2y$10$N8oN9izsSSZKdpkcONNre.fkk90IQSVAJJoqjiKs4qAqkTbEQjBoO', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(326, '1000000325', 'farisarahmadani737@man.com', 'FARISA RAHMADANI', 'avatar.png', '$2y$10$mgLWSjHr4tZ3WvNrqkrkgeVGJqXpyAlKeIm1V2krJvoj3lmnWywri', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(327, '1000000326', 'hairidami120@man.com', 'HAIRI DAMI', 'avatar.png', '$2y$10$Iax52hwQFlDeqsFRczho4eSoM5h5/1BBj8wwB.ldWUMMXV.yPQAse', 3, 6, 'L', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(328, '1000000327', 'hajilmasturi26@man.com', 'HAJIL MASTURI', 'avatar.png', '$2y$10$yHJWDO6jayfJph4hdDA0eOy7ePOgjvXKW8oYatLo3pLyihbuBhoWu', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(329, '1000000328', 'husnulnisa18@man.com', 'HUSNUL NISA', 'avatar.png', '$2y$10$sEI5/8G6eM3b0F5O3r/iVu8MJrSNNrVDPuxeEgPmwqJCRY3Lw3bAq', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(330, '1000000329', 'isnaini192@man.com', 'ISNAINI', 'avatar.png', '$2y$10$sQrlhM4SyEbxfEHuNtJuduucPMfIg0uF6tsx/0HXRaOvSLONSkCj6', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(331, '1000000330', 'jahrasalsabila175@man.com', 'JAHRA SALSABILA', 'avatar.png', '$2y$10$OVlxvtknkMCXi6QZ1RfXr.Df0zmJat3qXWozouNIp.Nh6.97jJU8i', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(332, '1000000331', 'julianafitri487@man.com', 'JULIANA FITRI', 'avatar.png', '$2y$10$DpWTtCfn8tY0cmeQygLV7.s2hKojx.7KehFkk7FaXZmS5qVJPeDDq', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(333, '1000000332', 'kaifarizki941@man.com', 'KAIFA RIZKI', 'avatar.png', '$2y$10$vyU2RzPjPUoW1ZDe5fk.QO9JfTB4XUT4mpRmsZ/sAH7O3rdKniJMy', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(334, '1000000333', 'maisarahsimehate412@man.com', 'MAISARAH SIMEHATE', 'avatar.png', '$2y$10$EAGnIU/5zNA5lfegZWpJ/OTEpnIepzviXq8r7paxrabroS.YEK.i6', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(335, '1000000334', 'mhd.fahrizalkr702@man.com', 'MHD. FAHRIZAL KR', 'avatar.png', '$2y$10$lcbWPX3VFSv9Zm0hcMWQH.cl/qq7EZynAnyCMOk/u.AffiwlCfSgq', 3, 6, 'L', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(336, '1000000335', 'mulyanaks539@man.com', 'MULYANA KS', 'avatar.png', '$2y$10$.BqRALVgDPNYJxnzQlu9qualLjWVBaWJNMpmzSrO6FFwI7YKGJpfO', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(337, '1000000336', 'nabilatrisinteni127@man.com', 'NABILA TRI SINTENI', 'avatar.png', '$2y$10$wJ0ljTudiz1kWbN9Kq9n0e8xgAtO3UM7hcQDIqo09XQpPtrA91ar.', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(338, '1000000337', 'nafhahsyasyasajidah988@man.com', 'NAFHAH SYASYA SAJIDAH', 'avatar.png', '$2y$10$nBmhSis.RbnPgDpU7nsrQ.qaiZL.gqUgrR6.gZ9//lbKRcMwozhC6', 3, 6, 'P', 1, 5, '2022-03-28 12:25:38', '2022-03-28 12:25:38', '0000-00-00 00:00:00'),
(339, '1000000338', 'nauvalariskaputra16@man.com', 'NAUVAL ARISKA PUTRA', 'avatar.png', '$2y$10$4uhs/ija3X3JuxZFPX.HX.5rOa.DzBQivtyitFO40P8YshxOpDDqq', 3, 6, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(340, '1000000339', 'nazaruddin885@man.com', 'NAZARUDDIN', 'avatar.png', '$2y$10$Zvn1n3/o32mR4aFsmVYJYOaOpDH2IyNBneAryM7JLomn/uRkpikzq', 3, 6, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(341, '1000000340', 'niaradeswita650@man.com', 'NIARA DESWITA', 'avatar.png', '$2y$10$tQb60dE.LMBzNTCAkDhg1Opsy1YCUh4TU8udq9PL0cDw/05BgWQTS', 3, 6, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(342, '1000000341', 'nilawati206@man.com', 'NILA WATI', 'avatar.png', '$2y$10$yMc0B45EIVWuj4B7gJUCIe8eMv2geuxaizk9bGTeukVY54TVtwUOa', 3, 6, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(343, '1000000342', 'nurwahda345@man.com', 'NUR WAHDA', 'avatar.png', '$2y$10$vxHcocvWEd5i8YAAlkV85uVM1o/rPGrUs1VHQwILRRjZlY4aYO2fe', 3, 6, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(344, '1000000343', 'oktaputri406@man.com', 'OKTA PUTRI', 'avatar.png', '$2y$10$BZoFVs5CIxFfT8UyCUYP2uUDawPm1xdoYGahjN1r51Ed7z8TBqt5e', 3, 6, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(345, '1000000344', 'rauzatulzannah451@man.com', 'RAUZATUL ZANNAH', 'avatar.png', '$2y$10$9ZwG1HprR.UE28xiKW8SieZC1O0gBogurAfRx3Nmzff6stuWVlO2a', 3, 6, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(346, '1000000345', 'reynaldi673@man.com', 'REYNALDI', 'avatar.png', '$2y$10$sAC2ADXiLT6LIVK/qikYIusrYATqq0FOmr77bpDwVN.kB.STZk6pG', 3, 6, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(347, '1000000346', 'riskinaputri224@man.com', 'RISKINA PUTRI', 'avatar.png', '$2y$10$sh8uwX5ODhS.8z5fqbmiwe9zO6DIWnGOWCkXCBUzlvyUokSVDdgwy', 3, 6, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(348, '1000000347', 'sabri926@man.com', 'SABRI', 'avatar.png', '$2y$10$4vyNqqV9trY.rIPFTA/KQOTHVGje.ZaCtAeRWSnL0ieV2eJE0piJO', 3, 6, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(349, '1000000348', 'salwani851@man.com', 'SALWANI', 'avatar.png', '$2y$10$KSl/BC5utOfF9N8iOj436egsce.y3Ozg1kkZJhQIa6JMFm8rpxmmq', 3, 6, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(350, '1000000349', 'sandipujaga348@man.com', 'SANDI PUJAGA', 'avatar.png', '$2y$10$N.jH/bn.fLDI29n/wN3smOsd1ego691yczbN2VuGfDeGKAp59DVei', 3, 6, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(351, '1000000350', 'sarianjani849@man.com', 'SARI ANJANI', 'avatar.png', '$2y$10$SZzBZZH9eaTVuuXLl.3fTuYAvzxfj/Fg6MTWSzq2lWD8c9lFcmtMW', 3, 6, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(352, '1000000351', 't.raflyyadyansyah953@man.com', 'T. RAFLY YADYANSYAH', 'avatar.png', '$2y$10$jXbRM/6zyICIMZ2qBPCDAeX/639WO7Rll.bQu9G6.e8QRHL9mkEOm', 3, 6, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(353, '1000000352', 'zikriwanpinte928@man.com', 'ZIKRI WAN PINTE', 'avatar.png', '$2y$10$gJwe6KI9/NzBa.xFEunvzOYBZ9EY1/4t9/Q6B8vvKpXdgKp2sPHDG', 3, 6, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(354, '1000000353', 'syahidulsyahputra614@man.com', 'SYAHIDUL SYAHPUTRA', 'avatar.png', '$2y$10$gTySesyJKhFsv7l7cmtSNuKBiTUSWf5VKb8MRXr.O7NPcpRrpb6R2', 3, 6, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(355, '1000000354', 'afikahsahira14@man.com', 'AFIKAH SAHIRA', 'avatar.png', '$2y$10$he8ePQWZPk9ZcIt.1SGUkuLt1MZ7pTgF9dvLw/V1hi7j5Xq8zo.9C', 3, 7, 'P', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(356, '1000000355', 'afriansyah588@man.com', 'AFRIANSYAH', 'avatar.png', '$2y$10$obKzczaEhbrRWrW2C21AR.RTR0jaM0rVDZtA57mqFj5YzTRRQJedm', 3, 7, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(357, '1000000356', 'ahmadnandakuara493@man.com', 'AHMAD NANDA KUARA', 'avatar.png', '$2y$10$yt13fNsPpz8nwe26Vb1UceVe9dEXpen.GoBf2V1uC5s9o.AHg5XQC', 3, 7, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(358, '1000000357', 'ahyamaulana251@man.com', 'AHYA MAULANA', 'avatar.png', '$2y$10$WHgiu72qSnX0YCrtZp6cVOSZGlp6O7ZXHEjEiKa7F1k0pZnQJIkCq', 3, 7, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(359, '1000000358', 'ahyaradha730@man.com', 'AHYAR ADHA', 'avatar.png', '$2y$10$Yg86Qaz3DvDhAt2z5VxiBOeJ9.vcvqP0zSVyPg3TsgQvgEG43nSh.', 3, 7, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(360, '1000000359', 'alwansyah90@man.com', 'AL WANSYAH', 'avatar.png', '$2y$10$.kfEXuJrwKJ2ef1WgOASNOlfNeiHDtQXhKAQmLlR7vK3s26NaWLfi', 3, 7, 'L', 1, 5, '2022-03-28 12:25:39', '2022-03-28 12:25:39', '0000-00-00 00:00:00'),
(361, '1000000360', 'aldiansyahrizki459@man.com', 'ALDIANSYAH RIZKI', 'avatar.png', '$2y$10$Do5COLo9SjxFvdDWAz9C9.Flsfu5720CRpBGKAEWqRWexAcOWy7kS', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(362, '1000000361', 'apindaulfa866@man.com', 'APINDA ULFA', 'avatar.png', '$2y$10$LplaZ17Qogm4Y4Hu7gIAv.HnRH3Dyb.EEWMie0oGSHhsdOe4QwvGW', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(363, '1000000362', 'azikiatun422@man.com', 'AZIKIATUN', 'avatar.png', '$2y$10$Esw8it7gu2Zrmh.yu/3RFuH4ECapoubaZ65j.euulwTODQQEhF9UW', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(364, '1000000363', 'cutintannuraini241@man.com', 'CUT INTAN NURAINI', 'avatar.png', '$2y$10$OFd1BY99D8McYcruiFFWNOYuPZ.I6998e348mgXN0WN0f2CLIfDte', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(365, '1000000364', 'dainifitri964@man.com', 'DAINI FITRI', 'avatar.png', '$2y$10$sF2KBIkUjOb.6mYAhOk0ce7pUHCejf0PAfzVGyk8gYF7xC4pEzyWG', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(366, '1000000365', 'faridiwahdi544@man.com', 'FARIDI WAHDI', 'avatar.png', '$2y$10$L3g9Gua0ZikE7Q4/r9TRluUURr/sicSPpzDiY1NJ/QCxNmWEZdMhi', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(367, '1000000366', 'ferimardiaqimi393@man.com', 'FERI MARDI AQIMI', 'avatar.png', '$2y$10$gbE2BmVFIn/1uehxTbXXD.US65bGEtitd6AL.JUyYPg37uyYSygJu', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(368, '1000000367', 'frihasupiantirini553@man.com', 'FRIHA SUPIANTI RINI', 'avatar.png', '$2y$10$Ve2L7QJeupWOulnaUwGbjO2PvVv0waDLJSeLE3HMWn.o3k26zcor2', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(369, '1000000368', 'furqan492@man.com', 'FURQAN ', 'avatar.png', '$2y$10$cIKCC22iMIrLoWj0YZTM1.zSM7zbUkini9b3mnlul3jTVD8Fsqxry', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(370, '1000000369', 'hariansyah78@man.com', 'HARIANSYAH', 'avatar.png', '$2y$10$hRfoxa6tl5xp.lqnsNcBb.NJAwTUOk.oOtBmSJcSYU.SD9U0dtGZS', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(371, '1000000370', 'ilhamfahmi718@man.com', 'ILHAM FAHMI', 'avatar.png', '$2y$10$Eal90fKzQ8E.uuO6Jd43eeO0FtN3NtiEfMFHag0Mh8HzYMsAuTdDC', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(372, '1000000371', 'itawarni346@man.com', 'ITA WARNI', 'avatar.png', '$2y$10$emb2eey8I8ofvcDBrIzSWuH43FJvuVqYhlVVWZIUVEwVUXJLwOiHm', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(373, '1000000372', 'iwanramadhan300@man.com', 'IWAN RAMADHAN', 'avatar.png', '$2y$10$XH70By1J3KCoy94fBvvCSeART/hzHpdPijkNPMCIfKIIgp3Cq/C8u', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(374, '1000000373', 'kemalaintan597@man.com', 'KEMALA INTAN', 'avatar.png', '$2y$10$lDJzvtkwYIWwtgJyav3lkeFI7bQlDs8PKc9aYlmY8AniwqAnhAvty', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(375, '1000000374', 'khairuladha641@man.com', 'KHAIRUL ADHA', 'avatar.png', '$2y$10$dCUUrPTtElBWOFU9XhkHBOBqzSGRm3kcmzVIH42U3wSTkpOJHYxhe', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(376, '1000000375', 'lindakarma904@man.com', 'LINDA KARMA', 'avatar.png', '$2y$10$lkZ3grTBH8sfeKAyi9nUSu0.Mx4FrvoDMnsAxhuR1y5b.jD2ecb96', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(377, '1000000376', 'mhd.fadhli349@man.com', 'MHD. FADHLI', 'avatar.png', '$2y$10$wbmbc1GOz7Dq/I/.RJEIEedEp5IRSDhKU.5iLObuL8yvXIJQrPBKq', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(378, '1000000377', 'milwanaprilian500@man.com', 'MILWAN APRILIAN', 'avatar.png', '$2y$10$6NBW0OswiS7lNiIkyjrVoO6H070RSW8hS9JoK/d3yoA3V5QD8rlnC', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(379, '1000000378', 'mississaprida585@man.com', 'MISSIS SAPRIDA', 'avatar.png', '$2y$10$oyJjl3GXFFgjGCfub.biKOOingu3uKkbGyiHJBNqn3emxqJHQ/mbe', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(380, '1000000379', 'mushab622@man.com', 'MUSHAB', 'avatar.png', '$2y$10$llVhRO.u1pU88X11DA9Dc.DtRbbW5p6gofmGwiBDQV03m3jY8bEUS', 3, 7, 'L', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(381, '1000000380', 'nuraini543@man.com', 'NURAINI ', 'avatar.png', '$2y$10$1o9BvRfstoJQrhld5Boxme2ZWvQs2fTfU8liD7MhZri1kizCLY7vG', 3, 7, 'P', 1, 5, '2022-03-28 12:25:40', '2022-03-28 12:25:40', '0000-00-00 00:00:00'),
(382, '1000000381', 'rahmahfathiya4@man.com', 'RAHMAH FATHIYA', 'avatar.png', '$2y$10$aTU76Jp4qmMfHbLUzS1bqOzNYEzOhN7EfCexlzvI2ryhviJm3A3uy', 3, 7, 'P', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(383, '1000000382', 'rahmatteniro117@man.com', 'RAHMAT TENIRO', 'avatar.png', '$2y$10$NNtGkPk/ImnaIhGRzFA3Bu/X3HLsTDTpa4ounLPMsbnUaYJHHkaoW', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(384, '1000000383', 'rahmatsyah936@man.com', 'RAHMATSYAH', 'avatar.png', '$2y$10$lOW/4YxLlQRKChyO.D7KlOyFcKhKXgs6Oa5f15xYRQSdLKo87fxKu', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(385, '1000000384', 'rendi386@man.com', 'RENDI', 'avatar.png', '$2y$10$i0wmzuy5uh7eXfj1mnYsWuG7Jl9gYsf2jBhy.ceT4t5hp0yTSjFrW', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(386, '1000000385', 'ridhoalsadr49@man.com', 'RIDHO AL SADR', 'avatar.png', '$2y$10$8UeTHoxnJYrCW3h4HVtaN.aost9lrP3B.1FvQM6E8YmJvrRIXr0hK', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(387, '1000000386', 'sahrial669@man.com', 'SAHRIAL', 'avatar.png', '$2y$10$ucatW.OnECf87vT8T27OVu5mYe/wBHxX5EFT2qO.yoH8ycG/E1AEK', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(388, '1000000387', 'salwanditebe221@man.com', 'SALWANDI TEBE', 'avatar.png', '$2y$10$iTr9tRuLcYeBmm9YioSbs.bidRACDLLEM1NL4F06iVbiT6ErgEj7y', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(389, '1000000388', 'selfiyuliana490@man.com', 'SELFI YULIANA', 'avatar.png', '$2y$10$oeoc4dc5AKrmbObhC7tonOZtqdJCI79DFFfbBpfoNm.OgKJCOxV3u', 3, 7, 'P', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(390, '1000000389', 'supianda52@man.com', 'SUPIANDA', 'avatar.png', '$2y$10$x0CTQ5THMngxSDGcxNuZwO6ga5gplY4A/b0JM4Dqc4x9E/IK0KO62', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(391, '1000000390', 'yassar487@man.com', 'YASSAR', 'avatar.png', '$2y$10$23c2OQGPECiDM5JpZoVnb.0cK.DUMRBv3qhaybDJsg4uRiYCqFwkS', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00'),
(392, '1000000391', 'irfanrisky206@man.com', 'IRFAN RISKY', 'avatar.png', '$2y$10$9NJv2woJqUmndwU1YJwA5OukDwtrXYvzczFaQPCaiRowh0YjmL8Je', 3, 7, 'L', 1, 5, '2022-03-28 12:25:41', '2022-03-28 12:25:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `status`, `departmentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'matematika wajib', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(2, 'matematika peminatan', 1, 2, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(3, 'fisika', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(4, 'lintas minat fisika', 1, 2, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(5, 'kimia', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(6, 'biologi', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(7, 'lintas minat biologi', 1, 2, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(8, 'lintas minat kimia', 1, 2, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(9, 'sejarah indonesia', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(10, 'sejarah peminatan', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(11, 'sejarah kebudayaan islam', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(12, 'alquran hadist', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(13, 'aqidah akhlak', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(14, 'fiqih', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(15, 'bahasa inggris', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(16, 'bahasa indonesia', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(17, 'bahasa arab', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(18, 'ekonomi', 1, 2, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(19, 'lintas minat ekonomi', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(20, 'sosiologi', 1, 2, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(21, 'lintas minat sosiologi', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(22, 'geografi', 1, 2, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(23, 'seni budaya', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(24, 'prakarya', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(25, 'penjas', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00'),
(26, 'pkn', 1, 1, '2022-03-27 21:27:53', '2022-03-27 21:27:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `nip` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `position` varchar(15) NOT NULL,
  `dob` datetime NOT NULL,
  `subjectId` int(11) NOT NULL,
  `privilegeId` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `password` varchar(60) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `nip`, `name`, `gender`, `position`, `dob`, `subjectId`, `privilegeId`, `email`, `image`, `status`, `password`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '1000000000', 'ABDYAN ABDAN MAHANA', 'L', 'teacher', '2000-01-01 00:00:00', 18, 4, 'abdyanabdanmahanal181@man.com', NULL, 1, '$2y$10$kBtBx40H5bB9i0fNSB4QjOaIcON2YH5PuRPM/TUdOeBRaBJ0kGwSe', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(2, '1000000001', 'ADE HAYATI', 'P', 'teacher', '2000-01-02 00:00:00', 20, 4, 'adehayatip202@man.com', NULL, 1, '$2y$10$d.5LEWw8Mih7I4oXdtXaFevJ46In0nnGBWbHFpBl/p.Z34qcszeUm', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(3, '1000000002', 'AHMAD QAIS MUGHITSULHAQ', 'L', 'teacher', '2000-01-03 00:00:00', 10, 4, 'ahmadqaismughitsulhaql103@man.com', NULL, 1, '$2y$10$AG729yNwDLIJO8ngkvEkT.5cFbh2Yu4Qpx6321pZZzLXMpDpYDKqS', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(4, '1000000003', 'AIDIL HADI', 'L', 'teacher', '2000-01-04 00:00:00', 7, 4, 'aidilhadil74@man.com', NULL, 1, '$2y$10$Dy.IDuVw2exyX/4rgbUKHu6wif3Q2cr4M8PBRJwhsDNEvpD2i/Csu', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(5, '1000000004', 'ANDI ARBA', 'L', 'teacher', '2000-01-05 00:00:00', 25, 4, 'andiarbal255@man.com', NULL, 1, '$2y$10$TMnC.5RUBdz1vxfEz6SKxu9NWzVizdKVKXQc4uncyFS5Ixw.PhM1y', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(6, '1000000005', 'CHAINA RAMADANA', 'P', 'teacher', '2000-01-06 00:00:00', 24, 4, 'chainaramadanap246@man.com', NULL, 1, '$2y$10$vwHgRqXtgRrn7vE3Ixboe.pD2FF9HY0kpexhjUX1doQ469nrMqQjG', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(7, '1000000006', 'DIMAS OKTAVIAN', 'L', 'teacher', '2000-01-07 00:00:00', 9, 4, 'dimasoktavianl97@man.com', NULL, 1, '$2y$10$tp/th2g8JaE0NQbxlCf6..rIdOWAKKAx2Di1TPjm/usgi9e9ZFxBO', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(8, '1000000007', 'DUHA INDRA WANSYAH', 'L', 'teacher', '2000-01-08 00:00:00', 18, 4, 'duhaindrawansyahl188@man.com', NULL, 1, '$2y$10$KwywTmZvvtkpTAvskhUyqeJ2XI07.djPARsAnYTBZ/MjyT5/9siSe', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(9, '1000000008', 'ERWIN MAULANA', 'L', 'teacher', '2000-01-09 00:00:00', 26, 4, 'erwinmaulanal269@man.com', NULL, 1, '$2y$10$XxOwXvTJy9lHzZJBFYJpmuwMFCxi9kryx1GSqIo5vOpoNaXor6pe2', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(10, '1000000009', 'FAUZAN AL KHAIRI', 'L', 'teacher', '2000-01-10 00:00:00', 12, 4, 'fauzanalkhairil1210@man.com', NULL, 1, '$2y$10$h2HtWVHMRO1EuaHECc9PEeTkTO6wlkSnUc/tjwbdbnIw8SQiAJlzG', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(11, '1000000010', 'FIHADIAN FITRA', 'L', 'teacher', '2000-01-11 00:00:00', 26, 4, 'fihadianfitral2611@man.com', NULL, 1, '$2y$10$hOM6JHxRKZDB/p5FwAWieOQ2Y3AHMzCnS12DVUjH/MUVo0Z9xJlna', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(12, '1000000011', 'FUTRI YASMINI', 'P', 'teacher', '2000-01-12 00:00:00', 4, 4, 'futriyasminip412@man.com', NULL, 1, '$2y$10$tiuJ4EStkTCRL7zDzkf/BOjBcyFYDB9XuNJrsMvnc.FMdOG/B2hZ.', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(13, '1000000012', 'IKHSAN ZIKRI', 'L', 'teacher', '2000-01-13 00:00:00', 21, 4, 'ikhsanzikril2113@man.com', NULL, 1, '$2y$10$DXWc0YU4YFEXGHQIAhCD9OYMODFte6MtEu67F6K3.S2/YFE47OHke', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(14, '1000000013', 'IQBAL AIMUL HUSNI', 'L', 'teacher', '2000-01-14 00:00:00', 12, 4, 'iqbalaimulhusnil1214@man.com', NULL, 1, '$2y$10$l8lWnqC6k.PLsv0MZcJZL.oQN9Hn9jvL2wiVXK9mOj.QyiaEq9hl.', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(15, '1000000014', 'MAULAN DARA', 'P', 'teacher', '2000-01-15 00:00:00', 1, 4, 'maulandarap115@man.com', NULL, 1, '$2y$10$38P652CNdXpX5zYQthBWtO2iLe7HZc0VVYonjZDR/DvL4Ka/2gTYC', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(16, '1000000015', 'MIFTAHUL RIFKI MY', 'L', 'teacher', '2000-01-16 00:00:00', 25, 4, 'miftahulrifkimyl2516@man.com', NULL, 1, '$2y$10$i02qFH5uBss0lZcFCzhyfuLWErO5pwn2jnzY15PBje4IzroCrdNxq', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(17, '1000000016', 'MUHAMMAD RAOSHAH', 'L', 'teacher', '2000-01-17 00:00:00', 14, 4, 'muhammadraoshahl1417@man.com', NULL, 1, '$2y$10$m/SpDAOQyHcn7vs0OEpE/.5YaN.1DD3H2yPy4WdpAPEhfFHl83uKW', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(18, '1000000017', 'SHIRATHAL FADHLA', 'L', 'teacher', '2000-01-18 00:00:00', 13, 4, 'shirathalfadhlal1318@man.com', NULL, 1, '$2y$10$mblUAaWyhw1EgusDvubGk.33ZGmwzQRtOu5OnEZVWWOSu4ZEpwswa', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(19, '1000000018', 'NABILA BIBESMI', 'P', 'teacher', '2000-01-19 00:00:00', 8, 4, 'nabilabibesmip819@man.com', NULL, 1, '$2y$10$y6puVZjABg2Nrz/KZeWzzeos/V.OlPBgIRY/wJI9CFCNx.kbDaJ16', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(20, '1000000019', 'NAUFAL FADHIL', 'L', 'teacher', '2000-01-20 00:00:00', 24, 4, 'naufalfadhill2420@man.com', NULL, 1, '$2y$10$SdFhjQgLWhWyGy0JJuAYYux3qjLS.cqG0NIsCNzkcAA0rX8mtXoXW', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(21, '1000000020', 'NIANTA HAFIDZA', 'P', 'teacher', '2000-01-21 00:00:00', 24, 4, 'niantahafidzap2421@man.com', NULL, 1, '$2y$10$JSdOJD0MaQTaDIs8Xo/96OX0/k1e2IKbNtHaWbcAo4CyoO/Kzj7fe', '2022-03-27 21:28:04', '2022-03-27 21:28:04', '0000-00-00 00:00:00'),
(22, '1000000021', 'RELIF WANTONA', 'L', 'teacher', '2000-01-22 00:00:00', 2, 4, 'relifwantonal222@man.com', NULL, 1, '$2y$10$uI6qLbEACBQn6gl7QJ9jguY5jNDMuOQTjHYmIacX7fwJ4ObZ.tEiW', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(23, '1000000022', 'RENDI FEBRIANDI', 'L', 'teacher', '2000-01-23 00:00:00', 9, 4, 'rendifebriandil923@man.com', NULL, 1, '$2y$10$V9.mgk5WUM./clyK/2nTCOabAxmZuE2030SvqHPagsTWmOLgN5YRm', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(24, '1000000023', 'REZKI MAHARA', 'L', 'teacher', '2000-01-24 00:00:00', 18, 4, 'rezkimaharal1824@man.com', NULL, 1, '$2y$10$IuBWzC19EuMl8R9j0hdkHOwsDAiRgVA0AuJ2LEB/BY/XqCiubKBra', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(25, '1000000024', 'SISMA CANTIKA PUTRI', 'P', 'teacher', '2000-01-25 00:00:00', 25, 4, 'sismacantikaputrip2525@man.com', NULL, 1, '$2y$10$7g5yOmn6rNqt6JRfUKASlueiSGlWww4dJC6quDRPqyzAS7g4/sp2q', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(26, '1000000025', 'WENI HAFIZAH', 'P', 'teacher', '2000-01-26 00:00:00', 4, 4, 'wenihafizahp426@man.com', NULL, 1, '$2y$10$h8fh4/8rnFtUqwSJ20DokusQ8ITt9FF6Z34qy/eqAOpc5txGylGd.', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(27, '1000000026', 'ARIYANA AMELIA', 'P', 'teacher', '2000-01-27 00:00:00', 15, 4, 'ariyanaameliap1527@man.com', NULL, 1, '$2y$10$3KdpVuouJlMv2Ric7BhywuJc.HT5qbkn4x0vZel2J0eibKLqZDgRm', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(28, '1000000027', 'ASHPIA NISA', 'P', 'teacher', '2000-01-28 00:00:00', 17, 4, 'ashpianisap1728@man.com', NULL, 1, '$2y$10$g63ih6Xe4mLiV1H30xhsRu5g7Py6nB1AvkF/Rn5V8ZxNTBMkoPP.i', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(29, '1000000028', 'ASNI MULYANI', 'P', 'teacher', '2000-01-29 00:00:00', 17, 4, 'asnimulyanip1729@man.com', NULL, 1, '$2y$10$iRM1LkzNGDkGMdXfKH6o7.BAEkmT2d46buXMR1jJRGVoDTS1g6ti.', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(30, '1000000029', 'BAKRI', 'L', 'teacher', '2000-01-30 00:00:00', 21, 4, 'bakril2130@man.com', NULL, 1, '$2y$10$rKlkxqC8uxyE27qW4z/ngOjWjYP8PvldBwWpjOhhecmcwfQnD90Bi', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(31, '1000000030', 'BILHAQQI', 'L', 'teacher', '2000-01-31 00:00:00', 22, 4, 'bilhaqqil2231@man.com', NULL, 1, '$2y$10$85TehMuBCG3sSyGNDRjI7e/rjVG9dXrQHwrsNpXe5vxKnjMFlphee', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(32, '1000000031', 'FATMAWATI', 'P', 'teacher', '2000-02-01 00:00:00', 4, 4, 'fatmawatip432@man.com', NULL, 1, '$2y$10$aeQRSuUJ87C77I777ZBDt.oizDnHfGEXU8Xp2Kk3VSmlf.d2Zl82.', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(33, '1000000032', 'FIRZAIRIN ULUL AZMI', 'L', 'teacher', '2000-02-02 00:00:00', 16, 4, 'firzairinululazmil1633@man.com', NULL, 1, '$2y$10$fP7v4.L8i6XFWQWO.LlM1uYe2Ck842CtLj4lCIQIdiZjc/ppshLjm', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(34, '1000000033', 'FUTRI MAHARANI', 'P', 'teacher', '2000-02-03 00:00:00', 18, 4, 'futrimaharanip1834@man.com', NULL, 1, '$2y$10$uhxbQyafmjrQqdhoJUYtneFwcESoka/1./XO6FxOkH0swjHXcjRN6', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(35, '1000000034', 'GILANG GEMILANG', 'L', 'teacher', '2000-02-04 00:00:00', 9, 4, 'gilanggemilangl935@man.com', NULL, 1, '$2y$10$wbuNA55HIb4yqqwb58ChvO3EDm4IGlHkW1nI3jH5gq6VFkQ25A5Zm', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(36, '1000000035', 'HELSI HERLINDA', 'P', 'teacher', '2000-02-05 00:00:00', 6, 4, 'helsiherlindap636@man.com', NULL, 1, '$2y$10$8i0KEAMXQLtQwQYE53V3WuAOsWPTxptQ3KAR8qbd.SGYehoCK8vFu', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(37, '1000000036', 'IFTINAH SYIFA', 'P', 'teacher', '2000-02-06 00:00:00', 16, 4, 'iftinahsyifap1637@man.com', NULL, 1, '$2y$10$gJC7OGZWstx5q/UYTe2o6uIHWCJ.0js5VcB5y4L9g4N5D7VD2n8U.', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(38, '1000000037', 'KAMISA AIDA PUTRI', 'P', 'teacher', '2000-02-07 00:00:00', 26, 4, 'kamisaaidaputrip2638@man.com', NULL, 1, '$2y$10$0CSOiZCe24.6.XR4ZE4ckuFBC40kFNwm2MujLC8c54BkrevEQRaza', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(39, '1000000038', 'MALA NOVIA FITRI', 'P', 'teacher', '2000-02-08 00:00:00', 8, 4, 'malanoviafitrip839@man.com', NULL, 1, '$2y$10$477sIM1D.aNuFu5.h9u5R.JIy0PpRCThvLOJUG3eQ0O5VqL.qurjW', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(40, '1000000039', 'MUHAMMAD HAIKAL', 'P', 'teacher', '2000-02-09 00:00:00', 6, 4, 'muhammadhaikalp640@man.com', NULL, 1, '$2y$10$ge8o6gRMuOdwxkgDfjTiZek5gYl0AhUO1RjeZITEzMopYVrDOHiVi', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(41, '1000000040', 'NABILA YANTI', 'P', 'teacher', '2000-02-10 00:00:00', 11, 4, 'nabilayantip1141@man.com', NULL, 1, '$2y$10$Z9d2sJnsWp1N8FcRjD3F/eQzrCESRhfajmt0YVLFY4yf1dub6Hcqq', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(42, '1000000041', 'NAUFAL HIBATULLAH', 'L', 'teacher', '2000-02-11 00:00:00', 23, 4, 'naufalhibatullahl2342@man.com', NULL, 1, '$2y$10$NnoTUwZpFRDgvRudTeWQUeMnX6/oAD49lfB.iYR.GdPBxJhyIs0Cu', '2022-03-27 21:28:05', '2022-03-27 21:28:05', '0000-00-00 00:00:00'),
(43, '1000000042', 'QHANDIRA ALSA GUFRANA', 'P', 'teacher', '2000-02-12 00:00:00', 3, 4, 'qhandiraalsagufranap343@man.com', NULL, 1, '$2y$10$53hmvjXerq4Ns4F/tAHJdu/0aruGe1d0vuueucQtgqTy/ESd9xRc.', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(44, '1000000043', 'RAUZATUL ZANNAH', 'P', 'teacher', '2000-02-13 00:00:00', 9, 4, 'rauzatulzannahp944@man.com', NULL, 1, '$2y$10$.SpJh6i5l6sRe4g6mTV21Od0ueTXUvjHlL5bp4GpRu/tMcTSepC1e', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(45, '1000000044', 'RESI DIAN OKTESYA', 'P', 'teacher', '2000-02-14 00:00:00', 2, 4, 'residianoktesyap245@man.com', NULL, 1, '$2y$10$PEV5mx7E/z4wg.YFAZLS3ulfiKvjxb3mTV75Mi3PpLV2TzAIIbEme', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(46, '1000000045', 'RIYANDA', 'L', 'teacher', '2000-02-15 00:00:00', 8, 4, 'riyandal846@man.com', NULL, 1, '$2y$10$Upf.JVsx8pBht8GiLbWOcuCjn9u9K3x7J7ZORxzXm2QTKg0XIwgte', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(47, '1000000046', 'RIFA RAHMAN', 'L', 'teacher', '2000-02-16 00:00:00', 9, 4, 'rifarahmanl947@man.com', NULL, 1, '$2y$10$5pkIJebtfo11.gbjDF7mQuoNCiopX/UQtPfzQG9MEIWqR3PSYTTpG', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(48, '1000000047', 'RINI DIANTI', 'P', 'teacher', '2000-02-17 00:00:00', 18, 4, 'rinidiantip1848@man.com', NULL, 1, '$2y$10$aBMK02JJCvFbiyg6Mx/76OAHlY8R2lJ4A1B9LqwOxC72PqdP6PnFO', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(49, '1000000048', 'ROZA AMELIA SAHRAINI', 'P', 'teacher', '2000-02-18 00:00:00', 8, 4, 'rozaameliasahrainip849@man.com', NULL, 1, '$2y$10$KOO.q4P2t9fcaucuVZAryeJR.U1yD.UD0knrcCD5uHomQiqt6fSuq', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(50, '1000000049', 'MUHAMMAD DZAKI HABIBI', 'L', 'teacher', '2000-02-19 00:00:00', 24, 4, 'muhammaddzakihabibil2450@man.com', NULL, 1, '$2y$10$RR5GpcFLmUPxcLbPyPCcGedw6gX09lKEESA4uvvhQ1H5XnOBP.yie', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(51, '1000000050', 'SINTHIA ATIKAH', 'P', 'teacher', '2000-02-20 00:00:00', 18, 4, 'sinthiaatikahp1851@man.com', NULL, 1, '$2y$10$psZs7YPGJvKcm3SD/1E7KujpW11PB4FGgf7DvJbMeaUkJXZ0.C5d.', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(52, '1000000051', 'TAUFIK HIDAYAT', 'L', 'teacher', '2000-02-21 00:00:00', 10, 4, 'taufikhidayatl1052@man.com', NULL, 1, '$2y$10$8M3ToaeVs1z3TMtp64Hk1OH7uh8CEIYEueI9SAou1fZ.uk.eMlzny', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(53, '1000000052', 'ULFA FITRIA', 'P', 'teacher', '2000-02-22 00:00:00', 1, 4, 'ulfafitriap153@man.com', NULL, 1, '$2y$10$q1DdVa52.nP6jganPoXC9uDe0.87b6E/gY.oLzQ8gAinqHOm4XW8a', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(54, '1000000053', 'USWATUN NAZWA', 'P', 'teacher', '2000-02-23 00:00:00', 4, 4, 'uswatunnazwap454@man.com', NULL, 1, '$2y$10$n8ENrgGZG1A6TASgnEvZNuioMy9n3uqU4.wPnN2qR0BhI/7PeCIV2', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(55, '1000000054', 'YULI ARNIA', 'P', 'teacher', '2000-02-24 00:00:00', 3, 4, 'yuliarniap355@man.com', NULL, 1, '$2y$10$7BjO0g5AzYZ/x60Je5pQ7e4KVQlOu4O9IefZTc/WT8Kt9PmQ64uze', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(56, '1000000055', 'ZAHRINA IZZATI S', 'P', 'teacher', '2000-02-25 00:00:00', 13, 4, 'zahrinaizzatisp1356@man.com', NULL, 1, '$2y$10$cn7xqsb2NHMHyJflXzhkv.VDC3GiDromgW//EXZzgaSceyvfwVT5K', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(57, '1000000056', 'DALILA KHAIRY', 'P', 'teacher', '2000-02-26 00:00:00', 20, 4, 'dalilakhairyp2057@man.com', NULL, 1, '$2y$10$OsEGV.rxyfhhZRWiuretnev3l/YeNmkttTD2yhgvRa8oYIeNqUxXC', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(58, '1000000057', 'NAUFAL ZAHRAN', 'L', 'teacher', '2000-02-27 00:00:00', 26, 4, 'naufalzahranl2658@man.com', NULL, 1, '$2y$10$zuGPtO6de1VTA7V8hXIYh.iQ.T9gfg9xRqnqGLFEyRXfMuJMyfOKS', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(59, '1000000058', 'SYAFA UQBAH ARRAFI', 'L', 'teacher', '2000-02-28 00:00:00', 25, 4, 'syafauqbaharrafil2559@man.com', NULL, 1, '$2y$10$rj3uJJyil1KZbd/z5Y4VI.ryFQIDEqxYE8OciDrlvw3yFG7YFSTU.', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(60, '1000000059', 'ARIKA SIMEHATE', 'P', 'teacher', '2000-02-29 00:00:00', 22, 4, 'arikasimehatep2260@man.com', NULL, 1, '$2y$10$prc8KjKMXCA5rWXHLDf3vu2t8wsPI3Po4xtwqWj9Pf2XBBStGOYkC', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(61, '1000000060', 'ALPANDI', 'L', 'teacher', '2000-03-01 00:00:00', 24, 4, 'alpandil2461@man.com', NULL, 1, '$2y$10$.boDXe1TQeQ.ryvTGbgb.u2lHBii.VUyG2MjcmKSnAb8ppBkhr.3i', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(62, '1000000061', 'AURA DINA', 'P', 'teacher', '2000-03-02 00:00:00', 14, 4, 'auradinap1462@man.com', NULL, 1, '$2y$10$E37ffgygYc3O/m4vVeVKReQ0Lg/fF9TjXZuwSyzajyvYVtV60OodG', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(63, '1000000062', 'BUNGE LUSIANA', 'P', 'teacher', '2000-03-03 00:00:00', 1, 4, 'bungelusianap163@man.com', NULL, 1, '$2y$10$a6pvPLt7sJjETuhsUmDLduVTZRD6n1na00R0AtpNRjJF11bq9yvaC', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(64, '1000000063', 'FUTRI SALSABILA', 'P', 'teacher', '2000-03-04 00:00:00', 9, 4, 'futrisalsabilap964@man.com', NULL, 1, '$2y$10$wrujrDcoCI8yWXTOOGgFOeIB3zoCOK0fsBVffscVAVnqeKn0gwfnK', '2022-03-27 21:28:06', '2022-03-27 21:28:06', '0000-00-00 00:00:00'),
(65, '1000000064', 'HAMDAN', 'L', 'teacher', '2000-03-05 00:00:00', 9, 4, 'hamdanl965@man.com', NULL, 1, '$2y$10$RcWVqZxphP7AX9YKvTkITuXeod.iZvy5QPmVURRFLpJJs5kr7xYQu', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(66, '1000000065', 'JURFA NAJWA', 'P', 'teacher', '2000-03-06 00:00:00', 14, 4, 'jurfanajwap1466@man.com', NULL, 1, '$2y$10$mV25LvO/Q1JmKlnz6uFoxuPsNFe4Typ32eBPSVrPpEKLgmPwThvbO', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(67, '1000000066', 'KHAIRI FIKRI', 'L', 'teacher', '2000-03-07 00:00:00', 13, 4, 'khairifikril1367@man.com', NULL, 1, '$2y$10$Npwfg1EhQ5FchaZ11cd56OlOmZblgtOxjm18/QFKlVr8gz/gqYdnC', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(68, '1000000067', 'LIZA NOVRIANA', 'P', 'teacher', '2000-03-08 00:00:00', 22, 4, 'lizanovrianap2268@man.com', NULL, 1, '$2y$10$NDpnWACwqXJhSYdvn8zCQ.w1gCN.ljX8DAD.UPBy8fhX73cOpMDMS', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(69, '1000000068', 'MAUZA ISMIADI', 'L', 'teacher', '2000-03-09 00:00:00', 9, 4, 'mauzaismiadil969@man.com', NULL, 1, '$2y$10$NJ3bLvYBCcuumHe7N9tXwePNHydE.ZOB2zM.7qiLo5XUeNsEdDGMC', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(70, '1000000069', 'MELA YUNITA', 'P', 'teacher', '2000-03-10 00:00:00', 10, 4, 'melayunitap1070@man.com', NULL, 1, '$2y$10$gEXFlcZTaBMyl4qNaSQZ3.BLEV2dNiusBe0b53/vIVkcHjL/uxTmu', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(71, '1000000070', 'MUTIARA RAMADHANI', 'P', 'teacher', '2000-03-11 00:00:00', 5, 4, 'mutiararamadhanip571@man.com', NULL, 1, '$2y$10$sjZtuBX0uwTQ/VNIKwEETefuIoEun8twWtik0WGa1dQLvA38du3o.', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(72, '1000000071', 'NADIA ', 'P', 'teacher', '2000-03-12 00:00:00', 1, 4, 'nadiap172@man.com', NULL, 1, '$2y$10$KWKqoGNkz6u42sKq93hUP.sZO9aUpFbrVsNRnvUt41j76szQphLay', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(73, '1000000072', 'NAUFAL WALIYUL HAQ', 'L', 'teacher', '2000-03-13 00:00:00', 4, 4, 'naufalwaliyulhaql473@man.com', NULL, 1, '$2y$10$gMD/ZALqxvf2u.6KH.CTX.e0IDLcRZzr8aAU0v8Rpd0sxXdHoM4fS', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(74, '1000000073', 'PINTA SARI', 'P', 'teacher', '2000-03-14 00:00:00', 2, 4, 'pintasarip274@man.com', NULL, 1, '$2y$10$jhyZ5sKM6znt0Z2N6KWfiOvNzfaCtYMuOGutNXMCUZDKT1zTUhPWW', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(75, '1000000074', 'RENDIA FITRAWAN', 'L', 'teacher', '2000-03-15 00:00:00', 19, 4, 'rendiafitrawanl1975@man.com', NULL, 1, '$2y$10$NFxxnNo1YYDoiryCE22vBeTSfGnx1PW5YIwaUinFPDB9.51GhLY0q', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(76, '1000000075', 'RIDHA JUNITA', 'P', 'teacher', '2000-03-16 00:00:00', 25, 4, 'ridhajunitap2576@man.com', NULL, 1, '$2y$10$pz4CLPUkLSlDy5aikXnm0.JRxjsDjhao/mAQLDmVJewgWqSgCPp0W', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(77, '1000000076', 'RIFDA FRIATIN', 'L', 'teacher', '2000-03-17 00:00:00', 22, 4, 'rifdafriatinl2277@man.com', NULL, 1, '$2y$10$rqSEGMkmcPVS1vlSjoBzW.03JQrts4foVJmX.fJLB0.ZBWXeY3qYu', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(78, '1000000077', 'RIFKI RAHMAN HAKIM', 'L', 'teacher', '2000-03-18 00:00:00', 24, 4, 'rifkirahmanhakiml2478@man.com', NULL, 1, '$2y$10$NXf.hD0bPA6vhetF3kJ17uvp4JrRC/cB3YhTFJIYrcFdbXOKuYe0i', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(79, '1000000078', 'RIZKA ANINDRA', 'L', 'teacher', '2000-03-19 00:00:00', 2, 4, 'rizkaanindral279@man.com', NULL, 1, '$2y$10$ZPXPWtCDZ55gNCSBX.IAROpHpb9C/NMG6v.FbQ0kxc6bktoJ4Ta7q', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(80, '1000000079', 'RIZKI SYAFITRI', 'P', 'teacher', '2000-03-20 00:00:00', 24, 4, 'rizkisyafitrip2480@man.com', NULL, 1, '$2y$10$hyod/Gd3vPRx5E25LIfL7.6OZFSfTIiR4LNmol6I2VsusmnbruP9.', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(81, '1000000080', 'SAHRANI PUTRI', 'P', 'teacher', '2000-03-21 00:00:00', 26, 4, 'sahraniputrip2681@man.com', NULL, 1, '$2y$10$y03ht/WeRO4m8puJQ2C8L.ztxHWbmi7zWDgUg9EunH265nDuE1Fxe', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(82, '1000000081', 'SELVIA AFRIANI', 'P', 'teacher', '2000-03-22 00:00:00', 26, 4, 'selviaafrianip2682@man.com', NULL, 1, '$2y$10$l5vJwxq/773gG/Y13unFguGx/5Us611mn2ahBOkGrV9MpC8awMn2S', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(83, '1000000082', 'SOPIA RAMADHANI', 'P', 'teacher', '2000-03-23 00:00:00', 17, 4, 'sopiaramadhanip1783@man.com', NULL, 1, '$2y$10$e7.w6cTh9mMfZT6w2JAdgOZAsfNVe50Dp6L5HZczxLbvU28r2m.S2', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(84, '1000000083', 'SULASTRI ULANDARI', 'P', 'teacher', '2000-03-24 00:00:00', 17, 4, 'sulastriulandarip1784@man.com', NULL, 1, '$2y$10$VgLe76tJt0S1P6TunIxie.GhtztOPk18naAHbO3wgrnV0/gRxgcmm', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(85, '1000000084', 'YOGA SETIAWAN', 'L', 'teacher', '2000-03-25 00:00:00', 11, 4, 'yogasetiawanl1185@man.com', NULL, 1, '$2y$10$vuI4gmMoE.lNQKAG.dONSu5gabFVjhfXG6Nm8zwwaJ7n0ETh/xkbm', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(86, '1000000085', 'ZAHARA DWE ARIANTI', 'P', 'teacher', '2000-03-26 00:00:00', 18, 4, 'zaharadweariantip1886@man.com', NULL, 1, '$2y$10$QSgc4R0DMOivmWBXWa/8K.YZHVEO1N/Amqw29I7rhTy2yHBV8.7vy', '2022-03-27 21:28:07', '2022-03-27 21:28:07', '0000-00-00 00:00:00'),
(87, '1000000086', 'ZAHARA MURNI', 'P', 'teacher', '2000-03-27 00:00:00', 2, 4, 'zaharamurnip287@man.com', NULL, 1, '$2y$10$C7N1BmqxCYTNJctJe4Aw0u9hImtEn/uPtksN6uWTCqIwW1XdSgRj6', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(88, '1000000087', 'ZAHRANI IZZATI S', 'P', 'teacher', '2000-03-28 00:00:00', 20, 4, 'zahraniizzatisp2088@man.com', NULL, 1, '$2y$10$BYuE/3g4y.Cb2cPXQztjuuRZWGaNmo50ImDzJeZXAqBA9KuDRfUt.', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(89, '1000000088', 'ZILFANA KHAIRUN NISA', 'P', 'teacher', '2000-03-29 00:00:00', 8, 4, 'zilfanakhairunnisap889@man.com', NULL, 1, '$2y$10$tbF800xHqSQW4lyTMUGw2.P9epPyqK24hSD3Lb610KddOJi7WhdJO', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(90, '1000000089', 'JUSPIKA ARADI', 'L', 'teacher', '2000-03-30 00:00:00', 4, 4, 'juspikaaradil490@man.com', NULL, 1, '$2y$10$cMukHKNJjXJt1R3i2ogbouMW9PJBypuofFEXUykIrih39B4BguMfa', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(91, '1000000090', 'NOVA DILIZA', 'P', 'teacher', '2000-03-31 00:00:00', 1, 4, 'novadilizap191@man.com', NULL, 1, '$2y$10$iSZmIVT/hx6g83UpPiRxB./QTbWCLm44ku6PuAhcG1VzIz84zgF6a', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(92, '1000000091', 'FITRA ARIGA', 'L', 'teacher', '2000-04-01 00:00:00', 11, 4, 'fitraarigal1192@man.com', NULL, 1, '$2y$10$iSv7aSjbvpB5M.kP1nxNIececXe3TfrJEmE4tgNpdgVt2omJucDkO', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(93, '1000000092', 'INTAN NURHAYATI', 'P', 'teacher', '2000-04-02 00:00:00', 20, 4, 'intannurhayatip2093@man.com', NULL, 1, '$2y$10$4IuQnHswmyhFLBAMKaMXT.lqAYl2.5ux5gPVIKZDsrHIAvWTybFpK', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(94, '1000000093', 'WIN TEGUH IWAN RANTONI', 'L', 'teacher', '2000-04-03 00:00:00', 16, 4, 'winteguhiwanrantonil1694@man.com', NULL, 1, '$2y$10$UcCM30J22.iYMvqNBRritOMbVUSjuioIFKlgXZK/ToPjTyouRN82K', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(95, '1000000094', 'ABDYAN ABDAN MAHANA', 'L', 'teacher', '2000-04-04 00:00:00', 13, 4, 'abdyanabdanmahanal1395@man.com', NULL, 1, '$2y$10$YtdY9S9CkV1k0eIRRaBU3O24UYsfWw3qr3zoEWb4k5DbhJoRhJRK2', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(96, '1000000095', 'ADE HAYATI', 'P', 'teacher', '2000-04-05 00:00:00', 24, 4, 'adehayatip2496@man.com', NULL, 1, '$2y$10$A/CHdpnMD3o.Ifrtr6aoh.g2o47tPzNgsnr67XM9EU1ZXjfue1kf.', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(97, '1000000096', 'AHMAD QAIS MUGHITSULHAQ', 'L', 'teacher', '2000-04-06 00:00:00', 19, 4, 'ahmadqaismughitsulhaql1997@man.com', NULL, 1, '$2y$10$CorxJGngWGIG2V8bIguVC.FliRFil0noOSIZWFPxnUMKbFRuX/9X2', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(98, '1000000097', 'AIDIL HADI', 'L', 'teacher', '2000-04-07 00:00:00', 24, 4, 'aidilhadil2498@man.com', NULL, 1, '$2y$10$5ZYwvkSuMFco/ZGl7XnbzOC5vEdoy2Cn9.tv8q7MDTJVhGeHH26my', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(99, '1000000098', 'ANDI ARBA', 'L', 'teacher', '2000-04-08 00:00:00', 9, 4, 'andiarbal999@man.com', NULL, 1, '$2y$10$Yx2hxZpqtaZ1sNLGZUM0QerDEoWIirTd3eLVDUl77n74GQ3LYROqS', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(100, '1000000099', 'CHAINA RAMADANA', 'P', 'teacher', '2000-04-09 00:00:00', 19, 4, 'chainaramadanap19100@man.com', NULL, 1, '$2y$10$rpaEbTM1aXyjDW9cXThfGOi8YZh8/kf/JBEEvHBq70VTaOUopR27G', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(101, '1000000100', 'DIMAS OKTAVIAN', 'L', 'teacher', '2000-04-10 00:00:00', 10, 4, 'dimasoktavianl10101@man.com', NULL, 1, '$2y$10$W6svg7UXdzOVxQDGJgcbROk09W5uFTFSQFp.FbRoHPgVwbxncIel.', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(102, '1000000101', 'DUHA INDRA WANSYAH', 'L', 'teacher', '2000-04-11 00:00:00', 4, 4, 'duhaindrawansyahl4102@man.com', NULL, 1, '$2y$10$DyBo2kIYp4s7ozLtxxJkh.0lMuVFnBySK7KIIq9m3vSmIsuUHgsmm', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(103, '1000000102', 'ERWIN MAULANA', 'L', 'teacher', '2000-04-12 00:00:00', 4, 4, 'erwinmaulanal4103@man.com', NULL, 1, '$2y$10$cf6HPE8ghsgv1og3k5otdO5kmhGdLqn/ry5MCIC4XbH.DyYjjMZ0C', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(104, '1000000103', 'FAUZAN AL KHAIRI', 'L', 'teacher', '2000-04-13 00:00:00', 25, 4, 'fauzanalkhairil25104@man.com', NULL, 1, '$2y$10$dqioyO8iTt.JqIAnCOlZJuvrjskiAm1qF4o.aPvudvJeav7IoVL7y', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(105, '1000000104', 'FIHADIAN FITRA', 'L', 'teacher', '2000-04-14 00:00:00', 3, 4, 'fihadianfitral3105@man.com', NULL, 1, '$2y$10$8vYJPkFbayIccc9Hru8ETeOJSOhjjl2ptHVigcc1AHBjXxRjtLuR6', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(106, '1000000105', 'FUTRI YASMINI', 'P', 'teacher', '2000-04-15 00:00:00', 8, 4, 'futriyasminip8106@man.com', NULL, 1, '$2y$10$NeH4PPTGwo1MCTwOGA06.u30a0bu9LrwCxbDlyCEzDeF8vh/jwJmG', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(107, '1000000106', 'IKHSAN ZIKRI', 'L', 'teacher', '2000-04-16 00:00:00', 22, 4, 'ikhsanzikril22107@man.com', NULL, 1, '$2y$10$dd9dtud3xjXlj4P1nOb82u37y1vf8bLJdz.bxn4kBU180.7fAFuja', '2022-03-27 21:28:08', '2022-03-27 21:28:08', '0000-00-00 00:00:00'),
(108, '1000000107', 'IQBAL AIMUL HUSNI', 'L', 'teacher', '2000-04-17 00:00:00', 7, 4, 'iqbalaimulhusnil7108@man.com', NULL, 1, '$2y$10$z820Ly9T0Wb9KwNT2tfsc.hsp5o3tz3T6wo6ppO/jPQ833Hr/.3Rq', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(109, '1000000108', 'MAULAN DARA', 'P', 'teacher', '2000-04-18 00:00:00', 7, 4, 'maulandarap7109@man.com', NULL, 1, '$2y$10$JDoNq2XMj6QrXxUarmDWVebZrZell3oUFwHr7oemIhw3EMqRC0R2m', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(110, '1000000109', 'MIFTAHUL RIFKI MY', 'L', 'teacher', '2000-04-19 00:00:00', 10, 4, 'miftahulrifkimyl10110@man.com', NULL, 1, '$2y$10$ZY3j8vqq.whXD87VXP6B1epve0FPFoS3kI8l3VQyXQwkflFhLtLGu', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(111, '1000000110', 'MUHAMMAD RAOSHAH', 'L', 'teacher', '2000-04-20 00:00:00', 7, 4, 'muhammadraoshahl7111@man.com', NULL, 1, '$2y$10$mgnZV8ICuhmtOICgNUktHOUGs4sKlwWSud2z4TfKzyhg1mU2fcc5C', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(112, '1000000111', 'SHIRATHAL FADHLA', 'L', 'teacher', '2000-04-21 00:00:00', 25, 4, 'shirathalfadhlal25112@man.com', NULL, 1, '$2y$10$xYGPRQ.LHLas.41OVldWW.YV7rTlV0XiA/B6/GgWRmDjptfbnslpe', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(113, '1000000112', 'NABILA BIBESMI', 'P', 'teacher', '2000-04-22 00:00:00', 5, 4, 'nabilabibesmip5113@man.com', NULL, 1, '$2y$10$O7qlLoZ1G6EQkRoKf95njezJdiBejVq39ko/ldiehCRJGs/lE.nna', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(114, '1000000113', 'NAUFAL FADHIL', 'L', 'teacher', '2000-04-23 00:00:00', 3, 4, 'naufalfadhill3114@man.com', NULL, 1, '$2y$10$rKY74i2oy2XUxEc/2zq/Tud/vUZsRD7DXhuGi5rNvt432ARlVNjAe', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(115, '1000000114', 'NIANTA HAFIDZA', 'P', 'teacher', '2000-04-24 00:00:00', 22, 4, 'niantahafidzap22115@man.com', NULL, 1, '$2y$10$X7.BYX5WexDWkDxqTr3A3ezSsVzSQoa5C81Gx1siWIl6YfP2hNkp2', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(116, '1000000115', 'RELIF WANTONA', 'L', 'teacher', '2000-04-25 00:00:00', 13, 4, 'relifwantonal13116@man.com', NULL, 1, '$2y$10$vXGybkjZbvkfJEv/w5wxW.u2AaX3KKBObRHwuGTjPj9.MkYu1rEQ.', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(117, '1000000116', 'RENDI FEBRIANDI', 'L', 'teacher', '2000-04-26 00:00:00', 5, 4, 'rendifebriandil5117@man.com', NULL, 1, '$2y$10$6i3SGayRO3q.CywHJtZdxexyBYbt1rY3OtTNQRNfI9RfNfnPZT9jm', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(118, '1000000117', 'REZKI MAHARA', 'L', 'teacher', '2000-04-27 00:00:00', 13, 4, 'rezkimaharal13118@man.com', NULL, 1, '$2y$10$O82KEPFnK/7UpB9HBxs0UuU3rxo.NYlbmmpF78HpJN.fm4IY9ZT2i', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(119, '1000000118', 'SISMA CANTIKA PUTRI', 'P', 'teacher', '2000-04-28 00:00:00', 21, 4, 'sismacantikaputrip21119@man.com', NULL, 1, '$2y$10$7gQsh9QFSHT8L//hcjyTEuRKM.QoArANS6gw.YxhJt18Ba.D9OpCe', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(120, '1000000119', 'WENI HAFIZAH', 'P', 'teacher', '2000-04-29 00:00:00', 21, 4, 'wenihafizahp21120@man.com', NULL, 1, '$2y$10$D0KvOk.I70PcTzYrPGr19uU5EYCSz1xFpa7P6uYukusCLnpzWdlpC', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(121, '1000000120', 'AGIH ILHAM', 'L', 'teacher', '2000-04-30 00:00:00', 20, 4, 'agihilhaml20121@man.com', NULL, 1, '$2y$10$Lew7NqsBU7RVAEp5Cmotje.tqF.kpD8mV2na15cw5U4G2Bt7018Pa', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(122, '1000000121', 'AISY FAHROZI', 'L', 'teacher', '2000-05-01 00:00:00', 4, 4, 'aisyfahrozil4122@man.com', NULL, 1, '$2y$10$vtrUQ5wb40GW48WzK2P2WOEaofmwevJHFnaqxqwyybc2m75yx8GjC', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(123, '1000000122', 'ANGGUN CYTRA ROZHA', 'P', 'teacher', '2000-05-02 00:00:00', 24, 4, 'angguncytrarozhap24123@man.com', NULL, 1, '$2y$10$6rQuewl5AjvRGEH7WPnF4.IKh04Ca.LehbjC90i93.sWouo0Wj0hS', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(124, '1000000123', 'ARYANA', 'P', 'teacher', '2000-05-03 00:00:00', 12, 4, 'aryanap12124@man.com', NULL, 1, '$2y$10$i2GiMhbQxl8wGrgFj7fIY.GD12scGgHd.kKofHBdPeSwqs3210V0S', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(125, '1000000124', 'AWALLUDIN NOVRIANDI M', 'L', 'teacher', '2000-05-04 00:00:00', 6, 4, 'awalludinnovriandiml6125@man.com', NULL, 1, '$2y$10$bSM4Dr4LzPY5C.YvyKnXcumEuufs0i42MxUbZJgzROxJJXR3vhTiu', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(126, '1000000125', 'DIANA', 'P', 'teacher', '2000-05-05 00:00:00', 1, 4, 'dianap1126@man.com', NULL, 1, '$2y$10$YhaTI60j/wQLc41GGD.WWeM7jQKEagPNSUTMkM3ceU3Z0AbHVgB.y', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(127, '1000000126', 'FANI LIDIA FUTRI', 'P', 'teacher', '2000-05-06 00:00:00', 24, 4, 'fanilidiafutrip24127@man.com', NULL, 1, '$2y$10$IxLlEmSUKBG7i.8COr2B6eFXQD/iuYl7J8qN.dDMNKogtNINr8Mby', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(128, '1000000127', 'GHUFRAN ABAL', 'L', 'teacher', '2000-05-07 00:00:00', 6, 4, 'ghufranaball6128@man.com', NULL, 1, '$2y$10$budPZl88WB9LZ1a6JsA04uRvbejHb9LlGnx2jEDOv1aJmfZlvhCFa', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(129, '1000000128', 'HAFIDZ  ALFARIZI', 'L', 'teacher', '2000-05-08 00:00:00', 2, 4, 'hafidzalfarizil2129@man.com', NULL, 1, '$2y$10$/SYykXBTzGxX6Vq/ROPEA.en0iBlG67gq1xSqbSp6mb9RYel5Dtya', '2022-03-27 21:28:09', '2022-03-27 21:28:09', '0000-00-00 00:00:00'),
(130, '1000000129', 'HAFIDZA HAFIF AZIZ', 'P', 'teacher', '2000-05-09 00:00:00', 7, 4, 'hafidzahafifazizp7130@man.com', NULL, 1, '$2y$10$nEpw3OKwGKDtQLoztETrTuhnA8Mwjnz9pd1PujGX5elNgPhi26LAG', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(131, '1000000130', 'ILHAM ELSANDI', 'L', 'teacher', '2000-05-10 00:00:00', 11, 4, 'ilhamelsandil11131@man.com', NULL, 1, '$2y$10$LPJ1/2pHuQZ3YPB0pBZLdec0E1f6/uO5Df4Q1NMsqMYA.3j0.vIiq', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(132, '1000000131', 'INE SALVANI RENGGALI ', 'P', 'teacher', '2000-05-11 00:00:00', 9, 4, 'inesalvanirenggalip9132@man.com', NULL, 1, '$2y$10$TzH9boqJj6aepyH9Fxz33uq0Z4VXCKFs6iszYfob4ErglJsFRHmwS', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(133, '1000000132', 'IWAN REZEKI', 'L', 'teacher', '2000-05-12 00:00:00', 2, 4, 'iwanrezekil2133@man.com', NULL, 1, '$2y$10$wOGCkLolf2XQ2BTiEBCPluDsF934P.o1ry4XBJX.chG90ZBo2g/TG', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(134, '1000000133', 'JUNAIDI', 'L', 'teacher', '2000-05-13 00:00:00', 23, 4, 'junaidil23134@man.com', NULL, 1, '$2y$10$NmVE0lnpnUAg7N3zmT3GV.Gm1bcuNnn6E7RnzCfIY1SpO9H9t8m0u', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(135, '1000000134', 'KAMISA', 'P', 'teacher', '2000-05-14 00:00:00', 21, 4, 'kamisap21135@man.com', NULL, 1, '$2y$10$z1UblrrGXTz3TMs2eEjVvevb8xgtGuPtsia5bS6avaExqln0pvK0K', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(136, '1000000135', 'NAJWA SALSABILA LAILI', 'P', 'teacher', '2000-05-15 00:00:00', 17, 4, 'najwasalsabilalailip17136@man.com', NULL, 1, '$2y$10$UFniqmXALXyAEOb7DDAExOZHhIn2lr0uJ/rCV9IMNX0cdiF08LGxq', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(137, '1000000136', 'NOVYA SALISCA', 'P', 'teacher', '2000-05-16 00:00:00', 10, 4, 'novyasaliscap10137@man.com', NULL, 1, '$2y$10$pw1EcR7d/oz7NuUuyoIjf.EHkR8QpcmKVVYCRXeWfw8wXb9RuS4PK', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(138, '1000000137', 'RADIANSYAH', 'L', 'teacher', '2000-05-17 00:00:00', 16, 4, 'radiansyahl16138@man.com', NULL, 1, '$2y$10$um2U5.6kQvzYnWQrasOo/ORGlh08lWtr62khsuNpXrWzMjUxQkW5W', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(139, '1000000138', 'RAHMITA FITRI', 'P', 'teacher', '2000-05-18 00:00:00', 1, 4, 'rahmitafitrip1139@man.com', NULL, 1, '$2y$10$gsYpcazxh4q8Mer9hcY2F.Zyt3pRIR4Mvv/CXUTTooGN5BJETmeTO', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(140, '1000000139', 'RAJA GILANG', 'L', 'teacher', '2000-05-19 00:00:00', 3, 4, 'rajagilangl3140@man.com', NULL, 1, '$2y$10$1EdUEApf6QNzueLATq3mIulSz5MQl1I6IiML9D.dRCpZ.s95DouMO', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(141, '1000000140', 'RASIKA DEWI S', 'P', 'teacher', '2000-05-20 00:00:00', 14, 4, 'rasikadewisp14141@man.com', NULL, 1, '$2y$10$5MOYxL8MLA3dxUjr0JF6UuKTem7XWnt1bALUuajI8Jez8432HWiou', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(142, '1000000141', 'RENI SIMAHBENGI', 'P', 'teacher', '2000-05-21 00:00:00', 24, 4, 'renisimahbengip24142@man.com', NULL, 1, '$2y$10$LYskbyTsYYtxHtOphqbgQez287HihcTBrZN4ZY2ddv1iK7973pZT6', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(143, '1000000142', 'RENO MIHALDIKO', 'L', 'teacher', '2000-05-22 00:00:00', 6, 4, 'renomihaldikol6143@man.com', NULL, 1, '$2y$10$hWttuFjt7u2jFy2n76ysrelxENpaddVX3BlmJKEhQWCAfDlGFcrKi', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(144, '1000000143', 'RIFKI SETIAWAN', 'L', 'teacher', '2000-05-23 00:00:00', 1, 4, 'rifkisetiawanl1144@man.com', NULL, 1, '$2y$10$81VctVCtBRcV0kVtBH6fAuNIcjCQMxhaWeVKwpqert5RvDFufMrIe', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(145, '1000000144', 'RIMA SIMEHATE', 'P', 'teacher', '2000-05-24 00:00:00', 19, 4, 'rimasimehatep19145@man.com', NULL, 1, '$2y$10$pfO82YqHhOuIRF1ny3XLTeccMMTvEGg3TFMCAYAfCRdyv9.dz8D/q', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(146, '1000000145', 'RIZA HIDAYAH', 'L', 'teacher', '2000-05-25 00:00:00', 21, 4, 'rizahidayahl21146@man.com', NULL, 1, '$2y$10$8VISMp8j7mbji1YGrqasDOmZlf/sQMGfZpJDOR4EVEis3dc8zHo1S', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(147, '1000000146', 'RIZQI IWAN FAJRI', 'L', 'teacher', '2000-05-26 00:00:00', 7, 4, 'rizqiiwanfajril7147@man.com', NULL, 1, '$2y$10$iVxMPgd95pvW9QS9lSXh2eqStB8KDOsffEnKE0euAT28a6IQ9iDOy', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(148, '1000000147', 'RUHDINI', 'L', 'teacher', '2000-05-27 00:00:00', 2, 4, 'ruhdinil2148@man.com', NULL, 1, '$2y$10$ymbspmmGx7wWfrpr/K8jP.RNj4oTLi94GhCHkyih.AZQa7vpMTtZ.', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(149, '1000000148', 'SAHRI RAMADHAN', 'L', 'teacher', '2000-05-28 00:00:00', 12, 4, 'sahriramadhanl12149@man.com', NULL, 1, '$2y$10$ckvNn2caD22j8R2871QAZugGiT/fvKqcPG8idZAklURAwEXHB/vQa', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(150, '1000000149', 'SAID NIBRAS ALHABSYI', 'L', 'teacher', '2000-05-29 00:00:00', 26, 4, 'saidnibrasalhabsyil26150@man.com', NULL, 1, '$2y$10$966cj7QH2q.Fk.W1Qx6A8u.1YV0bzxEBUyotxbJchkYwQVg/NjPdO', '2022-03-27 21:28:10', '2022-03-27 21:28:10', '0000-00-00 00:00:00'),
(151, '1000000150', 'SILFANI AZRI MAISA', 'P', 'teacher', '2000-05-30 00:00:00', 7, 4, 'silfaniazrimaisap7151@man.com', NULL, 1, '$2y$10$7o8pErlhWt79WomM30MndOUbSw8XgH.ZamBX12JYYL9/9eTsRZ7vy', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(152, '1000000151', 'SILFINA AZRI MAISA', 'P', 'teacher', '2000-05-31 00:00:00', 21, 4, 'silfinaazrimaisap21152@man.com', NULL, 1, '$2y$10$Dxv5iPBiSYrm6jSorcAyG.2gtrTwNVShLyqSIIXY0xTOLamPrz8z6', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(153, '1000000152', 'SYAHRA WIDIA', 'P', 'teacher', '2000-06-01 00:00:00', 24, 4, 'syahrawidiap24153@man.com', NULL, 1, '$2y$10$Xp5DwWQZjjTZFSXb5UMWtOwSEhg4CaGVidfu.QpKY.O1HJh5ZRanS', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(154, '1000000153', 'SEMALI SYUKRAN', 'L', 'teacher', '2000-06-02 00:00:00', 11, 4, 'semalisyukranl11154@man.com', NULL, 1, '$2y$10$XvW7NeJG1ok4M0WYjly8QO.rjeSkwalIkOKHfIYXGar6bghKXxovK', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(155, '1000000154', 'ANA MARIA', 'P', 'teacher', '2000-06-03 00:00:00', 24, 4, 'anamariap24155@man.com', NULL, 1, '$2y$10$RcChTsO8aJ37S/0JJnZJlOsJpGKRWG.Xa4NPUq3YYEQhgNK3OLhQm', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(156, '1000000155', 'ANNASRI MULIA', 'L', 'teacher', '2000-06-04 00:00:00', 10, 4, 'annasrimulial10156@man.com', NULL, 1, '$2y$10$nEhy1hg0lGFiAyx8lalaBODlMUAQWU6xu1yHtr3BCuJbiWYCQQiyK', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(157, '1000000156', 'CUT AMALIA', 'P', 'teacher', '2000-06-05 00:00:00', 2, 4, 'cutamaliap2157@man.com', NULL, 1, '$2y$10$hWJI/woewSKpYFgPwUkUnelbzew3qHPpkgVxcJ8PmORhFO3Hf3L4O', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(158, '1000000157', 'DESI SILFIYANA', 'P', 'teacher', '2000-06-06 00:00:00', 2, 4, 'desisilfiyanap2158@man.com', NULL, 1, '$2y$10$CpUsZmxPP4B.8aSjluSHmODTlwdKRD0VmEHCr0wFvHF/0M73qI2UW', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(159, '1000000158', 'DIRGA SYIDRATUS SALWA', 'L', 'teacher', '2000-06-07 00:00:00', 2, 4, 'dirgasyidratussalwal2159@man.com', NULL, 1, '$2y$10$LPL680BWlYEc7xldkKlaD.l5HSRQ2uuxbjzbyD1cSpfzb8eTD2g.y', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(160, '1000000159', 'ELIZA SAPITRI', 'P', 'teacher', '2000-06-08 00:00:00', 23, 4, 'elizasapitrip23160@man.com', NULL, 1, '$2y$10$2jErgVp36jt5/fJ5TwJp8.ea0DToSGRiZcCSOn8ioANH3oLepJUt6', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(161, '1000000160', 'FAKHRI WIJDAN', 'L', 'teacher', '2000-06-09 00:00:00', 23, 4, 'fakhriwijdanl23161@man.com', NULL, 1, '$2y$10$dF725YsCtVTK49b9dY9HcexXlqacSxi8VUJBpffxoYeLv.zb8Anp.', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(162, '1000000161', 'FANITA', 'P', 'teacher', '2000-06-10 00:00:00', 12, 4, 'fanitap12162@man.com', NULL, 1, '$2y$10$Xr2rV1aUY9sc6OeJLl/uC.viYIV70BGaP5qIIH7cFLX5YV.UuT8xO', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(163, '1000000162', 'IHSANUDDIN', 'L', 'teacher', '2000-06-11 00:00:00', 13, 4, 'ihsanuddinl13163@man.com', NULL, 1, '$2y$10$FxWNTSsYA1K9DeK2iPDPjecWNcjsx7nlmvwb6P/LLh9YJZX3wDdVm', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(164, '1000000163', 'ILHAM EKA FARISY', 'L', 'teacher', '2000-06-12 00:00:00', 6, 4, 'ilhamekafarisyl6164@man.com', NULL, 1, '$2y$10$HIsaaMwS1dB6upvClOiLm.kY/55XrvpgVD8M9JRtLgG2TOZFkyT2q', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(165, '1000000164', 'JANNATIA KANJU', 'P', 'teacher', '2000-06-13 00:00:00', 22, 4, 'jannatiakanjup22165@man.com', NULL, 1, '$2y$10$j0m/5kD/Bni/FjjigqlkAuP3oPsfi9dmuEKn9lMUJ6iqudywuJM0q', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(166, '1000000165', 'M. RIZKI', 'L', 'teacher', '2000-06-14 00:00:00', 5, 4, 'm.rizkil5166@man.com', NULL, 1, '$2y$10$bbr3sUjldgws6XEjqa1ZzepkoHemDXcVu5FeEj4hdJ.U3CTm2O9PC', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(167, '1000000166', 'M. SEJAHTERA', 'L', 'teacher', '2000-06-15 00:00:00', 12, 4, 'm.sejahteral12167@man.com', NULL, 1, '$2y$10$sjVUlBLX7TWvscrvAR/YJOcw61rKIsSy6EB3CvjM63UmrpA2EfHKC', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(168, '1000000167', 'SYARDI FITRAH', 'L', 'teacher', '2000-06-16 00:00:00', 3, 4, 'syardifitrahl3168@man.com', NULL, 1, '$2y$10$Ge/tKPvvD0MebHzwejoa2.aQ0O8a3TyzhEcOj9qVh21J3hto.fn8a', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(169, '1000000168', 'LINDA AMALIA', 'P', 'teacher', '2000-06-17 00:00:00', 23, 4, 'lindaamaliap23169@man.com', NULL, 1, '$2y$10$ckzPAOSozzd9TBZnusK8a.05pErB7YZiSWDuQ7ClNcnYkr3bHoUQC', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(170, '1000000169', 'MAHRIDA LATIVA', 'P', 'teacher', '2000-06-18 00:00:00', 18, 4, 'mahridalativap18170@man.com', NULL, 1, '$2y$10$7YxGxFndRiJg9JYw0V.7heRbPuwVmcoV04P4iF.6mnZ3216zCsaQi', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(171, '1000000170', 'MAULIDA SIMAHARA', 'P', 'teacher', '2000-06-19 00:00:00', 20, 4, 'maulidasimaharap20171@man.com', NULL, 1, '$2y$10$Toi9W.TKD6aRFWbY9RlXr.RkvoR5Jd9REElTaYtfqPUufUtw4kYc6', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(172, '1000000171', 'NABILA RAUDHATUN NISYA', 'P', 'teacher', '2000-06-20 00:00:00', 26, 4, 'nabilaraudhatunnisyap26172@man.com', NULL, 1, '$2y$10$Z9vPu7UUHjm8fIy0.Idq/e8ArQUbsS407R21dbz3yjhE4FjQFxZLu', '2022-03-27 21:28:11', '2022-03-27 21:28:11', '0000-00-00 00:00:00'),
(173, '1000000172', 'NAURAH SALSABILA', 'P', 'teacher', '2000-06-21 00:00:00', 3, 4, 'naurahsalsabilap3173@man.com', NULL, 1, '$2y$10$REQpDv/hn01kgw9JjWEiDuiP5o9A3W4eGLLKePUuKOotwUiWYJt0S', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(174, '1000000173', 'NILMA FATIMAH AZZAHRA', 'P', 'teacher', '2000-06-22 00:00:00', 3, 4, 'nilmafatimahazzahrap3174@man.com', NULL, 1, '$2y$10$UfQj3ZDvI/Yh3WcA.CjqeOQVyMhEbBXHksFuqbzs86J/ugXcv/abK', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(175, '1000000174', 'NUR HAFIDZAH', 'P', 'teacher', '2000-06-23 00:00:00', 6, 4, 'nurhafidzahp6175@man.com', NULL, 1, '$2y$10$6gmojm8Kim/nMEGJjOc6aeq9UOI4jpPF394Yt0bIb9PaM1VC2qctq', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(176, '1000000175', 'PINGKAN NAPISAH', 'P', 'teacher', '2000-06-24 00:00:00', 12, 4, 'pingkannapisahp12176@man.com', NULL, 1, '$2y$10$xnj7NVNIpit8Y77G2SfCHeJzB/C9OqrS3fHytbsEr8tzzm/Kdrm.O', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(177, '1000000176', 'RIKA MAHYANI', 'P', 'teacher', '2000-06-25 00:00:00', 11, 4, 'rikamahyanip11177@man.com', NULL, 1, '$2y$10$W9ch./u8f4/cyKoViJEPf.kMatzM3fHliNvyljzTkFDE5p7ZxBdly', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(178, '1000000177', 'RIMA PUTRI MEGA ANDRIA', 'P', 'teacher', '2000-06-26 00:00:00', 1, 4, 'rimaputrimegaandriap1178@man.com', NULL, 1, '$2y$10$.WYcCh9YG8WieUHnh0CMu.COBlglmvcAYo26wu2y6Msuj3mXKzNvS', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(179, '1000000178', 'SARA BENSU', 'P', 'teacher', '2000-06-27 00:00:00', 25, 4, 'sarabensup25179@man.com', NULL, 1, '$2y$10$3g4gvJ/UkdN0NJWxQNBsBuBnFqS/licMTY6CUyWCREKXCbaWOzvAC', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(180, '1000000179', 'ZANNATUL AZILA', 'P', 'teacher', '2000-06-28 00:00:00', 19, 4, 'zannatulazilap19180@man.com', NULL, 1, '$2y$10$v1RTbb4i.u8Whzir1hV2n.W.AFDfvjUqq62L1NPoCbGDaI2dC9Ii2', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(181, '1000000180', 'ABDAN FITRAH MENYE', 'L', 'teacher', '2000-06-29 00:00:00', 4, 4, 'abdanfitrahmenyel4181@man.com', NULL, 1, '$2y$10$OqGeJ05vBfXtAAG8dJa3/.lc7Nqrt88dtj2VORdlsTfQiA2P3HTfS', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(182, '1000000181', 'AL MUNADI', 'L', 'teacher', '2000-06-30 00:00:00', 22, 4, 'almunadil22182@man.com', NULL, 1, '$2y$10$cEWnaca7KQdIpHc0c6V8.OJYDSGRRYKc2eGUO8F0/4JUwKZDM5P9y', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(183, '1000000182', 'ANDREAN CANHARI', 'L', 'teacher', '2000-07-01 00:00:00', 1, 4, 'andreancanharil1183@man.com', NULL, 1, '$2y$10$sCsQKwVI9OnlkYX1m2VO3eFnYX3fPqoVs1cEDirlze.1dD3nLAHam', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(184, '1000000183', 'ASSYIFA WAHIDDAYATI', 'P', 'teacher', '2000-07-02 00:00:00', 21, 4, 'assyifawahiddayatip21184@man.com', NULL, 1, '$2y$10$WTvXryN45YmJzLrBNi7mB./pX.iJ9seSjut.bb3pFj3G.R1p2WUxa', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(185, '1000000184', 'AYU DALISMA', 'P', 'teacher', '2000-07-03 00:00:00', 16, 4, 'ayudalismap16185@man.com', NULL, 1, '$2y$10$8dhtD6FEeTubZ5Jtpkq72uPPA7TI/4r5X7kv.0Ggg5.prTobUcgpO', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(186, '1000000185', 'DAFFA ELZA FADHIL', 'L', 'teacher', '2000-07-04 00:00:00', 12, 4, 'daffaelzafadhill12186@man.com', NULL, 1, '$2y$10$LTVezlaF.n03dLvuT3lze.kKk6GhjH83zH99d4LqJ6aIkDulsXMAC', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(187, '1000000186', 'HAFNI ZAHARA', 'P', 'teacher', '2000-07-05 00:00:00', 20, 4, 'hafnizaharap20187@man.com', NULL, 1, '$2y$10$yTvyiimVXDp1W0f0oqsWF.yd..f7.KsDjtcw3YIy4GxTRDBhCDTGi', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(188, '1000000187', 'HENDRA', 'L', 'teacher', '2000-07-06 00:00:00', 22, 4, 'hendral22188@man.com', NULL, 1, '$2y$10$cdpYbSYZA11fpbi9ZHsdMOFToOd4pCi113.TeQBKzELe8LY6Eop4q', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(189, '1000000188', 'HENI WIJAYANTI', 'P', 'teacher', '2000-07-07 00:00:00', 8, 4, 'heniwijayantip8189@man.com', NULL, 1, '$2y$10$qOkghtSn5NzBIrlk2JY6pehPkoautoqxJJSdOKohp7qyYYxA6Jwsy', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(190, '1000000189', 'HERMA VALENTINA', 'P', 'teacher', '2000-07-08 00:00:00', 2, 4, 'hermavalentinap2190@man.com', NULL, 1, '$2y$10$CTo5z2YNo/YixWKBA6SJUup2OVcnhxXU0i3SrsX6wi5NMX6Hnt3Te', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(191, '1000000190', 'HIDAYATUN NAHAR', 'L', 'teacher', '2000-07-09 00:00:00', 17, 4, 'hidayatunnaharl17191@man.com', NULL, 1, '$2y$10$fR989P6MyRvHCvd/I0vJEeVOE2T2N19z6lez0t9k934FZqLbGH19a', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(192, '1000000191', 'ILHAM RIZKI PRATAMA ', 'L', 'teacher', '2000-07-10 00:00:00', 23, 4, 'ilhamrizkipratamal23192@man.com', NULL, 1, '$2y$10$mUJ0TgqIKtVGPLuaDgNMhevXfNQb1sLYoVLhGadhFZHDzhJBZP/Se', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(193, '1000000192', 'IMAM SAMUDRA', 'L', 'teacher', '2000-07-11 00:00:00', 1, 4, 'imamsamudral1193@man.com', NULL, 1, '$2y$10$hA/NxaZQw5mlB0umqjBrmOfOa0c/zTlzwU8tZbV3W4G0MMV2ELPK6', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(194, '1000000193', 'INTAN TAMARA', 'P', 'teacher', '2000-07-12 00:00:00', 15, 4, 'intantamarap15194@man.com', NULL, 1, '$2y$10$ysG7UYNJavdGF4HswMorHudxeJfuJZrLMW5GXb23hWXDUfz7l3s2W', '2022-03-27 21:28:12', '2022-03-27 21:28:12', '0000-00-00 00:00:00'),
(195, '1000000194', 'ISMA JUNI PRATAMA', 'P', 'teacher', '2000-07-13 00:00:00', 24, 4, 'ismajunipratamap24195@man.com', NULL, 1, '$2y$10$cK8F4cil/RMOOQJJ3T/qaur8c9gkVXrdxDOvUFQ/YH62Vz.Ythyqe', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(196, '1000000195', 'JONI SYAHWANNARA', 'L', 'teacher', '2000-07-14 00:00:00', 19, 4, 'jonisyahwannaral19196@man.com', NULL, 1, '$2y$10$joh69WiyaEk2qciQfkEnjeWlXikNMUlrMbzb.CRxFJojA2iqP57si', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00');
INSERT INTO `teachers` (`id`, `nip`, `name`, `gender`, `position`, `dob`, `subjectId`, `privilegeId`, `email`, `image`, `status`, `password`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(197, '1000000196', 'JUHRIASYAH', 'L', 'teacher', '2000-07-15 00:00:00', 19, 4, 'juhriasyahl19197@man.com', NULL, 1, '$2y$10$hohLDJhbEw.148Jj0zmXcepkXC5.jS9VnomKFS4wmyCCAJE6a82hy', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(198, '1000000197', 'KHAIRUNNISA', 'P', 'teacher', '2000-07-16 00:00:00', 2, 4, 'khairunnisap2198@man.com', NULL, 1, '$2y$10$jwB.cqm43nsAyARe2ZFgBO6Ia8MU/vHtHYdYCgCY6PoHPOC8G3pZC', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(199, '1000000198', 'JUMADI RAHMAN', 'L', 'teacher', '2000-07-17 00:00:00', 5, 4, 'jumadirahmanl5199@man.com', NULL, 1, '$2y$10$QopFvEKpy59wDRaPJ.FyfuVVVL4rfHloGIedNdII3wzm6.na8mDNG', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(200, '1000000199', 'FATHUL ANISA', 'P', 'teacher', '2000-07-18 00:00:00', 1, 4, 'fathulanisap1200@man.com', NULL, 1, '$2y$10$4Pxt9vp4V86qK5/UbVN.1.dwEce6C.3I0Bipd.C7jHfN3zg8sqDOC', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(201, '1000000200', 'M.NUR', 'L', 'teacher', '2000-07-19 00:00:00', 6, 4, 'm.nurl6201@man.com', NULL, 1, '$2y$10$8KOnY6EVAU4QXxY4Y82Z8OwXU.4WFLXd1ZarHD6G6LvaMC4JVyjFO', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(202, '1000000201', 'MAUZI ALFADILA', 'L', 'teacher', '2000-07-20 00:00:00', 10, 4, 'mauzialfadilal10202@man.com', NULL, 1, '$2y$10$BbcKivwN85nbnGDXjRYSlu1BQ.mxbJY5uyTPrvkqa1SsCiPh7YW5.', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(203, '1000000202', 'MAWADDAH', 'P', 'teacher', '2000-07-21 00:00:00', 25, 4, 'mawaddahp25203@man.com', NULL, 1, '$2y$10$3.vOSvL7kjwODof/j0Nha.G2eTUaqCVuLitE0we/T1HpaE7vXTBES', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(204, '1000000203', 'MIRZA BUGE MUSAMPE', 'L', 'teacher', '2000-07-22 00:00:00', 22, 4, 'mirzabugemusampel22204@man.com', NULL, 1, '$2y$10$PE9DNtZ9Q./LM5y6C3q9Q.3RwcPixJMVYwlBHNnoRYkwRL4U1P.GW', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(205, '1000000204', 'MUKHSIN', 'L', 'teacher', '2000-07-23 00:00:00', 12, 4, 'mukhsinl12205@man.com', NULL, 1, '$2y$10$/iKAz4LQi.IVqm6.KH8KTe1/NHltoZJAu3s9eT8wRtgoMhNfI9Xb2', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(206, '1000000205', 'NURHAYATI', 'P', 'teacher', '2000-07-24 00:00:00', 12, 4, 'nurhayatip12206@man.com', NULL, 1, '$2y$10$UwLiC5mX2Or461uXEN9rBuPWyqmvR4z2EAEkg5AkOcbmKl7w6Es42', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(207, '1000000206', 'ORIJA GUNAWAN S', 'L', 'teacher', '2000-07-25 00:00:00', 7, 4, 'orijagunawansl7207@man.com', NULL, 1, '$2y$10$9oCAKSEJNNC479H/cYMTKeVUyypm.JtVzBarVTP3zytujAKbIN6gy', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(208, '1000000207', 'RAHMI SAPITRI', 'P', 'teacher', '2000-07-26 00:00:00', 7, 4, 'rahmisapitrip7208@man.com', NULL, 1, '$2y$10$b0.R9Ah/9SFPvW3R2aX8R.e6yKaf3KJMnoM325gmARiZa88g1WmnW', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(209, '1000000208', 'SABAROLLAH', 'L', 'teacher', '2000-07-27 00:00:00', 24, 4, 'sabarollahl24209@man.com', NULL, 1, '$2y$10$SdSHgJtlsJpChsxR5ubW2OD0QngU9IvX/Qi5GNa1M8cW7scuCh4Ji', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(210, '1000000209', 'SALMAN AL FARIZI', 'L', 'teacher', '2000-07-28 00:00:00', 13, 4, 'salmanalfarizil13210@man.com', NULL, 1, '$2y$10$U9bSLmAoHxbieT3.9OJM4uUB694inJonQjRaJtsx8fUC2OIycG.He', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(211, '1000000210', 'SAUQI QALBI IKSAN', 'P', 'teacher', '2000-07-29 00:00:00', 26, 4, 'sauqiqalbiiksanp26211@man.com', NULL, 1, '$2y$10$Jiunrj.9xL0crFR2UBHtnOG3iKDwdR6cNdlDi/vvcdBpqIS8Luqee', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(212, '1000000211', 'SEPRIANA PUTRI', 'P', 'teacher', '2000-07-30 00:00:00', 6, 4, 'seprianaputrip6212@man.com', NULL, 1, '$2y$10$fgEDwsWuFTKpYV9gtO8T3OjuPqP.mcrkpVNk8ALIjJULgicnjNA6W', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(213, '1000000212', 'SEPTIA SULIA BRETA', 'P', 'teacher', '2000-07-31 00:00:00', 9, 4, 'septiasuliabretap9213@man.com', NULL, 1, '$2y$10$hW4nRly5fCH86PyGnu4FOOCSH0c26Q5dEkcVI.L9jibbsCMTrJnZy', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(214, '1000000213', 'SUJADA NAUFAL', 'L', 'teacher', '2000-08-01 00:00:00', 21, 4, 'sujadanaufall21214@man.com', NULL, 1, '$2y$10$JFJLaozxBEq8ETkgZbpy3.WET3pYqyk8.YlJeIBNbsvWe.lgLE.9q', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(215, '1000000214', 'TIARA REZEKI', 'P', 'teacher', '2000-08-02 00:00:00', 4, 4, 'tiararezekip4215@man.com', NULL, 1, '$2y$10$YA1ggdVihEMr2mop1db0GOFySeRmR/moKoxUl0LeONPt4puJJvbue', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(216, '1000000215', 'VANIA AMANDA', 'P', 'teacher', '2000-08-03 00:00:00', 8, 4, 'vaniaamandap8216@man.com', NULL, 1, '$2y$10$5Gc35xP9FdRU6tckCyNTYucSRff0B.FHTQ/.yIwdef95OpCKaaMV2', '2022-03-27 21:28:13', '2022-03-27 21:28:13', '0000-00-00 00:00:00'),
(217, '1000000216', 'WARDANI', 'P', 'teacher', '2000-08-04 00:00:00', 23, 4, 'wardanip23217@man.com', NULL, 1, '$2y$10$hiw2CdEm7XZhxNBqPK8dzO6Gj5/.F.IvUMmS6ZNpJ5w3WMopqLb9W', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(218, '1000000217', 'WIRA MAHENDRA', 'L', 'teacher', '2000-08-05 00:00:00', 17, 4, 'wiramahendral17218@man.com', NULL, 1, '$2y$10$MJ0kJJDYTHqLvEoOqMm9UuYBbEDUjEoDqZlRVOq6SOtFBWD2Hd7by', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(219, '1000000218', 'ARDIAN OKTA', 'L', 'teacher', '2000-08-06 00:00:00', 4, 4, 'ardianoktal4219@man.com', NULL, 1, '$2y$10$f9C9atdblmfRgGv3F43FC.Mz3BP09GvfZ1MXEttXAIzz.NUHiQNI2', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(220, '1000000219', 'AULIA RAFIQI', 'L', 'teacher', '2000-08-07 00:00:00', 22, 4, 'auliarafiqil22220@man.com', NULL, 1, '$2y$10$ZhEzPqYA6ngAK/HU081VZuZsGAXJtuv80rBHjLlQiGTzF1QBUND6K', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(221, '1000000220', 'AULIA RAHMI', 'P', 'teacher', '2000-08-08 00:00:00', 9, 4, 'auliarahmip9221@man.com', NULL, 1, '$2y$10$lWeMNtlv8orbXIXooV8OIOVa8OIMKJxrQ2Li.iMq07PkM6Ax6l0WW', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(222, '1000000221', 'AZZATIL AKMAR', 'P', 'teacher', '2000-08-09 00:00:00', 23, 4, 'azzatilakmarp23222@man.com', NULL, 1, '$2y$10$lTNZl7P92V73D88.RBOCDOLnu8YbcXfeZpSFXyopBqsN6eOyjS/MC', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(223, '1000000222', 'DHIYA JINAN SAUSAN', 'P', 'teacher', '2000-08-10 00:00:00', 5, 4, 'dhiyajinansausanp5223@man.com', NULL, 1, '$2y$10$/IxbWUnJ2fsGx/Xc39Yvx.WM25maUBOZaR0RUiTTE0p3Lec8madM.', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(224, '1000000223', 'ELMA FEBRIANI', 'P', 'teacher', '2000-08-11 00:00:00', 20, 4, 'elmafebrianip20224@man.com', NULL, 1, '$2y$10$iT0C39pw6laTZpUzats7mOU8BI1k5Ou/aggeAf1lI6SHolm9ZL1/W', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(225, '1000000224', 'HENDRIK', 'P', 'teacher', '2000-08-12 00:00:00', 23, 4, 'hendrikp23225@man.com', NULL, 1, '$2y$10$xgtvE6cGlgIrU9SqNBPGMOx6U9MUdOz8ALEICZftYnlnrDD/qoQyC', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(226, '1000000225', 'FIRA MAULANA', 'P', 'teacher', '2000-08-13 00:00:00', 4, 4, 'firamaulanap4226@man.com', NULL, 1, '$2y$10$l/nTw8D6CM9CetyNgG9cO.NtInJm4z4IHAzhUECMGHD64jXYPMX56', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(227, '1000000226', 'IFA SILVIA', 'P', 'teacher', '2000-08-14 00:00:00', 18, 4, 'ifasilviap18227@man.com', NULL, 1, '$2y$10$E7k5uRM2nHfJmVtToN4PwuJdvoW0cO6LEoB28UKnfNbAhffIgmX3e', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(228, '1000000227', 'INTAN RINDI PURWATI', 'P', 'teacher', '2000-08-15 00:00:00', 15, 4, 'intanrindipurwatip15228@man.com', NULL, 1, '$2y$10$//O/w1W9oi5C59Pxx./KcuZ/pRnSDZmJoHwl33XmtD6la1hdbIyZ2', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(229, '1000000228', 'IRADAH', 'P', 'teacher', '2000-08-16 00:00:00', 6, 4, 'iradahp6229@man.com', NULL, 1, '$2y$10$iGwmi4f0QWJtajcI2lR6t.6bdKoDlaqgi8pdHntgFpj27S7xzbxnm', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(230, '1000000229', 'KHAIRUN NASIRIN', 'L', 'teacher', '2000-08-17 00:00:00', 5, 4, 'khairunnasirinl5230@man.com', NULL, 1, '$2y$10$NlAGHEExaScgTtgi40OW4u5MHiSlvHIRffeFnnaGnMd8or.QgiTgq', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(231, '1000000230', 'M. FAHRI', 'L', 'teacher', '2000-08-18 00:00:00', 3, 4, 'm.fahril3231@man.com', NULL, 1, '$2y$10$NSIGI/gf5gQ4od2zNTLl2e7moM6U0YuI7tnops0sKud7mGMhQAJhW', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(232, '1000000231', 'M. RIEZA PAHLEVI', 'L', 'teacher', '2000-08-19 00:00:00', 26, 4, 'm.riezapahlevil26232@man.com', NULL, 1, '$2y$10$E3nfZe9YvulROd0Dbnf8JeGj1ZKf4mq/JdT4KFYYdGy4r9S4ZfOF.', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(233, '1000000232', 'M.PUTRA WANSYAH', 'L', 'teacher', '2000-08-20 00:00:00', 4, 4, 'm.putrawansyahl4233@man.com', NULL, 1, '$2y$10$EGh.vBxm7QjfOTN6kY7pxumcF5tBSVr2mi8jUysfzSevmaFDDF3BK', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(234, '1000000233', 'MAHARANI', 'P', 'teacher', '2000-08-21 00:00:00', 14, 4, 'maharanip14234@man.com', NULL, 1, '$2y$10$j/xAQA.Z.dXq4uedaTwZnuHwr.l8jaQQs/lNlme12h0T3ZHMH4t3y', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(235, '1000000234', 'MARLINDA PUSPITA', 'P', 'teacher', '2000-08-22 00:00:00', 21, 4, 'marlindapuspitap21235@man.com', NULL, 1, '$2y$10$geRNjtDrxDUTd2xkhbbrDu/k/P58Sjl4Tuc/DZ9GsF7/II8u2ofMS', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(236, '1000000235', 'MAULIDA AFRIANI', 'P', 'teacher', '2000-08-23 00:00:00', 25, 4, 'maulidaafrianip25236@man.com', NULL, 1, '$2y$10$VKztAu8OGmpM0rFyRWZv.u1pi1rND4myyVit5ptkI24I2VwFQCIbS', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(237, '1000000236', 'MUTIA REZEKI', 'P', 'teacher', '2000-08-24 00:00:00', 14, 4, 'mutiarezekip14237@man.com', NULL, 1, '$2y$10$itU6YZ9L8UBS4g0du577jecT4AqoPrY3q5l06IHs8Y1RNREQOhT1G', '2022-03-27 21:28:14', '2022-03-27 21:28:14', '0000-00-00 00:00:00'),
(238, '1000000237', 'NADIA MAHARA', 'P', 'teacher', '2000-08-25 00:00:00', 25, 4, 'nadiamaharap25238@man.com', NULL, 1, '$2y$10$WNYwPsMEtxLwziKdz4KtDeztq3gfvkM9XF0HoDf5SX1NLrfRHdoSS', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(239, '1000000238', 'NADIA SARI', 'P', 'teacher', '2000-08-26 00:00:00', 7, 4, 'nadiasarip7239@man.com', NULL, 1, '$2y$10$W/bzVY14hCLm7Lg5r.lySeQdjdK1VMhSbFVviVhc/rU5z0DLiGQ82', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(240, '1000000239', 'NADYA BRUDIO', 'P', 'teacher', '2000-08-27 00:00:00', 17, 4, 'nadyabrudiop17240@man.com', NULL, 1, '$2y$10$usIrwG8cfM1Xi1FZPiI69Op3fOGMl2ddLUQ67r.VjoPxHvKVkleLO', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(241, '1000000240', 'NAJIB MUSAPATI NUGRAHA', 'L', 'teacher', '2000-08-28 00:00:00', 6, 4, 'najibmusapatinugrahal6241@man.com', NULL, 1, '$2y$10$AWtBQeVy7gQB5wl85jAZtOCDsu0yV113lCCoZhcakSOAlurfU6jRO', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(242, '1000000241', 'NAZLA AQNIA', 'P', 'teacher', '2000-08-29 00:00:00', 17, 4, 'nazlaaqniap17242@man.com', NULL, 1, '$2y$10$fv.T1EZuKY4kwkz4gHmaheVzOwCMjuJSMwt/tFRpNLLrGm/ApBRqO', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(243, '1000000242', 'NIA RAHMADANI', 'P', 'teacher', '2000-08-30 00:00:00', 23, 4, 'niarahmadanip23243@man.com', NULL, 1, '$2y$10$IXbrwNNfTQxkU2qd8vPA/eXGz7J1rXjh6m5pjCxAGfD8VbxJ2ONp6', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(244, '1000000243', 'NINDA SAFITRI', 'P', 'teacher', '2000-08-31 00:00:00', 21, 4, 'nindasafitrip21244@man.com', NULL, 1, '$2y$10$rb8u2xwLyJSBJwp15ygUGut1IcPysRyiIyaYGaKHQSWBPpyBb5oPK', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(245, '1000000244', 'PUJA SIMEHATE', 'P', 'teacher', '2000-09-01 00:00:00', 22, 4, 'pujasimehatep22245@man.com', NULL, 1, '$2y$10$f/nWfHjVzpIctRo5qOAwMe3qVQQaRl0p5eWv3LNboMljEMpzwidDq', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(246, '1000000245', 'RAHMADAYANTI', 'P', 'teacher', '2000-09-02 00:00:00', 19, 4, 'rahmadayantip19246@man.com', NULL, 1, '$2y$10$Ysy2FEq4.K/ZyYzSJnQLguyr63CUXseYjEnOcumaw6jCax7GuSMqu', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(247, '1000000246', 'RAIHAN DANDI', 'L', 'teacher', '2000-09-03 00:00:00', 18, 4, 'raihandandil18247@man.com', NULL, 1, '$2y$10$7quaLDtWKxWhLMDNlGazYOqaFvvMSgtUH7nasVG/4KwGhFNwl4UAa', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(248, '1000000247', 'RAZAK RAFSANJANI', 'L', 'teacher', '2000-09-04 00:00:00', 21, 4, 'razakrafsanjanil21248@man.com', NULL, 1, '$2y$10$LEAnVuzP72mvP5H7odhPC.amgBa.7DOL2FSzGBcVx2s4ksgVtylWm', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(249, '1000000248', 'REFKI WIYANDA', 'L', 'teacher', '2000-09-05 00:00:00', 4, 4, 'refkiwiyandal4249@man.com', NULL, 1, '$2y$10$BPbvxrB2GD1gqWqBP6fF3OVC.BPCKjzgILpgyYDlvpnqPQcrqqKru', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(250, '1000000249', 'RISWANDI ANUGRAH', 'L', 'teacher', '2000-09-06 00:00:00', 16, 4, 'riswandianugrahl16250@man.com', NULL, 1, '$2y$10$m0TNiyXyULCO8dcY7rw7BOqXPk0P827lg1lvNW/HWaq3un9YhCc6.', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(251, '1000000250', 'RIZKA IWAN PASA RANGGAYO', 'L', 'teacher', '2000-09-07 00:00:00', 2, 4, 'rizkaiwanpasaranggayol2251@man.com', NULL, 1, '$2y$10$W/.A.gmxRdqLdSrL8w/dyuRjviOnXcnuqFhkKb3gi4T/OCL24rLjq', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(252, '1000000251', 'SAFRINANDA PUTRA', 'L', 'teacher', '2000-09-08 00:00:00', 5, 4, 'safrinandaputral5252@man.com', NULL, 1, '$2y$10$j0AKT5R8BGQUyWgdbdj0O.44Xnq9t9hH5ks1Uy4JQEgydDMo2ynJC', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(253, '1000000252', 'YULIANA', 'P', 'teacher', '2000-09-09 00:00:00', 3, 4, 'yulianap3253@man.com', NULL, 1, '$2y$10$K9J6zV//W1Uw1xre17Vx2O.kOpDgRjPcDjL.NbP4lVvGQ/KBRpI7u', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(254, '1000000253', 'YULIANDA', 'P', 'teacher', '2000-09-10 00:00:00', 8, 4, 'yuliandap8254@man.com', NULL, 1, '$2y$10$edaS9KBWXz1xWp0pUN/yw.cArK9ujh6nuGCJMuhSIkSgZMF92PxIS', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(255, '1000000254', 'ZAHRAN', 'L', 'teacher', '2000-09-11 00:00:00', 17, 4, 'zahranl17255@man.com', NULL, 1, '$2y$10$wExDPY1xZ1dSpIvCxN3EM.OXfAW.ZwVRyPZQ6DGdH35QTeuSN0zCW', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(256, '1000000255', 'ABRAR ILLIYIN', 'L', 'teacher', '2000-09-12 00:00:00', 8, 4, 'abrarilliyinl8256@man.com', NULL, 1, '$2y$10$pEoqgsFAvF7KkFsRuT/0/Op3RT.aKhjfYrB83ezEIA7jnrODT5squ', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(257, '1000000256', 'ADE NOVAL KURNIA', 'L', 'teacher', '2000-09-13 00:00:00', 6, 4, 'adenovalkurnial6257@man.com', NULL, 1, '$2y$10$VLQmfiGLOGV/isCxY/mrB.lti8r6Dt3.5DpMh.wgxDHP3VKMkNuCC', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(258, '1000000257', 'ANANDA SASKIA', 'P', 'teacher', '2000-09-14 00:00:00', 19, 4, 'anandasaskiap19258@man.com', NULL, 1, '$2y$10$HJi3kiyCkAI6yUwksQbPz.0CVSxRVQd7uO5NjSTw2mG1dBGWJLkZy', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(259, '1000000258', 'ASPARINA', 'P', 'teacher', '2000-09-15 00:00:00', 6, 4, 'asparinap6259@man.com', NULL, 1, '$2y$10$UGxVW08GFlbKLZLh7lZJuuwyEBFM7exyMi7bNPfL5IV2BRYVyjMte', '2022-03-27 21:28:15', '2022-03-27 21:28:15', '0000-00-00 00:00:00'),
(260, '1000000259', 'CUT MERIAH SYAMSI', 'P', 'teacher', '2000-09-16 00:00:00', 6, 4, 'cutmeriahsyamsip6260@man.com', NULL, 1, '$2y$10$EpzsvPmDGI2IRWEZAfw.AuDtfFiQNc1V9LnmXzZfyllvM4y9sUzfu', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(261, '1000000260', 'DAHRI AZIZ', 'L', 'teacher', '2000-09-17 00:00:00', 24, 4, 'dahriazizl24261@man.com', NULL, 1, '$2y$10$iGwrrYeyEA6a1otdRpdD1eWUt96/6ci0IHkYp6blR/77Dw7OmPDFO', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(262, '1000000261', 'DISKI ADLANI', 'L', 'teacher', '2000-09-18 00:00:00', 5, 4, 'diskiadlanil5262@man.com', NULL, 1, '$2y$10$Mj8s39sUba8J21v0Q2soSuYjX6iw5ArLaxqpVlNB2MgiZFzZj5TDK', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(263, '1000000262', 'DESI MAHBENGI', 'P', 'teacher', '2000-09-19 00:00:00', 1, 4, 'desimahbengip1263@man.com', NULL, 1, '$2y$10$ydaiKg0DwUgqd7091TyV7.t3oon3eo2UyClEdGcKAQzHNtTT3hk0u', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(264, '1000000263', 'FAHMI MAISYA', 'L', 'teacher', '2000-09-20 00:00:00', 20, 4, 'fahmimaisyal20264@man.com', NULL, 1, '$2y$10$R8TPkjAG3Ms6mEyP3LKAfef/pnG4bfJwAz9/BEaBEaWKcI9jPnCfy', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(265, '1000000264', 'HUMAIRA NADILA', 'P', 'teacher', '2000-09-21 00:00:00', 1, 4, 'humairanadilap1265@man.com', NULL, 1, '$2y$10$sLEmsgJKuUH707MY.8s3.uguXsZos28B1lVSTI6lafYfBCDiqz8lu', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(266, '1000000265', 'HUSNI MAHTUAH', 'L', 'teacher', '2000-09-22 00:00:00', 25, 4, 'husnimahtuahl25266@man.com', NULL, 1, '$2y$10$oFtrVvPdK9EnKkWgKjS.UOjCml.TROiC5M9WfpwA0Ip40WxDppIEC', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(267, '1000000266', 'IQBAL DARMAWAN', 'L', 'teacher', '2000-09-23 00:00:00', 1, 4, 'iqbaldarmawanl1267@man.com', NULL, 1, '$2y$10$CfP/4MeUdalfgP3FQpR43usOrlOYmNewwwzegweOzJnJcF.68....', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(268, '1000000267', 'ISRA AZZAHRA', 'P', 'teacher', '2000-09-24 00:00:00', 6, 4, 'israazzahrap6268@man.com', NULL, 1, '$2y$10$H.CRJ3xfJAoJU.FHtBu5leY5f3g6bHn9IO/5OOHfzRVadoKWV98AO', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(269, '1000000268', 'JAMIAN QALBU', 'L', 'teacher', '2000-09-25 00:00:00', 18, 4, 'jamianqalbul18269@man.com', NULL, 1, '$2y$10$gvdpeoD8TiiU35w15sGvQ.gxXCh/jtrxEBcxKMGg8LT9AjmG0ewPm', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(270, '1000000269', 'KHAIRUNISA', 'L', 'teacher', '2000-09-26 00:00:00', 18, 4, 'khairunisal18270@man.com', NULL, 1, '$2y$10$tk7hvA5FqTBeRzhLpvuHJ.1PqPxjx861DT/OF7gPghvDFlg/oU23q', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(271, '1000000270', 'LAULA SALSABILA', 'P', 'teacher', '2000-09-27 00:00:00', 14, 4, 'laulasalsabilap14271@man.com', NULL, 1, '$2y$10$Dr7Vlx2c/35niY.QKX5rvudz8BJMndP1gGl7IaRRjGGdbhAVlb11y', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(272, '1000000271', 'NIA RAMADHANA', 'P', 'teacher', '2000-09-28 00:00:00', 10, 4, 'niaramadhanap10272@man.com', NULL, 1, '$2y$10$YFcDaIAQf0YWjiri5lKOB.y4S35lexYM20pYZVYz8zo3gl2IHZ4lK', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(273, '1000000272', 'MAGFIRAH YURISMA', 'P', 'teacher', '2000-09-29 00:00:00', 3, 4, 'magfirahyurismap3273@man.com', NULL, 1, '$2y$10$jVdvZG2AkyXzGXJsXDPjtO1SBSLJTGthlFU91MVRG63scksUKw2ki', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(274, '1000000273', 'MAULIYANA', 'P', 'teacher', '2000-09-30 00:00:00', 18, 4, 'mauliyanap18274@man.com', NULL, 1, '$2y$10$turV2J6ihqVz4iZTRZy.L.KO6yQ0lduuRav6vdlj8aAnvZIGE4jAm', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(275, '1000000274', 'MEETHA LAURA', 'P', 'teacher', '2000-10-01 00:00:00', 8, 4, 'meethalaurap8275@man.com', NULL, 1, '$2y$10$etBZlWi/S9mWPkzZRyX8Me3yZtS7AhEqJB9zlLYNS/zeQEVNoQuSS', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(276, '1000000275', 'MISLAN BAHANA', 'L', 'teacher', '2000-10-02 00:00:00', 22, 4, 'mislanbahanal22276@man.com', NULL, 1, '$2y$10$2yRmP/0DLTbNkAoL1XLIWOLlI/MT7cE3wA5RQTQf5kqXEiEYgtjaC', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(277, '1000000276', 'NADILA RAUDATUN NISYA ', 'P', 'teacher', '2000-10-03 00:00:00', 6, 4, 'nadilaraudatunnisyap6277@man.com', NULL, 1, '$2y$10$P7UIO/9.i/JFSgDrsq2XD.wsgoSympK6IlKvm.GFtc2FeyjVwQbG.', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(278, '1000000277', 'NADYA TIARANI APRILIA', 'P', 'teacher', '2000-10-04 00:00:00', 15, 4, 'nadyatiaraniapriliap15278@man.com', NULL, 1, '$2y$10$iyNAyawpMsHf.5OE8V/y3O8WbeUomCicEOP1GVM2qOnWgYmROvwve', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(279, '1000000278', 'M.SUBKI', 'L', 'teacher', '2000-10-05 00:00:00', 18, 4, 'm.subkil18279@man.com', NULL, 1, '$2y$10$mkpdG4MJhFxU/.N.a6XAV.FAqSyfbD5LWdXRAYqDJtvIw8iTZasIm', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(280, '1000000279', 'NORA ARIFAH', 'P', 'teacher', '2000-10-06 00:00:00', 22, 4, 'noraarifahp22280@man.com', NULL, 1, '$2y$10$grpVz8Ga.8tZpAdFYRXJMu24SDNyh3RlrMWypDHLyW.hdJJbzOpta', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(281, '1000000280', 'PUTRI ALYA SALSABILA', 'P', 'teacher', '2000-10-07 00:00:00', 17, 4, 'putrialyasalsabilap17281@man.com', NULL, 1, '$2y$10$OW1sZq0omNRuCysSgZB7OOmubBZlN.kz0VJDzMuYgy5/BRyBdZZWu', '2022-03-27 21:28:16', '2022-03-27 21:28:16', '0000-00-00 00:00:00'),
(282, '1000000281', 'PUTRI KAWAZULA', 'P', 'teacher', '2000-10-08 00:00:00', 25, 4, 'putrikawazulap25282@man.com', NULL, 1, '$2y$10$Xz6Zo9ZtMQdCUjlRJ3z/.ezcKx8DkV6YNb5TBZBnFBAePUqs/66.S', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(283, '1000000282', 'RAMADHAN FITRA', 'L', 'teacher', '2000-10-09 00:00:00', 6, 4, 'ramadhanfitral6283@man.com', NULL, 1, '$2y$10$k3mWHG3XkS7ISzddjjpHD.HejUcU3Sf3mnOFJTf5tmc9ddq8vXpQS', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(284, '1000000283', 'RANDA RIZKI', 'L', 'teacher', '2000-10-10 00:00:00', 25, 4, 'randarizkil25284@man.com', NULL, 1, '$2y$10$2rQDP//6nJSGy3G8EAq8Due/vaYZLBILER.X11MmwuEDiAcEhu72.', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(285, '1000000284', 'RELADI', 'L', 'teacher', '2000-10-11 00:00:00', 1, 4, 'reladil1285@man.com', NULL, 1, '$2y$10$LQibZ7Lk9usADkZcqNwgFeBVFcSv8cXQsfK.RwvfL9OhD3UAoxhHy', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(286, '1000000285', 'REZEKI WANANTO', 'L', 'teacher', '2000-10-12 00:00:00', 19, 4, 'rezekiwanantol19286@man.com', NULL, 1, '$2y$10$ZdcxiKcddMFJazGKFkTa2OjZMGjV.z52sOJP9rW5doQqEpNdhfcyW', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(287, '1000000286', 'RISKI', 'L', 'teacher', '2000-10-13 00:00:00', 12, 4, 'riskil12287@man.com', NULL, 1, '$2y$10$QnNfc.cosdksiejrNjOW9uoD2PHtwCV2aaCJjiMFyFpg.ZP61RvV.', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(288, '1000000287', 'RISKI SETIAWAN', 'L', 'teacher', '2000-10-14 00:00:00', 19, 4, 'riskisetiawanl19288@man.com', NULL, 1, '$2y$10$GYWZp4OvXIOLlt1/3B0do.MFlSsOksFtba65n18zDQ.HCvcuasZA2', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(289, '1000000288', 'RIZKI IWAN RAMADAN', 'L', 'teacher', '2000-10-15 00:00:00', 7, 4, 'rizkiiwanramadanl7289@man.com', NULL, 1, '$2y$10$hYsh2tVTKDb.oRLb5VxZBOxbZcDP5G664pQBIfO2YbrioRKqO/MXy', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(290, '1000000289', 'RUAIDA', 'P', 'teacher', '2000-10-16 00:00:00', 1, 4, 'ruaidap1290@man.com', NULL, 1, '$2y$10$72vQF43qcqLVCh56pZyHA.I3L4OFiMJDucG.rhY5fttRzEXoDg.ZK', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(291, '1000000290', 'SELVIA PINTE NATE', 'P', 'teacher', '2000-10-17 00:00:00', 18, 4, 'selviapintenatep18291@man.com', NULL, 1, '$2y$10$FoUler9BIjlm.ZbVx4AwoO9NMxYPWuf1qJHivoH7Ot4zcSDs1RtrK', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(292, '1000000291', 'WULAN MELISA', 'P', 'teacher', '2000-10-18 00:00:00', 6, 4, 'wulanmelisap6292@man.com', NULL, 1, '$2y$10$rm2UdVEHvSI6Wo8E9MSd7eLWzpPcrTllxpoG6laD.xdC7OKiz//0i', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(293, '1000000292', 'ANGGUN KANIYA', 'P', 'teacher', '2000-10-19 00:00:00', 15, 4, 'anggunkaniyap15293@man.com', NULL, 1, '$2y$10$gtRkdSWy3ktPQYBRzp7IEuE9HAxtaSbZRlN87lq13W.4ZIzhOEZNG', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(294, '1000000293', 'BINA UTAMI', 'P', 'teacher', '2000-10-20 00:00:00', 4, 4, 'binautamip4294@man.com', NULL, 1, '$2y$10$0YaPMYCCiCoS5kvcGtKeEefpDKa0ivnp98.igUIIWX6gCTDV243Nq', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(295, '1000000294', 'DITA ARMAZA YANI', 'P', 'teacher', '2000-10-21 00:00:00', 8, 4, 'ditaarmazayanip8295@man.com', NULL, 1, '$2y$10$pd0eIJDoP.59ndHeXM1/suiovJUmUoIRnqU26eTBoxZWCJlHaiKXe', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(296, '1000000295', 'HUSNA SARI', 'P', 'teacher', '2000-10-22 00:00:00', 20, 4, 'husnasarip20296@man.com', NULL, 1, '$2y$10$G63R4vHOxAGpJS2eIpgOfOs9FSlHPIuuC2a5rfAQkq01zPI2c3eKG', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(297, '1000000296', 'IPAK YANA', 'P', 'teacher', '2000-10-23 00:00:00', 3, 4, 'ipakyanap3297@man.com', NULL, 1, '$2y$10$waCYTyWk5/nKeeK1PJivxeG2h9yH85ZDtxYvaJ6FdEPIg61s0umPi', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(298, '1000000297', 'ISTIQOMAH', 'P', 'teacher', '2000-10-24 00:00:00', 4, 4, 'istiqomahp4298@man.com', NULL, 1, '$2y$10$B.pYQPk7YAe9HTXaVN9e2upiI37EiS0TOtY489w/byIghXxxKMENy', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(299, '1000000298', 'LIDYA AUDINA', 'P', 'teacher', '2000-10-25 00:00:00', 20, 4, 'lidyaaudinap20299@man.com', NULL, 1, '$2y$10$py0NmOXT/2Wf7iNza4INWel0lTN0ii1zzCHj8kZzxWHehMm.1TqPy', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(300, '1000000299', 'MA RIFATIN ZAHRA', 'P', 'teacher', '2000-10-26 00:00:00', 21, 4, 'marifatinzahrap21300@man.com', NULL, 1, '$2y$10$BrCTuy9BYS48/Kk7zi346OhYgjuXdNeKL3dgaTw/3MS2Og84er29G', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(301, '1000000300', 'MELAWATI PUTRI', 'P', 'teacher', '2000-10-27 00:00:00', 19, 4, 'melawatiputrip19301@man.com', NULL, 1, '$2y$10$JXVDK.YO7McbMnDa3HLLPeImGbz/9QwrpQlaLyVrTWAd8LKBwZ9Vu', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(302, '1000000301', 'MILA JUNITA SLASIH', 'P', 'teacher', '2000-10-28 00:00:00', 22, 4, 'milajunitaslasihp22302@man.com', NULL, 1, '$2y$10$E/Xny5wfxTQz7nuFSheJ/OAxo47sN9eZDeok2Wjt7vMJG2cZhvtcK', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(303, '1000000302', 'MIRNA YANTI', 'P', 'teacher', '2000-10-29 00:00:00', 17, 4, 'mirnayantip17303@man.com', NULL, 1, '$2y$10$BbnQJmU.QSLc9rUM./TInul733QXEwADHOIa/s2XOyySdh.PjK30i', '2022-03-27 21:28:17', '2022-03-27 21:28:17', '0000-00-00 00:00:00'),
(304, '1000000303', 'NAZIRA HUSNA', 'P', 'teacher', '2000-10-30 00:00:00', 19, 4, 'nazirahusnap19304@man.com', NULL, 1, '$2y$10$AqOj2kRJDBiJMfS..eevQe4tofjehMuK2ZLrkjK1ST9Lhgrfjn7EC', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(305, '1000000304', 'HELMI FAUZIANSAH', 'L', 'teacher', '2000-10-31 00:00:00', 5, 4, 'helmifauziansahl5305@man.com', NULL, 1, '$2y$10$X27uBaYdBFBUOLjkJnSEqew2kV6HKEehzLx73Lbsoq/rzK4hgKDHi', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(306, '1000000305', 'NUR AISYAH BORU N', 'P', 'teacher', '2000-11-01 00:00:00', 26, 4, 'nuraisyahborunp26306@man.com', NULL, 1, '$2y$10$Jv.parW8lBIDaw/aZqIC4uTzJy5JdbbVHmRhX4.V1PPmhk/OTJIcS', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(307, '1000000306', 'PINTE REZEKI', 'P', 'teacher', '2000-11-02 00:00:00', 7, 4, 'pinterezekip7307@man.com', NULL, 1, '$2y$10$FASINJgah3A8KCmRtzC66exOVGkRVyTh8yHI8d76RRI3Rv4vZpr.m', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(308, '1000000307', 'PUTRI DAMAYANI', 'P', 'teacher', '2000-11-03 00:00:00', 8, 4, 'putridamayanip8308@man.com', NULL, 1, '$2y$10$Gnro0Lv.FY2K8xTq3/raIe5QjCWvfCZEZWeSNsXYRuWORPhNIijYe', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(309, '1000000308', 'RANIA PERMATA PUTRI', 'P', 'teacher', '2000-11-04 00:00:00', 8, 4, 'raniapermataputrip8309@man.com', NULL, 1, '$2y$10$JjnsXcvLrk4R1V4/QR9nj.riWA9shUAMdXSU6AQTuHRxuWlL3gxw6', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(310, '1000000309', 'RUHDA', 'P', 'teacher', '2000-11-05 00:00:00', 24, 4, 'ruhdap24310@man.com', NULL, 1, '$2y$10$WpVWnzqXmQBEwR9uNnNTzeZzGkV4i08.6DRP.NubAKvKIQE..Oy1G', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(311, '1000000310', 'SARAWIDA MELALA', 'L', 'teacher', '2000-11-06 00:00:00', 14, 4, 'sarawidamelalal14311@man.com', NULL, 1, '$2y$10$J1DxPaZJqNw221jZi9Lo0ODtZsF1oh14Q0nxNIXiQys7HJVEom4xm', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(312, '1000000311', 'SARI RAMADANI', 'L', 'teacher', '2000-11-07 00:00:00', 7, 4, 'sariramadanil7312@man.com', NULL, 1, '$2y$10$3B4mRq6CHENfZo9lDQ4niOEP8sYyIDz1mX/icEZqYcR8iJvUrD/f6', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(313, '1000000312', 'SAUFA YARDA', 'P', 'teacher', '2000-11-08 00:00:00', 19, 4, 'saufayardap19313@man.com', NULL, 1, '$2y$10$8F.dnO9LbR2R29cOsvbyF.ppCMgicdQAdookhTzeZ.aiTR3k8IV8K', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(314, '1000000313', 'SITI NUR KHADIJAH', 'P', 'teacher', '2000-11-09 00:00:00', 17, 4, 'sitinurkhadijahp17314@man.com', NULL, 1, '$2y$10$e3SUcexhu6DUxAo.HJ9Hp.C4fmwGXYDkMODBvmAFOuyZCZQMi58G.', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(315, '1000000314', 'WIN NAUFAL MUHAMMAD', 'L', 'teacher', '2000-11-10 00:00:00', 23, 4, 'winnaufalmuhammadl23315@man.com', NULL, 1, '$2y$10$qbdy2gRb9yH4AwtC0YhXu.uCV3bTFJHI6NxOCd9V9B4LhJbyoyLP.', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(316, '1000000315', 'YLMIANA FITRI', 'P', 'teacher', '2000-11-11 00:00:00', 17, 4, 'ylmianafitrip17316@man.com', NULL, 1, '$2y$10$SC1NSB3LWsc6weJ7lrr8yebKSKtHVweqLqRwvPxqHskUVX1R83POG', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(317, '1000000316', 'YOWENI BAHGIE', 'P', 'teacher', '2000-11-12 00:00:00', 5, 4, 'yowenibahgiep5317@man.com', NULL, 1, '$2y$10$I008In0v0.M4wnstXAxOge/U9HiqIiCfncVuj2k4bZDoLUgdj82IG', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(318, '1000000317', 'AYU NISA MAHBENGI', 'P', 'teacher', '2000-11-13 00:00:00', 16, 4, 'ayunisamahbengip16318@man.com', NULL, 1, '$2y$10$rkR92v5mYfOV1svAG/JhsOAepc1cvPydhaQinqShQzyvHna4BSSUK', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(319, '1000000318', 'ALFI SAHRI', 'L', 'teacher', '2000-11-14 00:00:00', 9, 4, 'alfisahril9319@man.com', NULL, 1, '$2y$10$EW81xtoQDOP0R9n1f0v8auCYB5dSYdg6NlgtRW/ObdIpV.WE4mjdu', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(320, '1000000319', 'ARJUNA ARISISARA', 'L', 'teacher', '2000-11-15 00:00:00', 23, 4, 'arjunaarisisaral23320@man.com', NULL, 1, '$2y$10$i0tHjKB5nJHMVO53Hh1X1.XqYrclboixWwF4Of9fGmU.Ty.cSoQUa', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(321, '1000000320', 'BAYU PITRA ARLO', 'L', 'teacher', '2000-11-16 00:00:00', 24, 4, 'bayupitraarlol24321@man.com', NULL, 1, '$2y$10$lSA7cx8gKUwsfDIqwkZpSOK4et3WIJDF1LrZGyhlZZP68plpA1tfy', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(322, '1000000321', 'BUDI CANDRA', 'L', 'teacher', '2000-11-17 00:00:00', 21, 4, 'budicandral21322@man.com', NULL, 1, '$2y$10$het/6k.MjatzTcJefOxPUeofkZhq2Eh.DxVYNCMSE6q3Uc6RaUNLK', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(323, '1000000322', 'DECHITA ISNADIANI', 'P', 'teacher', '2000-11-18 00:00:00', 21, 4, 'dechitaisnadianip21323@man.com', NULL, 1, '$2y$10$mzL4RIZllIPi3zk02FiDYeGhTUm7UHX7/badDEVOlVvtUT7QlK8mS', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(324, '1000000323', 'DESI MAHARA', 'P', 'teacher', '2000-11-19 00:00:00', 22, 4, 'desimaharap22324@man.com', NULL, 1, '$2y$10$22jjNTMuy6LvRC6vy2O2/uvYw8eTWjHREKQzl5gTb21E6R0oioRBO', '2022-03-27 21:28:18', '2022-03-27 21:28:18', '0000-00-00 00:00:00'),
(325, '1000000324', 'DEVI ANGGRAINI', 'P', 'teacher', '2000-11-20 00:00:00', 16, 4, 'devianggrainip16325@man.com', NULL, 1, '$2y$10$jbMzAMatstDIZNtvwLqbRu8W5xmSL9nzRmhZq5M8Ec6AB0SYVGgQ.', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(326, '1000000325', 'FARISA RAHMADANI', 'P', 'teacher', '2000-11-21 00:00:00', 10, 4, 'farisarahmadanip10326@man.com', NULL, 1, '$2y$10$z1jWC4R/BCDGsZuxg8bGcekVrPVHKFJfg9PyZm625TNiYZEOn1gEC', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(327, '1000000326', 'HAIRI DAMI', 'L', 'teacher', '2000-11-22 00:00:00', 2, 4, 'hairidamil2327@man.com', NULL, 1, '$2y$10$jHNPI2t4k7MsZnh/Ail.Ien/LN3aTJpExTRQ9qwhfjR1FYZxLWyq.', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(328, '1000000327', 'HAJIL MASTURI', 'P', 'teacher', '2000-11-23 00:00:00', 22, 4, 'hajilmasturip22328@man.com', NULL, 1, '$2y$10$AmYjuJlVWrTipGPZDy.XTeouZ2nNuB/bkg0rB1eBlwFvkMN9b./0W', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(329, '1000000328', 'HUSNUL NISA', 'P', 'teacher', '2000-11-24 00:00:00', 22, 4, 'husnulnisap22329@man.com', NULL, 1, '$2y$10$GQjnBKn8BvTNIUuCy9P9Pei6ifZi6la9HEaGJcxw7liu5PR88/6vq', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(330, '1000000329', 'ISNAINI', 'P', 'teacher', '2000-11-25 00:00:00', 5, 4, 'isnainip5330@man.com', NULL, 1, '$2y$10$I6mRQyFnVW2//Y6euEdT8umJWE.OdRdalTDK/Z0Cf3afmdvQm5NES', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(331, '1000000330', 'JAHRA SALSABILA', 'P', 'teacher', '2000-11-26 00:00:00', 24, 4, 'jahrasalsabilap24331@man.com', NULL, 1, '$2y$10$Pv5zs.XnuryIWi2v6rdBVOkNTVHIFliy7P.v.BAvFGn0vb0d695n6', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(332, '1000000331', 'JULIANA FITRI', 'P', 'teacher', '2000-11-27 00:00:00', 18, 4, 'julianafitrip18332@man.com', NULL, 1, '$2y$10$hhq/P9DButaVi7AHIlEuPepOjhC3XrycRADoCWoGJuNgSg3rqSzda', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(333, '1000000332', 'KAIFA RIZKI', 'P', 'teacher', '2000-11-28 00:00:00', 10, 4, 'kaifarizkip10333@man.com', NULL, 1, '$2y$10$Ks/JhluohlWzA9IiBZ6z0eXkff/DoEbR0vvUBYd7kVev4mnP5Tw8W', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(334, '1000000333', 'MAISARAH SIMEHATE', 'P', 'teacher', '2000-11-29 00:00:00', 14, 4, 'maisarahsimehatep14334@man.com', NULL, 1, '$2y$10$SJhhy6n.EuxwwZw434EWZedy6FH67uf4Cc0B7/0mOgSfdw2UnEMh2', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(335, '1000000334', 'MHD. FAHRIZAL KR', 'L', 'teacher', '2000-11-30 00:00:00', 9, 4, 'mhd.fahrizalkrl9335@man.com', NULL, 1, '$2y$10$PuRs.hEhg.eTEUE0QySeke2s31IgX6PS792kyOkYyajYsIV74dcj.', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(336, '1000000335', 'MULYANA KS', 'P', 'teacher', '2000-12-01 00:00:00', 3, 4, 'mulyanaksp3336@man.com', NULL, 1, '$2y$10$AVIsOKhmzmVjte9d6IVzre3K2c.rWS46VtWB0/zUAVhycofWRmxjK', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(337, '1000000336', 'NABILA TRI SINTENI', 'P', 'teacher', '2000-12-02 00:00:00', 20, 4, 'nabilatrisintenip20337@man.com', NULL, 1, '$2y$10$gg1HaysT46ezDjWDgYUM7eEnhiQaI/rxf3NQJVtu0LoTNYMKfNWme', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(338, '1000000337', 'NAFHAH SYASYA SAJIDAH', 'P', 'teacher', '2000-12-03 00:00:00', 17, 4, 'nafhahsyasyasajidahp17338@man.com', NULL, 1, '$2y$10$v1Vy1yH81.aUSJg3TvgXcerpCrEUilhacoIrZD1IhXdkR1gAzXzjO', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(339, '1000000338', 'NAUVAL ARISKA PUTRA', 'L', 'teacher', '2000-12-04 00:00:00', 1, 4, 'nauvalariskaputral1339@man.com', NULL, 1, '$2y$10$dIjrCng4riaqpQbjB4uxDuyHaNV7Gr1xm3W1ac0MfY/a74HqjKuiW', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(340, '1000000339', 'NAZARUDDIN', 'L', 'teacher', '2000-12-05 00:00:00', 18, 4, 'nazaruddinl18340@man.com', NULL, 1, '$2y$10$YZbYQu.RIr9vbpa8dkQcQebdjsUQROI0BPOq7Du4nh5YxW0cqplae', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(341, '1000000340', 'NIARA DESWITA', 'P', 'teacher', '2000-12-06 00:00:00', 8, 4, 'niaradeswitap8341@man.com', NULL, 1, '$2y$10$iaQTjz3atDO96klx5wP7juqqXDuWnMZTtpfE0wnR4AzdlW3UZmtU2', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(342, '1000000341', 'NILA WATI', 'P', 'teacher', '2000-12-07 00:00:00', 8, 4, 'nilawatip8342@man.com', NULL, 1, '$2y$10$dksmDBDoEk.1KfcZzNycPOvb2DXLoL.LHj.ik/W2CT19tI0NDEA2.', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(343, '1000000342', 'NUR WAHDA', 'P', 'teacher', '2000-12-08 00:00:00', 10, 4, 'nurwahdap10343@man.com', NULL, 1, '$2y$10$VNY2QKMK7wmUHp2/cR1B6OlS98binwu70egT8uv.OUu26DSiVIUou', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(344, '1000000343', 'OKTA PUTRI', 'P', 'teacher', '2000-12-09 00:00:00', 26, 4, 'oktaputrip26344@man.com', NULL, 1, '$2y$10$9qVOBCrwih8zLY8DryvVYuJbqI4oqQqmcm4h/e22ftR2dfZx1R3TC', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(345, '1000000344', 'RAUZATUL ZANNAH', 'P', 'teacher', '2000-12-10 00:00:00', 17, 4, 'rauzatulzannahp17345@man.com', NULL, 1, '$2y$10$dU4nO9oc4br/aSEEl83wwu9LqZ4zQzDlP7/HGGJlZTDcelvC4RVfu', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(346, '1000000345', 'REYNALDI', 'L', 'teacher', '2000-12-11 00:00:00', 13, 4, 'reynaldil13346@man.com', NULL, 1, '$2y$10$1C8TZ2G1U6zFBXBqgJPn9uLP/gjTz97.eaXi.l0MQxT/1TMWVATku', '2022-03-27 21:28:19', '2022-03-27 21:28:19', '0000-00-00 00:00:00'),
(347, '1000000346', 'RISKINA PUTRI', 'P', 'teacher', '2000-12-12 00:00:00', 22, 4, 'riskinaputrip22347@man.com', NULL, 1, '$2y$10$.10ouv/EgsaF6758i99iG.czsovTdAV9u.naVQ84w0DWwGxrQZxfC', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(348, '1000000347', 'SABRI', 'L', 'teacher', '2000-12-13 00:00:00', 20, 4, 'sabril20348@man.com', NULL, 1, '$2y$10$USH0Mehyotevgg.hZH99muTOrBglGIxb7rMRf4/Y0h/n41dtrSZ2m', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(349, '1000000348', 'SALWANI', 'P', 'teacher', '2000-12-14 00:00:00', 9, 4, 'salwanip9349@man.com', NULL, 1, '$2y$10$.O6t/LLoB0jq.nEzJdAzkeh0.M5h00qN.wLNmOrFAWm8uOTqWZdD6', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(350, '1000000349', 'SANDI PUJAGA', 'L', 'teacher', '2000-12-15 00:00:00', 2, 4, 'sandipujagal2350@man.com', NULL, 1, '$2y$10$S1/CgoMUBdZihakvFHuPU.EW9pK.HD48lKBUMN9fDA2Ak6M/k3ZJ6', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(351, '1000000350', 'SARI ANJANI', 'P', 'teacher', '2000-12-16 00:00:00', 26, 4, 'sarianjanip26351@man.com', NULL, 1, '$2y$10$l4hlhdPWv6TiSZFCCFb1D.zK67SGcPV4pgCNdMaR2DubE6ueCLtSu', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(352, '1000000351', 'T. RAFLY YADYANSYAH', 'L', 'teacher', '2000-12-17 00:00:00', 24, 4, 't.raflyyadyansyahl24352@man.com', NULL, 1, '$2y$10$uYVCORPLYIwmAv8TRvVVROmJIZcyb5UPxVgWPvOtU2P6gRkfUKSYW', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(353, '1000000352', 'ZIKRI WAN PINTE', 'L', 'teacher', '2000-12-18 00:00:00', 4, 4, 'zikriwanpintel4353@man.com', NULL, 1, '$2y$10$M2E0h53lYYNmomPd1xffKeEJZ4sH9XVaitvtFARSJUm0gmuYkdZgy', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(354, '1000000353', 'SYAHIDUL SYAHPUTRA', 'L', 'teacher', '2000-12-19 00:00:00', 14, 4, 'syahidulsyahputral14354@man.com', NULL, 1, '$2y$10$ZfpLxsrrPxxdaykeC7z.F.CJUWJLWx6y0ykYMHWQD6hvq3MtpndZK', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(355, '1000000354', 'AFIKAH SAHIRA', 'P', 'teacher', '2000-12-20 00:00:00', 17, 4, 'afikahsahirap17355@man.com', NULL, 1, '$2y$10$EsZf73gapNsnMQez7ZPiiuJl1ZkXK7CaLjsS.DHiDrVFfhaCFEbHi', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(356, '1000000355', 'AFRIANSYAH', 'L', 'teacher', '2000-12-21 00:00:00', 1, 4, 'afriansyahl1356@man.com', NULL, 1, '$2y$10$G30WIA62P0dx8TTVkVKt8uj0fJUYpK4ZXDkSVnXZByP4oEzrCBkDG', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(357, '1000000356', 'AHMAD NANDA KUARA', 'L', 'teacher', '2000-12-22 00:00:00', 12, 4, 'ahmadnandakuaral12357@man.com', NULL, 1, '$2y$10$2ZvHFw4Cf5BTUZeW.SmCuew9bDjjtF.4m9Q1NSVsuin8il/wgmH32', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(358, '1000000357', 'AHYA MAULANA', 'L', 'teacher', '2000-12-23 00:00:00', 20, 4, 'ahyamaulanal20358@man.com', NULL, 1, '$2y$10$lb8qDFEcxYTi.Fm0wp885.xGevyOPj825bl6YcpK2wsgHJ6ZHSMX.', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(359, '1000000358', 'AHYAR ADHA', 'L', 'teacher', '2000-12-24 00:00:00', 19, 4, 'ahyaradhal19359@man.com', NULL, 1, '$2y$10$nYXkB/ak1vItUdYUl3a9Xu0CDeenqMU1JlNSJ.yo60kFnrylqtpme', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(360, '1000000359', 'AL WANSYAH', 'L', 'teacher', '2000-12-25 00:00:00', 19, 4, 'alwansyahl19360@man.com', NULL, 1, '$2y$10$UG9PTToCxgJwJRNA20o6x.29jcBXr7KmG9sOMzrmawv8OUsN97yny', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(361, '1000000360', 'ALDIANSYAH RIZKI', 'L', 'teacher', '2000-12-26 00:00:00', 24, 4, 'aldiansyahrizkil24361@man.com', NULL, 1, '$2y$10$p8umP8zVRzMZkFStestgsO0xUoDWXjHWJ.xyZsKbV/TeJ7EGZ/uHy', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(362, '1000000361', 'APINDA ULFA', 'P', 'teacher', '2000-12-27 00:00:00', 7, 4, 'apindaulfap7362@man.com', NULL, 1, '$2y$10$tOD5pmUt3Qd4Y4kGCXp7N.Tlj43mxPmwVnWbVZ/CcFSjZd2C0Xxmi', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(363, '1000000362', 'AZIKIATUN', 'P', 'teacher', '2000-12-28 00:00:00', 18, 4, 'azikiatunp18363@man.com', NULL, 1, '$2y$10$xItPKNk9MCLH2R.q.l3yaudBzs4iBBs683OcOdf0yX4bTz.Q7YgY2', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(364, '1000000363', 'CUT INTAN NURAINI', 'P', 'teacher', '2000-12-29 00:00:00', 10, 4, 'cutintannurainip10364@man.com', NULL, 1, '$2y$10$cWxtUKj3l9mBzeomJk7uLuX3xYncp95mfu1OyOtdFAdRNXioK2hQK', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(365, '1000000364', 'DAINI FITRI', 'P', 'teacher', '2000-12-30 00:00:00', 6, 4, 'dainifitrip6365@man.com', NULL, 1, '$2y$10$mKvMmHsydvfFJxe0qxlD/OnHRs1u/QyQxcw57BSpHarctw6nOgZ0u', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(366, '1000000365', 'FARIDI WAHDI', 'L', 'teacher', '2000-12-31 00:00:00', 11, 4, 'faridiwahdil11366@man.com', NULL, 1, '$2y$10$8wW6MKqMZRUeiSX.UypfH.ZKf8tHCjAsu2JqfjuX.rofB5TmERJfq', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(367, '1000000366', 'FERI MARDI AQIMI', 'L', 'teacher', '2001-01-01 00:00:00', 20, 4, 'ferimardiaqimil20367@man.com', NULL, 1, '$2y$10$0UH3riX6qv7WrFoa4U68vOMGfergdQIFKuHVxX503RWcwPvaBb1dW', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(368, '1000000367', 'FRIHA SUPIANTI RINI', 'P', 'teacher', '2001-01-02 00:00:00', 7, 4, 'frihasupiantirinip7368@man.com', NULL, 1, '$2y$10$MZ7Kcbp4oas9hfVtBU2at.QIRzPf8mru/bJbDE4D.Lnr.2vqbi6mq', '2022-03-27 21:28:20', '2022-03-27 21:28:20', '0000-00-00 00:00:00'),
(369, '1000000368', 'FURQAN ', 'L', 'teacher', '2001-01-03 00:00:00', 2, 4, 'furqanl2369@man.com', NULL, 1, '$2y$10$t8gv9OEXcuOjgJ7Z/.VLEOKefXMcup.m2iJJt35ZRKWnSMG62AYBC', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(370, '1000000369', 'HARIANSYAH', 'L', 'teacher', '2001-01-04 00:00:00', 15, 4, 'hariansyahl15370@man.com', NULL, 1, '$2y$10$bh5/xozinKfIiak/SsSzcOxnr0H1J0YeQTve0EpVVlBmIaed3NtD.', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(371, '1000000370', 'ILHAM FAHMI', 'L', 'teacher', '2001-01-05 00:00:00', 7, 4, 'ilhamfahmil7371@man.com', NULL, 1, '$2y$10$w72utTMl5.uVljYEPFjFiu0HpwNwoG9e70eaxhF.OHgQPo4nYsvbW', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(372, '1000000371', 'ITA WARNI', 'P', 'teacher', '2001-01-06 00:00:00', 9, 4, 'itawarnip9372@man.com', NULL, 1, '$2y$10$vY0EkYDpeqc/zQAyMT7VPuH19ug6JRVGOB87txz44f6580qvqFpsa', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(373, '1000000372', 'IWAN RAMADHAN', 'L', 'teacher', '2001-01-07 00:00:00', 4, 4, 'iwanramadhanl4373@man.com', NULL, 1, '$2y$10$021ch3V8di3YZZuWX7A.Ae05z4BKJorv.7mNUzQcZeW3f/p5F5eo.', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(374, '1000000373', 'KEMALA INTAN', 'P', 'teacher', '2001-01-08 00:00:00', 23, 4, 'kemalaintanp23374@man.com', NULL, 1, '$2y$10$B9W3rJLwcRfVV1Ua0FpOdeVT3Da5oKgx6zsubcsBRZLV7EUmlZ/Ja', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(375, '1000000374', 'KHAIRUL ADHA', 'L', 'teacher', '2001-01-09 00:00:00', 7, 4, 'khairuladhal7375@man.com', NULL, 1, '$2y$10$5ckOCs3gXT/6fOaY1ijTe.TaY1Wq605lYAGPIHIb2L.X4ZiscY05.', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(376, '1000000375', 'LINDA KARMA', 'P', 'teacher', '2001-01-10 00:00:00', 19, 4, 'lindakarmap19376@man.com', NULL, 1, '$2y$10$9KUOQASNxsuooTozpdSJBOVl8j8S79gMvjzP93rLi5CNL4i310XKy', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(377, '1000000376', 'MHD. FADHLI', 'L', 'teacher', '2001-01-11 00:00:00', 11, 4, 'mhd.fadhlil11377@man.com', NULL, 1, '$2y$10$oE.jlUwWjcX6jZ9g0rg31Ov3SfK/DFUtgNY5epWdGfiO24ftiJ6kC', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(378, '1000000377', 'MILWAN APRILIAN', 'L', 'teacher', '2001-01-12 00:00:00', 15, 4, 'milwanaprilianl15378@man.com', NULL, 1, '$2y$10$dSkqml.aKZ.xFGtJ1m6ZDeob968lMrNZvCNYhcTTMms9AQEfn0QtW', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(379, '1000000378', 'MISSIS SAPRIDA', 'P', 'teacher', '2001-01-13 00:00:00', 26, 4, 'mississapridap26379@man.com', NULL, 1, '$2y$10$q6mEnBsMHP4d2tPDZ3yOf./N9xPwuIprrL.tzw4tc3ruIzlGJw.ji', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(380, '1000000379', 'MUSHAB', 'L', 'teacher', '2001-01-14 00:00:00', 4, 4, 'mushabl4380@man.com', NULL, 1, '$2y$10$tFKv/5jR6HM/Ko1SIC9qM.2qFGu.IbDtGuH.0FAWH5NV94aikiGai', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(381, '1000000380', 'NURAINI ', 'P', 'teacher', '2001-01-15 00:00:00', 19, 4, 'nurainip19381@man.com', NULL, 1, '$2y$10$Mopr/qBM6azhDZ.1Jhm1vu95WyXL/bvJbFWzp85SEpsnU7h3ntD7m', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(382, '1000000381', 'RAHMAH FATHIYA', 'P', 'teacher', '2001-01-16 00:00:00', 18, 4, 'rahmahfathiyap18382@man.com', NULL, 1, '$2y$10$kth/OeiNaabMLOlKsWzAIuGkXM44/3csWahKIbs94zFtVMBM7NXei', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(383, '1000000382', 'RAHMAT TENIRO', 'L', 'teacher', '2001-01-17 00:00:00', 12, 4, 'rahmattenirol12383@man.com', NULL, 1, '$2y$10$KqoU0/8qW/ZcUU/Bm5u.Pe63tObrt2WECRJeX3MxSr3cyb/fB0rLm', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(384, '1000000383', 'RAHMATSYAH', 'L', 'teacher', '2001-01-18 00:00:00', 3, 4, 'rahmatsyahl3384@man.com', NULL, 1, '$2y$10$sexLqi9n/ZjJczghAA6Jye1d.g5uAJ4qhTZb/IclFN8RjImIkGwfi', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(385, '1000000384', 'RENDI', 'L', 'teacher', '2001-01-19 00:00:00', 18, 4, 'rendil18385@man.com', NULL, 1, '$2y$10$QVxxwi/sAQ7kSm8eK5x.r.NpsiKnOXhqOaVEHTdfK2RUnzQYsyMgy', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(386, '1000000385', 'RIDHO AL SADR', 'L', 'teacher', '2001-01-20 00:00:00', 18, 4, 'ridhoalsadrl18386@man.com', NULL, 1, '$2y$10$MzaSItUQpqRV.iJk3l4DZeLdlUTX.d50oPHIcP8I0YTyubHy3r1r6', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(387, '1000000386', 'SAHRIAL', 'L', 'teacher', '2001-01-21 00:00:00', 7, 4, 'sahriall7387@man.com', NULL, 1, '$2y$10$A001Kf6JWOrQ/rfugN0wDOuje8Ca.SPu9Uf./95WDynaCg7UF/pPG', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(388, '1000000387', 'SALWANDI TEBE', 'L', 'teacher', '2001-01-22 00:00:00', 7, 4, 'salwanditebel7388@man.com', NULL, 1, '$2y$10$rQZipAKqGuYEU80fw742U.4dxsjoXuBJbsvGbVBZe9Q/bQicoYOKm', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(389, '1000000388', 'SELFI YULIANA', 'P', 'teacher', '2001-01-23 00:00:00', 9, 4, 'selfiyulianap9389@man.com', NULL, 1, '$2y$10$ZXQH941zj7jJuv8s4ogQ9eYLt/RkJ83s.htpC1W274QYU6yfAx7TK', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(390, '1000000389', 'SUPIANDA', 'L', 'teacher', '2001-01-24 00:00:00', 3, 4, 'supiandal3390@man.com', NULL, 1, '$2y$10$Zf.GMabzpSHKGYH6RH1l0utbwzmGCHR1/6Ih3YneM2Ju0P7fM31PW', '2022-03-27 21:28:21', '2022-03-27 21:28:21', '0000-00-00 00:00:00'),
(391, '1000000390', 'YASSAR', 'L', 'teacher', '2001-01-25 00:00:00', 15, 4, 'yassarl15391@man.com', NULL, 1, '$2y$10$Bbc8IQp98R0gbUwiuw/he.sydZYFydvk66zO52OvD9V7go86P4ie2', '2022-03-27 21:28:22', '2022-03-27 21:28:22', '0000-00-00 00:00:00'),
(392, '1000000391', 'IRFAN RISKY', 'L', 'teacher', '2001-01-26 00:00:00', 2, 4, 'irfanriskyl2392@man.com', NULL, 1, '$2y$10$02jLT57tJ0c3zzXYG13yme0JUsOfy/PkBs/jmMzRCMyp8qWuOW6Fa', '2022-03-27 21:28:22', '2022-03-27 21:28:22', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjectId` (`subjectId`),
  ADD KEY `classId` (`classId`);

--
-- Indexes for table `hoomrooms`
--
ALTER TABLE `hoomrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classId` (`classId`),
  ADD KEY `teacherId` (`teacherId`),
  ADD KEY `roomId` (`roomId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resultexams`
--
ALTER TABLE `resultexams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studentId` (`studentId`),
  ADD KEY `examId` (`examId`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `scheduleexams`
--
ALTER TABLE `scheduleexams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_ibfk_1` (`privilegeId`),
  ADD KEY `roomId` (`roomId`),
  ADD KEY `classId` (`classId`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `hoomrooms`
--
ALTER TABLE `hoomrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resultexams`
--
ALTER TABLE `resultexams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `scheduleexams`
--
ALTER TABLE `scheduleexams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `exams_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `classes` (`id`);

--
-- Constraints for table `hoomrooms`
--
ALTER TABLE `hoomrooms`
  ADD CONSTRAINT `hoomrooms_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `hoomrooms_ibfk_2` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `hoomrooms_ibfk_3` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `resultexams`
--
ALTER TABLE `resultexams`
  ADD CONSTRAINT `resultexams_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `resultexams_ibfk_2` FOREIGN KEY (`examId`) REFERENCES `exams` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`privilegeId`) REFERENCES `privileges` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`classId`) REFERENCES `classes` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
