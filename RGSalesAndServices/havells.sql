-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2020 at 05:42 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `havells`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) DEFAULT NULL,
  `dist_id` int(11) DEFAULT NULL,
  `city_nm` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `dist_id`, `city_nm`) VALUES
(1, 1, 'Kolhapur'),
(2, 1, 'Ichalkaranji');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `dist_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `dist_nm` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`dist_id`, `state_id`, `dist_nm`) VALUES
(1, 1, 'Kolhapur');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `cat_id` int(11) DEFAULT NULL,
  `cat_nm` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`cat_id`, `cat_nm`) VALUES
(1, 'Tv'),
(2, 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `Item_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `Item_nm` varchar(30) DEFAULT NULL,
  `Item_stock_proof` varchar(30) DEFAULT NULL,
  `mercury_content` varchar(30) DEFAULT NULL,
  `surge_protection` varchar(30) DEFAULT NULL,
  `voltage_range` varchar(30) DEFAULT NULL,
  `thd` varchar(30) DEFAULT NULL,
  `certification` varchar(30) DEFAULT NULL,
  `color_rendering_index` varchar(40) DEFAULT NULL,
  `lamp_life` varchar(30) DEFAULT NULL,
  `color_temp` varchar(30) DEFAULT NULL,
  `light_effect` varchar(30) DEFAULT NULL,
  `start_up_time` varchar(30) DEFAULT NULL,
  `warm_up_time` varchar(30) DEFAULT NULL,
  `switching_cycle` varchar(30) DEFAULT NULL,
  `item_height` varchar(30) DEFAULT NULL,
  `item_width` varchar(30) DEFAULT NULL,
  `net_weight` varchar(30) DEFAULT NULL,
  `Item_color` varchar(30) DEFAULT NULL,
  `Item_rate` float DEFAULT NULL,
  `Item_warranty_period` varchar(30) DEFAULT NULL,
  `Item_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`Item_id`, `cat_id`, `Item_nm`, `Item_stock_proof`, `mercury_content`, `surge_protection`, `voltage_range`, `thd`, `certification`, `color_rendering_index`, `lamp_life`, `color_temp`, `light_effect`, `start_up_time`, `warm_up_time`, `switching_cycle`, `item_height`, `item_width`, `net_weight`, `Item_color`, `Item_rate`, `Item_warranty_period`, `Item_stock`) VALUES
(1, 1, 'Mouse', '200', '2.0', '40', '200v', '20', '40', '2.0fx', '1 year', 'warm', '2.0', '10', '20', 'fast', '10', '45', '2.0', 'black', 3000, '3 year', 200),
(2, 2, 'Mouse', 'full', '3.0', '40', '2-5', '20', 'full', '2.0', '1 year', 'warm', 'dark', '8.0', '20', 'fast', '10', '60', '40', 'blue', 200, '2 year', 200),
(3, 1, 'LCD', 'Yes', '20', 'MAG-550', '3V', 'P104', '32invh', '80%', '1 year', '2000k to 6500k', 'dark', '40sec', '4hours', '40sec', '51.4', '91.3', '5.2kg', 'black', 32000, '2 year', 40),
(4, 1, 'LCD', 'Yes', 'less than 15 mg', '2.5', '100v-300v', '<33%', 'iso 9001 iso 14001', '80', '5 yr', '2000k to 6500k', 'cool daylight', 'instant', '<25sec', '>6000x', '355mm', '95mm', '0.65kg', 'black', 2000, '1 year', 40);

-- --------------------------------------------------------

--
-- Table structure for table `partymaster`
--

CREATE TABLE `partymaster` (
  `Party_ID` int(11) DEFAULT NULL,
  `Party_Type` varchar(30) DEFAULT NULL,
  `Party_Name` varchar(30) DEFAULT NULL,
  `Party_Address` varchar(30) DEFAULT NULL,
  `State_ID` int(11) DEFAULT NULL,
  `dist_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `Party_GSTNo` varchar(30) DEFAULT NULL,
  `Party_TelNo1` varchar(15) DEFAULT NULL,
  `Party_TelNo2` varchar(15) DEFAULT NULL,
  `Party_Email` varchar(30) DEFAULT NULL,
  `Party_ContactP` varchar(15) DEFAULT NULL,
  `Party_ContactNo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partymaster`
--

