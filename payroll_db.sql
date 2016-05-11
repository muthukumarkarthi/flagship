-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2015 at 01:03 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `payroll_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `manage_activity`
--

CREATE TABLE IF NOT EXISTS `manage_activity` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` varchar(10) NOT NULL,
  `activity_name` text NOT NULL,
  `activity_description` text NOT NULL,
  `billable` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` varchar(25) NOT NULL,
  `edited_date` date NOT NULL,
  `edited_time` varchar(25) NOT NULL,
  `deleted_date` date NOT NULL,
  `deleted_time` varchar(25) NOT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `manage_activity`
--

INSERT INTO `manage_activity` (`s_no`, `activity_id`, `activity_name`, `activity_description`, `billable`, `created_date`, `created_time`, `edited_date`, `edited_time`, `deleted_date`, `deleted_time`, `del_status`) VALUES
(1, 'ACT10000', 'test2', '', 'Billable', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(2, 'ACT10001 ', 'act', '', 'NonBillable', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(3, 'ACT10002', 'dfd', 'dxfhg', '1', '2015-08-11', '', '0000-00-00', '', '0000-00-00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_clients`
--

CREATE TABLE IF NOT EXISTS `manage_clients` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(10) NOT NULL,
  `client_name` text NOT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL,
  `website` varchar(50) NOT NULL,
  `name_1` varchar(35) NOT NULL,
  `phone_1` int(25) NOT NULL,
  `email_id_1` text NOT NULL,
  `instant_messenger_id_1` varchar(30) NOT NULL,
  `name_2` varchar(35) NOT NULL,
  `phone_2` int(25) NOT NULL,
  `email_id_2` text NOT NULL,
  `instant_messenger_id_2` varchar(30) NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `country` text NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `edited_date` date NOT NULL,
  `edited_time` varchar(25) NOT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` date NOT NULL,
  `created_time` varchar(25) NOT NULL,
  `deleted_date` date NOT NULL,
  `deleted_time` varchar(25) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `manage_clients`
--

INSERT INTO `manage_clients` (`s_no`, `client_id`, `client_name`, `description`, `address`, `website`, `name_1`, `phone_1`, `email_id_1`, `instant_messenger_id_1`, `name_2`, `phone_2`, `email_id_2`, `instant_messenger_id_2`, `active_status`, `country`, `state`, `city`, `edited_date`, `edited_time`, `del_status`, `created_date`, `created_time`, `deleted_date`, `deleted_time`) VALUES
(1, 'CLT10000', 'magic', 'test', 'test', 'test', 'test', 5, 'test', 'test', 'test', 3, 'test', 'test', 0, 'test', 'test', 'test', '0000-00-00', '', 1, '2015-07-31', 'test3', '0000-00-00', ''),
(2, 'CLT10001 ', 'peoplepay', 'test', 'test', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'test', 0, 'test', 'test', 'test', '0000-00-00', '', 1, '0000-00-00', 'v', '0000-00-00', ''),
(4, 'CLT10002 ', 'gf,123', 'gbfgb', 'gh', 'gh', 'gh', 75, 'fgh@fg.cfg', 'gh', 'ghfh', 87, 'fgh@fg.cfg', 'dfg', 0, 'fdh', 'dfh', 'df', '0000-00-00', '', 0, '2029-07-15', 'fh', '0000-00-00', ''),
(5, 'CLT10003 ', '', '', '', '', '', 0, '', '', '', 0, '', '', 0, '', '', '', '0000-00-00', '', 1, '2029-07-15', '', '0000-00-00', ''),
(6, 'CLT10004', 'magic', 'bhh', 'bh', 'ddd', '', 0, '', '', '', 0, '', '', 0, '', '', '', '0000-00-00', '', 1, '2015-08-17', '18:56:04', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `manage_designation`
--

CREATE TABLE IF NOT EXISTS `manage_designation` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `designation_id` varchar(10) NOT NULL,
  `designation` text NOT NULL,
  `description` text NOT NULL,
  `created_date` date NOT NULL,
  `created_time` varchar(25) NOT NULL,
  `edited_date` date NOT NULL,
  `edited_time` varchar(25) NOT NULL,
  `deleted_date` date NOT NULL,
  `deleted_time` varchar(25) NOT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `manage_designation`
--

INSERT INTO `manage_designation` (`s_no`, `designation_id`, `designation`, `description`, `created_date`, `created_time`, `edited_date`, `edited_time`, `deleted_date`, `deleted_time`, `del_status`) VALUES
(1, 'DSG10000', 'Admin', 'Admin of the server', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0),
(2, 'DSG10001', 'dfg', 'dfg', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(3, 'DSG10002', 'dfg', 'hjk', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manage_employee`
--

