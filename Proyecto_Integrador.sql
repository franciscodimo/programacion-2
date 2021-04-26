-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2021 at 05:58 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Proyecto Integrador`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `primary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `primary`) VALUES
(1, 'Mens Watches', NULL),
(2, 'Luxury Watches', 1),
(3, 'Rolex', 2),
(4, 'Tag Heuer', 2),
(5, 'Omega', 2),
(6, 'Daytona', 3),
(7, 'Date-Just', 3),
(8, 'Day-Date', 3),
(9, 'Submariner', 3),
(10, 'Carrera', 4),
(11, 'Aquar\r\nacer', 4),
(12, 'Speedmaster', 5),
(13, 'Seamaster', 5);

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `texto_comentario` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuario_id`, `producto_id`, `texto_comentario`, `fecha_creacion`) VALUES
(1, 1, 15, 'Love this watch, great for everyday use, sports and even fancy dinners! Can\'t go wrong with the Tag Heuer Aquaracer! Highly recommended.', '2021-03-18'),
(2, 1, 19, 'Words can\'t describe what this watch is in person, just unbelievable!', '2021-04-08'),
(3, 1, 16, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-02-18'),
(4, 1, 21, 'Love the watch and had a super good experience buying it at Relox.', '2021-04-07'),
(5, 1, 3, 'I mean, it\'s definitely a Rolex, cant go wrong with them swiss.', '2021-04-14'),
(6, 1, 21, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-04-01'),
(7, 1, 20, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2020-04-16'),
(8, 1, 20, 'Had my eye on this one for a long time. Great watch, super versatile and wearable.', '2020-10-15'),
(9, 2, 3, 'Love the watch and had a super good experience buying it at Relox.', '2021-01-28'),
(10, 2, 20, 'Words can\'t describe what this watch is in person, just unbelievable!', '2021-04-01'),
(11, 2, 10, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-03-31'),
(12, 2, 16, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-03-22'),
(13, 2, 17, 'Love the watch and had a super good experience buying it at Relox.', '2020-07-22'),
(14, 2, 17, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2020-09-16'),
(15, 2, 17, 'Words can\'t describe what this watch is in person, just unbelievable!', '2020-10-14'),
(16, 2, 10, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-01-06'),
(17, 5, 18, 'Love the watch and had a super good experience buying it at Relox.', '2020-10-26'),
(18, 5, 6, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-04-14'),
(19, 5, 21, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2020-08-19'),
(20, 5, 19, 'Words can\'t describe what this watch is in person, just unbelievable!', '2021-03-09'),
(21, 5, 21, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2020-07-30'),
(22, 5, 21, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-03-23'),
(23, 5, 6, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2020-09-23'),
(24, 5, 21, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-04-06'),
(25, 6, 19, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-04-21'),
(26, 6, 16, 'Absolutely astonished by the watch itself. It\'s the perfect all-around watch for everyday use. Feel it\'s gonna age beautifully with wear and tear.', '2021-02-11'),
(27, 6, 6, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-02-25'),
(28, 6, 21, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2020-10-06'),
(29, 6, 3, 'Absolutely astonished by the watch itself. It\'s the perfect all-around watch for everyday use. Feel it\'s gonna age beautifully with wear and tear.', '2020-05-03'),
(30, 6, 16, 'Love the watch and had a super good experience buying it at Relox.', '2021-04-02'),
(31, 6, 17, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-04-16'),
(32, 6, 20, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-04-07'),
(33, 7, 6, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-02-10'),
(34, 7, 21, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-04-07'),
(35, 7, 15, 'Absolutely astonished by the watch itself. It\'s the perfect all-around watch for everyday use. Feel it\'s gonna age beautifully with wear and tear.', '2020-12-29'),
(36, 7, 16, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-01-01'),
(37, 7, 10, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-04-24'),
(38, 7, 3, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2020-11-13'),
(39, 7, 17, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-01-06'),
(40, 7, 3, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `url_imagen` varchar(255) NOT NULL,
  `precio` float DEFAULT NULL,
  `fecha_de_publicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `usuario_id`, `nombre`, `url_imagen`, `precio`, `fecha_de_publicacion`) VALUES
(3, 4, 8, 'Tag Heuer Carrera Automatic', '', 120, '2020-12-06'),
(6, 5, 8, 'Omega Speedmaster Special Edition', '', 35, '2021-04-08'),
(10, 4, 8, 'Tag Heuer Aquaracer', '', 200, '2021-04-19'),
(15, 5, 9, 'Omega Seamaster 007', '', 300, '2021-04-14'),
(16, 5, 9, 'Omega Speedmaster Moonwatch', '', 350, '2021-04-09'),
(17, 3, 9, 'Rolex Daytona Chronograph', '', 560, '2021-03-17'),
(18, 3, 9, 'Rolex Submariner', '', 470, '2021-02-03'),
(19, 3, 10, 'Rolex Date-Just 39', '', 460, '2021-04-24'),
(20, 3, 11, 'Rolex Day-Date President', '', 670, '2021-04-06'),
(21, 3, 11, 'Rolex Date-just 41', '', 560, '2020-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `fecha_de_nacimiento`, `email`, `telefono`) VALUES
(1, 'Tomas ', 'Henschien', '2001-07-30', 'thenschien@udesa.edu.ar', '1122345359'),
(2, 'Francisco', 'Dimo', '2001-07-23', 'fdimo@udesa.edu.ar', '1132758860'),
(5, 'Estanislao', 'Ron', '2001-08-30', 'eron@udesa.edu.ar', '1178604456'),
(6, 'Ignacio', 'Romani', '1989-11-14', 'iromani@digitalhouse.com', '1147837712'),
(7, 'Matias', 'Heber', '1997-06-23', 'mheber@digitalhouse.con', '1143836128'),
(8, 'Joaquin', 'Gonzalez', '1983-07-28', 'joaqgonzalez@gmail.com', '1122389200'),
(9, 'Julian\r\n', 'Velazquez', '2004-06-23', 'julian.velaquez@hotmail.com.ar', '1155076328'),
(10, 'Marcos', 'Fernandez', '1991-06-01', 'marquitosfdez@yahoo.com', '1178400043'),
(11, 'Fernando', 'Pinto', '1971-09-06', 'fpinto@gmail.com', '1139756392');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
