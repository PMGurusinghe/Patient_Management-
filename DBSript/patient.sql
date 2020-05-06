-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 06:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patient`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_ID` int(11) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `NIC` varchar(20) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `BloodGroup` varchar(10) DEFAULT NULL,
  `Allergy` varchar(45) DEFAULT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `ConfirmPassword` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `FirstName`, `LastName`, `NIC`, `DOB`, `Email`, `Mobile`, `Address`, `BloodGroup`, `Allergy`, `Gender`, `Password`, `ConfirmPassword`) VALUES
(28, 'Pamod Madhushan', 'Gurusinghe', '983201164V', '1998-11-15', 'madhushangurusinghe@gmail.com', '+94703054972', 'Chithrani,Ella Road,, Elpitiya.', 'O', 'No', 'Male', '1854', '1854'),
(29, 'Dilanka ', 'Gunasekara', '773201164V', '1998-05-23', 'gunasekara@gmail.com', '0761231231', 'Araneta Center, Cubao, NCR, Quezon', 'AB', 'Drug Allergy', 'Male', '123@guna', '123@guna'),
(30, 'Hiruni', 'Gurusinghe', '773201164V', '1998-10-14', 'hiruni@gmail.com', '0703054972', 'HiruniCenter, Cubao, NCR, Quezon', 'B', 'Pet Allergy.', 'Femal', 'H@345', 'H@345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Patient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
