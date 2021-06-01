-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 12:36 AM
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
(3, 4, 8, 'Tag Heuer Carrera Automatic', 'https://media.revistagq.com/photos/5f0c447664f52a842c7f9bcb/master/w_1000,c_limit/relojes-rolex-gmt-master.jpg', 120, '2020-12-06'),
(6, 5, 8, 'Omega Speedmaster Special Edition', 'https://media.revistagq.com/photos/5f0c44768c6c2847199b38d3/master/w_1000,c_limit/relojes-rolex-datejust.jpg', 35, '2021-04-08'),
(10, 4, 8, 'Tag Heuer Aquaracer', 'https://content.rolex.com/dam/2021/upright-bba-with-shadow/m126711chnr-0002.png?impolicy=v6-upright&imwidth=270', 200, '2021-04-19'),
(15, 5, 9, 'Omega Seamaster 007', 'https://castellsonline.com/wp-content/uploads/2020/09/75-a-80520.jpg', 300, '2021-04-14'),
(16, 5, 9, 'Omega Speedmaster Moonwatch', 'https://www.kewaybags.com/bolsos-segunda-mano/fotos/rolex-lady-datejust-26mm-1568818734.jpg', 350, '2021-04-09'),
(17, 3, 9, 'Rolex Daytona Chronograph', 'https://cdn.shopify.com/s/files/1/1593/9031/collections/Rolex_1024x.jpg?v=1562760780', 560, '2021-03-17'),
(18, 3, 9, 'Rolex Submariner', 'https://cdn.shopify.com/s/files/1/0250/7004/3229/products/w7_ladies_ss_black_BGT_B_530x@2x.jpg?v=1580252691', 470, '2021-02-03'),
(19, 3, 10, 'Rolex Date-Just 39', 'https://www.collectorsquare.com/images/are/t1/1922t1/1922t10069-rolex-submariner-date-reference-rolex-16610.jpg', 460, '2021-04-24'),
(20, 3, 11, 'Rolex Day-Date President', 'https://media.revistagq.com/photos/5efb06554786c513db97a8f2/master/w_1280,c_limit/relojes-rolex-1.jpg', 670, '2021-04-06'),
(21, 3, 11, 'Rolex Date-just 41', 'https://media.revistagq.com/photos/5f0c44768c6c2847199b38d5/master/w_1000,c_limit/relojes-rolex-sea-dweller.jpg', 560, '2020-06-23'),
(22, 3, 14, 'Venom', 'https://i.pinimg.com/originals/16/ee/10/16ee106e4281b0899d6c9e1537c37ba8.jpg', 3000, '2021-05-05'),
(23, 6, 5, 'Onix', 'https://cdn2.chrono24.com/images/uhren/18231624-9s619w7hg67tlbns02nsx97g-ExtraLarge.jpg', 4000, '2011-05-06'),
(24, NULL, NULL, '', '', NULL, '0000-00-00'),
(25, NULL, NULL, '', '', NULL, '0000-00-00'),
(26, NULL, NULL, '', '', NULL, '0000-00-00'),
(27, NULL, NULL, '', '', NULL, '0000-00-00'),
(28, NULL, NULL, '', '', NULL, '0000-00-00'),
(29, NULL, NULL, '', '', NULL, '0000-00-00'),
(30, NULL, NULL, '', '', NULL, '0000-00-00'),
(31, NULL, NULL, '', '', NULL, '0000-00-00'),
(32, NULL, NULL, '', '', NULL, '0000-00-00'),
(33, NULL, NULL, '', '', NULL, '0000-00-00'),
(34, NULL, NULL, '', '', NULL, '0000-00-00'),
(35, NULL, NULL, '', '', NULL, '0000-00-00'),
(36, NULL, NULL, '', '', NULL, '0000-00-00'),
(37, NULL, NULL, '', '', NULL, '0000-00-00'),
(38, NULL, NULL, '', '', NULL, '0000-00-00'),
(39, NULL, NULL, '', '', NULL, '0000-00-00'),
(40, NULL, NULL, '', '', NULL, '0000-00-00'),
(41, NULL, NULL, '', '', NULL, '0000-00-00'),
(42, NULL, NULL, '', '', NULL, '0000-00-00'),
(43, NULL, NULL, '', '', NULL, '0000-00-00'),
(44, NULL, NULL, '', '', NULL, '0000-00-00'),
(45, NULL, NULL, '', '', NULL, '0000-00-00'),
(46, NULL, NULL, '', '', NULL, '0000-00-00'),
(47, NULL, NULL, '', '', NULL, '0000-00-00'),
(48, NULL, NULL, '', '', NULL, '0000-00-00'),
(49, NULL, NULL, '', '', NULL, '0000-00-00'),
(50, NULL, NULL, '', '', NULL, '0000-00-00'),
(51, NULL, NULL, '', '', NULL, '0000-00-00'),
(52, NULL, NULL, '', '', NULL, '0000-00-00'),
(53, NULL, NULL, '', '', NULL, '0000-00-00'),
(54, NULL, NULL, '', '', NULL, '0000-00-00'),
(55, NULL, NULL, '', '', NULL, '0000-00-00'),
(56, NULL, NULL, '', '', NULL, '0000-00-00'),
(57, NULL, NULL, '', '', NULL, '0000-00-00'),
(58, NULL, NULL, '', '', NULL, '0000-00-00'),
(59, NULL, NULL, '', '', NULL, '0000-00-00'),
(60, NULL, NULL, '', '', NULL, '0000-00-00'),
(61, NULL, NULL, '', '', NULL, '0000-00-00'),
(62, NULL, NULL, '', '', NULL, '0000-00-00'),
(63, NULL, NULL, '', '', NULL, '0000-00-00'),
(64, NULL, NULL, '', '', NULL, '0000-00-00'),
(65, NULL, NULL, '', '', NULL, '0000-00-00'),
(66, NULL, NULL, '', '', NULL, '0000-00-00'),
(67, NULL, NULL, '', '', NULL, '0000-00-00'),
(68, NULL, NULL, '', '', NULL, '0000-00-00'),
(69, NULL, NULL, '', '', NULL, '0000-00-00'),
(70, NULL, NULL, '', '', NULL, '0000-00-00'),
(71, NULL, NULL, '', '', NULL, '0000-00-00'),
(72, NULL, NULL, '', '', NULL, '0000-00-00'),
(73, NULL, NULL, '', '', NULL, '0000-00-00'),
(74, NULL, NULL, '', '', NULL, '0000-00-00'),
(75, NULL, NULL, '', '', NULL, '0000-00-00'),
(76, NULL, NULL, '', '', NULL, '0000-00-00'),
(77, NULL, NULL, '', '', NULL, '0000-00-00'),
(78, NULL, NULL, '', '', NULL, '0000-00-00'),
(79, NULL, NULL, '', '', NULL, '0000-00-00'),
(80, NULL, NULL, '', '', NULL, '0000-00-00'),
(81, NULL, NULL, '', '', NULL, '0000-00-00'),
(82, NULL, NULL, '', '', NULL, '0000-00-00'),
(83, NULL, NULL, '', '', NULL, '0000-00-00'),
(84, NULL, NULL, '', '', NULL, '0000-00-00'),
(85, NULL, NULL, '', '', NULL, '0000-00-00'),
(86, NULL, NULL, '', '', NULL, '0000-00-00'),
(87, NULL, NULL, '', '', NULL, '0000-00-00'),
(88, NULL, NULL, '', '', NULL, '0000-00-00'),
(89, NULL, NULL, '', '', NULL, '0000-00-00'),
(90, NULL, NULL, '', '', NULL, '0000-00-00'),
(91, NULL, NULL, '', '', NULL, '0000-00-00'),
(92, NULL, NULL, '', '', NULL, '0000-00-00'),
(93, NULL, NULL, '', '', NULL, '0000-00-00'),
(94, NULL, NULL, '', '', NULL, '0000-00-00'),
(95, NULL, NULL, '', '', NULL, '0000-00-00'),
(96, NULL, NULL, '', '', NULL, '0000-00-00'),
(97, NULL, NULL, '', '', NULL, '0000-00-00'),
(98, NULL, NULL, '', '', NULL, '0000-00-00'),
(99, NULL, NULL, '', '', NULL, '0000-00-00'),
(100, NULL, NULL, '', '', NULL, '0000-00-00'),
(101, NULL, NULL, '', '', NULL, '0000-00-00'),
(102, NULL, NULL, '', '', NULL, '0000-00-00'),
(103, NULL, NULL, '', '', NULL, '0000-00-00'),
(104, NULL, NULL, '', '', NULL, '0000-00-00'),
(105, NULL, NULL, '', '', NULL, '0000-00-00'),
(106, NULL, NULL, '', '', NULL, '0000-00-00'),
(107, NULL, NULL, '', '', NULL, '0000-00-00'),
(108, NULL, NULL, '', '', NULL, '0000-00-00'),
(109, NULL, NULL, '', '', NULL, '0000-00-00'),
(110, NULL, NULL, '', '', NULL, '0000-00-00'),
(111, NULL, NULL, '', '', NULL, '0000-00-00'),
(112, NULL, NULL, '', '', NULL, '0000-00-00'),
(113, NULL, NULL, '', '', NULL, '0000-00-00'),
(114, NULL, NULL, '', '', NULL, '0000-00-00'),
(115, NULL, NULL, '', '', NULL, '0000-00-00'),
(116, NULL, NULL, '', '', NULL, '0000-00-00'),
(117, NULL, NULL, '', '', NULL, '0000-00-00'),
(118, NULL, NULL, '', '', NULL, '0000-00-00'),
(119, NULL, NULL, '', '', NULL, '0000-00-00'),
(120, NULL, NULL, '', '', NULL, '0000-00-00'),
(121, NULL, NULL, '', '', NULL, '0000-00-00'),
(122, NULL, NULL, '', '', NULL, '0000-00-00'),
(123, NULL, NULL, '', '', NULL, '0000-00-00'),
(124, NULL, NULL, '', '', NULL, '0000-00-00'),
(125, NULL, NULL, '', '', NULL, '0000-00-00'),
(126, NULL, NULL, '', '', NULL, '0000-00-00'),
(127, NULL, NULL, '', '', NULL, '0000-00-00'),
(128, NULL, NULL, '', '', NULL, '0000-00-00'),
(129, NULL, NULL, '', '', NULL, '0000-00-00'),
(130, NULL, NULL, '', '', NULL, '0000-00-00'),
(131, NULL, NULL, '', '', NULL, '0000-00-00'),
(132, NULL, NULL, '', '', NULL, '0000-00-00'),
(133, NULL, NULL, '', '', NULL, '0000-00-00'),
(134, NULL, NULL, '', '', NULL, '0000-00-00'),
(135, NULL, NULL, '', '', NULL, '0000-00-00'),
(136, NULL, NULL, '', '', NULL, '0000-00-00'),
(137, NULL, NULL, '', '', NULL, '0000-00-00'),
(138, NULL, NULL, '', '', NULL, '0000-00-00'),
(139, NULL, NULL, '', '', NULL, '0000-00-00'),
(140, NULL, NULL, '', '', NULL, '0000-00-00'),
(141, NULL, NULL, '', '', NULL, '0000-00-00'),
(142, NULL, NULL, '', '', NULL, '0000-00-00'),
(143, NULL, NULL, '', '', NULL, '0000-00-00'),
(144, NULL, NULL, '', '', NULL, '0000-00-00'),
(145, NULL, NULL, '', '', NULL, '0000-00-00'),
(146, NULL, NULL, '', '', NULL, '0000-00-00'),
(147, NULL, NULL, '', '', NULL, '0000-00-00'),
(148, NULL, NULL, '', '', NULL, '0000-00-00'),
(149, NULL, NULL, '', '', NULL, '0000-00-00'),
(150, NULL, NULL, '', '', NULL, '0000-00-00'),
(151, NULL, NULL, '', '', NULL, '0000-00-00'),
(152, NULL, NULL, '', '', NULL, '0000-00-00'),
(153, NULL, NULL, '', '', NULL, '0000-00-00'),
(154, NULL, NULL, '', '', NULL, '0000-00-00'),
(155, NULL, NULL, '', '', NULL, '0000-00-00'),
(156, NULL, NULL, '', '', NULL, '0000-00-00'),
(157, NULL, NULL, '', '', NULL, '0000-00-00'),
(158, NULL, NULL, '', '', NULL, '0000-00-00'),
(159, NULL, NULL, '', '', NULL, '0000-00-00'),
(160, NULL, NULL, '', '', NULL, '0000-00-00'),
(161, NULL, NULL, '', '', NULL, '0000-00-00'),
(162, NULL, NULL, '', '', NULL, '0000-00-00'),
(163, NULL, NULL, '', '', NULL, '0000-00-00'),
(164, NULL, NULL, '', '', NULL, '0000-00-00'),
(165, NULL, NULL, '', '', NULL, '0000-00-00'),
(166, NULL, NULL, '', '', NULL, '0000-00-00'),
(167, NULL, NULL, '', '', NULL, '0000-00-00'),
(168, NULL, NULL, '', '', NULL, '0000-00-00'),
(169, NULL, NULL, '', '', NULL, '0000-00-00'),
(170, NULL, NULL, '', '', NULL, '0000-00-00'),
(171, NULL, NULL, '', '', NULL, '0000-00-00'),
(172, NULL, NULL, '', '', NULL, '0000-00-00'),
(173, NULL, NULL, '', '', NULL, '0000-00-00'),
(174, NULL, NULL, '', '', NULL, '0000-00-00'),
(175, NULL, NULL, '', '', NULL, '0000-00-00'),
(176, NULL, NULL, '', '', NULL, '0000-00-00'),
(177, NULL, NULL, '', '', NULL, '0000-00-00'),
(178, NULL, NULL, '', '', NULL, '0000-00-00'),
(179, NULL, NULL, '', '', NULL, '0000-00-00'),
(180, NULL, NULL, '', '', NULL, '0000-00-00'),
(181, NULL, NULL, '', '', NULL, '0000-00-00'),
(182, NULL, NULL, '', '', NULL, '0000-00-00'),
(183, NULL, NULL, '', '', NULL, '0000-00-00'),
(184, NULL, NULL, '', '', NULL, '0000-00-00'),
(185, NULL, NULL, '', '', NULL, '0000-00-00'),
(186, NULL, NULL, '', '', NULL, '0000-00-00'),
(187, NULL, NULL, '', '', NULL, '0000-00-00'),
(188, NULL, NULL, '', '', NULL, '0000-00-00'),
(189, NULL, NULL, '', '', NULL, '0000-00-00'),
(190, NULL, NULL, '', '', NULL, '0000-00-00'),
(191, NULL, NULL, '', '', NULL, '0000-00-00'),
(192, NULL, NULL, '', '', NULL, '0000-00-00'),
(193, NULL, NULL, '', '', NULL, '0000-00-00'),
(194, NULL, NULL, '', '', NULL, '0000-00-00'),
(195, NULL, NULL, '', '', NULL, '0000-00-00'),
(196, NULL, NULL, '', '', NULL, '0000-00-00'),
(197, NULL, NULL, '', '', NULL, '0000-00-00'),
(198, NULL, NULL, '', '', NULL, '0000-00-00'),
(199, NULL, NULL, '', '', NULL, '0000-00-00'),
(200, NULL, NULL, '', '', NULL, '0000-00-00'),
(201, NULL, NULL, '', '', NULL, '0000-00-00'),
(202, NULL, NULL, '', '', NULL, '0000-00-00'),
(203, NULL, NULL, '', '', NULL, '0000-00-00'),
(204, NULL, NULL, '', '', NULL, '0000-00-00'),
(205, NULL, NULL, '', '', NULL, '0000-00-00'),
(206, NULL, NULL, '', '', NULL, '0000-00-00'),
(207, NULL, NULL, '', '', NULL, '0000-00-00'),
(208, NULL, NULL, '', '', NULL, '0000-00-00'),
(209, NULL, NULL, '', '', NULL, '0000-00-00'),
(210, NULL, NULL, '', '', NULL, '0000-00-00'),
(211, NULL, NULL, '', '', NULL, '0000-00-00'),
(212, NULL, NULL, '', '', NULL, '0000-00-00'),
(213, NULL, NULL, '', '', NULL, '0000-00-00'),
(214, NULL, NULL, '', '', NULL, '0000-00-00'),
(215, NULL, NULL, '', '', NULL, '0000-00-00'),
(216, NULL, NULL, '', '', NULL, '0000-00-00'),
(217, NULL, NULL, '', '', NULL, '0000-00-00'),
(218, NULL, NULL, '', '', NULL, '0000-00-00'),
(219, NULL, NULL, '', '', NULL, '0000-00-00'),
(220, NULL, NULL, '', '', NULL, '0000-00-00'),
(221, NULL, NULL, '', '', NULL, '0000-00-00'),
(222, NULL, NULL, '', '', NULL, '0000-00-00'),
(223, NULL, NULL, '', '', NULL, '0000-00-00'),
(224, NULL, NULL, '', '', NULL, '0000-00-00'),
(225, NULL, NULL, '', '', NULL, '0000-00-00'),
(226, NULL, NULL, '', '', NULL, '0000-00-00'),
(227, NULL, NULL, '', '', NULL, '0000-00-00'),
(228, NULL, NULL, '', '', NULL, '0000-00-00');

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
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `fecha_de_nacimiento`, `email`, `telefono`, `password`, `created_at`) VALUES
(1, 'Tomas ', 'Henschien', '2001-07-30', 'thenschien@udesa.edu.ar', '1122345359', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01'),
(2, 'Francisco', 'Dimo', '2001-07-23', 'fdimo@udesa.edu.ar', '1132758860', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01'),
(5, 'Estanislao', 'Ron', '2001-08-30', 'eron@udesa.edu.ar', '1178604456', '*7C104EB37FAED87A30624FA952E90F48D5EC2911', '2021-06-01 22:31:01'),
(6, 'Ignacio', 'Romani', '1989-11-14', 'iromani@digitalhouse.com', '1147837712', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01'),
(7, 'Matias', 'Heber', '1997-06-23', 'mheber@digitalhouse.con', '1143836128', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01'),
(8, 'Joaquin', 'Gonzalez', '1983-07-28', 'joaqgonzalez@gmail.com', '1122389200', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01'),
(9, 'Julian\r\n', 'Velazquez', '2004-06-23', 'julian.velaquez@hotmail.com.ar', '1155076328', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01'),
(10, 'Marcos', 'Fernandez', '1991-06-01', 'marquitosfdez@yahoo.com', '1178400043', '*63D510371EA2311E5904025273745FA7E5FFD306', '2021-06-01 22:31:01'),
(11, 'Fernando', 'Pinto', '1971-09-06', 'fpinto@gmail.com', '1139756392', '*33B0F466B39DA9041CDB939EDD4DEEE7DF6306CF', '2021-06-01 22:31:01'),
(14, 'Estanislao Ron', '', '0000-00-00', 'eron@colegiosanignacio.edu.ar', '', NULL, '2021-06-01 22:31:01'),
(18, 'Estanis', 'Ron', '0000-00-00', 'dimofrancisco@gmail.com', '43171579', '$2a$10$GW5iraHIvb4qSYyWlYCleukXf/sXUkPsuydoRHDL8jMO71BDaM6JW', '2021-06-01 22:31:01'),
(19, 'Estanislao', 'Ron', '0000-00-00', 'estanis200103@gmail.com', '3584203235', '$2a$10$2BVXwmWUSSiuJ5/qBear2uvXUvUbeCUu7Xtvp2xhwdvESYce1aMO2', '2021-06-01 22:31:01'),
(20, 'Estanislao', 'Ron', '0000-00-00', 'mron@bio4.com.ar', '3584203235', '$2a$10$kSDJZqU21RgO0mSLkPsN/e29VK1ZUPHbP8cWExeQnXRbaBLM0rWJ.', '2021-06-01 22:31:01'),
(21, 'Estanislao', 'Ron', '0000-00-00', 'estanis@gmail.com', '43171579', '$2a$10$YwgSvTxAwBkdQWWRqgKeXeiab2QDL1iavVtKTmFaasM7/VFeX6l0e', '2021-06-01 22:31:01'),
(22, 'estanislao', 'ron', '0000-00-00', 'e@gmail.com', '43171579', '$2a$10$83QwvfTj0yxKFU2UghzDaOU/2T9LqvRuggwX5tBZiHaEta58yzYNq', '2021-06-01 22:33:05');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
