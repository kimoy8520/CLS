-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2012 at 10:34 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cls`
--
CREATE DATABASE `cls` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cls`;

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE IF NOT EXISTS `consultation` (
  `cid` int(255) NOT NULL AUTO_INCREMENT,
  `faculty_uid` varchar(20) NOT NULL,
  `stud_id` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` mediumtext NOT NULL,
  `subsec` varchar(30) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`cid`, `faculty_uid`, `stud_id`, `date`, `time`, `description`, `subsec`) VALUES
(6, 'dorward.villaruz', '2009-0666', '2012/08/05', '2012-09-12 10:26:10', 'how to load external fonts to using css', 'CSc 100 - T3M8'),
(7, 'dorward.villaruz', '2012-2525', '2012/08/10', '2012-09-12 10:26:10', 'churva', 'CSc 171 - AI'),
(8, 'dorward.villaruz', '2008-4123', '2012/08/17', '2012-09-12 10:26:10', 'char', 'ENG I - ENGENG'),
(21, 'dorward.villaruz', '2009-4441', '2012/09/01', '2012-09-12 10:26:10', 'Growth and Decay', 'ES81 - T5'),
(20, 'dorward.villaruz', '2010-3321', '2012/09/01', '2012-09-12 10:26:10', 'Project Proposal', 'CSc 181 - T23'),
(19, 'dorward.villaruz', '2009-0005', '2012/09/29', '2012-09-12 10:26:10', 'Stats', 'ES85 - COE');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `faculty_uid` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(40) NOT NULL,
  `college` varchar(40) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `location` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`faculty_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_uid`, `password`, `name`, `college`, `dept`, `location`, `status`) VALUES
('dorward.villaruz', '123e7cd7f3c39c508f07c8f974dd2f55', 'Dorward Villaruz', 'School of Computer Studies', 'Computer Science', 'Computer Center, COE', 1),
('val.madrid', 'd34f9f73de4e49c41bb8cb5ae0a156c3', 'Val Randolf Madrid', 'School of Computer Studies', 'Computer Science', 'Computer Science Department', 0),
('rene.crisostomo', 'rcris', 'Rene Crisostomo', 'School of Computer Studies', 'Computer Science', '', 0),
('cyrus.gabilla', 'cgab', 'Cyrus Gabilla', 'School of Computer Studies', 'Computer Science', '', 0),
('eli.mostrales', 'elmo', 'Eli Mostrales', 'School of Computer Studies', 'Computer Science', '', 0),
('mark.manlimos', 'mman', 'Mark Manlimos', 'School of Computer Studies', 'Computer Science', '', 0),
('jennifer.montemayor', 'jmon', 'Jennifer Montemayor', 'School of Computer Studies', 'Computer Science', '', 0),
('fatima.santos', 'fsan', 'Fatimah Joy Santos', 'College of Arts and Social Science', 'English', '', 0),
('nelia.balgoa', 'nbal', 'Nelia Galosa Balgoa', 'College of Arts and Social Science', 'English', '', 0),
('rosie.boniao', 'rbon', 'Rosie Enderes Boniao', 'College of Arts and Social Science', 'English', '', 0),
('judith.cagaanan', 'jcag', 'Judith Cagaanan', 'College of Arts and Social Science', 'English', '', 0),
('michelle.caracut', 'mcar', 'Michelle Jeanne Casiple Caracut', 'College of Arts and Social Science', 'Filipino', '', 0),
('honeylet.dumoran', 'hdum', 'Honeylet Ermac Dumoran', 'College of Arts and Social Science', 'Filipino', '', 0),
('rosario.dizon', 'rdiz', 'Rosario Butron Dizon', 'College of Arts and Social Science', 'Filipino', '', 0),
('kristine.herbito', 'kher', 'Kristine Ramo Herbito', 'College of Arts and Social Science', 'Filipino', '', 0),
('melba.ijan', 'mij', 'Melba Baguio Ijan', 'College of Arts and Social Science', 'Filipino', '', 0),
('lydia.mata', 'lmat', 'Lydia Laranjo Mata', 'College of Arts and Social Science', 'Filipino', '', 0),
('melecita.baena', 'mbae', 'Melecita Galera Baena', 'College of Arts and Social Science', 'Filipino', '', 0),
('nora.clar', 'ncla', 'Nora Ador Clar', 'College of Arts and Social Science', 'History', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `stud_id` varchar(10) NOT NULL,
  `stud_name` varchar(40) NOT NULL,
  `stud_college` varchar(30) NOT NULL,
  `stud_course` varchar(30) NOT NULL,
  `yearlvl` int(1) NOT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `stud_name`, `stud_college`, `stud_course`, `yearlvl`) VALUES
('2009-0000', 'James L. Antiquina', 'School of Computer Studies', 'BSIT', 4),
('2009-3869', 'Rodel S. Pepino', 'School of Engineering Technolo', 'ELET -  EPD', 3),
('2009-7604', 'Febris P. Pacarro', 'College of Science and Mathema', 'BSChem', 4),
('2005-5188', 'Carl Rudolf P. Berondo', 'School of Computer Studies', 'BS-Computer Science', 4),
('2009-0001', 'Genesis Bacarrisas', 'School Of Computer Studies', 'BS-Computer Science', 4),
('2009-0002', 'Rufo Barbarona', 'School of Computer Studies', 'BS-Computer Science', 4),
('2009-0003', 'Mellhakim Angni', 'School Of Computer Studies', 'BS-Computer Science', 4),
('2012-2121', 'Rheaman Apugan', 'School Of Engineering Technolo', 'Civil Engineering Technology', 1),
('2010-1121', 'Kim Trinidad', 'School of Computer Studies', 'BS-Information Technology', 3),
('2010-0666', 'Clyde Sacote', 'School of Computer Studies', 'BS-Computer Science', 3),
('2011-5543', 'Nadine Chu', 'School of Computer Studies', 'BS-Information Technology', 2),
('2011-4432', 'Jobelle Villamor', 'School of Engineering Technolo', 'Civil Engineering Technology', 2),
('2012-5332', 'Jennt Luz Jenotan', 'College of Business Administra', 'BS-Accountancy', 1),
('2010-1111', 'Loreli P.dela Cruz', 'College of Nursing', 'BS-Nursing', 3),
('2009-0005', 'Novo Dimaporo', 'School of Computer Studies', 'BS-Computer Science', 4),
('2009-0007', 'Arjay Sitoy', 'School Of Computer Studies', 'BS-Computer Science', 4),
('2006-3332', 'Scalaberch Bandiola', 'School of Computer Studies', 'BS-Computer Science', 4),
('2009-0009', 'John Michael Raterta', 'College of Education', 'BS-Education Major in English', 4),
('2012-8875', 'Cliff Patrick P. Berondo', 'College of Science and Mathema', 'BS-Biology Major in Marine Bio', 1),
('2010-6642', 'Cliff Sumalpong', 'College of Arts and Social Sci', 'AB-English', 3),
('2010-4444', 'Ruby Jean Chatto', 'College of Arts and Social Sci', 'AB-Filipino', 3),
('2009-4441', 'Ryan Cantonao', 'College of Engineering', 'BS-Civil Engineering', 4),
('2008-4123', 'Krestin Joy Alberca', 'College of Engineering', 'BS- Electrical Engineering', 5),
('2009-5432', 'Jessie Lloyd Villanueva', 'College of Business Administra', 'BS- Marketing', 4),
('2009-9111', 'Robert James Bon', 'College of Nursing', 'BS-Nursing', 4),
('2009-1122', 'Luke P. dela Cruz', 'College of Nursing', 'BS-Nursing', 4),
('2010-3321', 'Berlen Bon', 'School of Computer Studies', 'BS-Information Technology', 3),
('2011-5553', 'Mark Joseph Cuizon', 'School of Engineering Technolo', 'Mechanical Engineering Technol', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
