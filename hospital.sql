-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2021 at 10:27 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `id` int(254) NOT NULL,
  `doctor` varchar(200) NOT NULL,
  `specialization` int(200) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `date-time` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`id`, `doctor`, `specialization`, `hospital`, `date-time`, `timestamp`, `user_id`) VALUES
(1, '', 0, '', '', '2021-10-01 10:41:13', 0),
(2, 'abc', 12, '567', 'nm', '2021-10-10 21:37:21', 123),
(3, '2', 2, '2', '2021-10-07T09:11', '2021-10-24 03:38:29', 12),
(4, '1', 2, '2', '2021-10-07T02:39', '2021-10-29 06:09:05', 12);

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`id`, `name`, `location`) VALUES
('1', 'colombo', 'colombo'),
('2', 'nugegoda', 'nugegoda'),
('3', 'aluthgama', 'aluthgama'),
('4', 'mathara', 'mathara'),
('5', 'kandy', 'kandy'),
('', '', ''),
('1', 'test name', 'test location'),
('1', 'test name', 'test location'),
('1', 'test name', 'test location'),
('1', 'test name', 'test location'),
('1', 'test name', 'test location');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `call` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `call`, `message`, `timestamp`) VALUES
(1, 'test name', 'testtest@gmail.com', '0768755787', 'test message', '2021-10-21 12:06:20'),
(2, 'test name', 'testtest@gmail.com', '0768755787', 'test message', '2021-10-21 15:34:03'),
(3, 'test name', 'testtest@gmail.com', '0768755787', 'test message', '2021-10-21 15:36:49'),
(4, 'test name', 'testtest@gmail.com', '0768755787', 'test message', '2021-10-21 15:38:02'),
(5, 'test name', 'testtest@gmail.com', '0768755787', 'test message', '2021-10-27 13:33:57'),
(6, 'null', 'savindupasingtha@gmail.com', '00000', 'kkkkkkkkkkkkk', '2021-10-28 16:44:17'),
(7, 'savindup', 'savindupasingtha@gmail.com', '0768755787', '555555555555', '2021-10-28 16:48:46'),
(8, 'savindupasingtha@gmail.com', 'savindupasingtha@gmail.com', '0768755787', 'savindu pasintha', '2021-10-29 02:34:55'),
(9, 'kamal', 'kamal@gmail.com', '078755787', 'mn', '2021-10-29 03:12:51'),
(10, 'nimal', 'nimal@gmail.com', '00000', 'jjjjjjjjjjjjjjjjj', '2021-10-29 03:59:20'),
(11, 'test1p_repo', 'kkkkk@gamil.com', '55454545', 'jjjjjjjjjjjjj', '2021-10-29 04:02:13'),
(12, 'nimal', 'd@gmail.com', '0788787878', 'savindupasintha', '2021-10-29 04:06:04'),
(13, 'mm', 'mohomedkalif@gmail.com', '7788', 'kkkkkk', '2021-10-29 05:16:55'),
(14, 'pp', 'pp@gmail.com', '99', 'pp', '2021-10-29 05:21:35'),
(15, 'pp', 'pp@gmail.com', '99', 'pp', '2021-10-29 05:22:07'),
(16, 'pp', 'pp@gmail.com', '99', 'pp', '2021-10-29 05:22:09'),
(17, 'test1p_repo', 'ye@gmail.com', '999', 'kkkkkk', '2021-10-29 05:23:52'),
(18, 'test1p_repo', 'ye@gmail.com', '999', 'kkkkkk', '2021-10-29 05:24:58'),
(19, 'savindu', 'gggggggg@gmail.com', '7887887', 'kkkkkkkkkkkk', '2021-10-29 05:25:39'),
(20, 'kk', 'kamal@gmail.com', '787', 'message', '2021-10-29 05:28:03'),
(21, 'savindu pasintha', 'kkkkk@gamil.com', '0788787878', 'kkk', '2021-10-29 06:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `hospital` varchar(200) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `call` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `position`, `hospital`, `specialization`, `call`) VALUES
('0', 'test name', 'test position', 'test hospital', 'test spc', '0768755787'),
('D1', 'Dr . Savindu Pasingtha', 'ALLERGY SPECIALIST', 'Colombo', 'ALLERGY SPECIALIST', '0768755787'),
('D2', 'DR RAJEEVA R. PIERIS - NEW', 'CARDIAOTHORACIC SURGEON', 'Colombo', 'CARDIAOTHORACIC SURGEON', '0768755787'),
('D3', 'DR(MRS) N.L. AMARASENA', ' CARDIOLOGIST', 'Colombo', 'CARDIOLOGIST', '0768755787'),
('D4', 'DR AMITHA FERNANDO', 'CHEST PHYSICIAN', 'Colombo', 'CHEST PHYSICIAN', '0768755787');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_job_registration`
--

CREATE TABLE `doctor_job_registration` (
  `id` int(100) NOT NULL,
  `first` varchar(30) NOT NULL,
  `last` varchar(10) NOT NULL,
  `call` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `collage` varchar(200) NOT NULL,
  `digree` varchar(200) NOT NULL,
  `medical_cetificate_id` varchar(200) NOT NULL,
  `specialize` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_job_registration`
--

INSERT INTO `doctor_job_registration` (`id`, `first`, `last`, `call`, `email`, `city`, `collage`, `digree`, `medical_cetificate_id`, `specialize`, `timestamp`) VALUES
(1, 'Dr savindu', 'pasintha', '0754015676', 'savindu@gmail.com', 'colombo', 'ICBT campus', 'MSC(hons) ALLERGY SPECIALIST', '11414c', 'ALLERGY SPECIALIST', '2021-10-01 03:32:21'),
(2, 'DR AMITHA', 'Fernando', '0754015675', 'amithau@gmail.com', 'colombo', 'ICBT campus', 'MSC(hons) CHEST PHYSICIAN', '11413c', 'CHEST PHYSICIAN', '2021-10-01 03:33:39'),
(3, 'DR(MRS) N L ', 'AMARASENA', '0754015677', 'amarasena@gmail.com', 'colombo', 'ICBT campus', 'MSC(hons) CARDIOLOGIST', '11415c', ' CARDIOLOGIST', '2021-10-01 03:25:52'),
(4, 'DR RAJEEVA R.', ' PIERIS - ', '075401545', 'pieris@gmail.com', 'Colombo', 'ICBT Campus', 'MSC(hons) CARDIAOTHORACIC SURGEON', '12125s', 'CARDIAOTHORACIC SURGEON', '2021-10-01 03:36:39'),
(7, 'savindu', 'pasintha', '0768755787', 'savindu@gmail.com', 'aluthgama', 'ICBT Campus', 'MSC PHARMALOGY ', '14542M', 'SUERGERY', '2021-10-01 09:21:51'),
(8, 'savindu', 'pasintha', '0768755787', 'savindupasingtha@gmail.com', 'city', 'icbt', 'hh', '11111', 'kk', '2021-10-29 06:03:41'),
(9, 'savindu', 'pasintha', '0768755787', 'savindupasingtha@gmail.com', 'city', 'icbt', 'hh', '11111', 'kk', '2021-10-29 06:05:10'),
(10, 'savindu', 'pasintha', '0768755787', 'savindupasingtha@gmail.com', 'Aluthgama', 'icbt', 'pp', '11111', 'parmacilogy', '2021-10-29 06:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `timestamp`) VALUES
('ddd', 'dd', '2021-10-13 10:10:31'),
('kk', 'aaa', '2021-10-13 10:13:44'),
('mm', 'mm', '2021-10-13 10:21:25'),
('oo', 'pp', '2021-10-29 05:05:42'),
('pasi@gmail.com', 'password123', '2021-10-02 05:35:45'),
('pllpjjjllpasi@gmail.com', 'password123', '2021-10-10 14:02:10'),
('ppjjjllpasi@gmail.com', 'password123', '2021-10-02 11:17:28'),
('ppjjjpasi@gmail.com', 'password123', '2021-10-02 10:51:59'),
('pppasi@gmail.com', 'password123', '2021-10-02 06:21:54'),
('savindu@gmail.com', 'pass99', '2021-10-01 15:30:15'),
('savindupasingtha2@gmail.com', 'pass1234', '2021-10-10 21:15:00'),
('savindupasingtha@gmail.com', 'pass1234', '2021-10-10 21:12:00'),
('supun@gmail.com', 'dd', '2021-10-24 05:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_name` int(100) NOT NULL,
  `service_name` int(100) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(30) NOT NULL,
  `service_time` text NOT NULL,
  `call` varchar(25) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `category_name`, `service_name`, `description`, `location`, `service_time`, `call`, `price`) VALUES
(1, '', 0, 0, '', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_job_registration`
--
ALTER TABLE `doctor_job_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `doctor_job_registration`
--
ALTER TABLE `doctor_job_registration`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
