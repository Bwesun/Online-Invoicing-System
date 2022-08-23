-- phpMyAdmin SQL Dump
-- version 2.9.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 10, 2019 at 10:27 AM
-- Server version: 5.0.27
-- PHP Version: 5.2.1
-- 
-- Database: `invoice`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `admin`
-- 

CREATE TABLE `admin` (
  `id` int(3) NOT NULL auto_increment,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `admin`
-- 

INSERT INTO `admin` (`id`, `username`, `password`) VALUES 
(1, 'admin', 'admin');

-- --------------------------------------------------------

-- 
-- Table structure for table `item`
-- 

CREATE TABLE `item` (
  `item_id` int(4) NOT NULL auto_increment,
  `item_name` varchar(20) NOT NULL,
  `quantity` varchar(5) NOT NULL,
  `price` varchar(10) NOT NULL,
  PRIMARY KEY  (`item_id`),
  UNIQUE KEY `item_name` (`item_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `item`
-- 

INSERT INTO `item` (`item_id`, `item_name`, `quantity`, `price`) VALUES 
(1, 'White Board Marker', '18', '30'),
(2, 'Pencil', '3', '20');

-- --------------------------------------------------------

-- 
-- Table structure for table `record`
-- 

CREATE TABLE `record` (
  `rec_no` int(4) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `item` varchar(20) NOT NULL,
  `quant` varchar(3) NOT NULL,
  `price` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `trans_id` varchar(20) NOT NULL,
  `date` varchar(9) NOT NULL,
  PRIMARY KEY  (`rec_no`),
  UNIQUE KEY `trans_id` (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

-- 
-- Dumping data for table `record`
-- 

INSERT INTO `record` (`rec_no`, `name`, `phone`, `address`, `item`, `quant`, `price`, `total`, `trans_id`, `date`) VALUES 
(38, 'Bed1', '09063334420', 'Address of the Customer', 'White Board Marker', '6', '20', '120', '41742882', '11/11/18'),
(39, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '6', '20', '120', '48698320', '11/11/18'),
(40, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '6', '20', '120', '7966296', '11/11/18'),
(41, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '6', '20', '120', '61827607', '11/11/18'),
(42, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '10', '20', '200', '08602410', '11/11/18'),
(43, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '10', '20', '200', '65284476', '11/11/18'),
(44, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '10', '20', '200', '08728923', '11/11/18'),
(45, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '10', '20', '200', '94977642', '11/11/18'),
(46, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '10', '20', '200', '05723559', '11/11/18'),
(47, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '10', '20', '200', '40125835', '11/11/18'),
(48, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '10', '20', '200', '53898364', '11/11/18'),
(49, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '5', '20', '100', '36849945', '11/11/18'),
(50, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '5', '20', '100', '4369242', '11/11/18'),
(51, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '5', '20', '100', '69476967', '11/11/18'),
(52, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '5', '20', '100', '02766821', '11/11/18'),
(53, 'Innocent', '09063334420', 'Address of the Customer', 'White Board Marker', '5', '20', '100', '96153445', '11/11/18'),
(54, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '5', '20', '100', '05138035', '11/11/18'),
(55, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '5', '20', '100', '49966290', '11/11/18'),
(56, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '5', '20', '100', '21587056', '11/11/18'),
(57, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '5', '20', '100', '87920370', '11/11/18'),
(58, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '5', '20', '100', '73345940', '11/11/18'),
(59, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '5', '20', '100', '76092416', '11/11/18'),
(60, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '5', '20', '100', '70787797', '11/11/18'),
(61, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '8', '20', '160', '4624654', '11/11/18'),
(62, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '8', '20', '160', '03819522', '11/11/18'),
(63, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '8', '20', '160', '86222210', '11/11/18'),
(64, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '8', '20', '160', '90628915', '11/11/18'),
(65, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '8', '20', '160', '38413133', '11/11/18'),
(66, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '8', '20', '160', '42300432', '11/11/18'),
(67, 'Innocent', '09063334420', 'Address of the Customer', 'Pencil', '8', '20', '160', '80759545', '11/11/18'),
(68, 'Confidence Nuhu', '08062065631', ' NILEST, Samarau, Zaria', 'Pencil', '2', '20', '40', '97498065', '14/11/18');
