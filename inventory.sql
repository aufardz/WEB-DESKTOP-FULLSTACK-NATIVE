-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 04:37 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `contents` text NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'aktif'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sbrg_keluar`
--

CREATE TABLE `sbrg_keluar` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penerima` varchar(35) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sbrg_keluar`
--

INSERT INTO `sbrg_keluar` (`id`, `idx`, `tgl`, `jumlah`, `penerima`, `keterangan`) VALUES
(15, 244, '2020-08-29', 1000, 'Kasmina', 'Laku'),
(16, 246, '2020-10-27', 4, 'Asep', '-');

-- --------------------------------------------------------

--
-- Table structure for table `sbrg_masuk`
--

CREATE TABLE `sbrg_masuk` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sbrg_masuk`
--

INSERT INTO `sbrg_masuk` (`id`, `idx`, `tgl`, `jumlah`, `keterangan`) VALUES
(9, 244, '2020-08-07', 41, 'kk'),
(13, 246, '2020-10-28', 3, '-');

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogin`
--

INSERT INTO `slogin` (`id`, `username`, `password`, `nickname`, `role`) VALUES
(7, 'guest', '084e0343a0486ff05530df6c705c8bb4', 'Stock', 'stock');

-- --------------------------------------------------------

--
-- Table structure for table `sstock_brg`
--

CREATE TABLE `sstock_brg` (
  `idx` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `merk` varchar(40) NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `stock` int(12) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `lokasi` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sstock_brg`
--

