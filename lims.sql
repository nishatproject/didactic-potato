-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 10:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lims`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` varchar(50) NOT NULL,
  `agent_password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `agent_password`, `name`, `branch`, `phone`) VALUES
('111', '222', 'Inova', 'Mirpur', '1598745682'),
('112', '123', 'zan', 'huhu', '1234'),
('222', '333', 'Sultan', 'Mohakhali', '1521302251'),
('555', '123', 'Amitt', 'Mirpur', '01777777777'),
('A1', '123', 'Nishat Tasnim', 'Gulshan', '1700777788'),
('Admin', '123', 'Munia', 'Mirpur', '880177777777'),
('agent007', '111', 'Rafiq Bond', 'Raipur', '654654654645'),
('ahmed', '12345', 'Mostofa', 'Dhanmondi', '0173449911');

-- --------------------------------------------------------

--
-- Table structure for table `aprove`
--

CREATE TABLE `aprove` (
  `id` int(100) NOT NULL,
  `cid` varchar(100) NOT NULL,
  `msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aprove`
--

INSERT INTO `aprove` (`id`, `cid`, `msg`) VALUES
(3, '1511986023', 'Your Request has been aproved'),
(4, '1511986029', 'Your Request has been aproved'),
(5, '1511986023', 'Your Request has been aproved'),
(6, '1511986027', 'Your Request has been rejected'),
(7, '1511986023', 'Your Request has been rejected'),
(8, '1511986023', 'Your Request has been rejected');

-- --------------------------------------------------------

--
-- Table structure for table `claim`
--

CREATE TABLE `claim` (
  `Name` varchar(100) NOT NULL,
  `Client_id` varchar(100) NOT NULL,
  `Hname` varchar(100) NOT NULL,
  `Health` varchar(100) NOT NULL,
  `Camount` varchar(20) NOT NULL,
  `Cdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `claim`
--

INSERT INTO `claim` (`Name`, `Client_id`, `Hname`, `Health`, `Camount`, `Cdate`) VALUES
('mm', '1511986256', 'man', 'nsa', '2000', '8-27-2022'),
('Raihan Alam Rahat', '1511988147', 'Dhaka Medical', 'Pet betha', '2000', '8-27-2022');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` varchar(200) NOT NULL,
  `client_password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `policy_id` varchar(50) NOT NULL,
  `agent_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_password`, `name`, `sex`, `birth_date`, `marital_status`, `nid`, `phone`, `address`, `policy_id`, `agent_id`) VALUES
