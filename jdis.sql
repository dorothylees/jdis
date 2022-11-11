-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 11, 2022 at 03:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jdis`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangay_tbl`
--

CREATE TABLE `barangay_tbl` (
  `id` int(11) NOT NULL,
  `barangay` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangay_tbl`
--

INSERT INTO `barangay_tbl` (`id`, `barangay`) VALUES
(1, 'Alegria'),
(2, 'Bagong Silang'),
(3, 'Biasong'),
(4, 'Bonifacio'),
(5, 'Burgos'),
(6, 'Dalacon'),
(7, 'Dampalan'),
(8, 'Don Andres Soriano'),
(9, 'Eastern Poblacion'),
(10, 'Estante'),
(11, 'Hasaan'),
(12, 'Katipa'),
(13, 'Luzaran'),
(14, 'Mabas'),
(15, 'Macalibre Alto'),
(16, 'Macalibre Bajo'),
(17, 'Mahayahay'),
(18, 'Manguehan'),
(19, 'Mansabay Alto'),
(20, 'Mansabay Bajo'),
(21, 'Molatuhan Alto'),
(22, 'Molatuhan Bajo'),
(23, 'Peniel'),
(24, 'Puntod'),
(25, 'Rizal'),
(26, 'Sibugon'),
(27, 'Sibula'),
(28, 'Western Poblacion');

-- --------------------------------------------------------

--
-- Table structure for table `jd_tbl`
--

CREATE TABLE `jd_tbl` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `barangay_tbl_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `offense_id` int(11) NOT NULL,
  `date_of_offense` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jd_tbl`
--

INSERT INTO `jd_tbl` (`id`, `fullname`, `email`, `address`, `barangay_tbl_id`, `dob`, `age`, `gender`, `phone`, `offense_id`, `date_of_offense`) VALUES
(1, 'Mario Maurer', 'Maurer@gmail.com', 'Purok 1, Biasong, Lopez Jaena', 12, '2006-10-01', 16, '', '09348983434', 3, '2022-10-12'),
(2, 'dafdfadfa dafdaf', 'dafdaf@gmail.com', 'Sibugon, Lopez Jaena', 26, '2004-07-24', 16, '', '09564573535', 12, '2022-11-01'),
(3, 'dfadfadf dafda f', 'dafdafdfa@gmail.com', 'Alegria, Lopez Jaena', 1, '2007-07-18', 15, 'male', '09754567845', 2, '2022-10-27'),
(4, 'dfadfadf dafda f', 'dafdafdfa@gmail.com', 'Alegria, Lopez Jaena', 1, '2007-07-18', 15, 'male', '09754567845', 2, '2022-10-27'),
(5, 'dfadfadf dafda f', 'dafdafdfa@gmail.com', 'Alegria, Lopez Jaena', 1, '2007-07-18', 15, 'male', '09754567845', 2, '2022-10-27'),
(6, 'dfadfadf dafda f', 'dafdafdfa@gmail.com', 'Alegria, Lopez Jaena', 1, '2007-07-18', 15, 'male', '09754567845', 2, '2022-10-27'),
(10, 'dafdafdfadfa', 'dafdafdafd@gmail.com', 'purok 1, biasong, lopez jaena, misamis occidental, philippines', 7, '2012-07-19', 10, 'male', '09674564564', 7, '2022-11-01'),
(11, 'dafdafdfadfa', 'dafdafdafd@gmail.com', 'purok 1, biasong, lopez jaena, misamis occidental, philippines', 7, '2012-07-19', 10, 'male', '09674564564', 7, '2022-11-01'),
(12, 'dafdafdfadfa', 'dafdafdafd@gmail.com', 'purok 1, biasong, lopez jaena, misamis occidental, philippines', 7, '2012-07-19', 10, 'male', '09674564564', 7, '2022-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `offense_tbl`
--

CREATE TABLE `offense_tbl` (
  `id` int(11) NOT NULL,
  `offense_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offense_tbl`
--

INSERT INTO `offense_tbl` (`id`, `offense_name`) VALUES
(1, 'underage drinking'),
(2, 'burglary'),
(3, 'larceny'),
(4, 'theft'),
(5, 'arson'),
(6, 'murder'),
(7, 'rape'),
(8, 'robbery'),
(9, 'malicious mischief'),
(10, 'estafa'),
(11, 'physical injuries'),
(12, 'illegal gambling'),
(13, 'attempted murder'),
(14, 'seduction'),
(15, 'grave threats'),
(16, 'abduction'),
(17, 'aggravated assault'),
(18, 'illegal use of prohibited drugs'),
(19, 'illegal possession of firearms'),
(20, 'bullying'),
(21, 'attempted rape'),
(22, 'acts of lasciviousness'),
(23, 'drug trafficking');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `barangay_tbl_id` int(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `role` enum('user','admin') NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `dob`, `age`, `gender`, `address`, `barangay_tbl_id`, `mobile`, `position`, `role`, `date_added`) VALUES
(1, 'Dorothy Lee Sumaylo', 'admin', 'dorothyleesumaylo1977@gmail.com', 'JesusisLord1977', '1977-08-31', '45', 'female', 'Purok 1, Biasong, Lopez Jaena, Misamis Occidental', 1, '09354367534', 'Lupon', 'admin', '2022-11-06 15:10:42'),
(2, 'marc sum', 'marcsum', 'jong@yahoo.com', 'admin1', '1978-02-23', '', '', 'biasong', 4, '09057884882', 'Lupon', 'user', '2022-10-18 13:50:04'),
(4, 'dafdafdf', 'dafdaf', 'dafda@gmail.com', 'dafdaf', '1997-06-18', '14', 'female', 'purok 1, biasong, lopez jaena, misamis occidental, philippines', 7, '09057884882', 'Captain', 'user', '2022-11-05 13:43:38'),
(5, 'dfadfa', 'dfadaf', 'dafadf@gmail.com', 'dafdafdaf', '2000-12-07', '45', 'female', 'dafadfa, badafldf a', 14, '9362367598', 'Librarian', 'user', '2022-10-31 04:33:17'),
(7, 'Dorothy Lee Sumaylo', 'dorothylees', 'dorothyleesumaylo1977@gmail.com', 'JesusisLord1977', '1977-08-31', '45', 'female', 'Purok 1, Biasong, Lopez Jaena, Misamis Occidental', 3, '9354367534', 'Lupon', 'user', '2022-11-06 14:05:08'),
(8, 'dafdafdf', 'dafdaf', 'dafda@gmail.com', 'dafdaf', '1997-06-18', '14', 'female', 'purok 1, biasong, lopez jaena, misamis occidental, philippines', 7, '9057884882', 'Captain', 'user', '2022-11-05 14:15:54'),
(9, 'gregory', 'gregor', 'greg@gmail.com', '4ab4e5a660a85bbe7cdec5d9ae1cf05a', '1998-07-23', '56', 'male', 'western poblacion lopez jaena, misamis occidental', 28, '09564567456', 'Secretary', 'user', '2022-11-05 14:57:34'),
(10, 'Coco Martin', 'cocomartin', 'coco@gmail.com', '1a126c46774a786eec989e3a275565ec', '1980-12-18', '40', 'male', 'western poblacion lopez jaena, misamis occidental', 12, '09684567456', 'Captain', 'user', '2022-11-06 13:41:00'),
(11, 'Coco Martin', 'cocomartin', 'coco@gmail.com', 'cfc55a0a55ded5a0867a8f1efb2f87ee', '1980-12-18', '40', 'male', 'western poblacion lopez jaena, misamis occidental', 9, '09684567456', 'Captain', 'user', '2022-11-05 15:17:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangay_tbl`
--
ALTER TABLE `barangay_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jd_tbl`
--
ALTER TABLE `jd_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangay_tbl_id` (`barangay_tbl_id`),
  ADD KEY `barangay_tbl_id_2` (`barangay_tbl_id`),
  ADD KEY `offense_id` (`offense_id`);

--
-- Indexes for table `offense_tbl`
--
ALTER TABLE `offense_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangay` (`barangay_tbl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangay_tbl`
--
ALTER TABLE `barangay_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `jd_tbl`
--
ALTER TABLE `jd_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `offense_tbl`
--
ALTER TABLE `offense_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jd_tbl`
--
ALTER TABLE `jd_tbl`
  ADD CONSTRAINT `jd_tbl_ibfk_1` FOREIGN KEY (`offense_id`) REFERENCES `offense_tbl` (`id`),
  ADD CONSTRAINT `test` FOREIGN KEY (`barangay_tbl_id`) REFERENCES `barangay_tbl` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `barangay` FOREIGN KEY (`barangay_tbl_id`) REFERENCES `barangay_tbl` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
