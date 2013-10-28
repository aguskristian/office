-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 28, 2013 at 02:40 AM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gudang_atk`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `gudang_atk`
--

CREATE TABLE IF NOT EXISTS `gudang_atk` (
  `id_gudang` int(4) NOT NULL,
  `no_inventory` varchar(20) NOT NULL,
  `kode_akun` varchar(20) NOT NULL,
  `serial_number` varchar(30) DEFAULT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `spesifikasi` varchar(100) DEFAULT NULL,
  `penempatan_awal` varchar(50) DEFAULT NULL,
  `berita_acara` varchar(20) NOT NULL,
  `remaks` varchar(100) DEFAULT NULL,
  `update_on` date DEFAULT NULL,
  `update_by` varchar(100) DEFAULT NULL,
  `file_pdf` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_gudang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gudang_atk`
--

INSERT INTO `gudang_atk` (`id_gudang`, `no_inventory`, `kode_akun`, `serial_number`, `jenis_barang`, `spesifikasi`, `penempatan_awal`, `berita_acara`, `remaks`, `update_on`, `update_by`, `file_pdf`, `gambar`) VALUES
(3, 'COBA', 'COBA', 'COBA', 'pc', 'COBA', 'COBA', 'COBA', 'COBA', '0000-00-00', 'COBA', '0', 'Koala.jpg'),
(2, 'class', 'N004', '123456789', 'Bold', 'Bold', 'Fasilitas', '0908070605', 'Hardrive', '0000-00-00', 'Agus', '0', 'Koala.jpg'),
(1, 'TES', 'TES', 'TES', 'TES', 'TES', 'TES', 'TES', 'TES', '0000-00-00', 'TES', 'TES', 'TES'),
(100, '', '', '', 'pc', '', '', '', '', '0000-00-00', '', '0', 'uploads/Chrysanthemum.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `meta`
--

INSERT INTO `meta` (`id`, `user_id`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, 2, 'agus', 'kristian', 'gapura', '085792286621'),
(3, 3, 'kadek', 'casper', 'gapura', '081222233'),
(4, 4, 'dede', 'adi', 'gapura', '0987654345');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imagemanager`
--

CREATE TABLE IF NOT EXISTS `tbl_imagemanager` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_imagemanager`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL,
  `ip_address` char(16) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `remember_code`, `created_on`, `last_login`, `active`) VALUES
(1, 1, '127.0.0.1', 'administrator', '59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4', '9462e8eee0', 'admin@admin.com', '', NULL, NULL, 1268889823, 1268889823, 1),
(2, 2, '::1', 'agus_casper', 'f1064495f8b81f03296172875471b58d6f4c0ceb', NULL, 'aguscristian21@gmail.com', '484a8077d748616bbc9008611547f622dc299000', NULL, NULL, 1374723343, 1374723343, 0),
(3, 2, '::1', 'kadek', '5e2107dc10453fce3e8d89e254012f806324fe9f', NULL, 'agus_made@ymail.com', NULL, NULL, '310c05ed3c8f3bdd6dd7d48e91274690a0b8b20d', 1374723912, 1375247957, 1),
(4, 2, '::1', 'dede', 'b5dd7b8d3e22ff3ae9bc7418566cabd8d566c1f1', NULL, 'dede@ymail.com', NULL, NULL, NULL, 1374731879, 1374731894, 1);

-- --------------------------------------------------------

--
-- Table structure for table `var_function`
--