('1511986023', '123', 'Anika Eyesmeen', 'Female', '11-11-1999', 'Married', '1236178172817', '01777777777', 'Mohakhali', '1', '111'),
('1511986129', '123', 'Aemon Task', 'Male', '10-09-1970', 'Married', '46814518451', '54189465100', 'Dhaka', '1', '555'),
('1511986256', '123', 'Gareth Walker', 'Male', '05-09-1987', 'Divorced', '5216541656', '0169780980', 'Noakhali', '3', '555'),
('1511986641', '123', 'Salman Muktadir', 'Male', '14-02-1992', 'Single', '49847561198465', '987451315', 'Dhaka', '2', '555'),
('1511986754', '123', 'Ashraf Bin Shahadat', 'Male', '03-10-1996', 'Single', '9875423140', '01658794121', 'Chittagong', '2', '555'),
('1511986912', '123', 'Tisha Khan', 'Female', '19-08-1990', 'Married', '48540406540', '8798451321320', 'Dhaka', '3', '555'),
('1511987011', '123', 'S. a. Sadik', 'Male', '05-03-1987', 'Married', '8725129982', '01515644470', 'Hatirpool, Dhaka', '3', '222'),
('1511987599', '123', 'Aamir Khan', 'Male', '14-03-1965', 'Married', '6526648857', '01833036524', 'Banani, Dhaka', '2', '222'),
('1511987932', '123', 'Lailatul Jannat Lamia', 'Female', '07-12-1991', 'Single', '9188858735', '01762274542', 'Dhap, Rnagpur', '1', '222'),
('1511988146', '123', 'Cristiano', 'Male', '25-03-1985', 'Married', '465318546431', '9885151321', 'Madrid', '1', '111'),
('1511988147', '123', 'Raihan Alam Rahat', 'Male', '18-08-1993', 'Married', '9312238845', '01562664475', 'Badda, Dhaka', '2', '222'),
('1511988421', '123', 'Jorina Akter', 'Female', '09-11-1994', 'Single', '9422294485', '01530220045', 'Panthapath, Dhaka', '3', '222'),
('1511988604', '123', 'Sabila Noor', 'Female', '30-09-1993', 'Single', '58464651858', '16815616516', 'Potuakhali', '2', '111'),
('1511988659', '123', 'Lex Luthor', 'Male', '11-02-1778', 'Single', '7899922273', '01622633745', 'Kilgaon, Dhaka', '2', '222'),
('1511988918', '123', 'Safa Kabir', 'Female', '19-02-1992', 'Single', '54161651651', '16516065146', 'Mohammadpur', '2', '1610'),
('1511989029', '123', 'Harry Potter', 'Male', '26-03-1991', 'Married', '912239942', '01988223734', 'Banani, Bogra', '2', '222'),
('1511989124', '123', 'Tony Stark', 'Male', '18-04-1982', 'Divorced', '16465165168', '01684646864', 'Avengers Tower', '3', '1610'),
('1511989196', '123', 'Naruto Uzumaki', 'Male', '28-01-1970', 'Married', '7022283338', '01922833374', 'Dhanmondi, Dhaka', '3', '222'),
('1511989270', '123', 'Shahriar Fahim', 'Male', '25-08-1995', 'Single', '654165135165', '5641510654', 'Badda, Dhaka', '1', '1610'),
('1511989508', '123', 'Frank Underwood', 'Male', '29-06-1989', 'Married', '56416516516', '518914651684', 'Washington', '3', '1610'),
('1605853689', '12345', 'ram', 'kumar', '10-11-1990', 'single', 'indian', '9998529631', 'Raigarh', '5048', '007'),
('1606114669', '123456', 'kiran', 'male', '10-11-1990', 'single', 'indian', '9998529631', 'Raigarh', '105', 'agent007'),
('1661510718', '123', 'Maria', 'Female', '11-11-1999', 'Single', '1236178172817928192', '01777777777', 'Mirpur', '3', '111');

-- --------------------------------------------------------

--
-- Table structure for table `nominee`
--

