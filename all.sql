-- phpMyAdmin SQL Dump
-- version 4.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2014 at 10:55 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cakeonetwo`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
`id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `email` varchar(127) NOT NULL,
  `website` varchar(127) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `website`) VALUES
(1, 'michael zhuang', 'm@gmail.com', 'www.mz.com'),
(2, 'james bone', 'jame@gmail.com', 'www.jamebone.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
`id` int(11) NOT NULL,
  `isbn` varchar(10) NOT NULL,
  `title` varchar(127) NOT NULL,
  `description` text NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `description`, `author_id`) VALUES
(1, '198845', 'Good Book 1', 'Good Book 1 Desp 33', 1),
(2, '2134234234', 'Star War', 'good graphics in the book', 2),
(3, '79', '798', '79', 1),
(4, '79', '798', '79', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE IF NOT EXISTS `tutorials` (
`id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `name`, `description`, `author_id`) VALUES
(1, 'math101', 'Good math course', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`id`), ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
 ADD PRIMARY KEY (`id`), ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
ADD CONSTRAINT `fk_author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutorials`
--
ALTER TABLE `tutorials`
ADD CONSTRAINT `fk_author_tut` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
