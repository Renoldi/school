-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 03:57 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

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
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'X', 1, 1652599098, 1652599098, 0),
(2, 'XI', 1, 1652599098, 1652599098, 0),
(3, 'XII', 1, 1652599098, 1652599098, 0);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'IPA', 1, 1652599098, 1652599098, 0),
(2, 'IPS', 1, 1652599098, 1652599098, 0);

-- --------------------------------------------------------

--
-- Table structure for table `educationlevels`
--

CREATE TABLE `educationlevels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educationlevels`
--

INSERT INTO `educationlevels` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'SD', 1, 1652599098, 1652599098, 0),
(2, 'SMP', 1, 1652599098, 1652599098, 0),
(3, 'SMA', 1, 1652599098, 1652599098, 0),
(4, 'MAN', 1, 1652599098, 1652599098, 0),
(5, 'SMK', 1, 1652599098, 1652599098, 0),
(6, 'SMEA', 1, 1652599098, 1652599098, 0),
(7, 'D1', 1, 1652599098, 1652599098, 0),
(8, 'D2', 1, 1652599098, 1652599098, 0),
(9, 'D3', 1, 1652599098, 1652599098, 0),
(10, 'S1', 1, 1652599098, 1652599098, 0),
(11, 'S2', 1, 1652599098, 1652599098, 0),
(12, 'S3', 1, 1652599098, 1652599098, 0);

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
  `show` enum('both','text','image') NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `point` int(3) NOT NULL,
  `answer` char(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'a', 1, 1652599098, 1652599098, 0),
(2, 'b', 1, 1652599098, 1652599098, 0),
(3, 'c', 1, 1652599098, 1652599098, 0),
(4, 'd', 1, 1652599098, 1652599098, 0);

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
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Biologi', 1, 1652599098, 1652599098, 0),
(2, 'PKn', 1, 1652599098, 1652599098, 0),
(3, 'Sosiologi', 1, 1652599098, 1652599098, 0),
(4, 'Ekonomi', 1, 1652599098, 1652599098, 0),
(5, 'B. Indonesia', 1, 1652599098, 1652599098, 0),
(6, 'Kimia', 1, 1652599098, 1652599098, 0),
(7, 'TIA', 1, 1652599098, 1652599098, 0),
(8, 'Fiqih', 1, 1652599098, 1652599098, 0),
(9, 'Penjaskes', 1, 1652599098, 1652599098, 0),
(10, 'B. Inggris', 1, 1652599098, 1652599098, 0),
(11, 'B. Arab', 1, 1652599098, 1652599098, 0),
(12, 'BK', 1, 1652599098, 1652599098, 0),
(13, 'Fisika', 1, 1652599098, 1652599098, 0),
(14, 'PAI', 1, 1652599098, 1652599098, 0),
(15, 'Sejarah', 1, 1652599098, 1652599098, 0),
(16, 'Matematika', 1, 1652599098, 1652599098, 0),
(17, 'IPA', 1, 1652599098, 1652599098, 0),
(18, 'Perdagangan', 1, 1652599098, 1652599098, 0);

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
(241, '20220501100501', 'App\\Database\\Migrations\\Classes', 'default', 'App', 1652599096, 1),
(242, '20220501100502', 'App\\Database\\Migrations\\Departments', 'default', 'App', 1652599096, 1),
(243, '20220501100503', 'App\\Database\\Migrations\\Rooms', 'default', 'App', 1652599096, 1),
(244, '20220501100504', 'App\\Database\\Migrations\\Privileges', 'default', 'App', 1652599096, 1),
(245, '20220501100505', 'App\\Database\\Migrations\\Subjects', 'default', 'App', 1652599096, 1),
(246, '20220501100507', 'App\\Database\\Migrations\\Students', 'default', 'App', 1652599096, 1),
(247, '20220501100509', 'App\\Database\\Migrations\\Exams', 'default', 'App', 1652599097, 1),
(248, '20220501100510', 'App\\Database\\Migrations\\Resultexams', 'default', 'App', 1652599097, 1),
(249, '20220501100511', 'App\\Database\\Migrations\\Scheduleexams', 'default', 'App', 1652599097, 1),
(250, '20220501100513', 'App\\Database\\Migrations\\SubjectDepartements', 'default', 'App', 1652599097, 1),
(251, '20220514052802', 'App\\Database\\Migrations\\Ranks', 'default', 'App', 1652599097, 1),
(252, '20220514053450', 'App\\Database\\Migrations\\Groups', 'default', 'App', 1652599097, 1),
(253, '20220514141410', 'App\\Database\\Migrations\\EducationLevels', 'default', 'App', 1652599097, 1),
(254, '20220515040435', 'App\\Database\\Migrations\\Majors', 'default', 'App', 1652599097, 1),
(255, '20220515041546', 'App\\Database\\Migrations\\Schools', 'default', 'App', 1652599097, 1),
(256, '20220515041547', 'App\\Database\\Migrations\\Teachers', 'default', 'App', 1652599097, 1),
(257, '20220515041548', 'App\\Database\\Migrations\\Hoomrooms', 'default', 'App', 1652599097, 1),
(258, '20220515041549', 'App\\Database\\Migrations\\SubjectTeachers', 'default', 'App', 1652599097, 1),
(259, '20220515041550', 'App\\Database\\Migrations\\Tasks', 'default', 'App', 1652599097, 1),
(260, '20220515041551', 'App\\Database\\Migrations\\TeacherTasks', 'default', 'App', 1652599097, 1);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'superadmin', 1, 1652599098, 1652599098, 0),
(2, 'admin', 1, 1652599098, 1652599098, 0),
(3, 'editor', 1, 1652599098, 1652599098, 0),
(4, 'teacher', 1, 1652599098, 1652599098, 0),
(5, 'student', 1, 1652599098, 1652599098, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'I', 1, 1652599098, 1652599098, 0),
(2, 'II', 1, 1652599098, 1652599098, 0),
(3, 'III', 1, 1652599098, 1652599098, 0),
(4, 'IV', 1, 1652599098, 1652599098, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resultexams`
--

CREATE TABLE `resultexams` (
  `id` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `examId` int(11) NOT NULL,
  `choise` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `departmentId` int(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `status`, `departmentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'IPA 1', 1, 1, 1652599098, 1652599098, 0),
