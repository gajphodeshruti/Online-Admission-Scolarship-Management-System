-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2020 at 09:48 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chanakya`
--

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `stateid` int(11) NOT NULL AUTO_INCREMENT,
  `statename` varchar(100) NOT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateid`, `statename`) VALUES
(1, 'Maharahtra'),
(2, 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(100) NOT NULL,
  `districtid` int(11) NOT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`cityid`, `cityname`, `districtid`) VALUES
(1, 'Kurduwadi', 1),
(2, 'Madha', 1),
(3, 'Akluj', 1),
(4, 'Shirur', 2),
(5, 'Baramati', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `contact_message` varchar(255) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`) VALUES
(1, 'shubhs', 'shubhsdeshmukh29@gmail.com', 'hi', 'd'),
(2, 'shubhs', 'ankitaphulee@gmail.com', 'hgh', 'ghg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE IF NOT EXISTS `tbl_district` (
  `districtid` int(11) NOT NULL AUTO_INCREMENT,
  `districtname` varchar(100) NOT NULL,
  `stateid` int(11) NOT NULL,
  PRIMARY KEY (`districtid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`districtid`, `districtname`, `stateid`) VALUES
(1, 'Solapur', 1),
(2, 'Pune', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_educationdetails`
--

CREATE TABLE IF NOT EXISTS `tbl_educationdetails` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `exams` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `Board` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `edu_isdeleted` int(11) NOT NULL,
  `addedby` int(11) NOT NULL,
  `lastupdate` int(11) NOT NULL,
  PRIMARY KEY (`edu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_educationdetails`
--

INSERT INTO `tbl_educationdetails` (`edu_id`, `exams`, `year`, `Board`, `school`, `percentage`, `id`, `edu_isdeleted`, `addedby`, `lastupdate`) VALUES
(1, '10th', '2009', 'Pune Board', 'MJP', '80', 1, 0, 0, 2),
(2, '12th', '2013', 'Pune Board', 'MJP', '65', 1, 0, 1, 1),
(3, '10th', '2013', 'Pune Board', 'Nutan', '65', 2, 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE IF NOT EXISTS `tbl_employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `emp_address` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `emp_gender` varchar(255) NOT NULL,
  `stateid` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `emp_imgname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `isdeleted` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_name`, `emp_address`, `contactno`, `emp_gender`, `stateid`, `districtid`, `cityid`, `password`, `emp_imgname`, `role`, `isdeleted`) VALUES
