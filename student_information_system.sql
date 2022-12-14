-- phpMyAdmin SQL Dump
-- version 4.3.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2019 at 10:52 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student_information_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(10) unsigned NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Dindigul'),
(2, 'Madurai'),
(3, 'Karur'),
(4, 'Chennai'),
(5, 'Coimbatore'),
(6, 'Tiruchirappalli'),
(7, 'Tirunelveli'),
(8, 'Ambur'),
(9, 'Kumbakonam'),
(10, 'Puthukottai'),
(11, 'Theni'),
(12, 'Rajapalayam'),
(13, 'Thenkasi'),
(14, 'Karaikudi'),
(15, 'Nagercoil'),
(16, 'Nagapattinam'),
(17, 'Tiruppur'),
(18, 'Salem'),
(19, 'Erode'),
(20, 'Neyveli');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(11) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level` varchar(255) NOT NULL,
  `login_date` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_user`, `login_password`, `login_level`, `login_date`) VALUES
(1, 'admin', 'test', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh'),
(3, 'Delhi'),
(4, 'Bihar');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_gender` varchar(255) NOT NULL,
  `student_course` varchar(255) NOT NULL,
  `student_year` varchar(255) NOT NULL,
  `student_semester` varchar(255) NOT NULL,
  `student_department` varchar(255) NOT NULL,
  `student_roll` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_father_name` varchar(255) NOT NULL,
  `student_mother_name` varchar(255) NOT NULL,
  `student_family_phone` varchar(255) NOT NULL,
  `student_phone` varchar(255) NOT NULL,
  `student_dob` varchar(255) NOT NULL,
  `student_city` varchar(255) NOT NULL,
  `student_state` varchar(255) NOT NULL,
  `student_address` varchar(255) NOT NULL,
  `student_pincode` varchar(255) NOT NULL,
  `student_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_gender`, `student_course`, `student_year`, `student_semester`, `student_department`, `student_roll`, `student_email`, `student_father_name`, `student_mother_name`, `student_family_phone`, `student_phone`, `student_dob`, `student_city`, `student_state`, `student_address`, `student_pincode`, `student_image`) VALUES
(1, 'Rakesh Kumar', '1', '3', '3', '6', '4', '121234', 'rakesh@gmail.com', '', '', '+918470010001', '8470010001', '12/04/1990', '7', '1', 'Vasundhara', '12345', 'smilingboy.jpg'),
(2, 'Sarika Yadav', '2', '1', '2', '4', '1', '1234534', 'sarika@gmail.com', '', '', '+918376986802', '8470010001', '15/07/1991', '2', '3', 'Vasundhara', '1234234', 'smilingFemaleStudent.jpg'),
(3, 'Harsh Agrwal', '1', '5', '1', '2', '2', '1234523', 'harsh@gmail.com', '', '', '+919191999776', '+12345679', '18/01/1992', '11', '1', 'Allahabad', '123456678', 'images (1).jpg'),
(4, 'Adveta Shah', '2', '4', '2', '3', '3', '12345656', 'adveta@gmail.com', '', '', '+5432167889', '+91927655689', '03/04/1994', '2', '3', 'Delhi', '98765458', 'o-FEMALE-STUDENTS-facebook.jpg'),
(5, 'Kaushal Jaiswal', '1', '8', '3', '6', '2', '123456765', 'kaushal@gmail.com', '', '', '+918376986802', '8376986802', '09/02/1996', '10', '1', 'Rajendra Nagar', '01131', '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE IF NOT EXISTS `student_course` (
  `course_id` int(11) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`course_id`, `course_title`, `course_description`) VALUES
(1, 'BCA', 'BCA'),
(2, 'MCA', 'MCA'),
(3, 'B.Tech', 'B.Tech'),
(4, 'M.Tech', 'M.Tech'),
(5, 'B.com', 'B.com'),
(6, 'M.com', 'M.com'),
(7, 'MA', 'MA'),
(8, 'BBA', 'BBA'),
(9, 'BSC', 'BSC'),
(10, 'MSC', 'MSC');

-- --------------------------------------------------------

--
-- Table structure for table `student_department`
--

CREATE TABLE IF NOT EXISTS `student_department` (
  `department_id` int(11) NOT NULL,
  `department_title` varchar(255) NOT NULL,
  `department_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_department`
--

INSERT INTO `student_department` (`department_id`, `department_title`, `department_description`) VALUES
(1, 'Computer Science', 'Computer Science'),
(2, 'Commerce', 'Commerce'),
(3, 'Mechanical', 'Mechanical'),
(4, 'Electrical', 'Electrical'),
(5, 'Arts', 'Arts'),
(6, 'Science', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `student_gender`
--

CREATE TABLE IF NOT EXISTS `student_gender` (
  `gender_id` int(11) NOT NULL,
  `gender_title` varchar(255) NOT NULL,
  `gender_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_gender`
--

INSERT INTO `student_gender` (`gender_id`, `gender_title`, `gender_description`) VALUES
(1, 'Male', 'Male'),
(2, 'Female', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `student_semester`
--

CREATE TABLE IF NOT EXISTS `student_semester` (
  `semester_id` int(11) NOT NULL,
  `semester_title` varchar(255) NOT NULL,
  `semester_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_semester`
--

INSERT INTO `student_semester` (`semester_id`, `semester_title`, `semester_description`) VALUES
(1, '1st', '1st'),
(2, '2nd', '2nd'),
(3, '3rd', '3rd'),
(4, '4th', '4th'),
(5, '5th', '5th'),
(6, '6th', '6th');

-- --------------------------------------------------------

--
-- Table structure for table `student_year`
--

CREATE TABLE IF NOT EXISTS `student_year` (
  `year_id` int(11) NOT NULL,
  `year_title` varchar(255) NOT NULL,
  `year_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year`
--

INSERT INTO `student_year` (`year_id`, `year_title`, `year_description`) VALUES
(1, '1st', '1st'),
(2, '2nd', '2nd'),
(3, '3rd', '3rd'),
(4, '4th', '4th');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` varchar(255) NOT NULL DEFAULT '2',
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_state` varchar(255) NOT NULL,
  `user_country` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`) VALUES
(7, '2', 'customer', 'test', 'Amit Kumar', 'House no : 768', 'Sector 2B', '2', '1', '2', 'amit@gmail.com', '9324324546', '', '26 December,2015', 'doctor1.jpg'),
(8, '2', 'suman', 'test', 'Suman Singh', 'House no : 768', 'Sector 2A', '1', '2', '1', 'suman@gmail.com', '987654321', '', '13 January,1961', 'doctor3.jpg'),
(10, '2', 'manasa', 'test', 'Manasa', 'New Delhi', 'India', '2', '2', '1', 'manasa@gmail.com', '9876543212', '', '18 January,1968', 'doctor2.jpg'),
(16, '1', 'admin', 'test', 'Kaushal Kishore', 'House No : 355, Sector 23', 'Sector 2A', '1', '1', '1', 'kaushal.rahuljaiswal@gmail.com', '9567654565', '', '10 March,2016', 'Image.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `student_department`
--
ALTER TABLE `student_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `student_gender`
--
ALTER TABLE `student_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `student_semester`
--
ALTER TABLE `student_semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student_year`
--
ALTER TABLE `student_year`
  ADD PRIMARY KEY (`year_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_course`
--
ALTER TABLE `student_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `student_department`
--
ALTER TABLE `student_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `student_gender`
--
ALTER TABLE `student_gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student_semester`
--
ALTER TABLE `student_semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `student_year`
--
ALTER TABLE `student_year`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
