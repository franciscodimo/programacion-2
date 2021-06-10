-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 09:54 PM
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
-- Database: `integrador`
--

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
  `telefono` varchar(255) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `imagen` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `fecha_de_nacimiento`, `email`, `telefono`, `password`, `created_at`, `imagen`) VALUES
(1, 'Tomas ', 'Henschien', '2001-07-30', 'thenschien@udesa.edu.ar', '1122345359', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', ''),
(2, 'Francisco', 'Dimo', '2001-07-23', 'fdimo@udesa.edu.ar', '1132758860', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', ''),
(5, 'Estanislao', 'Ron', '2001-08-30', 'eron@udesa.edu.ar', '1178604456', '*7C104EB37FAED87A30624FA952E90F48D5EC2911', '2021-06-01 22:31:01', ''),
(6, 'Ignacio', 'Romani', '1989-11-14', 'iromani@digitalhouse.com', '1147837712', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', ''),
(7, 'Matias', 'Heber', '1997-06-23', 'mheber@digitalhouse.con', '1143836128', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', ''),
(8, 'Joaquin', 'Gonzalez', '1983-07-28', 'joaqgonzalez@gmail.com', '1122389200', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', ''),
(9, 'Julian\r\n', 'Velazquez', '2004-06-23', 'julian.velaquez@hotmail.com.ar', '1155076328', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', ''),
(10, 'Marcos', 'Fernandez', '1991-06-01', 'marquitosfdez@yahoo.com', '1178400043', '*63D510371EA2311E5904025273745FA7E5FFD306', '2021-06-01 22:31:01', ''),
(11, 'Fernando', 'Pinto', '1971-09-06', 'fpinto@gmail.com', '1139756392', '*33B0F466B39DA9041CDB939EDD4DEEE7DF6306CF', '2021-06-01 22:31:01', ''),
(14, 'Estanislao Ron', '', '0000-00-00', 'eron@colegiosanignacio.edu.ar', '', NULL, '2021-06-01 22:31:01', ''),
(18, 'Estanis', 'Ron', '0000-00-00', 'dimofrancisco@gmail.com', '43171579', '$2a$10$GW5iraHIvb4qSYyWlYCleukXf/sXUkPsuydoRHDL8jMO71BDaM6JW', '2021-06-01 22:31:01', ''),
(19, 'Estanislao', 'Ron', '0000-00-00', 'estanis200103@gmail.com', '3584203235', '$2a$10$2BVXwmWUSSiuJ5/qBear2uvXUvUbeCUu7Xtvp2xhwdvESYce1aMO2', '2021-06-01 22:31:01', ''),
(20, 'Estanislao', 'Ron', '0000-00-00', 'mron@bio4.com.ar', '3584203235', '$2a$10$kSDJZqU21RgO0mSLkPsN/e29VK1ZUPHbP8cWExeQnXRbaBLM0rWJ.', '2021-06-01 22:31:01', ''),
(21, 'Estanislao', 'Ron', '0000-00-00', 'estanis@gmail.com', '43171579', '$2a$10$YwgSvTxAwBkdQWWRqgKeXeiab2QDL1iavVtKTmFaasM7/VFeX6l0e', '2021-06-01 22:31:01', ''),
(22, 'estanislao', 'ron', '0000-00-00', 'e@gmail.com', '43171579', '$2a$10$83QwvfTj0yxKFU2UghzDaOU/2T9LqvRuggwX5tBZiHaEta58yzYNq', '2021-06-01 22:33:05', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
