-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 06:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bshasroute`
--

CREATE TABLE `bshasroute` (
  `spare` int(11) NOT NULL,
  `bsid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `departureTime` time NOT NULL,
  `arrivalTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bshasroute`
--

INSERT INTO `bshasroute` (`spare`, `bsid`, `rid`, `departureTime`, `arrivalTime`) VALUES
(1, 1, 1, '06:00:00', '07:00:00'),
(2, 1, 2, '07:05:00', '08:30:00'),
(3, 1, 3, '08:35:00', '10:00:00'),
(4, 1, 4, '10:05:00', '11:00:00'),
(5, 2, 1, '15:00:00', '16:00:00'),
(6, 2, 2, '16:05:00', '17:30:00'),
(7, 2, 3, '17:35:00', '19:00:00'),
(8, 2, 4, '19:05:00', '20:00:00'),
(9, 3, 1, '09:00:00', '10:00:00'),
(10, 3, 2, '10:00:00', '11:30:00'),
(28, 4, 7, '06:00:00', '07:00:00'),
(29, 4, 8, '07:05:00', '08:00:00'),
(30, 4, 10, '08:05:00', '09:00:00'),
(31, 5, 17, '13:00:00', '14:00:00'),
(32, 5, 18, '14:05:00', '15:00:00'),
(33, 5, 19, '15:05:00', '16:00:00'),
(34, 5, 20, '16:05:00', '17:00:00'),
(35, 6, 11, '07:00:00', '08:00:00'),
(36, 6, 13, '08:05:00', '09:00:00'),
(37, 7, 1, '09:00:00', '10:00:00'),
(38, 7, 2, '10:05:00', '11:00:00'),
(39, 7, 5, '11:05:00', '14:00:00'),
(40, 8, 6, '15:00:00', '17:00:00'),
(41, 9, 9, '05:00:00', '07:00:00'),
(42, 9, 13, '07:05:00', '08:00:00'),
(43, 9, 15, '08:05:00', '08:30:00'),
(44, 10, 16, '09:00:00', '12:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `regNo` varchar(20) NOT NULL,
  `maxSeats` int(11) NOT NULL,
  `model` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`regNo`, `maxSeats`, `model`) VALUES
('KA-O2 A-0985', 54, 'Tata Lpo 1623'),
('KA-O3 A-2379', 54, 'Tata Lp 909'),
('KA-O4 A-7827', 54, 'Tata Lpo 1623'),
('KA-O4 F-6536', 54, 'Tata Lp 909'),
('KA-O4 H-5623', 54, 'Tata Lpo 1623'),
('KA-O4 S-8332', 56, 'Volvo B7R'),
('KA-O5 F-9855', 56, 'Volvo B7R'),
('KA-O5 S-9429', 56, 'Volvo 9400XL'),
('KA-O7 H-0986', 56, 'Volvo B7R'),
('KA-O7 H-9886', 56, 'Volvo 9400XL'),
('KA-O7 S-2483', 54, 'Tata Lpo 1613');

-- --------------------------------------------------------

--
-- Table structure for table `busschedule`
--

CREATE TABLE `busschedule` (
  `bsid` int(11) NOT NULL,
  `path` varchar(40) NOT NULL,
  `cid` int(11) NOT NULL,
  `regNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `busschedule`
--

INSERT INTO `busschedule` (`bsid`, `path`, `cid`, `regNo`) VALUES
(1, 'Karwar-Gokarna-Bhatkal-Udupi-Mangalore', 5610, 'KA-O2 A-0985'),
(2, 'Karwar-Gokarna-Bhatkal-Udupi-Mangalore', 5611, 'KA-O3 A-2379'),
(3, 'Karwar-Bhatkal', 5613, 'KA-O4 A-7827'),
(4, 'Bhatkal-Sagar-Shivamogga-Mangalore', 5616, 'KA-O4 H-5623'),
(5, 'Mangalore-Udupi-Bhatkal-Gokarna-Karwar', 5615, 'KA-O4 S-8332'),
(6, 'Mangalore-Shivamogga-Sagar', 5617, 'KA-O5 S-9429'),
(7, 'Karwar-Gokarna-Bhatkal-Sirsi', 5618, 'KA-O7 H-0986'),
(8, 'Sagar-Sirsi', 5620, 'KA-O7 S-2483'),
(9, 'Udupi-Shivamogga-Sagar-Sirsi', 5621, 'KA-O4 S-8332'),
(10, 'Sirsi-Bhatkal', 5614, 'KA-O7 H-9886');

-- --------------------------------------------------------

--
-- Table structure for table `conductor`
--

CREATE TABLE `conductor` (
  `cid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phoneNo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conductor`
--

INSERT INTO `conductor` (`cid`, `name`, `phoneNo`) VALUES
(5610, 'Johnny', 6545734567),
(5611, 'Robert', 8769845634),
(5612, 'Kevin', 9867954634),
(5613, 'Denzel', 9967843567),
(5614, 'Russell', 6574563458),
(5615, 'Angelina', 8746376983),
(5616, 'Amitabh', 8799543667),
(5617, 'Aamir', 6875467646),
(5618, 'Shah Rukh', 7665576566),
(5619, 'Akshay Kumar', 8887656656),
(5620, 'Hrithik', 7733872648),
(5621, 'Kumar', 8487266499),
(5622, 'Salman', 7498993766),
(5623, 'Ranveer', 7756352478);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Email` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `password` varchar(36) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Phone_No` bigint(10) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Email`, `password`, `Name`, `Phone_No`, `Gender`, `Age`) VALUES
('nagabasavanna22@gmail.com', 'fcc87486f89a633deff588234f572b41', 'Nagabasavanna S', 9353796136, 'male', 20),
('sudhanvahrs@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'sudhanva', 9229229222, 'male', 20);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `rid` int(11) NOT NULL,
  `origin` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`rid`, `origin`, `destination`, `fare`) VALUES