CREATE TABLE `nominee` (
  `nominee_id` varchar(200) NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `birth_date` varchar(50) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nominee`
--

INSERT INTO `nominee` (`nominee_id`, `client_id`, `name`, `sex`, `birth_date`, `nid`, `relationship`, `priority`, `phone`) VALUES
('1511986129-562418685', '1511986129', 'Aegon Task', 'Male', '10-08-2000', '84894089405', 'Son', '1st', '0152487632'),
('1511986256-1001633290', '1511986256', 'Edmond Walker', 'Male', '12-07-2001', '548405872141', 'Son', '1st', '0187455214854'),
('1511986641-1504036491', '1511986641', 'Salma Khatun', 'Female', '05-06-1975', '544414456498', 'Mother', '1st', '541984516518'),
('1511986754-53418428', '1511986754', 'Ratul BIn Tajul', 'Male', '12-09-1992', '10254845616585', 'Brother', '1st', '025884596844'),
('1511986912-1024403548', '1511986912', 'Faruki Khan', 'Male', '10-09-1989', '564156122225', 'Husband', '1st', '5841561651465'),
('1511987011-183007296', '1511987011', 'Salman Mohammad', 'Male', '15-04-1989', '8929122249', 'Brother', '1st', '01744237435'),
('1511987599-513216278', '1511987599', 'Kiran Rao', 'Female', '07-11-1973', '73777477756', 'Wife', '1st', '01239924475'),
('1511987932-1318641913', '1511987932', 'Shamim Ahmed', 'Male', '19-09-1989', '8922247586', 'Husband', '1st', '01732663337'),
('1511988147-1556364815', '1511988147', 'Foisal Ahmed Sovon', 'Male', '16-12-1971', '713855677487', 'Father', '1st', '01883774472'),
('1511988421-516349587', '1511988421', 'Eialid Ahmed Joy', 'Male', '19-03-1991', '9122277745', 'Husband', '1st', '01822737445'),
('1511988604-484205419', '1511988604', 'Salman Muktadir', 'Male', '13-09-1995', '654165151', 'Brother', '1st', '518614614684681'),
('1511988659-361572415', '1511988659', 'Thomas Gibson', 'Male', '12-01-1988', '8899928334', 'Nephew', '1st', '01822733645'),
('1511988918-1027705582', '1511988918', 'Shafkat Kabir', 'Male', '10-08-1975', '654615184', 'Father', '1st', '01586423365'),
('1511989029-1466194256', '1511989029', 'Ginny Weasley', 'Female', '15-09-1994', '9477755564', 'Wife', '1st', '01988273364'),
('1511989124-257126087', '1511989124', 'Jarvis', 'Male', '20-09-2005', '541515165', 'Son', '1st', '01956494651'),
('1511989196-1383443438', '1511989196', 'Hinata Hyuga', 'Female', '12-11-1980', '8022293345', 'Wife', '1st', '01222833844'),
('1511989270-522970848', '1511989270', 'Shovon', 'Male', '11-05-1997', '65484691641', 'Brother', '1st', '584165116'),
('1511989353-1465676744', '1511989270', 'Syed Adi', 'Male', '07-03-1996', '16515151651', 'Brother', '2nd', '511616516541'),
('1511989508-1852375428', '1511989508', 'Claire Underwood', 'Female', '17-05-1990', '65465646', 'Wife', '1st', '01689895416'),
('1511989560-1833013957', '1511987599', 'Jamius Siam', 'Male', '15-08-1998', '9945586678', 'Son', '2nd', '01521556678'),
('1511989629-1412083486', '1511988147', 'Adnan Azmee', 'Male', '21-07-1992', '9223448855', 'Brother', '2nd', '01223774456'),
('1511989682-1891269900', '1511989196', 'Susuke Uchiha', 'Male', '19-09-1925', '7555443345', 'Brother', '2nd', '01982283345'),
('1605853689-491904229', '1605853689', 'krishna', 'male', '01-07-1975', 'indian', 'father', 'high', '987643515'),
('1661510718-2127008430', '1661510718', 'Mir Zafor', 'Male', '11-11-1999', '1212131313131', 'Boyfriend', 'onk', '017676767676'),
('1661561617-1115142981', '1511988146', 'Maria', 'Female', '11-11-1999', '1236178172817928192', 'Sister', '1nd', '+880177777777'),
('1661618030-1211862178', '1511986023', 'Mir Zafor', 'Male', '11-11-1999', '121213131464', 'Brother', '1nd', '01767676456'),
('LIG 236 HOUSING BOARD COLONY UMDA BHILAI', '1606114669', 'kisan', 'male', '10-11-1995', 'indian', 'friends', 'high', '070 0083 0947');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `recipt_no` varchar(20) NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `due` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL,
  `agent_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`recipt_no`, `client_id`, `month`, `amount`, `due`, `fine`, `agent_id`) VALUES
