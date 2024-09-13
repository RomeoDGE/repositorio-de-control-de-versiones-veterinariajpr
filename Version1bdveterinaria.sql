-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-09-2024 a las 01:55:30
-- Versión del servidor: 10.3.39-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uhdflbft_bdveterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendar_citas`
--

CREATE TABLE `agendar_citas` (
  `id_cita` int(11) NOT NULL,
  `codigo_mascota` varchar(20) NOT NULL,
  `fecha_cita` date NOT NULL,
  `hora_cita` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `agendar_citas`
--

INSERT INTO `agendar_citas` (`id_cita`, `codigo_mascota`, `fecha_cita`, `hora_cita`) VALUES
(20, '2088', '2024-09-13', '11:55:00'),
(21, '2088', '2024-10-31', '12:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_vacunacion`
--

CREATE TABLE `calendario_vacunacion` (
  `id_vacunacion` int(11) NOT NULL,
  `codigo_mascota` varchar(50) NOT NULL,
  `fecha_vacuna` date NOT NULL,
  `enfermedad` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `calendario_vacunacion`
--

INSERT INTO `calendario_vacunacion` (`id_vacunacion`, `codigo_mascota`, `fecha_vacuna`, `enfermedad`) VALUES
(1, '29061', '2024-08-07', 'diarrea'),
(2, '555', '2024-12-12', 'Rabia'),
(29, '29041', '2024-09-12', 'diarrea'),
(30, '2088', '2024-10-31', 'SIDA'),
(31, '2088', '2024-09-13', 'SIDA'),
(32, '2088', '2024-10-04', 'Papiloma'),
(33, '2088', '2024-09-06', 'DisenterÃ­a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `claves_secretas`
--

CREATE TABLE `claves_secretas` (
  `id` int(11) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `claves_secretas`
--

INSERT INTO `claves_secretas` (`id`, `clave`, `descripcion`, `fecha_creacion`) VALUES
(1, 'A12345', 'clave unica', '2024-08-29 04:07:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codigo_cliente` varchar(50) NOT NULL,
  `numero_cuenta` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  `nombre_completo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`codigo_cliente`, `numero_cuenta`, `direccion`, `telefono`, `correo`, `codigo_postal`, `rfc`, `nombre_completo`) VALUES
('1234', '123456789', 'AV BELISARIO DOMINGUEZ 776', '923456789', 'pedro@gmail.com', '29077', '28Hq2', 'Octavio OcaÃ±a'),
('29077', '1234567890', 'AV BELISARIO DOMINGUEZ 776', '923456789', 'pedro@gmail.com', '29077', '28Hq2', 'Octavio Ocaña'),
('A123456', '72837484937284', 'Bienestar social ', '9613879856', 'caixbajonathanfm@gmail.com', '29077', 'H12Q23', 'Joseph Joestar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` int(11) NOT NULL,
  `codigo_mascota` varchar(255) NOT NULL,
  `sintomas` text NOT NULL,
  `diagnostico` text NOT NULL,
  `tratamiento` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id`, `codigo_mascota`, `sintomas`, `diagnostico`, `tratamiento`, `fecha`) VALUES
(3, '2088', 'qwerty', 'qwerty', 'qwerty', '2024-09-06 04:11:24'),
(4, '2088', 'qwerty', 'qwerty', 'qwerty', '2024-09-06 04:11:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_medico`
--

CREATE TABLE `historial_medico` (
  `id_historial` int(11) NOT NULL,
  `codigo_mascota` varchar(50) DEFAULT NULL,
  `enfermedad` varchar(255) DEFAULT NULL,
  `fecha_enfermedad` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `codigo_mascota` varchar(50) NOT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `especie` varchar(50) DEFAULT NULL,
  `raza` varchar(50) DEFAULT NULL,
  `color_pelo` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `peso_medio` decimal(5,2) DEFAULT NULL,
  `peso_actual` float DEFAULT NULL,
  `codigo_cliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`codigo_mascota`, `alias`, `especie`, `raza`, `color_pelo`, `fecha_nacimiento`, `peso_medio`, `peso_actual`, `codigo_cliente`) VALUES
('1', 'Lucas', 'Perro', 'Chihuahua', 'Negro', '2024-08-04', 10.00, 8, '1201'),
('1234', 'Max de Jesús', 'Perro', 'Doberman', 'Naranja', '2024-09-20', 20.00, 22, '29077'),
('2', 'GreÃ±as', 'Hamster', 'N', 'Azul', '2024-08-05', 5.00, 55, '1201'),
('2088', 'Doge', 'Chucho', 'Chino', 'Blanco-naranja', '2024-06-04', 20.00, 22, 'A123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinario`
--

CREATE TABLE `veterinario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apaterno` varchar(50) NOT NULL,
  `amaterno` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `veterinario`
--

INSERT INTO `veterinario` (`id`, `usuario`, `contrasena`, `correo`, `nombre`, `apaterno`, `amaterno`) VALUES
(3, 'Dr_John', '$2y$10$ScD2p7Gb4kwKLchvp8TFb.oWniAXrEgyCUFPxU1hVQ9SA9UP2LHkm', 'caixbajonathanfm@gmail.com', 'Jonathan', 'Caixba', 'Hernández'),
(4, 'drpedro', '$2y$10$zXe0h8v8L9H.ymiVwJmtWuu2tRMoDiUwOya8Wp.o5oIu.FJYWf4bW', 'parker20025@gmail.com', 'Pedro', 'OrdoÃ±ez', 'Albores'),
(5, 'CarlosLN', '$2y$10$lwj/iFGCxUf1d4BmvW1bhuvBWQaUQs3Fbq9lTDpvxyK0tgEup75Yu', 'carlos.leon71@unach.mx', 'Carlos', 'LeÃ³n', 'Chanona'),
(6, 'CarlosL', '$2y$10$D4E32E2oNZn.chvjh.Zug.eMXj6Nr0hEw1bfPjqVOwem5TrC3wegq', 'leonchanonac@gmail.com', 'Carlos', 'LeÃ³n', 'Estrada'),
(7, 'drkarla', '$2y$10$Hhr7qj03ZgdW9rZW.frk9OHxuhIBUk29crkaDVm.9Lzg94AT9IzFC', 'karla@gmail.com', 'Karla', 'Diaz', 'Lopez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendar_citas`
--
ALTER TABLE `agendar_citas`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `codigo_mascota` (`codigo_mascota`);

--
-- Indices de la tabla `calendario_vacunacion`
--
ALTER TABLE `calendario_vacunacion`
  ADD PRIMARY KEY (`id_vacunacion`);

--
-- Indices de la tabla `claves_secretas`
--
ALTER TABLE `claves_secretas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo_cliente`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_codigo_mascota` (`codigo_mascota`);

--
-- Indices de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `codigo_mascota` (`codigo_mascota`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`codigo_mascota`),
  ADD KEY `codigo_cliente` (`codigo_cliente`);

--
-- Indices de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendar_citas`
--
ALTER TABLE `agendar_citas`
  MODIFY `id_cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `calendario_vacunacion`
--
ALTER TABLE `calendario_vacunacion`
  MODIFY `id_vacunacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `claves_secretas`
--
ALTER TABLE `claves_secretas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agendar_citas`
--
ALTER TABLE `agendar_citas`
  ADD CONSTRAINT `agendar_citas_ibfk_1` FOREIGN KEY (`codigo_mascota`) REFERENCES `mascotas` (`codigo_mascota`) ON DELETE CASCADE;

--
-- Filtros para la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD CONSTRAINT `historial_medico_ibfk_1` FOREIGN KEY (`codigo_mascota`) REFERENCES `mascotas` (`codigo_mascota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
