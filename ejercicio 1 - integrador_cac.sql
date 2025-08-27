-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2025 a las 00:28:13
-- Versión del servidor: 11.6.1-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_orador`
--

CREATE TABLE `app_orador` (
  `id` int(20) NOT NULL,
  `nombre_orador` varchar(50) DEFAULT NULL,
  `apellido_orador` varchar(250) DEFAULT NULL,
  `email_orador` varchar(254) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `app_orador`
--

INSERT INTO `app_orador` (`id`, `nombre_orador`, `apellido_orador`, `email_orador`, `tema`, `fecha_alta`) VALUES
(1, 'JUAN', 'PEREZ', 'juanperez@testing.com', 'TEMA 1', '2025-08-26 19:25:32'),
(2, 'ANA', 'GARCIA', 'anagarcia@testing.com', 'TEMA 2', '2025-08-26 19:25:32'),
(3, 'PEDRO', 'LOPEZ', 'pedrolopez@testing.com', 'TEMA 3', '2025-08-26 19:25:32'),
(4, 'LUISA', 'MARTINEZ', 'luisamartinez@testing.com', 'TEMA 4', '2025-08-26 19:25:32'),
(5, 'CARLOS', 'RODRIGUEZ', 'carlosrodriguez@testing.com', 'TEMA 5', '2025-08-26 19:25:32'),
(6, 'MARIA', 'SANCHEZ', 'mariasanchez@testing.com', 'TEMA 6', '2025-08-26 19:25:32'),
(7, 'FRANCISCO', 'GOMEZ', 'franciscogomez@testing.com', 'TEMA 7', '2025-08-26 19:25:32'),
(8, 'ELENA', 'HERNANDEZ', 'elenahernandez@testing.com', 'TEMA 8', '2025-08-26 19:25:32'),
(9, 'JORGE', 'DIAZ', 'jorgediaz@testing.com', 'TEMA 9', '2025-08-26 19:25:32'),
(10, 'LAURA', 'PEREZ', 'lauraperez@testing.com', 'TEMA 10', '2025-08-26 19:25:32');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
