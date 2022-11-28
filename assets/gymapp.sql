-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-11-2022 a las 00:57:57
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gymapp`
--
CREATE DATABASE IF NOT EXISTS `gymapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `gymapp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1`
--

CREATE TABLE `d1` (
  `ex1id` int(11) NOT NULL,
  `ex1name` varchar(255) NOT NULL,
  `ex1rep` int(11) NOT NULL,
  `ex1ser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `d1`
--

INSERT INTO `d1` (`ex1id`, `ex1name`, `ex1rep`, `ex1ser`) VALUES
(14, 'Abdominales', 25, 3),
(15, 'Sentadillas', 10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ej`
--

CREATE TABLE `ej` (
  `ej_id` int(11) NOT NULL,
  `ej_name` varchar(255) NOT NULL,
  `ej_rep` int(11) NOT NULL,
  `ej_ser` int(11) NOT NULL,
  `d` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ej`
--

INSERT INTO `ej` (`ej_id`, `ej_name`, `ej_rep`, `ej_ser`, `d`) VALUES
(1, 'Vuelos laterales con mancuernas', 11, 3, 1),
(2, 'Sentadillas', 11, 3, 2),
(3, 'Estocadas con barra', 11, 3, 2),
(4, 'Abdominales Bolita', 11, 3, 3),
(5, 'Biceps + Hombros', 11, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `cals` int(11) NOT NULL,
  `prot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `email`, `name`, `password`) VALUES
(1, 'pedromiteffcanal@gmail.com', 'Pedro Miteff', '2ae440219d59333e9fff7af5db5630ee'),
(2, 'ejemplooo@gmail.com', 'Pedro Miteff', 'e056aebf383716a7734ed31e527522ab');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `d1`
--
ALTER TABLE `d1`
  ADD PRIMARY KEY (`ex1id`);

--
-- Indices de la tabla `ej`
--
ALTER TABLE `ej`
  ADD PRIMARY KEY (`ej_id`);

--
-- Indices de la tabla `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `d1`
--
ALTER TABLE `d1`
  MODIFY `ex1id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ej`
--
ALTER TABLE `ej`
  MODIFY `ej_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
