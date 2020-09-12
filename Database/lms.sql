-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 03:44 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

CREATE TABLE `add_books` (
  `id` int(5) NOT NULL,
  `books_name` varchar(100) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `books_author_name` varchar(100) NOT NULL,
  `books_publication_name` varchar(100) NOT NULL,
  `books_purchase_date` varchar(50) NOT NULL,
  `books_price` varchar(50) NOT NULL,
  `books_qty` varchar(50) NOT NULL,
  `available_qty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_books`
--

INSERT INTO `add_books` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_qty`, `available_qty`) VALUES
(10, 'Java', 'books_image/f641956bccf92582878f031b491d66cf_20170814_045215.JPG', 'Jason Hunter', 'O Reilly', '03-12-2018', '799', '25', '23'),
(11, 'Php', 'books_image/35fba777787aa6891125f222509f46d4_20170814_045238.JPG', 'Denish ', 'William', '05-12-2018', '699', '20', '19'),
(12, 'Andriod', 'books_image/e13f948c923e289909f3b8069221dca8_20170814_045253.JPG', 'James', 'Polly ', '04-12-2018', '649', '20', '19');

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` int(5) NOT NULL,
  `student_enrollment` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` varchar(50) NOT NULL,
  `student_contact` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issue_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`id`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issue_date`, `books_return_date`, `student_username`) VALUES
(21, '166299548', 'Tushar Ruhela', '6', '8440741264', 'tushar@gmail.com', 'Php', '13-02-2019', '', 'tushar'),
(22, '166299545', 'Rishabh Gujjar', '6', '9045304846', 'rishabh@gmail.com', 'Java', '13-02-2019', '', 'rishabh'),
(23, '166299548', 'Tushar Ruhela', '6', '8440741264', 'tushar@gmail.com', 'Andriod', '13-02-2019', '', 'tushar'),
(24, '166299545', 'Rishabh Gujjar', '6', '9045304846', 'rishabh@gmail.com', 'Php', '13-02-2019', '13-02-2019', 'rishabh'),
(25, '166299549', 'Vikas Sharma', '6', '9897641695', 'vikas@gmail.com', 'Java', '15-02-2019', '', 'vikas');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_registration`
--

CREATE TABLE `librarian_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_registration`
--

INSERT INTO `librarian_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'Mitthu', 'Ji', 'Mitthu', 'pubg', 'mitthu@gmail.com', '8449741264');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `dusername` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `read1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `susername`, `dusername`, `title`, `msg`, `read1`) VALUES
(5, 'MItthu', 'rishabh', 'Book', 'please return php book ', 'y'),
(6, 'MItthu', 'tushar', 'Return', 'Please return library book otherwise u will pay fine', 'y'),
(7, 'mitthu', 'rishabh', 'rfgs', 'sdf', 'y'),
(8, 'mitthu', 'tushar', 'gsdf', 'hsdf', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `enrollment` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `sem`, `enrollment`, `status`) VALUES
(9, 'Tushar', 'Ruhela', 'tushar', 'ruhela', 'tushar@gmail.com', '8440741264', '6', '166299548', 'yes'),
(10, 'Rishabh', 'Gujjar', 'rishabh', 'gujjar', 'rishabh@gmail.com', '9045304846', '6', '166299545', 'yes'),
(11, 'Vikas', 'Sharma', 'vikas', 'sharma', 'vikas@gmail.com', '9897641695', '6', '166299549', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_books`
--
ALTER TABLE `add_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_books`
--
ALTER TABLE `add_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