('1511987272_936407539', '1511986129', 'January', '3000', '0', '0', '555'),
('1511987294_157536829', '1511986129', 'February', '3000', '0', '0', '555'),
('1511987356_228689839', '1511986256', 'September', '13000', '0', '0', '555'),
('1511987375_208594029', '1511986256', 'October', '13000', '0', '0', '555'),
('1511987516_243604186', '1511986641', 'March', '6500', '0', '0', '555'),
('1511987592_140845877', '1511987011', 'April', '13000', '0', '0', '555'),
('1511987614_130742935', '1511987011', 'July', '13000', '0', '0', '555'),
('1511987665_189868060', '1511986912', 'August', '13000', '0', '0', '555'),
('1511987683_122084269', '1511986912', 'September', '10000', '0', '3000', '555'),
('1511987717_198373690', '1511986912', 'October', '13000', '0', '0', '555'),
('1511987778_123379304', '1511986256', 'June', '13000', '0', '0', '555'),
('1511988410_340758810', '1511988146', 'May ', '13000', '0', '0', '111'),
('1511988425_663527012', '1511988146', 'June', '9000', '0', '4000', '111'),
('1511988449_500783305', '1511988146', 'July', '13000', '0', '0', '111'),
('1511988737_327582747', '1511988604', 'April', '6500', '0', '0', '111'),
('1511988751_359818495', '1511988604', 'May', '6000', '0', '500', '111'),
('1511988766_127505142', '1511988604', 'June', '6500', '0', '0', '111'),
('1511988780_170076555', '1511988604', 'July', '6500', '0', '0', '111'),
('1511989102_683990954', '1511988918', 'May', '6500', '0', '0', '1610'),
('1511989392_84501314', '1511989270', 'March', '3000', '0', '0', '1610'),
('1511989409_123979267', '1511989270', 'April', '2000', '0', '1000', '1610'),
('1511989429_583095229', '1511989124', 'August', '13000', '0', '0', '1610'),
('1511989444_189806601', '1511989124', 'September', '10000', '500', '3000', '1610'),
('1511989466_212456917', '1511989124', 'October', '13000', '200', '0', '1610'),
('1511989636_340353445', '1511989508', 'May ', '13000', '0', '0', '1610'),
('1511989652_157014714', '1511989508', 'June', '13000', '0', '0', '1610'),
('1511989666_170298934', '1511989508', 'July', '13000', '0', '0', '1610'),
('1511989675_131262819', '1511989508', 'August', '10000', '200', '3000', '1610'),
('1511989810_798994343', '1511987011', 'January', '13000', '0', '0', '222'),
('1511989871_127982362', '1511987011', 'February', '12000', '0', '1000', '222'),
('1511989898_333265655', '1511987011', 'March', '13500', '0', '0', '222'),
('1511989998_117407536', '1511987599', 'April', '6500', '0', '0', '222'),
('1511990035_160826062', '1511987599', 'May', '6500', '0', '0', '222'),
('1511990048_422427668', '1511987599', 'June', '6200', '0', '300', '222'),
('1511990085_87306440', '1511987932', 'February', '3000', '0', '0', '222'),
('1511990125_551933465', '1511987932', 'March', '3000', '0', '0', '222'),
('1511990134_120884202', '1511987932', 'April', '3000', '0', '0', '222'),
('1511990144_176620861', '1511987932', 'May', '2700', '0', '300', '222'),
('1511990187_187405393', '1511988147', 'May', '6500', '0', '0', '222'),
('1511990199_959205473', '1511988147', 'June', '6200', '0', '300', '222'),
('1511990208_118604619', '1511988147', 'July', '6800', '0', '0', '222'),
('1511990256_119833492', '1511988421', 'June', '13000', '0', '0', '222'),
('1511990272_28498432', '1511988421', 'July', '11000', '0', '2000', '222'),
('1511990285_110428955', '1511988421', 'August', '15000', '0', '0', '222'),
('1511990349_127882369', '1511988659', 'October', '6500', '0', '0', '222'),
('1511990363_130124137', '1511988659', 'November', '6000', '0', '500', '222'),
('1511990377_109303020', '1511988659', 'December', '6500', '0', '500', '222'),
('1511990406_193995825', '1511989029', 'January', '6000', '0', '500', '222'),
('1511990421_728097194', '1511989029', 'February', '6500', '0', '500', '222'),
('1511990448_253707727', '1511989029', 'March', '7000', '0', '0', '222'),
('1511990478_53908577', '1511989196', 'March', '13000', '0', '0', '222'),
('1511990488_140201370', '1511989196', 'April', '13000', '0', '0', '222'),
('1511990498_126571266', '1511989196', 'May', '13000', '0', '0', '222'),
('1511990510_111608856', '1511989196', 'June', '12000', '0', '1000', '222');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `policy_id` varchar(50) NOT NULL,
  `term` varchar(50) NOT NULL,
  `health_status` varchar(50) NOT NULL,
  `system` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `coverage` varchar(50) NOT NULL,
  `age_limit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`policy_id`, `term`, `health_status`, `system`, `payment_method`, `coverage`, `age_limit`) VALUES
('1', '10 year', '500000', '3000', 'Cash/Check', '100%', '50'),
('2', '10 Years', '1000000', '6500', 'Cash/Check', '100%', '50'),
('3', '10 Years', '2000000', '13000', 'Cash/Check', '100%', '50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD UNIQUE KEY `agent_id` (`agent_id`);

--
-- Indexes for table `aprove`
--
ALTER TABLE `aprove`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claim`
--
ALTER TABLE `claim`
  ADD PRIMARY KEY (`Client_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_id` (`client_id`);

--
-- Indexes for table `nominee`
--
ALTER TABLE `nominee`
  ADD PRIMARY KEY (`nominee_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`recipt_no`),
  ADD UNIQUE KEY `recipt_no` (`recipt_no`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`policy_id`),
  ADD UNIQUE KEY `policy_id` (`policy_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aprove`
--
ALTER TABLE `aprove`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
