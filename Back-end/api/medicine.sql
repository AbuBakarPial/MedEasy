-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 12:39 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about_us`
--

CREATE TABLE `tbl_about_us` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about_us`
--

INSERT INTO `tbl_about_us` (`id`, `image`, `text`) VALUES
(1, '6c38255b7fc36d9c3594da6835750561.jpg', '<p><strong>Md Towheed</strong></p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru</p>'),
(3, 'bcb2664e60674f8d0e3096e40f1520cc.jpg', '<p><strong>Md Towheed</strong></p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru</p>'),
(4, '1cd5ac40664604f29267f0bb5c61a4cb.jpg', '<p><strong>Md Towheed</strong></p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(255) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `auth` varchar(255) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `role` varchar(100) DEFAULT '2' COMMENT '1=Super Admin|2=admin',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=Active|0=Inactive|2=Banned	',
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `fname`, `lname`, `username`, `email`, `pass`, `auth`, `phone`, `role`, `status`, `avatar`, `email_verified_at`, `remember_token`, `created_at`) VALUES
(1, 'Pial', '', 'pial', 'programmertowheed@gmail.com', '693cfed9dd8adf7c63afbf53cf3a8043', '1e47ae375561994a58bf9bd7f41f8970', '+8801725497199', '1', 1, 'admin_image_dc3f96a0a23e9122a1c64f4528496165.jpg', NULL, NULL, '2020-10-07 14:51:37'),
(9, NULL, NULL, 'programmertowheed', 'mdtowheedulislam400@gmail.com', 'a46f273b7d483c9c972f5cf825119160', '51b5859b7d8c25d0f72feaf5aa2320fa', NULL, '2', 1, NULL, NULL, NULL, '2021-03-28 06:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_drug`
--

CREATE TABLE `tbl_drug` (
  `id` int(11) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `drug_use` longtext NOT NULL,
  `indication` longtext NOT NULL,
  `contraindication` longtext NOT NULL,
  `dosage` longtext NOT NULL,
  `drug_usage` longtext NOT NULL,
  `precaution` longtext NOT NULL,
  `side_effect` longtext NOT NULL,
  `warning` longtext NOT NULL,
  `storage_condition` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_drug`
--

INSERT INTO `tbl_drug` (`id`, `drug_name`, `drug_use`, `indication`, `contraindication`, `dosage`, `drug_usage`, `precaution`, `side_effect`, `warning`, `storage_condition`) VALUES
(1, 'napa', '<p>Napa is a non-opiate, Napa and antipyretic, prescribed for headache, pain (muscle ache, backache) and fever either alone or combined with other medications.</p>', '<p>Napa is a non-opiate, Napa and antipyretic, prescribed for headache, pain (muscle ache, backache) and fever either alone or combined with other medications. It changes the way the body senses pain and cools the body.</p>', '<p>Hypersensitivity.</p>', '<p>Adults: 0.5-1gm, 3-6 times daily max 4gm. Children: 15mg/kg/dose or 60mg/kg/24hr divided every 6 hrs. Maximum 5 doses SOS.</p>', '<p>It comes as a tablet and liquid to take by mouth, with or without food.</p>', '<p>Caution should be exercised in patients with history of asthma, bleeding problems, growths in the nose, heart, kidney or liver disease, liver inflammation, high blood pressure, chickenpox, anxiety, trouble in sleeping, ulcers, stomach problems, stroke, Kawasaki syndrome, any allergy, who are taking other medications, during pregnancy and breastfeeding. Avoid alcohol consumption. It should not be used in children with infections such as flu, chickenpox or viral infections. Avoid large amount of caffeinated beverages while taking Napa. It may reduce platelet counts; avoid injury or bruising.</p>', '<p>Nausea, stomach upset, skin rash, acute toxicity may result in liver failure.</p>', '<p>Avoid excess dosage.</p>', '<p>Store it at room temperature. <strong>Active ingredients:</strong> <a href=\"/?s=paracetamol\">Paracetamol</a></p>'),
(2, 'Sergel', 'Sergel', 'Sergel', 'Sergel', 'Sergel', 'Sergel', 'Sergel', 'Sergel', 'Sergel', 'Sergel'),
(19, 'napa extra', '<p>napa extra</p>', '<p>napa extra</p>', '<p>napa extra</p>', '<p>napa extra</p>', '<p>napa extra</p>', '<p>napa extra</p>', '<p>napa extra</p>', '<p>napa extra</p>', '<p>napa extra</p>'),
(20, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_info`
--

CREATE TABLE `tbl_site_info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descriptison` longtext DEFAULT NULL,
  `keywords` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_text` varchar(255) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `top_social` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Enable|2=Disable',
  `footer_social` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Enable|2=Disable',
  `theme_color` varchar(255) DEFAULT '#e96b56',
  `theme_hover_color` varchar(255) DEFAULT '#e6573f',
  `site_address` varchar(255) DEFAULT NULL,
  `map_address` mediumtext DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_site_info`
--

INSERT INTO `tbl_site_info` (`id`, `title`, `descriptison`, `keywords`, `author`, `favicon`, `logo`, `logo_text`, `email`, `phone`, `facebook`, `twitter`, `instagram`, `linkedin`, `top_social`, `footer_social`, `theme_color`, `theme_hover_color`, `site_address`, `map_address`, `footer_text`) VALUES
(1, 'Medicine', 'Medicine in Bangladesh', 'Medicine', 'Pial', 'd02a42d9cb3dec9320e5f550278911c7.png', NULL, 'Medicine', 'contact@medicine.com', '+8801700000000', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/', 1, 1, '#19d2cf', '#18a8d8', '<p>Shukrabad Dhanmondi, 1209<br />\r\nDhaka</p>', '', '<p>&copy; Copyright <a href=\"https://medicine.com\" target=\"_blank\">Medicine</a>. All Rights Reserved</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=Active|0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `picture`, `status`) VALUES
(7, 'df412023763cc1add5fadfe67a000ef5.jpg', 1),
(8, '847e5fa2584fe0e4deb8c3ed294c3e78.jpg', 1),
(9, 'bc498272a28aad29061eb79bf1c9d72f.jpg', 1),
(10, 'f4cf9dbe1b4b69e508278fc57ae92758.jpg', 1),
(11, 'cac44301ed0dee571f8ba82e6d572293.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about_us`
--
ALTER TABLE `tbl_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_drug`
--
ALTER TABLE `tbl_drug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_info`
--
ALTER TABLE `tbl_site_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about_us`
--
ALTER TABLE `tbl_about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_drug`
--
ALTER TABLE `tbl_drug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_site_info`
--
ALTER TABLE `tbl_site_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
