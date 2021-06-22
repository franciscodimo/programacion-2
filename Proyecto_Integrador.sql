-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2021 a las 15:34:20
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `primary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
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
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `texto_comentario` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuario_id`, `producto_id`, `texto_comentario`, `created_at`) VALUES
(1, 1, 15, 'Love this watch, great for everyday use, sports and even fancy dinners! Can\'t go wrong with the Tag Heuer Aquaracer! Highly recommended.', '2021-06-02 22:37:50'),
(2, 1, 19, 'Words can\'t describe what this watch is in person, just unbelievable!', '2021-06-02 22:37:50'),
(3, 1, 16, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-06-02 22:37:50'),
(4, 1, 21, 'Love the watch and had a super good experience buying it at Relox.', '2021-06-02 22:37:50'),
(5, 1, 3, 'I mean, it\'s definitely a Rolex, cant go wrong with them swiss.', '2021-06-02 22:37:50'),
(6, 1, 21, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-06-02 22:37:50'),
(7, 1, 20, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-06-02 22:37:50'),
(8, 1, 20, 'Had my eye on this one for a long time. Great watch, super versatile and wearable.', '2021-06-02 22:37:50'),
(9, 2, 3, 'Love the watch and had a super good experience buying it at Relox.', '2021-06-02 22:37:50'),
(10, 2, 20, 'Words can\'t describe what this watch is in person, just unbelievable!', '2021-06-02 22:37:50'),
(11, 2, 10, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-06-02 22:37:50'),
(12, 2, 16, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-06-02 22:37:50'),
(13, 2, 17, 'Love the watch and had a super good experience buying it at Relox.', '2021-06-02 22:37:50'),
(14, 2, 17, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-06-02 22:37:50'),
(15, 2, 17, 'Words can\'t describe what this watch is in person, just unbelievable!', '2021-06-02 22:37:50'),
(16, 2, 10, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-06-02 22:37:50'),
(17, 5, 18, 'Love the watch and had a super good experience buying it at Relox.', '2021-06-02 22:37:50'),
(18, 5, 6, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-06-02 22:37:50'),
(19, 5, 21, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-06-02 22:37:50'),
(20, 5, 19, 'Words can\'t describe what this watch is in person, just unbelievable!', '2021-06-02 22:37:50'),
(21, 5, 21, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-06-02 22:37:50'),
(22, 5, 21, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-06-02 22:37:50'),
(23, 5, 6, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-06-02 22:37:50'),
(24, 5, 21, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-06-02 22:37:50'),
(25, 6, 19, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-06-02 22:37:50'),
(26, 6, 16, 'Absolutely astonished by the watch itself. It\'s the perfect all-around watch for everyday use. Feel it\'s gonna age beautifully with wear and tear.', '2021-06-02 22:37:50'),
(27, 6, 6, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-06-02 22:37:50'),
(28, 6, 21, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-06-02 22:37:50'),
(29, 6, 3, 'Absolutely astonished by the watch itself. It\'s the perfect all-around watch for everyday use. Feel it\'s gonna age beautifully with wear and tear.', '2021-06-02 22:37:50'),
(30, 6, 16, 'Love the watch and had a super good experience buying it at Relox.', '2021-06-02 22:37:50'),
(31, 6, 17, 'Highly recommendable watch! Super versatile and great for fine-dining.', '2021-06-02 22:37:50'),
(32, 6, 20, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-06-02 22:37:50'),
(33, 7, 6, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-06-02 22:37:50'),
(34, 7, 21, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-06-02 22:37:50'),
(35, 7, 15, 'Absolutely astonished by the watch itself. It\'s the perfect all-around watch for everyday use. Feel it\'s gonna age beautifully with wear and tear.', '2021-06-02 22:37:50'),
(36, 7, 16, 'Can\'t be happier with my new watch! However, Reloxs site responsiveness could be improved.', '2021-06-02 22:37:50'),
(37, 7, 10, 'Beautiful watch, bought it for my husband for our 10 year anniversary!', '2021-06-02 22:37:50'),
(38, 7, 3, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-06-02 22:37:50'),
(39, 7, 17, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-06-02 22:37:50'),
(40, 7, 3, 'Great Watch for sports and outdoor life. Liked it so much I\'m looking to get the one in black for fancier events.', '2021-06-02 22:37:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `url_imagen` varchar(255) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `precio` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `comentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `usuario_id`, `nombre`, `url_imagen`, `descripcion`, `precio`, `created_at`, `comentario`) VALUES
(3, 4, 8, 'Tag Heuer Carrera Automatic', 'relojregalo.png', 'El mejor reloj del mundo\r\n', 120, '2021-06-02 00:23:57', ''),
(6, 5, 8, 'Omega Speedmaster Special Edition', 'basededatos6.png', '', 35, '2021-06-02 00:23:57', ''),
(10, 4, 8, 'Tag Heuer Aquaracer', 'elonce.jpg', '', 200, '2021-06-02 00:23:57', ''),
(15, 5, 9, 'Omega Seamaster 007', 'R81311e7d95377db7d475187a8b393b8f.jpg', '', 300, '2021-06-02 00:23:57', ''),
(16, 5, 9, 'Omega Speedmaster Moonwatch', 'base de datos.jpg', '', 350, '2021-06-02 00:23:57', ''),
(17, 3, 9, 'Rolex Daytona Chronograph', 'R6316c7a0c712140062446c05f2a3cdf9.png', '', 560, '2021-06-02 00:23:57', ''),
(18, 3, 9, 'Rolex Submariner', 'fotorelojgris.jpg', '', 470, '2021-06-02 00:23:57', ''),
(19, 3, 10, 'Rolex Date-Just 39', 'queondasifunciona.jpg', '', 460, '2021-06-02 00:23:57', ''),
(20, 3, 11, 'Rolex Day-Date President', 'todooro.png', '', 670, '2021-06-02 00:23:57', ''),
(21, 3, 11, 'Rolex Date-just 41', 'OIP.jpg', '', 560, '2021-06-02 00:23:57', ''),
(22, 3, 14, 'Venom', 'reloj9.png', '', 3000, '2021-06-02 00:23:57', ''),
(23, 6, 5, 'Onix', 'verdoso.png', '', 4000, '2021-06-02 00:23:57', ''),
(242, 11, 20, 'Rolex 300 mega', '1623111431656-undefined.jpg', 'The best watch ever', NULL, '2021-06-08 00:17:11', ''),
(244, 3, 24, 'reloj', '1623359224477-url_imagen.jpg', 'valioso', NULL, '2021-06-10 21:07:04', ''),
(247, 3, 18, 'reloj', 'https://s.yimg.com/aah/movadobaby/rolex-cosmograph-daytona-116508-181.jpg', 'rolex', 23232300, '2021-06-19 21:34:34', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
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
  `imagen` varchar(255) NOT NULL,
  `url_social` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `fecha_de_nacimiento`, `email`, `telefono`, `password`, `created_at`, `imagen`, `url_social`) VALUES
(1, 'Tomas ', 'Henschien', '2001-07-30', 'thenschien@udesa.edu.ar', '1122345359', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', '', 'https://www.instagram.com/tomhenschien/?hl=es-la'),
(2, 'Francisco', 'Dimo', '2001-07-23', 'fdimo@udesa.edu.ar', '1132758860', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', '', 'https://www.instagram.com/francisco_dimo/?hl=es-la'),
(5, 'Estanislao', 'Ron', '2001-08-30', 'eron@udesa.edu.ar', '1178604456', '*7C104EB37FAED87A30624FA952E90F48D5EC2911', '2021-06-01 22:31:01', '', 'https://www.instagram.com/_estanis.ron/?hl=es-la'),
(6, 'Ignacio', 'Romani', '1989-11-14', 'iromani@digitalhouse.com', '1147837712', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', '', 'https://www.instagram.com/_digitalhouse/?hl=es-la'),
(7, 'Matias', 'Heber', '1997-06-23', 'mheber@digitalhouse.con', '1143836128', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', '', 'https://www.instagram.com/_digitalhouse/?hl=es-la'),
(8, 'Joaquin', 'Gonzalez', '1983-07-28', 'joaqgonzalez@gmail.com', '1122389200', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', '', 'https://www.instagram.com/joaquingonzalezoz/?hl=es-la'),
(9, 'Julian\r\n', 'Velazquez', '2004-06-23', 'julian.velaquez@hotmail.com.ar', '1155076328', '*AE683F2658025864BD97C684544E34BBB61E0C1B', '2021-06-01 22:31:01', '', 'https://www.instagram.com/julianvelazquezz/?hl=es-la'),
(10, 'Marcos', 'Fernandez', '1991-06-01', 'marquitosfdez@yahoo.com', '1178400043', '*63D510371EA2311E5904025273745FA7E5FFD306', '2021-06-01 22:31:01', '', 'https://www.instagram.com/majjfergut/?hl=es-la'),
(11, 'Fernando', 'Pinto', '1971-09-06', 'fpinto@gmail.com', '1139756392', '*33B0F466B39DA9041CDB939EDD4DEEE7DF6306CF', '2021-06-01 22:31:01', '', 'https://www.instagram.com/osopinto/?hl=es-la'),
(14, 'Estanislao Ron', '', '0000-00-00', 'eron@colegiosanignacio.edu.ar', '', NULL, '2021-06-01 22:31:01', '', ''),
(18, 'Estanis', 'Ron', '0000-00-00', 'dimofrancisco@gmail.com', '43171579', '$2a$10$GW5iraHIvb4qSYyWlYCleukXf/sXUkPsuydoRHDL8jMO71BDaM6JW', '2021-06-01 22:31:01', '', ''),
(20, 'Estanislao', 'Ron', '0000-00-00', 'mron@bio4.com.ar', '3584203235', '$2a$10$kSDJZqU21RgO0mSLkPsN/e29VK1ZUPHbP8cWExeQnXRbaBLM0rWJ.', '2021-06-01 22:31:01', '', ''),
(21, 'Estanislao', 'Ron', '0000-00-00', 'estanis@gmail.com', '43171579', '$2a$10$YwgSvTxAwBkdQWWRqgKeXeiab2QDL1iavVtKTmFaasM7/VFeX6l0e', '2021-06-01 22:31:01', '', ''),
(24, 'estanis', 'ron', '2000-02-01', 'estanislao@gmail.com', '03416285200', '$2a$10$rTnIh6sCsEOrZd3K8z4uaODoSDT9o.mwtwAbiLrkmA1kI.al9JKAO', '2021-06-10 20:45:37', '1623357937482-imagen.jpg', 'https://www.instagram.com/_estanis.ron/?hl=es-la');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
