-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-12-2021 a las 02:25:01
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tseriesdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruleengine`
--

CREATE TABLE `ruleengine` (
  `id` int(11) NOT NULL,
  `ruleName` varchar(255) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `topicPattern` varchar(1024) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `payloadPattern` varchar(20148) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `method` varchar(7) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT 'GET',
  `webHook` varchar(1024) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ruleengine`
--

INSERT INTO `ruleengine` (`id`, `ruleName`, `active`, `topicPattern`, `payloadPattern`, `method`, `webHook`) VALUES
(1, 'timestamp rule', 1, 'timestamp%', '%', 'POST', 'http://localhost:1880/pub/modifiedTime/rule-engine-works'),
(2, 'timestamp rule 2', 1, 'timestamp%', '%', 'POST', 'http://localhost:1880/pub/modifiedTime/rule-engine-working-again'),
(3, 'again rule', 1, '%', '%again', 'POST', 'http://localhost:1880/pub/modifiedTime/again-found');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thingdata`
--

CREATE TABLE `thingdata` (
  `id` int(11) NOT NULL,
  `topic` varchar(1024) NOT NULL,
  `payload` varchar(2048) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `deleted` binary(1) NOT NULL DEFAULT '\0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `thingdata`
--

INSERT INTO `thingdata` (`id`, `topic`, `payload`, `timestamp`, `deleted`) VALUES
(1, 'timestamp', '1639790197156', '1639790197.156', 0x30),
(2, 'modifiedTime', 'rule-engine-works', '1639790197.171', 0x30),
(3, 'modifiedTime', 'rule-engine-working-again', '1639790197.171', 0x30),
(4, 'modifiedTime', 'again-found', '1639790197.181', 0x30),
(5, 'timestamp', '1639790198014', '1639790198.015', 0x30),
(6, 'modifiedTime', 'rule-engine-works', '1639790198.025', 0x30),
(7, 'modifiedTime', 'rule-engine-working-again', '1639790198.026', 0x30),
(8, 'modifiedTime', 'again-found', '1639790198.034', 0x30),
(9, 'timestamp', '1639790198700', '1639790198.701', 0x30),
(10, 'modifiedTime', 'rule-engine-works', '1639790198.711', 0x30),
(11, 'modifiedTime', 'rule-engine-working-again', '1639790198.712', 0x30),
(12, 'modifiedTime', 'again-found', '1639790198.724', 0x30);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ruleengine`
--
ALTER TABLE `ruleengine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `thingdata`
--
ALTER TABLE `thingdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ruleengine`
--
ALTER TABLE `ruleengine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `thingdata`
--
ALTER TABLE `thingdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
