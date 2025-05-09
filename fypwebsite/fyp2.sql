-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2013 at 11:02 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fyp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE IF NOT EXISTS `domain` (
  `chapID` int(6) NOT NULL AUTO_INCREMENT,
  `chapName` varchar(255) NOT NULL,
  `chapKeyword` varchar(255) NOT NULL,
  `chapDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`chapID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`chapID`, `chapName`, `chapKeyword`, `chapDesc`) VALUES
(1, 'Addition', 'Add, 50', 'Pupils will be taught to understand addition with with the highest total of 50'),
(2, 'Substraction ', 'Subtract, 50', 'Pupils will be taught to understand subtraction as "Take away" or "Difference" between two groups of objects within 50');

-- --------------------------------------------------------

--
-- Table structure for table `hint`
--

CREATE TABLE IF NOT EXISTS `hint` (
  `hintID` int(6) NOT NULL AUTO_INCREMENT,
  `quesID` int(6) NOT NULL,
  `hintDesc` varchar(255) NOT NULL,
  `hintLvl` int(1) NOT NULL,
  PRIMARY KEY (`hintID`),
  KEY `ques_fk3` (`quesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=285 ;

--
-- Dumping data for table `hint`
--

INSERT INTO `hint` (`hintID`, `quesID`, `hintDesc`, `hintLvl`) VALUES
(1, 1, 'Hint 1', 1),
(2, 1, 'Hint 2', 2),
(3, 2, 'Hint 1', 1),
(4, 2, 'Hint 2', 2),
(5, 3, 'Hint 1', 1),
(6, 3, 'Hint 2', 2),
(7, 4, 'Hint 1', 1),
(8, 4, 'Hint 2', 2),
(9, 5, 'Hint 1', 1),
(10, 5, 'Hint 2', 2),
(11, 6, 'Hint 1', 1),
(12, 6, 'Hint 2', 2),
(13, 7, 'Hint 1', 1),
(14, 7, 'Hint 2', 2),
(15, 8, 'Hint 1', 1),
(16, 8, 'Hint 2', 2),
(17, 9, 'Hint 1', 1),
(18, 9, 'Hint 2', 2),
(19, 10, 'Hint 1', 1),
(20, 10, 'Hint 2', 2),
(21, 11, 'Hint 1', 1),
(22, 11, 'Hint 2', 2),
(23, 12, 'Hint 1', 1),
(24, 12, 'Hint 2', 2),
(25, 13, 'Hint 1', 1),
(26, 13, 'Hint 2', 2),
(27, 14, 'Hint 1', 1),
(28, 14, 'Hint 2', 2),
(29, 15, 'Hint 1', 1),
(30, 15, 'Hint 2', 2),
(31, 16, 'Hint 1', 1),
(32, 16, 'Hint 2', 2),
(33, 17, 'Hint 1', 1),
(34, 17, 'Hint 2', 2),
(35, 18, 'Hint 1', 1),
(36, 18, 'Hint 2', 2),
(37, 19, 'Hint 1', 1),
(38, 19, 'Hint 2', 2),
(39, 20, 'Hint 1', 1),
(40, 20, 'Hint 2', 2),
(41, 21, 'Hint 1', 1),
(42, 21, 'Hint 2', 2),
(43, 22, 'Hint 1', 1),
(44, 22, 'Hint 2', 2),
(45, 23, 'Hint 1', 1),
(46, 23, 'Hint 2', 2),
(47, 24, 'Hint 1', 1),
(48, 24, 'Hint 2', 2),
(49, 25, 'Hint 1', 1),
(50, 25, 'Hint 2', 2),
(51, 26, 'Hint 1', 1),
(52, 26, 'Hint 2', 2),
(53, 27, 'Hint 1', 1),
(54, 27, 'Hint 2', 2),
(55, 28, 'Hint 1', 1),
(56, 28, 'Hint 2', 2),
(57, 29, 'Hint 1', 1),
(58, 29, 'Hint 2', 2),
(59, 30, 'Hint 1', 1),
(60, 30, 'Hint 2', 2),
(61, 31, 'Hint 1', 1),
(62, 31, 'Hint 2', 2),
(63, 32, 'Hint 1', 1),
(64, 32, 'Hint 2', 2),
(65, 33, 'Hint 1', 1),
(66, 33, 'Hint 2', 2),
(67, 34, 'Hint 1', 1),
(68, 34, 'Hint 2', 2),
(69, 35, 'Hint 1', 1),
(70, 35, 'Hint 2', 2),
(71, 36, 'Hint 1', 1),
(72, 36, 'Hint 2', 2),
(73, 37, 'Hint 1', 1),
(74, 37, 'Hint 2', 2),
(75, 38, 'Hint 1', 1),
(76, 38, 'Hint 2', 2),
(77, 39, 'Hint 1', 1),
(78, 39, 'Hint 2', 2),
(79, 40, 'Hint 1', 1),
(80, 40, 'Hint 2', 2),
(81, 41, 'Hint 1', 1),
(82, 41, 'Hint 2', 2),
(83, 42, 'Hint 1', 1),
(84, 42, 'Hint 2', 2),
(85, 43, 'Hint 1', 1),
(86, 43, 'Hint 2', 2),
(87, 44, 'Hint 1', 1),
(88, 44, 'Hint 2', 2),
(89, 45, 'Hint 1', 1),
(90, 45, 'Hint 2', 2),
(91, 46, 'Hint 1', 1),
(92, 46, 'Hint 2', 2),
(93, 47, 'Hint 1', 1),
(94, 47, 'Hint 2', 2),
(95, 48, 'Hint 1', 1),
(96, 48, 'Hint 2', 2),
(97, 49, 'Hint 1', 1),
(98, 49, 'Hint 2', 2),
(99, 50, 'Hint 1', 1),
(100, 50, 'Hint 2', 2),
(101, 51, 'Hint 1', 1),
(102, 51, 'Hint 2', 2),
(103, 52, 'Hint 1', 1),
(104, 52, 'Hint 2', 2),
(105, 53, 'Hint 1', 1),
(106, 53, 'Hint 2', 2),
(107, 54, 'Hint 1', 1),
(108, 54, 'Hint 2', 2),
(109, 55, 'Hint 1', 1),
(110, 55, 'Hint 2', 2),
(111, 56, 'Hint 1', 1),
(112, 56, 'Hint 2', 2),
(113, 57, 'Hint 1', 1),
(114, 57, 'Hint 2', 2),
(115, 58, 'Hint 1', 1),
(116, 58, 'Hint 2', 2),
(117, 59, 'Hint 1', 1),
(118, 59, 'Hint 2', 2),
(119, 60, 'Hint 1', 1),
(120, 60, 'Hint 2', 2),
(121, 61, 'Hint 1', 1),
(122, 61, 'Hint 2', 2),
(123, 62, 'Hint 1', 1),
(124, 62, 'Hint 2', 2),
(125, 63, 'Hint 1', 1),
(126, 63, 'Hint 2', 2),
(127, 64, 'Hint 1', 1),
(128, 64, 'Hint 2', 2),
(129, 65, 'Hint 1', 1),
(130, 65, 'Hint 2', 2),
(131, 66, 'Hint 1', 1),
(132, 66, 'Hint 2', 2),
(133, 67, 'Hint 1', 1),
(134, 67, 'Hint 2', 2),
(135, 68, 'Hint 1', 1),
(136, 68, 'Hint 2', 2),
(137, 69, 'Hint 1', 1),
(138, 69, 'Hint 2', 2),
(139, 70, 'Hint 1', 1),
(140, 70, 'Hint 2', 2),
(141, 71, 'Hint 1', 1),
(142, 71, 'Hint 2', 2),
(143, 72, 'Hint 1', 1),
(144, 72, 'Hint 2', 2),
(145, 73, 'Hint 1', 1),
(146, 73, 'Hint 2', 2),
(147, 74, 'Hint 1', 1),
(148, 74, 'Hint 2', 2),
(149, 75, 'Hint 1', 1),
(150, 75, 'Hint 2', 2),
(151, 76, 'Hint 1', 1),
(152, 76, 'Hint 2', 2),
(153, 77, 'Hint 1', 1),
(154, 77, 'Hint 2', 2),
(155, 78, 'Hint 1', 1),
(156, 78, 'Hint 2', 2),
(157, 79, 'Hint 1', 1),
(158, 79, 'Hint 2', 2),
(159, 80, 'Hint 1', 1),
(160, 80, 'Hint 2', 2),
(161, 81, 'Hint 1', 1),
(162, 81, 'Hint 2', 2),
(163, 82, 'Hint 1', 1),
(164, 82, 'Hint 2', 2),
(165, 83, 'Hint 1', 1),
(166, 83, 'Hint 2', 2),
(167, 84, 'Hint 1', 1),
(168, 84, 'Hint 2', 2),
(169, 85, 'Hint 1', 1),
(170, 85, 'Hint 2', 2),
(171, 86, 'Hint 1', 1),
(172, 86, 'Hint 2', 2),
(173, 87, 'Hint 1', 1),
(174, 87, 'Hint 2', 2),
(175, 88, 'Hint 1', 1),
(176, 88, 'Hint 2', 2),
(177, 89, 'Hint 1', 1),
(178, 89, 'Hint 2', 2),
(179, 90, 'Hint 1', 1),
(180, 90, 'Hint 2', 2),
(181, 91, 'Hint 1', 1),
(182, 91, 'Hint 2', 2),
(183, 92, 'Hint 1', 1),
(184, 92, 'Hint 2', 2),
(185, 93, 'Hint 1', 1),
(186, 93, 'Hint 2', 2),
(187, 94, 'Hint 1', 1),
(188, 94, 'Hint 2', 2),
(189, 95, 'Hint 1', 1),
(190, 95, 'Hint 2', 2),
(191, 96, 'Hint 1', 1),
(192, 96, 'Hint 2', 2),
(193, 97, 'Hint 1', 1),
(194, 97, 'Hint 2', 2),
(195, 98, 'Hint 1', 1),
(196, 98, 'Hint 2', 2),
(197, 99, 'Hint 1', 1),
(198, 99, 'Hint 2', 2),
(199, 100, 'Hint 1', 1),
(200, 100, 'Hint 2', 2),
(201, 101, 'Hint 1', 1),
(202, 101, 'Hint 2', 2),
(203, 102, 'Hint 1', 1),
(204, 102, 'Hint 2', 2),
(205, 103, 'Hint 1', 1),
(206, 103, 'Hint 2', 2),
(207, 104, 'Hint 1', 1),
(208, 104, 'Hint 2', 2),
(209, 105, 'Hint 1', 1),
(210, 105, 'Hint 2', 2),
(211, 106, 'Hint 1', 1),
(212, 106, 'Hint 2', 2),
(213, 107, 'Hint 1', 1),
(214, 107, 'Hint 2', 2),
(215, 108, 'Hint 1', 1),
(216, 108, 'Hint 2', 2),
(217, 109, 'Hint 1', 1),
(218, 109, 'Hint 2', 2),
(219, 110, 'Hint 1', 1),
(220, 110, 'Hint 2', 2),
(221, 111, 'Hint 1', 1),
(222, 111, 'Hint 2', 2),
(223, 112, 'Hint 1', 1),
(224, 112, 'Hint 2', 2),
(225, 113, 'Hint 1', 1),
(226, 113, 'Hint 2', 2),
(227, 114, 'Hint 1', 1),
(228, 114, 'Hint 2', 2),
(229, 115, 'Hint 1', 1),
(230, 115, 'Hint 2', 2),
(231, 116, 'Hint 1', 1),
(232, 116, 'Hint 2', 2),
(233, 117, 'Hint 1', 1),
(234, 117, 'Hint 2', 2),
(235, 118, 'Hint 1', 1),
(236, 118, 'Hint 2', 2),
(237, 119, 'Hint 1', 1),
(238, 119, 'Hint 2', 2),
(239, 120, 'Hint 1', 1),
(240, 120, 'Hint 2', 2),
(241, 121, 'Hint 1', 1),
(242, 121, 'Hint 2', 2),
(243, 122, 'Hint 1', 1),
(244, 122, 'Hint 2', 2),
(245, 123, 'Hint 1', 1),
(246, 123, 'Hint 2', 2),
(247, 124, 'Hint 1', 1),
(248, 124, 'Hint 2', 2),
(249, 125, 'Hint 1', 1),
(250, 125, 'Hint 2', 2),
(251, 126, 'Hint 1', 1),
(252, 126, 'Hint 2', 2),
(253, 127, 'Hint 1', 1),
(254, 127, 'Hint 2', 2),
(255, 128, 'Hint 1', 1),
(256, 128, 'Hint 2', 2),
(257, 129, 'Hint 1', 1),
(258, 129, 'Hint 2', 2),
(259, 130, 'Hint 1', 1),
(260, 130, 'Hint 2', 2),
(261, 131, 'Hint 1', 1),
(262, 131, 'Hint 2', 2),
(263, 132, 'Hint 1', 1),
(264, 132, 'Hint 2', 2),
(265, 133, 'Hint 1', 1),
(266, 133, 'Hint 2', 2),
(267, 134, 'Hint 1', 1),
(268, 134, 'Hint 2', 2),
(269, 135, 'Hint 1', 1),
(270, 135, 'Hint 2', 2),
(271, 136, 'Hint 1', 1),
(272, 136, 'Hint 2', 2),
(273, 137, 'Hint 1', 1),
(274, 137, 'Hint 2', 2),
(275, 138, 'Hint 1', 1),
(276, 138, 'Hint 2', 2),
(277, 139, 'Hint 1', 1),
(278, 139, 'Hint 2', 2),
(279, 140, 'Hint 1', 1),
(280, 140, 'Hint 2', 2),
(281, 141, 'Hint 1', 1),
(282, 141, 'Hint 2', 2),
(283, 142, 'Hint 1', 1),
(284, 142, 'Hint 2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `historyID` int(6) NOT NULL AUTO_INCREMENT,
  `motivationID` int(6) NOT NULL,
  `stuID` int(6) NOT NULL,
  `quesID` int(6) NOT NULL,
  `hintLvl` int(1) NOT NULL,
  `completionTime` decimal(4,2) DEFAULT NULL,
  `answerProvided` varchar(255) NOT NULL,
  `result` varchar(10) NOT NULL,
  PRIMARY KEY (`historyID`,`motivationID`),
  KEY `motivationID` (`motivationID`),
  KEY `stu_fk3` (`stuID`),
  KEY `ques_fk4` (`quesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_state`
--

CREATE TABLE IF NOT EXISTS `knowledge_state` (
  `knowledgeID` int(6) NOT NULL AUTO_INCREMENT,
  `stuID` int(6) NOT NULL,
  `chapID` int(11) DEFAULT NULL,
  `lessonID` int(6) NOT NULL,
  `marks` decimal(3,2) NOT NULL,
  `motivationalID` int(6) DEFAULT NULL,
  `retentionLvl` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`knowledgeID`),
  KEY `stu_fk2` (`stuID`),
  KEY `chap_fk` (`chapID`),
  KEY `lesson_fk3` (`lessonID`),
  KEY `motivation_fk` (`motivationalID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

-- --------------------------------------------------------

--
-- Table structure for table `learning_goal`
--

CREATE TABLE IF NOT EXISTS `learning_goal` (
  `goalID` int(6) NOT NULL AUTO_INCREMENT,
  `stuID` int(6) NOT NULL,
  `lessonID` int(6) NOT NULL,
  `currentLO` int(6) NOT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY (`goalID`),
  KEY `stu_fk` (`stuID`),
  KEY `lesson_fk2` (`lessonID`),
  KEY `currentlo_fk` (`currentLO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `learning_object`
--

CREATE TABLE IF NOT EXISTS `learning_object` (
  `LearningObjID` int(6) NOT NULL AUTO_INCREMENT,
  `LearningObjName` varchar(255) NOT NULL,
  `LearningObjKey` varchar(100) DEFAULT NULL,
  `LearningObjDesc` varchar(255) DEFAULT NULL,
  `LearningObjLvl` int(1) NOT NULL,
  `LearningObjLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LearningObjID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `learning_object`
--

INSERT INTO `learning_object` (`LearningObjID`, `LearningObjName`, `LearningObjKey`, `LearningObjDesc`, `LearningObjLvl`, `LearningObjLink`) VALUES
(1, 'Introducing The Plus Sign And Addition', '', '1', 1, ''),
(2, ' Adding Zero to a Number', NULL, '3', 1, NULL),
(3, ' Addition of Single Digits', NULL, '3', 2, NULL),
(4, 'Addition Of Two Digit Number', NULL, '3', 3, NULL),
(5, 'Addition up to 20', NULL, '4', 1, NULL),
(6, 'Addition of Two Digit Numbers', NULL, '4', 2, NULL),
(7, 'Addition Word Problems', NULL, '4', 3, NULL),
(8, 'Introducing the Minus Sign and Subtraction', NULL, '6', 3, NULL),
(9, 'Subtracting Zero From a Number', NULL, '8', 1, NULL),
(10, 'Subtraction of Single Digits', NULL, '8', 2, NULL),
(11, 'Subtraction Of Two Digit Number', NULL, '8', 3, NULL),
(12, 'Subtraction by Borrowing', NULL, '9', 1, NULL),
(13, 'Subtraction of Two Digit Numbers', NULL, '9', 2, NULL),
(14, 'Subtraction Word Problems', NULL, '9', 3, NULL),
(15, 'Associative Property', NULL, '11', 1, NULL),
(16, 'Inverse of Addition', NULL, '12', 1, NULL),
(17, 'Adding of Three Numbers', NULL, '13', 1, NULL),
(18, 'Subtraction of Three Numbers', NULL, '14', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learning_obj_link`
--

CREATE TABLE IF NOT EXISTS `learning_obj_link` (
  `LO_LinkID` int(6) NOT NULL AUTO_INCREMENT,
  `LO_ID` int(6) NOT NULL,
  `LO_LinkDescription` varchar(255) DEFAULT NULL,
  `LO_Link` varchar(255) NOT NULL,
  `LO_nextLink_ID` int(6) DEFAULT NULL,
  PRIMARY KEY (`LO_LinkID`),
  KEY `lo_ID_fk` (`LO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `learning_obj_link`
--

INSERT INTO `learning_obj_link` (`LO_LinkID`, `LO_ID`, `LO_LinkDescription`, `LO_Link`, `LO_nextLink_ID`) VALUES
(1, 1, 'Introducing The   Sign And Addition Up to 9', 'DNoWF6cSMFk', NULL),
(2, 2, 'Adding Zero to a Number', 'ikeNNn6m38k', 3),
(3, 3, 'Addition Using Number line', 'n-t2nLgBLD0', 4),
(4, 3, 'Addition table up to 10', 'Zq8PpNDWjSM', 5),
(5, 3, ' Addition With the Help of Tables', 'LZjSbGCBov4', 6),
(6, 3, 'Adding Mentally', '4u3YwTTz2BY', 7),
(7, 3, 'Addition word Problems', '98hmm3ETUhE', NULL),
(8, 4, 'Addition without carrying over', 'ZhjoZQQ19q4', 9),
(9, 4, ' Addition Of Two Digit Number', 'LEaFf_qGLvY', NULL),
(10, 5, 'Practicing addition 11 to 14', '05RKB-yPR2A', 11),
(11, 5, 'Practicing Addition Numbers 15 to 18', 'RWd-AmzqoFo', 12),
(12, 5, 'Addition of One Digit Numbers', 'r2LsTYCxICE', NULL),
(13, 6, 'Adding 2 Digit Numbers with Carrying Pt1', 'P9OVn8Z5xCQ', 14),
(14, 6, 'Adding Two Digit Numbers with Carrying Pt2', 'tqa6K9EkCYY', NULL),
(15, 7, 'Addition Word Problems Pt1', '4jnqWWu5VJo', 16),
(16, 7, 'Addition Word Problems Pt2', 'd6kX17LRDoQ', NULL),
(17, 8, 'Introducing the Minus Sign and Subtraction', 'YyafUPs005s', 18),
(18, 8, 'Concept and Preparation of Subtraction', 'bJNM54nQLPM', NULL),
(19, 9, 'Subtracting Zero From a Number', 'hHrs0csnv94', NULL),
(20, 10, ' Introducing Subtraction up to 09', 'ZrX-PEkPww4', 21),
(21, 10, 'Subtraction Using Number line', 'iHiCT07a-LE', 22),
(22, 10, 'Using Tables for Subtraction', 'BpoBykE0JM4', 23),
(23, 10, 'Subtracting Numbers Mentally', 'u2MzqFdyzvc', 24),
(24, 10, 'Subtracting Word Problems', 'hInzIfXFmyI', 25),
(25, 10, 'Subtraction without Borrowing by Counting the Dots', 'i2KlcoafSZY', NULL),
(26, 11, 'Subtracting Number', '4_hXTCPwsSE', 27),
(27, 11, ' Subtraction without Borrowing Two Digit Numbers', 'Xb0XSvEhV1g', 28),
(28, 11, 'Subtraction Without Borrowing', 'VUekV9l2uio', 29),
(29, 11, 'Subtraction Single Digit Numbers', 'QNYT4hYByOA', NULL),
(30, 12, 'Subtraction by Borrowing', '8lHu5tm1_mk', NULL),
(31, 13, 'Subtraction With Borrowing Pt2', 'h9jLgHB4HZ0', NULL),
(32, 14, 'Word Problems Subtraction', 'yzquNLrOkEw', 33),
(33, 14, 'Subtraction Word Problems', 'jdrwrAVnNFs', NULL),
(34, 15, 'Order of  Numbers in Addition', 'ZzTA5wNRmAI', NULL),
(36, 16, 'Relation Between Addition and Subtraction', 'bU-UcCnK-aM', NULL),
(39, 17, 'Addition of Three Digit Numbers', '8TAezyG6fjQ', 40),
(40, 17, 'Adding Three Numbers', 'foZqdQaAoUg', NULL),
(41, 18, 'Framing Addition or Subtraction Word Problem', 'LfitnyVSyZo', 42),
(42, 18, 'Addition and Subtraction Word Problems', 'bvv4o3z97lk', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
  `chapID` int(6) NOT NULL,
  `lessonID` int(6) NOT NULL AUTO_INCREMENT,
  `lessonName` varchar(255) NOT NULL,
  `lessonDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`lessonID`),
  KEY `chap_fk2` (`chapID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`chapID`, `lessonID`, `lessonName`, `lessonDesc`) VALUES
(1, 1, 'Addition Vocabulary', ''),
(1, 3, 'Without regrouping', ''),
(1, 4, 'With regrouping', ''),
(2, 6, 'Subtraction Vocabulary', ''),
(2, 8, 'Without regrouping', ''),
(2, 9, 'With regrouping', ''),
(1, 11, 'Associative Property', ''),
(2, 12, 'Inverse of Addition', ''),
(1, 13, 'Addition of 3 numbers', ''),
(2, 14, 'Subtraction of 3 numbers', '');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_ques`
--

CREATE TABLE IF NOT EXISTS `lesson_ques` (
  `lessonID` int(6) NOT NULL,
  `learningobjID` int(6) NOT NULL,
  `quesID` int(6) NOT NULL,
  `quesWeight` decimal(3,2) NOT NULL,
  KEY `lessons_fk` (`lessonID`),
  KEY `ques_fk` (`quesID`),
  KEY `lo_fk2` (`learningobjID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson_ques`
--

INSERT INTO `lesson_ques` (`lessonID`, `learningobjID`, `quesID`, `quesWeight`) VALUES
(1, 1, 1, 1.00),
(1, 1, 2, 1.00),
(1, 1, 3, 1.00),
(1, 1, 4, 1.00),
(1, 1, 5, 1.00),
(1, 1, 6, 1.00),
(1, 1, 7, 1.00),
(1, 1, 8, 1.00),
(1, 1, 9, 1.00),
(1, 1, 10, 1.00),
(1, 1, 11, 1.00),
(1, 1, 12, 1.00),
(3, 2, 17, 1.00),
(3, 2, 18, 1.00),
(3, 2, 123, 1.00),
(3, 3, 13, 1.00),
(3, 3, 14, 1.00),
(3, 3, 15, 1.00),
(3, 3, 16, 1.00),
(3, 4, 19, 1.00),
(3, 4, 20, 1.00),
(3, 4, 21, 1.00),
(3, 4, 22, 1.00),
(3, 4, 23, 1.00),
(3, 4, 24, 1.00),
(3, 4, 25, 1.00),
(3, 4, 26, 1.00),
(3, 4, 27, 1.00),
(4, 5, 28, 1.00),
(4, 5, 29, 1.00),
(4, 5, 30, 1.00),
(4, 5, 31, 1.00),
(4, 5, 32, 1.00),
(4, 5, 33, 1.00),
(4, 6, 34, 1.00),
(4, 6, 35, 1.00),
(4, 6, 36, 1.00),
(4, 6, 37, 1.00),
(4, 6, 38, 1.00),
(4, 6, 39, 1.00),
(4, 6, 40, 1.00),
(4, 6, 41, 1.00),
(4, 6, 42, 1.00),
(6, 8, 52, 1.00),
(6, 8, 53, 1.00),
(6, 8, 54, 1.00),
(6, 8, 55, 1.00),
(6, 8, 56, 1.00),
(6, 8, 57, 1.00),
(6, 8, 58, 1.00),
(6, 8, 59, 1.00),
(6, 8, 60, 1.00),
(6, 8, 61, 1.00),
(6, 8, 62, 1.00),
(6, 8, 63, 1.00),
(8, 10, 64, 1.00),
(8, 10, 65, 1.00),
(8, 10, 66, 1.00),
(8, 10, 67, 1.00),
(8, 10, 68, 1.00),
(8, 10, 69, 1.00),
(8, 11, 70, 1.00),
(8, 11, 71, 1.00),
(8, 11, 72, 1.00),
(8, 11, 73, 1.00),
(8, 11, 74, 1.00),
(8, 11, 75, 1.00),
(8, 11, 76, 1.00),
(8, 11, 77, 1.00),
(12, 12, 12, 0.00),
(9, 12, 79, 1.00),
(9, 12, 80, 1.00),
(9, 12, 81, 1.00),
(9, 13, 82, 1.00),
(9, 13, 83, 1.00),
(9, 13, 84, 1.00),
(9, 13, 85, 1.00),
(9, 13, 86, 1.00),
(9, 13, 87, 1.00),
(12, 12, 12, 9.99),
(13, 17, 107, 0.50),
(13, 17, 108, 0.50),
(13, 17, 109, 0.50),
(13, 17, 110, 0.50),
(13, 17, 111, 0.50),
(13, 17, 112, 0.50),
(3, 17, 107, 0.50),
(3, 17, 108, 0.50),
(4, 17, 109, 0.50),
(4, 17, 110, 0.50),
(4, 17, 111, 0.50),
(4, 17, 112, 0.50),
(14, 18, 113, 0.50),
(14, 18, 114, 0.50),
(14, 18, 115, 0.50),
(14, 18, 116, 0.50),
(14, 18, 117, 0.50),
(14, 18, 118, 0.50),
(1, 18, 119, 0.00),
(3, 3, 119, 0.50),
(1, 1, 120, 0.10),
(6, 8, 120, 0.10),
(8, 10, 120, 0.20),
(12, 16, 120, 0.60),
(1, 1, 121, 0.50),
(3, 3, 121, 0.50),
(12, 16, 122, 0.60),
(8, 10, 122, 0.20),
(1, 1, 122, 0.10),
(6, 8, 122, 0.10),
(8, 9, 124, 0.00),
(8, 9, 125, 0.00),
(8, 9, 126, 0.00),
(8, 9, 113, 0.25),
(8, 10, 113, 0.25),
(8, 10, 114, 0.50),
(8, 10, 115, 0.50),
(8, 10, 116, 0.00),
(8, 10, 116, 0.25),
(9, 12, 117, 0.50),
(9, 12, 118, 0.50),
(12, 16, 43, 0.60),
(8, 10, 43, 0.40),
(12, 16, 44, 0.60),
(8, 10, 44, 0.40),
(12, 16, 45, 0.60),
(9, 12, 45, 0.40),
(12, 16, 46, 0.60),
(8, 11, 46, 0.40),
(12, 16, 49, 0.60),
(8, 11, 49, 0.40),
(12, 16, 50, 0.60),
(8, 11, 50, 0.40),
(12, 16, 47, 0.60),
(9, 13, 47, 0.40),
(12, 16, 48, 0.60),
(9, 13, 48, 0.40),
(12, 16, 51, 0.60),
(9, 13, 51, 0.40),
(12, 16, 88, 0.60),
(11, 15, 88, 0.10),
(3, 3, 88, 0.30),
(12, 16, 90, 0.60),
(11, 15, 90, 0.10),
(3, 3, 90, 0.30),
(12, 16, 89, 0.60),
(11, 15, 89, 0.10),
(4, 5, 89, 0.30),
(12, 16, 92, 0.60),
(11, 15, 92, 0.10),
(4, 5, 92, 0.30),
(12, 16, 91, 0.60),
(11, 15, 91, 0.10),
(4, 6, 91, 0.30),
(12, 16, 93, 0.60),
(11, 15, 93, 0.10),
(4, 6, 93, 0.30),
(12, 16, 94, 0.60),
(12, 16, 95, 0.60),
(12, 16, 96, 0.60),
(11, 15, 94, 0.10),
(11, 15, 95, 0.10),
(11, 15, 95, 0.10),
(3, 4, 94, 0.30),
(3, 4, 95, 0.30),
(3, 4, 96, 0.30),
(11, 15, 97, 1.00),
(11, 15, 98, 1.00),
(11, 15, 99, 1.00),
(11, 15, 100, 1.00),
(12, 16, 101, 1.00),
(12, 16, 102, 1.00),
(12, 16, 103, 1.00),
(12, 16, 104, 1.00),
(12, 16, 105, 1.00),
(12, 16, 106, 1.00),
(1, 1, 127, 0.40),
(3, 3, 127, 0.50),
(4, 7, 127, 0.10),
(1, 1, 128, 0.30),
(4, 5, 128, 0.40),
(4, 7, 128, 0.30),
(1, 1, 129, 0.30),
(4, 5, 129, 0.40),
(4, 7, 129, 0.30),
(1, 1, 130, 0.30),
(3, 4, 130, 0.40),
(4, 7, 130, 0.30),
(1, 1, 133, 0.30),
(3, 4, 133, 0.40),
(4, 7, 133, 0.30),
(1, 1, 134, 0.20),
(4, 6, 134, 0.40),
(4, 7, 134, 0.40),
(1, 1, 131, 0.20),
(4, 6, 131, 0.40),
(4, 7, 131, 0.40),
(1, 1, 132, 0.20),
(4, 6, 132, 0.40),
(4, 7, 132, 0.40),
(6, 8, 135, 0.40),
(8, 10, 135, 0.50),
(9, 14, 135, 0.10),
(6, 8, 136, 0.30),
(6, 8, 137, 0.30),
(6, 8, 139, 0.30),
(9, 12, 136, 0.50),
(9, 12, 137, 0.50),
(9, 12, 139, 0.50),
(9, 14, 136, 0.20),
(9, 14, 137, 0.20),
(9, 14, 139, 0.20),
(6, 8, 138, 0.30),
(8, 11, 138, 0.50),
(9, 14, 138, 0.20),
(6, 8, 141, 0.30),
(8, 11, 141, 0.50),
(9, 14, 141, 0.20),
(6, 8, 140, 0.30),
(9, 13, 140, 0.50),
(9, 14, 140, 0.20);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `quizID` int(6) NOT NULL AUTO_INCREMENT,
  `quizDesc` varchar(255) NOT NULL,
  `quizLevel` int(2) NOT NULL,
  `quizLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quizID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quizID`, `quizDesc`, `quizLevel`, `quizLink`) VALUES
(1, '\r\n What number is 1 more than 2?', 1, ''),
(2, 'What number is 1 more than 5?', 1, NULL),
(3, 'Is 7 and 1 more equal to 7?', 2, NULL),
(4, 'Is 4 and 1 equals to 5?', 2, NULL),
(5, 'Is 8 plus 1 equals to 7?', 2, NULL),
(6, 'What number does 6 add 1 equals to?', 2, NULL),
(7, 'What number does 9 plus 1 equals to?', 2, NULL),
(8, 'What number does 1 plus 0 equals to?', 2, NULL),
(9, 'Choose the correct number sentence for "Two plus one equals three".', 3, NULL),
(10, 'Which is the correct number sentence for "One plus eight equals nine"?', 3, NULL),
(11, 'Choose the number sentence to add four cakes with five cakes to get nine cakes.', 3, NULL),
(12, 'Mat has 5 chickens, he buys another 3 more chickens which sums to 8 chickens. Choose the correct number sentence below.', 3, NULL),
(13, '1+1=', 1, NULL),
(14, '4+4=', 1, NULL),
(15, '7+2=', 1, NULL),
(16, '5+3=', 1, NULL),
(17, '7+0=', 1, NULL),
(18, '10+0=', 1, NULL),
(19, '12+6=', 2, NULL),
(20, '13+4=', 2, NULL),
(21, '14+2=', 2, NULL),
(22, '25+3=', 2, NULL),
(23, '10+10=', 3, NULL),
(24, '13+12=', 3, NULL),
(25, '15+11=', 3, NULL),
(26, '16+14=', 3, NULL),
(27, '20+22=', 3, NULL),
(28, '5+5=', 1, NULL),
(29, '4+6=', 1, NULL),
(30, '9+2=', 1, NULL),
(31, '8+7=', 1, NULL),
(32, '6+9=', 1, NULL),
(33, '7+7=', 1, NULL),
(34, '18+3=', 2, NULL),
(35, '15+6=', 2, NULL),
(36, '19+5=', 2, NULL),
(37, '22+9=', 2, NULL),
(38, '12+18', 3, NULL),
(39, '15+17=', 3, NULL),
(40, '19+12=', 3, NULL),
(41, '24+16=', 3, NULL),
(42, '18+18=', 3, NULL),
(43, '2 + _ = 4', 1, NULL),
(44, '_ + 3 = 8', 1, NULL),
(45, '5 + _ = 10', 1, NULL),
(46, '11 + _ = 19', 2, NULL),
(47, '_ + 15 = 23', 2, NULL),
(48, '16+ _ = 22', 2, NULL),
(49, '15 + _ =26', 3, NULL),
(50, '_ + 11 = 33', 3, NULL),
(51, '16 + _ = 34', 3, NULL),
(52, 'What number is 1 less than 2?', 1, NULL),
(53, 'What number is 1 less than 5?', 1, NULL),
(54, 'Is 7 and 1 less equal to 7?', 2, NULL),
(55, 'Is 4 take away 1 equals to 3?', 2, NULL),
(56, 'Is 8 minus 1 equals to 7?', 2, NULL),
(57, 'What number does 6 subtract 1 equals to?', 3, NULL),
(58, 'What number does 9 minus 1 equals to?', 3, NULL),
(59, 'What number does 1 minus 0 equals to?', 3, NULL),
(60, 'Choose the correct number sentence for "Five minus three equals two".', 1, NULL),
(61, 'Which is the correct number sentence for "Eight subtract four equals four"?', 1, NULL),
(62, 'Choose the number sentence to subtract two cakes from five cakes to get three cakes.', 2, NULL),
(63, 'I have 8 sweets. I give Chan 3 sweets. How many sweets do I have left?', 3, NULL),
(64, '2-2=', 1, NULL),
(65, '5-3=', 1, NULL),
(66, '4-1=', 1, NULL),
(67, '7-4=', 1, NULL),
(68, '8-4=', 1, NULL),
(69, '9-7=', 1, NULL),
(70, '13-1=', 2, NULL),
(71, '16-6=', 2, NULL),
(72, '19-5=', 2, NULL),
(73, '27-3=', 2, NULL),
(74, '15-11=', 3, NULL),
(75, '18-12=', 3, NULL),
(76, '28-14=', 3, NULL),
(77, '24-12=', 3, NULL),
(78, '11-2=', 1, NULL),
(79, '15-9=', 1, NULL),
(80, '12-3=', 1, NULL),
(81, '16-8=', 1, NULL),
(82, '20-11=', 2, NULL),
(83, '24-19=', 2, NULL),
(84, '25- 18=', 2, NULL),
(85, '28-19=', 3, NULL),
(86, '30-16=', 3, NULL),
(87, '33-19=', 3, NULL),
(88, '5 - _ = 3', 1, NULL),
(89, '9 - _ = 4', 1, NULL),
(90, '_ - 2 = 6', 1, NULL),
(91, '16 - _ = 8', 2, NULL),
(92, '_ - 6 = 7', 2, NULL),
(93, '18 - _ = 9', 2, NULL),
(94, '20 - _ = 10', 3, NULL),
(95, '_ - 12 = 12', 3, NULL),
(96, '30 - _ = 15', 3, NULL),
(97, 'Can you think of another way to write 5 + 4?', 1, NULL),
(98, 'Can you think of another way to write 0 + 8?', 1, NULL),
(99, 'Can you think of another way to write 11 + 9?', 2, NULL),
(100, 'Can you think of another way to write 23+ 23?', 3, NULL),
(101, 'If 1 + 0 = 1, what is 1-0?', 1, NULL),
(102, 'If 3 + 3 = 6, what is 6-3?', 1, NULL),
(103, 'If 16 + 8 =24, what is 24-8?', 2, NULL),
(104, 'If 29 + 9 = 38, what is 38-9?', 2, NULL),
(105, 'If 33 + 11 = 44, what is 44-33?', 3, NULL),
(106, 'If 38 + 12 = 50, what is 50-12?', 3, NULL),
(107, '3+3+0=', 1, NULL),
(108, '2+1+3=', 1, NULL),
(109, '5+5+5=', 2, NULL),
(110, '3+3+4=', 2, NULL),
(111, '5+7+8=', 3, NULL),
(112, '6+3+2=', 3, NULL),
(113, '2-1-0=', 1, NULL),
(114, '3-1-1=', 1, NULL),
(115, '5-3-2=', 2, NULL),
(116, '6-5-0=', 2, NULL),
(117, '10-6-2=', 3, NULL),
(118, '10-5-1=', 3, NULL),
(119, '_ is 6 more than 3', 1, NULL),
(120, '7 is _ more than 2', 1, NULL),
(121, '_ is 5 more than 5', 2, NULL),
(122, '12 is _ more than 6', 3, NULL),
(123, '43+0=', 1, NULL),
(124, '3-0=', 1, NULL),
(125, '0-0=', 1, NULL),
(126, '27-0=', 1, NULL),
(127, 'A restaurant served 5 pizzas yesterday. They expect to serve 4 pizzas today. How many pizzas will it serve on both days?', 1, NULL),
(128, 'David''s farm grew 9 pumpkins. Gabrielle''s farm grew 8 pumpkins,and also raised 15 cows. How many pumpkins did they both grow together?', 1, NULL),
(129, 'There are 9 erasers in a drawer. There are 6 children in the classroom. They already took 4 of the erasers to do their homework. How many erasers were there to begin with?', 1, NULL),
(130, 'A restaurant served 21 hamburgers yesterday. They expect to serve 6 hamburgers today. How many hamburgers will it serve on both days?', 2, NULL),
(131, 'There are 24 books on a bookshelf and 7 books on the desk. How many books are there altogether?', 2, NULL),
(132, 'There are 28 employees working late in an office building. Another 6 employees already left for the day. How many employees were there to begin with?', 2, NULL),
(133, 'Professor Smith gave his students a choice between writing a paper and taking an exam. 40 of them wrote a paper, while the other 50 took the exam. How many students does Professor Smith have?', 3, NULL),
(134, 'The school library bought 36 new books last year. They bought 25 new books this year. How many new books did they buy in both years?', 3, NULL),
(135, 'Ryan wrote 9 pages in his journal in two days. He wrote 5 pages on the first day. How many pages did he write on the other day?', 1, NULL),
(136, 'There are 12 pens in a desk. One drawer has 5 pens in it. How many pens are in the other drawer?', 1, NULL),
(137, 'A little boy has 13 balloons. He will give 4 of the balloons to his sister. How many balloons will he have left?', 1, NULL),
(138, 'There are 44 students in the math and art classes. 4 of them are in the art class. How many are in the math class?', 2, NULL),
(139, 'Madison drove her car 12 kilometers to get to an art museum. On the way back she found a shortcut and only drove 4 kilometers. How many kilometers did she save on the way back?', 2, NULL),
(140, '45 frogs were swimming in a pond. 8 of them left to go catch flies. How many frogs were left in the pond?', 2, NULL),
(141, 'Sharky the dolphin chased 58 fish today. He caught 20 of them. How many fish got away from Sharky?', 3, NULL),
(142, 'A restaurant expects to serve 70 hamburgers during lunch. 29 hamburgers have already been served. How many more do they expect to serve?', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answer`
--

CREATE TABLE IF NOT EXISTS `quiz_answer` (
  `answerID` int(6) NOT NULL AUTO_INCREMENT,
  `quizID` int(6) NOT NULL,
  `answerText` varchar(250) DEFAULT NULL,
  `correctAns` varchar(250) NOT NULL,
  PRIMARY KEY (`answerID`),
  KEY `ques_fk2` (`quizID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=316 ;

--
-- Dumping data for table `quiz_answer`
--

INSERT INTO `quiz_answer` (`answerID`, `quizID`, `answerText`, `correctAns`) VALUES
(1, 1, '3', '3'),
(2, 1, '1', '3'),
(3, 2, '4', '6'),
(4, 2, '6', '6'),
(5, 3, 'True', 'False'),
(6, 3, 'False', 'False'),
(7, 4, 'True', 'True'),
(8, 4, 'False', 'True'),
(9, 5, 'True', 'False'),
(10, 5, 'False', 'False'),
(11, 6, '6', '7'),
(12, 6, '7', '7'),
(13, 6, '8', '7'),
(14, 7, '8', '10'),
(15, 7, '9', '10'),
(16, 7, '10', '10'),
(17, 8, '0', '1'),
(18, 8, '1', '1'),
(19, 9, '2+1=3', '2+1=3'),
(20, 9, '3+1=2', '2+1=3'),
(21, 10, '1+9=8', '1+8=9'),
(22, 10, '1+8=9', '1+8=9'),
(23, 11, '4+5=9', '4+5=9'),
(24, 11, '4=5+9', '4+5=9'),
(25, 12, '5+3=8', '5+3=8'),
(26, 12, '3+8=5', '5+3=8'),
(27, 13, '11', '2'),
(28, 13, '1', '2'),
(29, 13, '2', '2'),
(30, 14, '8', '8'),
(31, 14, '44', '8'),
(32, 14, '4', '8'),
(33, 15, '5', '9'),
(34, 15, '9', '9'),
(35, 15, '10', '9'),
(36, 16, '5', '8'),
(37, 16, '8', '8'),
(38, 16, '2', '8'),
(39, 17, '8', '7'),
(40, 17, '7', '7'),
(41, 17, '0', '7'),
(42, 18, '1', '10'),
(43, 18, '0', '10'),
(44, 18, '10', '10'),
(45, 19, '17', '18'),
(46, 19, '18', '18'),
(47, 19, '19', '18'),
(48, 20, '16', '17'),
(49, 20, '17', '17'),
(50, 20, '18', '17'),
(51, 21, '15', '16'),
(52, 21, '16', '16'),
(53, 21, '17', '16'),
(54, 22, '28', '28'),
(55, 22, '26', '28'),
(56, 22, '27', '28'),
(57, 23, '0', '20'),
(58, 23, '20', '20'),
(59, 23, '10', '20'),
(60, 24, '24', '25'),
(61, 24, '35', '25'),
(62, 24, '25', '25'),
(63, 25, '25', '26'),
(64, 25, '28', '26'),
(65, 25, '26', '26'),
(66, 26, '20', '30'),
(67, 26, '30', '30'),
(68, 26, '40', '30'),
(69, 27, '42', '44'),
(70, 27, '44', '44'),
(71, 27, '40', '44'),
(72, 28, '8', '10'),
(73, 28, '10', '10'),
(74, 28, '9', '10'),
(75, 29, '8', '10'),
(76, 29, '9', '10'),
(77, 29, '10', '10'),
(78, 30, '10', '11'),
(79, 30, '11', '11'),
(80, 30, '12', '11'),
(81, 31, '13', '15'),
(82, 31, '15', '15'),
(83, 31, '14', '15'),
(84, 32, '16', '15'),
(85, 32, '15', '15'),
(86, 32, '14', '15'),
(87, 33, '0', '14'),
(88, 33, '14', '14'),
(89, 33, '17', '14'),
(90, 34, '21', '21'),
(91, 34, '22', '21'),
(92, 34, '20', '21'),
(93, 35, '21', '21'),
(94, 35, '20', '21'),
(95, 35, '22', '21'),
(96, 36, '25', '24'),
(97, 36, '24', '24'),
(98, 36, '23', '24'),
(99, 37, '14', '31'),
(100, 37, '30', '31'),
(101, 37, '31', '31'),
(102, 38, '20', '30'),
(103, 38, '30', '30'),
(104, 38, '40', '30'),
(105, 39, '22', '32'),
(106, 39, '32', '32'),
(107, 39, '23', '32'),
(108, 40, '31', '31'),
(109, 40, '33', '31'),
(110, 40, '32', '31'),
(111, 41, '30', '40'),
(112, 41, '40', '40'),
(113, 41, '50', '40'),
(114, 42, '16', '36'),
(115, 42, '26', '36'),
(116, 42, '36', '36'),
(117, 43, NULL, '2'),
(118, 44, NULL, '5'),
(119, 45, NULL, '5'),
(120, 46, NULL, '8'),
(121, 47, NULL, '8'),
(122, 48, NULL, '8'),
(123, 49, NULL, '11'),
(124, 50, NULL, '22'),
(125, 51, NULL, '14'),
(126, 52, '0', '1'),
(127, 52, '1', '1'),
(128, 52, '2', '1'),
(129, 53, '4', '4'),
(130, 53, '6', '4'),
(131, 53, '3', '4'),
(132, 54, 'True ', 'False'),
(133, 54, 'False', 'False'),
(134, 55, 'True ', 'True '),
(135, 55, 'False', 'True '),
(136, 56, 'True ', 'True '),
(137, 56, 'False', 'True '),
(138, 57, '6', '5'),
(139, 57, '7', '5'),
(140, 57, '5', '5'),
(141, 58, '10', '8'),
(142, 58, '9', '8'),
(143, 58, '8', '8'),
(144, 59, '1', '1'),
(145, 59, '0', '1'),
(146, 60, '5-3=2', '5-3=2'),
(147, 60, '5-2=3', '5-3=2'),
(148, 61, '4-4=8', '8-4=4'),
(149, 61, '8-4=4', '8-4=4'),
(150, 62, '5-2=3', '5-2=3'),
(151, 62, '5=2-3', '5-2=3'),
(152, 63, '8-3=5', '8-3=5'),
(153, 63, '8-5=3', '8-3=5'),
(154, 64, '4', '0'),
(155, 64, '2', '0'),
(156, 64, '0', '0'),
(157, 65, '2', '2'),
(158, 65, '8', '2'),
(159, 65, '3', '2'),
(160, 66, '5', '3'),
(161, 66, '3', '3'),
(162, 66, '4', '3'),
(163, 67, '2', '3'),
(164, 67, '4', '3'),
(165, 67, '3', '3'),
(166, 68, '4', '4'),
(167, 68, '6', '4'),
(168, 68, '8', '4'),
(169, 69, '16', '2'),
(170, 69, '2', '2'),
(171, 69, '1', '2'),
(172, 70, '12', '12'),
(173, 70, '14', '12'),
(174, 70, '3', '12'),
(175, 71, '22', '10'),
(176, 71, '16', '10'),
(177, 71, '10', '10'),
(178, 72, '15', '14'),
(179, 72, '14', '14'),
(180, 72, '4', '14'),
(181, 73, '14', '24'),
(182, 73, '24', '24'),
(183, 73, '25', '24'),
(184, 74, '26', '4'),
(185, 74, '14', '4'),
(186, 74, '4', '4'),
(187, 75, '16', '6'),
(188, 75, '28', '6'),
(189, 75, '6', '6'),
(190, 76, '16', '14'),
(191, 76, '13', '14'),
(192, 76, '14', '14'),
(193, 77, '36', '12'),
(194, 77, '12', '12'),
(195, 77, '11', '12'),
(196, 78, '9', '9'),
(197, 78, '10', '9'),
(198, 78, '8', '9'),
(199, 79, '7', '6'),
(200, 79, '8', '6'),
(201, 79, '6', '6'),
(202, 80, '10', '9'),
(203, 80, '8', '9'),
(204, 80, '9', '9'),
(205, 81, '8', '8'),
(206, 81, '16', '8'),
(207, 81, '9', '8'),
(208, 82, '10', '9'),
(209, 82, '9', '9'),
(210, 82, '8', '9'),
(211, 83, '15', '5'),
(212, 83, '5', '5'),
(213, 83, '6', '5'),
(214, 84, '17', '7'),
(215, 84, '7', '7'),
(216, 84, '6', '7'),
(217, 85, '19', '9'),
(218, 85, '9', '9'),
(219, 85, '8', '9'),
(220, 86, '24', '14'),
(221, 86, '14', '14'),
(222, 86, '4', '14'),
(223, 87, '14', '14'),
(224, 87, '24', '14'),
(225, 87, '13', '14'),
(226, 88, NULL, '2'),
(227, 89, NULL, '5'),
(228, 90, NULL, '8'),
(229, 91, NULL, '8'),
(230, 92, NULL, '13'),
(231, 93, NULL, '9'),
(232, 94, NULL, '10'),
(233, 95, NULL, '24'),
(234, 96, NULL, '15'),
(235, 97, '4 + 5', '4 + 5'),
(236, 97, '5 - 4', '4 + 5'),
(237, 98, '8 - 0', '8 + 0'),
(238, 98, '8 + 0', '8 + 0'),
(239, 99, '9 + 11', '9 + 11'),
(240, 99, '19 + 1', '9 + 11'),
(241, 100, '23 + 23', '23 + 23'),
(242, 100, '32 + 32', '23 + 23'),
(243, 101, NULL, '1'),
(244, 102, NULL, '3'),
(245, 103, NULL, '16'),
(246, 104, NULL, '29'),
(247, 105, NULL, '11'),
(248, 106, NULL, '38'),
(249, 107, NULL, '6'),
(250, 108, NULL, '6'),
(251, 109, NULL, '15'),
(252, 110, NULL, '10'),
(253, 111, NULL, '20'),
(254, 112, NULL, '11'),
(255, 113, NULL, '1'),
(256, 114, NULL, '1'),
(257, 115, NULL, '0'),
(258, 116, NULL, '1'),
(259, 117, NULL, '2'),
(260, 118, NULL, '4'),
(261, 119, '3', '9'),
(262, 119, '6', '9'),
(263, 119, '9', '9'),
(264, 120, '5', '5'),
(265, 120, '9', '5'),
(266, 120, '7', '5'),
(267, 121, '10', '10'),
(268, 121, '5', '10'),
(269, 121, '0', '10'),
(270, 122, '12', '6'),
(271, 122, '18', '6'),
(272, 122, '6', '6'),
(273, 123, '43', '43'),
(274, 123, '44', '43'),
(275, 123, '0', '43'),
(276, 124, '3', '3'),
(277, 124, '0', '3'),
(278, 125, '0', '0'),
(279, 125, '1', '0'),
(280, 126, '0', '27'),
(281, 126, '27', '27'),
(282, 127, '9', '9'),
(283, 127, '1', '9'),
(284, 127, '11', '9'),
(285, 128, '33', '17'),
(286, 128, '23', '17'),
(287, 128, '17', '17'),
(288, 129, '13', '13'),
(289, 129, '19', '13'),
(290, 129, '15', '13'),
(291, 130, NULL, '27'),
(292, 131, NULL, '31'),
(293, 132, NULL, '34'),
(294, 133, NULL, '90'),
(295, 134, '51', '61'),
(296, 134, '61', '61'),
(297, 134, '71', '61'),
(298, 135, '3', '4'),
(299, 135, '9', '4'),
(300, 135, '4', '4'),
(301, 136, '6', '7'),
(302, 136, '7', '7'),
(303, 136, '5', '7'),
(304, 137, '8', '9'),
(305, 137, '7', '9'),
(306, 137, '9', '9'),
(307, 138, NULL, '40'),
(308, 139, NULL, '8'),
(309, 140, NULL, '37'),
(310, 141, '78', '38'),
(311, 141, '38', '38'),
(312, 141, '48', '38'),
(313, 142, '41', '41'),
(314, 142, '51', '41'),
(315, 142, '31', '41');

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

CREATE TABLE IF NOT EXISTS `relationship` (
  `prereqID` int(11) NOT NULL AUTO_INCREMENT,
  `lessonID` int(6) NOT NULL,
  `prereqGrpID` int(6) NOT NULL,
  `thresholdVal` decimal(3,2) NOT NULL,
  PRIMARY KEY (`prereqID`),
  KEY `lesson_fk` (`lessonID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`prereqID`, `lessonID`, `prereqGrpID`, `thresholdVal`) VALUES
(1, 3, 1, 0.50),
(2, 4, 3, 0.50),
(3, 6, 1, 0.50),
(4, 8, 6, 0.50),
(5, 9, 8, 0.50),
(6, 11, 1, 0.50),
(7, 12, 1, 0.50),
(8, 12, 6, 0.50),
(9, 13, 4, 0.50),
(10, 14, 9, 0.50);

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE IF NOT EXISTS `student_data` (
  `stuID` int(6) NOT NULL,
  `stuName` varchar(255) NOT NULL,
  `stuAge` int(3) NOT NULL,
  `stuGender` varchar(10) NOT NULL,
  `stuDOB` varchar(30) NOT NULL,
  `stuEmail` varchar(255) NOT NULL,
  `stuContactNo` varchar(20) NOT NULL,
  `stuAddress` varchar(255) NOT NULL,
  `stuPassword` varchar(255) NOT NULL,
  `stuLastLogin` varchar(255) NOT NULL,
  PRIMARY KEY (`stuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`stuID`, `stuName`, `stuAge`, `stuGender`, `stuDOB`, `stuEmail`, `stuContactNo`, `stuAddress`, `stuPassword`, `stuLastLogin`) VALUES
(4042, 'Elise', 7, 'Female', '5/10/2007', 'Elisalee@yahoo.com', '016-2362321', '19, Lorong Alor Akar 27', '111', ''),
(5052, 'John', 7, 'Male', '15/11/2007', 'john07@yahoo.com', '016-2331221', '19, Lorong Kubang Buaya 52', '111', ''),
(6062, 'Samuel', 8, 'Male', '9/3/2006', 'samlee@yahoo.com', '012-1234123', '17, Lorong Sri Kuantan 67', '111', '2013/6/12/16:12'),
(7072, 'Hannah', 8, 'Female', '19/2/2006', 'hanalee@yahoo.com', '016-1231232', '4. Jalan Beserah 23', '111', '2013/5/27/21:21'),
(8082, 'Lydia ', 8, 'Female', '17/3/2006', 'lydialeemx@yahoo.com', '016-1234567', '6, Lorong Pelindung 111', '111', '2013/6/12/17:01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hint`
--
ALTER TABLE `hint`
  ADD CONSTRAINT `ques_fk3` FOREIGN KEY (`quesID`) REFERENCES `quiz` (`quizID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `ques_fk4` FOREIGN KEY (`quesID`) REFERENCES `quiz` (`quizID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stu_fk3` FOREIGN KEY (`stuID`) REFERENCES `student_data` (`stuID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `knowledge_state`
--
ALTER TABLE `knowledge_state`
  ADD CONSTRAINT `chap_fk` FOREIGN KEY (`chapID`) REFERENCES `domain` (`chapID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lesson_fk3` FOREIGN KEY (`lessonID`) REFERENCES `lessons` (`lessonID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motivation_fk` FOREIGN KEY (`motivationalID`) REFERENCES `history` (`motivationID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `stu_fk2` FOREIGN KEY (`stuID`) REFERENCES `student_data` (`stuID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `learning_goal`
--
ALTER TABLE `learning_goal`
  ADD CONSTRAINT `currentlo_fk` FOREIGN KEY (`currentLO`) REFERENCES `learning_object` (`LearningObjID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lesson_fk2` FOREIGN KEY (`lessonID`) REFERENCES `lessons` (`lessonID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `stu_fk` FOREIGN KEY (`stuID`) REFERENCES `student_data` (`stuID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `learning_obj_link`
--
ALTER TABLE `learning_obj_link`
  ADD CONSTRAINT `lo_ID_fk` FOREIGN KEY (`LO_ID`) REFERENCES `learning_object` (`LearningObjID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `chap_fk2` FOREIGN KEY (`chapID`) REFERENCES `domain` (`chapID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lesson_ques`
--
ALTER TABLE `lesson_ques`
  ADD CONSTRAINT `lessons_fk` FOREIGN KEY (`lessonID`) REFERENCES `lessons` (`lessonID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `lo_fk2` FOREIGN KEY (`learningobjID`) REFERENCES `learning_object` (`LearningObjID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ques_fk` FOREIGN KEY (`quesID`) REFERENCES `quiz` (`quizID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `quiz_answer`
--
ALTER TABLE `quiz_answer`
  ADD CONSTRAINT `ques_fk2` FOREIGN KEY (`quizID`) REFERENCES `quiz` (`quizID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `relationship`
--
ALTER TABLE `relationship`
  ADD CONSTRAINT `lesson_fk` FOREIGN KEY (`lessonID`) REFERENCES `lessons` (`lessonID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