(1, 'Karwar', 'Gokarna', 65),
(2, 'Gokarna', 'Bhatkal', 88),
(3, 'Bhatkal', 'Udupi', 89),
(4, 'Udupi', 'Mangalore', 55),
(5, 'Bhatkal', 'Sirsi', 149),
(6, 'Sagar', 'Sirsi', 73),
(7, 'Bhatkal', 'Sagar', 108),
(8, 'Sagar', 'Shivamogga', 79),
(9, 'Udupi', 'Shivamogga', 147),
(10, 'Shivamogga', 'Mangalore', 196),
(11, 'Mangalore', 'Shivamogga', 200),
(12, 'Shivamogga', 'Udupi', 149),
(13, 'Shivamogga', 'Sagar', 76),
(14, 'Sagar', 'Bhatkal', 105),
(15, 'Sirsi', 'Sagar', 70),
(16, 'Sirsi', 'Bhatkal', 142),
(17, 'Mangalore', 'Udupi', 55),
(18, 'Udupi', 'Bhatkal', 90),
(19, 'Bhatkal', 'Gokarna', 84),
(20, 'Gokarna', 'Karwar', 64);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tid` int(11) NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `bsid` int(11) NOT NULL,
  `seatNo` int(11) NOT NULL,
  `fare` int(11) NOT NULL,
  `origin` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `departureTime` time NOT NULL,
  `arrivalTime` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tid`, `email`, `bsid`, `seatNo`, `fare`, `origin`, `destination`, `departureTime`, `arrivalTime`, `date`) VALUES
(10, 'nagabasavanna22@gmail.com', 1, 23, 88, 'GOKARNA', 'BHATKAL', '07:05:00', '08:30:00', '2022-01-31'),
(11, 'sudhanvahrs@gmail.com', 5, 25, 90, 'UDUPI', 'BHATKAL', '14:05:00', '15:00:00', '2022-01-30'),
(12, 'sudhanvahrs@gmail.com', 5, 36, 90, 'UDUPI', 'BHATKAL', '14:05:00', '15:00:00', '2022-01-19'),
(13, 'sudhanvahrs@gmail.com', 5, 47, 90, 'UDUPI', 'BHATKAL', '14:05:00', '15:00:00', '2022-01-30'),
(14, 'sudhanvahrs@gmail.com', 7, 15, 65, 'KARWAR', 'GOKARNA', '09:00:00', '10:00:00', '2022-01-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bshasroute`
--
ALTER TABLE `bshasroute`
  ADD PRIMARY KEY (`spare`),
  ADD KEY `bsid` (`bsid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`regNo`);

--
-- Indexes for table `busschedule`
--
ALTER TABLE `busschedule`
  ADD PRIMARY KEY (`bsid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `regNo` (`regNo`);

--
-- Indexes for table `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `phoneNo` (`phoneNo`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `Phone_No` (`Phone_No`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `email` (`email`),
  ADD KEY `bsid` (`bsid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bshasroute`
--
ALTER TABLE `bshasroute`
  MODIFY `spare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bshasroute`
--
ALTER TABLE `bshasroute`
  ADD CONSTRAINT `bshasroute_ibfk_1` FOREIGN KEY (`bsid`) REFERENCES `busschedule` (`bsid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bshasroute_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `route` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `busschedule`
--
ALTER TABLE `busschedule`
  ADD CONSTRAINT `busschedule_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `conductor` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `busschedule_ibfk_2` FOREIGN KEY (`regNo`) REFERENCES `bus` (`regNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`email`) REFERENCES `passenger` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`bsid`) REFERENCES `busschedule` (`bsid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
