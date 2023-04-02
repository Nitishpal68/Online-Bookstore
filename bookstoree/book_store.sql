-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: sql213.epizy.com
-- Generation Time: Jan 04, 2020 at 04:59 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_32480735_bookstoree`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `checkout_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `name`, `address`, `mobile`, `checkout_id`) VALUES
(74, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834001,Jharkhand', '7979968593', '5dbf03bd1c54c'),
(75, 6, 'Shubham Rana', 'new nagar, Ranchi ,834001,jharkhand', '7979968593', '5dbf0406b71f3'),
(76, 6, 'Shubham Rana', 'new nagar, Ranchi ,834001,jharkhand', '7979968593', '5dbf04a4e2106'),
(77, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc2fbb88f337'),
(78, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834002,Jharkhand', '7979968593', '5dc3ef36e8911'),
(79, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc3f00a8166e'),
(80, 6, 'Shubham Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc3fb2e9f6bb'),
(81, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc3fba6bf32b'),
(82, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc407fecc973'),
(83, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc4086e0c767'),
(84, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc4096f28516'),
(85, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834001,Jharkhand', '7979968593', '5dc43894f34cd'),
(86, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc5565f8bcc1'),
(87, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc819491724e'),
(88, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc84fa54ac15'),
(89, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc853608c7c7'),
(90, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc855facb6be'),
(91, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc8626951fdc'),
(92, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc862cb4c467'),
(93, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dc86318c7062'),
(94, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,jharkhand', '7979968593', '5dc8640c85662'),
(95, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834001,Jharkhand', '7979968593', '5dc864faaa789'),
(96, 6, 'Shubham Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834001,Jharkhand', '7979968593', '5dcac21774f0b'),
(97, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dcc170b4fe6b'),
(98, 15, 'Shubham Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dcc30f70c7bd'),
(99, 15, 'lali', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dcc31e0585aa'),
(100, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834001,jharkhand', '7979968593', '5dce7a8125acb'),
(101, 6, 'Lalit Kumar Rana', 'new nagar, Ranchi ,834009,Jharkhand', '7979968593', '5dcf8c0e04f5e'),
(102, 68, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dcfac964951b'),
(103, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dd03202424e8'),
(104, 68, 'Shubham Rana', 'Bariatu Housing Colony, Ranchi ,834009,Jharkhand', '7979968593', '5dd50e3307c01'),
(105, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dd6b9d81767a'),
(106, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dd804df2dd98'),
(107, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5ddb97df886a7'),
(108, 6, 'Shubham Rana', 'new nagar, Ranchi ,834001,Jharkhand', '7979968593', '5ddb982c9c313'),
(109, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5df2534d24bb9'),
(110, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,jharkhand', '7265889622', '5df332a95c05b'),
(111, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834001,Jharkhand', '7979968593', '5df4f9836cfbc'),
(112, 6, 'Lalit Kumar Rana', 'new nagar, Ranchi ,834009,Jharkhand', '7979968593', '5df656021760a'),
(113, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5df798b486112'),
(114, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5df79b129ec5b'),
(115, 6, 'Shubham Rana', 'Bariatu Housing Colony, ranchi ,834002,Jharkhand', '7265889622', '5df79be204e0d'),
(116, 6, 'Lalit Kumar Rana', 'New Nagar Bandh Gari Dipatoli, Ranchi ,834009,Jharkhand', '7979968593', '5dfced1389ee7');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `1` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`1`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(100) NOT NULL,
  `book_name` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `author` varchar(200) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `price` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `img`, `author`, `isbn`, `price`, `category`) VALUES
(5, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '500', 'cmp'),
(6, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '300', 'cmp'),
(7, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'cmp'),
(8, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'bs'),
(9, 'India At Risk', 'book_img/5.jpg', 'Jaswant Singh', '90053410', '199', 'bs'),
(10, 'The Red Sari', 'book_img/6.jpg', 'Javier Moro', '90053456', '135', 'bs'),
(11, 'The power of  Mind', 'book_img/7.jpg', 'Joseph Murphy', '90053459', '231', 'bs'),
(12, 'Think And Grow Rich', 'book_img/8.jpg', 'Napoleon Hill', '900534523', '150', 'bs'),
(13, 'Siddartha', 'book_img/9.jpg', 'Herman Hesse', '900534987', '299', 'bs'),
(14, 'Black Holes', 'book_img/10.jpg', 'Stephen Hawking', '900534987', '199', 'st'),
(15, 'The Theory Of Everything', 'book_img/11.jpg', 'Stephen Hawking', '900534981', '205', 'st'),
(16, 'Relativity', 'book_img/12.jpg', 'Albert Einstein', '900534988', '190', 'st'),
(17, 'The Wellness Sense', 'book_img/13.jpg', 'Om Swami', '900534983', '200', 'iw'),
(18, 'The Gene', 'book_img/14.jpg', 'Siddarta Mukherjee', '900534789', '215', 'iw'),
(19, 'Sapiens', 'book_img/15.jpg', 'Yuval Noah Harari', '900534780', '216', 'iw'),
(20, 'One Word Kill', 'book_img/16.jpg', 'Mark Lawrence', '900534782', '180', 'aa'),
(21, 'Jurrasic Park', 'book_img/17.jpg', 'Michael Crichton\r\n', '900534567', '240', 'aa'),
(22, 'The Hobbit', 'book_img/18.jpg', 'J.R.R. Tolkien\r\n\r\n', '900534561', '340', 'aa'),
(23, 'The Hunger Games', 'book_img/19.jpg', 'Suzanne Collins\r\n', '90053456', '310', 'aa'),
(24, 'The Fellowship of the Ring ', 'book_img/20.jpg', 'J.R.R. Tolkien', '900534645', '300', 'aa'),
(25, 'The Da Vinci Code', 'book_img/21.jpg', 'Dan Brown', '900534678', '230', 'aa'),
(26, 'The Girl with the Dragon Tattoo ', 'book_img/21.jpg', 'Stieg Larsson,\r\nReg Keeland ', '900534678', '230', 'aa'),
(27, 'On Becoming a Leader', 'book_img/22.jpg', 'Warren G. Bennis', '900534672', '230', 'bm'),
(28, 'Financial Intelligence', 'book_img/23.jpg', 'Karen Berman and Joe Knight ', '900534908', '250', 'bm'),
(29, ' Growing a Business', 'book_img/24.jpg', 'Paul Hawken ', '900534999', '260', 'bm'),
(30, 'What Management Is', 'book_img/25.jpg', 'Joan Magretta', '900534991', '140', 'bm'),
(31, 'Rich Dad Poor Dad:', 'book_img/26.jpg', 'Robert T. Kiyosaki', '900534998', '210', 'bm'),
(32, 'India in the Age of Ideas', 'book_img/27.jpg', ' 	\r\nSanjeev Sanyal', '900534430', '230', 'bm'),
(33, 'Thinking, Fast and Slow ', 'book_img/28.jpg', 'Daniel Kahneman', '900534436', '270', 'bm'),
(34, 'The Lean Startup', 'book_img/29.jpg', 'Eric Ries', '900534430', '230', 'bm'),
(35, 'Captain Marvel', 'book_img/30.jpg', 'Kelly Sue DeConnick', '900534431', '299', 'com'),
(36, 'The Meltdown', 'book_img/31.jpg', 'Jeff Kinney ', '9005344231', '279', 'com'),
(37, 'Saga', 'book_img/32.jpg', 'Brian K. Vaughan ', '9005344213', '240', 'com'),
(38, 'Ultimate Spider-Man', 'book_img/33.jpg', 'Brian Michael Bendis  ', '9005344215', '230', 'com'),
(39, 'Captain America', 'book_img/34.jpg', 'Ed Brubaker ', '90053442345', '220', 'com'),
(40, 'All Star Superman', 'book_img/35.jpg', 'Grant Morrison', '900534424', '290', 'com'),
(41, 'Wonderstruck', 'book_img/36.jpg', 'Brian Selznick', '900534422', '249', 'com'),
(42, 'Ashoka the Great', 'book_img/37.jpg', 'Maple Press ', '900534412', '160', 'nov'),
(43, 'Biography: S.C. Bose', 'book_img/38.jpg', 'RPH Editorial Board ', '9005344456', '180', 'nov'),
(45, 'The Perfect Murder', 'book_img/40.jpg', 'Ruskin Bond', '90053446', '210', 'nov'),
(46, 'Sherlock Holmes vol 2', 'book_img/41.jpg', 'Sir Arthur Conan Doyale ', '900534456', '220', 'nov'),
(47, 'Manto:Selected Short Stories', 'book_img/42.jpg', 'Saadat Hasan Manto ', '900534451', '100', 'iw'),
(48, 'Wings of Fire', 'book_img/43.jpg', 'Arun Tiwari ', '900534452', '170', 'iw'),
(50, 'The Forever War', 'images/160338419847042625_379136152824987_3805429337373540352_n.jpg', 'Lalit Kumar', '', '300', 'sfi'),
(51, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '500', 'cmp'),
(52, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '300', 'cmp'),
(53, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'cmp'),
(54, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'bs'),
(55, 'India At Risk', 'book_img/5.jpg', 'Jaswant Singh', '90053410', '199', 'bs'),
(56, 'The Red Sari', 'book_img/6.jpg', 'Javier Moro', '90053456', '135', 'bs'),
(57, 'The power of  Mind', 'book_img/7.jpg', 'Joseph Murphy', '90053459', '231', 'bs'),
(58, 'Think And Grow Rich', 'book_img/8.jpg', 'Napoleon Hill', '900534523', '150', 'bs'),
(59, 'Siddartha', 'book_img/9.jpg', 'Herman Hesse', '900534987', '299', 'bs'),
(60, 'Black Holes', 'book_img/10.jpg', 'Stephen Hawking', '900534987', '199', 'st'),
(61, 'The Theory Of Everything', 'book_img/11.jpg', 'Stephen Hawking', '900534981', '205', 'st'),
(62, 'Relativity', 'book_img/12.jpg', 'Albert Einstein', '900534988', '190', 'st'),
(63, 'The Wellness Sense', 'book_img/13.jpg', 'Om Swami', '900534983', '200', 'iw'),
(64, 'The Gene', 'book_img/14.jpg', 'Siddarta Mukherjee', '900534789', '215', 'iw'),
(65, 'Sapiens', 'book_img/15.jpg', 'Yuval Noah Harari', '900534780', '216', 'iw'),
(66, 'One Word Kill', 'book_img/16.jpg', 'Mark Lawrence', '900534782', '180', 'aa'),
(67, 'Jurrasic Park', 'book_img/17.jpg', 'Michael Crichton\r\n', '900534567', '240', 'aa'),
(68, 'The Hobbit', 'book_img/18.jpg', 'J.R.R. Tolkien\r\n\r\n', '900534561', '340', 'aa'),
(69, 'The Hunger Games', 'book_img/19.jpg', 'Suzanne Collins\r\n', '90053456', '310', 'aa'),
(70, 'The Fellowship of the Ring ', 'book_img/20.jpg', 'J.R.R. Tolkien', '900534645', '300', 'aa'),
(71, 'The Da Vinci Code', 'book_img/21.jpg', 'Dan Brown', '900534678', '230', 'aa'),
(72, 'The Girl with the Dragon Tattoo ', 'book_img/21.jpg', 'Stieg Larsson,\r\nReg Keeland ', '900534678', '230', 'aa'),
(73, 'On Becoming a Leader', 'book_img/22.jpg', 'Warren G. Bennis', '900534672', '230', 'bm'),
(74, 'Financial Intelligence', 'book_img/23.jpg', 'Karen Berman and Joe Knight ', '900534908', '250', 'bm'),
(75, ' Growing a Business', 'book_img/24.jpg', 'Paul Hawken ', '900534999', '260', 'bm'),
(76, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '500', 'cmp'),
(77, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '300', 'cmp'),
(78, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'cmp'),
(79, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'bs'),
(80, 'India At Risk', 'book_img/5.jpg', 'Jaswant Singh', '90053410', '199', 'bs'),
(81, 'The Red Sari', 'book_img/6.jpg', 'Javier Moro', '90053456', '135', 'bs'),
(82, 'The power of  Mind', 'book_img/7.jpg', 'Joseph Murphy', '90053459', '231', 'bs'),
(83, 'Think And Grow Rich', 'book_img/8.jpg', 'Napoleon Hill', '900534523', '150', 'bs'),
(84, 'Siddartha', 'book_img/9.jpg', 'Herman Hesse', '900534987', '299', 'bs'),
(85, 'Black Holes', 'book_img/10.jpg', 'Stephen Hawking', '900534987', '199', 'st'),
(86, 'The Theory Of Everything', 'book_img/11.jpg', 'Stephen Hawking', '900534981', '205', 'st'),
(87, 'Relativity', 'book_img/12.jpg', 'Albert Einstein', '900534988', '190', 'st'),
(88, 'The Wellness Sense', 'book_img/13.jpg', 'Om Swami', '900534983', '200', 'iw'),
(89, 'The Gene', 'book_img/14.jpg', 'Siddarta Mukherjee', '900534789', '215', 'iw'),
(90, 'Sapiens', 'book_img/15.jpg', 'Yuval Noah Harari', '900534780', '216', 'iw'),
(91, 'One Word Kill', 'book_img/16.jpg', 'Mark Lawrence', '900534782', '180', 'aa'),
(92, 'Jurrasic Park', 'book_img/17.jpg', 'Michael Crichton\r\n', '900534567', '240', 'aa'),
(93, 'The Hobbit', 'book_img/18.jpg', 'J.R.R. Tolkien\r\n\r\n', '900534561', '340', 'aa'),
(94, 'The Hunger Games', 'book_img/19.jpg', 'Suzanne Collins\r\n', '90053456', '310', 'aa'),
(95, 'The Fellowship of the Ring ', 'book_img/20.jpg', 'J.R.R. Tolkien', '900534645', '300', 'aa'),
(96, 'The Da Vinci Code', 'book_img/21.jpg', 'Dan Brown', '900534678', '230', 'aa'),
(97, 'The Girl with the Dragon Tattoo ', 'book_img/21.jpg', 'Stieg Larsson,\r\nReg Keeland ', '900534678', '230', 'aa'),
(98, 'On Becoming a Leader', 'book_img/22.jpg', 'Warren G. Bennis', '900534672', '230', 'bm'),
(99, 'Financial Intelligence', 'book_img/23.jpg', 'Karen Berman and Joe Knight ', '900534908', '250', 'bm'),
(100, ' Growing a Business', 'book_img/24.jpg', 'Paul Hawken ', '900534999', '260', 'bm');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(255) NOT NULL,
  `book_id` varchar(100) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `book_id`, `book_name`, `img`, `price`, `total_price`, `quantity`, `user_id`) VALUES
(43, '7', 'Hello World', 'book_img/3.jpg', '300', '300', '1', 12),
(44, '3', 'Hello World', 'book_img/3.jpg', '250', '250', '1', 12),
(45, '5', 'Let Us C++', 'book_img/index.jpg', '500', '500', '1', 12),
(46, '4', 'Coding For Beginners', 'book_img/4.jpg', '350', '350', '1', 12),
(116, '8', 'Hello World', 'book_img/3.jpg', '300', '300', '1', 65),
(137, '25', 'The Da Vinci Code', 'book_img/21.jpg', '230', '230', '1', 2),
(138, '22', 'The Hobbit', 'book_img/18.jpg', '340', '340', '1', 2),
(143, '30', 'What Management Is', 'book_img/25.jpg', '140', '420', '3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `name`, `mobile`, `image`) VALUES
(3, 'john.doe@gmail.com', '$2y$10$X/998FG/CgMIu/Kh.uqys.vaioO3FvDs1UonXSqXeAxlsn0Af9lVq', 'john', '9549848541', 'images/6287.jpg'),
(6, 'lalitrana2018rr@gmail.com', '$2y$10$clxeMokO8NqnyikOhsTwMO2d.If/pFFAfI2pUjy5gpEs4L1zM4e8S', 'lalit rana', '8863939458', 'images/adam-miller-dBaz0xhCkPY-unsplash.jpg'),
(7, 'lalitrana2018rk@gmail.com', '$2y$10$2yAk.HgXghczMPQKsfYqQ.iVaCFoqjJlx5gcs0kAGQIzUxJ0jy8Ky', 'lalit rana', '7889787450', ''),
(8, 'lalitrana2018a@gmail.com', '$2y$10$iknZVCNtb4QTIqHNeVTbMuZqdgHxDOqnRAAJ80U1VMlR5FZCEzKfa', 'lalit rana', '8863939450', ''),
(9, 'lalitrana2018rkh@gmail.com', '$2y$10$.9eieKv6aKur.vVNHHI0euBzqLgVERtLAKqweqG7sI65ZGPI2x6fu', 'lalit rana', '8863939455', ''),
(10, 'lalitranab2018@gmail.com', '$2y$10$Y282FaWbI4ylSigWLIM1v.YiBNZc6A6ONmxOzVRRpTAYWsiiVzm3S', 'lalit rana', '8863939459', ''),
(11, 'lalitrana218@gmail.com', '$2y$10$idA5oqxxeLTatOrPbpKcueLLckLHt5hvx0G5fdJUZxX9HZDb7D4S2', 'lalit rana', '9549848548', ''),
(12, 'shubhampiction@gmail.com', '$2y$10$1kdH6AbBNsD.YtbZQP3PLOovwL6GTJ19yjv5WcenEz5go7jtkTueO', 'Shubham Rana', '8651693236', ''),
(13, 'lalitrana2018k@gmail.com', '$2y$10$BOAWr.0PT8OUN2JQxz.2XuSuVEdVB3xsd85G/QVQtcS3xumcYmLCG', 'lalit rana', '8863939453', ''),
(14, 'lalitrana208@gmail.com', '$2y$10$yjAHF0wrd5f2dGmVjGalLew9BA7yM9TLlyMZO18KQJkPRFMTRGip2', 'lalit rana', '8863939409', ''),
(15, 'aman2347@gmail.com', '$2y$10$1vj.szBuIEQQ5hQa4vfoiOEKVSjnQdtoyoG7wPG3um9yoo8MFrmw2', 'aman kumar', '8863939451', ''),
(16, 'johndoe@gmail.com', '$2y$10$vfiDVZx28ewlrgaeZx3Lg.VcH9KQsFzaUz6AXLRISlX8uO1Jp4VhC', 'jhon doe', '9549848543', ''),
(17, 'amit34@gmail.com', '$2y$10$0hDQhmCAuWcpeauKmQRSvuKJyeBgkwEHlu/TzLJesx38AhNUWwBMm', 'amit kumar', '7859787450', ''),
(18, 'aman247@gmail.com', '$2y$10$8vSLwU38BBc6E/X6KRLQJu.hK8euJpb1TKJphmVHYBKIPZkoYkQYG', 'aman singh', '8863839458', ''),
(22, 'sumit456@gmail.com', '$2y$10$zxFOgmfvlJ.M/Ku3gxr5M.OaQDshkbIU3lRAHhn0l8j8P69roTvoK', 'sumit kumar', '8876765490', ''),
(25, 'lalitraana2018@gmail.com', '$2y$10$XJl0mWjkAyyvo3TVUyDcs.5hP0WCHe82PnrlLSN3dd5E/9bTk9p7.', 'lalit rana', '8863938456', ''),
(27, 'john.jdoe@gmail.com', '$2y$10$MwhvhPYnOJkoc1Xhv653xeHRH.w2e2C6UE8f9BpypaApQ0uh9Tgre', 'john doe', '8063939458', ''),
(29, 'john.hdoe@gmail.com', '$2y$10$YSlkwnNteyjeWgGg7Oc37./Gbl4/CgvAB9UmVSmy3wzhIh8hgqw3C', 'john deo', '8863939478', ''),
(30, 'amanb347@gmail.com', '$2y$10$mOhlB5CLYsSzlgfNS9YjQOWN7ZyUnUFPV4X.bwNREMJph6UdeuZ16', 'lalit rana', '9579848541', ''),
(31, 'lalitrana201@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7979968593', ''),
(33, 'lalitrana201aaa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '8863096745', ''),
(34, 'solanitdesiraqe@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '8663039457', ''),
(36, 'solanitesiraqe@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '8663039472', ''),
(38, 'solanitdesir@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7979967126', ''),
(40, 'solanitdesiir@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7979967156', ''),
(42, 'lalitrana20901@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7979968359', ''),
(43, 'lalitrana901@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7990968593', ''),
(44, 'amitweffc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7004756098', ''),
(45, 'lalitrana5201@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7979968908', ''),
(46, 'amitwef@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7979909593', ''),
(47, 'lalitrana2001@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lalit rana', '7265889422', ''),
(48, 'lalitranaa201@gmail.com', '0', 'lalit rana', '7979968873', ''),
(49, 'lalitrana201q1@gmail.com', '$2y$10$uJaMoPrgP8OWnWZdcyCo5.JBjfV9cIXpEJg.ZC/vAPAlpg7Cqu0zi', 'lalit rana', '7969968593', ''),
(50, 'lalitrana20451@gmail.com', '12345', 'lalit rana rana', '8096785643', ''),
(52, 'lalitr1edeana201@gmail.com', '$2y$10$uc5NreALCIhqDLwhU3T4Ce55C.vKiwDl/UN2iiEyPpXB6CCCJZ1qG', 'lalit rana', '8863937986', ''),
(57, 'sumkitreds@gmail.com', '$2y$10$KQ7CP6Hdyt3BaxbL7QtF1O9pL2v4ZsmHWDBC1rZj8i3VHrF5JLM/a', 'sumit kumar', '9189786534', ''),
(58, 'amitwqqsdef@gmail.com', '$2y$10$.Hu1fLJ0KYa.61NiU9DUZe6zZI/QcoDJ4LiTjT56xgxDiiZj/Ro5O', 'lalit rana', '8863909556', ''),
(59, 'john895e@gmail.com', '$2y$10$4ncu1FrxZFe7D2xp4crpDOOPU5l5x/wka8jIxipuF2jpeuGsmcIzW', 'lajpohn', '8884096745', ''),
(60, 'lalitrandfga201@gmail.com', '$2y$10$Yx1vPB9p2yKiaNUF.EmmUOBcAvA.4Zb7NMK5NaJRBRyCC/NBVXXSm', 'lali', '7975468593', ''),
(61, 'lalitrana201900@gmail.com', '$2y$10$cYbQOHaxAbUCzSxPDqqELePLakongBSO2066o6wH1Cb5ZZlSnReSS', 'lalit rana', '7979968098', ''),
(62, 'lalitrana2010@gmail.com', '$2y$10$lcKVOSaUpvJoyum86Okf1eNYc4O88BBiC.VWkRt.m162b/7adCAxy', 'lalit rana', '7004756436', ''),
(63, 'johnadoe@gmail.com', '$2y$10$jqzm.LwCIeWnVjiDJXA/Z.cIqzF2GYdyFz8ar/YAydnCIDq7qTwLu', 'as', '8863939452', ''),
(64, 'lalitrana559@gmail.com', '$2y$10$ohcO9i0Wmidf0r99.O473.fiPzuES.hfSTmEXAAI9bIgJ9vY2ADPC', 'suman kumari', '7979968590', ''),
(65, 'johdoe@gmail.com', '$2y$10$uEEfwWKIp8nZu5IlAt1G3OOyTL4tyfQ/XYlXgWV4g2QY/v8wQrwPy', 'lalit rana', '8987663143', ''),
(66, 'lalitrana2d01@gmail.com', '$2y$10$6f0IimqJxpnlYE9bk3PSce4.RG/mrqLTGcNQEs7hQ7VCcGoU0BhcG', 'asd', '8651693237', ''),
(67, 'john.dweoe@gmail.com', '$2y$10$.qdOU4.Rq.3OCXNDv6Sa/OHtENkNu6lcByrRRB0Qyq9pz.qBau.LS', 'qd', '7979968543', ''),
(68, 'golutolu@gmail.com', '$2y$10$JXccaRFDY.ECFrBKAyWQZ.geTnJck66D6pY//09EjJzTIFB5TuVcy', 'golu tolu', '7878898956', ''),
(69, 'worldwideshubham@gmail.com', '$2y$10$YSuhLMwjqhE42ipt6ZaJGuSPpcniZqCkugqGcDICQT5AdLSZz9SZq', 'shubham', '8651693235', ''),
(70, 'lalitrana2018r@gmail.com', '$2y$10$ckCnGybXd88TFJd3OybruuA6azpRipy8Cq9WfJ3qG.r3iEg1sJOWe', 'lalit rana', '7979968578', 'images/91652.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `order_id` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `order_id`, `status`) VALUES
(1, '2529470116', 0),
(2, '18902516446', 0),
(3, '83510316', 0),
(4, '15516557966', 0),
(5, '14214241326', 0),
(6, '8737475696', 0),
(7, '1269681076', 0),
(8, '19841254006', 0),
(9, '224034216', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sno` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `book_id` varchar(200) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_of_purchase` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`sno`, `order_id`, `book_id`, `book_name`, `img`, `price`, `quantity`, `total_price`, `user_id`, `date_of_purchase`, `status`, `payment_method`, `paid`) VALUES
(109, '8863247216', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-07 03:47:28', 'dispatched', 'cod', 'not paid'),
(145, '11041984546', '9', 'India At Risk', 'book_img/5.jpg', '199', 3, '597', '6', '2019-11-13 08:15:33', 'order placed', 'COD', 'not paid'),
(146, '782806996', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-13 08:15:33', 'order placed', 'COD', 'not paid'),
(147, '21048116696', '10', 'The Red Sari', 'book_img/6.jpg', '135', 1, '135', '6', '2019-11-13 08:15:33', 'order placed', 'COD', 'not paid'),
(148, '20713111446', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(149, '13640120786', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(150, '4863272826', '13', 'Siddartha', 'book_img/9.jpg', '299', 1, '299', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(151, '5041031586', '20', 'One Word Kill', 'book_img/16.jpg', '180', 1, '180', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(152, '15854008096', '21', 'Jurrasic Park', 'book_img/17.jpg', '240', 1, '240', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(153, '17807970976', '22', 'The Hobbit', 'book_img/18.jpg', '340', 1, '340', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(154, '8621916866', '23', 'The Hunger Games', 'book_img/19.jpg', '310', 1, '310', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(155, '11456928046', '24', 'The Fellowship of the Ring ', 'book_img/20.jpg', '300', 1, '300', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(156, '12636777536', '25', 'The Da Vinci Code', 'book_img/21.jpg', '230', 1, '230', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(157, '11118779156', '27', 'On Becoming a Leader', 'book_img/22.jpg', '230', 1, '230', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(158, '9558282956', '28', 'Financial Intelligence', 'book_img/23.jpg', '250', 1, '250', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(159, '7388442386', '29', ' Growing a Business', 'book_img/24.jpg', '260', 1, '260', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(160, '11401435646', '30', 'What Management Is', 'book_img/25.jpg', '140', 1, '140', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(161, '5239523826', '31', 'Rich Dad Poor Dad:', 'book_img/26.jpg', '210', 1, '210', '6', '2019-11-13 08:15:36', 'order placed', 'COD', 'not paid'),
(162, '17125408746', '32', 'India in the Age of Ideas', 'book_img/27.jpg', '230', 1, '230', '6', '2019-11-13 08:15:36', 'order placed', 'COD', 'not paid'),
(163, '64342475215', '1', 'Let Us C++', 'book_img/index.jpg', '200', 1, '200', '15', '2019-11-13 10:06:15', 'order placed', 'COD', 'not paid'),
(164, '174822352415', '2', 'Java Programming', 'book_img/2.jpg', '300', 1, '300', '15', '2019-11-13 10:06:16', 'order placed', 'COD', 'not paid'),
(165, '103637665715', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '15', '2019-11-13 10:10:03', 'order placed', 'COD', 'not paid'),
(166, '189943712615', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '15', '2019-11-13 10:10:03', 'order placed', 'COD', 'not paid'),
(167, '52289643015', '10', 'The Red Sari', 'book_img/6.jpg', '135', 1, '135', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(168, '69839812215', '23', 'The Hunger Games', 'book_img/19.jpg', '310', 1, '310', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(169, '29455775615', '28', 'Financial Intelligence', 'book_img/23.jpg', '250', 1, '250', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(170, '191834300715', '29', ' Growing a Business', 'book_img/24.jpg', '260', 1, '260', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(171, '190575864715', '30', 'What Management Is', 'book_img/25.jpg', '140', 1, '140', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(172, '92182947915', '31', 'Rich Dad Poor Dad:', 'book_img/26.jpg', '210', 1, '210', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(173, '35142164315', '32', 'India in the Age of Ideas', 'book_img/27.jpg', '230', 1, '230', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(174, '11154499866', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '6', '2019-11-15 03:44:27', 'order placed', 'COD', 'not paid'),
(175, '18496391086', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '6', '2019-11-15 03:44:27', 'order placed', 'COD', 'not paid'),
(176, '3085644356', '13', 'Siddartha', 'book_img/9.jpg', '299', 1, '299', '6', '2019-11-15 03:44:27', 'order placed', 'COD', 'not paid'),
(177, '20054059966', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-11-15 03:44:27', 'order placed', 'COD', 'not paid'),
(178, '12046453436', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(179, '2516836576', '10', 'The Red Sari', 'book_img/6.jpg', '135', 1, '135', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(180, '8266726596', '20', 'One Word Kill', 'book_img/16.jpg', '180', 1, '180', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(181, '16809675326', '21', 'Jurrasic Park', 'book_img/17.jpg', '240', 1, '240', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(182, '8067529886', '22', 'The Hobbit', 'book_img/18.jpg', '340', 1, '340', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(183, '21353921796', '23', 'The Hunger Games', 'book_img/19.jpg', '310', 1, '310', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(184, '19895802646', '24', 'The Fellowship of the Ring ', 'book_img/20.jpg', '300', 1, '300', '6', '2019-11-15 03:44:29', 'order placed', 'COD', 'not paid'),
(185, '14835411426', '25', 'The Da Vinci Code', 'book_img/21.jpg', '230', 1, '230', '6', '2019-11-15 03:44:29', 'order placed', 'COD', 'not paid'),
(186, '4755734316', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-16 11:11:37', 'order placed', 'COD', 'not paid'),
(187, '183425069168', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '68', '2019-11-16 01:30:25', 'order placed', 'COD', 'not paid'),
(188, '2373628566', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-16 10:59:43', 'order placed', 'COD', 'not paid'),
(189, '72373538368', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '68', '2019-11-20 03:28:13', 'order placed', 'COD', 'not paid'),
(190, '189685380868', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '68', '2019-11-20 03:28:14', 'order placed', 'COD', 'not paid'),
(191, '187743190368', '13', 'Siddartha', 'book_img/9.jpg', '299', 1, '299', '68', '2019-11-20 03:28:14', 'order placed', 'COD', 'not paid'),
(192, '211153636668', '20', 'One Word Kill', 'book_img/16.jpg', '180', 1, '180', '68', '2019-11-20 03:28:14', 'order placed', 'COD', 'not paid'),
(193, '6210755386', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-21 09:53:02', 'order placed', 'COD', 'not paid'),
(194, '11224806126', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-11-21 09:53:03', 'order placed', 'COD', 'not paid'),
(195, '5567717496', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-11-22 09:25:15', 'order placed', 'COD', 'not paid'),
(196, '15712707176', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-25 02:29:16', 'order placed', 'COD', 'not paid'),
(197, '4219326396', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '6', '2019-11-25 02:29:17', 'order placed', 'COD', 'not paid'),
(198, '4913103706', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-25 02:29:44', 'order placed', 'COD', 'not paid'),
(199, '10836957596', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '6', '2019-11-25 02:29:44', 'order placed', 'COD', 'not paid'),
(200, '86335456', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-25 02:30:30', 'order placed', 'COD', 'not paid'),
(201, '10750991666', '8', 'Hello World', 'book_img/3.jpg', '300', 3, '900', '6', '2019-12-12 08:18:51', 'order placed', 'COD', 'not paid'),
(202, '13635152566', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '6', '2019-12-13 12:12:21', 'order placed', 'COD', 'not paid'),
(203, '5761332716', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-12-13 12:12:23', 'order placed', 'COD', 'not paid'),
(204, '2529470116', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-12-15 09:19:24', '0', 'COD', 'not paid'),
(205, '18902516446', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-12-15 09:19:24', '0', 'COD', 'not paid'),
(206, '83510316', '9', 'India At Risk', 'book_img/5.jpg', '199', 3, '597', '6', '2019-12-16 08:17:13', 'order placed', 'COD', 'not paid'),
(207, '15516557966', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-12-16 08:26:21', 'order placed', 'COD', 'not paid'),
(208, '14214241326', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '6', '2019-12-16 08:26:21', 'order placed', 'COD', 'not paid'),
(209, '8737475696', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-12-16 08:29:48', 'order placed', 'COD', 'not paid'),
(210, '1269681076', '20', 'One Word Kill', 'book_img/16.jpg', '180', 1, '180', '6', '2019-12-16 08:29:49', 'order placed', 'COD', 'not paid'),
(211, '19841254006', '8', 'Hello World', 'book_img/3.jpg', '300', 3, '900', '6', '2019-12-20 09:17:38', 'order placed', 'COD', 'not paid'),
(212, '224034216', '9', 'India At Risk', 'book_img/5.jpg', '199', 3, '597', '6', '2019-12-20 09:17:39', 'order placed', 'COD', 'not paid');

-- --------------------------------------------------------

--
-- Table structure for table `order_address`
--

CREATE TABLE `order_address` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `order_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_address`
--

INSERT INTO `order_address` (`id`, `address_id`, `order_id`) VALUES
(33, 62, '21004194776'),
(35, 62, '5507091026'),
(37, 63, '6987051416'),
(39, 63, '7351886866'),
(41, 64, '284582786'),
(42, 64, '10399872906'),
(43, 65, '13768404546'),
(44, 65, '20903665016'),
(45, 66, '3761294866'),
(46, 66, '14350635376'),
(47, 67, '4243548136'),
(48, 67, '977382486'),
(49, 68, '13943412116'),
(50, 68, '20915830526'),
(51, 69, '12710186676'),
(52, 69, '9471330266'),
(53, 70, '5856422896'),
(54, 71, '17671839576'),
(55, 71, '9416560096'),
(56, 72, '15462964436'),
(57, 72, '12382301766'),
(58, 73, '19377360926'),
(59, 73, '1609846836'),
(60, 74, '17785745166'),
(61, 74, '5423326576'),
(62, 75, '2794617106'),
(63, 75, '5806830416'),
(64, 76, '8946740416'),
(65, 76, '17300896296'),
(66, 77, '12193551066'),
(67, 77, '5098158156'),
(68, 77, '16265554356'),
(69, 77, '9844966396'),
(70, 78, '8863247216'),
(71, 78, '9597790456'),
(72, 79, '9400129366'),
(73, 79, '892700136'),
(74, 80, '8614680556'),
(75, 80, '8614837116'),
(76, 81, '20923485936'),
(77, 81, '6001088506'),
(78, 81, '5652543036'),
(79, 82, '8242385656'),
(80, 83, '8152397306'),
(81, 84, '13005950056'),
(82, 85, '19808229136'),
(83, 86, '1892994106'),
(84, 87, '19830516256'),
(85, 88, '10952266056'),
(86, 88, '2405448486'),
(87, 89, '3691460676'),
(88, 90, '17236603756'),
(89, 91, '6326765106'),
(90, 91, '13281803846'),
(91, 91, '15110675986'),
(92, 92, '12798161966'),
(93, 92, '21378269626'),
(94, 92, '1368501246'),
(95, 92, '10597403986'),
(96, 93, '6046947056'),
(97, 93, '10954443216'),
(98, 94, '19777377606'),
(99, 94, '7159320456'),
(100, 95, '15562982016'),
(101, 95, '13686681346'),
(102, 95, '16683389526'),
(103, 96, '10073107046'),
(104, 96, '18884155326'),
(105, 96, '425563406'),
(106, 97, '11041984546'),
(107, 97, '782806996'),
(108, 97, '21048116696'),
(109, 97, '20713111446'),
(110, 97, '13640120786'),
(111, 97, '4863272826'),
(112, 97, '5041031586'),
(113, 97, '15854008096'),
(114, 97, '17807970976'),
(115, 97, '8621916866'),
(116, 97, '11456928046'),
(117, 97, '12636777536'),
(118, 97, '11118779156'),
(119, 97, '9558282956'),
(120, 97, '7388442386'),
(121, 97, '11401435646'),
(122, 97, '5239523826'),
(123, 97, '17125408746'),
(124, 98, '64342475215'),
(125, 98, '174822352415'),
(126, 99, '103637665715'),
(127, 99, '189943712615'),
(128, 99, '52289643015'),
(129, 99, '69839812215'),
(130, 99, '29455775615'),
(131, 99, '191834300715'),
(132, 99, '190575864715'),
(133, 99, '92182947915'),
(134, 99, '35142164315'),
(135, 100, '11154499866'),
(136, 100, '18496391086'),
(137, 100, '3085644356'),
(138, 100, '20054059966'),
(139, 100, '12046453436'),
(140, 100, '2516836576'),
(141, 100, '8266726596'),
(142, 100, '16809675326'),
(143, 100, '8067529886'),
(144, 100, '21353921796'),
(145, 100, '19895802646'),
(146, 100, '14835411426'),
(147, 101, '4755734316'),
(148, 102, '183425069168'),
(149, 103, '2373628566'),
(150, 104, '72373538368'),
(151, 104, '189685380868'),
(152, 104, '187743190368'),
(153, 104, '211153636668'),
(154, 105, '6210755386'),
(155, 105, '11224806126'),
(156, 106, '5567717496'),
(157, 107, '4913103706'),
(158, 107, '10836957596'),
(159, 108, '86335456'),
(160, 109, '10750991666'),
(161, 110, '13635152566'),
(162, 110, '5761332716'),
(163, 112, '2529470116'),
(164, 112, '18902516446'),
(165, 113, '83510316'),
(166, 114, '15516557966'),
(167, 114, '14214241326'),
(168, 115, '8737475696'),
(169, 115, '1269681076'),
(170, 116, '19841254006'),
(171, 116, '224034216');

-- --------------------------------------------------------

--
-- Table structure for table `profile_images`
--

CREATE TABLE `profile_images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, '3D Camera', '3DcAM01', 'product-images/camera.jpg', 1500.00),
(2, 'External Hard Drive', 'USB02', 'product-images/external-hard-drive.jpg', 800.00),
(3, 'Wrist Watch', 'wristWear03', 'product-images/watch.jpg', 300.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`1`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `order_address`
--
ALTER TABLE `order_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `1` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `order_address`
--
ALTER TABLE `order_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
