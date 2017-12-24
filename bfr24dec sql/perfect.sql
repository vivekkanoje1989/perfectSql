-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2017 at 11:58 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfect`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE latin1_general_cs NOT NULL,
  `ip_address` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('beb7khvl2avnnej1pedko5ch5t7oo5qs', '::1', 1510748231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303734373938343b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('k1auumg8t54e6hn9h5pjc7skkqrnqedt', '::1', 1510748340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303734383334303b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('odsc9s5lek3sq7nabmvvfio9l218j8e9', '::1', 1510748899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303734383733323b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('6nt4qpre1mfprn99gnpeph01mqvqojc5', '::1', 1510749443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303734393136383b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('42dqdgk1ter3gl0158nkdb2m5pqjtcbp', '::1', 1510749740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303734393533393b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('lbqab8iviqpik3jllt03c5srcs05mei7', '::1', 1510749846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303734393834363b),
('sqabspvs2v1mr61ret97eoqi0fdhn9cm', '::1', 1510836235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303833353938313b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('c79us4ckd74fmupuvvcidp663g1spl3u', '::1', 1510836487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303833363331373b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('u2ndo30s4ke8bpclc81elb9mqssd4ql6', '::1', 1513345832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333334353832353b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('3llhukjt0bd7tpcofn19t7eb8t3mkogg', '::1', 1513593549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333539333437373b);

-- --------------------------------------------------------

--
-- Table structure for table `lr_tbl`
--

CREATE TABLE `lr_tbl` (
  `id` int(11) NOT NULL,
  `servicetaxno` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `lrno` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `invoice_div` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `Lr_Date` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `from_l` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `to_l` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `consignee_name` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `consigner_name` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `consigner_Addr` varchar(200) COLLATE latin1_general_cs NOT NULL,
  `consignee_Addr` varchar(200) COLLATE latin1_general_cs NOT NULL,
  `invoice_no` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `vehicle_no` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `material_type` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `num_packages` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `actual_weight` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `gst_tax` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `delivery_date` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `POD_receiptno` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `type_transportation` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `vehicle_type` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `frieght_rate` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `detaintion` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `loading_charge` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `unloading_charge` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `extracollectioncharge` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `statsticalcharge` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `mail_box` text COLLATE latin1_general_cs NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `lr_tbl`
--

INSERT INTO `lr_tbl` (`id`, `servicetaxno`, `lrno`, `invoice_div`, `Lr_Date`, `from_l`, `to_l`, `consignee_name`, `consigner_name`, `consigner_Addr`, `consignee_Addr`, `invoice_no`, `vehicle_no`, `material_type`, `num_packages`, `actual_weight`, `gst_tax`, `delivery_date`, `POD_receiptno`, `type_transportation`, `vehicle_type`, `frieght_rate`, `detaintion`, `loading_charge`, `unloading_charge`, `extracollectioncharge`, `statsticalcharge`, `mail_box`, `created`) VALUES
(1, 'MHA0068501', 'LR001', 'AD', '2017-03-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'FTL', '20', '40', '200', '250', '45', '55', '\r\nindeed\r\nMace\r\n				\r\n66 reviews\r\n1 new vacancy\r\nPlanning Manager – High End Residential\r\nMace - Gurgaon, Haryana\r\nBe a part of our International Consultancy business that spans our five global hubs, where we oversee work for world leading organisations across the public and...\r\n8-Nov\r\nView All Jobs\r\nView jobs: since yesterday - for last 7 days\r\nIndeed - one search. all jobs. | Indeed Ireland Operations Limited, 124 St. Stephen\'s Green, Dublin 2, Ireland\r\nIf you no longer wish to receive this type of email, you may unsubscribe here', '2017-11-15 12:29:59'),
(2, 'MHA0068501', 'b', '', '2017-03-13', 'h', 'v', 'v', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '89', '78', '', '2017-11-15 12:29:59'),
(3, 'MHA0068501', 'b', '', '2017-03-13', 'h', 'v', 'v', '', '', '', 'n', 'vivek update', '1', '', '', '', '2017-03-17', '2', '3', '4', '5', '6', '7', '8', '9', '10', '', '2017-11-15 12:29:59'),
(4, 'MHA0068501', 'Gj', '', '2017-03-22', 'V', 'B', 'G', 'K', 'G', 'F', 'G', 'T', 'G', 'Gg', 'F', 'G', '', '', '', '', '', '', '', '', '', '', '', '2017-11-15 12:29:59'),
(5, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'LCV', '20', '40', '200', '250', '45', '55', 'Dear, M&M\r\n\r\nThank You!', '2017-11-15 12:29:59'),
(6, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(7, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(8, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(9, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(10, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(11, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(12, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(13, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(14, 'MHA0068501', 'LR001', '', '2017-03-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15 12:29:59'),
(15, 'MHA0068501', 'Lu35', 'AD', '22-11-2017', 'Mumbai', 'Chakan', 'Perfect transport', 'Mm', 'Mumbai', 'Chakan', 'Inv13', 'MH12 1244', 'Glass', '5', '56', '18', '', '', '', '', '', '', '', '', '', '', '', '2017-11-15 12:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `memo_tbl`
--

CREATE TABLE `memo_tbl` (
  `id` int(11) NOT NULL,
  `memo_from` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `memo_to` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `lr_no` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `invoice_no` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `lorry_no` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `date` date NOT NULL,
  `veh_type` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `freight` varchar(25) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `memo_tbl`
--

INSERT INTO `memo_tbl` (`id`, `memo_from`, `memo_to`, `lr_no`, `invoice_no`, `lorry_no`, `date`, `veh_type`, `freight`) VALUES
(1, 'Mumbai', 'Chakan', 'Lr223', 'Inv223', 'MH23 4567', '2017-11-23', 'PICKUP', '69'),
(2, 'Mumbai', 'Chakan', 'Lr223', 'Inv223', 'MH23 4567', '2017-11-22', 'PICKUP', '789'),
(3, 'Mumbai', 'Chakan', 'Lr223', 'Inv223', 'MH23 4567', '2017-11-22', 'LCV', '369');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `user_id` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `password` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `user_type` varchar(100) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_id`, `password`, `user_type`) VALUES
(1, 'Vivek N kanoje', 'V', 'v', 'admin'),
(2, 'Varun Raj', 'Varun', 'varun', 'user'),
(3, 'Varun Raj', 'Varunraj', 'varun', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `lr_tbl`
--
ALTER TABLE `lr_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memo_tbl`
--
ALTER TABLE `memo_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lr_tbl`
--
ALTER TABLE `lr_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `memo_tbl`
--
ALTER TABLE `memo_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
