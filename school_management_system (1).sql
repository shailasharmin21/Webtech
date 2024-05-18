-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 06:51 AM
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
-- Database: `school_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `No` int(255) NOT NULL,
  `Book_name` varchar(255) NOT NULL,
  `ID` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`No`, `Book_name`, `ID`, `Description`) VALUES
(1, 'English', '1111', 'text book approved by NCTB'),
(2, 'Bangla', '2222', 'Text book approved by NCTB');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(3) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `class` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `class`, `description`) VALUES
(1, 'Bangla 2nd Paper', 'Eight', 'Text Book Approved by NCTB'),
(3, 'Bangla 2nd paper', 'Six', 'Text Book Approved by NCTB'),
(4, 'English 1st paper', 'Six', 'Text Book Approved by NCTB'),
(5, 'English 2nd Paper', 'Six', 'Text Book Approved by NCTB'),
(6, 'General math', 'Eight', 'Text Book Approved by NCTB');

-- --------------------------------------------------------

--
-- Table structure for table `edit_student`
--

CREATE TABLE `edit_student` (
  `id` varchar(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `p_address` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `edit_student`
--

INSERT INTO `edit_student` (`id`, `name`, `email`, `mobile`, `gender`, `dob`, `p_address`) VALUES
('2222', 'Shaila', 'shailarichi76952@gmail.com', '01409236876', 'female', '2222-02-02', 'nodda morol bazar, ka-47/4,shamata ahsan garden,'),
('3001', 'anindo saha', 'anindo@gmail.com', '01711811411', 'male', '2006-02-02', 'Ullapara,Sirajganj'),
('4001', 'anik saha', 'anik@gmail.com', '01234567881', 'male', '2004-06-09', 'nikunjo'),
('4002', 'Arko', 'arko@gmail.com', '01769451236', 'male	', '1997-11-20', 'Dhaka, Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(3) NOT NULL,
  `notice` varchar(500) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice`, `time`) VALUES
(1, 'There is no class tomorrow (07/04/2021)', '2021-04-06 13:34:32'),
(3, 'Home Test 1\r\nDate: 12/4/2021 at 9.30 AM Sharply\r\n', '2021-04-10 15:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `registration_id` int(11) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `course_id` int(3) DEFAULT NULL,
  `book_no` int(3) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`registration_id`, `student_id`, `course_id`, `book_no`, `registration_date`) VALUES
(52, '4003', 1, 0, '2024-05-16 21:22:18'),
(53, '4003', 3, 0, '2024-05-16 21:22:18'),
(54, '4003', 4, 0, '2024-05-16 21:22:19'),
(56, '4001', 6, 0, '2024-05-16 21:22:36'),
(57, '4001', 5, 0, '2024-05-16 21:22:36'),
(58, '4001', 3, 0, '2024-05-17 17:13:52'),
(59, '4001', 4, 0, '2024-05-17 17:13:57'),
(73, '4001', NULL, 1, '2024-05-17 20:21:27'),
(74, '4001', NULL, 2, '2024-05-17 20:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `day` varchar(50) NOT NULL,
  `10:00-11:00` varchar(50) NOT NULL,
  `11:00-12:00` varchar(50) NOT NULL,
  `12:00-01:00` varchar(50) NOT NULL,
  `01:00-02:00` varchar(50) NOT NULL,
  `02:00-03:00` varchar(50) NOT NULL,
  `03:00-04:00` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`day`, `10:00-11:00`, `11:00-12:00`, `12:00-01:00`, `01:00-02:00`, `02:00-03:00`, `03:00-04:00`) VALUES
('Saturday', 'Bangla', 'English', 'Math', 'Bangladesh and global studies', 'Religion', 'Physical education and health'),
('Sunday', 'Physical education and health', 'Religion', 'Math', 'Bangla', 'Bangladesh and global studies', 'English'),
('Monday', 'Bangla', 'English', 'Bangladesh and global studies', 'Math', 'Religion', 'Physical education and health'),
('Tuesday', 'English', 'Bangla', 'Bangladesh and global studies', 'Math', 'Physical education and health', 'Religion'),
('Wednesday', 'Bangladesh and global studies', 'English', 'Bangla', 'Math', 'Religion', 'Physical education and health'),
('Thursday', 'Bangladesh and global studies', 'Bangla', 'Math', 'Religion', 'English', 'Physical education and health');