CREATE TABLE IF NOT EXISTS `manage_employee` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(10) NOT NULL,
  `employee_name` text NOT NULL,
  `gender` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joining` date NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(250) NOT NULL,
  `department` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `company` text NOT NULL,
  `assc_company` text NOT NULL,
  `official_email` text NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `attendance_per` tinyint(4) NOT NULL DEFAULT '0',
  `employee_profile_per` tinyint(4) NOT NULL DEFAULT '0',
  `feedback_per` tinyint(4) NOT NULL DEFAULT '0',
  `fixed_asset_per` tinyint(4) NOT NULL DEFAULT '0',
  `holiday_per` tinyint(4) NOT NULL DEFAULT '0',
  `infrastructure_per` tinyint(4) NOT NULL DEFAULT '0',
  `leave_mgmt_per` tinyint(4) NOT NULL DEFAULT '0',
  `masters_per` tinyint(4) NOT NULL DEFAULT '0',
  `permission_per` tinyint(4) NOT NULL DEFAULT '0',
  `policy_per` tinyint(4) NOT NULL DEFAULT '0',
  `user_mgmt` tinyint(4) NOT NULL DEFAULT '0',
  `visitor_card_per` tinyint(4) NOT NULL DEFAULT '0',
  `work_from_home_per` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `created_time` varchar(25) NOT NULL,
  `edited_date` date NOT NULL,
  `edited_time` varchar(25) NOT NULL,
  `deleted_date` date NOT NULL,
  `deleted_time` varchar(25) NOT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `manage_employee`
--

INSERT INTO `manage_employee` (`s_no`, `employee_id`, `employee_name`, `gender`, `date_of_birth`, `date_of_joining`, `mobile`, `email`, `password`, `department`, `role`, `company`, `assc_company`, `official_email`, `active_status`, `attendance_per`, `employee_profile_per`, `feedback_per`, `fixed_asset_per`, `holiday_per`, `infrastructure_per`, `leave_mgmt_per`, `masters_per`, `permission_per`, `policy_per`, `user_mgmt`, `visitor_card_per`, `work_from_home_per`, `created_date`, `created_time`, `edited_date`, `edited_time`, `deleted_date`, `deleted_time`, `del_status`) VALUES
(1, 'EMP10000', 'test', 'test', '2015-08-03', '2015-08-04', '1234567890', 'test1', 'test', 'test', 'test', '', '', 'test', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(2, 'EMP10001', 'e', 'male', '0000-00-00', '0000-00-00', '324', 'sdgf@sdf.com', '', 'e', 'e', '', '', 'sdgf@sdf.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-08-08', '', '0000-00-00', '', '0000-00-00', '', 1),
(3, 'EMP10002', 'D', '', '0000-00-00', '0000-00-00', '', '1', '1', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-08-08', '', '0000-00-00', '', '0000-00-00', '', 0),
(4, 'EMP10003', 'test name', 'other', '0000-00-00', '0000-00-00', '3463', 'test', 'test', 'dfg', 'test role', '', '', 'gg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-08-08', '', '0000-00-00', '', '0000-00-00', '', 1),
(5, 'EMP10004', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-08-08', '', '0000-00-00', '', '0000-00-00', '', 0),
(6, 'EMP10005', 'erf', 'male', '0000-00-00', '0000-00-00', '565', 'frjh@jhde.com', '', 'gffyh', 'bf', '', '', 'frjh@jhde.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-08-09', '', '0000-00-00', '', '0000-00-00', '', 1),
(7, 'EMP10006', 'dfg', 'female', '2015-08-26', '2015-08-26', '565', 'ghfsdh@ghj.com', '', 'etge', 'rger', '', '', 'ghfsdh@ghj.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-08-09', '', '0000-00-00', '', '2015-08-17', '16:35:37', 0),
(8, 'EMP10002', 'D', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0),
(9, 'EMP10007', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-08-19', '16:27:14', '0000-00-00', '', '0000-00-00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_leave_reason`
--

