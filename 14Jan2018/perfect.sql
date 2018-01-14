-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 01:44 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
('vq7hep70ba2544smdk9k0jhk04sqv7t4', '::1', 1515908289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353930383035343b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('vsfm07hmbcb4tvmuocanc2n0h7kf1um6', '::1', 1515908549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353930383534393b),
('jo1t0t2pu3dl16ltjr9lrs151ps1gujn', '::1', 1515909228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353930383933313b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('j8p6uec403v6u53rcsrfpu9bc5pk925e', '::1', 1515909479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353930393239393b),
('t5a6dv0e23a06gl0spr6cg9890bvp6bb', '::1', 1515909853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353930393634343b),
('7ldi2b7ji4apkv1mjfluvd1kd25e0c4g', '::1', 1515909953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353930393934393b),
('vpds47v5kisnd2u3man3hoe4n6721g2a', '::1', 1515910555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931303338353b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('pq1uhbac06e0p7tld34o0oqlochgjli2', '::1', 1515911400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931313130323b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('bsablk7496r6ik684nt3nh85r1t9me6u', '::1', 1515911498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931313432383b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('hgs0qe7eivs78s4nbasat3dkksou692d', '::1', 1515912555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931323235393b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('6n0hfv2e7mrb77244s9bc6kht52kvink', '::1', 1515912761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931323537333b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('l1o4oq0jeu1vjtchopo1kre12u4rh0m2', '::1', 1515913255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931323936333b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('l961kf4601m4i9le4geiorndte32c9is', '::1', 1515913327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931333332373b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('vf2kujval6hs6veci8hdvcmudjmlpbd9', '::1', 1515914293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931343132303b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('5i0aa81924p1mgnnh49a6a4tefbo8100', '::1', 1515914853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931343535353b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('ljqsd7r15i9gop9bpqanqhe5c73v7f4o', '::1', 1515915188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931343838383b),
('m9aii6t88hm574c6j3lovno7kfoiarib', '::1', 1515915255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931353139373b),
('osg5qr04pagkumt87b4trfdh01mq6mlt', '::1', 1515915872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931353836323b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('qite4i1g9q5566ih6b6ug8cj6an727f2', '::1', 1515916739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931363733303b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('nqv43487esvq6r3m9ln3jp0gv28j04mj', '::1', 1515917392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931373333393b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('dvtl5lps0d2le5vf6gildr31elmuqini', '::1', 1515918396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931383238343b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('sn9n3osldvcr97ji8dc2d962ft090r5b', '::1', 1515918909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931383633393b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('sf82ag8opc967v3ch7g1ofs59sjk5ili', '::1', 1515919229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931393137373b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('k438070111glv4pjrqos54f7tkdogkqk', '::1', 1515919763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353931393736333b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('fqu0mejfq8775e3afrhlu27piv5miti9', '::1', 1515920840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932303534353b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('8bhkoe78qn7kajgjjr3mduuvv753d5nh', '::1', 1515921103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932303936313b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('ph80lb3uhvpc9ujdagdnu0d3mpqacaou', '::1', 1515921577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932313536313b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('2m2ps3o4p0v7a5nebejocpvq0bgn9un0', '::1', 1515922278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932313939313b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('hv5r360uvvh5b4iafo40qdvuvgngucd4', '::1', 1515922560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932323432323b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('mb93s09i3v4iglu692m80sd5483jpduf', '::1', 1515923219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932333034363b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('ablvlk0gtcetrjqk3t6beniu1vp1qjvt', '::1', 1515923925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932333634343b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('7bgh7koif22t1qnkvmncb862n7qkh0ku', '::1', 1515924406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932343130363b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('fn1sfbbo9uo6nlanfgoihgavmie4o3je', '::1', 1515924407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932343430373b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('cn6r9tj5s0jj3notl8jlc4kgodb9hm5l', '::1', 1515925465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932353331383b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('jkii4v3uqrtgn363e04jo72br28q2mjl', '::1', 1515926159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932353839383b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('vif741d4ilbsags7j9sub79ldqjig6rm', '::1', 1515926443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932363333323b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('h85um2slue6c157ki5a9lssq0vmk2rhu', '::1', 1515926901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932363636303b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('0q7d4kp0afj6m0pqluv2178ghf7l9de4', '::1', 1515927351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932373037373b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('45efh6nhkj29fp0iet8hv7v651bsaggc', '::1', 1515927535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353932373430383b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('l8tonln6atf9soukp9rcnhm93s0pfupv', '::1', 1515932974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353933323936353b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('tateohj8vir0qjc6iqfq515bkfs37qgj', '192.168.0.104', 1515933100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353933333130303b),
('13g37ch0tslrnuufhu7rlnnsl70knk4d', '192.168.0.104', 1515933309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353933333330383b),
('c61jgi7qn6bngjti93o98olfiimfou6n', '::1', 1515933451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353933333331383b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d),
('vegjfon3udtsm3a87evqdq8r491gva0r', '::1', 1515933710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353933333638333b6c6f676765645f696e7c613a323a7b733a343a226e616d65223b733a31343a22566976656b204e206b616e6f6a65223b733a393a22757365725f74797065223b733a353a2261646d696e223b7d);

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
  `consignee_Addr_l1` varchar(200) COLLATE latin1_general_cs NOT NULL,
  `consignee_Addr_l2` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `consignee_Addr_l3` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `consignee_state` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `consignee_state_cd` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `consignee_gstn` varchar(255) COLLATE latin1_general_cs NOT NULL,
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
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `lr_tbl`
--

INSERT INTO `lr_tbl` (`id`, `servicetaxno`, `lrno`, `invoice_div`, `Lr_Date`, `from_l`, `to_l`, `consignee_name`, `consigner_name`, `consigner_Addr`, `consignee_Addr_l1`, `consignee_Addr_l2`, `consignee_Addr_l3`, `consignee_state`, `consignee_state_cd`, `consignee_gstn`, `invoice_no`, `vehicle_no`, `material_type`, `num_packages`, `actual_weight`, `gst_tax`, `delivery_date`, `POD_receiptno`, `type_transportation`, `vehicle_type`, `frieght_rate`, `detaintion`, `loading_charge`, `unloading_charge`, `extracollectioncharge`, `statsticalcharge`, `mail_box`, `created`) VALUES
(1, 'MHA0068501', 'LR001', 'AD', '2017-12-01', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', '', '200', '110', '12', '', '', '', '', '', '', '', '', '', '', '', '2017-11-15'),
(2, 'MHA0068501', 'b', '', '2018-01-06', 'h', 'v', 'v', '', '', '', '', '', '', '', '', '', '', 'material', '', '', '', '2018-01-05', 'pOD90', 'By road', 'PICKUP', '45', '7', '142', '45', '89', '78', 'hi! man \'\r\nwhats up?', '2017-11-15'),
(3, 'MHA0068501', 'b', '', '2017-03-13', 'h', 'v', 'v', '', '', '', '', '', '', '', '', 'n', 'vivek update', '1', '', '', '', '2017-03-17', '2', '3', '4', '5', '6', '7', '8', '9', '10', '', '2017-11-15'),
(4, 'MHA0068501', 'Gj', '', '2017-03-22', 'V', 'B', 'G', 'K', 'G', 'F', '', '', '', '', '', 'G', 'T', 'G', 'Gg', 'F', 'G', '', '', '', '', '', '', '', '', '', '', '', '2017-11-15'),
(5, 'MHA0068501', 'LR342', '', '2017-02-13', 'Chakan', 'Mumbai', 'M/s. Mahindra Logistics Limited', 'Mahindra logistics', 'Chakan', 'Auto Sector Division', 'Zaheerabad - 50222', 'Tel. No. 68687970980', 'Telangana', '36', '36AAFCM2530H1ZP', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'LCV', '20', '40', '200', '250', '45', '55', 'Dear, M&M\r\n\r\nThank You!', '2017-11-15'),
(6, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15'),
(7, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15'),
(8, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15'),
(9, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15'),
(10, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'LCV', '20', '40', '200', '250', '45', '55', '', '2018-01-06'),
(11, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15'),
(12, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2018-01-06'),
(13, 'MHA0068501', 'LR001', '', '2017-02-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15'),
(14, 'MHA0068501', 'LR001', '', '2017-03-13', 'Chakan', 'Mumbai', 'Mahindra & Mahindra', 'Mahindra logistics', 'Chakan', 'Mumbai', '', '', '', '', '', 'INV001', 'MH02 M0023', 'Primary', '200', '110', '12', '2017-03-22', 'POD123', 'By Road', 'Transport', '20', '40', '200', '250', '45', '55', '', '2017-11-15'),
(15, 'MHA0068501', 'Lu35', 'AD', '2017-11-22', 'Mumbai', 'Chakan', 'Perfect transport', 'Mm', 'Mumbai', 'Chakan', '', '', '', '', '', 'Inv13', 'MH12 1244', 'Glass', '5', '56', '18', '', '', '', '', '', '', '', '', '', '', '', '2018-01-06'),
(16, 'MHA0068501', 'Lr2390', 'AD', '13-01-2018', 'Chakan', 'Mumbai', 'Machines Automotive', 'Mll', 'Chakan', 'Auto sector division', 'Zaheerabad -502220', 'Tel no 08451', 'Telangana', '36', '36bbcpk', 'INV1290', 'MH12 H1245', 'Primary t', '25', '200', '12', '2018-01-14', 'recptno89', 'abc', 'LCV', '45', '10', '123', '12', '4', '5', 'hello', '2018-01-14');

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
  `freight` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `advance` varchar(100) COLLATE latin1_general_cs DEFAULT '0',
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `memo_tbl`
--

INSERT INTO `memo_tbl` (`id`, `memo_from`, `memo_to`, `lr_no`, `invoice_no`, `lorry_no`, `date`, `veh_type`, `freight`, `advance`, `created`) VALUES
(1, 'Mumbai', 'Chakan', 'LR124', 'Inv223', 'MH23 4567', '2017-11-23', 'PICKUP', '69', '', '2018-01-06'),
(2, 'Mumbai', 'Chakan', 'LR342', 'Inv223', 'MH23 4567', '2017-11-22', 'PICKUP', '789', '452', '2017-12-27'),
(3, 'Mumbai', 'Chakan', 'Lr223', 'Inv223', 'MH23 4567', '2017-11-22', 'LCV', '369', '', '2018-01-06');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `memo_tbl`
--
ALTER TABLE `memo_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
