-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-06-2021 a las 23:44:13
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto_2da`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apunte`
--
-- Creación: 23-06-2021 a las 23:31:31
--

DROP TABLE IF EXISTS `apunte`;
CREATE TABLE IF NOT EXISTS `apunte` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo Apunte` varchar(30) NOT NULL,
  `Fecha_creacion` varchar(30) NOT NULL,
  `Fecha_actualizacion` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--
-- Creación: 23-06-2021 a las 23:40:12
--

DROP TABLE IF EXISTS `contenido`;
CREATE TABLE IF NOT EXISTS `contenido` (
  `id_usuarios` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo Apunte` varchar(30) NOT NULL,
  `Fecha_creacion` varchar(30) NOT NULL,
  `Fecha_actualizacion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo apunte`
--
-- Creación: 23-06-2021 a las 23:32:34
--

DROP TABLE IF EXISTS `tipo apunte`;
CREATE TABLE IF NOT EXISTS `tipo apunte` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 09-06-2021 a las 01:06:05
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(80) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Telefono` int(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellidos`, `Direccion`, `Telefono`) VALUES
(18, 'Jose Alejandro', 'Díaz Suazo', 'Talca', 7485969),
(19, 'Pedro ', 'Picapiedra', 'Av. Luis Butano', 12435323),
(20, 'Pepe', 'Jackson', 'Beverly hills', 2147483647),
(22, 'Bart', 'Sinso', 'Av. Siempre viva', 133);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
