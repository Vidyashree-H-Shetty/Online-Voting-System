-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 03:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_details` text DEFAULT NULL,
  `candidate_photo` text DEFAULT NULL,
  `inserted_by` varchar(255) DEFAULT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `election_id`, `candidate_name`, `candidate_details`, `candidate_photo`, `inserted_by`, `inserted_on`) VALUES
(17, 786, 'Pavitra.C', ' Pavitra is a passionate leader with a background in public administration. He has worked extensively in community development projects, focusing on education and youth empowerment. ', '../assert/images/candidate_photo/50848630498_95993782904F2.jpg', 'Admin', '2024-11-16'),
(18, 786, 'Rahul', 'Rahul is a business strategist with a proven track record in fostering economic growth. He intends to boost local businesses, provide job opportunities, and work towards economic resilience. ', '../assert/images/candidate_photo/48921623377_74759553510M2.png', 'Admin', '2024-11-16'),
(19, 786, 'David Smith', 'David is a former teacher who understands the challenges facing our education system. He is dedicated to improving school facilities, increasing teacher salaries, and integrating technology into classrooms to enhance learning experiences for students.', '../assert/images/candidate_photo/52785268489_11297795012person2.jpg', 'Admin', '2024-11-16'),
(20, 786, 'Ranjitha', 'Ranjitha is an experienced entrepreneur and a staunch advocate for small businesses. He aims to simplify regulations, provide grants to local startups, and create mentorship programs to support budding entrepreneurs. ', '../assert/images/candidate_photo/99094364099_96770048074person4.jpg', 'Admin', '2024-11-16'),
(22, 787, 'Darshan Bhat', 'Darshan Bhat is a retired police officer who is passionate about public safety and community engagement.', '../assert/images/candidate_photo/37185468999_70187977895M1.jpg', 'Admin', '2024-11-16'),
(23, 787, 'Aisha', 'Aisha is a tech innovator specializing in smart city solutions. She aims to harness technology to improve municipal services, reduce traffic congestion, and introduce data-driven methods to make governance more efficient.', '../assert/images/candidate_photo/63831754582_40007498717person3.jpg', 'Admin', '2024-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(11) NOT NULL,
  `election_topic` varchar(255) DEFAULT NULL,
  `no_of_candidates` int(11) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `inserted_by` varchar(255) DEFAULT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `election_topic`, `no_of_candidates`, `starting_date`, `ending_date`, `status`, `inserted_by`, `inserted_on`) VALUES
(786, 'President', 4, '2024-11-15', '2024-11-30', 'Active', 'Admin', '2024-11-16'),
(787, 'Vice President', 2, '2024-11-01', '2025-02-28', 'Active', 'Admin', '2024-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `user_id`, `otp_code`, `created_at`) VALUES
(1, 25, '332790', '2024-07-11 14:00:40'),
(2, 26, '641351', '2024-07-11 14:02:05'),
(3, 27, '572876', '2024-07-11 14:27:07'),
(4, 28, '419458', '2024-07-11 14:28:38'),
(5, 29, '140217', '2024-07-11 14:45:46'),
(6, 30, '636324', '2024-07-11 14:55:33'),
(7, 31, '689236', '2024-07-11 15:00:21'),
(8, 32, '627429', '2024-07-11 15:03:57'),
(9, 33, '260063', '2024-07-11 15:14:57'),
(10, 34, '812392', '2024-07-11 15:16:51'),
(11, 35, '753838', '2024-07-11 15:18:08'),
(12, 36, '304402', '2024-07-11 16:24:27'),
(13, 37, '373732', '2024-07-11 16:43:45'),
(14, 38, '345446', '2024-07-11 17:34:20'),
(15, 39, '512900', '2024-07-11 17:38:59'),
(16, 40, '330301', '2024-07-11 17:51:54'),
(17, 43, '555766', '2024-07-11 18:08:53'),
(18, 44, '382416', '2024-07-11 18:42:04'),
(19, 45, '926684', '2024-07-11 18:43:48'),
(20, 46, '435725', '2024-07-11 18:56:30'),
(21, 47, '549975', '2024-07-11 19:12:32'),
(22, 48, '976868', '2024-07-11 19:29:30'),
(23, 49, '562738', '2024-07-11 19:32:52'),
(24, 50, '827836', '2024-07-11 19:37:40'),
(25, 51, '263751', '2024-07-11 20:08:10'),
(26, 52, '181327', '2024-07-11 20:11:41'),
(27, 53, '121172', '2024-07-11 20:12:13'),
(28, 54, '692747', '2024-07-11 20:13:01'),
(29, 55, '453462', '2024-07-11 20:30:34'),
(30, 56, '118193', '2024-07-11 20:37:04'),
(31, 57, '589703', '2024-07-12 04:24:48'),
(32, 58, '469325', '2024-07-12 04:25:58'),
(33, 59, '625254', '2024-07-12 04:29:23'),
(34, 60, '986495', '2024-07-12 04:35:18'),
(35, 61, '270772', '2024-07-12 04:37:37'),
(36, 62, '517745', '2024-07-12 05:19:37'),
(37, 63, '929727', '2024-07-12 05:22:16'),
(38, 64, '198049', '2024-07-12 05:23:34'),
(39, 65, '440385', '2024-07-12 10:04:20'),
(40, 66, '235974', '2024-07-12 10:06:26'),
(41, 67, '202234', '2024-07-12 10:17:55'),
(42, 68, '240418', '2024-07-12 10:31:46'),
(43, 69, '756361', '2024-07-12 10:35:28'),
(44, 70, '272502', '2024-07-12 10:52:28'),
(45, 71, '488760', '2024-07-12 10:54:55'),
(46, 72, '467010', '2024-07-12 12:17:46'),
(47, 73, '712330', '2024-07-12 12:19:02'),
(48, 74, '435928', '2024-07-12 12:41:14'),
(49, 75, '766101', '2024-07-12 19:28:21'),
(50, 76, '555163', '2024-07-12 19:29:49'),
(51, 77, '226296', '2024-07-12 19:31:31'),
(52, 78, '397812', '2024-07-12 19:38:03'),
(53, 79, '247241', '2024-07-14 18:34:15'),
(54, 80, '162355', '2024-07-16 12:28:39'),
(55, 81, '486910', '2024-07-17 19:28:22'),
(56, 82, '992759', '2024-07-18 07:36:45'),
(57, 83, '362595', '2024-07-18 07:38:43'),
(58, 84, '379943', '2024-07-20 13:09:26'),
(59, 85, '762182', '2024-07-20 13:18:42'),
(60, 86, '943404', '2024-07-20 13:26:44'),
(61, 87, '233964', '2024-07-22 09:02:15'),
(62, 88, '887732', '2024-07-22 09:03:01'),
(63, 89, '804935', '2024-07-23 11:16:29'),
(64, 90, '460957', '2024-08-19 15:06:43'),
(65, 91, '393766', '2024-08-20 06:55:39'),
(66, 92, '977339', '2024-11-16 11:20:36'),
(67, 93, '690622', '2024-11-16 11:42:53'),
(68, 94, '406026', '2024-11-16 11:55:35'),
(69, 95, '393775', '2024-11-16 11:56:28'),
(70, 96, '771844', '2024-11-16 14:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `aadhar_no` varchar(45) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `aadhar_no`, `password`, `user_role`, `is_verified`, `created_at`, `email`) VALUES
(94, 'Vidya', '9876543210', 'b79aca2251469e626132a96ade2e5582d50b588e', 'Voter', 1, '2024-11-16 11:55:59', 'vidyashreehshetty2917@gmail.com'),
(95, 'Suhas', '0123456789', '41a782a050d3c06ee42dee8592e3e5b129c9e7f5', 'Voter', 1, '2024-11-16 11:56:53', 'vidyashreehshetty2917@gmail.com'),
(96, 'Admin', '982641447192', 'a4e49ab11160b7ca147616f583f9602c65a15cdb', 'Admin', 1, '2024-11-16 14:12:55', 'suhasgowda1820@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `votings`
--

CREATE TABLE `votings` (
  `id` int(11) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `voters_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) NOT NULL,
  `vote_date` date DEFAULT NULL,
  `vote_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votings`
--

INSERT INTO `votings` (`id`, `election_id`, `voters_id`, `candidate_id`, `vote_date`, `vote_time`) VALUES
(1, 781, 67, 5, '2024-07-12', '2009-11-11 18:30:00'),
(2, 781, 68, 6, '2024-07-12', '0000-00-00 00:00:00'),
(3, 781, 80, 6, '2024-07-16', '0000-00-00 00:00:00'),
(4, 782, 81, 7, '2024-07-17', '0000-00-00 00:00:00'),
(5, 782, 85, 7, '2024-07-20', '0000-00-00 00:00:00'),
(6, 782, 89, 8, '2024-07-23', '0000-00-00 00:00:00'),
(8, 784, 91, 12, '2024-08-20', '0000-00-00 00:00:00'),
(9, 785, 91, 16, '2024-08-20', '0000-00-00 00:00:00'),
(10, 786, 94, 18, '2024-11-16', '0000-00-00 00:00:00'),
(11, 787, 94, 23, '2024-11-16', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votings`
--
ALTER TABLE `votings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=788;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `votings`
--
ALTER TABLE `votings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
