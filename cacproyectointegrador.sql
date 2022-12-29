-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 10:54 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cacproyectointegrador`
--

-- --------------------------------------------------------

--
-- Table structure for table `localidad`
--

CREATE TABLE IF NOT EXISTS `localidad` (
`idLocalidad` int(11) NOT NULL,
  `Localidad` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `idProvinciaLocalidad` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `localidad`
--

INSERT INTO `localidad` (`idLocalidad`, `Localidad`, `idProvinciaLocalidad`) VALUES
(1, 'Escobar', 1),
(2, 'Calamuchita', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
`idPedido` int(11) NOT NULL,
  `nombreCompleto` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `direccionEntrega` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `localidad` int(11) NOT NULL,
  `provincia` int(11) NOT NULL,
  `formaPago` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `nombreTitular` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `numeroTarjeta` int(16) NOT NULL,
  `vencimiento` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `codigoSeguridad` varchar(3) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE IF NOT EXISTS `provincia` (
`idProvincia` int(11) NOT NULL,
  `provincia` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`idProvincia`, `provincia`) VALUES
(1, 'Buenos Aires'),
(2, 'Córdoba');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`idUsuario` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombreApellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `usuario`, `clave`, `nombreApellido`) VALUES
(1, 'jperez@gmail.com', '1234', 'Juan Pérez'),
(2, 'jdoe@gmail.com', '0000', 'Jane Doe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `localidad`
--
ALTER TABLE `localidad`
 ADD PRIMARY KEY (`idLocalidad`), ADD UNIQUE KEY `locProvincia` (`idLocalidad`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
 ADD PRIMARY KEY (`idPedido`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
 ADD PRIMARY KEY (`idProvincia`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `localidad`
--
ALTER TABLE `localidad`
MODIFY `idLocalidad` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
MODIFY `idProvincia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