CREATE TABLE IF NOT EXISTS `var_function` (
  `vf_code` varchar(3) NOT NULL,
  `vf_name` varchar(50) NOT NULL,
  `vf_level` varchar(2) NOT NULL,
  PRIMARY KEY (`vf_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table untuk fungsi eq. fungsi manager, staff, dll';

--
-- Dumping data for table `var_function`
--

INSERT INTO `var_function` (`vf_code`, `vf_name`, `vf_level`) VALUES
('ASM', 'ASSISTANT MANAGER', '10'),
('DGM', 'DEPUTY GENERAL MANAGER', '07'),
('DIR', 'DIREKTUR', '03'),
('GMR', 'GENERAL MANAGER', '06'),
('MGR', 'MANAGER', '09'),
('OJT', 'ON THE JOB TRAINING', '16'),
('PKL', 'PRAKTEK KERJA LAPANGAN', '17'),
('PLH', 'PELAKSANA HARIAN', '15'),
('PLT', 'PELAKSANA TUGAS', '14'),
('SMG', 'SENIOR MANAGER', '08'),
('SPI', 'SATUAN PENGAWAS INTERNAL', '04'),
('SPV', 'SUPERVISOR', '11'),
('STA', 'STAFF AHLI', '13'),
('STF', 'STAFF', '12'),
('VPR', 'VICE PRESIDENT', '05');

-- --------------------------------------------------------

--
-- Table structure for table `var_position`
--

CREATE TABLE IF NOT EXISTS `var_position` (
  `vp_code` varchar(6) NOT NULL,
  `vp_name` varchar(50) NOT NULL,
  `vp_vt_code` varchar(3) NOT NULL,
  `vp_vf_code` varchar(3) NOT NULL,
  `vp_level` varchar(2) NOT NULL,
  PRIMARY KEY (`vp_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel untuk jabatan eq. system and communication technician';

--
-- Dumping data for table `var_position`
--


-- --------------------------------------------------------

--
-- Table structure for table `var_station`
--

CREATE TABLE IF NOT EXISTS `var_station` (
  `vs_code` varchar(3) NOT NULL,
  `vs_name` varchar(50) NOT NULL,
  `vs_level` varchar(2) NOT NULL,
  PRIMARY KEY (`vs_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `var_station`
--

INSERT INTO `var_station` (`vs_code`, `vs_name`, `vs_level`) VALUES
('CGK', 'CENGKARENG', '03'),
('DPS', 'DENPASAR', '04'),
('HDQ', 'HEADQUARTERS', '02'),
('NON', 'NON GP', '01');

-- --------------------------------------------------------

--
-- Table structure for table `var_sub_unit`
--

CREATE TABLE IF NOT EXISTS `var_sub_unit` (
  `vsu_code` varchar(50) NOT NULL,
  `vsu_name` varchar(100) NOT NULL,
  `vsu_vu_code` varchar(50) NOT NULL,
  `vsu_level` varchar(2) NOT NULL,
  PRIMARY KEY (`vsu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `var_sub_unit`
--

INSERT INTO `var_sub_unit` (`vsu_code`, `vsu_name`, `vsu_vu_code`, `vsu_level`) VALUES
('CB', 'BUSINESS DEVELOPMENT', 'MC', '03'),
('CG', 'GROUND HANDLING CUSTOMER', 'MC', '02'),
('CN', 'NON', 'MC', '01'),
('FA', 'ACCOUNTING', 'MF', '03'),
('FN', 'NON', 'MF', '01'),
('FT', 'TREASURY & BUDGET', 'MF', '02'),
('IN', 'NON', 'MI', '01'),
('IO', 'OFFICE FACILITY', 'MI', '03'),
('IP', 'PERSONEL & GENERAL AFFAIR', 'MI', '02'),
('NON', 'NON', 'NON', '01'),
('OD', 'DUTY MANAGER', 'MO', '02'),
('OF', 'FLIGHT OPERATION', 'MO', '03'),
('OG', 'GARUDA INDONESIA SERVICE', 'MO', '04'),
('ON', 'NON', 'MO', '01'),
('OO', 'OTHER AIRLINES SERVICE', 'MO', '05'),
('OS', 'SM GAPURA SMART', 'MO', '06'),
('QN', 'NON', 'MQ', '01'),
('QQ', 'QUALITY CONTROL', 'MQ', '02'),
('QS', 'SERVICE & SECURITY', 'MQ', '03'),
('TA', 'AIRCRAFT SERVICE', 'MT', '04'),
('TG', 'GSE MAINTENANCE', 'MT', '03'),
('TM', 'MAINTENANCE SUPPORT', 'MT', '02'),
('TN', 'NON', 'MT', '01'),
('WD', 'DUTY MANAGER', 'MW', '02'),
('WN', 'NON', 'MW', '01');

-- --------------------------------------------------------

--
-- Table structure for table `var_team`
--

CREATE TABLE IF NOT EXISTS `var_team` (
  `vt_code` varchar(50) NOT NULL,
  `vt_name` varchar(100) NOT NULL,
  `vt_vsu_code` varchar(50) NOT NULL,
  `vt_level` varchar(2) NOT NULL,
  PRIMARY KEY (`vt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `var_team`
--

INSERT INTO `var_team` (`vt_code`, `vt_name`, `vt_vsu_code`, `vt_level`) VALUES
('CBG', 'GAPURA LEIS', 'CB', '02'),
('CBN', 'NON', 'CN', '01'),
('CGN', 'NON', 'CN', '01'),
('CGR', 'REMAS', 'CG', '02'),
('FAN', 'NON', 'FA', '01'),
('FTC', 'CASHIER', 'FT', '02'),
('FTN', 'NON', 'FN', '01'),
('ION', 'NON', 'IO', '01'),
('IPG', 'GENERAL AFFAIR', 'IP', '02'),
('IPH', 'HRD', 'IP', '03'),
('IPN', 'NON', 'IP', '01'),
('MCN', 'NON', 'CN', '01'),
('MFN', 'NON', 'FN', '01'),
('MIN', 'NON', 'IN', '01'),
('MON', 'NON', 'ON', '01'),
('MQN', 'NON', 'QN', '01'),
('MTN', 'NON', 'TN', '01'),
('MWN', 'NON', 'WN', '01'),
('NON', 'NON', 'NON', '01'),
('ODN', 'NON', 'OD', '01'),
('OFA', 'ADMINISTRASI', 'OF', '10'),
('OFC', 'CREW DESK', 'OF', '04'),
('OFD', 'DEPCO', 'OF', '03'),
('OFF', 'FLOPS', 'OF', '02'),
('OFK', 'KATERING CONTROL', 'OF', '05'),
('OFL', 'LOAD CONTROL', 'OF', '07'),
('OFM', 'LOAD MASTER', 'OF', '08'),
('OFN', 'NON', 'OF', '01'),
('OFR', 'RAMP', 'OF', '06'),
('OFU', 'ULD CONTROL', 'OF', '09'),
('OGA', 'ACCOUNT SUPERVISOR', 'OG', '02'),
('OGD', 'MPD', 'OG', '04'),
('OGL', 'LOST AND FOUND', 'OG', '06'),
('OGM', 'MPI', 'OG', '03'),
('OGN', 'NON', 'OG', '01'),
('OGT', 'TRANSFER DESK', 'OG', '05'),
('OOA', 'AIR NEW ZEALAND', 'OO', '09'),
('OOC', 'CHINA AIRLINES', 'OO', '02'),
('OOD', 'TRANSFER DESK', 'OO', '11'),
('OOH', 'HONGKONG AIRLINES', 'OO', '07'),
('OOK', 'KLM', 'OO', '05'),
('OOL', 'LOST AND FOUND', 'OO', '12'),
('OOM', 'MALAYSIA AIRLINES', 'OO', '04'),
('OON', 'NON', 'OO', '01'),
('OOQ', 'QATAR AIRWAYS', 'OO', '08'),
('OOR', 'KOREAN AIR', 'OO', '06'),
('OOS', 'SKYWEST', 'OO', '10'),
('OOT', 'THAI AIRWAYS', 'OO', '03'),
('OSN', 'NON', 'OO', '01'),
('OSS', 'SMART HANDLING', 'OO', '02'),
('QQN', 'NON', 'QQ', '01'),
('QSA', 'AVIATION SECURITY', 'QS', '02'),
('QSN', 'NON', 'QS', '01'),
('TAA', 'AIRCRAFT MAINTENANCE', 'TA', '02'),
('TAB', 'BTT OPERATOR', 'TA', '04'),
('TAN', 'NON', 'TA', '01'),
('TAS', 'GSE OPERATOR', 'TA', '03'),
('TGG', 'GSE MAINTENANCE', 'TG', '02'),
('TGL', 'LINE MAINTENANCE', 'TG', '03'),
('TGN', 'NON', 'TG', '01'),
('TMN', 'NON', 'TM', '01'),
('TMP', 'PPC', 'TM', '02'),
('WDA', 'ADMINISTRATION', 'WD', '06'),
('WDB', 'INBOUND', 'WD', '05'),
('WDE', 'EXPORT', 'WD', '02'),
('WDI', 'IMPORT', 'WD', '03'),
('WDN', 'NON', 'WD', '01'),
('WDO', 'OUTBOND', 'WD', '04');

-- --------------------------------------------------------

--
-- Table structure for table `var_unit`
--

CREATE TABLE IF NOT EXISTS `var_unit` (
  `vu_code` varchar(50) NOT NULL,
  `vu_name` varchar(50) DEFAULT NULL,
  `vu_vs_code` varchar(3) NOT NULL,
  `vu_level` varchar(2) NOT NULL,
  PRIMARY KEY (`vu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `var_unit`
--

INSERT INTO `var_unit` (`vu_code`, `vu_name`, `vu_vs_code`, `vu_level`) VALUES
('GM', 'GENERAL MANAGER', 'DPS', '02'),
('MC', 'CUSTOMER SERVICE', 'DPS', '03'),
('MF', 'FINANCE', 'DPS', '04'),
('MI', 'INTERNAL SERVICE', 'DPS', '05'),
('MO', 'OPERATION', 'DPS', '06'),
('MQ', 'SSQC', 'DPS', '07'),
('MT', 'TECHNIC', 'DPS', '08'),
('MW', 'CARGO', 'DPS', '09'),
('NON', 'NON', 'NON', '01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
