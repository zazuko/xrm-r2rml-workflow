-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 30, 2020 at 03:04 PM
-- Server version: 5.7.29
-- PHP Version: 7.4.4
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `exampledatabase`
--
CREATE DATABASE IF NOT EXISTS `exampledatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE `exampledatabase`;

-- --------------------------------------------------------
--
-- Table structure for table `DEPT`
--
CREATE TABLE `DEPT` (
  `DEPTNO` int(11) NOT NULL,
  `DNAME` varchar(30) DEFAULT NULL,
  `LOC` varchar(30) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `DEPT`
--
INSERT INTO
  `DEPT` (`DEPTNO`, `DNAME`, `LOC`)
VALUES
  (10, 'APPSERVER', 'NEW YORK');

-- --------------------------------------------------------
--
-- Table structure for table `DEPT2`
--
CREATE TABLE `DEPT2` (
  `DEPTNO` int(11) DEFAULT NULL,
  `DNAME` varchar(30) DEFAULT NULL,
  `LOC` varchar(30) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `DEPT2`
--
INSERT INTO
  `DEPT2` (`DEPTNO`, `DNAME`, `LOC`)
VALUES
  (10, 'APPSERVER', 'NEW YORK'),
  (20, 'RESEARCH', 'BOSTON');

-- --------------------------------------------------------
--
-- Table structure for table `EMP`
--
CREATE TABLE `EMP` (
  `EMPNO` int(11) NOT NULL,
  `ENAME` varchar(100) DEFAULT NULL,
  `JOB` varchar(20) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `EMP`
--
INSERT INTO
  `EMP` (`EMPNO`, `ENAME`, `JOB`, `DEPTNO`)
VALUES
  (7369, 'SMITH', 'CLERK', 10);

-- --------------------------------------------------------
--
-- Table structure for table `EMP2`
--
CREATE TABLE `EMP2` (
  `EMPNO` int(11) DEFAULT NULL,
  `ENAME` varchar(100) DEFAULT NULL,
  `JOB` varchar(20) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `EMP2`
--
INSERT INTO
  `EMP2` (`EMPNO`, `ENAME`, `JOB`)
VALUES
  (7369, 'SMITH', 'CLERK'),
  (7369, 'SMITH', 'NIGHTGUARD'),
  (7400, 'JONES', 'ENGINEER');

-- --------------------------------------------------------
--
-- Table structure for table `EMP2DEPT`
--
CREATE TABLE `EMP2DEPT` (
  `EMPNO` int(11) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `EMP2DEPT`
--
INSERT INTO
  `EMP2DEPT` (`EMPNO`, `DEPTNO`)
VALUES
  (7369, 10),
  (7369, 20),
  (7400, 10);

--
-- Indexes for dumped tables
--
--
-- Indexes for table `DEPT`
--
ALTER TABLE
  `DEPT`
ADD
  PRIMARY KEY (`DEPTNO`);

--
-- Indexes for table `EMP`
--
ALTER TABLE
  `EMP`
ADD
  PRIMARY KEY (`EMPNO`),
ADD
  KEY `DEPTNO` (`DEPTNO`);

--
-- Constraints for dumped tables
--
--
-- Constraints for table `EMP`
--
ALTER TABLE
  `EMP`
ADD
  CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`DEPTNO`) REFERENCES `DEPT` (`DEPTNO`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