INSERT INTO `sstock_brg` (`idx`, `nama`, `jenis`, `merk`, `ukuran`, `stock`, `satuan`, `lokasi`) VALUES
(258, 'Straight Choping Auger', 'ARK-10.3', '-', 'Steel bar, hardened tip, 45 mm width', 1, 'Buah', 'Bandung'),
(257, 'Iwan Type Auger', 'ARK-10.2', '-', 'Welded steel, two radial blades, 4\" dia.', 1, 'Buah', 'Bandung'),
(255, 'HAND BOR', 'ARK-10-T', '-', 'Drilling for soil sampling  preparation', 1, 'Unit', 'Bandung'),
(256, 'Drilling Rod', 'ARK-10.1', '-', 'Solid bar, 1 m length, 1 1/4\" dia.', 10, 'Buah', 'Bandung'),
(259, 'T-Piece', 'ARK-10.4', '-', 'Welded steel', 1, 'Buah', 'Bandung'),
(260, 'Tube Adaptor', 'ARK-10.5', '-', 'Machine steel, with 3 clamping bolts', 1, 'Buah', 'Bandung'),
(263, 'Turning Rod', 'ARK-10.6', '-', 'Machine steel, 1 1/4\" dia, 60 cm length.', 2, 'Buah', 'Bandung'),
(264, 'Sampling Tube', 'ARK-10.7', '-', '68 mm dia, 40 cm length, with 3 bolt holes.', 10, 'Buah', 'Bandung'),
(265, 'Rod Head', 'ARK-10.8', '-', 'Hardened, machined steel, 2 1/2\" dia', 1, 'Buah', 'Bandung'),
(266, 'Parafin', 'ARK-10.9', '-', '', 2, 'Kg', 'Bandung'),
(267, 'Vertical Guide', 'ARK-10.10', '-', 'Machine Steel', 1, 'Buah', 'Bandung'),
(268, 'Allen Key', 'GE-735 A', '-', 'Hardened steel, 1/4\"', 1, 'Buah', 'Bandung'),
(269, 'Pipe Wrench,  24\" Wrench', 'GE-739', '', '-', 2, 'Buah', 'Bandung'),
(270, 'Hammer,  5 kg weight', 'GE-902', '-', '-', 1, 'Buah', 'Bandung'),
(271, 'Steel Wire Brush', 'GE-920', '-', 'Wooden handle', 1, 'Buah', 'Bandung'),
(272, 'STANDARD PENETRATION TEST', 'ARK-20-T', '-', 'ASTM D-1586  /  AASHTO T-206', 1, 'Unit', 'Bandung'),
(273, 'Split Barrel Sampler', 'ARK-20.1', '-', 'Hardened machined steel,   1 3/8\" i.d., 18\" length.', 1, 'Buah', 'Bandung'),
(274, 'Sampling Rod', 'ARK-20.2', '', 'Steel pipe, 1.5 m length. Drive weight Assembly', 20, 'Buah', 'Bandung'),
(275, 'Hammer', 'ARK-20.3', '-', 'Steel, 63.5 kg weight', 1, 'Buah', 'Bandung'),
(276, 'Anvil', 'ARK-20.4', '-', 'Machine steel', 1, 'Buah', 'Bandung'),
(277, 'Guide Rod', 'ARK-20.5', '-', 'Steel, 76.2 cm drop height. Tripod Assembly', 1, 'Buah', 'Bandung'),
(279, 'Tripod Stand,', 'ARK-20.6', '-', 'Steel pipe', 1, 'Buah', 'Bandung'),
(280, 'Pulley', 'ARK-20.7', '-', '20 cm dia.', 1, 'Buah', 'Bandung'),
(281, 'Rope', 'ARK-20.8', '-', '3/4', 1, 'Rol', 'Bandung'),
(282, 'Vertical Guide', 'ARK-20.9', '-', 'Machine steel.', 1, 'Buah', 'Bandung'),
(283, 'Pipe Wrench, 24\" length.', 'GE-739', '-', '-', 2, 'Buah', 'Bandung'),
(284, 'SAMPLE EXTRUDER', 'ARK-25-T', '-', '-', 1, 'Unit', 'Bandung'),
(285, 'DYNAMIC CONE PENETROMETER', 'ARK-40-T', '-', '-', 1, 'Unit', 'Bandung'),
(286, 'SAMPLE EXTRUDER', 'ARK-30-T', '-', '-', 1, 'Unit', 'Bandung'),
(287, 'Handle', 'ARK-40.1', '-', 'Stainless steel', 1, 'Buah', 'Bandung'),
(288, 'Hammer ', 'ARK-40.2', '-', 'Machined steel, Painted, 8 kg weight', 1, 'Buah', 'Bandung'),
(289, 'Guide Rod ', 'ARK-40.3', '-', 'Stainless steel, 16 mm dia drop height 575 mm.', 1, 'Buah', 'Bandung'),
(290, 'Anvil', 'ARK-40.4', '-', 'Machined steel, welded painted.', 1, 'Buah', 'Bandung'),
(291, 'Penetration Rod ', 'ARK-40.5', '-', 'Stainless steel, 16 mm dia, 107 length.', 1, 'Buah', 'Bandung'),
(292, 'Cone ', 'ARK-40.6', '-', 'Hardened tool steel cone tip, 60 deg. angle, 20 mm dia., stainless steel adaptor.', 3, 'Buah', 'Bandung'),
(293, 'Penetration Scale ', 'ARK-40.7', '-', 'Stainless steel, 16 mm dia, 100 cm scale.', 1, 'Buah', 'Bandung'),
(294, 'Carrying Bag', 'ARK-40.8', '-', 'Water proof cloth.', 1, 'Buah', 'Bandung'),
(295, 'Open End Wrench', 'GE-730 A', '-', 'Vanadium steel 12/13, 14/15.', 2, 'Buah', 'Bandung'),
(296, 'TUBE DENSITY SAMPLER', 'ARK-50-T', '-', 'ASTM  D-2573', 1, 'Unit', 'Bandung'),
(297, 'Hammer ', 'ARK-50.1', '-', 'Machine steel, plated, 10 lbs sliding weight : 20\" falling height.', 1, 'Unit', 'Bandung'),
(298, 'Sampling Tube ', 'ARK-50.2', '-', 'Machine steel, plated, 2\" i.d. 6.7\" length.', 12, 'Buah', 'Bandung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sstock_brg`
--
ALTER TABLE `sstock_brg`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sstock_brg`
--
ALTER TABLE `sstock_brg`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