CREATE TABLE IF NOT EXISTS `manage_leave_reason` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `leave_reason_id` varchar(10) NOT NULL,
  `leave_reason` text NOT NULL,
  `description` text NOT NULL,
  `created_date` date NOT NULL,
  `created_time` varchar(25) NOT NULL,
  `edited_date` date NOT NULL,
  `edited_time` varchar(25) NOT NULL,
  `deleted_date` date NOT NULL,
  `deleted_time` varchar(25) NOT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `manage_leave_reason`
--

INSERT INTO `manage_leave_reason` (`s_no`, `leave_reason_id`, `leave_reason`, `description`, `created_date`, `created_time`, `edited_date`, `edited_time`, `deleted_date`, `deleted_time`, `del_status`) VALUES
(1, 'LVR10000', 'Casual Leave', 'qwert', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(2, 'LVR10001', 'test', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manage_projects`
--

CREATE TABLE IF NOT EXISTS `manage_projects` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(10) NOT NULL,
  `project_name` text NOT NULL,
  `client` varchar(50) NOT NULL,
  `project_manager` varchar(50) NOT NULL,
  `domain` text NOT NULL,
  `project_status` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `budget` float(9,5) NOT NULL,
  `effort_in_days` tinyint(4) NOT NULL,
  `project_description` text NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` date NOT NULL,
  `created_time` varchar(25) NOT NULL,
  `edited_date` date NOT NULL,
  `edited_time` varchar(25) NOT NULL,
  `deleted_date` date NOT NULL,
  `deleted_time` varchar(25) NOT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `manage_projects`
--

INSERT INTO `manage_projects` (`s_no`, `project_id`, `project_name`, `client`, `project_manager`, `domain`, `project_status`, `start_date`, `end_date`, `budget`, `effort_in_days`, `project_description`, `active_status`, `created_date`, `created_time`, `edited_date`, `edited_time`, `deleted_date`, `deleted_time`, `del_status`) VALUES
(1, 'PJT10000', 'test', 'test', 'test2', 'test', 'in progress', '0000-00-00', '2015-07-28', 0.00000, 4, 'test', 0, '2015-07-26', 'test', '0000-00-00', '', '0000-00-00', '', 1),
(2, 'PJT10001', 'adf', 'peoplepay', 'afd', 'sdf', 'started', '0000-00-00', '0000-00-00', 0.00000, 0, 'edfsf', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(3, 'PJT10002', '', '', '', '', 'onhold', '0000-00-00', '0000-00-00', 0.00000, 0, '', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(4, 'PJT10003', 'gf', 'magic', 'gf', 'fg', 'started', '0000-00-00', '0000-00-00', 10.00000, 2, 'fg', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(5, 'PJT10004', 'sdf', 'test', 'df', 'sdf', 'onhold', '0000-00-00', '0000-00-00', 24.00000, 23, 'sdf', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(6, 'PJT10005', 'fg', 'peoplepay', 'gfg', 'k', 'onhold', '0000-00-00', '0000-00-00', 567.00000, 5, 'ik', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(13, 'PJT10006', '', '', '', '', '', '0000-00-00', '0000-00-00', 0.00000, 0, '', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0),
(14, 'PJT10007', '', '', '', '', '', '0000-00-00', '0000-00-00', 0.00000, 0, '', 0, '0000-00-00', '07:21:46', '0000-00-00', '', '0000-00-00', '', 1),
(15, 'PJT10008', '', '', '', '', '', '0000-00-00', '0000-00-00', 0.00000, 0, '', 0, '0000-00-00', '10:56:02', '0000-00-00', '', '0000-00-00', '', 1),
(16, 'PJT10009', '', '', '', '', '', '0000-00-00', '0000-00-00', 0.00000, 0, '', 0, '0000-00-00', '11:35:29', '0000-00-00', '', '0000-00-00', '', 0),
(17, 'PJT10010', '', '', '', '', '', '0000-00-00', '0000-00-00', 0.00000, 0, '', 0, '0000-00-00', '11:37:44', '0000-00-00', '', '0000-00-00', '', 1),
(18, 'PJT10011', 'dfgh', '', 'gfh', 'dfg', 'onhold', '0000-00-00', '0000-00-00', 456.00000, 56, 'fg', 0, '0000-00-00', '15:59:37', '0000-00-00', '', '0000-00-00', '', 1),
(19, 'PJT10012', '', '', '', '', '', '0000-00-00', '0000-00-00', 0.00000, 0, '', 0, '0000-00-00', '16:39:30', '0000-00-00', '', '0000-00-00', '', 1),
(20, 'PJT10013 ', 'rftgh', 'magic', 'tghyr', 'yjut', 'onhold', '0000-00-00', '0000-00-00', 56.00000, 127, 'dyj', 0, '0000-00-00', '16:46:31', '2015-08-14', '16:46:50', '0000-00-00', '', 1),
(21, 'PJT10014', '', '', '', '', '', '2015-01-01', '2015-01-02', 0.00000, 0, '', 0, '0000-00-00', '16:49:27', '0000-00-00', '', '0000-00-00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_technology`
--

CREATE TABLE IF NOT EXISTS `manage_technology` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `technology_id` varchar(10) NOT NULL,
  `technology` text NOT NULL,
  `technology_description` text NOT NULL,
  `created_date` date NOT NULL,
  `created_time` varchar(25) NOT NULL,
  `edited_date` date NOT NULL,
  `edited_time` varchar(25) NOT NULL,
  `deleted_date` date NOT NULL,
  `deleted_time` varchar(25) NOT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `manage_technology`
--

INSERT INTO `manage_technology` (`s_no`, `technology_id`, `technology`, `technology_description`, `created_date`, `created_time`, `edited_date`, `edited_time`, `deleted_date`, `deleted_time`, `del_status`) VALUES
(1, 'TECH1000', 'local server', 'grgwkhe', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(3, 'TECH1001', 'asdf', 'bvcx', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(4, 'TECH1002', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(5, 'TECH1003', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(6, 'TECH1004', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(7, 'TECH1005', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(8, 'TECH1006', 'server', 'localhost', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(9, 'TECH1007', 'framework', 'codeignitor', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(10, 'TECH1008', 'new', 'fast & new one', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(11, 'TECH1009', 'asdfghj', 'hgfdsa', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(12, 'TECH1010', 'QWERT', 'TREWQ', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(13, 'TECH1011', 'LKJHG', 'FGHJK', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 1),
(14, 'TECH1012', 'asdfg', 'zxcvb', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0),
(15, 'TECH1013', 'huj', 'hvbyu', '2015-08-14', '11:59:46', '0000-00-00', '', '0000-00-00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_management`
--

CREATE TABLE IF NOT EXISTS `user_management` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `company_name` text NOT NULL,
  `assc_company` text NOT NULL,
  `role` text NOT NULL,
  `active_status` varchar(10) NOT NULL DEFAULT 'active',
  `del_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` date NOT NULL,
  `created_time` varchar(25) NOT NULL,
  `edited_date` date NOT NULL,
  `edited_time` varchar(25) NOT NULL,
  `deleted_date` date NOT NULL,
  `deleted_time` varchar(25) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_management`
--

INSERT INTO `user_management` (`s_no`, `user_id`, `user_name`, `password`, `email`, `company_name`, `assc_company`, `role`, `active_status`, `del_status`, `created_date`, `created_time`, `edited_date`, `edited_time`, `deleted_date`, `deleted_time`) VALUES
(1, 'USR10000', 'test', 'test', 'test1', 'test', 'test', 'test', 'active', 1, '2015-08-02', '00:00:00', '2015-08-04', '00:00:00', '2015-07-12', '00:00:00'),
(2, 'USR10001', '1', '123', 'test2', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(3, 'USR10002', 'fg', '', '', '', '', '', 'inactive', 1, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(5, 'USR10004', 'hb', 'test', 'test', '', '', '', 'active', 1, '2015-08-20', '15:24:40', '0000-00-00', '', '0000-00-00', ''),
(6, 'USR10005', 'h', 'h', '', 'h', 'h', '', 'active', 1, '2015-08-20', '15:28:32', '0000-00-00', '', '0000-00-00', ''),
(7, 'USR10006', 'yhj', 'fgj', '', 'fg', 'fg', '', 'active', 1, '2015-08-20', '15:30:50', '0000-00-00', '', '0000-00-00', ''),
(8, 'USR10007', 't', 't', '', 'hv', 'fvgh', '', 'active', 1, '2015-08-20', '16:21:41', '0000-00-00', '', '0000-00-00', ''),
(9, 'USR10008', 'ege', '123', 'd', 'sh', 'sfh', 'dgh', 'inactive', 1, '2015-08-21', '16:55:54', '0000-00-00', '', '0000-00-00', ''),
(10, 'USR10009', 'ysdu', 'tr', '', '', '', '', 'active', 1, '2015-08-23', '11:14:03', '0000-00-00', '', '0000-00-00', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