INSERT INTO `partymaster` (`Party_ID`, `Party_Type`, `Party_Name`, `Party_Address`, `State_ID`, `dist_id`, `city_id`, `Party_GSTNo`, `Party_TelNo1`, `Party_TelNo2`, `Party_Email`, `Party_ContactP`, `Party_ContactNo`) VALUES
(1, 'Hiberson', 'shahid pathan', 'Ichalkaranji', 13, 1, 1, '2', '2544552', '5555666', 'part@gmail.com', '9756412456', '9785416542'),
(2, 'sfgshh', 'abhi', ' A/pkolhapur                  ', 13, 1, 1, '222', '2544552', '5555666', 'part@gmail.com', '9756412456', '9785416542'),
(1, '*()(**', '', '', 13, 1, 1, '', '', '', '', '', ''),
(1, 'customer', '', '', 13, 1, 1, '', '', '', '', '', ''),
(10, 'customer', 'shahid pathan', 'kolhapur', 13, 1, 1, '3.4', '0231-2544284', '', '', '', ''),
(10, 'customer', 'shahid pathan', 'hjkl', 13, 1, 1, '12', '0231-2544284', '', '', '', ''),
(12, 'customer', 'shahid pathan', 'kolhapur', 13, 1, 1, '37adapm1724a2Z5', '0231-2544284', '0231-2544284', 'pathanshahid032@gmail.com', 'abhi', '8965412345'),
(12, 'customer', 'shahid pathan', 'kolhapur', 13, 1, 1, '37adapm1724a2Z5', '0231-2544284', '', 'pathanshahid032@gmail.com', 'abhi', '9130759446'),
(3, 'customer', 'shahid pathan', 'A/p ', 1, 1, 1, '', '', '', '', '', ''),
(3, 'customer', 'kirloskar', 'A/p shirgud', 2, 1, 1, '37adapm1724a2Z5', '0231-2544284', '0231-2544284', 'kirloskar123@gmail.com', 'Sanjay', '9785416542'),
(4, 'customer', 'kirloskar', 'A/p shirnud', 2, 1, 1, '37adapm1724a2Z5', '0231-2544284', '', 'pathanshahid032@gmail.com', 'Sanjay', '9785416542'),
(5, 'customer', 'abhi', 'A/p kagal', 1, 1, 1, '37adapm1724a2Z5', '0231-2544284', '', 'part@gmail.com', 'abhi', '9785416542'),
(6, 'customer', 'shahidpathan', 'A/p kolhapur', 1, 1, 1, '37adapm1724a2Z5', '0231-2544284', '', 'pathanshahid032@gmail.com', 'sandip', '9130759446');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) DEFAULT NULL,
  `pay_date` varchar(30) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `pay_amt` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `pay_date`, `cust_id`, `pay_amt`) VALUES
(1, '2020-03-02', 1, 200.5),
(2, '2020-03-09', 1, 500.5),
(3, '2020-03-09', 2, 300.2),
(4, '2020-03-03', 1, 300);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `pur_detail_id` int(11) DEFAULT NULL,
  `pur_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_rate` float DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `item_amt` float DEFAULT NULL,
  `item_tax` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`pur_detail_id`, `pur_id`, `item_id`, `item_rate`, `item_qty`, `item_amt`, `item_tax`) VALUES
(1, 1, 1, 2000, 2, 6000, 25),
(1, 1, 1, 200, 4, 200, 2.5),
(2, 1, 1, 2000, 4, 8025, 25);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_master`
--

CREATE TABLE `purchase_master` (
  `pur_id` int(11) DEFAULT NULL,
  `pur_date` varchar(30) DEFAULT NULL,
  `Party_ID` int(11) DEFAULT NULL,
  `tran_id` int(11) DEFAULT NULL,
  `pur_grand_tot` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_master`
--

INSERT INTO `purchase_master` (`pur_id`, `pur_date`, `Party_ID`, `tran_id`, `pur_grand_tot`) VALUES
(1, '2020-03-02', 1, 1, 2004),
(2, '2020-03-02', 1, 1, 2004),
(3, '2020-03-02', 2, 1, 1.4);

-- --------------------------------------------------------

--
-- Table structure for table `statemaster`
--

CREATE TABLE `statemaster` (
  `State_ID` int(11) DEFAULT NULL,
  `State_Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statemaster`
--

INSERT INTO `statemaster` (`State_ID`, `State_Name`) VALUES
(1, 'Maharastra'),
(2, 'karnatka');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `tran_id` int(11) DEFAULT NULL,
  `tran_nm` varchar(30) DEFAULT NULL,
  `tran_addr` varchar(50) DEFAULT NULL,
  `tran_phno` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`tran_id`, `tran_nm`, `tran_addr`, `tran_phno`) VALUES
(1, 'shahid pathan', 'Kolhapur', '8965213789'),
(2, 'abhi', 'kolhapur', '9865421348');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