-- --------------------------------------------------------

--
-- Table structure for table `school_notice`
--

CREATE TABLE `school_notice` (
  `id` int(3) NOT NULL,
  `notice` varchar(500) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_notice`
--

INSERT INTO `school_notice` (`id`, `notice`, `time`) VALUES
(1, 'It is to notify to all concerned that the School will remain closed (including all online classes) on Tuesday, March 30th 2021 due to Shab e-Barat, 2021.  ', '2021-04-22 11:23:55'),
(3, 'It is to notify to all concerned that the School will remain closed (including all online classes) on Sunday, February 21,  2021 due to Language Movement Day 2021.  ', '2021-04-22 11:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` varchar(20) NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` varchar(70) NOT NULL,
  `gender` varchar(70) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `class` varchar(10) NOT NULL,
  `section` varchar(10) NOT NULL,
  `roll` varchar(70) NOT NULL,
  `p_address` varchar(70) NOT NULL,
  `password` varchar(70) NOT NULL,
  `marks` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `mobile`, `gender`, `dob`, `class`, `section`, `roll`, `p_address`, `password`, `marks`) VALUES
('2222', 'Shaila Sharmin', 'shailarichi76952@gmail.com', '01409236876', 'female', '2222-02-02', 'Six', 'A', '1111', 'nodda morol bazar, ka-47/4,shamata ahsan garden,', '12345678$$', ''),
('3001', 'anindo saha', 'anindo@gmail.com', '01711811411', 'male', '2006-02-02', 'Seven', 'B', '25', 'Ullapara,Sirajganj', '12345679@', '98'),
('3002', 'karim', 'karim@gmil.com', '01758631248', 'male', '2004-11-29', 'Eight', 'B', '22', 'khulna', '12345678@', '55'),
('3004', 'Rahim ali', 'rahim@a.com', '01745693625', 'male', '2009-02-02', 'Seven', 'B', '55', 'ullapara', '12341234@', '88'),
('4001', 'anik', 'anik@ymail.com', '01234567891', 'female', '2004-06-09', 'Seven', 'B', '24', 'nikun', '2554', '45'),
('4003', 'Ella', 'ella@gmail.com', '01776584213', 'female', '2004-02-13', 'Eight', 'B', '19', 'dhaka', '12345678@', '96'),
('4004', 'Laura', 'l@gmail.com', '01772541167', 'female', '2003-09-11', 'Seven', 'B', '65', 'khulna', '12345678@', '66');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` varchar(20) NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` varchar(70) NOT NULL,
  `gender` varchar(70) NOT NULL,
  `dob` date NOT NULL,
  `subject` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `email`, `mobile`, `gender`, `dob`, `subject`, `password`) VALUES
('2001', 'Kowshik Chakraborty', 'kowshik@gmail.com', '01764199181', 'male', '1984-08-09', '', '4567'),
('2002', 'nahin all', 'nahin@gmail.com', '01711845611', 'male', '2009-07-15', '', '1234@1234'),
('2003', 'anik saha', 'a@gmail.com', '01745361245', 'male', '2016-02-09', '', '12341234@'),
('2006', 'kowshik sss', 's@s.com', '01756984231', 'male', '2013-01-02', 'Math', '12345@@123'),
('2008', 'John', 'john@gmail.com', '01758964512', 'male', '2021-04-23', '', '1234567!'),
('2009', 'Kowshik Chakraborty', 'kowshik@gmail.com', '01754697845', 'Male', '2013-06-23', 'Math', '1234567@'),
('2011', 'anirban', 'anirban@gmaill.com', '01711814155', 'male', '2019-03-16', '', '12345678@'),
('2013', 'anirban Saha', 'anirban@gmail.com', '01711811415', 'male', '2014-03-20', '', '12345678@'),
('2014', 'anik', 'a@a.com', '01776304244', 'female', '2021-03-31', '', '1234567@@');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edit_student`
--
ALTER TABLE `edit_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`registration_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `school_notice`
--
ALTER TABLE `school_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `No` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `school_notice`
--
ALTER TABLE `school_notice`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