(1, 'Ankita P', 'Akluj', '9405393634', 'female', 1, 1, 3, 'Ankita@93', '5e3bbde0c1198Penguins.jpg', 'employee', 0),
(2, 'Shubhangi', 'Darfal', '9405393633', 'female', 1, 1, 2, 'Shubhs@29', '5e3baa4eb14c2Tulips.jpg', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE IF NOT EXISTS `tbl_enquiry` (
  `enquiryid` int(11) NOT NULL AUTO_INCREMENT,
  `enquiryname` varchar(100) NOT NULL,
  PRIMARY KEY (`enquiryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`enquiryid`, `enquiryname`) VALUES
(1, 'NCRT'),
(2, 'NEET');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE IF NOT EXISTS `tbl_gallery` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_typeid` int(11) DEFAULT '0',
  `image_name` varchar(255) NOT NULL,
  `img_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`g_id`, `gallery_typeid`, `image_name`, `img_desc`) VALUES
(1, 1, 'gallery/image-00.jpg', 'Academic 1'),
(2, 1, 'gallery/image-001.jpg', 'Academic 2'),
(3, 1, 'gallery/image-002.jpg', 'Academic 3'),
(4, 1, 'gallery/image-003.jpg', 'Academic 4'),
(5, 1, 'gallery/image-004.jpg', 'Academic 5'),
(6, 2, 'gallery/Picture4.jpg', 'Annual trip 1'),
(7, 2, 'gallery/Picture5.jpg', 'Annual trip 2'),
(8, 2, 'gallery/Picture6.jpg', 'Annual trip3'),
(9, 3, 'gallery/Picture1.jpg', 'Annual Function 1'),
(10, 3, 'gallery/Picture2.jpg', 'Annual function 2'),
(11, 3, 'gallery/Picture3.jpg', 'Annual Function 3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallerytype`
--

CREATE TABLE IF NOT EXISTS `tbl_gallerytype` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_type` varchar(255) NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_gallerytype`
--

INSERT INTO `tbl_gallerytype` (`gallery_id`, `gallery_type`) VALUES
(1, 'acadamic'),
(2, 'annualtrip'),
(3, 'annualfunction');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news`) VALUES
(1, 'Welcome to Shiv Skill Foundation Shiv Skill Foundation - each human being is born with unique set of potential that earns to be fulfilled as surely as the acorn yearns to become the oak within it - Aristotle.'),
(2, 'our faculty members are come from the best university. they are experts in their own domain and share real life experiences with students.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parentsdetails`
--

CREATE TABLE IF NOT EXISTS `tbl_parentsdetails` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_name` varchar(255) NOT NULL,
  `parent_contact` varchar(255) NOT NULL,
  `parent_occupation` varchar(255) NOT NULL,
  `area_of_working` varchar(255) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `p_isdeleted` int(11) NOT NULL,
  `addedby` int(11) NOT NULL,
  `lastupdate` int(11) NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_parentsdetails`
--

INSERT INTO `tbl_parentsdetails` (`parent_id`, `parent_name`, `parent_contact`, `parent_occupation`, `area_of_working`, `rel_id`, `id`, `p_isdeleted`, `addedby`, `lastupdate`) VALUES
(1, 'Alka', '9421023133', 'Housewife', 'Mahud', 2, 1, 0, 0, 0),
(2, 'Prakash', '8529637410', 'Job', 'Mahud', 1, 1, 0, 0, 0),
(3, 'Ramkrushna', '9421023135', 'Farmar', 'Darfal', 1, 2, 0, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reff`
--

CREATE TABLE IF NOT EXISTS `tbl_reff` (
  `reff_id` int(20) NOT NULL AUTO_INCREMENT,
  `reff_name` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `stateid` int(11) NOT NULL,
  `districtid` int(40) NOT NULL,
  `cityid` int(11) NOT NULL,
  `occupation` varchar(40) NOT NULL,
  `other` varchar(40) NOT NULL,
  `addedby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL,
  PRIMARY KEY (`reff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_reff`
--

INSERT INTO `tbl_reff` (`reff_id`, `reff_name`, `contact`, `address`, `stateid`, `districtid`, `cityid`, `occupation`, `other`, `addedby`, `updatedby`, `isdeleted`) VALUES
(1, 'Ghgs', '9405393638', 'hghj', 1, 2, 5, '444', 'gfghf', 1, 2, 0),
(2, 'aaaa', '9405393633', 'lhpwe', 1, 1, 1, 'fgh', 'uitr', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE IF NOT EXISTS `tbl_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `stateid` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `enquiryid` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `imagename` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `isdeleted` int(11) NOT NULL,
  `addedby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`id`, `fname`, `address`, `contactno`, `gender`, `stateid`, `districtid`, `cityid`, `enquiryid`, `password`, `imagename`, `role`, `isdeleted`, `addedby`, `updatedby`) VALUES
(1, 'Priya', 'Mahud', '7894561234', 'female', 1, 1, 3, 2, 'Priya@25', '5e3bcaf7b7c33Chrysanthemum.jpg', 'student', 0, 1, 2),
(2, 'Onkar', 'Pune', '9012345788', 'male', 1, 2, 5, 2, 'Onkar@14', '5e3e577ba740710013975_1546943518852776_5686106885208814103_n_2.jpg', 'student', 0, 2, 0),
(3, 'Pranav', 'Benglore', '9922909944', 'male', 1, 1, 1, 2, 'Pranav1', '5e3e6a0f41282Lighthouse.jpg', 'student', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_relation`
--

CREATE TABLE IF NOT EXISTS `tbl_relation` (
  `rel_id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_name` varchar(100) NOT NULL,
  PRIMARY KEY (`rel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_relation`
--

INSERT INTO `tbl_relation` (`rel_id`, `rel_name`) VALUES
(1, 'Father'),
(2, 'Mother'),
(3, 'Teacher'),
(4, 'Gardian');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE IF NOT EXISTS `tbl_school` (
  `sch_id` int(20) NOT NULL AUTO_INCREMENT,
  `schoolname` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `stateid` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `principal` varchar(40) NOT NULL,
  `count` varchar(40) NOT NULL,
  `addedby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL,
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`sch_id`, `schoolname`, `contact`, `address`, `stateid`, `districtid`, `cityid`, `principal`, `count`, `addedby`, `updatedby`, `isdeleted`) VALUES
(1, 'NVD Darfal', '7894561230', 'baramati', 1, 2, 5, 'aaaaa', '45', 2, 0, 0);