(2, 'IPA 2', 1, 1, 1652599098, 1652599098, 0),
(3, 'IPA 3', 1, 1, 1652599098, 1652599098, 0),
(4, 'IPA 4', 1, 1, 1652599098, 1652599098, 0),
(5, 'IPS 1', 1, 2, 1652599098, 1652599098, 0),
(6, 'IPS 2', 1, 2, 1652599098, 1652599098, 0),
(7, 'IPS 3', 1, 2, 1652599098, 1652599098, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scheduleexams`
--

CREATE TABLE `scheduleexams` (
  `id` bigint(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `start` bigint(20) NOT NULL,
  `end` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'IAIN', 1, 1652599098, 1652599098, 0),
(2, 'USU', 1, 1652599098, 1652599098, 0),
(3, 'FKIP', 1, 1652599098, 1652599098, 0),
(4, 'STAI', 1, 1652599098, 1652599098, 0),
(5, 'UNSYIAH', 1, 1652599098, 1652599098, 0),
(6, 'STKIP', 1, 1652599098, 1652599098, 0),
(7, 'STAIN', 1, 1652599098, 1652599098, 0),
(8, 'UNSYAH', 1, 1652599098, 1652599098, 0),
(9, 'MAN', 1, 1652599098, 1652599098, 0),
(10, 'SMEA', 1, 1652599098, 1652599098, 0);

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
  `ipAddress` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `privilegeId` int(11) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `nisn`, `email`, `name`, `image`, `password`, `classId`, `roomId`, `gender`, `ipAddress`, `about`, `dob`, `status`, `privilegeId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '1000000000', 'abyanmahsanmuhan187@man.com', 'ABYAN MAHSAN MUHAN', NULL, '$2y$10$Aw/CDv3PqhxcP1csLkcrI.q/4qztT91EsnwWpmLVcSMoUGu3N9gy6', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(2, '1000000001', 'adehayati217@man.com', 'ADE HAYATI', NULL, '$2y$10$4uqW0SecLrkplTGMpDLV3ejj5N1i2VVaSUeM.GvxpRYju2X/J0ehS', 1, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(3, '1000000002', 'ahmadqaismughits124@man.com', 'AHMAD QAIS MUGHITS', NULL, '$2y$10$NHYa/qwgJTkBa5kVaS6faunacESnRUlx0OUGFwXbqwWrengEOyxXK', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(4, '1000000003', 'aidilhadi245@man.com', 'AIDIL HADI', NULL, '$2y$10$42aIVC/n2P9aJkC2IHNb8.qDFvR4dCa3FtsBp/reVs4uD6rW1vvB2', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(5, '1000000004', 'chainaramadana877@man.com', 'CHAINA RAMADANA', NULL, '$2y$10$qGE4de6SjjORfV6N1OJ3j.C/JdefhQnaiPEhgvCUPJ.n/2xabLFVS', 1, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(6, '1000000005', 'dimasoktavian534@man.com', 'DIMAS OKTAVIAN', NULL, '$2y$10$sN5TkvHrbNSgXYFwwK4jvOiNFt9atQGfNBju8IB2Uvvg1dG/pwD3i', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(7, '1000000006', 'duhaindrawansyah730@man.com', 'DUHA INDRA WANSYAH', NULL, '$2y$10$oXxCsjsHWq1r36ihiqsH3uRm186vliNG8AcCq96.DAOzR39omy1S.', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(8, '1000000007', 'erwinmaulana621@man.com', 'ERWIN MAULANA', NULL, '$2y$10$YkYM8pFdo5UfxY4teL7Td.aLjnDUEkS1JELfdvHLE9CNFzbml18cy', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(9, '1000000008', 'fauzanalkhairi989@man.com', 'FAUZAN AL KHAIRI', NULL, '$2y$10$Nij94B1.dzlzTbnligMCwOSPzkx6knOHQqNnkohfhjMREaui50aH6', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(10, '1000000009', 'fihadianfitra922@man.com', 'FIHADIAN FITRA', NULL, '$2y$10$LQnIZ4xhNoTYlvEohuZcr.w28gIKgDTgVVF6eiuWQ/qPTvFkQMezi', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(11, '1000000010', 'futriyasmini624@man.com', 'FUTRI YASMINI', NULL, '$2y$10$Cs7C7Uu7ynzLBhFoQpNfZ.CSNffuqKV6UmvoM776VFFVvuWEQMdlG', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(12, '1000000011', 'ikhsanzikri928@man.com', 'IKHSAN ZIKRI', NULL, '$2y$10$NiEj0cDLi38Odm2gjgxNOenUW./O.RaTlQMDJ3VN.4YQ/Wh6cHqdq', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(13, '1000000012', 'iqbalaimulhusni524@man.com', 'IQBAL AIMUL HUSNI', NULL, '$2y$10$TozDukWaxU8qCrbcmo5jq.2zeEetuSLgI/579MPWO8HYpLOsdWksm', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(14, '1000000013', 'maulandara984@man.com', 'MAULAN DARA', NULL, '$2y$10$elVeXxOM1RD12PXClDtdLu5KxGm.BQlrLI4A.1gzjJEy6XhRoaE52', 1, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599443, 1652599443, 0),
(15, '1000000014', 'miftahulrifkimy313@man.com', 'MIFTAHUL RIFKI MY', NULL, '$2y$10$YG1ptVy5tgLDulfvWbeUMOMUGJ1bQGm6TXWV9IzTlJuqIFA2YjddW', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(16, '1000000015', 'muhammadraoshah57@man.com', 'MUHAMMAD RAOSHAH', NULL, '$2y$10$bhUAvGMZjylwV0MFIxhZXe5MvT7qFPSwRWxVeAR3eaI5n8bioOn16', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(17, '1000000016', 'nabilabibesmi696@man.com', 'NABILA BIBESMI', NULL, '$2y$10$IfpzoRFIjBhLFaGjUXeT6O8DCoTM3ev5pScZGmSVNk/065oLQA2WS', 1, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(18, '1000000017', 'naufalfadhil542@man.com', 'NAUFAL FADHIL', NULL, '$2y$10$mwtgWwcljPCDv6GiI85OSeX/LvAMD8mY0x9h3r5OW/HKGbqRbniGK', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(19, '1000000018', 'niantahafidza440@man.com', 'NIANTA HAFIDZA', NULL, '$2y$10$aLoUHGvlI1D.dweepp2X/uNdbtukHLdDPk4ZxrrKhiGrhB6LgdiFO', 1, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(20, '1000000019', 'relifwantona850@man.com', 'RELIF WANTONA', NULL, '$2y$10$LUCYyfuc/cprsRipwRBMjehQuwHrzYYkRWYIUxjL74DZzM9Zv30wq', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(21, '1000000020', 'rendifebriandi607@man.com', 'RENDI FEBRIANDI', NULL, '$2y$10$4fGVZyQ55Z81pg1F6nKvO.LDS.RaCYsnSLCTwad6vkL5nNvxk29Jq', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(22, '1000000021', 'rezkimahara247@man.com', 'REZKI MAHARA', NULL, '$2y$10$3g9qCXGt6bYoTJe/2NtBSOkDBlZQg/Hg640Q1WyexKLiRshVbH/DG', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(23, '1000000022', 'shirathalfadhla874@man.com', 'SHIRATHAL FADHLA', NULL, '$2y$10$nZ/hPy4QzpqbryGl2j4XDuvJUhj1X7m7AG.p0nvJW0xg6lyq4Hdzu', 1, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(24, '1000000023', 'sismacantikaputri684@man.com', 'SISMA CANTIKA PUTRI', NULL, '$2y$10$PdPnjkNCPRvbwktwg7ivnusA6vQ.EJuSR35Kk7lFYX/wRX1BGKJBG', 1, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(25, '1000000024', 'wenihafizah212@man.com', 'WENI HAFIZAH', NULL, '$2y$10$EgFfYBJKA/mbJa0gLL2P2uBMdnehJNLur1aXy459Lmo0tG/G7SLy6', 1, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(26, '1000000025', 'arikasimehate991@man.com', 'ARIKA SIMEHATE', NULL, '$2y$10$a.DJzKELbc8iVXximF3w8Op7Kw7KPPNIcGQSV9VGAwOu.AOJ/fHEe', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(27, '1000000026', 'ariyanaamelia596@man.com', 'ARIYANA AMELIA', NULL, '$2y$10$Qgzu/XQtW2jIEBqqDAz7E.RpYZAmrkPhHqdDukXT4ix0gMJjv9evW', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(28, '1000000027', 'ashfiyanisa853@man.com', 'ASHFIYA NISA', NULL, '$2y$10$GcQcXME7jCCuNQYhUr6Dje/eWWh9cD1GMUpCIF20L4YYaMc/y4rAe', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(29, '1000000028', 'asnimulyani64@man.com', 'ASNI MULYANI', NULL, '$2y$10$l8Ozp.Z42Ir01asIqtsfluotUx1DEhHGGY1iKGET/1rdhNGA3EDyG', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(30, '1000000029', 'bakri325@man.com', 'BAKRI', NULL, '$2y$10$CA9TTNGUCpXwGWG4e03pMeb3jjDTTvys/TcygczrQgt9izpxdJr42', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(31, '1000000030', 'bilhaqqi288@man.com', 'BILHAQQI', NULL, '$2y$10$Py0jyhM4rNujOl3Wgakvkun9f69mNT3XbQc/hzE6580hwMoXAm7Ym', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(32, '1000000031', 'dalilakhairy236@man.com', 'DALILA KHAIRY', NULL, '$2y$10$lpXwe7PeidVNy4VSbGZH3.SdE1P.ekdQ/QMwEpVV1ZvPMHD1Xn63K', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(33, '1000000032', 'fatmawati536@man.com', 'FATMAWATI', NULL, '$2y$10$ezJ4FzLxq8/qqLQcTrGqYexMZmSLe2ijY8XcY8UXwpE7VbIRub.62', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(34, '1000000033', 'firzairinululazmi615@man.com', 'FIRZAIRIN ULUL AZMI', NULL, '$2y$10$4Nd1qCQ.O9jvCoOpSQylZuCs/Dott91KHpvBMPbBVjJoecDc2kfKG', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(35, '1000000034', 'futrimaharani951@man.com', 'FUTRI MAHARANI', NULL, '$2y$10$vM69YMGPJgS73JShsN0R/.4DwJku7YUade6zw7tBkpWQ6vLdGulmi', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599444, 1652599444, 0),
(36, '1000000035', 'gilanggemilang236@man.com', 'GILANG GEMILANG', NULL, '$2y$10$rhcVhAz9DM1nI149mWoUKO/IrtovB6hIVXOLr68EqVFLhcH7tADPm', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(37, '1000000036', 'helsiherlinda543@man.com', 'HELSI HERLINDA', NULL, '$2y$10$s.JA5iX/hGtkkmTuJ/sqkO1pGLMif.s/Som2RE96UZ4HB9i.zzViO', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(38, '1000000037', 'iftinansyifa536@man.com', 'IFTINAN SYIFA', NULL, '$2y$10$aS5rCdDxJBReITRgD0q/3OWU9/hLG2JQsSaV3/xsDntzq6RB/OptG', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(39, '1000000038', 'kamisaaidafutri255@man.com', 'KAMISA AIDA FUTRI', NULL, '$2y$10$K0cbMSOZ.dC//L3pgQYu/uJHfinf2J88Hm3eI5Uh6HXYV8AbUJAYa', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(40, '1000000039', 'mdzakihabibi455@man.com', 'M DZAKI HABIBI', NULL, '$2y$10$roWBwwXmCiLUIx5hq.OLQ.Pe4Wvn.p67pMDEC9uG1Ib6oNo4uVc9u', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(41, '1000000040', 'malanoviafitri438@man.com', 'MALA NOVIA FITRI', NULL, '$2y$10$NZVxJZEANyCZftaKlLjo6eKnwl0E6mKBjFo1JI6gxC.akaIqi3ZfW', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(42, '1000000041', 'mhdhaikal946@man.com', 'MHD HAIKAL', NULL, '$2y$10$HzMsJ5qXROOUbF.sq0UwT.BFaQCasVKhdBa6mWc.BQpdA8DI9bvgq', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(43, '1000000042', 'nabilayanti662@man.com', 'NABILA YANTI', NULL, '$2y$10$nP8n0xkKiwB6woyvpgvPZ.11tBQOIko8ebENDqTjCxsWAwmccl1yK', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(44, '1000000043', 'naufalhibatullah947@man.com', 'NAUFAL HIBATULLAH', NULL, '$2y$10$1UF4qAYBeGXxUiF6fZOAGOPabeGSsXWMFLzbSpbdah2LMBSVFvlN.', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(45, '1000000044', 'naufalzahran465@man.com', 'NAUFAL ZAHRAN', NULL, '$2y$10$P7AxS2Ezq93frAl0xvx46.LTtsscLTZw1HgXsmdkT4OV.hVLb5.fG', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(46, '1000000045', 'qhandiraalsagufrana316@man.com', 'QHANDIRA ALSA GUFRANA', NULL, '$2y$10$nwTtQ3wuqQVc44D/k3ed1e6dcTwzpokpPqa8MoA9CRaRNKDfDhHqu', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(47, '1000000046', 'rauzatulzannah968@man.com', 'RAUZATUL ZANNAH', NULL, '$2y$10$/i7WwPlcLAEHOZ8yQSg.6OCxPoxDX/ONIwNZBvAZue0BeJrNYYGMy', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(48, '1000000047', 'residianoktesya490@man.com', 'RESI DIAN OKTESYA', NULL, '$2y$10$vOKw.i4xOpBTEpJjB5/5L.fgSPLl6g85NJVMFw52PuEAaips1gJP2', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(49, '1000000048', 'rifarahman546@man.com', 'RIFA RAHMAN', NULL, '$2y$10$iN6aPMBr5Px4zVD/hjiqFumjgM3xH5Re58e02TDErPjnKpFPFqJXi', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(50, '1000000049', 'rinidianti437@man.com', 'RINI DIANTI', NULL, '$2y$10$0S92GFWO4XCNHTjUCf8FY.xWqNYrk4Ql66kva9KQHEiQTWr6OZ33W', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(51, '1000000050', 'riyanda805@man.com', 'RIYANDA', NULL, '$2y$10$9CyvZdsnlM6v./8QAjp1kuuZ6IDCAeFdO84g2/Fxlo7El68XENboW', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(52, '1000000051', 'rozaameliasahraini780@man.com', 'ROZA AMELIA SAHRAINI', NULL, '$2y$10$pkWg/RfcfzUUXmJ7Yaijx./i6FD4QtyLygfFq1GsXgS7mD.qUnN02', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(53, '1000000052', 'sinthiaatikah27@man.com', 'SINTHIA ATIKAH', NULL, '$2y$10$4qRWOIFQNCd6xEQdvawmYeekydd9qeEXEpvPfyUoB6BEu1bzGrsTq', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(54, '1000000053', 'syafauqbaharrafi239@man.com', 'SYAFA UQBAH ARRAFI', NULL, '$2y$10$B1wvIVkGSDGcJGh1oCMo0.r4x54pZrS.RVBKxVBvES8EmPJKxLsra', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(55, '1000000054', 'taufikhidayat987@man.com', 'TAUFIK HIDAYAT', NULL, '$2y$10$RmfFzdLQ1VuGG9INMgwlGOgWgt45IfZ7oSm6L1zBkP/VZuC5KC2V2', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(56, '1000000055', 'ulfafitria389@man.com', 'ULFA FITRIA', NULL, '$2y$10$VCOFdPuLRfTCsWIpkqWyvezDWVJsvb71TXO1idqKwmI8TkbXjPW6O', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(57, '1000000056', 'uswatunnazwa445@man.com', 'USWATUN NAZWA', NULL, '$2y$10$N4G0/6G.VNcSJiKG1SsVK.5UCQiiMUfM62yzcqCSeQglaHMZIBE.y', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599445, 1652599445, 0),
(58, '1000000057', 'yuliarnia621@man.com', 'YULI ARNIA', NULL, '$2y$10$aWEmJWcag7M46ndKnOVAiu/tHtuvaXjkXSAclRKPXGNfFVHRdBuhi', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(59, '1000000058', 'yunidarsam976@man.com', 'YUNI DARSAM', NULL, '$2y$10$e8DDEqj4kIu5fwBCqLEmZeHupXEEkKfyfK1hKiaC/6CeBhRwk374.', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(60, '1000000059', 'zahrinaizzatis538@man.com', 'ZAHRINA IZZATI S', NULL, '$2y$10$OVjh/nvOif4zIj.Wxh0/aOe9bCw7BW6e9qOej1XhXpaNJX3vS4Nhm', 1, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(61, '1000000060', 'fahmiamdizulu923@man.com', 'FAHMI AMDI ZULU', NULL, '$2y$10$6GNY3Y2Sv/aFcsYMk7t2lOjaRUr0DcT3jOoMY7Ml7PZyl0FQa1xPy', 1, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(62, '1000000061', 'alpandi787@man.com', 'ALPANDI', NULL, '$2y$10$QGaxHh1sQbiy8RI0BbT7juDWF3bSSsoQjXgDqu3naPPzdS2ovqvcK', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(63, '1000000062', 'auradina226@man.com', 'AURA DINA', NULL, '$2y$10$t3cN.qvZqNkDlJK7nnWOmuC8hUTKyAS6u2.21SzAYZDREKV.fMPqm', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(64, '1000000063', 'bungelusiana779@man.com', 'BUNGE LUSIANA', NULL, '$2y$10$umpVtjwEqiU9G0uQBiRYGe9zZoflLL5Vm.h9Yc8ZbXTClpvD3yMpy', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(65, '1000000064', 'fitraariga756@man.com', 'FITRA ARIGA', NULL, '$2y$10$Ajslk1DsScJYOGR1OJdMMufJxlPYlsy5l3Q3IIgzL9tYVdb/X3Yf6', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(66, '1000000065', 'futrisalsabila181@man.com', 'FUTRI SALSABILA', NULL, '$2y$10$EksOYmoNY1tQr8KJo7NdOeo8lc3jneQfO6NA9kucAs.Hz9yp0nKTy', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(67, '1000000066', 'hamdan778@man.com', 'HAMDAN', NULL, '$2y$10$ScReJXK5NuThyzzweqmDweDh.qfpgagH7FB169BBcV4tnA/RknxwS', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(68, '1000000067', 'intannurhayati453@man.com', 'INTAN NURHAYATI', NULL, '$2y$10$JhvQkhKZW7eegHU7ibsGwufeD6dRGTHkXzWq4pfGuCjHlgMXUa/nm', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(69, '1000000068', 'jaharamurni638@man.com', 'JAHARA MURNI', NULL, '$2y$10$/yfpmPJZ3B.akmnRGvd3teBy65tNOlmypIAMhbIjsc/hyKkYJl6ay', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(70, '1000000069', 'jurfanajwa252@man.com', 'JURFA NAJWA', NULL, '$2y$10$IAy/AGjMTp3OI8IEUDAP0ubRdU9Zr7oUcSlbDMJjUgbbeIW5WW8a2', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(71, '1000000070', 'juspikaaradi692@man.com', 'JUSPIKA ARADI', NULL, '$2y$10$dblic1.2940aOm.2wkAkuOAOK/1IxsXveMwJzU05OFpZiA0w9UeHq', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(72, '1000000071', 'khairifikri798@man.com', 'KHAIRI FIKRI', NULL, '$2y$10$6vOL3XYWZBBFI6z9iRSeOuuri80a6Pj8g1ppwNwLZ9J3/2Hme3tqK', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(73, '1000000072', 'lizanovriana23@man.com', 'LIZA NOVRIANA', NULL, '$2y$10$GiSV97EspC6vvPT2rcwMTeJMDaXE741VW194IMrNlaXWyXYHaSIey', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(74, '1000000073', 'mauzaismiadi447@man.com', 'MAUZA ISMIADI', NULL, '$2y$10$k0Bfm6syVQCdB9VyTNq.2eRv.BnT/OYl5jfA8vGU.rM7lnBsRPCzW', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(75, '1000000074', 'melayunita146@man.com', 'MELA YUNITA', NULL, '$2y$10$IE7zVxzTOp.FtjfspENN.uxyPfGNV4bdnzgO22fSw0FI.XZQmIBr.', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(76, '1000000075', 'mutiararamadhani735@man.com', 'MUTIARA RAMADHANI', NULL, '$2y$10$uI0o1VBPqTsobEXcZ.6s2.X78Dd1XAPmWsZhVrdz7hBxXFKoau98C', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(77, '1000000076', 'nadia730@man.com', 'NADIA ', NULL, '$2y$10$dEXwLPJP3RGttqgSndphkelbkw/CwY0ex7WMg6FkTUGA94R9qYWsK', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(78, '1000000077', 'naufalwaliyulhaq100@man.com', 'NAUFAL WALIYUL HAQ', NULL, '$2y$10$CdjqtvYwftsbujiH01iOL.OmD3gEx1KCTlvOpd7/vcVbGP.nbmud6', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599446, 1652599446, 0),
(79, '1000000078', 'novadiliza9@man.com', 'NOVA DILIZA', NULL, '$2y$10$VuxyMFrFc2sO.mjhtVYQJOcQkCGAFJyFV8HYYNBIGz38YULp71vX.', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(80, '1000000079', 'rendyafitrawan620@man.com', 'RENDYA FITRAWAN', NULL, '$2y$10$3yxnCRV7jNPmQGnAcyMIouiggJCt047ubKQEQ9ZH87kuLiiEAiJGa', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(81, '1000000080', 'ridhajunita821@man.com', 'RIDHA JUNITA', NULL, '$2y$10$umVEXr4Evn6oWkQViIGRL.lyjv6/hzjhYlizEYzflEdix53N3F7Si', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(82, '1000000081', 'rifdafriatin452@man.com', 'RIFDA FRIATIN', NULL, '$2y$10$sO3zar3pORKHVFUrMpfCkuKXUu/WJgkqlMGyoMfHhQu/AhWgrGP2G', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(83, '1000000082', 'rifkirahmanhakim503@man.com', 'RIFKI RAHMAN HAKIM', NULL, '$2y$10$44JWp/RErwjk5z56k5Lq0OtELpH2IaX8RdpU7me6lxpKZUuhLYe9W', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(84, '1000000083', 'rizkaanindra111@man.com', 'RIZKA ANINDRA', NULL, '$2y$10$ArmHvq6qYpymTXGmVsQw5um8oL37X1SlHiLIsJR6H/o1iI2p4Co7u', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(85, '1000000084', 'rizkisyafitri354@man.com', 'RIZKI SYAFITRI', NULL, '$2y$10$vG2P89h7oGeGMsUZE3Kgz.G6mwqa5zaqLYff19qkLyLjQq3HPAR9m', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(86, '1000000085', 'sahraniputri747@man.com', 'SAHRANI PUTRI', NULL, '$2y$10$CKlLsySKpNNDY66QIctfeuAg3NV4vF0ehsX3q/74o0PYSyNeWMDH.', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(87, '1000000086', 'selviaafriani16@man.com', 'SELVIA AFRIANI', NULL, '$2y$10$39FMO.cmpj7CzGesL0CEkuXcZV7Z1t.noJrZHiGAY5qjSrTXntSnq', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(88, '1000000087', 'sofiaramadhani123@man.com', 'SOFIA RAMADHANI', NULL, '$2y$10$in.X6RATDrp5yCbLYfGm.uvM.FJCZhPCW3TrwObMTu3lRvPdyzHbS', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(89, '1000000088', 'sulastriulandari759@man.com', 'SULASTRI ULANDARI', NULL, '$2y$10$82862hEtlYdOcrbpEZFbkeDkwKsVmiZDDhc7YcLB5c.9aJfhnkBFu', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(90, '1000000089', 'winteguhiwanrantoni638@man.com', 'WIN TEGUH IWAN RANTONI', NULL, '$2y$10$LNjXfiSaSXfd/lZEDMjsz.QgQmCfNLQMZRM9NVmoBsmICiAd01Xne', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(91, '1000000090', 'yogasetiawanadha41@man.com', 'YOGA SETIAWAN ADHA', NULL, '$2y$10$NhSjQznTGFQw6mKEmbx2IukNwtMhlPcxIKF77LogvfPca5YIzYqL.', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(92, '1000000091', 'zaharadwearianti463@man.com', 'ZAHARA DWE ARIANTI', NULL, '$2y$10$KJN0t1fmXa.Q1csN4Dn3ZuunjruC.gbL/oo1ZOTnQEZwxaNSC4lSq', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(93, '1000000092', 'zahraniizzatis303@man.com', 'ZAHRANI IZZATI S', NULL, '$2y$10$4jsbueea3cTBHOu1eYYN8e2dyrzzVILcmvLIvCoOWC71LFULaW7we', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(94, '1000000093', 'zilfanakhairunnisa699@man.com', 'ZILFANA KHAIRUN NISA', NULL, '$2y$10$5.TeEPpD9cVYUVnuXrv0WOarD4qwxxUEb49KCWyluhNQwfU5sc9zO', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(95, '1000000094', 'endangstaurina485@man.com', 'ENDANG S TAURINA', NULL, '$2y$10$yLfzk5ayPTNvHpwxKX0RbeD0VzebaQu6zVteZpeCRLIm7oGQZlszC', 1, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(96, '1000000095', 'anandaramadhan750@man.com', 'ANANDA RAMADHAN', NULL, '$2y$10$3lMtrPzdnxLx9k4XfjqFPuNGB/1kV.HiQ7dDaMe0rKLlfP9d17MY6', 1, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(97, '1000000096', 'adekarina461@man.com', 'ADE KARINA', NULL, '$2y$10$fXRIDdN/25Sp3m2SqQyxvu7oFiGd5kZc894rsgh7wWZsc/5Wcat9.', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(98, '1000000097', 'ainulyakin156@man.com', 'AINUL YAKIN', NULL, '$2y$10$KFjJ3Xulnt346r4jDsqSiOi16owKjGsZXxaXARRnDrrzaftiZ3ZG6', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(99, '1000000098', 'aldofandika28@man.com', 'ALDO FANDIKA', NULL, '$2y$10$VFWMqUdHsnUtPl3uJapKdOR.X93z7E50zVN6kKWMitCn/NoiqXmei', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(100, '1000000099', 'alhadimy884@man.com', 'ALHADI MY', NULL, '$2y$10$G9rfWlkdjRXRdC8MYMJeWO7KI/8EkJu0z35sFjzMO1kR16mHmqnLS', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599447, 1652599447, 0),
(101, '1000000100', 'amanda341@man.com', 'AMANDA', NULL, '$2y$10$dB1IU7PqajeLoTybF2X1KugwbEwrddwIKFJbmzKkgCydU2YPdSgJK', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(102, '1000000101', 'armadainipionafitri829@man.com', 'ARMADAINI PIONA FITRI', NULL, '$2y$10$0//.jWnptvC7PvQLnPvAFeHGfD65rxAEFV1IzR7tMyrPNaEmGDh6O', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(103, '1000000102', 'deniyusnita480@man.com', 'DENI YUSNITA', NULL, '$2y$10$pk5RvIimvcHt6PN/GIjs1.h/ozpDi0VrkjSKr6R.xA6wuPq33QgxG', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(104, '1000000103', 'dinahayati67@man.com', 'DINA HAYATI', NULL, '$2y$10$j67DxbGwAwxk5XE3/2EMQ.g.je88iYjbdtHlrip/NbUACHjfnYOrO', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(105, '1000000104', 'faziravalameysa190@man.com', 'FAZIRA VALAMEYSA', NULL, '$2y$10$IXlXq8Tns1xE6Avo0k8o9O1tlBBoG/sFngcUVzm9URe0MoFgW8znK', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(106, '1000000105', 'gayatrihajamunte780@man.com', 'GAYATRI HAJA MUNTE', NULL, '$2y$10$7FLwLh5jU3mOZLqykMTxPOO930Wr3F27nv8B.1twXdFTEfa1MmwwS', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(107, '1000000106', 'mabralsetiawan891@man.com', 'M ABRAL SETIAWAN', NULL, '$2y$10$bTErvNv6Lskl//Qu1/Zr4Oc32kMJWNS3DVB238Nbx09MNaBxWlOLa', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(108, '1000000107', 'melina821@man.com', 'MELINA', NULL, '$2y$10$mwv4UoAXXoKByja1X1RMN.uyJiZUv51H/njEur1GPKPvUx.C7LYEy', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(109, '1000000108', 'muhammadalfarisim362@man.com', 'MUHAMMAD AL FARISI M', NULL, '$2y$10$Zh72./q1BUNg2xR/4OIFeuk.47TY9TSR88O3HYAxtY7VjnCGPpkCm', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(110, '1000000109', 'nazwa294@man.com', 'NAZWA ', NULL, '$2y$10$IM21wmlKOijmRT4rJxjQNutRU7YZPq.r0VmxqmLoORqVV6tJeHsRy', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(111, '1000000110', 'nopiytasentiya415@man.com', 'NOPIYTA SENTIYA', NULL, '$2y$10$pZquZ87nfQqk5HI6ccHDgOMqeYsOF3tntFuQdbIXoPW3rVq.ueRg.', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(112, '1000000111', 'rahmadaini571@man.com', 'RAHMADAINI', NULL, '$2y$10$Ml6Pzwn.qKd5HEs8tl.f4OPOqwvyjXSBhDGdcu89TA0Yt5rqWcXLy', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(113, '1000000112', 'ridhawantuahmiko176@man.com', 'RIDHAWAN TUAH MIKO', NULL, '$2y$10$NlgR8giWWNbcWw7ZQNHweOr0uPgndJbkJz6WJFpTDzJGYOGMZfsn2', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(114, '1000000113', 'ridhoramadhan626@man.com', 'RIDHO RAMADHAN', NULL, '$2y$10$YENorWFMc5ZckC0fXOgIZu9KWgrGjQ23ZBEhK1zhzmhrAnu1F7ciW', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(115, '1000000114', 'rifkirahman839@man.com', 'RIFKI RAHMAN', NULL, '$2y$10$r0iuj15kOeGJWpXTb45c8uIXc8GoUJadkg/6DDU0r9f2fW1iwKtWm', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(116, '1000000115', 'rizkankhalis869@man.com', 'RIZKAN KHALIS', NULL, '$2y$10$/NHGBO0qjV0cyWlkWWh7EeKnmm7mw5ssNMBEMx1/0rkpqZT2R1n16', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(117, '1000000116', 'rizkymaulana279@man.com', 'RIZKY MAULANA', NULL, '$2y$10$V7Rcl38VpFggHU4.Mf6jpezn0ZXaNxie.5Bm4VNdJ0oSgQDUV5V0y', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(118, '1000000117', 'saharamulyadi444@man.com', 'SAHARA MULYADI', NULL, '$2y$10$Zo060D7naHHX7sJy74GVUu1m9ws7MszohWwhHErJ4UogzsDbiZzKq', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(119, '1000000118', 'sarahafriani178@man.com', 'SARAH AFRIANI', NULL, '$2y$10$FZpZ17FRySnoxKnHYo89hexfIJ5sgu3QU/OSywM20OYF0GTuvmBe6', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(120, '1000000119', 'sawma848@man.com', 'SAWMA', NULL, '$2y$10$GCJfFn.gD0vhGuV47leT2O0VmBQasxTxPmUAfIv0z3reAE3SlNYeC', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(121, '1000000120', 'sayumahara314@man.com', 'SAYU MAHARA', NULL, '$2y$10$7KUek9MRUJlrMNcqTNSOfe6cQ/I4ahODLhp88le.XmDHmQN12l2US', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599448, 1652599448, 0),
(122, '1000000121', 'selpinasintiaputri712@man.com', 'SELPINA SINTIA PUTRI', NULL, '$2y$10$OFjaYxuKHIzWePoFgUzZVO3RSUqdU3QpuGTsBmWeAJMAfbm4YnMbu', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(123, '1000000122', 'semayang637@man.com', 'SEMAYANG', NULL, '$2y$10$u6Nedzj4dwZvfXQJVW14MO0I.pawe2y13Q0MXso1He.Oo7RTsEGaS', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(124, '1000000123', 'sintapratama682@man.com', 'SINTA PRATAMA', NULL, '$2y$10$wOR/SJYHgMNHDcQ1TOKLHeSj1gw5VABKlE1DfGKS/YxOwwft4IuEm', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(125, '1000000124', 'sulastri515@man.com', 'SULASTRI', NULL, '$2y$10$JbEXmHafsgMGIfJ/hqybPeLlocyT1.d97H2g1QI2nAdyW8lX5H4Ru', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(126, '1000000125', 'sultan197@man.com', 'SULTAN', NULL, '$2y$10$P.BFiz9EQXDGyJyI/lUJ7uexP4Vyl0GAdKhBxuf22pS0/c1HiWC8G', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(127, '1000000126', 'taufiqhidayat551@man.com', 'TAUFIQ HIDAYAT', NULL, '$2y$10$cJzX2b49YUaYwoEsvUR.ROs3WdlAjMgsEkcKxklHZvXTm8C.ei5Ny', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(128, '1000000127', 'tirazahraassyifa346@man.com', 'TIRA ZAHRA ASSYIFA', NULL, '$2y$10$sxFj7Bjgh4yKBMzuYfNPsecYRiwNN1XekomwQ8RFZ77ehvt.IUwti', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(129, '1000000128', 'tomirizkilaoce916@man.com', 'TOMI RIZKI LAOCE', NULL, '$2y$10$b0pRhfgWt7q.sgn32h3ue.CPicUY7onN79erwF3NXcDK8FOAyhHIm', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(130, '1000000129', 'vadyaaknaakciella860@man.com', 'VADYA AKNA AKCIELLA', NULL, '$2y$10$NOeWXTmn1aOhWPJzN1Q2FuKTlu8UNRfzDzN5M/PgwF8J8QvJYq4Ze', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(131, '1000000130', 'vikkihafizulriski585@man.com', 'VIKKI HAFIZUL RISKI', NULL, '$2y$10$jRxnYdi8tdnc7/ytgesZe.acyVLKBzBhrwDLqdb9kYSwgmDmSYMH2', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(132, '1000000131', 'haikalmahpenona423@man.com', 'HAIKAL MAH PENONA', NULL, '$2y$10$ESS9mDz0gct9qv/sRQ85O.I8RyEoM8g8LUXE.xGoXMtGYvgtBswqO', 1, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(133, '1000000132', 'indahsilaturahmi168@man.com', 'INDAH SILATURAHMI', NULL, '$2y$10$WmlX9lfQBf.fuFz5RSUjDeVwHAhaLhQVm1Gi12wJQtfiTj6HE.WnW', 1, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(134, '1000000133', 'adityafazri176@man.com', 'ADITYA FAZRI', NULL, '$2y$10$DI0GBbNHodXajwI0umQEteu4UtAGKL3hsahOS1otVwlWnJx1rICFW', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(135, '1000000134', 'akmalhakim383@man.com', 'AKMAL HAKIM', NULL, '$2y$10$U8aH8SGn/te1ZSwwm50/eOgALbro3xzGfmi12ONxifNb5NrwNc9p6', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(136, '1000000135', 'amanapernama692@man.com', 'AMANA PERNAMA', NULL, '$2y$10$W9L5WUA8F0161mIug7GbhelkJyDhIi1Umk3ZuSm4GdnMkbSreMyju', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(137, '1000000136', 'andiarba363@man.com', 'ANDI ARBA', NULL, '$2y$10$dx3aBVtjAVDcDblO/2yB2ed/iGBjufzAVc/fVcCv3eb0o37R13Tdm', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(138, '1000000137', 'andikaranggayo310@man.com', 'ANDIKA RANGGAYO', NULL, '$2y$10$fHXtCEKA7OoyvIdCGZyzPu7PrjNBC2vXHfSrTm9iU3k6DOPSbGEkq', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(139, '1000000138', 'citraaprisyah705@man.com', 'CITRA APRISYAH', NULL, '$2y$10$ikZXv8G66NROhuGePykDx.DDJg0oR/YL4C2ssSc2kZSECQrfHJx5u', 1, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(140, '1000000139', 'endangagustiayu687@man.com', 'ENDANG AGUSTI AYU', NULL, '$2y$10$xe4n/CmbQkzUdUOG6ay1CuLC9sc41.3ohoysW3uSgM7uavZlBP0bq', 1, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(141, '1000000140', 'fadhlanridho902@man.com', 'FADHLAN RIDHO', NULL, '$2y$10$1Y75pPSh1uvSYfvr2tCgiun1DD7TGZRH4OZFrbHit2JfIMOyF1R2q', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(142, '1000000141', 'fadilhawari748@man.com', 'FADIL HAWARI', NULL, '$2y$10$Nt0Dl9yxjxB2aBEUvNCc8OYVj/ONnr7mW5hohY.DRvhWEQsq3IcNi', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(143, '1000000142', 'gafuriakmal468@man.com', 'GAFURI AKMAL', NULL, '$2y$10$1Qgs5QkLOBsfH4z81xb3DeZPqcy/PelL/xNbQdnaEhvxGqoRT4vQS', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599449, 1652599449, 0),
(144, '1000000143', 'hafidzulqiram289@man.com', 'HAFIDZUL QIRAM', NULL, '$2y$10$vVdfW7EubHhCtpf2zTHWMeQYxPSDxg6g7qVmdEPisDQHZ/U9sdFkm', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(145, '1000000144', 'handika953@man.com', 'HANDIKA', NULL, '$2y$10$j8JoojDA5YSpAL2OArkkIedf4VRKUzDnkwPz7nkUfbfr6.sh7ezoK', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(146, '1000000145', 'hardiramalianda358@man.com', 'HARDI RAMALIANDA', NULL, '$2y$10$alwyD9hWAtVKOlcqdEdrWuundaSJNZHuBY7ApDbi5lUtDRzao8c6.', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(147, '1000000146', 'herisyahputra625@man.com', 'HERI SYAHPUTRA', NULL, '$2y$10$SoV3gzsOJMFUpJN9bhEGR.euR8Tzaqz/IkXi.9FWTvJGkGOjqMFiK', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(148, '1000000147', 'izatunnisa918@man.com', 'IZATUNNISA', NULL, '$2y$10$y1ZIEWJ6FHFE8Evhaoajqux40R2lNvndhb4KYV0LTcWAYJCPA0mHa', 1, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(149, '1000000148', 'mdikasakula503@man.com', 'M DIKA SAKULA', NULL, '$2y$10$GYYs.a243UVJ.6L/4zHyKuqpBCmbEZ/2ccqDZgLawCS6yhCGDKtCK', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(150, '1000000149', 'mahfuza985@man.com', 'MAHFUZA', NULL, '$2y$10$js1/dRiZqq7PuweIpgh1GuzcbcPuJ81RgsJ5EFqDebwm0Yz1VhMF.', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(151, '1000000150', 'muthahari652@man.com', 'MUTHA HARI', NULL, '$2y$10$abNxPLnDxJfmJHBx/jFvheZuj/S33UJTKTUOHMSHlkUMwpRrby8VS', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(152, '1000000151', 'nafis986@man.com', 'NAFIS ', NULL, '$2y$10$MoAv2dWI8KuAny9DeTRLxebvkC6SfYeLhUgQKrZ17F177CmPnx5pS', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(153, '1000000152', 'nafisah632@man.com', 'NAFISAH', NULL, '$2y$10$2HgEIWZGw/U5Ve.4h/BrROz8u/9xgACYXsKH/eFgmVSg8ezbt.LL2', 1, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(154, '1000000153', 'naufalzahran881@man.com', 'NAUFAL ZAHRAN', NULL, '$2y$10$bX6v3Ym8z855xjP3G3y9m.uaj36NcXOKQUbxWbgJVr37DQ9rv7NN6', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(155, '1000000154', 'nipanikmah18@man.com', 'NIPA NIKMAH', NULL, '$2y$10$2AwZffby1t3j5sFKvtjLc.9DVcLR0aWy3zmFe3RE96gkNUihbYKra', 1, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(156, '1000000155', 'sahlandi991@man.com', 'SAHLANDI', NULL, '$2y$10$nwUHrydobfm.c4XcTWBDS.2yUpprgpqvy8SascmR7H8gg2xUrX1Vm', 1, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(157, '1000000156', 'santrimauliani686@man.com', 'SANTRI MAULIANI', NULL, '$2y$10$TjibNzPZMvgSGn4AoNgNNOuD3XJHafSpfdOH6VxSGa1/K2bK80Qmy', 1, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(158, '1000000157', 'serimahara444@man.com', 'SERI MAHARA', NULL, '$2y$10$BjOosFL7Iy.bIlyC4kD5H.T0wFvYfMI4A5R6t8d5CoH3BUZ.KuQO.', 1, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(159, '1000000158', 'arilbahgia483@man.com', 'ARIL BAHGIA', NULL, '$2y$10$dHR3gpLMbOIFSjiZYfdpo.K7sxJY3U/ps3/kxY4CIe9/ncKA8sDJK', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(160, '1000000159', 'auliadarmawan420@man.com', 'AULIA DARMAWAN', NULL, '$2y$10$1ZyWkKeqK5PzA3akfapBEe4Ig5kEW26t9B/IWuD659o6fO7G/dL1S', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(161, '1000000160', 'chairulihsan639@man.com', 'CHAIRUL IHSAN', NULL, '$2y$10$/FV.Cumi4vdVpQiWvBphfua4bjBqre23QLdNXNoNTB6MUCmSwEnRG', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(162, '1000000161', 'fadhilruzika328@man.com', 'FADHIL RUZIKA', NULL, '$2y$10$yuNuruNrVw1IRfeAO8T6C.lanvZBIY1ZPpMJ7Wo6u1QNFcNcG6saS', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(163, '1000000162', 'fathulhakiki245@man.com', 'FATHUL HAKIKI', NULL, '$2y$10$rQi1ZSGPifTLL3.XOU.Pt.sGMQtd8L2eGC6TldtKb6fE1BD0hJ7BK', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(164, '1000000163', 'indahmahbengi427@man.com', 'INDAH MAHBENGI', NULL, '$2y$10$tZw8iP64E488xhdrbDdFN.zJ3p.F9ZHOnWFG0CmBr58aQZ7pe3KoG', 1, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599450, 1652599450, 0),
(165, '1000000164', 'iwanmaulana677@man.com', 'IWAN MAULANA', NULL, '$2y$10$6HxI40zeUT58yU9KU0zIZOecjDUPr1jVJaGjjoXPMgnP3jCkCou4u', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(166, '1000000165', 'iyusdalilla599@man.com', 'IYUS DALILLA', NULL, '$2y$10$hdUiRvaPy4Rx0o/MGPyHWO5DYZqe1shKypW7BwwEmaQ7ljekNPMfC', 1, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(167, '1000000166', 'mdanieldarmawan93@man.com', 'M DANIEL DARMAWAN', NULL, '$2y$10$PjkNl4KtSeK2ilyMGSIyQOpyLvtjPeKSL0wUo63UOIBqZ3yynIf3i', 1, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(168, '1000000167', 'mpatihadlan921@man.com', 'M PATIH ADLAN', NULL, '$2y$10$djvvDLnGWM19WCOir63XRO7KdGkZ8DH1i2R2bwrl3e.K3Bzyp.7.y', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(169, '1000000168', 'muhammadfajaral-anis868@man.com', 'MUHAMMAD FAJAR AL-ANIS', NULL, '$2y$10$qOJMr4pIvd4ydnc1ShCSSuLNdM2eeDhk33hVX4nTy2Ew2S3g/ESri', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(170, '1000000169', 'muliana374@man.com', 'MULIANA', NULL, '$2y$10$6bye/rKPDwzdlkJWQxCQpubUyI2T7IZsbXQwc2GKwuXJkAk7qdy0S', 1, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(171, '1000000170', 'nisarahmadani56@man.com', 'NISA RAHMADANI', NULL, '$2y$10$8LU3yZEIg0/z41s14J9HCu5mR6UuBFzHpV8b89Y8mz6KT0yn4L5dW', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(172, '1000000171', 'noufaldimulia338@man.com', 'NOUFALDI MULIA', NULL, '$2y$10$BjWxCko8BcipOmrObf574OBAR5sjXTF8UaY7Iswd60OBjXkaMoYQi', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(173, '1000000172', 'rianrahmadani492@man.com', 'RIAN RAHMADANI', NULL, '$2y$10$pHaaL7hSBTUSmDHv1P99POhVSkFeBGOHdTzBdyUhCWOdqPcjUUMmO', 1, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(174, '1000000173', 'ridhobanyubening73@man.com', 'RIDHO BANYU BENING', NULL, '$2y$10$onKbXvKN.DhMKWE0NVoIxOP2nJOEc8q.QmYo2gZXWICaW3.hDmBrq', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(175, '1000000174', 'susanpebriola426@man.com', 'SUSAN PEBRIOLA', NULL, '$2y$10$RsliiKgiwWuCo5QdcIWx/.jg.aHibILIULgOXYAZV.7FXa6x/AmN6', 1, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(176, '1000000175', 'syahrulnizam721@man.com', 'SYAHRUL NIZAM', NULL, '$2y$10$8L0Fm8X2OE9X5.NzDGIvi.mcaGt10FTfHqVhAfDU5haHO2g3ZXVJq', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(177, '1000000176', 'tuahmiko740@man.com', 'TUAH MIKO', NULL, '$2y$10$8Kd83SWgOeM4SdmNw/k7n.vw716s.sOn3yhJesnuEWRTogQyYohyO', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(178, '1000000177', 'vebinahani702@man.com', 'VEBINA HANI', NULL, '$2y$10$HIxcxArVEkQ4Hdm/UUt/WucP54TRgalDh6LWoxKr4WBAGBYNcnDO.', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(179, '1000000178', 'zikriadha193@man.com', 'ZIKRI ADHA', NULL, '$2y$10$GAdOjI40dg7Iuco4qn7gYuEevG.DGnfkAguYMTpgapQfsfYBX8vXq', 1, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(180, '1000000179', 'ahmadmauridsinaga280@man.com', 'AHMAD MAURID SINAGA', NULL, '$2y$10$jFo436dBo7odEHS7kJQ9uO/7P4S6pwtdJhxEN1mRChkPHU.lwSYNq', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(181, '1000000180', 'ainunmagfirah770@man.com', 'AINUN MAGFIRAH', NULL, '$2y$10$xMZC1EiGxpMmr.ClcGXwj.fcJkbauk53qgzoHl/yQXJoBkWo5Lvsi', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(182, '1000000181', 'bahgie516@man.com', 'BAHGIE', NULL, '$2y$10$HeoPqD0KrzgEiv697TR0oOtMLTqkowKiHvAEVKbAZZ80kl1PM0n/u', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(183, '1000000182', 'fakrimahtuahmiko381@man.com', 'FAKRI MAHTUAH MIKO', NULL, '$2y$10$yV7skLFyRihvBSRPLlPPLOsEUTl5k6kshfs5mftmXHQEHNYwxNlHq', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(184, '1000000183', 'fitrymulyani350@man.com', 'FITRY MULYANI', NULL, '$2y$10$nutb6q31MgJcl2colGuFbO/lrdcStJTB6IZdDdtgdvgAbB0Vz0s/i', 1, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(185, '1000000184', 'hairuddahri433@man.com', 'HAIRUD DAHRI', NULL, '$2y$10$faeLFNXkWtDAd2FgjzXGl.4QYFiYvmSXSW4ly9UDswUWAPsMb8Z3q', 1, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(186, '1000000185', 'iqram713@man.com', 'IQRAM', NULL, '$2y$10$2mtaN1ycG2JNnt3qQsIp5ulqXpAse0VYxu4NK2U6sYebB24aQk3Lm', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599451, 1652599451, 0),
(187, '1000000186', 'kadriansyah462@man.com', 'KADRIANSYAH', NULL, '$2y$10$zYEZhImfmsRlrxsSZQ6fwODSVwNTDearqRfnKaeKKH.i3dKAJ5EdS', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(188, '1000000187', 'mnurassyfah608@man.com', 'M NUR ASSYFAH', NULL, '$2y$10$XOBzn62pGdpjP4BvRpDXReVDojeIImIirtBP1lBroiBMX.MKCiTUy', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(189, '1000000188', 'mariyana972@man.com', 'MARIYANA', NULL, '$2y$10$zXOisV9UXZGyaQUuzYoNAOcKyvITB7Hi9PrCMK/3MvjBkH80KGcQy', 1, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(190, '1000000189', 'maulana968@man.com', 'MAULANA', NULL, '$2y$10$JXitEQkfqFU8A3/BGbhCrOnFt65ybP3Ea2tEnwz2tlfVnl5rcq7fu', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(191, '1000000190', 'munawir296@man.com', 'MUNAWIR', NULL, '$2y$10$RlHGX3FTvelj/wRzLR1a1eUYqNVpMnDr9qo8pcWCoj8l6vAGCefS.', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(192, '1000000191', 'muzakarah735@man.com', 'MUZAKARAH', NULL, '$2y$10$2i1idzrfB4aHF6NsspsGdeBDekev2M1bVIiVSzwcokUMW8L8I/MZa', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(193, '1000000192', 'nurajabulfitriar472@man.com', 'NUR AJABUL FITRI AR', NULL, '$2y$10$1fRIYSZDJCVPrdZBPwAHMOYUKCcItEnNcAgG3GIrgubwl89/tEjZC', 1, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(194, '1000000193', 'olaafrianda743@man.com', 'OLA AFRIANDA', NULL, '$2y$10$XPqDKt4pSVDg42jAHK5DeuBmyKvn7ObZ7VLfn1AIBTTDSfL.scUoG', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(195, '1000000194', 'rahmadtakbira688@man.com', 'RAHMAD TAKBIRA', NULL, '$2y$10$hG.YsYiCKatrlH3xxO7LlOJu8eeqOHKNJNjwbn3EvAib5wSABGgWi', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(196, '1000000195', 'rozatulmeria597@man.com', 'ROZATUL MERIA', NULL, '$2y$10$yIVPEUH32er0dVx0ITNtye.MJ0PS6wjB6aECys4Sur9QsJpd5fDPq', 1, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(197, '1000000196', 'ruhdiakbar34@man.com', 'RUHDI AKBAR', NULL, '$2y$10$6.r6Myaa8LRuN5BdCEUE6Ov5vHmH.u80/LyzX70wiRtK4DnL80mxS', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(198, '1000000197', 'sahrimaulana269@man.com', 'SAHRI MAULANA', NULL, '$2y$10$JpYe.QfWtxODAvOwZ05voemYBJoib0Hv2Zyh2hb6G4z7jPvxGCsS.', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(199, '1000000198', 'yusranariga917@man.com', 'YUSRAN ARIGA', NULL, '$2y$10$zAuXo4QVK2DT.ObfN91jNeeYeYcWOxTlCxFsmhLRqImzNgtlmE3zi', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(200, '1000000199', 'zuhrisimerala379@man.com', 'ZUHRI SIMERALA', NULL, '$2y$10$Wt/Udwexr9T/rFx1TShPe.8XuXLIWnx5nnZLHwsRJPKTR5B9gUA1C', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(201, '1000000200', 'barika911@man.com', 'BARIKA', NULL, '$2y$10$vCWIQpGo76NKgW3mvyhEmeGojuiApJROuCQdv3yGfNtEDg4GQplOG', 1, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(202, '1000000201', 'aizalwafimf126@man.com', 'AIZ  ALWAFI MF', NULL, '$2y$10$LK4DmORnCh/xiUD/8fc.A.geh9K0UxYXIMCxAfAZKC1vY80GnFYsS', 2, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(203, '1000000202', 'almustaqim535@man.com', 'ALMUSTAQIM', NULL, '$2y$10$KikhCSVKajcqPW3HN4F9OOmzJqOF6iRBi7/iuGZzgGF1Xz3JrGJc2', 2, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(204, '1000000203', 'assakinahsiregar496@man.com', 'ASSAKINAH SIREGAR', NULL, '$2y$10$J8c1ToGIuif.HuQccX1kGuV5WEAWSZRPPE/FVJDAC67izezVMpaly', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(205, '1000000204', 'dinaauliaramadhani227@man.com', 'DINA AULIA RAMADHANI', NULL, '$2y$10$B/gKCxvGEik0.ZBwhauEBO9AK58TVhQMVLmqvsxwtwpnmkdBcI3I2', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(206, '1000000205', 'fadliwanzikra417@man.com', 'FADLI WAN ZIKRA', NULL, '$2y$10$FWydygB7Kt89.DcasqIaUOUJR.Uy0DXmFUeNgYgMkAZ04qxAOdf62', 2, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(207, '1000000206', 'firanisyafriyana979@man.com', 'FIRANI SYAFRIYANA', NULL, '$2y$10$vRkvMfJHLTqHyvhp9zxpv.jp6UdP0WVa7Mk13H5lzHydSJgq7YrB6', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599452, 1652599452, 0),
(208, '1000000207', 'hadrinawati563@man.com', 'HADRINAWATI', NULL, '$2y$10$9ZcPdDnioLPSRhXhbIrol.ADYwQvEGYjf4UgMuuDXSCRzu4ZgB2Ay', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(209, '1000000208', 'himmahadzkiya33@man.com', 'HIMMAH ADZKIYA', NULL, '$2y$10$1ymlJDfmOfrcYB/SFm997.jN3qKbPbHVbvOaPyEMPQhNIciN6FF5u', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(210, '1000000209', 'maitsanuruls398@man.com', 'MAITSA NURUL S', NULL, '$2y$10$7T0xHn7QGqkoIhsdSNBsoOQk/y.DIN65Sh11iM5Zr32/1ubmPscCy', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(211, '1000000210', 'naafilahridhaanggraini785@man.com', 'NAAFILAH RIDHA ANGGRAINI', NULL, '$2y$10$Jcmh2JLkzgh8YovhIaGfT.IfCWNGHWckTVaJAOuz.EwowwJ7V4rey', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(212, '1000000211', 'rendyhidayatullah90@man.com', 'RENDY HIDAYATULLAH', NULL, '$2y$10$2pWb4mbpoF7BF5v3HkVEMeCGlo3AQBZtTHcEg55Wz333Yi1qnPpLa', 2, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(213, '1000000212', 'nabilakinanti728@man.com', 'NABILA KINANTI', NULL, '$2y$10$h58ONwZA8hAXukciR9oAvuwDRxRjj7Ul/W9uwYgrRiszL3hLGzlH.', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(214, '1000000213', 'nabilapermai314@man.com', 'NABILA PERMAI', NULL, '$2y$10$W939O8MHaNeBIROOlPn7suhUKO//qLy/5GvpYmj1KTmkGBduKq4Om', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(215, '1000000214', 'nabila30@man.com', 'NABILA  ', NULL, '$2y$10$pviGFZJHBCizQvMyFKBTZ.FoE4mw91HCoTgvsqn6ZNjPMDf/IELWS', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(216, '1000000215', 'nurmala699@man.com', 'NURMALA', NULL, '$2y$10$hUdWriCjJbBG7MTJKF4lKer3YAYWIR0aJLKN5S9oWiXxszb8v1vdq', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(217, '1000000216', 'naylafarizahusna215@man.com', 'NAYLA FARIZA HUSNA', NULL, '$2y$10$9Qjq2hjg/tGbBDNhgMGES.t5z6FNWJ2LYiuRM/nDeqyJU3k6uNave', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(218, '1000000217', 'ririyunita545@man.com', 'RIRI YUNITA', NULL, '$2y$10$G6LNJL86kbbw2osKgHBYwOcYeQyRqNZtRiJH0m.bNa1FRto29jjn2', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(219, '1000000218', 'sayyidatulkhusnulkhotimah644@man.com', 'SAYYIDATUL KHUSNUL KHOTIMAH', NULL, '$2y$10$MlxMPtbjxXCwX5UhyXrB6uHGhTbD5kvq5PizZo6oX0XoRBfY9lRNa', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(220, '1000000219', 'syifasalsabila527@man.com', 'SYIFA SALSABILA', NULL, '$2y$10$h.enNRDqlsuAc26g5hvmruaNR8J4jx8trczRCI1iXghZ4OssS6ngq', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(221, '1000000220', 'ulfasalsabila82@man.com', 'ULFA SALSABILA', NULL, '$2y$10$3qIbXEsZg5AcPKpFJ1dNpukzM0DtHxFQLPbMsv3tTrRHoCqEi5F3.', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(222, '1000000221', 'umitatamara143@man.com', 'UMITA TAMARA', NULL, '$2y$10$xfJIdSbkay9ZBJPaMQ5uium1.DrllUMHJHeYlL6RYmm6NeFBzTXWm', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(223, '1000000222', 'yolandarahmadani584@man.com', 'YOLANDA RAHMADANI', NULL, '$2y$10$TWt6ZpXgMfIDj3LCsO90S.W76/R5mGr5BAx948BjOvxHkxeag26Hi', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(224, '1000000223', 'zahratululyas347@man.com', 'ZAHRATUL ULYA S', NULL, '$2y$10$EOXLUFFS21HsLK7EfwCkoOQ9S49My0k2Sl.xWFwvxIpNC8UYurNBK', 2, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(225, '1000000224', 'agihilham333@man.com', 'AGIH ILHAM', NULL, '$2y$10$7SbVUG3cS6z1uPTqN71GLe6aBN/P3FPrYMkoKU1RmkWd32zKr/jnq', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(226, '1000000225', 'aisyfahrozi483@man.com', 'AISY FAHROZI', NULL, '$2y$10$K6gGl0pBeGE/.t1PvWqsk.PxpOHq5vi7qWu6m3tBzfuH07WyiWdA2', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(227, '1000000226', 'angguncytrarozha221@man.com', 'ANGGUN CYTRA ROZHA', NULL, '$2y$10$gkOd0ZXSVcW3ANpO8wncw..HuzgYDYc4pSB4omPr3wVgyPrbriPeG', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(228, '1000000227', 'aryana876@man.com', 'ARYANA', NULL, '$2y$10$s5OYU/GNtRcG88q.ZaNI8.e5wHbpMqHk/su/wV1a0O5k6tiTEIvS6', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(229, '1000000228', 'awalludinnovriandim71@man.com', 'AWALLUDIN NOVRIANDI M', NULL, '$2y$10$FcUc32ddNPM2fPoDbX.XdeC/p2cMAlI3PlwFxMeKX2RIDW19PUBbC', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599453, 1652599453, 0),
(230, '1000000229', 'diana915@man.com', 'DIANA', NULL, '$2y$10$pwxBIIjb6gQ6bVRJM4de/uLm62x9ORu4QM.fR6Ey1INteE/SRNtHe', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(231, '1000000230', 'fanilidiafutri849@man.com', 'FANI LIDIA FUTRI', NULL, '$2y$10$fgZd9xpHEE1YluFl3IlNuu/RbSgYH8/VWkBVXPNhuc/jtNnRW6eM.', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(232, '1000000231', 'ghufranabal784@man.com', 'GHUFRAN ABAL', NULL, '$2y$10$g6roZP9fG6bFepNc9qI0n.XstgQGHEF.CFsDQ9HF3I5oDHZRy5nq.', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(233, '1000000232', 'hafidzalfarizi249@man.com', 'HAFIDZ  ALFARIZI', NULL, '$2y$10$zf40trLAJl4udU8etioWiuwxwhonlGSggInoQoxbTsurXys8hk.ea', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(234, '1000000233', 'hafidzahafifaziz488@man.com', 'HAFIDZA HAFIF AZIZ', NULL, '$2y$10$8fjJvMzCjLOOp/YgUC0ZbeZtnJW7rm635kNWt8jymCq2Wyox1oYeq', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(235, '1000000234', 'ilhamelsandi213@man.com', 'ILHAM ELSANDI', NULL, '$2y$10$yl.yz.tU1lrmPyKnJ0t7HuwAtz/4IbezT0c.dqQ/cqhLe094tCZBy', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(236, '1000000235', 'inesalvanirenggali239@man.com', 'INE SALVANI RENGGALI ', NULL, '$2y$10$J04ShwuGYT8V0U7LNbDSMehaDzxPSBSBdbOTECmL3eHTH/VjGOAxu', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(237, '1000000236', 'iwanrezeki940@man.com', 'IWAN REZEKI', NULL, '$2y$10$YN3DaTqFDHVuNiraQXKQKORuOc/ufV/twWPhAeHaFBHQKwy0HnsB6', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(238, '1000000237', 'junaidi958@man.com', 'JUNAIDI', NULL, '$2y$10$maTr2Z7VcQd98QXoJhk8AOtfSh6l6G8JXflpHE7DtqXBCXCE95HwW', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(239, '1000000238', 'kamisa946@man.com', 'KAMISA', NULL, '$2y$10$AJITFZmKmWRnvDyM8rOTg.p4.U9JiKTrK3G1N71LvTTXu8VaMVJ6W', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(240, '1000000239', 'najwasalsabilalaili955@man.com', 'NAJWA SALSABILA LAILI', NULL, '$2y$10$LB1WP8eJk2AHv6BeY9y1vuoX4OBjnY84T3M0JXx1AoOYg0svxaInG', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(241, '1000000240', 'novyasalisca791@man.com', 'NOVYA SALISCA', NULL, '$2y$10$HAijLBn2Q6Hdjs3U8fFojerytraFAV.YC7yIXmiOY7H/992vZFI96', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(242, '1000000241', 'radiansyah866@man.com', 'RADIANSYAH', NULL, '$2y$10$RulUBnU2tv7RukV3CYaYVeK4f2aQB9mXv3rPY3UZjmX05yU83LKpC', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(243, '1000000242', 'rahmitafitri397@man.com', 'RAHMITA FITRI', NULL, '$2y$10$2vR.NIxhysshXrEFsPqUf.CLvLycJeoevU3/TDf1tbzpN8rzG8EpO', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(244, '1000000243', 'rajagilang354@man.com', 'RAJA GILANG', NULL, '$2y$10$MHj5k2QxttzbtH7Qtu/fSecfWDGkQrwE56kftwUmMso3ruQDnHkne', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(245, '1000000244', 'rasikadewis495@man.com', 'RASIKA DEWI S', NULL, '$2y$10$55mIQFlaAiW5fIHu4zMW5e/ggFE3znbvmEAeGejEvVjvmIIVqDM2y', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(246, '1000000245', 'renisimahbengi67@man.com', 'RENI SIMAHBENGI', NULL, '$2y$10$ed0xdOSGO961QJimSqqDrukKdcd4s2ZpP/DYr4srWnBDPXZ/6A11.', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(247, '1000000246', 'renomihaldiko656@man.com', 'RENO MIHALDIKO', NULL, '$2y$10$RZ/BIl/ieXfpBfcABGmBROvNJTfDC.bvaHgXfGx28n56L5Ta.E8Mq', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(248, '1000000247', 'rifkisetiawan556@man.com', 'RIFKI SETIAWAN', NULL, '$2y$10$wlpEsbTHzM5TVsh6apjTAeZrnBUZQqk5rmH4MsxGwymtwNSQToDCW', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(249, '1000000248', 'rimasimehate216@man.com', 'RIMA SIMEHATE', NULL, '$2y$10$cplEtZfmr6YV60XWPDwSy.rEfEEJafKqH.pPRugvD.l9mz1QByy3a', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(250, '1000000249', 'rizahidayah775@man.com', 'RIZA HIDAYAH', NULL, '$2y$10$p4Ofxn9RFS4SFJnTvlO/Qu8pXRoKhr0uEJ/iBudeSFlP7WHr36bwy', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(251, '1000000250', 'rizqiiwanfajri318@man.com', 'RIZQI IWAN FAJRI', NULL, '$2y$10$KS0enW3CD0.F3XSiTwb49epViAI7YMW0vrAGiyygePeCqXeHtjg62', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599454, 1652599454, 0),
(252, '1000000251', 'ruhdini478@man.com', 'RUHDINI', NULL, '$2y$10$7LK3rn.bdGKKDyMuIbme8.Z9N/JgibtTTY2SyHXulSVcr.dvM0CNu', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(253, '1000000252', 'sahriramadhan820@man.com', 'SAHRI RAMADHAN', NULL, '$2y$10$GIBSwIm.crB3e4ilA/O8auGhwUBz8OYDx4bxve3JW9lvVkMnL5hmW', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(254, '1000000253', 'saidnibrasalhabsyi688@man.com', 'SAID NIBRAS ALHABSYI', NULL, '$2y$10$5sq6pfAMPJRWIhgOAocwNuJnrPsahior3jrRICnsdMBTEvz1WrYQa', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(255, '1000000254', 'silfaniazrimaisa252@man.com', 'SILFANI AZRI MAISA', NULL, '$2y$10$NsDHT8JpjiiqiKLBkcI3MeKsrqmfP4z2Rto4gv3/RedQ9PEReyvnK', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0);
INSERT INTO `students` (`id`, `nisn`, `email`, `name`, `image`, `password`, `classId`, `roomId`, `gender`, `ipAddress`, `about`, `dob`, `status`, `privilegeId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(256, '1000000255', 'silfinaazrimaisa835@man.com', 'SILFINA AZRI MAISA', NULL, '$2y$10$ZOacb/sUrQ3VRv5YcXNqyuXH1Pk3RVnOcZ33UvyIDF5/jWjBRHPFO', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(257, '1000000256', 'syahrawidia616@man.com', 'SYAHRA WIDIA', NULL, '$2y$10$s3LA6/aWKaCPXpFtAe0TJuCcwxE6vjiLvYZP566cUDG2f44PGe9H6', 2, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(258, '1000000257', 'semalisyukran818@man.com', 'SEMALI SYUKRAN', NULL, '$2y$10$ukBRkV/7Pe4gX9HS7kNGK.PoPqpM2orA4s0T.CMye7MTklIMZm/rK', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(259, '1000000258', 'rikiapriyandi978@man.com', 'RIKI APRIYANDI', NULL, '$2y$10$Eq9ZO9VBEfLXqUUZv0hd5.CaCvQP2NeGqzyCyULVWkwU2BsHBKMgS', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(260, '1000000259', 'farhankhairi834@man.com', 'FARHAN KHAIRI', NULL, '$2y$10$kSnbjxafh69ETwhRrU0C6e.XXjj.bgxHY2ZmQ1qsVdQVGwSWsR8oW', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(261, '1000000260', 'almuttaqin400@man.com', 'AL MUTTAQIN', NULL, '$2y$10$HuhHKtWYBG5Nop2o8G6QG.I6zq8fMcBN/Y1tJoITcTxLTRmhLmsVW', 2, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(262, '1000000261', 'aidilfitra31@man.com', 'AIDIL FITRA', NULL, '$2y$10$fqgi8g0iozUdfQ3oC/KbLefzbqjIOobpOYLqk7eVGiSZKlW8.KXMa', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(263, '1000000262', 'alyasyakira227@man.com', 'ALYA SYAKIRA', NULL, '$2y$10$UNEdLf0TrZrMhB5Clu5HhOxK7wFQ6KGogfLO.KADasXPHtZHXV8hy', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(264, '1000000263', 'andriantawarnate681@man.com', 'ANDRIAN TAWAR NATE', NULL, '$2y$10$/7pKHGHHYRBrWMJdhy7tSeQvUcbfv33RVyjcEqHBaHZkrckg33NaO', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(265, '1000000264', 'asyrafifuadipratama278@man.com', 'ASYRAFI FUADI PRATAMA', NULL, '$2y$10$t9muvf8PJj7S0IxE.yHZk.IG73OMn4p7DlMvR3uq7vPGgQm/1LzAe', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(266, '1000000265', 'awalulzikri173@man.com', 'AWALUL ZIKRI', NULL, '$2y$10$iQdY4JKRCOsZPWe67.NnCey7PhkjD86FGoH0dn797qqNH1aJD/EKC', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(267, '1000000266', 'ayufitri637@man.com', 'AYU FITRI', NULL, '$2y$10$6dlaQUMnryzHOLJW.RJqVeHKvxOTVbmscnMr0/xxLalr6cNjNOCpy', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(268, '1000000267', 'bilqistinaarafah930@man.com', 'BILQISTINA ARAFAH', NULL, '$2y$10$pH4sD68MIegenL4c6SFQiecuSKkUg5vgePze81hyqlE63.LYR1MIq', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(269, '1000000268', 'darimatulisda397@man.com', 'DARIMATUL ISDA', NULL, '$2y$10$QUn0O2qZCDtS2bUvly9MiO8r.A2qIMWb21vd63nnQ15.CQEPpHu2O', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(270, '1000000269', 'diyasalsabila434@man.com', 'DIYA SALSABILA', NULL, '$2y$10$uRm/8NAg.iAR0zbnFQfdeeKy6jHMLTLFy2V7k3laak7yYGaVK0z5W', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(271, '1000000270', 'elsawahyuni748@man.com', 'ELSA WAHYUNI', NULL, '$2y$10$eUHvZ05ApJTAvm9P6U1xROp6Abd.iVal/Mc5E9ruTXtGYJd8A0pTW', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(272, '1000000271', 'ernafebiola441@man.com', 'ERNA FEBIOLA', NULL, '$2y$10$qptbySqA2.LeFYAa38Az5eoHKT72UnluPJ6Z6HqQbPcbjW8j4AdQS', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599455, 1652599455, 0),
(273, '1000000272', 'fariswasim148@man.com', 'FARIS WASIM', NULL, '$2y$10$3B9PjzNV8jVFZT26wcoJm.MSEoppLt.xWA0jOXXoI4IznBrpAjjcC', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(274, '1000000273', 'fatwarezeki134@man.com', 'FATWA REZEKI', NULL, '$2y$10$6DtVR4eCcqT8QJSnVtaXJONJFnz49isZoKVw0S2QykuwhsthJfyIe', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(275, '1000000274', 'hafizsariyandi747@man.com', 'HAFIZ SARI YANDI', NULL, '$2y$10$iM4.Ozm1xYfao0OvDGXDKeI.5FX1QaKJD6T3SgpCLGAc9wBUWCuYK', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(276, '1000000275', 'mharitsalsyifa311@man.com', 'M HARITS AL SYIFA', NULL, '$2y$10$nbktCNzUbDtymISqXbWPBuZ9DsjidJCseWidtvz5jq9lvzUvx5fXS', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(277, '1000000276', 'mahbengi876@man.com', 'MAH BENGI', NULL, '$2y$10$FRr4O7DjQaV6EwbxKWrp9un77xHXwQK15g5Y3DK5d4Qc4iRlUWDZy', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(278, '1000000277', 'maysarahfadila200@man.com', 'MAY SARAH FADILA', NULL, '$2y$10$JimdN5NLgd/VFfO9qj1sCeJBDmzwivN/zj9JQYUX6kdaBuq5wBXGm', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(279, '1000000278', 'miftahulhadi599@man.com', 'MIFTAHUL HADI', NULL, '$2y$10$pAqB1LLNyPWftOdw/bGLsuzMGj42PBcK29NcSevzy19swwq9mSrCK', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(280, '1000000279', 'misriadi769@man.com', 'MISRIADI', NULL, '$2y$10$9GPgxctr1kuAdDSGC8sQ3emOYSamF6CrwQYGs2oPw95FW/AiAsuTm', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(281, '1000000280', 'najhan333@man.com', 'NAJHAN', NULL, '$2y$10$IBGaGDE3iNxEyukX2VdI4ut97baLLJixjz3FUOP395nSTQtjCbGVi', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(282, '1000000281', 'nurulsinta223@man.com', 'NURUL SINTA', NULL, '$2y$10$VZ7Vn3MoDGohinezK6MUP.3zVtoRU.mK/ZFhDwrMGoo449l741u6a', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(283, '1000000282', 'rahmatsafriaji594@man.com', 'RAHMAT SAFRIAJI', NULL, '$2y$10$SqCGabIKq6NfH7dRs24/begB1vuahsFwU8nQep0SUmPrTlNVoLjSK', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(284, '1000000283', 'ranggaterimejaya971@man.com', 'RANGGA TERIMEJAYA', NULL, '$2y$10$coDaw6Zl31mB.njcoZWZA.9/if95royFC.lcJhH0xYrL0wBJPLt.6', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(285, '1000000284', 'rayyankemala759@man.com', 'RAYYAN KEMALA', NULL, '$2y$10$m/7F1JyuQvaLIPaaZsER5.zhAd5oP2j1Hd5.oB6uTbCul4wR5MhUe', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(286, '1000000285', 'rimanafisa6@man.com', 'RIMA NAFISA', NULL, '$2y$10$jtgc..aHIYeddBPdqeR1S.nix8YhrvAtvnv0Ufs8qvhOQD.1AH9ZG', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(287, '1000000286', 'rizkyfakhrulrozi604@man.com', 'RIZKY FAKHRUL ROZI', NULL, '$2y$10$hMQqxVVp3JQEskMYPTqokOp1biMaChReYnpU.5ML98u4LKI5KtK4G', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(288, '1000000287', 'ruhmi350@man.com', 'RUHMI', NULL, '$2y$10$TlkpSPXiMRUHVrAzpOtYgex0itMyS6uWVWcts/0xoNteuYj4c0D2a', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(289, '1000000288', 'sarirahmadaini712@man.com', 'SARI RAHMADAINI', NULL, '$2y$10$WrygMoXda/GPE4z0Op0XCO6/iSIWlC8u8Ua80Q0bLaHst5I2yQrSm', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(290, '1000000289', 'sarina374@man.com', 'SARINA', NULL, '$2y$10$/rU5oGEJGgi9PDfp57zjbOryuFM5Lw9qKf5FHJUytIW1M9CxuGafe', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(291, '1000000290', 'siskaramadhani127@man.com', 'SISKA RAMADHANI', NULL, '$2y$10$BW7e/wiMBTyKcd4OuEkuWO5wEcbBsUUNGg8Boea54ZUPeu6EfyMWy', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(292, '1000000291', 'syafrizal275@man.com', 'SYAFRIZAL', NULL, '$2y$10$RAXm8U9KdF5azgoXDa3pMOYurGGxT3I5KeWzKkoee3NZa9N/ch/ia', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(293, '1000000292', 'waliya840@man.com', 'WALIYA', NULL, '$2y$10$SRd03hR/htiygC0YJNxhEus7pykxLGXakCZll57IBliguWmAjhMVy', 2, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(294, '1000000293', 'yulianaamara955@man.com', 'YULIANA AMARA', NULL, '$2y$10$HGLedcA2CommkN0FBpR7/e5FLLAetUWfkr/F0CntXfqJUFW25WI1e', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599456, 1652599456, 0),
(295, '1000000294', 'yulianasimahbengi803@man.com', 'YULIANA SIMAHBENGI', NULL, '$2y$10$MTiT8WLvlI1TcAZtypAR9uA1LO66RY5En14yxhRNNEH2UzcfIhrpa', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(296, '1000000295', 'waliyatunma\'wa93@man.com', 'WALIYATUN MA\'WA', NULL, '$2y$10$JstgymE7FthsvsXXfALpQuF19D6tmQtl.32B/Lu9KT2p9WQYww8Z.', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(297, '1000000296', 'najeedaemirachibro899@man.com', 'NAJEEDA EMIRA CHIBRO', NULL, '$2y$10$/F/Id4acvtGHCCi0//ZGU.a7fglqqjaP.jZmKZTPYom1gtLRpvMMC', 2, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(298, '1000000297', 'afrizalmahara554@man.com', 'AFRIZAL MAHARA', NULL, '$2y$10$zdVEVvvDNoBOv/iKv8/i9uWCZQG4.RLLuvKWODekieZ3uu4m/B276', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(299, '1000000298', 'agneswahyuningsih953@man.com', 'AGNES WAHYU NINGSIH', NULL, '$2y$10$GZ0nVTrudx8RdizIod2qbecUetE8NyDlx9H6iO6DLDLa5Fmjfyuva', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(300, '1000000299', 'alfitramahendra855@man.com', 'ALFITRA MAHENDRA', NULL, '$2y$10$grSsSWRY27TWtYUxPv4QNuSmjcg9O7qFKAcJBixRIQuNaOL6VxA4e', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(301, '1000000300', 'andrekurniawan506@man.com', 'ANDRE KURNIAWAN', NULL, '$2y$10$utk3KhFwz/E0fUo0Trs54.Z5MuGaT0.qhQVCkZL/Q.0GVSjYJFSU2', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(302, '1000000301', 'anggunpurnama415@man.com', 'ANGGUN PURNAMA', NULL, '$2y$10$038M/mvO25ebJOuU2OnaGer0i.mEJ9bc6nI6SRIhk11aPSQmDi3KW', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(303, '1000000302', 'dheaafifah436@man.com', 'DHEA AFIFAH', NULL, '$2y$10$5YeQydsU0U6dCma/EbtwjOGfHymsoTMOF1TjD29w.8LT01UjEPOOC', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(304, '1000000303', 'dwiauva17@man.com', 'DWI AUVA', NULL, '$2y$10$u7nAT3hGNGKoWYoI.5g51.pZiYZDiIpqpUNIiYJzZMj5AjnCw0Ah.', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(305, '1000000304', 'erlina370@man.com', 'ERLINA', NULL, '$2y$10$YKGXVmau7MtYR5dITuTi8ux6k0HiLQAgIVh4ncFMSMdVrIBbTdKzW', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(306, '1000000305', 'faizulazka418@man.com', 'FAIZUL AZKA', NULL, '$2y$10$SXBgG6z4BMsyLcP87rvPaeOqjAYIxBvzk6vc95qILUIYy2vXLGUQ2', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(307, '1000000306', 'fathinjihan342@man.com', 'FATHIN JIHAN', NULL, '$2y$10$tNdFxM3FI3iBPzGBhuaIYuqwM9wm34IFGeL5k8nPKLbZAcv4IFjNS', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(308, '1000000307', 'gemasatriaperdana485@man.com', 'GEMA SATRIA PERDANA', NULL, '$2y$10$7m9pHuhCQVOrr2Ly9/m/Ae7vz5IG.fT6Akyw.Bdq8GuSW07ATyG5K', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(309, '1000000308', 'hamaliyufatar207@man.com', 'HAMALI YUFATAR', NULL, '$2y$10$Utx0.iCldIcoC6GUPIUQ6u5xJuJdMRYg4/fgBDPEVuDp6i/.rNfEi', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(310, '1000000309', 'irsaraudhatuljannah142@man.com', 'IRSA RAUDHATUL JANNAH', NULL, '$2y$10$UMY4KNAlAScja2REhXJbreMeRjKSuuTCjp9ln/24mqFq1lICGTK5O', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(311, '1000000310', 'izasdanuprasetya146@man.com', 'IZAS DANU PRASETYA', NULL, '$2y$10$4wgBlM9QNWfLLTiYrhedl.sp6DeSwdtxZbE5TWv6Aw3VL1DojQhOK', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(312, '1000000311', 'khairulwahyudi180@man.com', 'KHAIRUL WAHYUDI', NULL, '$2y$10$n470S2jImpEjA/aTBwZIAu0mNi/8yZYwWruXYuyp.Eh6ZOeuTaGhe', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(313, '1000000312', 'lisaananda220@man.com', 'LISA ANANDA', NULL, '$2y$10$bGRGLFrrZP5aqB2TAdy9A.OOQK.UPJuUYtBXdCupd3r.9Tc8pL2A6', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(314, '1000000313', 'maharasetiansyah118@man.com', 'MAHARA SETIANSYAH', NULL, '$2y$10$FLTLOh.MLaZzCV4EIpPAvOqBbzNQ6gryvH8Y1oIZcbuPLgNae/14S', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(315, '1000000314', 'mahyudi519@man.com', 'MAHYUDI', NULL, '$2y$10$sTByEom/OSaa4Hi7ULWhNe5iIhntNLnRq6l/DL81ZiZm/l3XU9t06', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599457, 1652599457, 0),
(316, '1000000315', 'miranggatuahmiko133@man.com', 'MIRANGGA TUAHMIKO', NULL, '$2y$10$leCVm6afOquQxqQGGMiXnuv4w2JU0F/RvngYKmw5Jps7b3o3SCZY.', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(317, '1000000316', 'muamarcardafi8@man.com', 'MUAMAR CARDAFI', NULL, '$2y$10$ailTrbctQqusH1eQ3lVvCOTVYQ927cy4ArN1XoG7VpaQ9.7LIU.IW', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(318, '1000000317', 'muhammadyusri435@man.com', 'MUHAMMAD YUSRI', NULL, '$2y$10$5t8rgDnO8bBriC4ejhc6D.mfHPUAFpy.GVEqsYiZrUv6p4cwGilGK', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(319, '1000000318', 'muliaandiki104@man.com', 'MULIA ANDIKI', NULL, '$2y$10$jvMoli1X71qF2UD5zda4bOhv0520JRTgD5LduKkr2QG9XCWDtLDJK', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(320, '1000000319', 'muliaardi782@man.com', 'MULIA ARDI', NULL, '$2y$10$Z10fpA9/GKkC9rUCwpT7Bu11sXVq6Z9RqFtoLgD2jkgIMkLe/snLi', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(321, '1000000320', 'nabila910@man.com', 'NABILA ', NULL, '$2y$10$XyeHu9PiWB7O/zrzPEJRgeqoUg.kz0UbYdMS9xkhGHn1YMczbYu76', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(322, '1000000321', 'najarudin381@man.com', 'NAJARUDIN', NULL, '$2y$10$8CxPIlYcN3I9ZVtqVmeE5uO0rKklJ2iyt4iW5pQFYIAx8JQYwOScW', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(323, '1000000322', 'nathasyadindasaura448@man.com', 'NATHASYA DINDA SAURA', NULL, '$2y$10$iilpZpP41C9rSae7j74Xlu4MrW/x7OMlArgeFAY8Eci7win99PKfq', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(324, '1000000323', 'noviardana335@man.com', 'NOVI ARDANA', NULL, '$2y$10$yEZKWUhUf6jSTbq6qoL4wOUGCFI.uZOMr5opzUVjE74ADYAMrPYnO', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(325, '1000000324', 'piradayani561@man.com', 'PIRA DAYANI', NULL, '$2y$10$gSQ7eUBFtAtwT6Zig1k8jezOtpMK3SwqzxzWUa1Fh..GQMG/Mw0B2', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(326, '1000000325', 'prastio140@man.com', 'PRASTIO', NULL, '$2y$10$/F2xQtc0.4T1ledW5ZW63OWqe0pfJds/sDTPLNw.RimsU1MgWrD0O', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(327, '1000000326', 'prisnaulanagustina844@man.com', 'PRISNA ULAN AGUSTINA', NULL, '$2y$10$7hZ7z/UNyMSQOnxduzqxlel0KLSe45zm9ixiKFtKxERbvAd4GpVIe', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(328, '1000000327', 'raihanputri688@man.com', 'RAIHAN PUTRI', NULL, '$2y$10$5j0nHzHgW4416sYi4J5xWOAkzyFxGUAfPYxNMTGK6z.wynPSpIDNe', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(329, '1000000328', 'ramayana389@man.com', 'RAMAYANA', NULL, '$2y$10$3clNrlrwZ5T3.uM8IpR9SeySbFYYtjJVLPEw9bzJGW.PoihP.JMve', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(330, '1000000329', 'rayyuni817@man.com', 'RAYYUNI', NULL, '$2y$10$pyTy5NsiALXWiv4MJl9sKuNQP.uuGaChkETFdKG1tZbQRHButYZ5K', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(331, '1000000330', 'sinerulen11@man.com', 'SINER ULEN', NULL, '$2y$10$R8A375WlTEmY2.Vb31pB..u80TO22xVOAdXqJ1TTK58yVjWP1p0Zi', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(332, '1000000331', 'tarimahara1000@man.com', 'TARI MAHARA', NULL, '$2y$10$aq0KWdsVwtZFVqLZ.mryMe.kubYrph1AUarD603VwlO1Ut/0tnfMe', 2, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(333, '1000000332', 'fakhrurraziq528@man.com', 'FAKHRUR RAZIQ', NULL, '$2y$10$om1rxGXuWzuWuY4WNViefe5dbcv5x.27ZmcvukY5kPpfOAR/UHwgG', 2, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(334, '1000000333', 'aqilahhilmi262@man.com', 'AQILAH HILMI', NULL, '$2y$10$DqCl1Qp380pslYHtnF0Pfeg1hA5DKDiTycim5vyM7UZP6dpbum5Ti', 2, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(335, '1000000334', 'beruindah199@man.com', 'BERU INDAH', NULL, '$2y$10$kwQ0aJNzF7AceLFfqjzn5ualmfWOPXGyBUo48Twgf6sWxkyK0VY96', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(336, '1000000335', 'cindyannisaramadaninst518@man.com', 'CINDY ANNISA RAMADANI NST', NULL, '$2y$10$LE8KsxuHcvHfqey5XTRQm.boULXMR6YquJd5VkvDaEyfkt4KzLkIi', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(337, '1000000336', 'haspilafitri961@man.com', 'HASPILA FITRI', NULL, '$2y$10$PrPtfYEqKbacPaeH6yQOQubeWUZVRx5l8QVc4KwLGkRHkEdoJ.E.u', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599458, 1652599458, 0),
(338, '1000000337', 'idanurfadhilah796@man.com', 'IDANUR FADHILAH', NULL, '$2y$10$wcoSXfz5uknLqSf8Kp7A1OExKE7jxldaMPMlHHe2yfvvEnmSFTyGi', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(339, '1000000338', 'intannovitasari564@man.com', 'INTAN NOVITA SARI', NULL, '$2y$10$kx3mxhyatw7u2IkkJMCd5.wmsazi7NkT89fhpldup86xgJpV12lo6', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(340, '1000000339', 'jarnidasulisna351@man.com', 'JARNIDA SULISNA', NULL, '$2y$10$00bR2M0zDyr31mAG53yopeEJrm1KFxuZGlHK3cm19f9JOdhg5Qf1u', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(341, '1000000340', 'khairulbasri736@man.com', 'KHAIRUL BASRI', NULL, '$2y$10$XC7SRushFkAklp66rRZWW.GxWvEB4/qqeNEuHkBPXbZo0qW0dUP76', 2, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(342, '1000000341', 'khairultaqwa408@man.com', 'KHAIRUL TAQWA', NULL, '$2y$10$AOwZv/cqRW62kX/7Er.Gle3/41geNQjhyuy7QKfMKT1uCqutCML6S', 2, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(343, '1000000342', 'lularahmadanizulda564@man.com', 'LULA RAHMADANI ZULDA', NULL, '$2y$10$1IV7P.x1uyPY0doDtThEROZx1xT5BK6yKd.ww.SitQQvMlWdsBHK2', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(344, '1000000343', 'najariashaofa531@man.com', 'NAJARIA SHAOFA', NULL, '$2y$10$AGpz0H.IknLWilMENnksru1yT9cbXXKITHj8N27iFYazMuIiJs7Bu', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(345, '1000000344', 'rahmatan485@man.com', 'RAHMATAN', NULL, '$2y$10$N2CUElElKuybjf.Ilv3v0Oa0RtKr1IG2xA7aNeRfxbrg7sl75CQ2C', 2, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(346, '1000000345', 'sariani232@man.com', 'SARIANI', NULL, '$2y$10$AERMO77Zz7rLs40NNP2/JuKgbhRO7t8DnFl7.6NYJRd6wrVWWBs2e', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(347, '1000000346', 'syauqialfaiz738@man.com', 'SYAUQI ALFAIZ', NULL, '$2y$10$jLkJWwpg8iF/MNM9Z0tb7.4vt.X1yplgRuGe0pjD0jVh6QAudoceC', 2, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(348, '1000000347', 'weinfatha601@man.com', 'WEIN FATHA', NULL, '$2y$10$W3TkLe6DQEkevmGXaXNHp.Jtb/GV8Yis1.1EhwLQL0olRPjVEjTf6', 2, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(349, '1000000348', 'wulanaidafitri586@man.com', 'WULAN AIDA FITRI', NULL, '$2y$10$eI/9JjQ3PpdZMCluNPo5LOIxLzJDIoC.nE.YSeMh9vHuKybtw74eS', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(350, '1000000349', 'zharifahmahlida167@man.com', 'ZHARIFAH MAHLIDA', NULL, '$2y$10$BVK2Nq4CL5SBIUwvOnIJW.Urd.zQaXm52Eq2lvHWK/kEL/k0kqRmm', 2, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(351, '1000000350', 'zidanbayakku228@man.com', 'ZIDAN BAYAKKU', NULL, '$2y$10$mtQODU/F3hjp/oGNpqiTtetbgErgbgxvX/xTiL9lBch/RduHMJ73y', 2, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(352, '1000000351', 'ahirasaqban144@man.com', 'AHIRA SAQBAN', NULL, '$2y$10$D2Oh6zBhwIphwstEcw4kf.lcU6989d4Qj4Wjd9syktGR5RF9edyBi', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(353, '1000000352', 'aisyahnurulrizky232@man.com', 'AISYAH NURUL RIZKY', NULL, '$2y$10$n4RhybDurRSzXKLSmV0xbuPHdrFaH.k1WtMSWSyPV3v2qwhEY7PoO', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(354, '1000000353', 'alpiandiramadhan541@man.com', 'ALPIANDI RAMADHAN', NULL, '$2y$10$NAgkgaP7QyLFRJOGE.SNNuIBNDavqJ4ufHDbElyyNhuDhlPibD616', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(355, '1000000354', 'ariyandicibro762@man.com', 'ARI YANDI CIBRO', NULL, '$2y$10$JlxbZ390W2/Jf8N.aarVMesTo/r9pAJ0sesivOGhOMxPSvC7gn//O', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(356, '1000000355', 'dinamaulidya812@man.com', 'DINA MAULIDYA', NULL, '$2y$10$879tmEWD6IupsN11psMTvuNGSUQdgcFaFeM6lsT4lyY94IpCqL/nW', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(357, '1000000356', 'hamdanfauzi168@man.com', 'HAMDAN FAUZI', NULL, '$2y$10$S.2xpShTkWAiPPGwNAlPgeJdJZudT0Af7S.GvY46Piz/zpTQklleK', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(358, '1000000357', 'helmifarida864@man.com', 'HELMI FARIDA', NULL, '$2y$10$s9mSQQH.Rd.JWV2hmJOvJ.P.PWSCedqsJ.w6AQ3Ru.utKSA7qrEg.', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(359, '1000000358', 'ihsansimahbengi407@man.com', 'IHSAN SIMAH BENGI', NULL, '$2y$10$xYlxMQeLkqCistg.rMYupe5fuC1Z6YAyEjlD.7dTaCgqXR6vyVnd6', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599459, 1652599459, 0),
(360, '1000000359', 'ihwanhafis185@man.com', 'IHWAN HAFIS', NULL, '$2y$10$fsD2XsPKI6ImYxfM7kRRF.0UYqL/srPv4ZXnWnHc8wL4ETV4lmPBK', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(361, '1000000360', 'indahwahyuni121@man.com', 'INDAH WAHYUNI', NULL, '$2y$10$jDr/0bgppCy814CN0kndI.kPo7sJDklFPtI.SnybPYf0oIX/NihFy', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(362, '1000000361', 'iswandimabrur106@man.com', 'ISWANDI MABRUR', NULL, '$2y$10$KCEx2dccssDdTbsWtm4eJOIq2i/4FJy6CLMgr8tXh07XZ2QRkibFa', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(363, '1000000362', 'khairunfirdaus156@man.com', 'KHAIRUN FIRDAUS', NULL, '$2y$10$9SNldncGiFYZcatFFM5vGO7oVku9yEeQCQM/xG7AHRglaYopgUWIe', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(364, '1000000363', 'm.riskiaditia764@man.com', 'M.RISKI ADITIA', NULL, '$2y$10$IWZAAEzDrTPQbbWDmbMKkeeOLs.qo9q.vboeMPkfel2I3g3Od3E6q', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(365, '1000000364', 'mizamilfadli294@man.com', 'MIZAMIL FADLI', NULL, '$2y$10$3jvyd/jKXypO.0eCagIOJOpsuv7zgo3E1XNAuYD7dGFn5XyuIY/D.', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(366, '1000000365', 'muhammadsubki114@man.com', 'MUHAMMAD SUBKI', NULL, '$2y$10$.5c5tAJNzODkM1wDr1t9keEzpiL6ElNDPwQ7Q5s0M.QHJWvGtWjje', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(367, '1000000366', 'muliadibahtra278@man.com', 'MULIADI BAHTRA', NULL, '$2y$10$Q1fe8vWzNe6wM5nRyXY8ReEDAOzlwXasa5Wo9MFonJ5LC/mMuDUpC', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(368, '1000000367', 'putra427@man.com', 'PUTRA', NULL, '$2y$10$XdA5O4mBbuRKDPbwCxoP.eDmssAqGS1NLGnY5B4qgjanaD3e1gyjO', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(369, '1000000368', 'qadrifitra961@man.com', 'QADRI FITRA', NULL, '$2y$10$DAKpv5Dqc1ssmG2ySFX4..aoCy./BdIOW5IOIRpcxybCRUUHMjK3.', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(370, '1000000369', 'rahmadalena599@man.com', 'RAHMADALENA', NULL, '$2y$10$Klph/r6kyIOAGtNuP5Y3zOb5nrppKjQmr5zHk.uZeFH0vdq4NdUCS', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(371, '1000000370', 'raihanaamni150@man.com', 'RAIHANA AMNI', NULL, '$2y$10$y.djlgaFghzBMq8tIeXN1eKi26KL37V2HfIVYoqOtnq.2RgirdTfi', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(372, '1000000371', 'rayyanasyifayulanda368@man.com', 'RAYYANA SYIFA YULANDA', NULL, '$2y$10$QS.R92ejtcgldG0dxwQTZ.btcsvvvM8X./wa09lU45RCDS1rMJJKG', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(373, '1000000372', 'rizkyanovaldi913@man.com', 'RIZKYA NOVALDI', NULL, '$2y$10$rUYLKPHI62WYBnD2NEUcjeBblwe4qiHrIzFpWONMYHi0OZTmMcHja', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(374, '1000000373', 'ryckyrahman374@man.com', 'RYCKY RAHMAN', NULL, '$2y$10$h3YYwbh6GpcHfwVrDai5NOi7yYmm6VneKlRfX0OE6TQji75XYyd8S', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(375, '1000000374', 'sanianabila6@man.com', 'SANIA NABILA', NULL, '$2y$10$UJ6otRYIBLoiMTZauhBjaulJYNzPMy8y9yoZdY/md4mniHtP.Nm0S', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(376, '1000000375', 'sindiainasiska963@man.com', 'SINDI AINA SISKA', NULL, '$2y$10$Ei7PfjsBnG16erWtiN/VWuYDR/r627fxzDOYnV3xaO5C79Dl/.sXq', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(377, '1000000376', 'syahrifitra67@man.com', 'SYAHRI FITRA', NULL, '$2y$10$B2mBEqHeOPrRvCn/lQiIo.V.0xhbCPsUBZKNde7oSeMXRluy.NqVe', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(378, '1000000377', 'wiwintermiko672@man.com', 'WIWIN TERMIKO', NULL, '$2y$10$otDtye6Cp1Bjy8Cso.ZT4uQbMoitKp21/H6Is1eb4mTA/Ss8KwB5q', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(379, '1000000378', 'yogimarlian201@man.com', 'YOGI MARLIAN', NULL, '$2y$10$Yp/7rCZLcQaarz9V5rqP0uC8U0nGDT3DH5VeJqZr4Z5C8PtIAyYjW', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(380, '1000000379', 'yusriramadhan134@man.com', 'YUSRI RAMADHAN', NULL, '$2y$10$nSdc8CcWbiTmnSv2MLqEaOBhuIBzQAap7YsWdgj56E2/q1WVqWrLS', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599460, 1652599460, 0),
(381, '1000000380', 'qiyaraazzifa246@man.com', 'QIYARA AZZIFA', NULL, '$2y$10$IFOzuvVPtQXbOy8Giw90be8fKarwjQYaRH4UH9PxjEhMYvepZ8exC', 2, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(382, '1000000381', 'hafizhrizkiramadhan832@man.com', 'HAFIZH RIZKI RAMADHAN', NULL, '$2y$10$ZmMT8wojdrhdbv8OOjkQHubI6cHup1/plL3ajc/s9cRcgkKNGMDB6', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(383, '1000000382', 'mahdasyakura594@man.com', 'MAHDA SYAKURA', NULL, '$2y$10$p1GXIrJA1XhmeUABqAS63.j6DHDyCjbOnydtYwhWp5l0yTQ7Rl0S2', 2, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(384, '1000000383', 'alhadi738@man.com', 'ALHADI', NULL, '$2y$10$aOIUtoKbO0uCug3jFI0RIu9sKMDg8eLvCzL8CIVRFawRR8mM0o4bq', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(385, '1000000384', 'alparesimaharoen618@man.com', 'ALPA RESI MAHAROEN', NULL, '$2y$10$4KzE1uSedhxgzcrJARQpre6KbaF2KCw4kgx5kGZ1u7URXWwXrMKYK', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(386, '1000000385', 'andredinata327@man.com', 'ANDRE DINATA', NULL, '$2y$10$TiV0QbOKSjQnonkJimvKlOgwmz3cglXB21dFjfM4TdhYgp8sUlsBO', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(387, '1000000386', 'dahlina120@man.com', 'DAHLINA', NULL, '$2y$10$JoR/795cOSjWWwlaE64lAOzwbCPiC6MV/zuXtclVLGJDqepe/rm4O', 2, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(388, '1000000387', 'fahmiakbar817@man.com', 'FAHMI AKBAR', NULL, '$2y$10$ddeIeP/VgoHTcPmB1ygx0uYYBnuY3UN2NG480BEmQXjIjspUGke56', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(389, '1000000388', 'hafizwintanoga825@man.com', 'HAFIZ WIN TANOGA', NULL, '$2y$10$hNHXJsNnJuJz8OSj7u26FuxSr5m53LeLPhoPoVLPiC4EYowP2lXH.', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(390, '1000000389', 'khairilhafiz645@man.com', 'KHAIRIL HAFIZ', NULL, '$2y$10$p/ASLz2cBBfFPPi6mE8BK.InwWtJZgkkXwx8NkFlg1VUhuR451Vgi', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(391, '1000000390', 'mahajiranirfandi719@man.com', 'MAHAJIRAN IRFANDI', NULL, '$2y$10$MGYUSusDHQAcmpEtPvIObOPCEBAZ78nwWMQA52gfNfcmzn/Wfedte', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(392, '1000000391', 'mudimulia41@man.com', 'MUDI MULIA', NULL, '$2y$10$xuXE5oRrF1i5wohk/O4VA.rbJjmxqIrZ24dVDRhm0EvWWn69aIpDC', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(393, '1000000392', 'muh.raflymelala127@man.com', 'MUH. RAFLY MELALA', NULL, '$2y$10$hvfTYQFJZ5MqrA3pTdTOQO5pw6o7sWwnbYHh2sN.WftG3K6AG2Gni', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(394, '1000000393', 'muliaakbarbelangi303@man.com', 'MULIA AKBAR BELANGI', NULL, '$2y$10$uhDdG9tpuL9jWjRufktKbOaRzRMyHqRMPuHxDptHj.e1k0SH8PZyy', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(395, '1000000394', 'muliana770@man.com', 'MULIANA', NULL, '$2y$10$F56jhNnLikbPcr5Ll65Va.A.dgbdsFa7ObSmuC5I9espSpVP7WRsW', 2, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(396, '1000000395', 'mutaalimazidarrizki814@man.com', 'MUTA ALI MAZID AR RIZKI', NULL, '$2y$10$sRwLli7s9G/kqr9RP.LH4OPARIoR1z/roC/JbPb2oZpLHauRGoUJK', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(397, '1000000396', 'nadianasution62@man.com', 'NADIA NASUTION', NULL, '$2y$10$zJdxNRtDoa8JF.z2kV8U9OB2jPDFsPLirHNkVrbhH97kaM.qPUdEG', 2, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(398, '1000000397', 'nurula\'la951@man.com', 'NURUL A\'LA', NULL, '$2y$10$IjKtvKrgBp8wOUlZwKblw.KStxEyJtPOavtbTNyydhb.ti.vmYEyW', 2, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(399, '1000000398', 'ramajitromihardja49@man.com', 'RAMA JITRO MIHARDJA', NULL, '$2y$10$l5r/JMdCgZVGeoUUA.gWYeECEd.SMth2Kssc9GixwENQat.XztOnK', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(400, '1000000399', 'randyferhatin998@man.com', 'RANDY FERHATIN', NULL, '$2y$10$/503/wKOY/iMUAfHtY6dNeQhP1tqKzy7Fy5SeKfJkGr2d9vTZEjki', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(401, '1000000400', 'renisahfitri654@man.com', 'RENISAH FITRI', NULL, '$2y$10$NCxCgadEkWLrlYtjCqjiOOe7qwRQwnDG.ySiLvjGb/yMnl/2mrjWa', 2, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(402, '1000000401', 'rifkitawarnate726@man.com', 'RIFKI TAWAR NATE', NULL, '$2y$10$JvehEVVsBuDdgltSpwCq5.Ar9ZSm4r4R.Iboc7uzmRpqAbj4vcoDK', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599461, 1652599461, 0),
(403, '1000000402', 'rizkahidayat611@man.com', 'RIZKA HIDAYAT', NULL, '$2y$10$dVQewrsTm8I7qsTvXLniYukSHvynb/dxBQ35xg11Ss1khOK1jNVe2', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(404, '1000000403', 'sadri470@man.com', 'SADRI', NULL, '$2y$10$tKaWdw0b/ag8juAkxp52j.WIw6Q0aom6hWX98F79xElicp6nBzA2q', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(405, '1000000404', 'safrizal186@man.com', 'SAFRIZAL', NULL, '$2y$10$srl7J.ifKjjhFTv/3xPw/uHKVh1u126lMAYc1ab4.mNg.VkLiIiry', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(406, '1000000405', 'suharman664@man.com', 'SUHARMAN', NULL, '$2y$10$cJ4.faw6Ib7UF5dPO1GU1O3PkkoGViLTEbtRaLlKq.pjVWVRuDltC', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(407, '1000000406', 'tiadwiauliani135@man.com', 'TIA DWI AULIANI', NULL, '$2y$10$AbHkLGrXzt0BIsPlhwHysu42pKU.bjGGF48jeminCrePVgpGm30Le', 2, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(408, '1000000407', 'wahdini180@man.com', 'WAHDINI', NULL, '$2y$10$wPLAGuuMhSHJ2suTFxN5guigKpllzlF5TJjB7zLb3y5ZNWL/zcv3i', 2, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(409, '1000000408', 'wildandika257@man.com', 'WILDAN DIKA', NULL, '$2y$10$grxViFQcS0f/sbA1A4eRFe8tjckD6eqDqnlWj3Eb3QQTf36gSulXm', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(410, '1000000409', 'zahranimaura690@man.com', 'ZAHRANI MAURA', NULL, '$2y$10$Z6GEYkvKMpZJMzQbiqt3iuEcxZQ3S22CCNg4K/2KzxoemK.nCHSFm', 2, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(411, '1000000410', 'irfanrizky177@man.com', 'IRFAN RIZKY', NULL, '$2y$10$N18Q/NS4p9yfKPpXEYevYudQN8Q/7pahdeZ1Tx0rFL/FQjhDM56cm', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(412, '1000000411', 'sahidulsyahputra590@man.com', 'SAHIDUL SYAHPUTRA', NULL, '$2y$10$Xy2lIqnX6cLVnBjAFt3FIuUYOtlhonPkm2UqrnXvR8l5LNQLHvWb.', 2, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(413, '1000000412', 'anamaria38@man.com', 'ANA MARIA', NULL, '$2y$10$LXWdAmO4D2EeA57N3samiub7mnQyjOqSfdaHV9hwim0BDn67JtGZO', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(414, '1000000413', 'annasrimulia777@man.com', 'ANNASRI MULIA', NULL, '$2y$10$yXYhHMGr16dVZ8L.845MCuHRmZKSjqTnqtWLz0Q6urg.5Zl2Zeo2m', 3, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(415, '1000000414', 'cutamalia847@man.com', 'CUT AMALIA', NULL, '$2y$10$xD126Vj4lQ70130mg6n2C.NzRwWutz7L7spgGrz2NOg7ogJPwHqUy', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(416, '1000000415', 'desisilfiyana334@man.com', 'DESI SILFIYANA', NULL, '$2y$10$jLqZWqkJR5ghHHzZBvgLwOjgfinp.wkdlT2q4qV3eG7Hln4zomVUS', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(417, '1000000416', 'dirgasyidratussalwa388@man.com', 'DIRGA SYIDRATUS SALWA', NULL, '$2y$10$A.wiFVfE4fdVIxECmyaGV.m1V9Lgu0oFlwqUtopBrZX/e8Vrma0oG', 3, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(418, '1000000417', 'elizasapitri172@man.com', 'ELIZA SAPITRI', NULL, '$2y$10$W360gBd1KckTjJmLpi2XLOLsRHvPnj7svx.kcXFBSQd2P7z/x2Bji', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(419, '1000000418', 'fakhriwijdan808@man.com', 'FAKHRI WIJDAN', NULL, '$2y$10$eCop3zOplLjHMt7268xFWuNhsyUZEpOTZW9p27J6GKcmXJTjPgsmS', 3, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(420, '1000000419', 'fanita113@man.com', 'FANITA', NULL, '$2y$10$OKvUYNV3Ss3gsqvWrnwBy.I6yqrqVfFJiqLn28nZy4/fV0beYmTRm', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(421, '1000000420', 'ihsanuddin328@man.com', 'IHSANUDDIN', NULL, '$2y$10$Vxcj1gQ.jbmTE/idSdboWeC.nxwTu7l8XTFzBAx74oVkcrLqTPWCS', 3, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(422, '1000000421', 'ilhamekafarisy258@man.com', 'ILHAM EKA FARISY', NULL, '$2y$10$I1erbWYoiHsqwfr5c2ANpuVh0nwpRy2HtO97D0zvVFZLpoQiepFIq', 3, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(423, '1000000422', 'jannatiakanju235@man.com', 'JANNATIA KANJU', NULL, '$2y$10$fJrLF0lj97Ae2044WOd/ie06gah0hmcdpVAFr.8MPQQhxxhctY8sS', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(424, '1000000423', 'lindaamalia455@man.com', 'LINDA AMALIA', NULL, '$2y$10$QwUIEk.GzdzzQuvw9kaVHOPb/jb/k2/JrAVQetPpG7vD0mcAVHHrW', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599462, 1652599462, 0),
(425, '1000000424', 'm.rizki862@man.com', 'M. RIZKI', NULL, '$2y$10$14eyUWbXFo77QE/oYDXCRuE2gXZa0w7TQ4RsO3OhclY2XUgLuyvXu', 3, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(426, '1000000425', 'm.sejahtera274@man.com', 'M. SEJAHTERA', NULL, '$2y$10$uq7w/WAtAoxkTGWGl0dziO9pY0lKY4VyVcYiqEFwFKsUqF.HZdbNO', 3, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(427, '1000000426', 'mahridalativa578@man.com', 'MAHRIDA LATIVA', NULL, '$2y$10$H3h2V3UsWKByvC2X04Mn6O1xghBvFFTyt9wg5MQywxxy1KuLH0Wx2', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(428, '1000000427', 'maulidasimahara146@man.com', 'MAULIDA SIMAHARA', NULL, '$2y$10$t6SM7Qr3xHqlmTOS2PvV..Ez3EB0WkzAUuxt.A5ouu/Bnv6fRuVvC', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(429, '1000000428', 'nabilaraudhatunnisya94@man.com', 'NABILA RAUDHATUN NISYA', NULL, '$2y$10$jqYqLC5X7QgYnqMd2dUSp.5zsZJhWWgTljSZZZIsNZSEpbvNfEIX2', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(430, '1000000429', 'naurahsalsabila139@man.com', 'NAURAH SALSABILA', NULL, '$2y$10$0WFHBx/BSQUmkHnmNryJ/e5b.WWO3EIt5fUkhe1SoVOq9zg2lMleW', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(431, '1000000430', 'nilmafatimahazzahra26@man.com', 'NILMA FATIMAH AZZAHRA', NULL, '$2y$10$86sUZmLZeQVEPd/0RVurS.8UkTN51LAWQ5ZFO6CAxWwCxvWXEh6ry', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(432, '1000000431', 'nurhafidzah246@man.com', 'NUR HAFIDZAH', NULL, '$2y$10$jx5jtSekSPkAkeetKlAdwu9.VidxdUIztpkEqMQiyZi8bbfo46vX6', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(433, '1000000432', 'pingkannapisah253@man.com', 'PINGKAN NAPISAH', NULL, '$2y$10$jX7zJaGcezLzv2zvCw7XZOo99vyIJw86e7SzW5NGfcE2Bks/k3Ivq', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(434, '1000000433', 'rikamahyani827@man.com', 'RIKA MAHYANI', NULL, '$2y$10$V/oucJEZo7FdHs3PaZcvJOer4.qwJ3hI.qk8xEzM.IJLUpHRwRNYC', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(435, '1000000434', 'rimaputrimegaandria895@man.com', 'RIMA PUTRI MEGA ANDRIA', NULL, '$2y$10$vszNsorfQDUkgzbkqWUVa.2p1iSqfwgpTHMTrtrryIoWZv8f.C49m', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(436, '1000000435', 'sarabensu830@man.com', 'SARA BENSU', NULL, '$2y$10$9KG5SWSfrLtYsoEzJjNWW.RxCNU2M69qzpRkSyhcdU2Ud7jI4RSnC', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(437, '1000000436', 'syardifitrah579@man.com', 'SYARDI FITRAH', NULL, '$2y$10$1GxaHwEaOnm2MCDGLgvyjeZhZrVnqJ2b0yWncvZ4Mmf0KvkgXrFxu', 3, 1, 'L', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(438, '1000000437', 'zannatulazila838@man.com', 'ZANNATUL AZILA', NULL, '$2y$10$S1qZOzAxQYuPFhuXgTyK4eyA4DqFGKQjJVvxfMjMW97Ssu1YBKsUO', 3, 1, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(439, '1000000438', 'abdanfitramenye137@man.com', 'ABDAN FITRA MENYE', NULL, '$2y$10$UdueFJMa.6WOnU3bynYe2eyvwu1xwNFseKPPaGU1Vj2f7ymFJN01C', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(440, '1000000439', 'almunadi796@man.com', 'AL MUNADI', NULL, '$2y$10$iQAB2N7JG3kaGkLwZNwRROgvfFtyrWgIG8UQMRdMxixSPUQgZy6Z6', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(441, '1000000440', 'andreancanhari899@man.com', 'ANDREAN CANHARI', NULL, '$2y$10$nbeVTJKa4OQjVP98pxP5Bexz/I9ePOJvC0hKCDQhWYZayO6vFqXfW', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(442, '1000000441', 'assyifawahiddayati569@man.com', 'ASSYIFA WAHIDDAYATI', NULL, '$2y$10$adNvmAgOs9ANgVHvROsdVuD0IyfBLuN5iO285Y8Y1kF6EeaS.19AG', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(443, '1000000442', 'ayudalisma607@man.com', 'AYU DALISMA', NULL, '$2y$10$jE6uQuKMHLE1Qaq/pKprbOGfanJhEQiG1iabagoFGBHCQVEON8kou', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(444, '1000000443', 'daffaelzafadhil414@man.com', 'DAFFA ELZA FADHIL', NULL, '$2y$10$E9VTP88NjrT3rObwQxcu9ugjgPAjTcYgkX1Vfk4hBom2jW5m6ILPe', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(445, '1000000444', 'fathulannisa150@man.com', 'FATHUL ANNISA', NULL, '$2y$10$IlQe3dT7CTQMAhVfONrqbep8ndoYEohIOEqFjouMn1gX.fzbolldO', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599463, 1652599463, 0),
(446, '1000000445', 'hafnizahara714@man.com', 'HAFNI ZAHARA', NULL, '$2y$10$IiWH9AO40ugXgPgq5/qTQePCIdCemc.dG6hFqHR3gWoEhFHbBw52y', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(447, '1000000446', 'hendra320@man.com', 'HENDRA', NULL, '$2y$10$CBFCYQYTl7ObwaUjZLpOQuxsUoH1cXOVSjoHaLA44nSYqPQx7FOTC', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(448, '1000000447', 'heniwijayanti369@man.com', 'HENI WIJAYANTI', NULL, '$2y$10$pwwIoWS7x8WbwB1a15wb8esEqPlvfBS.uzst.UtrdaMm67Td5B0O6', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(449, '1000000448', 'hermavalentina977@man.com', 'HERMA VALENTINA', NULL, '$2y$10$R0LwseCy893ge2zejSMwhur8SgtIA4fqjt8WHpJ1XPmJWyMvm2uli', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(450, '1000000449', 'hidayatunnahar659@man.com', 'HIDAYATUN  NAHAR', NULL, '$2y$10$IHhO0JRWSod5AUFqV1EIGOQ9XGGVJi9bVp9QIrUeZtHFn6KYXpna2', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(451, '1000000450', 'imamsamudra402@man.com', 'IMAM SAMUDRA', NULL, '$2y$10$A4fuYtM42Ah1Ym44N.A5oOy./HstJlV9ImWgYU7dIY6hmX9NlmjF.', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(452, '1000000451', 'intantamara313@man.com', 'INTAN TAMARA', NULL, '$2y$10$gnTZCGvk713i0B7XIwpdyeRU/GY8sZR1vVwXYu0mmygaIH6TvIxWS', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(453, '1000000452', 'ismajunipratama822@man.com', 'ISMA JUNI PRATAMA', NULL, '$2y$10$tcwUKoBlb5Of.ejTbRviXu72nvLL8uwMhQDFQP04SqFuTBUeromi2', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(454, '1000000453', 'jonisyahwanara791@man.com', 'JONI SYAHWANARA', NULL, '$2y$10$3yisPU7IMaWz90w2IbzUUecHedVMehQxpXMmATGi4wXZmG3eJaWGy', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(455, '1000000454', 'juhriansyah970@man.com', 'JUHRIANSYAH', NULL, '$2y$10$YxE1uKePRfUNdjxQRnuy6OjNypfD3ha8je67E4263owcRcuUkSxCG', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(456, '1000000455', 'jumadirahman569@man.com', 'JUMADI RAHMAN', NULL, '$2y$10$o/vuo4tPostYBV5wXXzWjeDlMXcAqUqskNHp.HdQMvBwPDKPoeEaq', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(457, '1000000456', 'khairunnisa22@man.com', 'KHAIRUNNISA', NULL, '$2y$10$8j0OTpHb7L1u3eUUrHcXkO7IEDtXNnt73LnH0IArccjVyNokjXcgy', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(458, '1000000457', 'mnur581@man.com', 'M NUR', NULL, '$2y$10$3QIeD3MnQZSfCFKqymp3fOxF2qGrFkHSz3gUoQbl/FXjzTi/kVPuW', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(459, '1000000458', 'mriezafahlevi720@man.com', 'M RIEZA FAHLEVI', NULL, '$2y$10$M1p1yr4NpUfmVM0amLO/sepo1PzBasbcpWn7Fa1LBX8iHmiYA47.6', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(460, '1000000459', 'mauzialfadila308@man.com', 'MAUZI ALFADILA', NULL, '$2y$10$vPH7.EXpOuMnoZ2NOE2WIOktBA0S7ja6g9WXd68Nq18qxG6DvA29m', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(461, '1000000460', 'mawaddah833@man.com', 'MAWADDAH', NULL, '$2y$10$i1U2YQJUbIRD.W0YxKVW0uSmzSDMdB4wRpaeWANqlsuRjkqoOA7ya', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(462, '1000000461', 'mukhsin505@man.com', 'MUKHSIN ', NULL, '$2y$10$HzVNq0nlOsLI4JnQK4mmL.u8YAtX98DaGupbJhUPSwuIaXE5DfRYy', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(463, '1000000462', 'nurhayati608@man.com', 'NURHAYATI', NULL, '$2y$10$mkeMj020Ad2x0oznoDtlU.uCCiW1lW7oN9MmTeoaxTPwBe4s6Qi/e', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(464, '1000000463', 'orijagunawans281@man.com', 'ORIJA GUNAWAN S', NULL, '$2y$10$v74ZAOvaNaNOxzeL9vACjuejgP4MH4ED1/7Lu5GHhj7DD0HdxYpBa', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(465, '1000000464', 'rahmisapitri424@man.com', 'RAHMI SAPITRI', NULL, '$2y$10$md.RcvDkPAitCZEmGVFN7O9i7bo4mAFi1Qyv75d79p5bxRXiha7T.', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(466, '1000000465', 'rajakrafsanjani429@man.com', 'RAJAK RAFSANJANI', NULL, '$2y$10$08VvG37U04jDGHkDDJ.Q2e99Q.BMmsTJBiUIUv4.PgaqagArRK6JC', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(467, '1000000466', 'sabarollah137@man.com', 'SABAROLLAH', NULL, '$2y$10$Sy3NCwGNdWIIEM7Gs6cwh.0bndeXmMvaSxxd/ouTaKihLDBwi50xy', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599464, 1652599464, 0),
(468, '1000000467', 'salmanalfarisi426@man.com', 'SALMAN AL FARISI', NULL, '$2y$10$RCokfoUk7v3GjFtQzfGaCePaoAb4r.nb3ojjIFOP3uOM7/XYXEly6', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(469, '1000000468', 'sauqiqalbiihsan907@man.com', 'SAUQI QALBI IHSAN', NULL, '$2y$10$Ry7OE/4Jql57VjzTzwoTZOaj/abh.e8rF24sckV9i5ciWLnWBa5h2', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(470, '1000000469', 'seprianaputri597@man.com', 'SEPRIANA PUTRI', NULL, '$2y$10$EP6rMG8fSrvzhiLN0FN0vOXoVit9kiKbv2s9wzfpmay2UmYINPHsK', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(471, '1000000470', 'septiajuliabreta195@man.com', 'SEPTIA JULIA BRETA', NULL, '$2y$10$POP6YvXJDCOeNDkfW3F9eOYospyY6Mz.gordT784ta0N4ZKE4tA3.', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(472, '1000000471', 'sujadanaufal955@man.com', 'SUJADA NAUFAL', NULL, '$2y$10$.z3r3W3sUE/DMHLYFJfPkuSa0OQqSl/Rw1K.FWuFDy5b.IGt0OEPy', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(473, '1000000472', 'tiararejeki409@man.com', 'TIARA REJEKI', NULL, '$2y$10$tlIGSASVYJhRN96QUOPw7ebQA/TASKZ.HQ2/FeQE3TQQ0u/KRJc/a', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(474, '1000000473', 'vaniaamanda990@man.com', 'VANIA AMANDA', NULL, '$2y$10$u8FQ5lB5EkcdI1T9F7A1n.BR5mBhxq.nxYpXhusWIfFr0pPrPgs5.', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(475, '1000000474', 'wardani601@man.com', 'WARDANI', NULL, '$2y$10$eIbBsOW18mMZkAEBywwFRe/a7YNWZFfLrxGPufQkzdJYloGyTWnAu', 3, 2, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(476, '1000000475', 'wiramahendra664@man.com', 'WIRA MAHENDRA', NULL, '$2y$10$N/eXhtd0q.nzOEUYkxa.lePwBZSbhOY3.hawFs3ZLnwSCUu68brm.', 3, 2, 'L', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(477, '1000000476', 'ardianokta485@man.com', 'ARDIAN OKTA', NULL, '$2y$10$qgJEstmpjRQyRhnFYLIRD.tUN3VLqhFfno845DXi9.iikhWay1d2u', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(478, '1000000477', 'auliarafiqi830@man.com', 'AULIA RAFIQI', NULL, '$2y$10$DUqdd6dIZEWFAbhcRMYiBOUDOAA/MZirUBpOFrXZMERbPd.5BeQW2', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(479, '1000000478', 'auliarahmi952@man.com', 'AULIA RAHMI', NULL, '$2y$10$57BOTLS6M7h2vnv/cJcqUeWrWmTAf6lrEhQLZ/4frkDIYOMx45Y8.', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(480, '1000000479', 'azzatilakmar536@man.com', 'AZZATIL AKMAR', NULL, '$2y$10$i/abjisXX8prh8R3pXXG0uRQWLKmqzQNkQ.qoAtZ9MpclNZ8FS02.', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(481, '1000000480', 'dhiyajinansausan647@man.com', 'DHIYA JINAN SAUSAN', NULL, '$2y$10$MMa43Ywf8swJmH7tF0Sh0.u5Ol6I84R4pWjBb.tpyHsGCId2f94l6', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(482, '1000000481', 'elmafebriani394@man.com', 'ELMA FEBRIANI', NULL, '$2y$10$61PfAGmCV70.N.1EO2zCVO1cvO/Bl5nO121PTScqBy5D0SL9d2Zgy', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(483, '1000000482', 'firamaulana555@man.com', 'FIRA MAULANA', NULL, '$2y$10$0V5BjQINogTgFvbWCnWkP.WD804kW3nRKrh/qOUhIr/wl.DEiGJQS', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(484, '1000000483', 'henderik779@man.com', 'HENDERIK', NULL, '$2y$10$zV4Sxny0XhfzrwPpkg1cqO5Zfy6bO.yQUKEvmXwQdVH/3AB0L.qo.', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(485, '1000000484', 'ifasilvia142@man.com', 'IFA SILVIA', NULL, '$2y$10$p6Vt3sfOpEe8M0GVdxCFZO1QvcH3VutCvO2Qnp5pQLedshhTnOqdq', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(486, '1000000485', 'intanrindipurwati149@man.com', 'INTAN RINDI PURWATI', NULL, '$2y$10$ssqkF6K.FCL7F7fQMpLpweUlcf2Tzgk8gNttkbeHZL4NiobFPVPS6', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(487, '1000000486', 'ilhamrizkipratama500@man.com', 'ILHAM RIZKI PRATAMA', NULL, '$2y$10$IBUbi8ToFCwJA8P1FOv5B.cNjBfUOit7BI1W77e3BWitRDHn55.QG', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(488, '1000000487', 'iradah37@man.com', 'IRADAH', NULL, '$2y$10$yqm0eXgqoNoMGrWnGxpHaeP31DE7r0Cam2hW6REyLg7ThcUj5OUbW', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599465, 1652599465, 0),
(489, '1000000488', 'jamianqalbu643@man.com', 'JAMIAN QALBU', NULL, '$2y$10$R6lSvZPXXwu.wNiE2QXrD.wjc07KphWD5XgV8ZasCjHDmfEtIKryW', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(490, '1000000489', 'khairunnasirin613@man.com', 'KHAIRUN NASIRIN', NULL, '$2y$10$4iz7mPBTwQHd0LojSMtIzOq0B5lnbqGxCe7PQFPGNfHf0NSp37GQi', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(491, '1000000490', 'mfahri602@man.com', 'M FAHRI', NULL, '$2y$10$jq8ZxBoiZ7OWvNP/sjVf8Omksoh7FiiIRIoDekz7o6tJ8cQ0wz8.y', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(492, '1000000491', 'mputrawansyah420@man.com', 'M PUTRA WANSYAH', NULL, '$2y$10$AodtMcsaRRPVRZ0mE05BJe7Uca/izDICxODnuZJ6S6nM.nQGTLXgS', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(493, '1000000492', 'maharani490@man.com', 'MAHARANI', NULL, '$2y$10$R/L.6q6lYe647ce1fZRm6ubmL7UOYUCBRiwnMkuzMz.CdwmD8UeYy', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(494, '1000000493', 'marlindapuspita177@man.com', 'MARLINDA PUSPITA', NULL, '$2y$10$KFgBi481pRNyY1FgWvmQo.ms/jarsbjyAV6QLrHV9h8qTr51cIzBW', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(495, '1000000494', 'maulidaafriani541@man.com', 'MAULIDA AFRIANI', NULL, '$2y$10$cfoVX54B4WRsK4as.K2RkuFoCul7HanzNCMSDS/xo1lXhXIThE75i', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(496, '1000000495', 'mutiarezeki462@man.com', 'MUTIA REZEKI', NULL, '$2y$10$TDi6vNeKzsEU4i8C/CeLNeg35AmeFZmnAIdINliybaEieE9brZMae', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(497, '1000000496', 'nadiamahara336@man.com', 'NADIA MAHARA', NULL, '$2y$10$58ymJ2B49GXIjftElfApoeWakLXClPeIKQ53RKnX8P09M5bFrFwHC', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(498, '1000000497', 'nadiasari149@man.com', 'NADIA SARI', NULL, '$2y$10$fkBT2EMcv2yEIlYaYyE0D.AqKs8tGTovKO2lihuB04ZcA1UpyAhOe', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(499, '1000000498', 'nadyabrudio56@man.com', 'NADYA BRUDIO', NULL, '$2y$10$7g85QXA0sHTVv4K1SqrUEek/x7kl2YJ8RO79NWCVcDzdQU8kfo/Um', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(500, '1000000499', 'najibmusapatinugraha700@man.com', 'NAJIB MUSAPATI NUGRAHA', NULL, '$2y$10$/txN.sN3qLfbfo/ZOSBFBeyZRNemGStq0yx/BFKpRNnHlYedAcRT.', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(501, '1000000500', 'nazlaaqnia565@man.com', 'NAZLA AQNIA', NULL, '$2y$10$fwe4BMaoAIf37TE1MFsQ6.U/qIr7HaDFvxcFS/WFzNVbWFkk9JKlO', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(502, '1000000501', 'niaramadani898@man.com', 'NIA RAMADANI', NULL, '$2y$10$/f/QJkOJ6AnTuwzNSMCbQOf7C9lgh1OVyTTTlDt.ReiIj40X/xSSq', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(503, '1000000502', 'nindasafitri240@man.com', 'NINDA SAFITRI', NULL, '$2y$10$487kat35S5yldzrLPbPM8e18.AeZw0GpA5v6CFgE.50BCJ8f5VEr6', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(504, '1000000503', 'pujasimehate541@man.com', 'PUJA SIMEHATE', NULL, '$2y$10$d5lx2MrocynbHHC6UebVweqi3fLRHuCkCGzuFaPo1tzIKpe1OeGiO', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(505, '1000000504', 'rahmadayanti425@man.com', 'RAHMADAYANTI', NULL, '$2y$10$OAz6PWiDAH4/Lx272/bNs.Q3Zf3tKl8PPsCJ1vSk4CiyWesKuZ6c2', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(506, '1000000505', 'raihandandi626@man.com', 'RAIHAN DANDI', NULL, '$2y$10$K89GSW3Ai0r4DgP91qxn5OmTOZnMDUlH8Ct/Wm/nvfAvrJPmG7w9a', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(507, '1000000506', 'refkiwiyanda644@man.com', 'REFKI WIYANDA', NULL, '$2y$10$ap0SGOB29lZb9v3VgxI/wO655eGjMHX5iEuQD.85prko068Oj9NIe', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(508, '1000000507', 'riswandianugrah848@man.com', 'RISWANDI ANUGRAH', NULL, '$2y$10$ulPD5vRXPg8eAZ4iE8FjaOe4b65FZ6Ob8u4IN9Efj3mklUErlC7NK', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(509, '1000000508', 'rizkaiwanpasaranggayo511@man.com', 'RIZKA IWAN PASA RANGGAYO', NULL, '$2y$10$j9.xYPnvtzwxkgyObniRqOi/A4HqLw.TQ/utckMagHVPymgj4BcIu', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0),
(510, '1000000509', 'yuliana15@man.com', 'YULIANA', NULL, '$2y$10$Ylnxlz6GUcMUdzNvlLpgXut3ijy46b1.D3JUDcmpGYEqb.Q4jdEs6', 3, 3, 'P', NULL, NULL, NULL, 1, 5, 1652599466, 1652599466, 0);
INSERT INTO `students` (`id`, `nisn`, `email`, `name`, `image`, `password`, `classId`, `roomId`, `gender`, `ipAddress`, `about`, `dob`, `status`, `privilegeId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(511, '1000000510', 'yulianda87@man.com', 'YULIANDA', NULL, '$2y$10$piTfdRfH5zvC04a2IfdsveS8pL45tBSgI0tSfP6e2necm6er.xM/m', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(512, '1000000511', 'zahran165@man.com', 'ZAHRAN', NULL, '$2y$10$AoRAQuDYN3AFzL.jvvkbkeOhX3iCs6MDMUmAIaZlY0REhazTU3A7S', 3, 3, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(513, '1000000512', 'abrarilliyin458@man.com', 'ABRAR ILLIYIN', NULL, '$2y$10$EocKgpo2LikjgLBUGCjEhOqSeOVdR.ltrW8WeME32fVLC7qT9hENq', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(514, '1000000513', 'adenovalkurnia984@man.com', 'ADE NOVAL KURNIA', NULL, '$2y$10$9ZcQRRcn/zbToexA0fDJJu9Lh0vt1yv23H7R3zwgWHX4V5y81UkWO', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(515, '1000000514', 'anandasaskia946@man.com', 'ANANDA SASKIA', NULL, '$2y$10$g3/uxGrFBYyoMpfT5gSr9ueJ/llZz4ERU5DFNdq6JCAqEEQNUAATi', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(516, '1000000515', 'asparina447@man.com', 'ASPARINA', NULL, '$2y$10$8Rpg9mJBmvq8CKhpYiHkNu8uNowfuJMWMpKMCsWj75IH0.MSKxtjq', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(517, '1000000516', 'cutmeriahsyamsi940@man.com', 'CUT MERIAH SYAMSI', NULL, '$2y$10$u8MMNZ3BDo90Vg5gaOpqp.oqMUUrCayMdMU7PukkVErg3eWtGsKEW', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(518, '1000000517', 'dahriaziz966@man.com', 'DAHRI AZIZ', NULL, '$2y$10$Nwz0t2rJFhVGcGP3Nh29JeAdhIi.eVepXsI5ter3Mpozl.X8Pbwry', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(519, '1000000518', 'desimahbengi206@man.com', 'DESI MAHBENGI', NULL, '$2y$10$67ZstIpiaDtJVV/B5hQ8WuivzjYW1l4U48qJ7zYmQaBFW0UQHj4OK', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(520, '1000000519', 'diskiadlani212@man.com', 'DISKI ADLANI', NULL, '$2y$10$mT0n1Do.vS5pY5c4M6czMepUykCJd3nyGjoDzC3MtCfCo0RyWcRH.', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(521, '1000000520', 'fahmimaisya305@man.com', 'FAHMI MAISYA', NULL, '$2y$10$CnK0O.3jb7rJFjr3rm2vcuoIVeBQr16hT8IpXI4JXI1nadSskDziy', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(522, '1000000521', 'humairanadila323@man.com', 'HUMAIRA NADILA', NULL, '$2y$10$FmR6rsH3AmVqh8PBI6BnDOjHt5vwbBAFA7YHXzzkvrC1bgD5a6lFC', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(523, '1000000522', 'husnimahtuah861@man.com', 'HUSNI MAHTUAH', NULL, '$2y$10$XFsnN4mxZaEP8BLiGHdxwe5NyJEl/DjhyQboADxTkd9Co3x/je6WS', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(524, '1000000523', 'iqbaldarmawan314@man.com', 'IQBAL DARMAWAN', NULL, '$2y$10$MWv90cOgMQZ4Cn8yK3APXOlae0B9CcsyBggVU74IsT3hazKqOoIii', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(525, '1000000524', 'israazzahra509@man.com', 'ISRA AZZAHRA', NULL, '$2y$10$oxVcBiRnNmJ7yI4DZ8EAuuJVPGVkbgoX72mi8qNcycnrS/7MxcRQq', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(526, '1000000525', 'khairunisa703@man.com', 'KHAIRUNISA', NULL, '$2y$10$1ioTfKbJhtHHVKLceOQp5OGV3guDsUceDyjjI0/P3wbBB7nTDuLvq', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(527, '1000000526', 'laulasalsabila17@man.com', 'LAULA SALSABILA', NULL, '$2y$10$4d1ognp.zsWaamXDAe.Z7.SZ/kJ9BWYZsioSteHljtwVRxGaNUdoq', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(528, '1000000527', 'msubki370@man.com', 'M SUBKI', NULL, '$2y$10$n4Tfk3aBofVw80.OIUHcFexNJpp4jmv1hEw/dNTOWx67iQ9iHwj9W', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(529, '1000000528', 'magfirahyurisma564@man.com', 'MAGFIRAH YURISMA', NULL, '$2y$10$gB8NCccDdvIzVL6ifN0pxu4ie7SbL9pty6J/lFNHeTet5rlJfaZ5u', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(530, '1000000529', 'mauliyana466@man.com', 'MAULIYANA', NULL, '$2y$10$qfh7Z.xvgfDonCkrP1Ze3u8dsSTdm7X3Tgsd34cdONhDB.YYlmTOe', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(531, '1000000530', 'meethalaura366@man.com', 'MEETHA LAURA', NULL, '$2y$10$TOcOgNJAH0z/l7I9ofZiQunMp.HE.ypmufvtsMK5bwcL5sMDbHYwK', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(532, '1000000531', 'mislanbahana384@man.com', 'MISLAN BAHANA', NULL, '$2y$10$R9W0b7UlG45GUm.dfTQZj.xSGlW9NUESyix9iA3xFI.0Cy9KAbCpK', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599467, 1652599467, 0),
(533, '1000000532', 'nadilaraudatunnisya739@man.com', 'NADILA RAUDATUN NISYA ', NULL, '$2y$10$lp3qO/A7G/azpDgPOCB2SeALmcOwDpTRgzX2ci0o3jl2BZ0GDHgAq', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(534, '1000000533', 'nadyatiaraniaprilia583@man.com', 'NADYA TIARANI APRILIA', NULL, '$2y$10$hd.d3XLVndAMOSfF0zR1ju0qHxA96BOeLzxR.xFKBKAUi6ApQPVHe', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(535, '1000000534', 'niaramadhana418@man.com', 'NIA RAMADHANA', NULL, '$2y$10$8D5oj7G.fR2/nzELwI.gaOpsSD/6HTNjKta4zvqajbAK7pYr1KVb2', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(536, '1000000535', 'noraarifah922@man.com', 'NORA ARIFAH', NULL, '$2y$10$LB7mePE9UKYjyK.5N1h4x.8mU0ZQHYjkqlgDiTsMxJVjakdMRv/mG', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(537, '1000000536', 'putrialyasalsabila310@man.com', 'PUTRI ALYA SALSABILA', NULL, '$2y$10$F3lG0vrYhGzTrnkP0rR6TOTHslpfNukN0aAIx3rmJQzsU8OlrKphu', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(538, '1000000537', 'putrikawazula3@man.com', 'PUTRI KAWAZULA', NULL, '$2y$10$pVDVxhPw2VW9VRuwsAQk/uUUPGynyNQaW2fqLnYOnHg2xnabdSDOS', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(539, '1000000538', 'ramadhanfitra523@man.com', 'RAMADHAN FITRA', NULL, '$2y$10$VapoKSKItK1CwxhwCFItOOd5L0.b49KW2bhnSQHjgWmQ1k6VAQOTm', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(540, '1000000539', 'randarizki206@man.com', 'RANDA RIZKI', NULL, '$2y$10$KWxPd0T8kIu314OHmxQf/.KZ18jCbnpchrhrSIRx6ANvPhUrgqeba', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(541, '1000000540', 'reladi340@man.com', 'RELADI', NULL, '$2y$10$FRrtN7v7qVy6a38R.2Zj/OTIJh2uYNNzYsdZ9kuMBYOm1g7Fzwgti', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(542, '1000000541', 'rezekiwananto607@man.com', 'REZEKI WANANTO', NULL, '$2y$10$0FjoSpDUgPgR63WLAEJzIuhnu8L.gHAIA7gJIbdzwr6.umg.PBMiS', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(543, '1000000542', 'riski461@man.com', 'RISKI', NULL, '$2y$10$0q0enlpTCS6ao9avRi21FuUtGsSxR3rM8Y9i7mEQjCzrwAUY4uDUK', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(544, '1000000543', 'riskisetiawan602@man.com', 'RISKI SETIAWAN', NULL, '$2y$10$XjDHdcdRtH4XiC2naNdI.OgUcMLAj/28x0OTlR.VUdJOrA10P2TMa', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(545, '1000000544', 'rizkiiwanramadan137@man.com', 'RIZKI IWAN RAMADAN', NULL, '$2y$10$6dHqXYfPdafaNJsQsjH1xeJHJkgBq11ipoEVLJOkAKxhcyu13UBp6', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(546, '1000000545', 'ruaida763@man.com', 'RUAIDA', NULL, '$2y$10$SFq9gQ2FiD12du1bo11o3eS4cXdQ8YGZD.of6gGFEE/bV/vRF.yS2', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(547, '1000000546', 'safrinandaputra574@man.com', 'SAFRINANDA PUTRA', NULL, '$2y$10$F5zd7QIRVX5c1mPPyav6ZOR.FGNtnkNvXiMfWmXpQlixaLnY2vbv.', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(548, '1000000547', 'selviapintenate256@man.com', 'SELVIA PINTE NATE', NULL, '$2y$10$DikCgFtRs/flJnACsc.oZ.045iilHclgC6FyPhAuI8qjPQBcwAyYK', 3, 4, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(549, '1000000548', 'wulanmelisa389@man.com', 'WULAN MELISA', NULL, '$2y$10$pLIS1vk6svbcazsToDen..fe5X4CqTxe/o1sWD.hnB0yaYG61sox2', 3, 4, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(550, '1000000549', 'anggunkaniya774@man.com', 'ANGGUN KANIYA', NULL, '$2y$10$4hA65RKPC8GTV1O8bfQWMuwpeYOr060odLp.xpdr4fuInjMnRo5OG', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(551, '1000000550', 'binautami685@man.com', 'BINA UTAMI', NULL, '$2y$10$E544Zv4L/DF7zm7bmxK6leF4pgjb2vxZtCz/QIo1LS5.wVnGm3Upe', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(552, '1000000551', 'ditaarmazayani407@man.com', 'DITA ARMAZA YANI', NULL, '$2y$10$usMcTYATpFM.l/6xHeJZcuptrbYzPVKwivINH3yTWm5pFFbp..ape', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(553, '1000000552', 'helmifauziansah266@man.com', 'HELMI FAUZIANSAH', NULL, '$2y$10$.28xbKmvlk8hV6mV3D8KgO4GHflRKGkVkS4nG7kmwUUxk/QqbG/Ae', 3, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599468, 1652599468, 0),
(554, '1000000553', 'husnasari484@man.com', 'HUSNA SARI', NULL, '$2y$10$n0QyoAmYMVcQ3e76mAB24OiSg2E5FzLMeB6379DxcFXyszbF1.KW.', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(555, '1000000554', 'ipakyana807@man.com', 'IPAK YANA', NULL, '$2y$10$Aze25HzsFX1sRv4XVwFYQuJ7t2p960v7pgwe2K9dLYP05av4dYDYC', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(556, '1000000555', 'istiqomah871@man.com', 'ISTIQOMAH', NULL, '$2y$10$esfMfQWFLxH788ZAJtnygeiMuecIK48lu53GlClghsVbNb/BkNu8m', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(557, '1000000556', 'lidyaaudina930@man.com', 'LIDYA AUDINA', NULL, '$2y$10$GGTxR1q7t4EB9f848ObeDuK36usMy9/s7Qq0hFZP5P2rykrGhMXde', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(558, '1000000557', 'ma\'rifatinzahra190@man.com', 'MA\'RIFATIN ZAHRA', NULL, '$2y$10$F5KnZJW60hjBgZgYbMDDLeAvTEYjYorkbx1eyFtpc.eMkkCCmtE8e', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(559, '1000000558', 'melawatiputri429@man.com', 'MELAWATI PUTRI', NULL, '$2y$10$opgHLXevXKSlIxrih.gFVes6Ta/6uUFlLXC25ArBVhs.tHQ7hd2ZS', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(560, '1000000559', 'milajunitaslasih146@man.com', 'MILA JUNITA SLASIH', NULL, '$2y$10$yo/YPEOC2ZmubdA86M65Cum.n3ZKYXmxGWsPfBt4x0sZveBQI6JVK', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(561, '1000000560', 'mirnayanti58@man.com', 'MIRNA YANTI', NULL, '$2y$10$qXzi1Xo0OjZoo1mt1QppQ.OCNTYPdwP0ZW3RAqhYVrtRCUr//iJ12', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(562, '1000000561', 'nazirahusna788@man.com', 'NAZIRA HUSNA', NULL, '$2y$10$tLGYQfkSbMO8lPdXkAjh.u70A0j7MCLYGas1NjS9WMV9Um8Ajj6hm', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(563, '1000000562', 'nuraisyahborun901@man.com', 'NUR AISYAH BORU N', NULL, '$2y$10$ZR0cZhmXmXBVBABmH7Siee6uaBDO8gmEHbq1z7x64XiENuj4kqCi2', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(564, '1000000563', 'pinterezeki335@man.com', 'PINTE REZEKI', NULL, '$2y$10$z1XfawSf2ZlIeOYk0OqPzuRbJ6cV3o/yqk51lwcVNqNUUiP0.agA2', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(565, '1000000564', 'putridamayani946@man.com', 'PUTRI DAMAYANI', NULL, '$2y$10$GVvKL5YSFRAEmZQF4kjfh.0WeI./Z4V95hyZjschyraMnog2PX59i', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(566, '1000000565', 'raniapermataputri126@man.com', 'RANIA PERMATA PUTRI', NULL, '$2y$10$eGj3fw9/Ybavvp7GtzYswOhvrrO1AN.bo5AVggnAN8AAr8e28Maja', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(567, '1000000566', 'ruhda420@man.com', 'RUHDA', NULL, '$2y$10$DFrWWsuLUZwsiWgUm7NZZOqtYA6iC7xA78XrdTENvN/dCuTa0E5YS', 3, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(568, '1000000567', 'sarawidamelala820@man.com', 'SARAWIDA MELALA', NULL, '$2y$10$CconKp0mI0vQgqKpSiE1EO7.9uX/BWiwskuQIzFeN3gUaPP0Vz13K', 3, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(569, '1000000568', 'sariramadani455@man.com', 'SARI RAMADANI', NULL, '$2y$10$RCOrvpG4fzlBCoXCR2RRf.l1jZqYbDnzWhTHbn9mH2y3mkOFjLsxq', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(570, '1000000569', 'saufayarda448@man.com', 'SAUFA YARDA', NULL, '$2y$10$F2EZmCBYBVGuE5ELF1nqD.tDef5w3XqvIm5ql24moNCG7raIqv1oi', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(571, '1000000570', 'sitinurkhadijah491@man.com', 'SITI NUR KHADIJAH', NULL, '$2y$10$bXa9RWOG91tBA6pyYJwIieSWjPtEGdpsXiItvpWftAvaYrMf0TGpK', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(572, '1000000571', 'winnaufalmuhammad33@man.com', 'WIN NAUFAL MUHAMMAD', NULL, '$2y$10$DuZN74zmFoe1l/OFo5FGN.yr4sLL6eFbqkcnndGoFJzoTdvlQmJ86', 3, 5, 'L', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(573, '1000000572', 'ylmianafitri753@man.com', 'YLMIANA FITRI', NULL, '$2y$10$qOh5k1vM.BREaNkFcMm8ReKgqTdnQl6y.KdHoOTrQgxFt7sTYmve6', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(574, '1000000573', 'yowenibahgie563@man.com', 'YOWENI BAHGIE', NULL, '$2y$10$sipUulkwtyT6ChV6dHojaeda90fI.wem4AqsewpkEGsPUBM5enMBO', 3, 5, 'P', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(575, '1000000574', 'aldiansyahrizki272@man.com', 'ALDIANSYAH RIZKI', NULL, '$2y$10$7J0YW57Z.s8MnwqjA/pLe.rCoWOMIPsorKOTRXKOUNo/HAGpB.5kG', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599469, 1652599469, 0),
(576, '1000000575', 'alfisahri590@man.com', 'ALFI SAHRI', NULL, '$2y$10$WevjQ8hEaHQ8uRXDYAp4OeSwbDQjoS819uCId2EKqiF6f3TrsWWky', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(577, '1000000576', 'arjunaarisisara384@man.com', 'ARJUNA ARISISARA', NULL, '$2y$10$SyV1ZGzG.zVAhWybCuwYIeOBp7WkJXEGpYDWrZOBpKzFajPhT41k.', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(578, '1000000577', 'ayunisamahbengi820@man.com', 'AYU NISA MAHBENGI', NULL, '$2y$10$SEmVxe3Cczt2MmR0CAhuEeDDzt2VlRAL2tR7qzajYBv72zHpJ7jC.', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(579, '1000000578', 'bayupitraarlo123@man.com', 'BAYU PITRA ARLO', NULL, '$2y$10$lIZKnkZJSJAbTOGKRAfGwelB67zMLoGi.FhYNslCbyOrqNL2XC.gG', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(580, '1000000579', 'budicandra733@man.com', 'BUDI CANDRA', NULL, '$2y$10$SDCuYUxtqHiTOpOhpBrJmOic4Aocg/w8gvBdRB.SroAfPjPk9iyfm', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(581, '1000000580', 'dechitaismadiyani72@man.com', 'DECHITA ISMADIYANI', NULL, '$2y$10$NXUulOHhtN6mPF2W9HRPROGpfQsv2FqaABiQrKy/XgeJSBs.X7dye', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(582, '1000000581', 'desimahara284@man.com', 'DESI MAHARA', NULL, '$2y$10$IYkWEri2rZe6Sce5NJGYFOsx.jMbsm4h37lMQsNy3fBMl4gcVjf5G', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(583, '1000000582', 'devianggraini817@man.com', 'DEVI ANGGRAINI', NULL, '$2y$10$GKf9bjOdQVqEhgB2wgGQue1SQQsAj0GK63VuwANlYRp31jaXf8WOK', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(584, '1000000583', 'farisarahmadani62@man.com', 'FARISA RAHMADANI', NULL, '$2y$10$ist.99/KW0s/xc.KI2NtMefx1TBceG4s5oS5d6FQOkyigYwajbPfO', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(585, '1000000584', 'hairidami636@man.com', 'HAIRI DAMI', NULL, '$2y$10$gT8KNhvx0PNRf96XbTLOvusJkylMYJj6NcDDpnlRF1yRPnLAFIJhi', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(586, '1000000585', 'hajilmasturi612@man.com', 'HAJIL MASTURI', NULL, '$2y$10$7suoQjL8YpteuE4D9DWHu.wiwl83HRZIHOeY9OMVYw83KMQJb/bCC', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(587, '1000000586', 'husnulnisa530@man.com', 'HUSNUL NISA', NULL, '$2y$10$7Qb34mzDH5EtcOi0eiP85O3DmLKy..Ezq0TcuRqYCvnMzFcoq04Q2', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(588, '1000000587', 'isnaini906@man.com', 'ISNAINI', NULL, '$2y$10$sddPX89jhexOP9eL97.IQ.0fMYey2HShZrMxPZ.rGcQY1P3E/29H2', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(589, '1000000588', 'jahrasalsabila860@man.com', 'JAHRA SALSABILA', NULL, '$2y$10$nNSVyELv2fU1KE7VT9oX4.WF93CCmRGa.9JYr3w1xl.xjOTx36fWy', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(590, '1000000589', 'julianafitri4@man.com', 'JULIANA FITRI', NULL, '$2y$10$G/PhQawJjmnmrnmE04PJCOrKTFTW4hyctPsztGPWadXFi7fqVZr/G', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(591, '1000000590', 'kaifarizki435@man.com', 'KAIFA RIZKI', NULL, '$2y$10$8gVPdPOc312AL/hvUVw0ZuTT9umcxXsXNTf7RXF23IGSjniRy5LYu', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(592, '1000000591', 'maisarahsimehate607@man.com', 'MAISARAH SIMEHATE', NULL, '$2y$10$hgxVhr2xDzDkN1Ugen../eUvZ3pWD3TTji55o8TWxUuAx3eVOlBSy', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(593, '1000000592', 'mariah431@man.com', 'MARIAH', NULL, '$2y$10$ydMAZJQ0PBuKg/EX/G/2aO54K8wiKso3TFH8KGI22d0g2HhfCAPji', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(594, '1000000593', 'mhd.fahrizalkr800@man.com', 'MHD. FAHRIZAL KR', NULL, '$2y$10$HHjxEPLJfag1UVMa0y6pNurrxqXpwATMTBj9HZn3jfEQLGLyHT69m', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(595, '1000000594', 'mulyanaks739@man.com', 'MULYANA KS', NULL, '$2y$10$Z7/32IqOc98pP7sosvoUBOX2qiCSkAgv81WBf/TLTU3zafhRIIQFW', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(596, '1000000595', 'nabilatrisinteni76@man.com', 'NABILA TRI SINTENI', NULL, '$2y$10$qbqlRv8fxsJDSbQauK6uFuRUxvn22X584IPH5z.TGsxPuXZuOq5Fi', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599470, 1652599470, 0),
(597, '1000000596', 'nafhahsyasyasajidah493@man.com', 'NAFHAH SYASYA SAJIDAH', NULL, '$2y$10$r1RB1Ld42/FjDYjoW1854.g0Kudi9ZnJ4euFQc24Q37GjGdzArALu', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(598, '1000000597', 'nauvalariskaputra484@man.com', 'NAUVAL ARISKA PUTRA', NULL, '$2y$10$dqaN0NfeldBq2ja5PxzWS.Py63k98v6s4UiNRtiZfnqKBit3hw70a', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(599, '1000000598', 'nazaruddin755@man.com', 'NAZARUDDIN', NULL, '$2y$10$/39eKsP7HMmtAMkPV6CHyeh0m5IWkh6WhgkuUyu19hcT/vhVLpvM.', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(600, '1000000599', 'niaradeswita845@man.com', 'NIARA DESWITA', NULL, '$2y$10$A.ResEpM6.WPsocbxwpT7.wXeprWChMTsmD96qkIMH6f2LkuqueJq', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(601, '1000000600', 'nilawati864@man.com', 'NILA WATI', NULL, '$2y$10$mLxB8MMW5zT61sgS9.kqT.NQBglB9lG99x7RormmP6TcEWy4JsHAO', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(602, '1000000601', 'nurwahda933@man.com', 'NUR WAHDA', NULL, '$2y$10$HmVXlyePk29assjiQWmS9eA6f8p3/y04mLVGPPvIVQYAhxxhp0qNy', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(603, '1000000602', 'oktaputri654@man.com', 'OKTA PUTRI', NULL, '$2y$10$y87IasQNV4qT2w.zos6aZuIzflVtCC6IPkIB5Gc3ph2V3MywOAau2', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(604, '1000000603', 'rauzatulzannah158@man.com', 'RAUZATUL ZANNAH', NULL, '$2y$10$kbRq3y2bn5M7anOlsWGq2.l1f.Vt8zCTk3ToVRsmSY2tO7rsdKimS', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(605, '1000000604', 'reynaldi175@man.com', 'REYNALDI', NULL, '$2y$10$cVCfRAwh9G.gw0Ny/nmVe.Xa6WZOcXdAUNlgzncQzIsmmeeUdrZu6', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(606, '1000000605', 'ridhoalsadr936@man.com', 'RIDHO AL SADR', NULL, '$2y$10$RkOkt8JSM9b7du/ND7tnB.O8h2q67jPrCtFC/.RTeNNHzjfU7oBW2', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(607, '1000000606', 'riskinaputri41@man.com', 'RISKINA PUTRI', NULL, '$2y$10$QUjWbI56aOgTnQT1jCbp5eC1w79DYkpxVqij2ys6pYgeKaJisqv76', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(608, '1000000607', 'sabri664@man.com', 'SABRI', NULL, '$2y$10$QuIBwV1avNmBqo/clnI9IuNVz/vBaKvkZt9XUKhir.cS4IZDsvpta', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(609, '1000000608', 'salwani427@man.com', 'SALWANI', NULL, '$2y$10$6HoL71BsiZKqoCNjVjpyIO283tDoz/xKJZ0l00wovnobgd2b/D1d2', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(610, '1000000609', 'sandipujaga489@man.com', 'SANDI PUJAGA', NULL, '$2y$10$Os78ixNjCzUjFw9i8bEDJe2UdT9Vz1B7oFWet/lCZ4blM/4WN7RKa', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(611, '1000000610', 'sarianjani610@man.com', 'SARI ANJANI', NULL, '$2y$10$mQREI3mcLZFXn1DM671xwugLXRs8vO6Ot4DbVwGxL8SbTCHZj0BK.', 3, 6, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(612, '1000000611', 't.raflyyadyansyah111@man.com', 'T. RAFLY YADYANSYAH', NULL, '$2y$10$gcP2VbyNmSRx6/H4OITDseuxI.W2.lNWrh21UuIRi8eMxb.s0Nuqm', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(613, '1000000612', 'zikriwanpinte868@man.com', 'ZIKRI WAN PINTE', NULL, '$2y$10$buDAcPbs/Sd4udx/bDWjrevCqWEfFhwthUviw6Ss/KqpPMvtdE4FW', 3, 6, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(614, '1000000613', 'afikahsahira717@man.com', 'AFIKAH SAHIRA', NULL, '$2y$10$vKsISwTMTh7s4vcJSv.bn.19jTlODeqzfFiIoBatP4yxro7mlv20G', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(615, '1000000614', 'afriansyah1@man.com', 'AFRIANSYAH', NULL, '$2y$10$HaOdQ/71I81rADXWzuoOfuyPKzK4cA4UccSdm4gSl.63ZvMBvOgMO', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(616, '1000000615', 'ahmadnandakuara414@man.com', 'AHMAD NANDA KUARA', NULL, '$2y$10$fUWAdZ.d8pX/aPawoq3oG.jJH4CgOEJdW7acZYczYjaWjRk/758wG', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(617, '1000000616', 'ahyamaulana837@man.com', 'AHYA MAULANA', NULL, '$2y$10$y/zEXBY4pGtSQiPVGBAV0eLEKMTl.UMpHvehRAkYhIvhaXVxHZ/96', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(618, '1000000617', 'ahyaradha178@man.com', 'AHYAR ADHA', NULL, '$2y$10$OrDMfXo1OCIBNCfvFiGcdu6aJokEECebugnQJ5SzvzHIVxdmYfXxe', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599471, 1652599471, 0),
(619, '1000000618', 'alwansyah147@man.com', 'AL WANSYAH', NULL, '$2y$10$sHJaqLNpNtrA6YpWpsi6/OzwmwXYNCHzZ72DM9ZOkEKOZEfV1CZ9K', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(620, '1000000619', 'apindaulfa362@man.com', 'APINDA ULFA', NULL, '$2y$10$xyPWfIPSoF47gbf/wWPEK.8BSLuG/V3Kt69hHg9F/1joTSJSXMKvi', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(621, '1000000620', 'azikiatun593@man.com', 'AZIKIATUN', NULL, '$2y$10$rJqhm0pyGt0Jb//XoK5H0eo8v.RLuv8KCsYmON5p5EvOuHPAlIJqG', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(622, '1000000621', 'cutintannuraini355@man.com', 'CUT INTAN NURAINI', NULL, '$2y$10$g0LIoHMjIQhipzONHVzd0OtUX3QnaiNVKtZv/v7sF65VsRgEsOeke', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(623, '1000000622', 'dainifitri295@man.com', 'DAINI FITRI', NULL, '$2y$10$1KjZbUj8BvB1TfneUIFTQusgP3ZzzNKV1qGvNa8gByxOwF.VEq2iO', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(624, '1000000623', 'faridiwahdi97@man.com', 'FARIDI WAHDI', NULL, '$2y$10$DADdmJwYuxA/Kkiwx3g21.c4chv3NdaI6TXTyYEb3osxcBLJfTiiS', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(625, '1000000624', 'ferimardiaqimi350@man.com', 'FERI MARDI AQIMI', NULL, '$2y$10$TWFB8zVF95nAPwsGCqvDhOqf242uepB2znd8bYHRUAsx3lsI.lcUO', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(626, '1000000625', 'frihasupiantirini494@man.com', 'FRIHA SUPIANTI RINI', NULL, '$2y$10$x2rwXdGg/m9t/xLkOqUgwOrsRDOhdSjKbMRMTeiyruZwSe3cwXv7S', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(627, '1000000626', 'furqan727@man.com', 'FURQAN ', NULL, '$2y$10$qmTJq5NHVsH4G.UEY042/e6qdjaMuegiQJmYM.TSUhuVZdaEG78hm', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(628, '1000000627', 'hariansyah915@man.com', 'HARIANSYAH', NULL, '$2y$10$N/VphaYH3c9dsSbF0UJucuxFE/R3E1rj22MkG2WVJNa2RhRocmk1u', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(629, '1000000628', 'ilhamfahmi590@man.com', 'ILHAM FAHMI', NULL, '$2y$10$OHhB6aTybABUzOx2taaWquGwYVVCP6yAFWFacFQT5HPzeAk2kTBJe', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(630, '1000000629', 'itawarni454@man.com', 'ITA WARNI', NULL, '$2y$10$y6roLneF.hsEzYNAmxaxae7S8p9uqhZDjD0CLvNTMioNYJIzfSRCu', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(631, '1000000630', 'iwanramadhan136@man.com', 'IWAN RAMADHAN', NULL, '$2y$10$Co3JsWuSgOrOgFoPys0n.uqwpnA/rMYQf9/YLaTNM7N5hnuJ268Ke', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(632, '1000000631', 'kemalaintan422@man.com', 'KEMALA INTAN', NULL, '$2y$10$FRj26zOnd7b6HB.KX/3PFeVgO0E9yzf51HFS5Bv3IPQT1kATJYFBm', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(633, '1000000632', 'khairuladha38@man.com', 'KHAIRUL ADHA', NULL, '$2y$10$1PNBwpvpIs/1WT8sMlstgORvPGv5zSTwHIsVpvy33h7GvTtDGp9yq', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(634, '1000000633', 'lindakarma800@man.com', 'LINDA KARMA', NULL, '$2y$10$WKrTBmiM3oX0jwFFNSRy4uDBZt3643BcrLL27niWOeba6rta/dXgi', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(635, '1000000634', 'mhd.fadhli848@man.com', 'MHD. FADHLI', NULL, '$2y$10$CivHP0BLCWEvRW.x0iDe7e9p8ucueLwHrWIgCkEQOg72bOVHnh8lC', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(636, '1000000635', 'milwanaprilian584@man.com', 'MILWAN APRILIAN', NULL, '$2y$10$63qsEk/k7RKfX5vzIQNtVOgoBpoK0v7ZOcTqmPeAps6QN9vnxLMMy', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(637, '1000000636', 'mississaprida540@man.com', 'MISSIS SAPRIDA', NULL, '$2y$10$oUu4TkoLkumAOWSUb1C/.uuqSzYJSfdKdpGbga.qNryEk6B5drCz6', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(638, '1000000637', 'mushab587@man.com', 'MUSHAB', NULL, '$2y$10$JsqdaTDmVZ6vPACYrtoMk.Oe16kD1wDMMUcOUvT7GkFTxAPys/gre', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(639, '1000000638', 'nuraini748@man.com', 'NURAINI ', NULL, '$2y$10$bTXan0w99XIBlP4pPt3S5OTWKg9zQfMWB0jCyFFm6cZ38GjXcR0iK', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599472, 1652599472, 0),
(640, '1000000639', 'rahmatteniro884@man.com', 'RAHMAT TENIRO', NULL, '$2y$10$zY33oBzh7h/jBJPQxQxMc.6nsi1pK4eumN3AXhAnRl9xF8wLwJv2y', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599473, 1652599473, 0),
(641, '1000000640', 'rahmatsyah727@man.com', 'RAHMATSYAH', NULL, '$2y$10$cj0md7ZuYMK2b2tAlxayA.KiL5wQbWFb9ldtdyiJyyyTfgIn1g/KW', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599473, 1652599473, 0),
(642, '1000000641', 'rendi782@man.com', 'RENDI', NULL, '$2y$10$owualixGFqnaanBTWdGVau2s9UqDTQqe1/XnuQ9YKDziguyZ1.xgq', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599473, 1652599473, 0),
(643, '1000000642', 'sahrial565@man.com', 'SAHRIAL', NULL, '$2y$10$m6hIOaqz42OcxkfVO1ffTelU2kvGozifHdielhXXZLRTzvEGof11a', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599473, 1652599473, 0),
(644, '1000000643', 'salwanditebe245@man.com', 'SALWANDI TEBE', NULL, '$2y$10$MNrv3L/gPKnfbKM5248YAuaPEDKg7RJBXciHAaGJCtmX1Zx6K6tBe', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599473, 1652599473, 0),
(645, '1000000644', 'selfiyuliana820@man.com', 'SELFI YULIANA', NULL, '$2y$10$ZhQuFYMm3yqHKxyZFw.KL.A/tr0z7MJTLzzJXt4Ky5TpJDkiz55wC', 3, 7, 'P', NULL, NULL, NULL, 1, 5, 1652599473, 1652599473, 0),
(646, '1000000645', 'supianda659@man.com', 'SUPIANDA', NULL, '$2y$10$ZKlYgFzqsv7rKuL7qoZgROaXk6zli4w3AFGD.4WeVtYQUbbs7N8zO', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599473, 1652599473, 0),
(647, '1000000646', 'yassar698@man.com', 'YASSAR', NULL, '$2y$10$FWDkXD1Py.HRY7DeNwBQaesfB0UrXwS6lKQZchj7ow/lqZClSJche', 3, 7, 'L', NULL, NULL, NULL, 1, 5, 1652599473, 1652599473, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjectdepartements`
--

CREATE TABLE `subjectdepartements` (
  `id` int(11) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'matematika wajib', 1, 1652599098, 1652599098, 0),
(2, 'matematika peminatan', 1, 1652599098, 1652599098, 0),
(3, 'fisika', 1, 1652599098, 1652599098, 0),
(4, 'lintas minat fisika', 1, 1652599098, 1652599098, 0),
(5, 'kimia', 1, 1652599098, 1652599098, 0),
(6, 'biologi', 1, 1652599098, 1652599098, 0),
(7, 'lintas minat biologi', 1, 1652599098, 1652599098, 0),
(8, 'lintas minat kimia', 1, 1652599098, 1652599098, 0),
(9, 'sejarah indonesia', 1, 1652599098, 1652599098, 0),
(10, 'sejarah peminatan', 1, 1652599098, 1652599098, 0),
(11, 'sejarah kebudayaan islam', 1, 1652599098, 1652599098, 0),
(12, 'alquran hadist', 1, 1652599098, 1652599098, 0),
(13, 'aqidah akhlak', 1, 1652599098, 1652599098, 0),
(14, 'fiqih', 1, 1652599098, 1652599098, 0),
(15, 'bahasa inggris', 1, 1652599098, 1652599098, 0),
(16, 'bahasa indonesia', 1, 1652599098, 1652599098, 0),
(17, 'bahasa arab', 1, 1652599098, 1652599098, 0),
(18, 'ekonomi', 1, 1652599098, 1652599098, 0),
(19, 'lintas minat ekonomi', 1, 1652599098, 1652599098, 0),
(20, 'sosiologi', 1, 1652599098, 1652599098, 0),
(21, 'lintas minat sosiologi', 1, 1652599098, 1652599098, 0),
(22, 'geografi', 1, 1652599098, 1652599098, 0),
(23, 'seni budaya', 1, 1652599098, 1652599098, 0),
(24, 'prakarya', 1, 1652599098, 1652599098, 0),
(25, 'penjas', 1, 1652599098, 1652599098, 0),
(26, 'pkn', 1, 1652599098, 1652599098, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjectteachers`
--

CREATE TABLE `subjectteachers` (
  `id` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Kepala Madrasah', 1, 1652599098, 1652599098, 0),
(2, 'Wakamad Kurikulum', 1, 1652599098, 1652599098, 0),
(3, 'Wakamad Kesiswaan', 1, 1652599098, 1652599098, 0),
(4, 'Wakamad Humas', 1, 1652599098, 1652599098, 0),
(5, 'Wakamad Sarpras', 1, 1652599098, 1652599098, 0),
(6, 'Kepala Perpustakaan', 1, 1652599098, 1652599098, 0),
(7, 'Kepala Laboratorium IPA', 1, 1652599098, 1652599098, 0),
(8, 'Kepala Laboratorium Komputer', 1, 1652599098, 1652599098, 0),
(9, 'Pembina UKS', 1, 1652599098, 1652599098, 0),
(10, 'Pembina Olah Raga', 1, 1652599098, 1652599098, 0),
(11, 'Pembina PIK KRR', 1, 1652599098, 1652599098, 0),
(12, 'Koord BK', 1, 1652599098, 1652599098, 0),
(13, 'Pembina Osim', 1, 1652599098, 1652599098, 0),
(14, 'Pembina Pramuka', 1, 1652599098, 1652599098, 0),
(15, 'Pembina Rohis', 1, 1652599098, 1652599098, 0),
(16, 'Bendahara Komite', 1, 1652599098, 1652599098, 0),
(17, 'Guru Madya', 1, 1652599098, 1652599098, 0),
(18, 'Piket', 1, 1652599098, 1652599098, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nip` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `dob` date NOT NULL,
  `privilegeId` int(11) NOT NULL,
  `rankId` int(11) DEFAULT NULL,
  `rankTmt` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `educationLevelId` int(11) DEFAULT NULL,
  `schoolId` int(11) DEFAULT NULL,
  `majorId` int(11) DEFAULT NULL,
  `finishEducationLevel` date DEFAULT NULL,
  `mutation` date DEFAULT NULL,
  `ipAddress` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `isPn` tinyint(1) NOT NULL,
  `password` varchar(60) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `email`, `nip`, `name`, `gender`, `dob`, `privilegeId`, `rankId`, `rankTmt`, `groupId`, `educationLevelId`, `schoolId`, `majorId`, `finishEducationLevel`, `mutation`, `ipAddress`, `about`, `image`, `status`, `isPn`, `password`, `address`, `phone`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'renoldi@admin.com', 'qvobehl8152', 'super admin', 'L', '2015-03-08', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'login', 'assets/avatar.png', 1, 1, '$2y$10$ScoZY6cVmAm6UGAsy1f7gO9ZEdkx7rgO0t0mIBq9FHZbcRG619cpm', NULL, NULL, 1652599098, 1652599121, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachertasks`
--

CREATE TABLE `teachertasks` (
  `id` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `taskId` int(11) NOT NULL,
  `tmtTask` date NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `deletedAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `educationlevels`
--
ALTER TABLE `educationlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_subjectId_foreign` (`subjectId`),
  ADD KEY `exams_classId_foreign` (`classId`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `hoomrooms`
--
ALTER TABLE `hoomrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoomrooms_roomId_foreign` (`roomId`),
  ADD KEY `hoomrooms_classId_foreign` (`classId`),
  ADD KEY `hoomrooms_teacherId_foreign` (`teacherId`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `resultexams`
--
ALTER TABLE `resultexams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultexams_studentId_foreign` (`studentId`),
  ADD KEY `resultexams_examId_foreign` (`examId`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `rooms_departmentId_foreign` (`departmentId`);

--
-- Indexes for table `scheduleexams`
--
ALTER TABLE `scheduleexams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheduleexams_subjectId_foreign` (`subjectId`),
  ADD KEY `scheduleexams_classId_foreign` (`classId`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `students_roomId_foreign` (`roomId`),
  ADD KEY `students_classId_foreign` (`classId`),
  ADD KEY `students_privilegeId_foreign` (`privilegeId`);

--
-- Indexes for table `subjectdepartements`
--
ALTER TABLE `subjectdepartements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjectDepartements_departmentId_foreign` (`departmentId`),
  ADD KEY `subjectDepartements_subjectId_foreign` (`subjectId`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjectteachers`
--
ALTER TABLE `subjectteachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjectteachers_teacherId_foreign` (`teacherId`),
  ADD KEY `subjectteachers_subjectId_foreign` (`subjectId`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `teachers_privilegeId_foreign` (`privilegeId`),
  ADD KEY `teachers_rankId_foreign` (`rankId`),
  ADD KEY `teachers_groupId_foreign` (`groupId`),
  ADD KEY `teachers_educationLevelId_foreign` (`educationLevelId`),
  ADD KEY `teachers_schoolId_foreign` (`schoolId`),
  ADD KEY `teachers_majorId_foreign` (`majorId`);

--
-- Indexes for table `teachertasks`
--
ALTER TABLE `teachertasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TeacherTasks_teacherId_foreign` (`teacherId`),
  ADD KEY `TeacherTasks_taskId_foreign` (`taskId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `educationlevels`
--
ALTER TABLE `educationlevels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hoomrooms`
--
ALTER TABLE `hoomrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resultexams`
--
ALTER TABLE `resultexams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `scheduleexams`
--
ALTER TABLE `scheduleexams`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT for table `subjectdepartements`
--
ALTER TABLE `subjectdepartements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subjectteachers`
--
ALTER TABLE `subjectteachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachertasks`
--
ALTER TABLE `teachertasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_classId_foreign` FOREIGN KEY (`classId`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `exams_subjectId_foreign` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `hoomrooms`
--
ALTER TABLE `hoomrooms`
  ADD CONSTRAINT `hoomrooms_classId_foreign` FOREIGN KEY (`classId`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `hoomrooms_roomId_foreign` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `hoomrooms_teacherId_foreign` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `resultexams`
--
ALTER TABLE `resultexams`
  ADD CONSTRAINT `resultexams_examId_foreign` FOREIGN KEY (`examId`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `resultexams_studentId_foreign` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_departmentId_foreign` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`);

--
-- Constraints for table `scheduleexams`
--
ALTER TABLE `scheduleexams`
  ADD CONSTRAINT `scheduleexams_classId_foreign` FOREIGN KEY (`classId`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `scheduleexams_subjectId_foreign` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_classId_foreign` FOREIGN KEY (`classId`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `students_privilegeId_foreign` FOREIGN KEY (`privilegeId`) REFERENCES `privileges` (`id`),
  ADD CONSTRAINT `students_roomId_foreign` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `subjectdepartements`
--
ALTER TABLE `subjectdepartements`
  ADD CONSTRAINT `subjectDepartements_departmentId_foreign` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `subjectDepartements_subjectId_foreign` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `subjectteachers`
--
ALTER TABLE `subjectteachers`
  ADD CONSTRAINT `subjectteachers_subjectId_foreign` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `subjectteachers_teacherId_foreign` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_educationLevelId_foreign` FOREIGN KEY (`educationLevelId`) REFERENCES `educationlevels` (`id`),
  ADD CONSTRAINT `teachers_groupId_foreign` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `teachers_majorId_foreign` FOREIGN KEY (`majorId`) REFERENCES `majors` (`id`),
  ADD CONSTRAINT `teachers_privilegeId_foreign` FOREIGN KEY (`privilegeId`) REFERENCES `privileges` (`id`),
  ADD CONSTRAINT `teachers_rankId_foreign` FOREIGN KEY (`rankId`) REFERENCES `ranks` (`id`),
  ADD CONSTRAINT `teachers_schoolId_foreign` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`);

--
-- Constraints for table `teachertasks`
--
ALTER TABLE `teachertasks`
  ADD CONSTRAINT `TeacherTasks_taskId_foreign` FOREIGN KEY (`taskId`) REFERENCES `tasks` (`id`),
  ADD CONSTRAINT `TeacherTasks_teacherId_foreign` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
