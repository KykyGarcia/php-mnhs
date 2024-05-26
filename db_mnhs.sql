-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 07:23 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mnhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `carousel_id` int(1) NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`carousel_id`, `images`) VALUES
(1, 'images/curly-hairstyles-for-men-1200x900.jpg'),
(2, 'images/businessman-icon-vector-male-avatar-profile-image-profile-businessman-icon-vector-male-avatar-profile-image-182095609.jpg'),
(3, 'images/landscape-1469205174-bedroom-design-ideas-lead.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `SETSEMESTER` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `COURSE_DESC`, `DEPT_ID`, `SETSEMESTER`) VALUES
(21, 'Tech-Voc', 'Technical - Vocationnal', 34, ''),
(24, 'AB Philosophy', 'Bachelor of ARTS (AB)', 34, ''),
(53, 'ABM', 'Activity-based management', 36, ''),
(61, 'AB Filipino', 'Filipino', 37, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DEPARTMENT_NAME`, `DEPARTMENT_DESC`) VALUES
(37, 'SHS', 'Senior High School                          \r\n    '),
(38, 'JHS', 'Junior High School                          \r\n    ');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `FIRST` int(11) DEFAULT NULL,
  `SECOND` int(11) DEFAULT NULL,
  `THIRD` int(11) DEFAULT NULL,
  `FOURTH` int(11) DEFAULT NULL,
  `AVE` float DEFAULT NULL,
  `REMARKS` text DEFAULT NULL,
  `COMMENT` text DEFAULT NULL,
  `SEMS` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GRADE_ID`, `IDNO`, `SUBJ_ID`, `FIRST`, `SECOND`, `THIRD`, `FOURTH`, `AVE`, `REMARKS`, `COMMENT`, `SEMS`) VALUES
(1, '2018-SC-0001', 1, 0, 0, 0, 0, 80, 'Passed', '', 'First'),
(2, '2018-SC-0001', 2, 0, 0, 0, 0, 67, 'Failed', '', 'First'),
(3, '2018-SC-0001', 3, 0, 0, 0, 0, 0, '', '', 'First'),
(4, '2018-SC-0001', 4, 0, 0, 0, 0, 0, '', '', 'First'),
(5, '2018-SC-0001', 5, 0, 0, 0, 0, 0, '', '', 'First'),
(6, '2018-SC-0001', 6, 0, 0, 0, 0, 0, '', '', 'First'),
(7, '2018-SC-0001', 7, 0, 0, 0, 0, 0, '', '', 'First'),
(8, '2018-SC-0001', 8, 0, 0, 0, 0, 0, '', '', 'Second'),
(9, '2018-SC-0001', 9, 0, 0, 0, 0, 0, '', '', 'Second'),
(10, '2018-SC-0001', 10, 0, 0, 0, 0, 0, '', '', 'Second'),
(11, '2018-SC-0001', 11, 0, 0, 0, 0, 0, '', '', 'Second'),
(12, '2018-SC-0001', 12, 0, 0, 0, 0, 0, '', '', 'Second'),
(13, '2018-SC-0001', 13, 0, 0, 0, 0, 0, '', '', 'Second'),
(14, '2018-SC-0001', 14, 0, 0, 0, 0, 0, '', '', 'Second'),
(15, '2018-SC-0001', 15, 0, 0, 0, 0, 0, '', '', 'Second'),
(16, '2018-SC-0001', 16, 0, 0, 0, 0, 0, '', '', 'First'),
(17, '15-SC-0836', 1, 0, 0, 0, 0, 90, 'Passed', '', 'First'),
(18, '15-SC-0836', 2, 0, 0, 0, 0, 0, '', '', 'First'),
(19, '15-SC-0836', 3, 0, 0, 0, 0, 0, '', '', 'First'),
(20, '15-SC-0836', 4, 0, 0, 0, 0, 0, '', '', 'First'),
(21, '15-SC-0836', 5, 0, 0, 0, 0, 0, '', '', 'First'),
(22, '15-SC-0836', 6, 0, 0, 0, 0, 0, '', '', 'First'),
(23, '15-SC-0836', 7, 0, 0, 0, 0, 0, '', '', 'First'),
(24, '15-SC-0836', 8, 0, 0, 0, 0, 0, '', '', 'Second'),
(25, '15-SC-0836', 9, 0, 0, 0, 0, 0, '', '', 'Second'),
(26, '15-SC-0836', 10, 0, 0, 0, 0, 0, '', '', 'Second'),
(27, '15-SC-0836', 11, 0, 0, 0, 0, 0, '', '', 'Second'),
(28, '15-SC-0836', 12, 0, 0, 0, 0, 0, '', '', 'Second'),
(29, '15-SC-0836', 13, 0, 0, 0, 0, 0, '', '', 'Second'),
(30, '15-SC-0836', 14, 0, 0, 0, 0, 0, '', '', 'Second'),
(31, '15-SC-0836', 15, 0, 0, 0, 0, 0, '', '', 'Second'),
(32, '15-SC-0836', 16, 0, 0, 0, 0, 0, '', '', 'First'),
(33, '004411', 17, 0, 0, 0, 0, 99, 'Passed', '', 'First'),
(34, '12345678', 17, 0, 0, 0, 0, 90, '', '', 'First'),
(35, '1111111111', 17, NULL, NULL, NULL, NULL, 90, 'Failed', NULL, 'First'),
(36, '222222222', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(37, '222222222222222222', 17, NULL, NULL, NULL, NULL, 81, 'Failed', NULL, 'First'),
(38, '1212', 17, NULL, NULL, NULL, NULL, 80, 'Failed', NULL, 'First'),
(39, '1515', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(40, '1000', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(41, '9999', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(42, '9999', 24, NULL, NULL, NULL, NULL, 60, 'Failed', NULL, 'First'),
(43, '5454', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(44, '5454', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(45, '5454', 25, NULL, NULL, NULL, NULL, 78, 'Failed', NULL, 'First'),
(46, '3333', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(47, '3333', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(48, '3333', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(49, '3333', 26, NULL, NULL, NULL, NULL, 90, 'Passed', NULL, 'First'),
(50, '345345345', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(51, '345345345', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(52, '345345345', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(53, '345345345', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(54, '123456', 28, NULL, NULL, NULL, NULL, 90, 'Passed', NULL, 'First'),
(55, '2023-21', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(56, '2023-21', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(57, '2023-21', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(58, '2023-21', 20, NULL, NULL, NULL, NULL, 80, 'Passed', NULL, 'First'),
(59, '2023-22', 17, NULL, NULL, NULL, NULL, 80, 'Passed', NULL, 'First'),
(60, '2023-22', 18, NULL, NULL, NULL, NULL, 78, 'Passed', NULL, 'First'),
(61, '2023-22', 19, NULL, NULL, NULL, NULL, 89, 'Passed', NULL, 'First'),
(62, '2023-22', 20, NULL, NULL, NULL, NULL, 98, 'Passed', NULL, 'First'),
(63, '2023-24', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(64, '2023-24', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(65, '2023-24', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(66, '2023-24', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First'),
(67, '2023-25', 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'First');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubjects`
--

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` varchar(90) NOT NULL,
  `SECTIONID` int(11) DEFAULT NULL,
  `SEMESTER` varchar(30) DEFAULT NULL,
  `SY` text DEFAULT NULL,
  `ATTEMP` int(11) DEFAULT NULL,
  `AVERAGE` double DEFAULT NULL,
  `OUTCOME` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `studentsubjects`
--

INSERT INTO `studentsubjects` (`STUDSUBJ_ID`, `IDNO`, `SUBJ_ID`, `LEVEL`, `SECTIONID`, `SEMESTER`, `SY`, `ATTEMP`, `AVERAGE`, `OUTCOME`) VALUES
(1, '2018-SC-0001', 1, 'First Year', 1, 'First', '2000-2001', 1, 0, ''),
(2, '2018-SC-0001', 2, 'First Year', 0, 'First', '2000-2001', 1, 0, ''),
(3, '2018-SC-0001', 3, 'First Year', 0, 'First', '2000-2001', 1, 0, ''),
(4, '2018-SC-0001', 4, 'First Year', 0, 'First', '2000-2001', 1, 0, ''),
(5, '2018-SC-0001', 5, 'First Year', 0, 'First', '2000-2001', 1, 0, ''),
(6, '2018-SC-0001', 6, 'First Year', 0, 'First', '2000-2001', 1, 0, ''),
(7, '2018-SC-0001', 7, 'First Year', 0, 'First', '2000-2001', 1, 0, ''),
(8, '2018-SC-0001', 8, 'Fourth Year', 0, 'Second', '2000-2001', 1, 0, ''),
(9, '2018-SC-0001', 9, 'First Year', 0, 'Second', '2000-2001', 1, 0, ''),
(10, '2018-SC-0001', 10, 'First Year', 0, 'Second', '2000-2001', 1, 0, ''),
(11, '2018-SC-0001', 11, 'First Year', 0, 'Second', '2000-2001', 1, 0, ''),
(12, '2018-SC-0001', 12, 'First Year', 0, 'Second', '2000-2001', 1, 0, ''),
(13, '2018-SC-0001', 13, 'First Year', 0, 'Second', '2000-2001', 1, 0, ''),
(14, '2018-SC-0001', 14, 'First Year', 0, 'Second', '2000-2001', 1, 0, ''),
(15, '2018-SC-0001', 15, 'First Year', 0, 'Second', '2000-2001', 1, 0, ''),
(16, '2018-SC-0001', 16, 'Second Year', 0, 'First', '2000-2001', 1, 0, ''),
(17, '15-SC-0836', 1, 'First Year', 1, 'First', 'Select', 1, 0, ''),
(18, '15-SC-0836', 2, 'First Year', 0, 'First', 'Select', 1, 0, ''),
(19, '15-SC-0836', 3, 'First Year', 0, 'First', 'Select', 1, 0, ''),
(20, '15-SC-0836', 4, 'First Year', 0, 'First', 'Select', 1, 0, ''),
(21, '15-SC-0836', 5, 'First Year', 0, 'First', 'Select', 1, 0, ''),
(22, '15-SC-0836', 6, 'First Year', 0, 'First', 'Select', 1, 0, ''),
(23, '15-SC-0836', 7, 'First Year', 0, 'First', 'Select', 1, 0, ''),
(24, '15-SC-0836', 8, 'Third Year', 0, 'Second', 'Select', 1, 0, ''),
(25, '15-SC-0836', 9, 'First Year', 0, 'Second', 'Select', 1, 0, ''),
(26, '15-SC-0836', 10, 'First Year', 0, 'Second', 'Select', 1, 0, ''),
(27, '15-SC-0836', 11, 'First Year', 0, 'Second', 'Select', 1, 0, ''),
(28, '15-SC-0836', 12, 'First Year', 0, 'Second', 'Select', 1, 0, ''),
(29, '15-SC-0836', 13, 'First Year', 0, 'Second', 'Select', 1, 0, ''),
(30, '15-SC-0836', 14, 'First Year', 0, 'Second', 'Select', 1, 0, ''),
(31, '15-SC-0836', 15, 'First Year', 0, 'Second', 'Select', 1, 0, ''),
(32, '15-SC-0836', 16, 'Second Year', 0, 'First', 'Select', 1, 0, ''),
(33, '004411', 17, '12', 0, 'First', 'Select', 1, 99, 'Passed'),
(34, '12345678', 17, '12', 0, 'First', 'Select', 1, 0, ''),
(35, '1111111111', 17, '12', NULL, 'First', '2000-2001', 1, 90, 'Failed'),
(36, '222222222', 17, '12', NULL, 'First', '2000-2001', 1, NULL, NULL),
(37, '222222222222222222', 17, '12', NULL, 'First', '2000-2001', 1, 81, 'Failed'),
(38, '1212', 17, '12', NULL, 'First', '2000-2001', 1, 80, 'Failed'),
(39, '1515', 22, '12', NULL, 'First', '2022-2023', 1, NULL, NULL),
(40, '1000', 23, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(41, '9999', 22, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(42, '9999', 24, '12', NULL, 'First', '2023-2024', 1, 60, 'Failed'),
(43, '5454', 22, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(44, '5454', 24, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(45, '5454', 25, '12', NULL, 'First', '2023-2024', 1, 78, 'Failed'),
(46, '3333', 22, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(47, '3333', 24, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(48, '3333', 25, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(49, '3333', 26, '12', NULL, 'First', '2023-2024', 1, 90, 'Passed'),
(50, '345345345', 17, '12', NULL, 'First', '2022-2023', 1, NULL, NULL),
(51, '345345345', 18, '12', NULL, 'First', '2022-2023', 1, NULL, NULL),
(52, '345345345', 19, '12', NULL, 'First', '2022-2023', 1, NULL, NULL),
(53, '345345345', 20, '12', NULL, 'First', '2022-2023', 1, NULL, NULL),
(54, '123456', 28, '12', NULL, 'First', '2023-2024', 1, 90, 'Passed'),
(55, '2023-21', 17, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(56, '2023-21', 18, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(57, '2023-21', 19, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(58, '2023-21', 20, '12', NULL, 'First', '2023-2024', 1, 80, 'Passed'),
(59, '2023-22', 17, '12', NULL, 'First', '2023-2024', 1, 80, 'Passed'),
(60, '2023-22', 18, '12', NULL, 'First', '2023-2024', 1, 78, 'Passed'),
(61, '2023-22', 19, '12', NULL, 'First', '2023-2024', 1, 89, 'Passed'),
(62, '2023-22', 20, '12', NULL, 'First', '2023-2024', 1, 98, 'Passed'),
(63, '2023-24', 17, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(64, '2023-24', 18, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(65, '2023-24', 19, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(66, '2023-24', 20, '12', NULL, 'First', '2023-2024', 1, NULL, NULL),
(67, '2023-25', 29, '11', NULL, 'First', '2023-2024', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(11) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `YEARLEVEL` varchar(90) NOT NULL,
  `SECTIONID` int(11) NOT NULL,
  `AY` varchar(90) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `PreTaken` tinyint(1) NOT NULL,
  `CURRICULUM` varchar(90) NOT NULL DEFAULT 'New Curriculum'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `PRE_REQUISITE`, `COURSE_ID`, `YEARLEVEL`, `SECTIONID`, `AY`, `SEMESTER`, `PreTaken`, `CURRICULUM`) VALUES
(1, 'IT 101', 'IT Fundamentals', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum'),
(2, 'IT 102', 'Integrated Aplication Software and Productivity Tools', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum'),
(3, 'IT 103', 'Programming I', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum'),
(4, 'Math 101', 'College Algebra', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum'),
(5, 'Stat 102', 'Probability Statistics', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum'),
(6, 'PE 101', 'Physical Fitness', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum'),
(7, 'NSTP 1', 'ROTC / CWTS / LTS 1', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum'),
(8, 'IT 104', 'Programming 2', 3, 'IT 103', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum'),
(9, 'IT 201', 'Logic Design', 3, 'IT 101', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum'),
(10, 'Math 102', 'Plane Trigonometry', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum'),
(11, 'Eng 102', 'Speech Communication with Debate', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum'),
(12, 'NatSci 101', 'Biological Science', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum'),
(13, 'SocSci 101', 'Philippine History', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum'),
(14, 'PE 102', 'Rhythmic Activities, Folk and Social Dancing', 2, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum'),
(15, 'NSTP 2', 'ROTC / CWTS / LTS 2', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum'),
(16, 'IT 105', 'Computer Organization', 3, 'IT  201', 52, 'Second Year', 1, '2000-2001', 'First', 0, 'New Curriculum'),
(17, 'Eng 102', 'ENGLISH', 3, 'NONE', 53, '12', 0, '2000-2001', 'First', 0, 'New Curriculum'),
(18, 'Com', 'Computer', 6, 'None', 53, '12', 0, '2000-2001', 'First', 0, 'New Curriculum'),
(19, 'NSTP 1', 'physical', 6, 'None', 53, '12', 0, '2000-2001', 'First', 0, 'New Curriculum'),
(20, 'Buss', 'Bussiness', 4, 'None', 53, '12', 0, '2022-2023', 'First', 0, 'New Curriculum'),
(21, 'NatSci 101', 'National Science', 4, 'None', 56, '12', 0, '2022-2023', 'First', 0, 'New Curriculum'),
(22, 'IT', 'Info tech', 13, 'None', 58, '12', 0, '2022-2023', 'First', 0, 'New Curriculum'),
(23, 'acct', 'Acountant', 7, 'None', 59, '12', 0, '2023-2024', 'First', 0, 'New Curriculum'),
(24, 'Math', 'Math', 5, 'None', 58, '12', 0, '2023-2024', 'First', 0, 'New Curriculum'),
(25, 'asdas', 'asdasd', 423, 'wqeqw', 58, '12', 0, '2023-2024', 'First', 0, 'New Curriculum'),
(26, 'final', 'final', 4, 'N/A', 58, '12', 0, '2023-2024', 'First', 0, 'New Curriculum'),
(27, 'cs123', 'Science', 5, 'none', 21, '11', 0, '2023-2024', 'First', 0, 'New Curriculum'),
(28, 'Fil101', 'Filipino', 7, 'none', 61, '12', 0, '2023-2024', 'First', 0, 'New Curriculum'),
(29, '1111', 'science22', 3, '3', 24, '11', 0, '2023-2024', 'First', 0, 'New Curriculum');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncement`
--

CREATE TABLE `tblannouncement` (
  `ANNOUNCEMENTID` int(11) NOT NULL,
  `ANNOUNCEMENT_TEXT` text NOT NULL,
  `ANNOUNCEMENT_WHAT` text NOT NULL,
  `DATEPOSTED` datetime NOT NULL,
  `AUTHOR` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblannouncement`
--

INSERT INTO `tblannouncement` (`ANNOUNCEMENTID`, `ANNOUNCEMENT_TEXT`, `ANNOUNCEMENT_WHAT`, `DATEPOSTED`, `AUTHOR`) VALUES
(2018004, 'asdas', '<p>asdasd</p>', '2018-11-29 10:55:28', '100000074'),
(2018005, 'asdsadas', '<p>asdasdas</p>', '2018-11-29 10:56:30', 'Annie Paredes'),
(2018006, 'Test Announcement', '<p>Test</p>', '2018-11-30 14:26:10', 'Janno Palacios');

-- --------------------------------------------------------

--
-- Table structure for table `tblauto`
--

CREATE TABLE `tblauto` (
  `ID` int(11) NOT NULL,
  `autocode` varchar(255) DEFAULT NULL,
  `autoname` varchar(255) DEFAULT NULL,
  `appendchar` varchar(255) DEFAULT NULL,
  `autostart` varchar(30) DEFAULT '0',
  `autoend` int(11) DEFAULT 0,
  `incrementvalue` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblauto`
--

INSERT INTO `tblauto` (`ID`, `autocode`, `autoname`, `appendchar`, `autostart`, `autoend`, `incrementvalue`) VALUES
(1, 'Asset', 'Asset', 'ASitem', '0', 3, 1),
(2, 'Trans', 'Transaction', 'TrAnS', '1', 5, 1),
(3, 'SIDNO', 'IDNO', '2015', 'SC-000', 37, 1),
(4, 'EMPLOYEE', 'EMPID', '020010', '0', 2, 1),
(5, 'BLOGID', 'Announcement', '1', '00', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `EXPENSEID` int(11) NOT NULL,
  `AMOUNT` double NOT NULL,
  `DESCRIPTION` varchar(90) NOT NULL,
  `COURSE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblexpenses`
--

INSERT INTO `tblexpenses` (`EXPENSEID`, `AMOUNT`, `DESCRIPTION`, `COURSE_ID`) VALUES
(4, 300, 'Fee', 52),
(5, 400, 'New Fee', 52);

-- --------------------------------------------------------

--
-- Table structure for table `tblfees`
--

CREATE TABLE `tblfees` (
  `FEEID` int(11) NOT NULL,
  `EXPENSEID` int(11) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  `PAYMENT` double NOT NULL,
  `REMARKS` text NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `TRANSDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblfees`
--

INSERT INTO `tblfees` (`FEEID`, `EXPENSEID`, `IDNO`, `PAYMENT`, `REMARKS`, `USERNAME`, `TRANSDATE`) VALUES
(2, 4, '2018-SC-0001', 300, 'paid', '2018-SC-0001', '2018-12-01 00:00:00'),
(3, 5, '2018-SC-0001', 400, 'paid', '2018-SC-0001', '2018-12-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblinstructorsubject`
--

CREATE TABLE `tblinstructorsubject` (
  `INST_ID` int(11) NOT NULL,
  `ACCOUNT_ID` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `SECTIONID` int(11) NOT NULL,
  `AY` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblinstructorsubject`
--

INSERT INTO `tblinstructorsubject` (`INST_ID`, `ACCOUNT_ID`, `SUBJ_ID`, `SECTIONID`, `AY`) VALUES
(4, 13, 1, 1, '2000-2001'),
(5, 13, 2, 1, '2000-2001'),
(6, 13, 3, 1, '2000-2001'),
(7, 18, 17, 1, '2000-2001'),
(8, 18, 18, 1, '2000-2001'),
(9, 18, 18, 0, 'none'),
(10, 18, 19, 1, '2000-2001'),
(11, 18, 20, 1, '2022-2023'),
(12, 22, 17, 0, 'none'),
(13, 22, 18, 0, 'none'),
(14, 22, 19, 0, 'none'),
(15, 22, 20, 0, 'none'),
(16, 22, 21, 0, 'none'),
(20, 22, 20, 1, '2022-2023'),
(21, 22, 21, 1, '2022-2023'),
(30, 23, 24, 1, '2023-2024'),
(31, 23, 25, 0, 'none'),
(32, 23, 26, 0, 'none'),
(33, 23, 26, 1, '2023-2024'),
(34, 25, 27, 0, 'none'),
(35, 25, 27, 0, 'none'),
(36, 26, 28, 0, 'none'),
(37, 26, 27, 1, '2023-2024'),
(38, 26, 19, 1, '2023-2024'),
(39, 26, 28, 1, '2023-2024'),
(40, 29, 27, 1, '2023-2024'),
(41, 29, 17, 1, '2023-2024'),
(42, 29, 18, 1, '2023-2024'),
(43, 29, 19, 1, '2023-2024'),
(44, 29, 20, 1, '2023-2024'),
(45, 29, 28, 1, '2023-2024'),
(46, 31, 27, 1, '2023-2024'),
(47, 31, 17, 1, '2023-2024'),
(48, 31, 18, 1, '2023-2024'),
(49, 31, 19, 1, '2023-2024'),
(50, 31, 20, 1, '2023-2024'),
(51, 31, 28, 1, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbllevel`
--

CREATE TABLE `tbllevel` (
  `LEVELID` int(11) NOT NULL,
  `YEARLEVEL` varchar(30) NOT NULL,
  `SECTION` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbllevel`
--

INSERT INTO `tbllevel` (`LEVELID`, `YEARLEVEL`, `SECTION`) VALUES
(7, '12', ''),
(8, '11', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(55) NOT NULL,
  `LOGMODE` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`LOGID`, `USERID`, `LOGDATETIME`, `LOGROLE`, `LOGMODE`) VALUES
(1, 1, '2016-09-22 21:46:01', 'Administrator', 'Logged in'),
(2, 100000022, '2016-09-22 21:46:29', 'Student', 'Logged out'),
(3, 100000015, '2016-09-23 05:00:38', 'Student', 'Logged in'),
(4, 100000015, '2016-09-23 05:00:45', 'Student', 'Logged out'),
(5, 100000025, '2016-09-23 05:02:31', 'Student', 'Logged in'),
(6, 100000025, '2016-09-23 05:02:55', 'Student', 'Logged out'),
(7, 100000025, '2016-09-23 05:03:53', 'Student', 'Logged in'),
(8, 100000025, '2016-09-23 05:11:40', 'Student', 'Logged out'),
(9, 100000025, '2016-09-24 09:32:59', 'Student', 'Logged out'),
(10, 1, '2016-09-24 09:46:06', 'Administrator', 'Logged in'),
(11, 1, '2016-09-24 09:53:17', 'Administrator', 'Logged out'),
(12, 1, '2016-09-24 09:54:45', 'Administrator', 'Logged in'),
(13, 100000027, '2016-09-24 15:30:32', 'Student', 'Logged out'),
(14, 100000015, '2016-09-27 09:34:11', 'Student', 'Logged in'),
(15, 1, '2016-09-27 10:59:58', 'Administrator', 'Logged in'),
(16, 100000015, '2016-09-27 11:00:42', 'Student', 'Logged out'),
(17, 100000029, '2016-09-27 17:34:11', 'Student', 'Logged out'),
(18, 100000015, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(19, 100000015, '2016-09-27 17:37:13', 'Student', 'Logged out'),
(20, 100000029, '2016-09-27 18:27:40', 'Student', 'Logged out'),
(21, 100000015, '2016-09-27 18:27:56', 'Student', 'Logged in'),
(22, 100000015, '2016-09-27 18:29:20', 'Student', 'Logged out'),
(23, 100000030, '2016-09-27 22:49:02', 'Student', 'Logged out'),
(24, 100000015, '2016-09-27 22:50:10', 'Student', 'Logged in'),
(25, 100000015, '2016-09-28 01:47:07', 'Student', 'Logged out'),
(26, 100000033, '2016-09-28 04:43:26', 'Student', 'Logged out'),
(27, 1, '2016-10-01 04:07:48', 'Administrator', 'Logged in'),
(28, 100000056, '2016-10-01 09:22:17', 'Student', 'Logged out'),
(29, 100000056, '2016-10-01 09:22:51', 'Student', 'Logged in'),
(30, 100000056, '2016-10-01 09:23:30', 'Student', 'Logged out'),
(31, 100000056, '2016-10-01 12:52:40', 'Student', 'Logged out'),
(32, 100000057, '2016-10-01 15:28:47', 'Student', 'Logged out'),
(33, 100000058, '2016-10-01 15:44:01', 'Student', 'Logged out'),
(34, 100000057, '2016-10-01 15:44:11', 'Student', 'Logged in'),
(35, 100000057, '2016-10-01 16:38:34', 'Student', 'Logged out'),
(36, 100000061, '2016-10-01 16:50:27', 'Student', 'Logged out'),
(37, 100000061, '2016-10-01 18:08:05', 'Student', 'Logged out'),
(38, 1, '2016-10-02 01:12:39', 'Administrator', 'Logged in'),
(39, 100000067, '2016-10-02 01:58:35', 'Student', 'Logged out'),
(40, 100000068, '2016-10-02 02:16:08', 'Student', 'Logged out'),
(41, 100000069, '2016-10-02 02:20:24', 'Student', 'Logged out'),
(42, 100000071, '2016-10-02 09:16:51', 'Student', 'Logged out'),
(43, 1, '2018-11-27 07:03:09', 'Administrator', 'Logged in'),
(44, 1, '2018-11-27 10:39:57', 'Administrator', 'Logged out'),
(45, 1, '2018-11-27 10:42:19', 'Administrator', 'Logged in'),
(46, 1, '2018-11-27 10:44:25', 'Administrator', 'Logged in'),
(47, 1, '2018-11-27 10:49:41', 'Administrator', 'Logged out'),
(48, 1, '2018-11-27 11:03:31', 'Administrator', 'Logged in'),
(49, 1, '2018-11-27 12:50:29', 'Administrator', 'Logged in'),
(50, 1, '2018-11-28 04:51:58', 'Administrator', 'Logged in'),
(51, 1, '2018-11-28 20:16:18', 'Administrator', 'Logged in'),
(52, 100000074, '2018-11-28 20:16:53', 'Student', 'Logged in'),
(53, 1, '2018-11-28 21:06:53', 'Administrator', 'Logged out'),
(54, 1, '2018-11-28 21:07:26', 'Administrator', 'Logged in'),
(55, 100000074, '2018-11-28 23:08:35', 'Student', 'Logged out'),
(56, 100000074, '2018-11-28 23:10:44', 'Student', 'Logged in'),
(57, 100000074, '2018-11-28 23:24:34', 'Student', 'Logged out'),
(58, 1, '2018-11-29 09:57:42', 'Administrator', 'Logged in'),
(59, 100000074, '2018-11-29 09:58:12', 'Student', 'Logged in'),
(60, 1, '2018-11-30 12:11:25', 'Administrator', 'Logged in'),
(61, 1, '2018-11-30 13:32:17', 'Administrator', 'Logged in'),
(62, 1, '2018-11-30 14:25:42', 'Administrator', 'Logged in'),
(63, 1, '2018-11-30 20:43:10', 'Administrator', 'Logged in'),
(64, 1, '2018-12-01 03:20:44', 'Administrator', 'Logged out'),
(65, 1, '2018-12-01 03:21:10', 'Administrator', 'Logged in'),
(66, 1, '2018-12-01 03:21:21', 'Administrator', 'Logged out'),
(67, 1, '2018-12-01 03:29:17', 'Administrator', 'Logged in'),
(68, 1, '2018-12-01 03:34:33', 'Administrator', 'Logged out'),
(69, 11, '2018-12-01 04:47:26', 'Officer', 'Logged out'),
(70, 1, '2018-12-01 04:47:33', 'Administrator', 'Logged in'),
(71, 1, '2018-12-01 04:47:47', 'Administrator', 'Logged out'),
(72, 12, '2018-12-01 07:13:58', 'Officer', 'Logged out'),
(73, 1, '2018-12-01 07:14:10', 'Administrator', 'Logged in'),
(74, 1, '2018-12-01 07:14:35', 'Administrator', 'Logged out'),
(75, 1, '2018-12-01 07:14:45', 'Administrator', 'Logged in'),
(76, 1, '2018-12-02 21:28:41', 'Administrator', 'Logged out'),
(77, 12, '2018-12-02 21:41:34', 'Officer', 'Logged out'),
(78, 1, '2018-12-02 21:41:44', 'Administrator', 'Logged in'),
(79, 1, '2018-12-02 21:42:33', 'Administrator', 'Logged out'),
(80, 13, '2018-12-02 21:42:41', 'Instructor', 'Logged in'),
(81, 13, '2018-12-02 21:50:23', 'Instructor', 'Logged out'),
(82, 13, '2018-12-02 21:52:23', 'Instructor', 'Logged in'),
(83, 13, '2018-12-02 21:55:43', 'Instructor', 'Logged out'),
(84, 14, '2018-12-02 22:17:01', 'Officer', 'Logged out'),
(85, 1, '2018-12-02 22:17:09', 'Administrator', 'Logged in'),
(86, 1, '2018-12-02 23:50:40', 'Administrator', 'Logged out'),
(87, 1, '2018-12-03 00:02:22', 'Administrator', 'Logged in'),
(88, 1, '2018-12-03 00:03:28', 'Administrator', 'Logged out'),
(89, 15, '2018-12-03 00:03:36', 'Instructor', 'Logged in'),
(90, 15, '2018-12-03 00:05:17', 'Instructor', 'Logged out'),
(91, 15, '2018-12-03 00:05:31', 'Instructor', 'Logged in'),
(92, 15, '2018-12-03 00:07:13', 'Instructor', 'Logged out'),
(93, 15, '2018-12-03 00:07:36', 'Instructor', 'Logged in'),
(94, 15, '2018-12-03 00:09:45', 'Instructor', 'Logged out'),
(95, 15, '2018-12-03 00:10:10', 'Instructor', 'Logged in'),
(96, 15, '2018-12-03 00:12:13', 'Instructor', 'Logged out'),
(97, 15, '2018-12-03 00:12:24', 'Instructor', 'Logged in'),
(98, 15, '2018-12-03 00:16:41', 'Instructor', 'Logged out'),
(99, 1, '2018-12-03 00:16:56', 'Administrator', 'Logged in'),
(100, 1, '2018-12-03 00:20:39', 'Administrator', 'Logged out'),
(101, 15, '2018-12-03 00:20:51', 'Instructor', 'Logged in'),
(102, 15, '2018-12-03 00:21:41', 'Instructor', 'Logged out'),
(103, 15, '2018-12-03 00:21:48', 'Instructor', 'Logged in'),
(104, 15, '2018-12-03 00:22:05', 'Instructor', 'Logged out'),
(105, 1, '2018-12-03 00:22:12', 'Administrator', 'Logged in'),
(106, 1, '2018-12-03 00:37:47', 'Administrator', 'Logged out'),
(107, 1, '2018-12-03 01:42:38', 'Administrator', 'Logged in'),
(108, 1, '2018-12-03 02:22:22', 'Administrator', 'Logged in'),
(109, 1, '2018-12-03 02:45:42', 'Administrator', 'Logged out'),
(110, 15, '2018-12-03 02:47:25', 'Instructor', 'Logged in'),
(111, 15, '2018-12-03 02:47:45', 'Instructor', 'Logged out'),
(112, 1, '2018-12-03 02:48:19', 'Administrator', 'Logged in'),
(113, 1, '2018-12-03 02:48:55', 'Administrator', 'Logged out'),
(114, 16, '2018-12-03 02:50:26', 'Officer', 'Logged out'),
(115, 1, '2018-12-03 02:50:45', 'Administrator', 'Logged in'),
(116, 1, '2018-12-03 02:51:00', 'Administrator', 'Logged out'),
(117, 1, '2018-12-03 02:52:19', 'Administrator', 'Logged in'),
(118, 1, '2018-12-03 02:52:58', 'Administrator', 'Logged out'),
(119, 17, '2018-12-03 03:19:20', 'Officer', 'Logged out'),
(120, 17, '2018-12-03 03:25:40', 'Officer', 'Logged out'),
(121, 1, '2018-12-03 03:28:32', 'Administrator', 'Logged in'),
(122, 1, '2018-12-04 00:55:32', 'Administrator', 'Logged in'),
(123, 1, '2018-12-04 06:53:56', 'Administrator', 'Logged in'),
(124, 1, '2018-12-04 09:56:41', 'Administrator', 'Logged in'),
(125, 1, '2018-12-04 10:12:24', 'Administrator', 'Logged out'),
(126, 13, '2018-12-04 10:12:29', 'Instructor', 'Logged in'),
(127, 1, '2023-04-26 22:35:54', 'Administrator', 'Logged in'),
(128, 1, '2023-04-26 22:38:02', 'Administrator', 'Logged out'),
(129, 1, '2023-04-26 22:38:08', 'Administrator', 'Logged in'),
(130, 1, '2023-04-26 22:41:57', 'Administrator', 'Logged out'),
(131, 1, '2023-04-26 23:01:47', 'Administrator', 'Logged in'),
(132, 1, '2023-04-26 23:03:27', 'Administrator', 'Logged out'),
(133, 1, '2023-04-26 23:25:46', 'Administrator', 'Logged in'),
(134, 1, '2023-04-26 23:34:53', 'Administrator', 'Logged out'),
(135, 1, '2023-04-26 23:48:36', 'Administrator', 'Logged in'),
(136, 1, '2023-04-26 23:49:55', 'Administrator', 'Logged out'),
(137, 1, '2023-04-26 23:52:08', 'Administrator', 'Logged in'),
(138, 1, '2023-04-26 23:54:26', 'Administrator', 'Logged out'),
(139, 1, '2023-04-26 23:54:51', 'Administrator', 'Logged in'),
(140, 1, '2023-04-27 00:08:13', 'Administrator', 'Logged out'),
(141, 1, '2023-04-27 00:08:19', 'Administrator', 'Logged in'),
(142, 1, '2023-04-27 00:08:35', 'Administrator', 'Logged out'),
(143, 1, '2023-04-27 10:36:49', 'Administrator', 'Logged in'),
(144, 1, '2023-04-27 10:43:43', 'Administrator', 'Logged in'),
(145, 201500584, '2023-04-27 10:49:33', 'Student', 'Logged in'),
(146, 201500584, '2023-04-27 10:50:27', 'Student', 'Logged out'),
(147, 201500584, '2023-04-27 10:50:40', 'Student', 'Logged in'),
(148, 201500584, '2023-04-27 10:50:47', 'Student', 'Logged out'),
(149, 1, '2023-04-27 10:50:52', 'Administrator', 'Logged in'),
(150, 18, '2023-04-27 10:52:24', 'Instructor', 'Logged in'),
(151, 1, '2023-04-27 10:52:45', 'Administrator', 'Logged in'),
(152, 18, '2023-04-27 11:02:18', 'Instructor', 'Logged in'),
(153, 1, '2023-04-27 11:02:48', 'Administrator', 'Logged in'),
(154, 18, '2023-04-27 11:06:35', 'Instructor', 'Logged in'),
(155, 1, '2023-04-27 11:12:52', 'Administrator', 'Logged in'),
(156, 1, '2023-04-28 05:45:25', 'Administrator', 'Logged in'),
(157, 18, '2023-04-28 06:01:25', 'Instructor', 'Logged in'),
(158, 1, '2023-04-28 06:02:52', 'Administrator', 'Logged in'),
(159, 1, '2023-05-03 13:17:20', 'Administrator', 'Logged in'),
(160, 18, '2023-05-03 13:30:36', 'Instructor', 'Logged in'),
(161, 1, '2023-05-03 13:31:16', 'Administrator', 'Logged in'),
(162, 1, '2023-05-03 13:36:29', 'Administrator', 'Logged out'),
(163, 1, '2023-05-03 13:36:42', 'Administrator', 'Logged in'),
(164, 18, '2023-05-03 13:37:14', 'Instructor', 'Logged in'),
(165, 18, '2023-05-03 13:37:32', 'Instructor', 'Logged out'),
(166, 18, '2023-05-03 13:37:39', 'Instructor', 'Logged in'),
(167, 18, '2023-05-03 13:38:21', 'Instructor', 'Logged out'),
(168, 1, '2023-05-03 13:38:25', 'Administrator', 'Logged in'),
(169, 1, '2023-05-03 13:39:39', 'Administrator', 'Logged out'),
(170, 1, '2023-05-03 13:39:46', 'Administrator', 'Logged in'),
(171, 1, '2023-05-03 13:39:50', 'Administrator', 'Logged out'),
(172, 18, '2023-05-03 13:39:56', 'Instructor', 'Logged in'),
(173, 18, '2023-05-03 13:40:10', 'Instructor', 'Logged out'),
(174, 1, '2023-05-03 13:44:04', 'Administrator', 'Logged in'),
(175, 12345678, '2023-05-03 13:47:38', 'Student', 'Logged in'),
(176, 12345678, '2023-05-03 14:04:24', 'Student', 'Logged out'),
(177, 1, '2023-05-03 14:57:57', 'Administrator', 'Logged in'),
(178, 1, '2023-05-08 15:40:34', 'Administrator', 'Logged in'),
(179, 18, '2023-05-08 15:46:12', 'Instructor', 'Logged in'),
(180, 1, '2023-05-08 15:48:32', 'Administrator', 'Logged in'),
(181, 13, '2023-05-08 17:02:47', 'Instructor', 'Logged out'),
(182, 1, '2023-05-08 17:02:56', 'Administrator', 'Logged in'),
(183, 1, '2023-05-09 20:40:12', 'Administrator', 'Logged in'),
(184, 13, '2023-05-10 05:34:42', 'Instructor', 'Logged in'),
(185, 1, '2023-05-10 10:27:14', 'Administrator', 'Logged in'),
(186, 1, '2023-05-10 10:40:40', 'Administrator', 'Logged out'),
(187, 13, '2023-05-10 10:40:46', 'Instructor', 'Logged in'),
(188, 13, '2023-05-10 10:47:45', 'Instructor', 'Logged out'),
(189, 1, '2023-05-10 10:48:05', 'Administrator', 'Logged in'),
(190, 13, '2023-05-10 16:15:41', 'Instructor', 'Logged in'),
(191, 13, '2023-05-11 04:19:36', 'Instructor', 'Logged in'),
(192, 13, '2023-05-11 04:20:50', 'Instructor', 'Logged out'),
(193, 1, '2023-05-11 04:21:00', 'Administrator', 'Logged in'),
(194, 1, '2023-05-11 04:27:34', 'Administrator', 'Logged out'),
(195, 13, '2023-05-11 04:27:39', 'Instructor', 'Logged in'),
(196, 13, '2023-05-11 04:28:03', 'Instructor', 'Logged out'),
(197, 12345678, '2023-05-11 04:28:08', 'Student', 'Logged in'),
(198, 12345678, '2023-05-11 04:30:16', 'Student', 'Logged out'),
(199, 13, '2023-05-11 04:30:21', 'Instructor', 'Logged in'),
(200, 13, '2023-05-11 04:31:39', 'Instructor', 'Logged out'),
(201, 1, '2023-05-11 04:31:44', 'Administrator', 'Logged in'),
(202, 13, '2023-05-11 05:53:25', 'Instructor', 'Logged in'),
(203, 13, '2023-05-11 05:54:56', 'Instructor', 'Logged out'),
(204, 1, '2023-05-11 05:55:00', 'Administrator', 'Logged in'),
(205, 1, '2023-05-11 05:56:45', 'Administrator', 'Logged out'),
(206, 13, '2023-05-11 05:56:51', 'Instructor', 'Logged in'),
(207, 13, '2023-05-11 06:00:30', 'Instructor', 'Logged out'),
(208, 18, '2023-05-11 06:00:35', 'Instructor', 'Logged in'),
(209, 18, '2023-05-11 06:05:09', 'Instructor', 'Logged in'),
(210, 18, '2023-05-11 06:25:20', 'Instructor', 'Logged out'),
(211, 1, '2023-05-11 06:25:31', 'Administrator', 'Logged in'),
(212, 1, '2023-05-11 06:30:56', 'Administrator', 'Logged out'),
(213, 18, '2023-05-11 06:31:15', 'Instructor', 'Logged in'),
(214, 222222222, '2023-05-11 04:51:30', 'Student', 'Logged in'),
(215, 18, '2023-05-11 04:53:25', 'Instructor', 'Logged in'),
(216, 18, '2023-05-11 04:54:19', 'Instructor', 'Logged out'),
(217, 12345678, '2023-05-11 04:54:31', 'Student', 'Logged in'),
(218, 12345678, '2023-05-11 04:55:14', 'Student', 'Logged out'),
(219, 18, '2023-05-11 04:55:20', 'Instructor', 'Logged in'),
(220, 18, '2023-05-11 04:55:40', 'Instructor', 'Logged out'),
(221, 1, '2023-05-11 04:55:47', 'Administrator', 'Logged in'),
(222, 1, '2023-05-11 04:57:18', 'Administrator', 'Logged out'),
(223, 18, '2023-05-11 04:57:23', 'Instructor', 'Logged in'),
(224, 18, '2023-05-11 04:57:56', 'Instructor', 'Logged out'),
(225, 1212, '2023-05-11 04:58:08', 'Student', 'Logged in'),
(226, 1212, '2023-05-11 04:58:42', 'Student', 'Logged out'),
(227, 1, '2023-05-11 04:58:52', 'Administrator', 'Logged in'),
(228, 1, '2023-05-11 05:00:08', 'Administrator', 'Logged out'),
(229, 18, '2023-05-11 05:00:12', 'Instructor', 'Logged in'),
(230, 222222222, '2023-05-11 05:00:37', 'Student', 'Logged out'),
(231, 18, '2023-05-11 05:00:51', 'Instructor', 'Logged in'),
(232, 18, '2023-05-11 05:01:36', 'Instructor', 'Logged out'),
(233, 2147483647, '2023-05-11 05:01:41', 'Student', 'Logged in'),
(234, 18, '2023-05-11 05:02:39', 'Instructor', 'Logged out'),
(235, 1, '2023-05-11 05:02:45', 'Administrator', 'Logged in'),
(236, 1, '2023-05-11 05:03:21', 'Administrator', 'Logged out'),
(237, 18, '2023-05-11 05:03:26', 'Instructor', 'Logged in'),
(238, 18, '2023-05-11 05:04:12', 'Instructor', 'Logged out'),
(239, 1, '2023-05-11 05:04:20', 'Administrator', 'Logged in'),
(240, 2147483647, '2023-05-11 05:11:03', 'Student', 'Logged out'),
(241, 18, '2023-05-11 05:11:08', 'Instructor', 'Logged in'),
(242, 18, '2023-05-11 05:12:01', 'Instructor', 'Logged out'),
(243, 2147483647, '2023-05-11 05:12:06', 'Student', 'Logged in'),
(244, 1, '2023-05-11 05:13:33', 'Administrator', 'Logged in'),
(245, 2147483647, '2023-05-11 05:13:50', 'Student', 'Logged out'),
(246, 18, '2023-05-11 05:13:55', 'Instructor', 'Logged in'),
(247, 18, '2023-05-11 05:14:46', 'Instructor', 'Logged out'),
(248, 1, '2023-05-11 05:14:52', 'Administrator', 'Logged in'),
(249, 1, '2023-05-11 05:15:37', 'Administrator', 'Logged out'),
(250, 18, '2023-05-11 05:15:41', 'Instructor', 'Logged in'),
(251, 1, '2023-05-11 05:16:42', 'Administrator', 'Logged out'),
(252, 18, '2023-05-11 05:16:48', 'Instructor', 'Logged in'),
(253, 18, '2023-05-11 05:20:53', 'Instructor', 'Logged out'),
(254, 18, '2023-05-11 05:21:46', 'Instructor', 'Logged in'),
(255, 18, '2023-05-11 05:26:13', 'Instructor', 'Logged out'),
(256, 1212, '2023-05-11 05:26:22', 'Student', 'Logged in'),
(257, 1212, '2023-05-11 05:27:23', 'Student', 'Logged out'),
(258, 1, '2023-05-11 05:27:35', 'Administrator', 'Logged in'),
(259, 1, '2023-05-11 05:31:47', 'Administrator', 'Logged out'),
(260, 18, '2023-05-11 05:31:51', 'Instructor', 'Logged in'),
(261, 18, '2023-05-11 05:33:44', 'Instructor', 'Logged out'),
(262, 1, '2023-05-11 05:33:55', 'Administrator', 'Logged in'),
(263, 1, '2023-05-11 05:42:46', 'Administrator', 'Logged out'),
(264, 1, '2023-05-11 05:42:50', 'Administrator', 'Logged in'),
(265, 1, '2023-05-11 05:49:02', 'Administrator', 'Logged out'),
(266, 23, '2023-05-11 05:49:12', 'Instructor', 'Logged in'),
(267, 23, '2023-05-11 05:51:46', 'Instructor', 'Logged in'),
(268, 1, '2023-05-11 05:55:03', 'Administrator', 'Logged in'),
(269, 1, '2023-05-11 06:01:49', 'Administrator', 'Logged in'),
(270, 1, '2023-05-11 06:06:24', 'Administrator', 'Logged out'),
(271, 23, '2023-05-11 06:06:33', 'Instructor', 'Logged in'),
(272, 23, '2023-05-11 06:08:24', 'Instructor', 'Logged out'),
(273, 1, '2023-05-11 06:08:31', 'Administrator', 'Logged in'),
(274, 1, '2023-05-11 06:09:40', 'Administrator', 'Logged out'),
(275, 23, '2023-05-11 06:09:50', 'Instructor', 'Logged in'),
(276, 23, '2023-05-11 06:11:39', 'Instructor', 'Logged out'),
(277, 23, '2023-05-11 06:11:51', 'Instructor', 'Logged in'),
(278, 23, '2023-05-11 06:12:53', 'Instructor', 'Logged out'),
(279, 1, '2023-05-11 06:12:56', 'Administrator', 'Logged in'),
(280, 1, '2023-05-11 06:16:28', 'Administrator', 'Logged out'),
(281, 23, '2023-05-11 06:16:37', 'Instructor', 'Logged in'),
(282, 23, '2023-05-11 06:18:37', 'Instructor', 'Logged in'),
(283, 23, '2023-05-11 06:25:45', 'Instructor', 'Logged out'),
(284, 1, '2023-05-11 06:25:51', 'Administrator', 'Logged in'),
(285, 1, '2023-05-11 06:28:51', 'Administrator', 'Logged out'),
(286, 23, '2023-05-11 06:29:00', 'Instructor', 'Logged in'),
(287, 23, '2023-05-11 06:30:54', 'Instructor', 'Logged out'),
(288, 1, '2023-05-11 06:31:01', 'Administrator', 'Logged in'),
(289, 1, '2023-05-11 06:33:17', 'Administrator', 'Logged out'),
(290, 23, '2023-05-11 06:33:26', 'Instructor', 'Logged in'),
(291, 23, '2023-05-11 06:34:05', 'Instructor', 'Logged out'),
(292, 3333, '2023-05-11 06:34:14', 'Student', 'Logged in'),
(293, 1, '2023-05-12 06:53:35', 'Administrator', 'Logged in'),
(294, 1, '2023-05-12 06:53:37', 'Administrator', 'Logged in'),
(295, 1, '2023-05-13 05:49:07', 'Administrator', 'Logged in'),
(296, 1, '2023-05-13 05:49:20', 'Administrator', 'Logged out'),
(297, 1, '2023-06-21 10:55:16', 'Administrator', 'Logged in'),
(298, 1, '2023-06-21 11:05:39', 'Administrator', 'Logged in'),
(299, 1, '2023-06-21 11:08:22', 'Administrator', 'Logged out'),
(300, 24, '2023-06-21 11:08:24', 'Instructor', 'Logged in'),
(301, 24, '2023-06-21 11:10:42', 'Instructor', 'Logged out'),
(302, 1, '2023-06-21 11:10:45', 'Administrator', 'Logged in'),
(303, 1, '2023-06-22 04:32:41', 'Administrator', 'Logged in'),
(304, 1, '2023-06-22 04:36:22', 'Administrator', 'Logged in'),
(305, 1, '2023-06-22 04:43:28', 'Administrator', 'Logged out'),
(306, 25, '2023-06-22 04:43:41', 'Instructor', 'Logged in'),
(307, 25, '2023-06-22 04:44:57', 'Instructor', 'Logged out'),
(308, 1, '2023-06-22 04:45:01', 'Administrator', 'Logged in'),
(309, 1, '2023-06-22 04:53:29', 'Administrator', 'Logged out'),
(310, 25, '2023-06-22 04:53:51', 'Instructor', 'Logged in'),
(311, 25, '2023-06-22 04:55:07', 'Instructor', 'Logged out'),
(312, 1, '2023-06-22 04:55:12', 'Administrator', 'Logged in'),
(313, 1, '2023-06-22 04:57:02', 'Administrator', 'Logged in'),
(314, 1, '2023-06-22 04:58:36', 'Administrator', 'Logged out'),
(315, 22222, '2023-06-22 04:58:49', 'Student', 'Logged in'),
(316, 22222, '2023-06-22 04:59:36', 'Student', 'Logged out'),
(317, 1, '2023-06-22 04:59:40', 'Administrator', 'Logged in'),
(318, 1, '2023-06-22 05:05:58', 'Administrator', 'Logged out'),
(319, 26, '2023-06-22 05:06:07', 'Instructor', 'Logged in'),
(320, 26, '2023-06-22 05:07:50', 'Instructor', 'Logged out'),
(321, 123456, '2023-06-22 05:08:01', 'Student', 'Logged in'),
(322, 123456, '2023-06-22 05:10:03', 'Student', 'Logged out'),
(323, 1, '2023-06-22 05:10:08', 'Administrator', 'Logged in'),
(324, 1, '2023-06-22 05:25:25', 'Administrator', 'Logged in'),
(325, 1, '2023-06-22 05:26:35', 'Administrator', 'Logged out'),
(326, 26, '2023-06-22 05:26:56', 'Instructor', 'Logged in'),
(327, 1, '2023-06-24 09:38:11', 'Administrator', 'Logged in'),
(328, 1, '2023-06-24 09:39:41', 'Administrator', 'Logged out'),
(329, 26, '2023-06-24 09:39:56', 'Instructor', 'Logged in'),
(330, 1, '2023-06-27 06:01:14', 'Administrator', 'Logged in'),
(331, 1, '2023-06-27 06:02:31', 'Administrator', 'Logged out'),
(332, 27, '2023-06-27 06:02:36', 'Registrar', 'Logged in'),
(333, 27, '2023-06-27 06:02:44', 'Registrar', 'Logged out'),
(334, 27, '2023-06-27 06:04:22', 'Registrar', 'Logged in'),
(335, 27, '2023-06-27 06:05:57', 'Registrar', 'Logged out'),
(336, 1, '2023-06-27 06:06:00', 'Administrator', 'Logged in'),
(337, 1, '2023-06-27 06:07:42', 'Administrator', 'Logged out'),
(338, 27, '2023-06-27 06:07:46', 'Registrar', 'Logged in'),
(339, 27, '2023-06-27 06:08:33', 'Registrar', 'Logged out'),
(340, 1, '2023-06-27 06:08:36', 'Administrator', 'Logged in'),
(341, 1, '2023-06-27 06:08:41', 'Administrator', 'Logged out'),
(342, 27, '2023-06-27 06:08:44', 'Registrar', 'Logged in'),
(343, 27, '2023-06-27 06:35:05', 'Registrar', 'Logged out'),
(344, 1, '2023-06-27 06:35:08', 'Administrator', 'Logged in'),
(345, 1, '2023-06-27 07:04:47', 'Administrator', 'Logged out'),
(346, 29, '2023-06-27 07:04:50', 'Instructor', 'Logged in'),
(347, 29, '2023-06-27 07:06:40', 'Instructor', 'Logged out'),
(348, 1, '2023-06-27 07:06:43', 'Administrator', 'Logged in'),
(349, 1, '2023-06-27 07:07:44', 'Administrator', 'Logged out'),
(350, 29, '2023-06-27 07:07:47', 'Instructor', 'Logged in'),
(351, 29, '2023-06-27 07:07:52', 'Instructor', 'Logged out'),
(352, 1, '2023-06-27 07:08:01', 'Administrator', 'Logged in'),
(353, 1, '2023-06-27 07:08:27', 'Administrator', 'Logged out'),
(354, 27, '2023-06-27 07:08:30', 'Registrar', 'Logged in'),
(355, 27, '2023-06-27 07:09:38', 'Registrar', 'Logged out'),
(356, 29, '2023-06-27 07:09:42', 'Instructor', 'Logged in'),
(357, 29, '2023-06-27 07:09:45', 'Instructor', 'Logged out'),
(358, 2001, '2023-06-27 07:10:44', 'Student', 'Logged in'),
(359, 2001, '2023-06-27 07:10:58', 'Student', 'Logged out'),
(360, 29, '2023-06-27 07:11:04', 'Instructor', 'Logged in'),
(361, 29, '2023-06-27 07:12:26', 'Instructor', 'Logged out'),
(362, 1, '2023-06-27 07:12:29', 'Administrator', 'Logged in'),
(363, 1, '2023-06-27 07:16:30', 'Administrator', 'Logged out'),
(364, 29, '2023-06-27 07:16:35', 'Instructor', 'Logged in'),
(365, 29, '2023-06-27 07:18:05', 'Instructor', 'Logged out'),
(366, 1, '2023-06-27 07:18:08', 'Administrator', 'Logged in'),
(367, 1, '2023-06-27 07:20:08', 'Administrator', 'Logged out'),
(368, 29, '2023-06-27 07:20:13', 'Instructor', 'Logged in'),
(369, 29, '2023-06-27 07:21:45', 'Instructor', 'Logged out'),
(370, 1, '2023-06-27 07:21:48', 'Administrator', 'Logged in'),
(371, 1, '2023-06-27 07:39:41', 'Administrator', 'Logged out'),
(372, 2001, '2023-06-27 07:39:54', 'Student', 'Logged in'),
(373, 2001, '2023-06-27 07:41:50', 'Student', 'Logged out'),
(374, 1, '2023-06-27 07:41:53', 'Administrator', 'Logged in'),
(375, 1, '2023-06-27 07:44:26', 'Administrator', 'Logged out'),
(376, 2001, '2023-06-27 07:44:38', 'Student', 'Logged in'),
(377, 2001, '2023-06-27 07:44:47', 'Student', 'Logged out'),
(378, 1, '2023-06-27 07:44:50', 'Administrator', 'Logged in'),
(379, 1, '2023-06-27 08:00:22', 'Administrator', 'Logged out'),
(380, 29, '2023-06-27 08:00:25', 'Instructor', 'Logged in'),
(381, 29, '2023-06-27 08:02:31', 'Instructor', 'Logged out'),
(382, 1, '2023-06-27 08:02:35', 'Administrator', 'Logged in'),
(383, 1, '2023-06-27 08:03:08', 'Administrator', 'Logged out'),
(384, 27, '2023-06-27 08:03:11', 'Registrar', 'Logged in'),
(385, 27, '2023-06-27 08:03:17', 'Registrar', 'Logged out'),
(386, 1, '2023-06-27 08:03:21', 'Administrator', 'Logged in'),
(387, 1, '2023-06-27 08:09:13', 'Administrator', 'Logged out'),
(388, 1, '2023-06-27 08:10:29', 'Administrator', 'Logged in'),
(389, 1, '2023-06-27 08:40:18', 'Administrator', 'Logged out'),
(390, 27, '2023-06-28 10:36:30', 'Registrar', 'Logged in'),
(391, 27, '2023-06-28 10:36:42', 'Registrar', 'Logged out'),
(392, 29, '2023-06-28 10:36:46', 'Instructor', 'Logged in'),
(393, 29, '2023-06-28 10:37:05', 'Instructor', 'Logged out'),
(394, 1, '2023-06-28 10:37:09', 'Administrator', 'Logged in'),
(395, 27, '2023-09-28 06:45:14', 'Registrar', 'Logged in'),
(396, 27, '2023-09-28 06:46:27', 'Registrar', 'Logged out'),
(397, 1, '2023-09-28 06:46:29', 'Administrator', 'Logged in'),
(398, 1, '2023-09-28 06:46:47', 'Administrator', 'Logged out'),
(399, 27, '2023-09-28 06:46:59', 'Registrar', 'Logged in'),
(400, 27, '2023-09-28 06:47:43', 'Registrar', 'Logged out'),
(401, 1, '2023-09-28 06:47:48', 'Administrator', 'Logged in'),
(402, 1, '2023-09-28 06:50:19', 'Administrator', 'Logged out'),
(403, 30, '2023-09-28 06:50:22', 'Instructor', 'Logged in'),
(404, 30, '2023-09-28 06:51:13', 'Instructor', 'Logged out'),
(405, 1, '2023-09-28 06:51:16', 'Administrator', 'Logged in'),
(406, 1, '2023-09-28 06:53:50', 'Administrator', 'Logged out'),
(407, 1, '2023-09-28 06:54:16', 'Administrator', 'Logged in'),
(408, 1, '2023-09-28 06:55:25', 'Administrator', 'Logged out'),
(409, 2000, '2023-09-28 06:55:44', 'Student', 'Logged in'),
(410, 2000, '2023-09-28 06:56:04', 'Student', 'Logged out'),
(411, 27, '2023-09-28 06:56:13', 'Registrar', 'Logged in'),
(412, 27, '2023-09-28 06:56:19', 'Registrar', 'Logged out'),
(413, 1, '2023-09-28 06:56:22', 'Administrator', 'Logged in'),
(414, 1, '2023-09-28 06:59:35', 'Administrator', 'Logged out'),
(415, 27, '2023-09-28 06:59:40', 'Registrar', 'Logged in'),
(416, 27, '2023-09-28 07:00:25', 'Registrar', 'Logged out'),
(417, 1, '2023-09-28 07:00:29', 'Administrator', 'Logged in'),
(418, 1, '2023-09-28 07:02:37', 'Administrator', 'Logged out'),
(419, 31, '2023-09-28 07:02:39', 'Instructor', 'Logged in'),
(420, 31, '2023-09-28 07:02:46', 'Instructor', 'Logged out'),
(421, 1, '2023-09-28 07:02:49', 'Administrator', 'Logged in'),
(422, 1, '2023-09-28 07:07:20', 'Administrator', 'Logged out'),
(423, 2000, '2023-09-28 07:07:38', 'Student', 'Logged in'),
(424, 2000, '2023-09-28 07:07:45', 'Student', 'Logged out'),
(425, 1999, '2023-09-28 07:08:09', 'Student', 'Logged in'),
(426, 1999, '2023-09-28 07:08:24', 'Student', 'Logged out'),
(427, 1, '2023-09-28 07:08:28', 'Administrator', 'Logged in'),
(428, 1, '2023-09-28 07:08:35', 'Administrator', 'Logged out'),
(429, 27, '2023-09-28 07:08:40', 'Registrar', 'Logged in'),
(430, 27, '2023-09-28 07:09:09', 'Registrar', 'Logged out'),
(431, 1998, '2023-09-28 07:09:19', 'Student', 'Logged in'),
(432, 1998, '2023-09-28 07:09:43', 'Student', 'Logged out'),
(433, 1, '2023-09-28 07:09:47', 'Administrator', 'Logged in'),
(434, 1, '2023-09-28 07:13:04', 'Administrator', 'Logged out'),
(435, 1998, '2023-09-28 07:13:13', 'Student', 'Logged in'),
(436, 1998, '2023-09-28 07:13:39', 'Student', 'Logged out'),
(437, 1, '2023-09-28 07:13:43', 'Administrator', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `tblsection`
--

CREATE TABLE `tblsection` (
  `SECTIONID` int(11) NOT NULL,
  `SECTION` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblsection`
--

INSERT INTO `tblsection` (`SECTIONID`, `SECTION`) VALUES
(1, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tblsemester`
--

CREATE TABLE `tblsemester` (
  `SEMID` int(11) NOT NULL,
  `SEMESTER` varchar(90) NOT NULL,
  `SETSEM` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblsemester`
--

INSERT INTO `tblsemester` (`SEMID`, `SEMESTER`, `SETSEM`) VALUES
(1, 'First', 1),
(2, 'Second', 0),
(3, 'Summer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstuddetails`
--

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL,
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) DEFAULT NULL,
  `GCONTACT` varchar(40) NOT NULL,
  `IDNO` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstuddetails`
--

INSERT INTO `tblstuddetails` (`DETAIL_ID`, `GUARDIAN`, `GUARDIAN_ADDRESS`, `GCONTACT`, `IDNO`) VALUES
(1, 'Bless Paredes', '', '09306587988', '2018-SC-0001'),
(2, '', '', '', '15-SC-0836'),
(3, 'Esterlita Y. Alfarero', '', '09354344292', '201500584'),
(4, 'Esterlita Y. Alfarero', '', '09354344292', '004411'),
(5, 'sdasdadasdsadasd', '', '0909099993', '12345678'),
(6, 'sample', NULL, '', '1111111111'),
(7, 'sample', NULL, '999999999', '222222222'),
(8, 'sample', NULL, '', '222222222222222222'),
(9, 'Erwin Yubal Alfarero', NULL, '09757509184', '1212'),
(10, 'Erwin Yubal Alfarero', NULL, '09757509184', '2222'),
(11, 'Erwin Yubal Alfarero', NULL, '09757509184', '333'),
(12, 'Erwin Yubal Alfarero', NULL, '09757509184', '1515'),
(13, 'Lilia Naive', NULL, '09757509184', '1000'),
(14, 'Lilia Naive', NULL, '09757509184', '9999'),
(15, 'liasdasda', NULL, '09757509184', '5454'),
(16, 'liasdasda', NULL, '09757509184', '3333'),
(17, 'bryan', NULL, '546456456', '345345345'),
(18, 'Lilia Naive', NULL, '09757509184', '22222'),
(19, 'Lilia Naive', NULL, '09757509184', '123456'),
(20, 'newstudent', NULL, '3534535345', '2023-21'),
(21, 'sorar', NULL, '09123456789', '2023-22'),
(22, 'asd', NULL, '345345345', '2023-23'),
(23, 'asasdasds', NULL, '34543545', '2023-24'),
(24, 'asdas', NULL, '546546', '2023-25');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `NATIONALITY` varchar(40) DEFAULT NULL,
  `RELIGION` varchar(255) DEFAULT NULL,
  `CONTACT_NO` varchar(40) DEFAULT NULL,
  `HOME_ADD` text DEFAULT NULL,
  `ACC_USERNAME` varchar(255) DEFAULT NULL,
  `ACC_PASSWORD` text DEFAULT NULL,
  `YEARLEVEL` int(11) DEFAULT NULL,
  `COURSE_ID` int(11) DEFAULT NULL,
  `STUDPHOTO` varchar(255) DEFAULT NULL,
  `ACCOUNTTYPE` varchar(90) DEFAULT 'Student',
  `stud_status` varchar(255) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`S_ID`, `IDNO`, `FNAME`, `LNAME`, `MNAME`, `SEX`, `BDAY`, `BPLACE`, `STATUS`, `AGE`, `NATIONALITY`, `RELIGION`, `CONTACT_NO`, `HOME_ADD`, `ACC_USERNAME`, `ACC_PASSWORD`, `YEARLEVEL`, `COURSE_ID`, `STUDPHOTO`, `ACCOUNTTYPE`, `stud_status`) VALUES
(1, '2023-01', 'Annie', 'Paredes', 'L', 'Female', '1990-11-11', 'Binalbagan City', 'Single', 0, '09206589888', 'Catholic', '09206589888', 'Binalbagan City', '2018-SC-0001', '0bd6f980e6605d114f65981d40c8259d66ec7c49', 0, 52, 'student_image/customerCLIP.jpg', 'Officer', 'Active'),
(2, '2023-02', 'JASON', 'ALCANTARA', 'L', 'Male', '1999-02-05', '', 'Select', 0, '', '', '', 'SAN CARLOS CITY, PANGASINAN', '15-SC-0836', '30a8fe2aa9307a1cbd8ec717e3f64e780d4398b7', 0, 52, 'student_image/invoiceCLIP.jpg', 'Officer', 'Active'),
(3, '2023-03', 'Erwin', 'Alfarero', 'Y', 'Male', '1995-01-31', 'brgy. Bacao Malangas Zamboanga Sibugay', 'Single', 0, 'Filipino', 'Catolic', '09659013380', 'Población Malangas Zamboanga Sibugay', '201500584', '4dc15dacb57e2abebed4dd2c245bf277d13f6c54', 0, 24, '', 'Student', 'Inactive'),
(4, '2023-04', 'Kevin', 'Dumaguit', 'R', 'Male', '1999-09-15', 'brgy. Bacao Malangas Zamboanga Sibugay', 'Married', 0, 'Filipino', 'Catolic', '09754983854', 'Población Malangas Zamboanga Sibugay', '004411', '57ae54423831ddd98087c500a88e78bcb5d08d11', 0, 53, '', 'Student', 'Active'),
(5, '2023-05', 'Rodel', 'Naive', 'D', 'Female', '2000-01-01', 'Malangas', 'Widow', 0, 'filipino', 'Catholic', '09232323233', 'Malangas', '12345678', '7c222fb2927d828af22f592134e8932480637c0d', 0, 53, '', 'Student', 'Active'),
(6, '2023-06', 'sample', 'sample', 's', 'Female', '2000-02-02', 'sample', 'Select', NULL, '', '', '', 'sample', '0000000000', '8104ba1dc0409b259f487ed07db477c38f205a30', NULL, 21, NULL, 'Student', 'Active'),
(7, '2023-07', 'sample', 'sample', 's', 'Female', '2000-02-02', '', 'Select', NULL, '', '', '', 'sample', '1111111111', 'e8248cbe79a288ffec75d7300ad2e07172f487f6', NULL, 53, NULL, 'Student', 'Active'),
(8, '2023-08', 'sample', 'sample', 's', 'Male', '2000-02-22', 'sample', 'Select', NULL, 'sample', 'RC', '999999999', 'sample', '222222222', '0d343a34ee781f51d57935a6c19a72eb39aebca6', NULL, 53, NULL, 'Student', 'Active'),
(9, '2023-09', 'sample', 'sample', 's', 'Male', '2000-02-22', 'sample', 'Select', NULL, '', '', '', 'sample', '222222222222222222', '1501253a20bfd5826734648b89eed62f9aa415cf', NULL, 53, NULL, 'Student', 'Active'),
(10, '2023-10', 'koko', 'Paragas', 'S', 'Female', '2000-11-11', 'Poblacion Malangas Zamboanga Sibugay', 'Single', NULL, 'Filipino', 'Catholic', '09757509184', 'Poblacion Malangas Zamboanga Sibugay', '1212', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', NULL, 53, NULL, 'Student', 'Active'),
(11, '2023-11', 'Maria', 'Luna', 'b', 'Female', '1999-09-23', 'Poblacion Malangas Zamboanga Sibugay', 'Married', NULL, 'Filipino', 'Catholic', '09757509185', 'Poblacion Malangas Zamboanga Sibugay', '2222', 'fea7f657f56a2a448da7d4b535ee5e279caf3d9a', NULL, 56, NULL, 'Student', 'Active'),
(12, '2023-12', 'Marchel', 'Catiloc', 'S', 'Female', '1996-04-21', 'Poblacion Malangas Zamboanga Sibugay', 'Married', NULL, 'Filipino', 'Catholic', '09757509174', 'Poblacion Malangas Zamboanga Sibugay', '333', '43814346e21444aaf4f70841bf7ed5ae93f55a9d', NULL, 56, NULL, 'Student', 'Active'),
(13, '2023-13', 'Roger', 'Cabilao', 'S', 'Male', '1999-11-11', 'Poblacion Malangas Zamboanga Sibugay', 'Widow', NULL, 'Filipino', 'Catholic', '09757509184', 'Poblacion Malangas Zamboanga Sibugay', '1515', '7581f9f7cb4e2c129cf3994be96f620fca5eb4c0', NULL, 58, NULL, 'Student', 'Active'),
(14, '2023-14', 'pedro', 'castro', 'w', 'Male', '1999-11-11', 'malangas Zamboanga Sibugay', 'Widow', NULL, 'Filipino', 'Catholic', '09757509184', 'malangas Zamboanga Sibugay', '1000', 'e3cbba8883fe746c6e35783c9404b4bc0c7ee9eb', NULL, 59, NULL, 'Student', 'Active'),
(15, '2023-15', 'edward', 'lamoste', 's', 'Female', '1999-11-11', 'malangas Zamboanga Sibugay', 'Widow', NULL, 'Filipino', 'Catholic', '09757509184', 'malangas Zamboanga Sibugay', '9999', '4170ac2a2782a1516fe9e13d7322ae482c1bd594', NULL, 58, NULL, 'Student', 'Active'),
(16, '2023-16', 'monkey', 'king', 's', 'Female', '1999-12-11', 'Malangas Zamboanga Sibugay', 'Widow', NULL, 'Filipino', 'Catholic', '09757509184', 'Poblacion, Malangas Zamboanga Sibugay', '5454', '7676610da8860c85121518160221926c6b30d0f9', NULL, 58, NULL, 'Student', 'Active'),
(17, '2023-17', 'monkey', 'luppy', 's', 'Male', '1999-11-12', 'Malangas Zamboanga Sibugay', 'Married', NULL, 'Filipino', 'Catholic', '09757509184', 'Poblacion, Malangas Zamboanga Sibugay', '3333', 'f56d6351aa71cff0debea014d13525e42036187a', NULL, 58, NULL, 'Student', 'Active'),
(18, '2023-18', 'bryan', 'starl', 'b', 'Female', '1998-12-12', 'bryan', 'Married', NULL, 'bryan', '', '09123456789', 'na', '345345345', 'e316f342e23ffde9129ae59dcc3ffa7606e36dce', NULL, 53, NULL, 'Student', 'Active'),
(19, '2023-19', 'edward', 'quezon', 'r', 'Male', '1990-11-11', 'malangas Zamboanga Sibugay', 'Single', NULL, 'Filipino', 'Catholic', '09757509188', 'malangas Zamboanga Sibugay', '22222', '1a9b9508b6003b68ddfe03a9c8cbc4bd4388339b', NULL, 24, NULL, 'Student', 'Active'),
(20, '2023-20', 'luise', 'degala', 'r', 'Male', '2000-12-13', 'malangas Zamboanga Sibugay', 'Single', NULL, 'Filipino', 'Catholic', '09757509184', 'malangas Zamboanga Sibugay', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, 61, NULL, 'Student', 'Active'),
(21, '2023-21', 'newstudent', 'newstudent', 'n', 'Female', '1989-04-23', 'newstudent', 'Single', NULL, 'newstudent', '', '09123456789', 'newstudent', '2023-21', '300d3785e0937d722c103df5996dfb19c8defd71', NULL, 53, NULL, 'Student', 'Active'),
(22, '2023-22', 'sorar', 'sorar', 's', 'Female', '1996-03-31', 'sorar', 'Select', NULL, 'sorar', 'sorar', '345345', 'asdasdasdasda', '2023-22', 'e096c788bf132fac2ccaa87f1141e3f5a7576183', NULL, 53, 'student_image/Avatar-Profile-PNG-Photos.png', 'Student', 'Active'),
(23, '2023-23', 'juan', 'dela', 'c', 'Female', '1989-03-03', 'asdasd', 'Single', NULL, 'asdasd', 'asdasd', '5435435', 'asdasd', '2023-23', 'd40540b1c0d68dee7ed0fedc84d3a117bef004e1', NULL, 24, NULL, 'Student', 'Active'),
(24, '2023-24', 'jeth', 'seds', 's', 'Female', '1996-03-03', 'asdsad', 'Married', NULL, 'asdasd', 'asdasd', '4356465', 'asdasd', '2023-24', '39b4e772c9975489c088a15f7998abaa123f3a57', NULL, 53, NULL, 'Student', 'Active'),
(25, '2023-25', 'teststudent', 'teststudent', 't', 'Female', '1993-04-04', 'asdasdas', 'Single', NULL, 'asda', 'sdasdasd', '535345435', 'asdasd', '2023-25', '888d14ea88c58a8c60ccce738824b38fa278b294', NULL, 24, 'student_image/photo-1568602471122-7832951cc4c5.jpg', 'Student', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblsy`
--

CREATE TABLE `tblsy` (
  `AYID` int(11) NOT NULL,
  `SY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblsy`
--

INSERT INTO `tblsy` (`AYID`, `SY`) VALUES
(5, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` varchar(90) NOT NULL,
  `POSITION` varchar(90) NOT NULL,
  `USERIMAGE` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `BIRTH_DATE` varchar(255) DEFAULT NULL,
  `NATIONALITY` varchar(255) DEFAULT NULL,
  `RELIGION` varchar(255) DEFAULT NULL,
  `CONTACT_NO` varchar(255) DEFAULT NULL,
  `CIVIL_STATUS` varchar(255) DEFAULT NULL,
  `COURSE_ID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`, `EMPID`, `POSITION`, `USERIMAGE`, `ADDRESS`, `GENDER`, `BIRTH_DATE`, `NATIONALITY`, `RELIGION`, `CONTACT_NO`, `CIVIL_STATUS`, `COURSE_ID`) VALUES
(1, 'administrator', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '1234', '', 'photos/LoginRed.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(20, 'sample', 'sample', 'pass', 'Administrator', 'Administrator', '0', NULL, '', 'Female', 'mm/dd/yyyy', '', '', '', '', ''),
(21, 'asdadsasd', 'asdadsad', '8ecd6dbce7b43ea44efa845b50072f23ad621e78', 'Administrator', 'Administrator', '0', NULL, 'asdadasdasd', 'Female', 'mm/dd/yyyy', '', '', '', '', ''),
(23, 'jonas bathan', 'jonas', '35a2c6fae61f8077aab61faa4019722abf05093c', 'Instructor', 'Instructor', '0', NULL, 'Poblacion Malangas Zamboanga Sibugay', 'Female', '11/23/1998', 'Filipino', 'Catholic', '09757509184', 'Married', ''),
(24, 'teacher', 'teacher', '4a82cb6db537ef6c5b53d144854e146de79502e8', 'Instructor', 'Instructor', '0', NULL, 'teacher', 'Female', '02/23/1996', 'teacher', 'teacher', '345345345345', 'Married', ''),
(25, 'gina delacruz', 'tech1', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Instructor', 'Instructor', '0', NULL, 'malangas Zamboanga Sibugay', 'Female', '12/11/1998', 'Filipino', 'Catholic', '09757509184', 'Single', ''),
(26, 'juana queen', 'era123', 'd442d8a06f77546b770e5b8a67daf7b9b5a55076', 'Instructor', 'Instructor', '0', NULL, 'malangas Zamboanga Sibugay', 'Female', '11/11/1990', 'Filipino', 'Catholic', '09757509184', 'Single', ''),
(27, 'bryan starl', 'registrar', 'cd89b1537c0e6664405c383cee9db1f2a6d1a5ac', 'Registrar', 'Registrar', '0', NULL, 'na', 'Female', '12/12/1988', 'registrar', 'registrar', '09123456789', 'Married', ''),
(29, 'teacher123', 'teacher123', '8635fc4e2a0c7d9d2d9ee40ea8bf2edd76d5757e', 'Instructor', 'Instructor', '0', NULL, 'na', 'Female', '11/11/2011', 'teacher123', 'teacher123', '09123456789', 'Single', '53'),
(30, 'asdsa', 'teacher11', '1df8583ba8fa616398a577c5640600ff121f4d5f', 'Instructor', 'Instructor', '0', NULL, 'asdasdasd', 'Female', '02/02/1998', 'asdas', 'asd', '435345', 'Married', '21'),
(31, 'newteacher', 'newteacher', 'c333a49d769f8c58067e91497f696789ad06fcba', 'Instructor', 'Instructor', '0', NULL, 'asdasd', 'Female', '01/02/1995', 'asd', 'asd', '45345', 'Widow', '24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`carousel_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`) USING BTREE,
  ADD KEY `DEPT_ID` (`DEPT_ID`) USING BTREE;

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`) USING BTREE;

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GRADE_ID`) USING BTREE,
  ADD KEY `IDNO` (`IDNO`) USING BTREE;

--
-- Indexes for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  ADD PRIMARY KEY (`STUDSUBJ_ID`) USING BTREE,
  ADD KEY `IDNO` (`IDNO`) USING BTREE,
  ADD KEY `SUBJ_ID` (`SUBJ_ID`) USING BTREE;

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJ_ID`) USING BTREE,
  ADD KEY `COURSE_ID` (`COURSE_ID`) USING BTREE;

--
-- Indexes for table `tblannouncement`
--
ALTER TABLE `tblannouncement`
  ADD PRIMARY KEY (`ANNOUNCEMENTID`) USING BTREE;

--
-- Indexes for table `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD KEY `autocode` (`autocode`) USING BTREE;

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`EXPENSEID`) USING BTREE;

--
-- Indexes for table `tblfees`
--
ALTER TABLE `tblfees`
  ADD PRIMARY KEY (`FEEID`) USING BTREE;

--
-- Indexes for table `tblinstructorsubject`
--
ALTER TABLE `tblinstructorsubject`
  ADD PRIMARY KEY (`INST_ID`) USING BTREE;

--
-- Indexes for table `tbllevel`
--
ALTER TABLE `tbllevel`
  ADD PRIMARY KEY (`LEVELID`) USING BTREE;

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`LOGID`) USING BTREE;

--
-- Indexes for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD PRIMARY KEY (`SECTIONID`) USING BTREE;

--
-- Indexes for table `tblsemester`
--
ALTER TABLE `tblsemester`
  ADD PRIMARY KEY (`SEMID`) USING BTREE;

--
-- Indexes for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  ADD PRIMARY KEY (`DETAIL_ID`) USING BTREE,
  ADD KEY `IDNO` (`IDNO`) USING BTREE;

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`S_ID`) USING BTREE,
  ADD UNIQUE KEY `IDNO` (`IDNO`) USING BTREE;

--
-- Indexes for table `tblsy`
--
ALTER TABLE `tblsy`
  ADD PRIMARY KEY (`AYID`) USING BTREE;

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`) USING BTREE,
  ADD UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `carousel_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblannouncement`
--
ALTER TABLE `tblannouncement`
  MODIFY `ANNOUNCEMENTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2018007;

--
-- AUTO_INCREMENT for table `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `EXPENSEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblfees`
--
ALTER TABLE `tblfees`
  MODIFY `FEEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblinstructorsubject`
--
ALTER TABLE `tblinstructorsubject`
  MODIFY `INST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbllevel`
--
ALTER TABLE `tbllevel`
  MODIFY `LEVELID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `tblsection`
--
ALTER TABLE `tblsection`
  MODIFY `SECTIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsemester`
--
ALTER TABLE `tblsemester`
  MODIFY `SEMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblsy`
--
ALTER TABLE `tblsy`
  MODIFY `AYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
