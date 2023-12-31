-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2021 at 08:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

-- Delete the databse if exists
DROP DATABASE condominiumsystem;

-- Create the database anew
CREATE DATABASE condominiumsystem;
-- Use the newly created database
USE condominiumsystem;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register_from_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phonenumber` varchar(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  
  
  
  
  
--
--
--
-- NEW CODE
--
--
--
--


--------------------------------------------------------
--------------------------------------------------------
-- 			Create a table for residents
--------------------------------------------------------
--------------------------------------------------------
CREATE TABLE resident (
	ResidentID		int(11) 	NOT NULL AUTO_INCREMENT,
    UserID			int(11)		NOT NULL,
    UnitNo			varchar(10)	NOT NULL,
    PRIMARY KEY (ResidentID),
    FOREIGN KEY (UserID) REFERENCES users (id)    
);



----------------------------------------------------------
----------------------------------------------------------
--          Create table for temporary password reset
----------------------------------------------------------
----------------------------------------------------------
CREATE TABLE passwordreset (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    email           varchar(60)     NOT NULL, 
    `key`           varchar(100)    NOT NULL,
    expDate         datetime        NOT NULL,
    PRIMARY KEY (id)
);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
