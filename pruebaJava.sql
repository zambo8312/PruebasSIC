-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2022 a las 17:55:44
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebaJava`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_Perfil`
--

CREATE TABLE `tbl_Perfil` (
  `IdPerfil` int(11) NOT NULL,
  `NombrePerfil` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_Perfil`
--

INSERT INTO `tbl_Perfil` (`IdPerfil`, `NombrePerfil`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_Usuario`
--

CREATE TABLE `tbl_Usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `IdPerfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_Usuario`
--

INSERT INTO `tbl_Usuario` (`IdUsuario`, `Nombres`, `Apellidos`, `IdPerfil`) VALUES
(1, 'Alfonzo', 'Casanare', 1),
(2, 'Rodrigo', 'Landazuri', 2),
(3, 'Antonio', 'Antonio', 2),
(4, 'John', 'Torres', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_Perfil`
--
ALTER TABLE `tbl_Perfil`
  ADD PRIMARY KEY (`IdPerfil`);

--
-- Indices de la tabla `tbl_Usuario`
--
ALTER TABLE `tbl_Usuario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_Perfil`
--
ALTER TABLE `tbl_Perfil`
  MODIFY `IdPerfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_Usuario`
--
ALTER TABLE `tbl_Usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_Perfil`
--
ALTER TABLE `tbl_Perfil`
  ADD CONSTRAINT `tbl_perfil_ibfk_1` FOREIGN KEY (`IdPerfil`) REFERENCES `tbl_usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
