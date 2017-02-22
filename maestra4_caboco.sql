-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2017 a las 19:35:58
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `maestra4_caboco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT '',
  `descripcion` text,
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`id`, `nombre`, `descripcion`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, 'Caja  de herramientas Modulo I', '<div class="row" style="padding:20px;background-color:#f6f6f6;">\r\n<div class="col-lg-5" style="background-color: #026698">\r\n<h2 style="padding:5px;color:#fff;">M&oacute;dulo 1</h2>\r\n\r\n<h3 style="padding:5px;color:#f4f4f4;">La cooperaci&oacute;n en el lugar de trabajo: la base del &eacute;xito empresarial</h3>\r\n</div>\r\n\r\n<div class="col-lg-1">&nbsp;</div>\r\n\r\n<div class="col-lg-2"><img src="/si_score/assets/filemanager/userfiles/biblioteca/icono-presentador.png" style="margin-top: 20px;" /></div>\r\n\r\n<div class="col-lg-3">\r\n<h3>Manual del Formador</h3>\r\n<span>Contiene el proceso metodol&oacute;gico del servicio SCORE y la definici&oacute;n de los temas relacionados al M&oacute;dulo, el mismo es empleado por el Formador SCORE para poder brindar el servicio a las empresas interesadas.</span> <a href="#" target="blank"><img src="/si_score/assets/filemanager/userfiles/biblioteca/icon_pdf.png" /></a></div>\r\n</div>\r\n\r\n<div class="row" style="padding:20px;background-color:#f6f6f6;">\r\n<div class="col-lg-2"><img src="/si_score/assets/filemanager/userfiles/biblioteca/icono-workers.png" style="margin-top: 20px;" /></div>\r\n\r\n<div class="col-lg-3">\r\n<h3>Manual de Formaci&oacute;n para gerentes y trabajadores</h3>\r\n<span>Contiene un mayor detalle de la definici&oacute;n de los temas relacionados al M&oacute;dulo, el mismo es empleado por el Formador SCORE y los participantes al taller de formaci&oacute;n de empresas.</span> <a href="#" target="blank"><img src="/si_score/assets/filemanager/userfiles/biblioteca/icon_pdf.png" /></a></div>\r\n\r\n<div class="col-lg-1">&nbsp;</div>\r\n\r\n<div class="col-lg-2"><img src="/si_score/assets/filemanager/userfiles/biblioteca/icon_herramientas.png" style="margin-top: 20px;" /></div>\r\n\r\n<div class="col-lg-3">\r\n<h3>Caja de herramientas</h3>\r\n<span>Conjunto de materiales y/o herramientas que tiene como objetivo fortalecer los contenidos del programa SCORE recogiendo buenas pr&aacute;cticas de trabajo a nivel nacional e internacional. &Eacute;sta contiene materiales y/o herramientas como videos, im&aacute;genes, reglamentos, gu&iacute;as, etc. que servir&aacute;n de ayuda y complemento para la Implementaci&oacute;n de SCORE en las empresas.</span> <a href="#" target="blank"><img src="/si_score/assets/filemanager/userfiles/biblioteca/icon_pdf.png" /></a> <span class="read-more" onClick="mostrar_biblioteca();">ver</span></div>\r\n</div>\r\n', 1, 0, '2016-09-23 16:58:53', 1, '2016-10-18 11:04:12', 1, '2016-10-18 11:04:12', '2016-10-18 11:04:09', 0),
(2, 'Caja  de herramientas Modulo II', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet.</p>', 1, 0, '2016-09-23 17:01:03', 1, '2016-10-18 11:04:11', 1, '2016-10-18 11:04:11', '2016-10-18 11:04:09', 0),
(9, 'Caja  de herramientas Modulo III', '<p>Caja I</p>\r\n', 1, 0, '2016-10-07 18:03:31', 1, '2016-10-18 11:04:14', 1, '2016-10-18 11:04:14', '2016-10-18 11:04:07', 0),
(5, 'Caja  de herramientas Modulo IV', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', 1, 0, '2016-09-23 17:11:04', 1, '2016-10-18 11:04:13', 1, '2016-10-18 11:04:13', '2016-10-18 11:04:08', 0),
(7, 'Caja  de herramientas Modulo V', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet</p>', 1, 0, '2016-09-23 17:15:31', 1, '2016-10-18 11:04:13', 1, '2016-10-18 11:04:13', '2016-10-18 11:04:08', 0),
(8, 'Caja  de herramientas Modulo VI', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', 1, 0, '2016-09-23 17:16:54', 1, '2016-10-18 11:04:14', 1, '2016-10-18 11:04:14', '2016-10-18 11:04:07', 0),
(10, 'Caja de herramientas Modulo VII', '', 1, 0, '2016-10-16 19:49:32', 1, '2016-10-18 11:04:15', 1, '2016-10-18 11:04:15', '2016-10-18 11:04:06', 0),
(11, 'Caja de herramientas Modulo VIII', '', 1, 0, '2016-10-16 19:53:21', 1, '2016-10-18 11:04:28', 1, '2016-10-18 11:04:28', '2016-10-18 11:04:05', 0),
(12, 'Caja de herramientas modernas  Modulo IX', '', 0, 0, '2016-10-16 19:56:20', 1, '2016-10-17 10:11:47', 1, '2016-10-16 19:58:44', '2016-10-16 19:56:20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca_categoria`
--

CREATE TABLE `biblioteca_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT '',
  `descripcion` tinytext,
  `icono` varchar(255) DEFAULT '',
  `biblioteca_id` int(11) DEFAULT NULL,
  `padre_id` int(11) DEFAULT '0',
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `biblioteca_categoria`
--

INSERT INTO `biblioteca_categoria` (`id`, `nombre`, `descripcion`, `icono`, `biblioteca_id`, `padre_id`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `lft`, `rgt`, `bloqueado`) VALUES
(1, 'Categoría raíz de biblioteca', NULL, NULL, 0, 0, 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 26, 0),
(23, 'Categoria 1b', '', 'icono-videos.png', 1, 21, 1, '2016-10-14 12:19:40', 1, '2016-10-16 18:46:36', 1, '2016-10-16 18:46:36', '0000-00-00 00:00:00', 7, 8, 0),
(24, 'Categoria 1c', '', 'icono-presentacion.png', 1, 21, 1, '2016-10-14 12:19:54', 1, '2016-10-15 18:30:34', 1, '2016-10-15 18:30:34', '2016-10-14 14:34:41', 9, 10, 0),
(25, 'Categoria 1d', '', NULL, 1, 21, 1, '2016-10-14 12:20:13', 1, '2016-10-14 12:20:13', NULL, '2016-10-14 12:20:13', '0000-00-00 00:00:00', 11, 12, 0),
(26, 'Categoria 1e', '', 'icono-presentacion.png', 1, 21, 1, '2016-10-14 12:20:31', 1, '2016-10-17 17:04:41', 1, '2016-10-17 17:04:41', '0000-00-00 00:00:00', 3, 4, 0),
(27, 'Categoria 2', '<p>Estructura herramientas pr&aacute;cticas para la preparaci&oacute;n de las sesiones y desarrollo del Taller de formaci&oacute;n en aula para empresas.</p>', NULL, 1, 1, 1, '2016-10-14 12:20:47', 1, '2016-10-15 14:17:38', 1, '2016-10-15 14:17:38', '0000-00-00 00:00:00', 14, 25, 0),
(21, 'Categoria 1', '', NULL, 1, 1, 1, '2016-10-14 12:18:48', 1, '2016-10-14 12:18:48', NULL, '2016-10-14 12:18:48', '0000-00-00 00:00:00', 2, 13, 0),
(22, 'Categoria 1a', '', 'icono-videos.png', 1, 21, 1, '2016-10-14 12:19:23', 1, '2016-10-15 18:30:55', 1, '2016-10-15 18:30:55', '0000-00-00 00:00:00', 5, 6, 0),
(28, 'Categoria 2a', '', NULL, 1, 27, 1, '2016-10-14 12:21:04', 1, '2016-10-15 14:17:38', NULL, '2016-10-14 12:21:04', '0000-00-00 00:00:00', 15, 16, 0),
(29, 'Categoria 2b', '', NULL, 1, 27, 1, '2016-10-14 12:21:17', 1, '2016-10-15 14:17:38', 1, '2016-10-14 13:46:11', '0000-00-00 00:00:00', 17, 22, 0),
(30, 'Categoria 2c', '', NULL, 1, 27, 1, '2016-10-14 12:21:32', 1, '2016-10-15 14:17:38', NULL, '2016-10-14 12:21:32', '0000-00-00 00:00:00', 23, 24, 0),
(31, 'categoria 2bi', '', NULL, 1, 29, 1, '2016-10-14 12:22:22', 1, '2016-10-15 14:17:38', NULL, '2016-10-14 12:22:22', '0000-00-00 00:00:00', 18, 19, 0),
(32, 'Categoria 2bii', '', NULL, 1, 29, 1, '2016-10-14 12:22:39', 1, '2016-10-15 14:17:38', NULL, '2016-10-14 12:22:39', '0000-00-00 00:00:00', 20, 21, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca_documento`
--

CREATE TABLE `biblioteca_documento` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT '',
  `descripcion` tinytext,
  `biblioteca_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT '0',
  `documento` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `biblioteca_documento`
--

INSERT INTO `biblioteca_documento` (`id`, `titulo`, `descripcion`, `biblioteca_id`, `categoria_id`, `documento`, `url`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `lft`, `rgt`, `bloqueado`) VALUES
(1, 'Documento 1', 'Hola', 1, 22, 'examen.docx', '', 0, '2016-10-12 21:24:14', 1, '2016-10-15 18:30:55', 1, '2016-10-13 15:38:18', '2016-10-13 15:38:08', 0, 0, 1),
(2, 'Documento de prueba 1', 'Documento de prueba 1', 1, 22, '29396_Amores_altamente_peligrosos.pdf', '', 1, '2016-10-13 11:47:56', 1, '2016-10-15 18:30:55', 1, '2016-10-13 15:38:14', '2016-10-13 15:38:09', 0, 0, 0),
(3, 'Documento de prueba 2', 'Documento de prueba 2', 1, 22, '', 'https://www.youtube.com/watch?v=h053LMVUNjE', 1, '2016-10-13 11:50:03', 1, '2016-10-18 15:39:21', 1, '2016-10-18 15:39:21', '2016-10-13 15:38:10', 0, 0, 0),
(4, 'Documento de prueba 3', '', 1, 23, '', 'https://vimeo.com/124296403', 1, '2016-10-13 11:51:30', 1, '2016-10-18 15:40:35', 1, '2016-10-18 15:40:35', '2016-10-13 15:38:23', 0, 0, 0),
(5, 'Las presas de nadie', '', 1, 26, 'GUIA_PARA_EL_MANEJO_DE_IMAGEN_-_SCORE_dic20_(1)1.pdf', '', 1, '2016-10-18 13:51:40', 1, '2016-10-18 15:42:41', 1, '2016-10-18 15:42:41', '0000-00-00 00:00:00', 0, 0, 0),
(6, 'Texto pdf link', '', 1, 26, '2fEPxWJoawpsBhg.jpeg', '', 1, '2016-10-18 16:11:59', 1, '2016-10-19 14:17:36', 1, '2016-10-19 14:17:36', '0000-00-00 00:00:00', 0, 0, 0),
(7, 'beta', '', 1, 26, '', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', 1, '2016-10-18 18:13:26', 1, '2016-10-19 14:49:57', 1, '2016-10-19 14:49:57', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad_inscripcion`
--

CREATE TABLE `ciudad_inscripcion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad_inscripcion`
--

INSERT INTO `ciudad_inscripcion` (`id`, `nombre`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, 'La Paz', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Cochabamba', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'Santa Cruz de la Sierra', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 'Tarija', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, 'Oruro', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 'Potosi', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, 'Sucre', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, 'Trinidad', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, 'Cobija', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `mensaje` text,
  `respondido` tinyint(4) DEFAULT '0',
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `respondido`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'kol', 'omarbautista.formaempresas@gmail.com', 'asdasdasdasd', 0, NULL, '2016-09-30 13:47:19', NULL, '2016-09-30 13:47:19', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'aaa', 'aaa@gmail.com', 'aaa', 0, NULL, '2016-11-11 15:17:30', NULL, '2016-11-11 15:17:30', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'bbb', 'bbb@gmail.com', 'bbb', 0, NULL, '2016-11-11 15:19:02', NULL, '2016-11-11 15:19:02', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Felix', 'hugo927@hotmail.com', 'Esto es una prueba', 0, NULL, '2017-01-18 14:42:50', NULL, '2017-01-18 14:42:50', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_respuesta`
--

CREATE TABLE `contacto_respuesta` (
  `id` int(11) NOT NULL,
  `contacto_id` int(11) DEFAULT NULL,
  `respuesta` text,
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `enviado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_empresa`
--

CREATE TABLE `convocatoria_empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT '',
  `descripcion` text,
  `estado` tinyint(4) DEFAULT '1',
  `hits` int(11) DEFAULT '0',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `convocatoria_empresa`
--

INSERT INTO `convocatoria_empresa` (`id`, `nombre`, `descripcion`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, 'Convocatoria beta', '<div align="center">\r\n<h2>Financiamiento para mejorar la productividad y condiciones de trabajo basados en la cooperaci&oacute;n</h2>\r\n\r\n<p style="margin:0">Ficha de Inscripci&oacute;n de Empresas al M&oacute;dulo 1 de SCORE - M&oacute;dulo 1: &ldquo;La Cooperaci&oacute;n en el lugar de trabajo&rdquo;</p>\r\n\r\n<p style="margin:0">Formaci&oacute;n de Empresas SCORE - Peque&ntilde;as empresas (25 &ndash; 50 trabajadores) y medianas empresas (51 &ndash; 250 trabajadores)</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>CONVOCATORIA PARA PYMES</p>\r\n</div>\r\n', 0, 0, '2016-10-24 16:17:23', 1, '2016-10-26 17:18:41', 1, '2016-10-24 16:17:23', '2016-10-26 17:18:41', 0),
(2, 'Convocatoria II/2016', '<p>nada de nada</p>\r\n', 0, 0, '2016-10-24 16:56:00', 1, '2016-10-26 10:20:12', 1, '2016-10-24 18:20:17', '2016-10-24 18:37:15', 1),
(3, 'Convocatoria alfa', '<div align="center">\r\n<h2>Financiamiento para mejorar la productividad y condiciones de trabajo basados en la cooperaci&oacute;n</h2>\r\n\r\n<p style="margin:0">Ficha de Inscripci&oacute;n de Empresas al M&oacute;dulo 1 de SCORE - M&oacute;dulo 1: &ldquo;La Cooperaci&oacute;n en el lugar de trabajo&rdquo;</p>\r\n\r\n<p style="margin:0">Formaci&oacute;n de Empresas SCORE - Peque&ntilde;as empresas (25 &ndash; 50 trabajadores) y medianas empresas (51 &ndash; 250 trabajadores)</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>CONVOCATORIA PARA PYMES</p>\r\n</div>\r\n', 0, 0, '2016-10-24 17:32:14', 1, '2016-10-26 17:18:31', 1, '0000-00-00 00:00:00', '2016-10-26 17:18:31', 0),
(4, 'Convocatoria I/2016', '<h3>CONVOCATORIA PARA PYMES</h3>\r\n', 1, 0, '2016-10-24 18:32:16', 1, '2016-10-26 11:37:13', 1, '2016-10-26 11:37:13', '2016-10-26 11:37:11', 0),
(5, 'Convocatoria I/2016 reacondicionado', '<div align="center">\r\n<h2>Financiamiento para mejorar la productividad y condiciones de trabajo basados en la cooperaci&oacute;n</h2>\r\n\r\n<p style="margin:0">Ficha de Inscripci&oacute;n de Empresas al M&oacute;dulo 1 de SCORE - M&oacute;dulo 1: &ldquo;La Cooperaci&oacute;n en el lugar de trabajo&rdquo;</p>\r\n\r\n<p style="margin:0">Formaci&oacute;n de Empresas SCORE - Peque&ntilde;as empresas (25 &ndash; 50 trabajadores) y medianas empresas (51 &ndash; 250 trabajadores)</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>CONVOCATORIA PARA PYMES</p>\r\n</div>\r\n', 0, 0, '2016-10-24 18:33:26', 1, '2016-10-24 18:47:04', 1, '2016-10-24 18:38:35', '2016-10-24 18:36:19', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_formador`
--

CREATE TABLE `convocatoria_formador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT '',
  `descripcion` text,
  `estado` tinyint(4) DEFAULT '1',
  `hits` int(11) DEFAULT '0',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `convocatoria_formador`
--

INSERT INTO `convocatoria_formador` (`id`, `nombre`, `descripcion`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, 'Convocatoria 2016 formadores ', '<p>Convocatoria a formadores desesperados 1</p>\r\n', 0, 0, '2016-10-25 11:00:23', 1, '2016-10-26 10:39:53', 1, '2016-10-26 10:39:52', '2016-10-26 10:39:53', 0),
(2, 'Nada de convocatorias', '<p>Convocatoria a formadores desesperados 2</p>\r\n', 0, 0, '2016-10-25 11:01:27', 1, '2016-10-25 11:01:57', 1, '0000-00-00 00:00:00', '2016-10-25 11:01:35', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email_notificacion` varchar(255) DEFAULT '',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `email`
--

INSERT INTO `email` (`id`, `email_notificacion`, `creado`, `creado_por`, `modificado`, `modificado_por`) VALUES
(1, 'omarbautista@gmail.com', '2016-09-15 16:16:57', NULL, '2016-09-15 15:54:56', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, 'La Paz', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Cochabamba', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'Santa Cruz de la Sierra', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 'Tarija', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, 'Oruro', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 'Potosi', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, 'Sucre', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, 'Trinidad', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, 'Cobija', 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_ciudad`
--

CREATE TABLE `especialista_ciudad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_ciudad`
--

INSERT INTO `especialista_ciudad` (`id`, `descripcion`) VALUES
(1, 'La Paz'),
(2, 'El Alto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_departamento`
--

CREATE TABLE `especialista_departamento` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_departamento`
--

INSERT INTO `especialista_departamento` (`id`, `descripcion`, `abreviatura`) VALUES
(1, 'La Paz', 'LPZ'),
(2, 'Cochabamba', 'CBA'),
(3, 'Beni', 'BNI'),
(4, 'Chuquisaca', 'CHQ'),
(5, 'Oruro', 'ORU'),
(6, 'Pando', 'PND'),
(7, 'Potosi', 'PSI'),
(8, 'Santa Cruz', 'SCZ'),
(9, 'Tarija', 'TJA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_empleador`
--

CREATE TABLE `especialista_empleador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_empleador`
--

INSERT INTO `especialista_empleador` (`id`, `nombre`, `correo`, `direccion`, `creado`, `modificado`) VALUES
(42, 'Juan Perez', 'hugo927@hotmail.com', 'direccion de juan', '2017-01-26 14:40:03', '2017-01-26 14:40:03'),
(43, 'Raul Salmon', 'hugo927@hotmail.com', 'direccion raul', '2017-01-26 18:37:48', '2017-01-26 18:37:48'),
(44, 'Juan Dias', 'hugo927@hotmail.com', 'calle de juan dias', '2017-02-07 13:44:57', '2017-02-07 13:44:57'),
(45, 'Prueba Local', 'hugomontes.formaempresas@gmail.com', 'xxx', '2017-02-07 17:19:44', '2017-02-07 17:19:44'),
(46, 'xxx', 'hugomontes927@gmail.com', 'xxx', '2017-02-07 17:25:38', '2017-02-07 17:25:38'),
(47, 'Mauro', 'hugo927@hotmail.com', 'ppp', '2017-02-07 17:27:50', '2017-02-07 17:27:50'),
(48, 'Franz  Perez', 'ramiro.mitre@gmail.com', 'Av. Lanza No. 2491', '2017-02-10 12:50:38', '2017-02-10 12:50:38'),
(49, 'Alejandro', 'hugo@hotmail.com', 'direccion hugo', '2017-02-10 13:13:18', '2017-02-10 13:13:18'),
(50, 'Otto', 'hugomontes927@gmail.com', 'direccion hugo', '2017-02-10 13:14:30', '2017-02-10 13:14:30'),
(51, 'Mauricio', 'hugomontes927@gmail.com', 'der', '2017-02-10 13:23:18', '2017-02-10 13:23:18'),
(52, 'kkk', 'hugomontes927@gmail.com', 'direccion a', '2017-02-10 13:24:57', '2017-02-10 13:24:57'),
(53, 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Av. Kollasuyo No. 654', '2017-02-11 10:05:56', '2017-02-11 10:05:56'),
(54, 'Mauricio', 'hugomontes927@gmail.com', 'calle m', '2017-02-11 11:17:23', '2017-02-11 11:17:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_especialidad`
--

CREATE TABLE `especialista_especialidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_especialidad`
--

INSERT INTO `especialista_especialidad` (`id`, `descripcion`, `orden`, `creado`, `creado_por`, `modificado`, `estado`, `publicado`) VALUES
(1, 'Obra gruesa', 2, '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(2, 'Obra fina', 3, '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(3, 'Plomeria', 4, '2017-01-18 14:50:47', 1, '0000-00-00 00:00:00', 1, NULL),
(4, 'Instalación eléctrica', 8, '2017-01-18 14:50:47', 1, '2017-01-18 14:50:32', 1, '2017-01-18 14:50:32'),
(5, 'Pintura', 5, '2017-01-18 14:50:47', 1, '2017-01-18 14:50:47', 1, '2017-01-18 14:50:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_solicitud`
--

CREATE TABLE `especialista_solicitud` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_ini` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `id_empleador` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_solicitud`
--

INSERT INTO `especialista_solicitud` (`id`, `cantidad`, `fecha_ini`, `fecha_fin`, `id_empleador`, `id_ciudad`, `id_especialidad`, `creado`, `modificado`) VALUES
(52, 22, '2017-01-02', '2017-01-31', 42, 1, 3, '2017-01-26 14:40:03', '2017-01-26 14:40:03'),
(53, 30, '2017-01-03', '2017-01-31', 43, 1, 4, '2017-01-26 18:37:48', '2017-01-26 18:37:48'),
(54, 5, '2017-02-01', '2017-02-17', 44, 1, 2, '2017-02-07 13:44:57', '2017-02-07 13:44:57'),
(55, 23, '2017-02-01', '2017-02-16', 45, 1, 3, '2017-02-07 17:19:44', '2017-02-07 17:19:44'),
(56, 5, '2017-02-01', '2017-02-10', 46, 1, 4, '2017-02-07 17:25:38', '2017-02-07 17:25:38'),
(57, 23, '2017-02-17', '2017-02-25', 47, 1, 5, '2017-02-07 17:27:50', '2017-02-07 17:27:50'),
(58, 3, '2017-02-23', '2017-02-28', 48, 1, 1, '2017-02-10 12:50:38', '2017-02-10 12:50:38'),
(59, 22, '2017-02-01', '2017-02-16', 49, 1, 2, '2017-02-10 13:13:18', '2017-02-10 13:13:18'),
(60, 23, '2017-02-01', '2017-02-23', 50, 2, 2, '2017-02-10 13:14:30', '2017-02-10 13:14:30'),
(61, 23, '2017-02-01', '2017-02-16', 51, 1, 5, '2017-02-10 13:23:18', '2017-02-10 13:23:18'),
(62, 33, '2017-02-08', '2017-02-17', 52, 1, 4, '2017-02-10 13:24:57', '2017-02-10 13:24:57'),
(63, 5, '2017-02-12', '2017-02-25', 53, 1, 5, '2017-02-11 10:05:56', '2017-02-11 10:05:56'),
(64, 12, '2017-02-01', '2017-02-22', 54, 1, 2, '2017-02-11 11:17:23', '2017-02-11 11:17:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_trabajador`
--

CREATE TABLE `especialista_trabajador` (
  `id` int(11) NOT NULL,
  `ci` varchar(50) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono_contacto` varchar(255) DEFAULT NULL,
  `telefono_referencia` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL,
  `despublicado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_trabajador`
--

INSERT INTO `especialista_trabajador` (`id`, `ci`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `direccion`, `telefono_contacto`, `telefono_referencia`, `correo`, `id_departamento`, `id_ciudad`, `creado`, `creado_por`, `modificado`, `estado`, `publicado`, `despublicado`) VALUES
(3, '8965852', 'Lorena', 'Gomez', '2016-11-20', 'mujer', 'Av buenos aires', '75058585', NULL, 'pedro@gmail.com', 1, 1, '2016-11-15 16:27:17', 1, '2016-11-15 16:27:17', 1, '2016-11-15 16:27:17', NULL),
(4, '2548811', 'Ana', 'Perez', '2016-06-15', 'mujer', 'Av landaeta nro 123', '70489897', NULL, 'ana@gmail.com', 1, 1, '2016-11-15 16:32:03', 1, '2016-11-17 17:35:43', 1, '2016-11-17 17:35:43', NULL),
(6, '5122525', 'Gabriela', 'Morales', '1985-08-30', 'mujer', 'Av. Juan Pablo II', '75214586', NULL, 'zzz@gmail.com', 1, 2, '2016-11-16 14:25:53', 1, '2016-11-17 17:34:46', 1, '2016-11-17 17:34:46', NULL),
(7, '9869632', 'Raquel', 'Velez', '1990-06-18', 'mujer', 'av poeta nro 123', '71252563', NULL, '', 4, 1, '2016-11-16 15:39:39', 1, '2016-11-18 15:41:52', 1, '2016-11-18 15:41:52', NULL),
(8, '5858215', 'Martha', 'Reyes', '2000-01-13', 'mujer', 'Av buenos aires nro 456', '2457854', NULL, 'marcos@gmail.com', 1, 1, '2016-11-16 15:47:23', 1, '2016-11-17 17:33:33', 1, '2016-11-17 17:33:33', NULL),
(10, '1152585', 'Karmen', 'Salinas', '1985-06-01', 'mujer', 'Pampahasi nro 456', '78585858', NULL, 'karmen@gmail.com', 2, 1, '2016-11-16 17:10:29', 1, '2016-11-17 17:35:56', 1, '2016-11-17 17:35:56', NULL),
(11, '6898586', 'Juaquina', 'Perales', '2000-11-17', 'mujer', 'Av poeta nro 666', '', NULL, '', 1, 2, '2016-11-16 17:12:55', 1, '2016-11-17 17:32:55', 1, '2016-11-17 17:32:55', NULL),
(12, '1285485', 'Irene', 'Gonzales', '1985-08-30', 'mujer', 'Sopocachi calle 3', '70154852', NULL, 'zzz@gmail.com', 1, 1, '2016-11-16 17:21:28', 1, '2016-11-17 17:34:25', 1, '2016-11-17 17:34:25', NULL),
(13, '5889966', 'Barbara', 'Simpson', '1991-08-30', 'mujer', 'av siempre vivas nro 508', '71458225', NULL, 'bar@hotmail.com', 1, 1, '2016-11-17 15:55:56', 1, '2016-11-17 15:55:56', 1, '2016-11-17 15:55:56', NULL),
(14, '9858585', 'Claudia', 'Conde', '1995-03-12', 'mujer', 'Av. Arce nro 8547', '74854852', NULL, 'claudia@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(15, '9658214', 'Maria', 'Torrez', '1991-05-05', 'mujer', 'Av. Miraflores nro 888', '65285823', '', 'maria@yahoo.es', 1, 2, '2016-11-17 16:59:53', 1, '2017-01-14 10:17:03', 1, '2017-01-14 10:17:03', NULL),
(16, '6525856', 'Juana', 'Cortes', '1985-04-10', 'mujer', 'Av. costanera nro 966', '68745852', NULL, 'juana@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(17, '5874852', 'Paola', 'Ramirez', '1990-05-22', 'mujer', 'Chasquipampa nro 444', '78596586', NULL, 'paola@hotmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(18, '6859585', 'Fabiola', 'Teran', '1985-08-30', 'mujer', 'Pampahasi nro 456', '75058585', NULL, 'fabi@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(19, '6958965', 'Monica', 'Quispe', '1991-08-30', 'mujer', 'Av poeta nro 666', '70489897', NULL, 'monica@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(20, '5589669', 'Jacky', 'Arias', '1995-03-12', 'mujer', 'Sopocachi calle 3', '75214586', NULL, 'jacky@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(21, '6778559', 'Marleny', 'Gonzales', '1991-05-05', 'mujer', 'av siempre vivas nro 508', '71252563', NULL, 'marleny@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(22, '6415885', 'Isabel', 'Olivero', '1985-04-10', 'mujer', 'Av. Arce nro 8547', '75058585', NULL, 'isabel@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(23, '5485258', 'Irma', 'Flores', '1990-05-22', 'mujer', 'Av. Miraflores nro 888', '70489897', '', 'irma@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2017-01-14 10:16:14', 1, '2017-01-14 10:16:14', NULL),
(24, '6958558', 'Vania', 'Zapata', '2000-01-13', 'mujer', 'Av. costanera nro 966', '75214586', NULL, 'vania@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(25, '5120508', 'Carla', 'Soria', '1985-06-01', 'mujer', 'Av landaeta nro 123', '71252563', NULL, 'carla@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(26, '6985896', 'Esmeralda', 'Blanco', '2000-11-17', 'mujer', 'Av. Juan Pablo II', '75058585', NULL, 'esmeralda@gmail.com', 1, 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', 1, '2016-11-17 16:59:53', NULL),
(27, '5774488', 'Evarista', 'Gutierrez', '1982-06-11', 'mujer', '', '', NULL, '', 1, 1, '2017-01-06 16:43:04', 1, '2017-01-11 14:09:48', 1, '2017-01-11 14:09:48', NULL),
(28, '5985258', 'Narda', 'Ticona', '1985-08-30', 'mujer', 'Calle Nat Agu nro 927', '7305895', '7158525', '', 1, 1, '2017-01-13 15:30:09', 1, '2017-01-13 15:39:17', 1, '2017-01-13 15:39:17', NULL),
(29, '7788552', 'Beatriz', 'Quiroga', '2002-03-05', 'mujer', 'Sopocachi nro 777', '2478547', '7158985', '', 1, 2, '2017-01-13 15:59:13', 1, '2017-01-13 15:59:13', 1, '2017-01-13 15:59:13', NULL),
(30, '9658258', 'Paola', 'Uribe', '2000-04-06', 'mujer', 'Calle ingavi nro 456', '', '', '', 1, 1, '2017-01-13 16:00:57', 1, '2017-01-13 16:02:19', 1, '2017-01-13 16:02:19', NULL),
(32, '898585', 'Teresa', 'Mamani', '2015-03-02', 'mujer', 'Calle Uyuni nro 888', '', '', '', 1, 1, '2017-01-13 17:42:04', 1, '2017-01-13 17:42:04', 1, '2017-01-13 17:42:04', NULL),
(33, '5852479', 'Angelines', 'Fernandez', '1998-07-05', 'mujer', 'Calle 71 Calacoto', '', '', '', 1, 1, '2017-01-14 10:22:48', 1, '2017-01-14 10:22:48', 1, '2017-01-14 10:22:48', NULL),
(34, '8541458', 'Kantuta', 'Perales', '2006-06-05', 'mujer', 'Calle Perales Nro 123', '', '', '', 1, 1, '2017-02-03 16:41:03', 1, '2017-02-03 16:41:03', 1, '2017-02-03 16:41:03', NULL),
(35, '9658525', 'Erika', 'Espinosa', '2008-06-04', 'mujer', 'Av Arce nro 777', '', '', '', 1, 1, '2017-02-03 16:49:32', 3, '2017-02-03 16:49:32', 1, '2017-02-03 16:49:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_trabajador_especialidad`
--

CREATE TABLE `especialista_trabajador_especialidad` (
  `id` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `anios_experiencia` int(11) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_trabajador_especialidad`
--

INSERT INTO `especialista_trabajador_especialidad` (`id`, `id_trabajador`, `id_especialidad`, `anios_experiencia`, `creado`, `modificado`) VALUES
(1, 13, 1, 1, '2016-11-17 15:55:56', '2016-11-17 15:55:56'),
(2, 13, 2, 3, '2016-11-17 15:55:56', '2016-11-17 15:55:56'),
(3, 13, 3, 4, '2016-11-17 15:55:56', '2016-11-17 15:55:56'),
(4, 13, 4, 5, '2016-11-17 15:55:56', '2016-11-17 15:55:56'),
(8, 11, 2, 1, '2016-11-17 17:32:55', '2016-11-17 17:32:55'),
(9, 11, 4, 1, '2016-11-17 17:32:55', '2016-11-17 17:32:55'),
(10, 8, 1, 1, '2016-11-17 17:33:33', '2016-11-17 17:33:33'),
(11, 8, 2, 4, '2016-11-17 17:33:33', '2016-11-17 17:33:33'),
(13, 6, 1, 4, '2016-11-17 17:34:46', '2016-11-17 17:34:46'),
(14, 6, 3, 4, '2016-11-17 17:34:46', '2016-11-17 17:34:46'),
(17, 4, 2, 5, '2016-11-17 17:35:43', '2016-11-17 17:35:43'),
(18, 10, 3, 2, '2016-11-17 17:35:56', '2016-11-17 17:35:56'),
(19, 10, 4, 1, '2016-11-17 17:35:56', '2016-11-17 17:35:56'),
(20, 7, 4, 1, '2016-11-18 15:41:52', '2016-11-18 15:41:52'),
(24, 10, 2, 10, '2016-11-18 15:41:52', '2016-11-18 15:41:52'),
(30, 12, 2, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 12, 3, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 14, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 14, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 14, 4, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 16, 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 16, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 16, 3, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 16, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 19, 4, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 20, 1, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 20, 4, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 21, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 21, 3, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 22, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 22, 3, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 22, 4, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 24, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 24, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 25, 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 25, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 25, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 26, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 26, 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 26, 3, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 26, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 27, 1, 2, '2017-01-11 14:09:48', '2017-01-11 14:09:48'),
(67, 27, 3, 2, '2017-01-11 14:09:48', '2017-01-11 14:09:48'),
(70, 28, 1, 0, '2017-01-13 15:39:17', '2017-01-13 15:39:17'),
(71, 28, 3, 0, '2017-01-13 15:39:17', '2017-01-13 15:39:17'),
(72, 29, 1, 0, '2017-01-13 15:59:13', '2017-01-13 15:59:13'),
(73, 29, 2, 0, '2017-01-13 15:59:13', '2017-01-13 15:59:13'),
(74, 29, 4, 0, '2017-01-13 15:59:13', '2017-01-13 15:59:13'),
(76, 30, 3, 0, '2017-01-13 16:02:19', '2017-01-13 16:02:19'),
(79, 32, 3, 5, '2017-01-13 17:42:04', '2017-01-13 17:42:04'),
(80, 32, 4, 6, '2017-01-13 17:42:04', '2017-01-13 17:42:04'),
(83, 23, 3, 3, '2017-01-14 10:16:14', '2017-01-14 10:16:14'),
(84, 23, 4, 5, '2017-01-14 10:16:14', '2017-01-14 10:16:14'),
(85, 15, 1, 4, '2017-01-14 10:17:03', '2017-01-14 10:17:03'),
(86, 15, 2, 5, '2017-01-14 10:17:03', '2017-01-14 10:17:03'),
(87, 33, 2, 0, '2017-01-14 10:22:48', '2017-01-14 10:22:48'),
(88, 33, 3, 0, '2017-01-14 10:22:48', '2017-01-14 10:22:48'),
(89, 34, 1, 9, '2017-02-03 16:41:03', '2017-02-03 16:41:03'),
(90, 34, 4, 7, '2017-02-03 16:41:03', '2017-02-03 16:41:03'),
(91, 35, 1, 2, '2017-02-03 16:49:32', '2017-02-03 16:49:32'),
(92, 35, 2, 2, '2017-02-03 16:49:32', '2017-02-03 16:49:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formador`
--

CREATE TABLE `formador` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) DEFAULT '',
  `apellidos` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `fotografia` varchar(255) DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `formador` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `estado` tinyint(1) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formador`
--

INSERT INTO `formador` (`id`, `nombres`, `apellidos`, `genero`, `fotografia`, `thumb`, `formador`, `descripcion`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'Mario', 'Luna Mendez', 'varon', 'foto_1.jpg', 'foto_1_thumb.jpg', 'Formador SCORE Certificado', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>', 1, 0, '2016-09-26 16:45:09', 1, '2016-09-26 16:45:19', 1, '2016-09-26 16:45:19', '0000-00-00 00:00:00'),
(2, 'Amalia', 'Salas', 'mujer', 'foto_2.jpg', 'foto_2_thumb.jpg', 'Formador SCORE Certificado', '<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>', 1, 0, '2016-09-26 16:46:42', 1, '2016-09-26 16:46:42', NULL, '2016-09-26 16:46:42', '0000-00-00 00:00:00'),
(3, 'Armando', 'Vega', 'varon', 'foto_3.jpg', 'foto_3_thumb.jpg', 'Formador SCORE Certificado', '<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>', 1, 0, '2016-09-26 16:47:23', 1, '2016-09-26 16:47:23', NULL, '2016-09-26 16:47:23', '0000-00-00 00:00:00'),
(4, 'Mario', 'Vargas Sagarnaga', 'varon', '', 'foto_4_thumb.jpg', 'Formador SCORE Certificado', '<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>', 1, 0, '2016-09-26 16:48:47', 1, '2016-12-29 13:51:53', 1, '2016-12-29 13:51:53', '0000-00-00 00:00:00'),
(5, 'Ernesto', 'Moreno', 'varon', 'foto_5.jpg', 'foto_5_thumb.jpg', 'Formador SCORE Certificado', '<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>', 1, 0, '2016-09-26 16:49:39', 1, '2016-09-26 16:49:39', NULL, '2016-09-26 16:49:39', '0000-00-00 00:00:00'),
(6, 'Maria', 'Delgado', 'mujer', 'foto_6.jpg', 'foto_6_thumb.jpg', 'Formador SCORE Certificado', '<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>', 1, 0, '2016-09-26 16:50:31', 1, '2016-09-26 16:50:31', NULL, '2016-09-26 16:50:31', '0000-00-00 00:00:00'),
(7, 'Leonel', 'Bautista', 'varon', 'foto_7.jpg', 'foto_7_thumb.jpg', 'Formador SCORE Certificado', '<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>', 1, 0, '2016-09-26 16:51:16', 1, '2016-10-07 11:09:47', NULL, '2016-09-26 16:51:16', '0000-00-00 00:00:00'),
(8, 'Walter', 'Riso', 'varon', 'foto_8.jpg', 'foto_8_thumb.jpg', 'Formador SCORE Certificado', '<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>', 1, 0, '2016-09-26 16:51:57', 1, '2016-10-07 11:09:44', NULL, '2016-09-26 16:51:57', '0000-00-00 00:00:00'),
(9, 'kkk', 'kkk', 'varon', '', '', 'Formador SCORE Certificado', '<p>abc</p>', 1, 0, '2016-11-16 17:15:17', 1, '2016-11-16 17:15:17', NULL, '2016-11-16 17:15:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT '',
  `enlace` varchar(255) NOT NULL,
  `tipo` tinyint(4) DEFAULT NULL,
  `instancia` varchar(255) DEFAULT '',
  `padre_id` int(11) DEFAULT '0',
  `abrir_en` tinyint(4) DEFAULT '1',
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `titulo`, `enlace`, `tipo`, `instancia`, `padre_id`, `abrir_en`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `lft`, `rgt`) VALUES
(1, 'Elemento de menú raiz', '', 0, '', 0, 1, 1, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 32),
(2, 'INICIO', 'index.php/', 1, '2/3', 1, 1, 1, '2016-09-26 17:19:41', 1, '2017-02-11 10:00:27', 1, '2017-02-11 10:00:27', '0000-00-00 00:00:00', 2, 3),
(3, 'INFORMACIÓN DE INTERÉS', 'javascript:;', 2, '', 1, 1, 1, '2016-09-26 17:20:24', 1, '2017-02-11 10:01:12', 1, '2017-02-11 10:01:12', '0000-00-00 00:00:00', 10, 17),
(4, 'Derechos laborales', 'index.php/informacion/4', 1, '2/15', 3, 1, 1, '2016-09-26 17:21:06', 1, '2017-02-20 17:24:14', 1, '2017-02-20 17:24:14', '0000-00-00 00:00:00', 13, 14),
(5, 'Salud y Seguridad en el Trabajo', 'index.php/informacion/5', 1, '2/16', 3, 1, 1, '2016-09-26 17:22:21', 1, '2017-02-20 17:24:25', 1, '2017-02-20 17:24:25', '0000-00-00 00:00:00', 15, 16),
(21, 'Noticias', 'index.php/noticias/1', 1, '2/12', 20, 1, 1, '2017-01-18 13:56:35', 1, '2017-02-11 10:01:40', 1, '2017-02-07 14:10:21', '0000-00-00 00:00:00', 25, 26),
(22, 'Capacitación', 'index.php/noticias/2', 1, '2/13', 20, 1, 1, '2017-01-18 13:58:19', 1, '2017-02-11 10:01:40', 1, '2017-02-07 14:10:36', '0000-00-00 00:00:00', 27, 28),
(8, 'Recursos', 'javascript:;', 2, '', 1, 1, 0, '2016-09-26 17:24:46', 1, '2016-11-29 13:14:00', NULL, '2016-09-26 17:24:46', '0000-00-00 00:00:00', 18, 23),
(9, 'Biblioteca virtual', 'javascript:;', 2, '', 8, 1, 0, '2016-09-26 17:25:18', 1, '2016-11-29 13:14:00', NULL, '2016-09-26 17:25:18', '0000-00-00 00:00:00', 19, 20),
(10, 'Publicaciones', 'index.php/publicaciones-score-bolivia', 1, '2/4', 8, 1, 0, '2016-09-26 17:25:52', 1, '2016-11-29 13:14:00', NULL, '2016-09-26 17:25:52', '0000-00-00 00:00:00', 21, 22),
(20, 'NOTICIAS Y CAPACITACIÓN', 'javascript:;', 2, '2/3', 1, 1, 1, '2017-01-18 13:51:35', 1, '2017-02-11 10:01:40', 1, '2017-02-11 10:01:40', '0000-00-00 00:00:00', 24, 29),
(14, 'CONTÁCTANOS', 'index.php/contacto-maestras-constructoras', 1, '2/5', 1, 1, 1, '2016-09-26 17:30:39', 1, '2017-02-11 10:01:59', 1, '2017-02-11 10:01:59', '0000-00-00 00:00:00', 30, 31),
(25, 'Quiénes Somos', 'index.php/pagina/quienes-somos', 1, '1/7', 23, 1, 1, '2017-02-07 14:26:52', 1, '2017-02-11 10:00:49', NULL, '2017-02-07 14:26:52', '0000-00-00 00:00:00', 5, 6),
(26, 'Cómo funciona', 'index.php/pagina/como-funciona', 1, '1/8', 23, 1, 1, '2017-02-07 14:27:23', 1, '2017-02-11 10:00:49', 1, '2017-02-07 14:27:41', '0000-00-00 00:00:00', 7, 8),
(24, 'Equidad de género en el sector', 'index.php/informacion/3', 1, '2/14', 3, 1, 1, '2017-02-07 14:11:43', 1, '2017-02-20 17:13:21', 1, '2017-02-20 17:13:21', '0000-00-00 00:00:00', 11, 12),
(23, 'ACERCA DE LA PLATAFORMA', 'javascript:;', 2, '', 1, 1, 1, '2017-02-07 14:06:51', 1, '2017-02-11 10:00:49', 1, '2017-02-11 10:00:49', '0000-00-00 00:00:00', 4, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT '',
  `modulo` text,
  `contenido` text,
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id`, `titulo`, `modulo`, `contenido`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'Pie de página', 'mod_pie', '<div class="container">\r\n<div class="row footer-widgets"><!-- Start Subscribe & Social Links Widget -->\r\n<div class="col-md-3 col-xs-12">\r\n<div class="footer-widget social-widget">\r\n<p><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_maestras_final_7_blancov.png" style="width: 176px; height: 66px;" /></p>\r\n\r\n<ul class="social-icons">\r\n	<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>\r\n	<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>\r\n	<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li>\r\n	<li><a class="instgram" href="#"><i class="fa fa-instagram"></i></a></li>\r\n	<li><a class="vimeo" href="#"><i class="fa fa-vimeo-square"></i></a></li>\r\n	<li><a class="skype" href="#"><i class="fa fa-skype"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Subscribe & Social Links Widget --><!-- Start Twitter Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget twitter-widget">\r\n<h4>RECURSOS</h4>\r\n\r\n<p><a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/quienes-somos" style="color: white;">Qui&eacute;nes Somos</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/como-funciona" style="color: white;">C&oacute;mo funciona</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/equidad-de-genero-en-el-sector" style="color: white;">Equidad de g&eacute;nero en el sector</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/norma-vigente" style="color: white;">Derechos laborales</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/salud-seguridad-trabajo" style="color: white;">Salud y Seguridad en el Trabajo</a></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Twitter Widget --><!-- Start Flickr Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget twitter-widget">\r\n<h4>DESARROLLO</h4>\r\n\r\n<p style="margin-bottom:10px;"><strong>Esta plataforma fue desarrollada con el apoyo de la Organizaci&oacute;n Internacional del Trabajo</strong></p>\r\n\r\n<p><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo-OIT-Blanco-90H.png" style="width: 106px; height: 45px;" /></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Flickr Widget --><!-- Start Contact Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget contact-widget">\r\n<h4>CONT&Aacute;CTANOS</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="width: 90px;" valign="top"><span><i class="fa fa-phone" style="margin-right: 0.8rem;"></i>Tel&eacute;fono:</span></td>\r\n			<td>&nbsp;(591) 2423134 - 2423139</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top"><span><i class="fa fa-envelope" style="margin-right: 0.8rem;"></i>Email:</span></td>\r\n			<td>&nbsp;caboco.bo@gmail.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top"><span><i class="fa  fa-map-marker" style="margin-right: 0.8rem;"></i>&nbsp;Direcci&oacute;n:</span></td>\r\n			<td>&nbsp;Av. Sanchez Lima 2557 - Torre Codes Piso 5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Contact Widget --></div>\r\n<!-- .row --><!-- Start Copyright -->\r\n\r\n<div class="copyright-section">\r\n<div class="row">\r\n<div class="col-md-6">\r\n<p>&copy; OIT Todos los derechos reservados - Desarrollado por <a href="http://formaempresas.com" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_formaempresas_blanco.png" style="width: 83px; height: 12px;" /></a></p>\r\n</div>\r\n<!--\r\n<div class="col-md-6">\r\n<ul class="footer-nav">\r\n	<li><a href="#">Sitemap</a></li>\r\n	<li><a href="#">Privacy Policy</a></li>\r\n	<li><a href="#">Contact</a></li>\r\n</ul>\r\n</div>\r\n--></div>\r\n</div>\r\n<!-- End Copyright --></div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-02-16 17:28:16', 1, '2017-02-16 17:28:16', '2016-09-13 10:35:07'),
(2, 'Auspiciadores', 'mod_auspiciantes', '<ul id="foo0">\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n  	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n  <li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n  <li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n</ul>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-02-17 17:36:54', 1, '2017-02-17 17:36:54', '0000-00-00 00:00:00'),
(3, 'Empresas', 'mod_auspiciadores', '<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/cepb.png" style="height: 110px; width: 270px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/asdi.jpg" style="width: 266px; height: 110px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/asomuc.jpg" style="width: 220px; height: 110px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/cob.png" style="width: 167px; height: 170px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gmlp.jpg" style="width: 187px; height: 140px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/cstc.png" style="width: 150px; height: 144px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/habitat.png" style="width: 152px; height: 170px;" /></div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-01-19 17:58:45', 1, '2017-01-19 17:58:45', '0000-00-00 00:00:00'),
(4, 'Score Global', 'mod_score_global', '<div class="contenido ng-scope">\r\n<div class="col-xs-12 col-md-6">\r\n<div class="score-content">\r\n<h3 style="padding-top: 20px;">Maestras constructoras</h3>\r\n\r\n<p>Maestras constructoras se implement&oacute; en m&aacute;s de&nbsp;810&nbsp;empresas en&nbsp;7&nbsp;pa&iacute;ses:</p>\r\n</div>\r\n\r\n<div class="score-content centered-parent">Resultados SCORE Global<br />\r\n(2009 - 2013)</div>\r\n</div>\r\n\r\n<div class="col-xs-12 col-md-6">\r\n<div class="score-content">\r\n<ul class="image">\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">3-4 VECES POR MES</span><br />\r\n				Reuniones de Equipos de Mejoramiento Empresarial (EME)</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">USD 3.000 Y 15.000</span><br />\r\n				Reducci&oacute;n de costos 2-3 meses despu&eacute;s de la formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">29% PROMEDIO</span><br />\r\n				Reducci&oacute;n de defectos</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">HASTA 22% MENOS</span><br />\r\n				Ausentismo laboral</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">3% AHORRO ENERG&Eacute;TICO (KwH)</span><br />\r\n				por cada unidad producida</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">15-50% Icremento en productividad 2,5</span><br />\r\n				meses despu&eacute;s del Taller de Formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">36%</span><br />\r\n				Reducci&oacute;n de accidentes</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-01-16 15:16:13', 1, '2017-01-16 15:16:13', '0000-00-00 00:00:00'),
(5, 'Escuelas de formación', 'mod_enlaces', '<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/logo_Desarrollo_Economico2.png" style="width: 222px; height: 70px; padding-top: 10px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/logo_OIT_azul_sin_letras.png" style="width: 109px; height: 90px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/LOGO_V3_blanco2.jpg" style="width: 181px; height: 100px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/RED_HABITAT.png" style="width: 89px; height: 100px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px; padding-top: 10px;" /></div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-02-22 14:34:07', 1, '2017-02-22 14:34:07', '2016-10-03 10:15:07'),
(6, 'Logotipo', 'mod_logotipo', 'logo_maestras_final_7.png', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-02-08 17:29:02', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_score`
--

CREATE TABLE `modulo_score` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT '',
  `orden` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo_score`
--

INSERT INTO `modulo_score` (`id`, `nombre`, `orden`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, 'Gestión de la cooperación en el lugar de trabajo', 1, 1, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Gestión de la calidad', 2, 1, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'Gestión ambiental', 3, 1, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 'Gestión de los recursos humanos', 4, 1, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, 'Gestión de la seguridad y salud en el trabajo', 5, 1, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `navegacion`
--

CREATE TABLE `navegacion` (
  `id` int(11) NOT NULL,
  `vista` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `navegacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `navegacion`
--

INSERT INTO `navegacion` (`id`, `vista`, `navegacion`, `creado`, `modificado`) VALUES
(1, 'usuarios', 'index.php/administrador/usuario', '0000-00-00 00:00:00', '2017-02-01 17:54:22'),
(2, 'noticias_generales', 'index.php/administrador/noticia/1', '0000-00-00 00:00:00', '2017-02-21 16:45:57'),
(3, 'paginas', 'index.php/administrador/pagina', '0000-00-00 00:00:00', '2017-02-20 17:03:52'),
(4, 'menus', 'index.php/administrador/menu', '0000-00-00 00:00:00', '2017-02-20 17:24:31'),
(5, 'formadores', 'index.php/administrador/formador', '0000-00-00 00:00:00', '2017-02-06 16:17:20'),
(6, 'testimonios', 'index.php/administrador/testimonio', '0000-00-00 00:00:00', '2016-11-10 12:25:20'),
(7, 'publicaciones', 'index.php/administrador/publicacion', '0000-00-00 00:00:00', '2017-01-26 15:08:45'),
(8, 'contactos', 'index.php/administrador/contacto', '0000-00-00 00:00:00', '2017-02-10 14:56:00'),
(9, 'slides', 'index.php/administrador/slide', '0000-00-00 00:00:00', '2017-02-17 12:17:46'),
(10, 'bibliotecas', 'index.php/intranet/biblioteca', '0000-00-00 00:00:00', '2016-10-26 10:57:39'),
(11, 'biblioteca_categorias', 'index.php/intranet/biblioteca_categoria?search_in=biblioteca_id&search_key=1', '0000-00-00 00:00:00', '2016-10-26 18:57:17'),
(12, 'biblioteca_documentos', 'index.php/intranet/biblioteca_documento', '0000-00-00 00:00:00', '2016-10-26 11:56:10'),
(13, 'paginas_predisenadas', 'index.php/administrador/pagina_predisenada', '0000-00-00 00:00:00', '2017-02-20 17:39:34'),
(16, 'inscripcion_empresas', 'index.php/intranet/inscripcion_empresa', '0000-00-00 00:00:00', '2016-10-27 10:12:00'),
(14, 'convocatoria_empresas', 'index.php/intranet/convocatoria_empresa', '0000-00-00 00:00:00', '2016-10-26 17:20:10'),
(15, 'convocatoria_formadores', 'index.php/intranet/convocatoria_formador', '0000-00-00 00:00:00', '2016-10-26 12:09:43'),
(17, 'especialistas', 'index.php/administrador/especialista', '0000-00-00 00:00:00', '2017-02-16 13:21:49'),
(18, 'especialidades', 'index.php/administrador/especialidad', '0000-00-00 00:00:00', '2017-02-04 12:36:22'),
(19, 'noticias_capacitacion', 'index.php/administrador/noticia/2', '0000-00-00 00:00:00', '2017-02-22 14:15:20'),
(20, 'informacion_equidad', 'index.php/administrador/informacion/3', '0000-00-00 00:00:00', '2017-02-21 16:32:18'),
(21, 'informacion_derecho', 'index.php/administrador/informacion/4', '0000-00-00 00:00:00', '2017-02-21 16:43:18'),
(22, 'informacion_salud', 'index.php/administrador/informacion/5', '0000-00-00 00:00:00', '2017-02-22 14:09:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT '',
  `resumen` text,
  `contenido` text,
  `url_video` text,
  `url_audio` text,
  `tipo_contenido` varchar(255) DEFAULT NULL,
  `fuente` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id`, `titulo`, `resumen`, `contenido`, `url_video`, `url_audio`, `tipo_contenido`, `fuente`, `url`, `imagen`, `thumb`, `id_grupo`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'Mauris general molestie purus quis metus dictum, quis bibendum massa sollicitudin', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus sodales lacus vel accumsan. Nullam sit amet suscipit orci, eget ultrices arcu.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', NULL, NULL, 'texto', 'OIT', '', 'noti_1.jpg', 'noti_1_thumb.jpg', 1, 1, 0, '2016-09-23 16:58:53', 1, '2016-09-23 16:58:53', NULL, '2016-09-23 16:58:53', '0000-00-00 00:00:00'),
(2, 'Curabitur general quis dui molestie, pretium felis placerat, accumsan nisi', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', NULL, NULL, 'texto', 'OIT', '', 'noti_2.jpg', 'noti_2_thumb.jpg', 1, 1, 0, '2016-09-23 17:01:03', 1, '2016-09-23 17:08:27', 17, '2016-09-23 17:08:27', '0000-00-00 00:00:00'),
(4, 'Integer general dapibus lorem vel nibh volutpat mollis', '<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', NULL, NULL, 'texto', 'OIT', '', 'noti_4.jpg', 'noti_4_thumb.jpg', 1, 1, 0, '2016-09-23 17:09:43', 1, '2016-09-23 17:09:43', NULL, '2016-09-23 17:09:43', '0000-00-00 00:00:00'),
(3, 'Integer general condimentum arcu vel lacinia pretium', '<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', NULL, NULL, 'texto', 'OIT', '', 'noti_3.jpg', 'noti_3_thumb.jpg', 1, 1, 0, '2016-09-23 17:07:00', 1, '2016-09-23 17:07:00', NULL, '2016-09-23 17:07:00', '0000-00-00 00:00:00'),
(5, 'Cras general vestibulum enim a velit elementum, sit amet facilisis sem malesuada', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', NULL, NULL, 'texto', 'OIT', '', 'noti_5.jpg', 'noti_5_thumb.jpg', 1, 1, 0, '2016-09-23 17:11:04', 1, '2016-09-23 17:11:04', NULL, '2016-09-23 17:11:04', '0000-00-00 00:00:00'),
(6, 'Vestibulum general aliquet erat sit amet tortor posuere, id lacinia sapien varius', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus sodales lacus vel accumsan. Nullam sit amet suscipit orci, eget ultrices arcu.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', NULL, NULL, 'texto', 'OIT', '', 'noti_61.jpg', 'noti_61_thumb.jpg', 1, 1, 0, '2016-09-23 17:12:03', 1, '2016-09-23 17:13:40', 17, '2016-09-23 17:13:40', '0000-00-00 00:00:00'),
(7, 'Aenean general interdum ipsum sit amet rutrum pharetra', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', NULL, NULL, 'texto', 'OIT', '', 'noti_7.jpg', 'noti_7_thumb.jpg', 1, 1, 0, '2016-09-23 17:15:31', 1, '2016-10-07 14:45:57', NULL, '2016-09-23 17:15:31', '0000-00-00 00:00:00'),
(8, 'Nullam general tincidunt urna nec tellus consequat, non rutrum tellus mattis', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', NULL, NULL, 'texto', 'OIT', 'http://google.com', 'noticia_default.png', 'noticia_default_thumb.jpg', 1, 1, 0, '2016-09-23 17:16:54', 1, '2017-01-30 16:30:29', 1, '2017-01-30 16:30:29', '0000-00-00 00:00:00'),
(9, 'Praesent general ut orci ut diam porta iaculis sit amet ut leo.', '<p>Sed non quam lacus. Praesent viverra, felis eget convallis sagittis, sem nisi consequat metus, vel tempus eros mauris ut mi. Etiam blandit risus fermentum, tristique ipsum vitae, commodo magna.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce massa tellus, viverra sed risus at, gravida maximus orci. Vivamus suscipit, metus cursus pulvinar tristique, magna magna laoreet sapien, eget ultrices dolor sapien vitae eros. Suspendisse potenti. Fusce convallis lorem eu augue sodales mattis. Sed posuere sagittis purus eget sodales. Vestibulum tincidunt sagittis iaculis. Maecenas quis neque dui. Integer placerat, purus ac iaculis posuere, quam sapien tempor urna, ut facilisis nunc nunc eget tellus. Maecenas vel sodales tortor. Proin suscipit aliquet orci a congue. Suspendisse eleifend pellentesque justo, ac accumsan urna mollis in.</p>\r\n\r\n<p>Nulla elementum purus eget turpis pulvinar, eu mollis nunc scelerisque. Quisque imperdiet lacus id sagittis dignissim. Aliquam pretium vehicula sapien id vulputate. Aenean cursus, turpis in cursus cursus, ipsum risus placerat neque, et bibendum justo tortor sed odio. Mauris eu commodo erat. Curabitur porta in nunc id laoreet. In molestie velit orci. Donec malesuada quam mauris, vel porttitor nunc pretium a. Proin at dignissim est, ac posuere nulla. Praesent et sodales massa.</p>\r\n\r\n<p>Cras commodo dignissim erat, vitae tincidunt ante pharetra nec. Proin ut pulvinar mauris. Morbi ullamcorper, massa eget malesuada porttitor, quam leo finibus dui, sollicitudin viverra diam metus eget felis. Nullam at metus risus. Nulla quam nunc, tempor et consectetur vel, sollicitudin quis justo. Etiam at finibus ipsum, pulvinar luctus arcu. Mauris lacinia, magna congue vehicula maximus, diam lectus finibus arcu, quis placerat felis magna non augue. Integer hendrerit arcu sit amet nibh hendrerit auctor. Sed rutrum risus in lectus pretium venenatis.</p>\r\n\r\n<p>Etiam sodales, risus non sagittis ornare, ipsum purus finibus leo, nec auctor metus eros ut nisi. Phasellus vel diam ac erat dignissim molestie a sit amet justo. Praesent a purus ut nulla viverra faucibus a ultrices dui. Nulla non sodales sapien, eu dictum magna. Aenean magna mauris, molestie in est ac, cursus rhoncus risus. Vivamus vel nulla luctus, iaculis mauris sed, malesuada elit. Curabitur non ullamcorper erat, in congue felis. Cras non sapien nibh. Nunc ac nulla sit amet lacus accumsan rutrum vel in mi. Nunc enim ante, vestibulum et blandit eget, porta id massa. Aliquam lacinia mollis magna, non mollis turpis egestas et. Phasellus vitae efficitur tellus.</p>\r\n\r\n<p>Cras molestie mi et odio pulvinar, nec ornare nisl fermentum. Fusce nulla ligula, placerat at venenatis volutpat, porttitor nec erat. Nullam ac orci a ante rutrum hendrerit. Duis sit amet placerat nibh. Cras dui eros, finibus at tempor eget, facilisis a quam. Suspendisse metus felis, sodales a ligula ut, viverra fringilla justo. Etiam ornare odio in finibus mollis. Fusce ultricies ornare pellentesque. Nam gravida nunc vitae eros porta suscipit. Etiam dui arcu, malesuada eget porttitor et, elementum vel enim. Ut porttitor magna sed purus sollicitudin, id malesuada libero pellentesque. Curabitur purus dui, aliquam eget porttitor sed, facilisis quis tellus. Nullam laoreet ut urna sit amet pretium.</p>\r\n\r\n<p>Sed non quam lacus. Praesent viverra, felis eget convallis sagittis, sem nisi consequat metus, vel tempus eros mauris ut mi. Etiam blandit risus fermentum, tristique ipsum vitae, commodo magna. Ut sagittis, turpis in maximus auctor, nunc neque volutpat ligula, a hendrerit enim ligula id risus. Aliquam vulputate posuere maximus. Praesent gravida enim sed metus malesuada luctus. Nunc quis sollicitudin libero. Aenean nec sollicitudin elit. Morbi vitae ornare nibh, eget gravida justo. In hac habitasse platea dictumst. Suspendisse vestibulum condimentum ligula. Donec metus massa, feugiat eu sodales ut, molestie pharetra ex. Quisque at nisi sit amet sapien fringilla malesuada. Nam ipsum tellus, suscipit quis sapien sit amet, scelerisque pretium ex. Duis posuere dictum auctor. Quisque a nisi sagittis, consequat diam et, tempus lorem.</p>\r\n\r\n<p>Donec non massa felis. Praesent ut orci ut diam porta iaculis sit amet ut leo. Etiam nulla massa, mattis in nunc ut, interdum ultrices nulla. Integer non orci ipsum. Proin tempor erat et placerat faucibus. Phasellus laoreet lacus vel quam efficitur condimentum. Pellentesque non arcu risus. Morbi scelerisque rutrum ultricies. Nulla dolor sem, sollicitudin at lorem tincidunt, varius egestas eros. Nam sagittis at odio at auctor. Suspendisse euismod tellus a enim vehicula, ut pellentesque mauris iaculis.</p>\r\n\r\n<p>In sit amet elementum tellus. Mauris id ullamcorper felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque ac lorem est. Cras semper enim dapibus metus faucibus vestibulum. Proin quis dapibus nisl. Pellentesque eros lectus, laoreet in rhoncus id, euismod ut ex. In tincidunt a leo tincidunt fermentum. Ut eget tortor tempus, efficitur enim vel, congue nisl. Ut lacinia tellus nec nibh eleifend porta. Aliquam ac commodo magna. Sed sollicitudin congue fringilla.</p>\r\n\r\n<p>Donec blandit condimentum quam at euismod. In pulvinar purus sed ipsum egestas bibendum. Phasellus tincidunt sit amet ex nec pretium. Nunc ultrices dapibus nibh vel sollicitudin. Maecenas lacinia ante in mi condimentum semper. Morbi magna arcu, elementum eget iaculis malesuada, faucibus quis orci. Nulla facilisi. Ut sit amet tellus a velit pharetra eleifend. Sed sit amet risus ac enim facilisis aliquam non ac lacus. Maecenas ornare, enim quis auctor mattis, diam ex malesuada odio, quis venenatis ante tellus non arcu. Donec sapien odio, varius a libero ut, dictum vestibulum leo. Mauris a sapien in magna tempor sollicitudin a nec lectus. Nulla in metus eu sem suscipit eleifend. Vestibulum sed diam eget elit ultricies finibus. Etiam venenatis id neque ac faucibus.</p>\r\n\r\n<p>Sed porta tincidunt turpis volutpat lacinia. Nam ornare, magna sed commodo sollicitudin, nulla nunc consectetur massa, in convallis dui ex a quam. Mauris molestie sapien mauris, a faucibus nulla auctor tempor. Nam viverra tortor at risus placerat lacinia. Vestibulum nec blandit libero. Duis pretium ornare nisl, eu pretium justo. Integer sollicitudin purus sit amet metus accumsan, sit amet lobortis massa cursus. Cras eu nibh et metus faucibus cursus. Suspendisse mollis elementum mi sit amet volutpat. Donec pellentesque fringilla massa, id aliquet dolor pulvinar et. Suspendisse eget dignissim leo, sit amet varius arcu. Curabitur non arcu et leo cursus dapibus et et nulla.</p>', NULL, NULL, 'texto', '', '', 'seguridad.jpg', 'seguridad_thumb.jpg', 1, 1, 0, '2017-01-17 18:08:50', 1, '2017-01-17 18:08:50', NULL, '2017-01-17 18:08:50', '0000-00-00 00:00:00'),
(10, 'Maecenas convallis vel massa sed dignissim.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ante ex, porta nec rutrum vitae, cursus ac purus. Curabitur ultricies, risus vitae elementum semper, enim lacus vehicula nisi, venenatis dapibus libero augue ut risus. Donec maximus augue sed maximus malesuada. Quisque sed interdum odio.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ante ex, porta nec rutrum vitae, cursus ac purus. Curabitur ultricies, risus vitae elementum semper, enim lacus vehicula nisi, venenatis dapibus libero augue ut risus. Donec maximus augue sed maximus malesuada. Quisque sed interdum odio. Phasellus tristique enim id velit efficitur gravida. Maecenas scelerisque dui leo, nec ornare massa malesuada sed. Mauris id pellentesque nulla. In at fringilla nulla, vitae posuere ex. Ut id est sed orci tempus dapibus. Donec vehicula id leo ac consequat. Vivamus turpis lectus, tincidunt scelerisque suscipit sed, efficitur vitae ante.</p>\r\n\r\n<p>Curabitur feugiat lacus quis justo sollicitudin accumsan. Vestibulum auctor eget elit eget bibendum. Nam vel aliquet odio. Sed lectus ante, porttitor quis augue sagittis, malesuada elementum justo. Morbi sem orci, posuere eu blandit in, scelerisque et ligula. Proin euismod nisl a aliquam lacinia. Etiam sagittis consectetur consectetur. Vestibulum viverra, mauris congue viverra volutpat, nibh tortor tempor risus, et vehicula risus ante at mi.</p>\r\n\r\n<p>Mauris scelerisque lacinia neque. Ut interdum nunc ut bibendum aliquet. Vivamus egestas leo non ligula malesuada efficitur. Nullam ut eleifend massa, sed efficitur risus. Nullam eget magna vulputate metus porta lobortis et mollis ipsum. Praesent egestas velit ac metus feugiat consectetur. Mauris sed metus elementum, varius nulla id, finibus quam. Cras risus velit, blandit nec pharetra et, imperdiet sed nisi. Integer et ante a enim luctus tristique. Mauris id diam ut ex porta varius.</p>\r\n\r\n<p>Integer tristique, elit sed hendrerit feugiat, arcu turpis suscipit mauris, id euismod lorem sem vel urna. Etiam dignissim lorem at dolor congue tincidunt. Phasellus purus magna, laoreet ac arcu sit amet, varius condimentum sem. Sed tempus, mi eget condimentum pulvinar, mi nibh ultricies justo, at semper neque urna at risus. Praesent vitae imperdiet mi. Vestibulum ac orci ac ante rhoncus efficitur quis at urna. In hac habitasse platea dictumst. Aliquam justo ex, ultrices vel hendrerit vitae, congue quis nisi. Fusce condimentum augue convallis nibh eleifend blandit. Vivamus suscipit, magna non hendrerit tempus, tellus nibh facilisis magna, at sollicitudin lorem enim sit amet enim. Aenean est orci, hendrerit at posuere eu, fringilla tempus sapien. Donec elementum pellentesque pulvinar. Integer vitae metus lorem.</p>\r\n\r\n<p>Morbi quis diam sed purus auctor vestibulum. Etiam feugiat tellus id fringilla consequat. Aliquam justo lectus, posuere in massa quis, placerat dignissim ligula. Etiam non viverra ligula, ut faucibus lectus. Proin iaculis a ligula a pellentesque. Nullam ac sapien rutrum nunc gravida mattis. Curabitur metus purus, vestibulum at erat at, congue accumsan odio. Cras eget lectus turpis. Vestibulum quis lectus non augue vulputate lobortis.</p>\r\n\r\n<p>Donec varius, urna at mollis consectetur, dolor ipsum volutpat quam, a eleifend arcu libero eget orci. Quisque vel mi sed ligula luctus auctor id at nisl. Duis eu congue metus, et cursus felis. Sed in ornare nunc. Fusce augue nunc, mattis in aliquet vitae, dignissim vel lacus. Ut interdum mattis nisi, ut posuere tortor finibus sed. In fermentum elit vitae sapien condimentum, non malesuada diam gravida. Aliquam vehicula, lacus sed maximus varius, mi tellus convallis ligula, rhoncus pellentesque velit est ac metus. Mauris a ante vestibulum, ultrices enim eget, molestie augue. Nam tellus ipsum, tempus in massa vitae, interdum maximus diam. Mauris dignissim sapien consequat felis dictum, gravida pellentesque dui gravida. Aenean tellus ex, hendrerit ut semper non, auctor sollicitudin risus. Nullam tincidunt, ante quis laoreet tempus, sapien sem interdum tortor, in pulvinar dui justo in elit.</p>\r\n\r\n<p>Nulla euismod turpis ut commodo tempor. Maecenas convallis vel massa sed dignissim. Nullam enim leo, viverra non ultricies vitae, volutpat vitae ipsum. Nulla sapien quam, semper eu libero eu, accumsan bibendum purus. Nullam sagittis nunc eget ligula aliquet dignissim. Nunc sollicitudin tincidunt quam vel vehicula. Quisque tristique metus quis malesuada interdum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sollicitudin lorem id dolor facilisis, id auctor risus scelerisque. Nam quis felis felis. Donec tempus maximus mauris, ut aliquet nunc aliquam quis. Aliquam ullamcorper nulla vitae neque imperdiet mollis.</p>\r\n\r\n<p>Aliquam lacinia eu tortor id placerat. Duis sed ante mi. Morbi id fermentum nisi. In neque metus, volutpat at est vel, ultrices dapibus arcu. Aliquam ultricies elit id semper cursus. Sed cursus nisl quis nunc tempor, ut rhoncus orci venenatis. Mauris tellus mauris, tempor vel ultrices quis, tempus et justo. Pellentesque tempor in ipsum id euismod.</p>\r\n\r\n<p>Aliquam in venenatis mi. Nulla et imperdiet sapien. Proin ac elementum velit. Duis scelerisque ac arcu non aliquet. Suspendisse tincidunt vulputate semper. Curabitur interdum magna neque, id laoreet eros scelerisque in. Maecenas placerat, est ac viverra finibus, nunc tortor tempus massa, ac dignissim mauris turpis venenatis mi.</p>\r\n\r\n<p>Ut enim urna, tristique ut consectetur quis, cursus volutpat sem. Etiam euismod sapien at ante ullamcorper gravida. Aliquam eros libero, ullamcorper id lobortis vitae, viverra eget diam. Morbi mattis magna orci, at rutrum nibh sagittis maximus. Donec felis tortor, pellentesque vitae nulla sit amet, lobortis malesuada ipsum. Vestibulum vitae convallis justo. Vestibulum auctor, ante at mollis dignissim, neque ex malesuada velit, id dictum neque ligula quis mauris. Maecenas eleifend at nulla in rutrum. Nulla id blandit quam, sed volutpat ex. Suspendisse aliquet arcu eu leo volutpat, eu ultrices neque sollicitudin.</p>', NULL, NULL, 'texto', '', '', 'estadistica.jpg', 'estadistica_thumb.jpg', 1, 1, 0, '2017-01-17 18:13:47', 1, '2017-01-17 18:13:47', NULL, '2017-01-17 18:13:47', '0000-00-00 00:00:00'),
(11, 'Diálogo tripartito facilita una nueva normativa en Bolivia para proteger la salud de los trabajadores de la construcción', '<p>La aprobaci&oacute;n de este decreto se dio a trav&eacute;s de la implementaci&oacute;n del Convenio n&uacute;m. 167 de la OIT referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.</p>', '<p>La seguridad y salud para los trabajadores de la construcci&oacute;n constituye una creciente preocupaci&oacute;n en Bolivia que fue abordada por su Ministerio de Trabajo, Empleo y Previsi&oacute;n Social, la Confederaci&oacute;n Sindical de Trabajadores de la Construcci&oacute;n de Bolivia y la C&aacute;mara Boliviana de la Construcci&oacute;n, quienes mediante un proceso de di&aacute;logo tripartito, aprobaron el pasado 5 de octubre el decreto que reglamenta la Ley N&ordm; 545 de ratificaci&oacute;n del Convenio n&uacute;m. 167 de la Organizaci&oacute;n Internacional del Trabajo (OIT) referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.<br />\r\n<br />\r\nEste reglamento establece que se deben tomar todas las medidas necesarias con el fin de proteger la vida y la salud de los trabajadores. Entre las actividades clasificadas dentro del rubro de la construcci&oacute;n se encuentran la edificaci&oacute;n, las excavaciones, la construcci&oacute;n de carreteras, las obras viales, las transformaciones estructurales, la renovaci&oacute;n, el mantenimiento, la reparaci&oacute;n, las labores de limpieza y pintura, y la demolici&oacute;n de todo tipo de edificaciones.&nbsp;<br />\r\n<br />\r\nAsimismo, la reglamentaci&oacute;n trata diversos puntos como ser la prevenci&oacute;n y protecci&oacute;n contra incendios, los tipos de maquinaria, equipos y herramientas, los trabajos en altura, de demolici&oacute;n, las excavaciones, la iluminaci&oacute;n y el ruido ocupacional. Finalmente, la norma dispone que se deben garantizar las condiciones apropiadas de seguridad y salud en el lugar de trabajo para aquellos trabajadores catalogados como &ldquo;cuenta propia&rdquo;.&nbsp;<br />\r\n<br />\r\nCabe resaltar que a pesar que el sector construcci&oacute;n experiment&oacute; un crecimiento sostenido en la &uacute;ltima d&eacute;cada en Bolivia atrayendo el 8,8% de la fuerza laboral del pa&iacute;s, no contaba con regulaciones espec&iacute;ficas que garantizaran la seguridad y salud de los trabajadores.&nbsp;<br />\r\n<br />\r\nFinalmente, es necesario recordar que la OIT tiene entre sus mandatos la construcci&oacute;n de condiciones que propicien el desarrollo de un di&aacute;logo social de manera sostenible, para impulsar la generaci&oacute;n de empleo digno y sostenible; la difusi&oacute;n y respeto de los derechos fundamentales en el trabajo y el tratamiento del conflicto a trav&eacute;s del dialogo.</p>', NULL, NULL, 'texto', 'OIT', '', 'n13.png', 'n13_thumb.png', 1, 1, 0, '2017-01-18 15:05:24', 1, '2017-01-18 16:07:25', 1, '2017-01-18 16:07:25', '0000-00-00 00:00:00'),
(12, 'Mujeres del sector de la construcción en Bolivia se forman en Derechos Fundamentales y Normas Internacionales del Trabajo', '<p>El 10 de febrero de 2015, el Estado Plurinacional de Bolivia ratific&oacute; el Convenio 167 de la OIT sobre seguridad y salud en el sector de la construcci&oacute;n. En este marco, la OIT promueve un proyecto que cuenta con el financiamiento de la Agencia Sueca de Desarrollo Internacional (ASDI) para la gesti&oacute;n 2016-2017. El proyecto denominado &ldquo;Construyendo Igualdad&rdquo; fue presentado el d&iacute;a 20 de mayo en una mesa multipartita conformada por los actores m&aacute;s importantes del sector de la construcci&oacute;n en Bolivia. Este proyecto tiene como objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo.</p>', '<p>Con el apoyo de la mesa multipartita se consensuaron y validaron diferentes actividades del proyecto, definiendo varias l&iacute;neas de acci&oacute;n. En seguimiento a estos acuerdos, el 21 de julio de 2016 se realiz&oacute; una formaci&oacute;n sobre derechos fundamentales del trabajo a 20 representantes de la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) y a 10 mujeres miembros de la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB).<br />\r\n<br />\r\nLa formaci&oacute;n estuvo a cargo de un asesor legal de la Central Obrera Boliviana (COB), quien abord&oacute; dos grandes temas, las Normas Internacionales del Trabajo y la Normativa Nacional. Dentro de la primera tem&aacute;tica el facilitador explic&oacute; detalladamente las caracter&iacute;sticas del sistema y el control normativo de la OIT y expuso la relaci&oacute;n entre las Normas Internacionales de Trabajo y la legislaci&oacute;n boliviana, tambi&eacute;n habl&oacute; sobre la importancia de la ratificaci&oacute;n del Convenio 167 de la OIT sobre seguridad y salud en la construcci&oacute;n.<br />\r\n<br />\r\nPor otro lado, dentro de la tem&aacute;tica de la normativa boliviana, se abordaron los principales principios del derecho del trabajo, como ser el principio protectivo, el principio de irrenunciabilidad, el principio de inversi&oacute;n de la prueba, el principio de primac&iacute;a de la realidad y el principio de la no discriminaci&oacute;n laboral. Adem&aacute;s, se expusieron los contenidos de la nueva legislaci&oacute;n laboral en Bolivia enfoc&aacute;ndose principalmente en la Ley General del Trabajo.<br />\r\n<br />\r\nAl finalizar el curso, las participantes reconocieron la importancia de las tem&aacute;ticas expuestas ya que muchas de ellas no estaban familiarizadas con las mismas. Se identificaron muchas necesidades que tienen relaci&oacute;n con la falta de seguridad contractual y la falta de conocimiento de las normas internacionales del trabajo. La mayor&iacute;a de las mujeres expresaron su preocupaci&oacute;n frente a la falta de estabilidad laboral debido al incumplimiento de las normativas vigentes.&nbsp;</p>', NULL, NULL, 'texto', 'OIT', '', 'n2.jpg', 'n2_thumb.jpg', 1, 1, 0, '2017-01-18 15:38:09', 1, '2017-01-18 15:38:09', NULL, '2017-01-18 15:38:09', '0000-00-00 00:00:00');
INSERT INTO `noticia` (`id`, `titulo`, `resumen`, `contenido`, `url_video`, `url_audio`, `tipo_contenido`, `fuente`, `url`, `imagen`, `thumb`, `id_grupo`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(13, 'La OIT despierta el interés institucional por mejorar las condiciones de trabajo de las mujeres constructoras', '<p>Durante los &uacute;ltimos a&ntilde;os Bolivia experiment&oacute; un importante crecimiento en el sector de la construcci&oacute;n que signific&oacute; una mayor demanda de mano de obra, la cual se presenta como una alternativa para las mujeres que necesitan incrementar sus ingresos. En esta coyuntura, la Oficina de la OIT para los Pa&iacute;ses Andinos, junto a la Agencia Sueca de Desarrollo Internacional (ASDI) y Red H&aacute;bitat, inici&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo; con la convocatoria a una mesa multipartita en la ciudad de La Paz.</p>', '<p>Desde el 2009 el sector de la construcci&oacute;n en Bolivia presenta un importante crecimiento, entre el 8 y 11% anual, situ&aacute;ndose como el segundo de mayor contribuci&oacute;n al PIB nacional luego de los hidrocarburos. Este boom de la construcci&oacute;n ha determinado un incremento de la demanda de mano de obra, donde las mujeres incursionan de forma sostenida. Si bien en la &uacute;ltima d&eacute;cada en Bolivia las mujeres irrumpieron en mercados de trabajo tradicionalmente monopolizados por los hombres, este proceso contin&uacute;a enfrent&aacute;ndose a la discriminaci&oacute;n por raz&oacute;n de g&eacute;nero, de raza y a la desigualdad en la remuneraci&oacute;n, situaci&oacute;n que es especialmente profunda en el caso de aquellas mujeres que actualmente se dedican a la construcci&oacute;n.<br />\r\n<br />\r\nConsciente de esta problem&aacute;tica, y siguiendo el trabajo iniciado con la ratificaci&oacute;n del Convenio n&uacute;m. 167 de la OIT &ldquo;Convenio sobre seguridad y salud en la construcci&oacute;n&rdquo;, la Oficina de la OIT para los Pa&iacute;ses Andinos present&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo;, el cual tiene por objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo, mejorando sus condiciones de vida, empoder&aacute;ndolas en sus derechos fundamentales del trabajo y logrando su emancipaci&oacute;n econ&oacute;mica. Para llegar a esta meta, la OIT organiz&oacute; una mesa multipartita para presentar dicha iniciativa y generar las bases de trabajo conjunto que direccionen y apoyen la ejecuci&oacute;n de las actividades.&nbsp;<br />\r\n<br />\r\nLas instituciones que asistieron a la mesa multipartita fueron: la Central Obrera Boliviana (COB), la Confederaci&oacute;n de Empresarios Privados de Bolivia (CEPB), la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB), la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC), el Gobierno Aut&oacute;nomo Municipal de La Paz (GAMLP), el Gobierno Aut&oacute;nomo Municipal de El Alto (GAMEA), la ONG Red H&aacute;bitat, y la Embajada de Suecia,&nbsp;<br />\r\n<br />\r\nEl encuentro se inici&oacute; con la descripci&oacute;n de la problem&aacute;tica del sector, acorde a los datos estad&iacute;sticos nacionales disponibles, y con la presentaci&oacute;n del proyecto de la OIT. Al finalizar, y luego de un amplio debate, los asistentes se&ntilde;alaron los puntos en los cuales sus organizaciones podr&iacute;an brindar apoyo al proyecto, por ejemplo desde el lado de los Gobiernos Municipales, incluir las iniciativas empresariales de las mujeres constructoras en las incubadoras de empresas y en las ferias municipales; coordinar las actividades de formaci&oacute;n y apoyar en la elaboraci&oacute;n de normativas municipales para asegurar una inclusi&oacute;n digna de las mujeres constructoras. Desde el lado del gremio empresarial se comprometieron en trabajar en aspectos de formaci&oacute;n, certificaci&oacute;n de los procesos en curso, y trabajar en normativas y cultura de seguridad y salud en el lugar del trabajo. Las organizaciones de trabajadores, por su parte, se comprometieron a socializar y coordinar las actividades con sus bases. Finalmente, todos los participantes manifestaron su inter&eacute;s en participar en el seguimiento del proyecto, confirmando su apoyo a las siguientes mesas multipartitas que ser&aacute;n convocadas por la OIT para evaluar el avance de las intervenciones.</p>', NULL, NULL, 'texto', 'OIT', '', 'n3.jpg', 'n3_thumb.jpg', 1, 1, 0, '2017-01-18 16:02:42', 1, '2017-01-18 16:02:42', NULL, '2017-01-18 16:02:42', '0000-00-00 00:00:00'),
(32, 'Construyendo Igualdad en el sector de las mujeres trabajadoras en construcción en Bolivia', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', 'https://www.youtube.com/watch?v=TGaRmkKyQok', NULL, 'video', '', '', 'https://img.youtube.com/vi/TGaRmkKyQok/0.jpg', 'noticia_default_thumb.jpg', 1, 1, 0, '2017-01-28 13:08:37', 1, '2017-02-18 11:10:54', NULL, '2017-01-28 13:08:37', '0000-00-00 00:00:00'),
(30, 'La OIT en apoyo a la mujer trabajadora de la construcción en Bolivia', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', 'https://www.youtube.com/watch?v=me5f216cp8M', NULL, 'video', 'OIT', '', 'https://img.youtube.com/vi/me5f216cp8M/0.jpg', 'noticia_default_thumb.jpg', 1, 1, 0, '2017-01-28 13:03:25', 1, '2017-01-28 13:03:25', NULL, '2017-01-28 13:03:25', '0000-00-00 00:00:00'),
(33, 'Mauris capacitacion molestie purus quis metus dictum, quis bibendum massa sollicitudin', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus sodales lacus vel accumsan. Nullam sit amet suscipit orci, eget ultrices arcu.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_1.jpg', 'noti_1_thumb.jpg', 2, 1, 0, '2016-09-23 16:58:53', 1, '2016-09-23 16:58:53', NULL, '2016-09-23 16:58:53', '0000-00-00 00:00:00'),
(34, 'Curabitur capacitacion quis dui molestie, pretium felis placerat, accumsan nisi', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_2.jpg', 'noti_2_thumb.jpg', 2, 1, 0, '2016-09-23 17:01:03', 1, '2016-09-23 17:08:27', 17, '2016-09-23 17:08:27', '0000-00-00 00:00:00'),
(35, 'Integer capacitacion dapibus lorem vel nibh volutpat mollis', '<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_4.jpg', 'noti_4_thumb.jpg', 2, 1, 0, '2016-09-23 17:09:43', 1, '2016-09-23 17:09:43', NULL, '2016-09-23 17:09:43', '0000-00-00 00:00:00'),
(36, 'Integer capacitacion condimentum arcu vel lacinia pretium', '<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_3.jpg', 'noti_3_thumb.jpg', 2, 1, 0, '2016-09-23 17:07:00', 1, '2016-09-23 17:07:00', NULL, '2016-09-23 17:07:00', '0000-00-00 00:00:00'),
(37, 'Cras capacitacion vestibulum enim a velit elementum, sit amet facilisis sem malesuada', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_5.jpg', 'noti_5_thumb.jpg', 2, 1, 0, '2016-09-23 17:11:04', 1, '2016-09-23 17:11:04', NULL, '2016-09-23 17:11:04', '0000-00-00 00:00:00'),
(38, 'Vestibulum capacitacion aliquet erat sit amet tortor posuere, id lacinia sapien varius', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_61.jpg', 'noti_61_thumb.jpg', 2, 1, 0, '2016-09-23 17:12:03', 1, '2017-02-02 16:30:47', 1, '2017-01-30 16:31:07', '0000-00-00 00:00:00'),
(39, 'Aenean capacitacion interdum ipsum sit amet rutrum pharetra', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_7.jpg', 'noti_7_thumb.jpg', 2, 1, 0, '2016-09-23 17:15:31', 1, '2016-10-07 14:45:57', NULL, '2016-09-23 17:15:31', '0000-00-00 00:00:00'),
(40, 'Nullam capacitacion tincidunt urna nec tellus consequat, non rutrum tellus mattis', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque.&nbsp;Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', 'http://google.com', 'noti_8.jpg', 'noti_8_thumb.jpg', 2, 1, 0, '2016-09-23 17:16:54', 1, '2017-01-30 16:19:38', 1, '2017-01-30 16:19:38', '0000-00-00 00:00:00'),
(54, 'Pellentesque Derechos elementum, neque sed vehicula gravida', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus orci, malesuada eu condimentum id, auctor eget purus. Phasellus mattis urna scelerisque lacinia aliquam. Etiam iaculis dignissim maximus. Aenean non fringilla dui. Maecenas laoreet nunc accumsan, tincidunt felis a, mattis purus. Donec at quam magna. Nunc vel semper sapien. Integer molestie neque feugiat elementum hendrerit. Donec vulputate convallis gravida. Phasellus dapibus sapien id facilisis tempor. Vestibulum et risus sed sem placerat egestas id at felis.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus orci, malesuada eu condimentum id, auctor eget purus. Phasellus mattis urna scelerisque lacinia aliquam. Etiam iaculis dignissim maximus. Aenean non fringilla dui. Maecenas laoreet nunc accumsan, tincidunt felis a, mattis purus. Donec at quam magna. Nunc vel semper sapien. Integer molestie neque feugiat elementum hendrerit. Donec vulputate convallis gravida. Phasellus dapibus sapien id facilisis tempor. Vestibulum et risus sed sem placerat egestas id at felis.</p>\r\n\r\n<p>Suspendisse interdum dignissim tincidunt. Curabitur consequat ac sapien id dapibus. Aliquam tempor tellus dui, eget dignissim dolor tristique et. Ut tristique felis in rhoncus volutpat. Mauris tincidunt lorem volutpat imperdiet sollicitudin. Curabitur interdum urna nisl, eu ultricies velit sodales eget. Proin vitae elementum urna. Proin vitae magna eget justo tincidunt viverra eu sed leo. Suspendisse mi arcu, fermentum sed posuere non, volutpat sed magna. Praesent ut feugiat nisi, sit amet mollis tellus. Pellentesque ut sem id lacus placerat pretium sit amet bibendum nisi. Sed lobortis enim sem, ac condimentum felis viverra nec.</p>\r\n\r\n<p>Pellentesque elementum, neque sed vehicula gravida, velit urna elementum nisi, vitae placerat nulla sapien nec dolor. Fusce quis est ac augue vehicula feugiat vel eu ligula. Aliquam elementum felis a turpis egestas sagittis. Nam ac pulvinar massa. Aenean condimentum mi tellus, sit amet placerat sem efficitur sit amet. Integer sed semper lectus. Integer convallis, mauris a sollicitudin dictum, velit neque rhoncus purus, id volutpat turpis leo sit amet leo. Maecenas quis ullamcorper quam. In ornare sem suscipit, rhoncus purus in, porttitor sapien. Donec tristique, urna sit amet volutpat mollis, ligula sapien consequat tortor, in suscipit nulla lacus eget nulla. Aliquam consectetur ex odio, sed ultrices arcu porttitor eget. Nam in est sem. Nunc dignissim sapien leo, sit amet porttitor eros ultrices vel. Curabitur ut velit tincidunt lectus tempus semper a eget justo. Mauris ultricies eleifend metus eu congue.</p>\r\n\r\n<p>Aenean sit amet pulvinar lacus. Donec commodo posuere laoreet. Quisque ullamcorper velit et iaculis sagittis. Etiam dolor ligula, finibus quis massa ac, eleifend tristique est. Vivamus eu nunc dapibus, auctor metus at, fringilla erat. Vivamus nec sem et mauris volutpat placerat. Sed placerat augue ipsum, vel faucibus dolor ultricies eu.</p>\r\n\r\n<p>Praesent sit amet rhoncus nunc. Duis ut mattis lacus, vestibulum tristique nibh. Nullam magna purus, rutrum non nisl sit amet, aliquam faucibus ligula. Nullam in dapibus ligula. Suspendisse eget neque sollicitudin, accumsan lacus ut, posuere erat. Mauris porttitor, dui efficitur tempor vehicula, felis lorem porta metus, in feugiat mi mauris eget nunc. Nulla quis augue eget ante rhoncus tristique non id lorem. Aenean vel mi luctus, ullamcorper ante et, porta metus.</p>', '', '', 'texto', '', '', 'code-igniter-logo.png', 'code-igniter-logo_thumb.png', 4, 1, 0, '2017-02-20 16:13:18', 1, '2017-02-20 16:13:18', NULL, '2017-02-20 16:13:18', '0000-00-00 00:00:00'),
(55, 'La seguridad social para los trabajadores de la construcción', '<p>La seguridad social para los trabajadores de la construcci&oacute;n</p>', '<p>Los niveles de ingreso de los trabajadores de la construcci&oacute;n en Bolivia var&iacute;an seg&uacute;n su categor&iacute;a; los obreros dependientes obtienen menor remuneraci&oacute;n en promedio que los cuenta propia, as&iacute; como los salarios de los empleadores o jefes del sector informal superan a los del sector dependiente. Si bien los promedios de ingreso del sector superan el salario m&iacute;nimo nacional, especialmente en el sector independiente, est&aacute;n perdiendo las coberturas y beneficios de la Seguridad Social. Sin embargo, a pesar de que un gran n&uacute;mero de trabajadores de la construcci&oacute;n est&aacute;n en condici&oacute;n de dependencia, la seguridad y salud en el trabajo como la cobertura de Seguridad Social es muy baja, tanto en salud como en pensiones. Por tanto, los trabajadores de la construcci&oacute;n son vulnerables ante las adversidades de corto y largo plazo.</p>', 'https://www.youtube.com/watch?v=C7Jt_n6lt1M', NULL, 'video', '', '', 'https://img.youtube.com/vi/C7Jt_n6lt1M/0.jpg', 'noticia_default_thumb.jpg', 5, 1, 0, '2017-02-20 17:23:30', 1, '2017-02-20 17:23:30', NULL, '2017-02-20 17:23:30', '0000-00-00 00:00:00'),
(56, 'Aenean Derechos sit amet pulvinar lacus. Donec commodo posuere laoreet.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus orci, malesuada eu condimentum id, auctor eget purus. Phasellus mattis urna scelerisque lacinia aliquam. Etiam iaculis dignissim maximus. Aenean non fringilla dui. Maecenas laoreet nunc accumsan, tincidunt felis a, mattis purus. Donec at quam magna. Nunc vel semper sapien. Integer molestie neque feugiat elementum hendrerit. Donec vulputate convallis gravida. Phasellus dapibus sapien id facilisis tempor. Vestibulum et risus sed sem placerat egestas id at felis.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus orci, malesuada eu condimentum id, auctor eget purus. Phasellus mattis urna scelerisque lacinia aliquam. Etiam iaculis dignissim maximus. Aenean non fringilla dui. Maecenas laoreet nunc accumsan, tincidunt felis a, mattis purus. Donec at quam magna. Nunc vel semper sapien. Integer molestie neque feugiat elementum hendrerit. Donec vulputate convallis gravida. Phasellus dapibus sapien id facilisis tempor. Vestibulum et risus sed sem placerat egestas id at felis.</p>\r\n\r\n<p>Suspendisse interdum dignissim tincidunt. Curabitur consequat ac sapien id dapibus. Aliquam tempor tellus dui, eget dignissim dolor tristique et. Ut tristique felis in rhoncus volutpat. Mauris tincidunt lorem volutpat imperdiet sollicitudin. Curabitur interdum urna nisl, eu ultricies velit sodales eget. Proin vitae elementum urna. Proin vitae magna eget justo tincidunt viverra eu sed leo. Suspendisse mi arcu, fermentum sed posuere non, volutpat sed magna. Praesent ut feugiat nisi, sit amet mollis tellus. Pellentesque ut sem id lacus placerat pretium sit amet bibendum nisi. Sed lobortis enim sem, ac condimentum felis viverra nec.</p>\r\n\r\n<p>Pellentesque elementum, neque sed vehicula gravida, velit urna elementum nisi, vitae placerat nulla sapien nec dolor. Fusce quis est ac augue vehicula feugiat vel eu ligula. Aliquam elementum felis a turpis egestas sagittis. Nam ac pulvinar massa. Aenean condimentum mi tellus, sit amet placerat sem efficitur sit amet. Integer sed semper lectus. Integer convallis, mauris a sollicitudin dictum, velit neque rhoncus purus, id volutpat turpis leo sit amet leo. Maecenas quis ullamcorper quam. In ornare sem suscipit, rhoncus purus in, porttitor sapien. Donec tristique, urna sit amet volutpat mollis, ligula sapien consequat tortor, in suscipit nulla lacus eget nulla. Aliquam consectetur ex odio, sed ultrices arcu porttitor eget. Nam in est sem. Nunc dignissim sapien leo, sit amet porttitor eros ultrices vel. Curabitur ut velit tincidunt lectus tempus semper a eget justo. Mauris ultricies eleifend metus eu congue.</p>\r\n\r\n<p>Aenean sit amet pulvinar lacus. Donec commodo posuere laoreet. Quisque ullamcorper velit et iaculis sagittis. Etiam dolor ligula, finibus quis massa ac, eleifend tristique est. Vivamus eu nunc dapibus, auctor metus at, fringilla erat. Vivamus nec sem et mauris volutpat placerat. Sed placerat augue ipsum, vel faucibus dolor ultricies eu.</p>\r\n\r\n<p>Praesent sit amet rhoncus nunc. Duis ut mattis lacus, vestibulum tristique nibh. Nullam magna purus, rutrum non nisl sit amet, aliquam faucibus ligula. Nullam in dapibus ligula. Suspendisse eget neque sollicitudin, accumsan lacus ut, posuere erat. Mauris porttitor, dui efficitur tempor vehicula, felis lorem porta metus, in feugiat mi mauris eget nunc. Nulla quis augue eget ante rhoncus tristique non id lorem. Aenean vel mi luctus, ullamcorper ante et, porta metus.</p>', '', '', 'texto', '', '', 'norma.png', 'norma_thumb.png', 4, 1, 0, '2017-02-20 17:41:05', 1, '2017-02-20 17:41:05', NULL, '2017-02-20 17:41:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia_grupo`
--

CREATE TABLE `noticia_grupo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `id_navegacion` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `columnas` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticia_grupo`
--

INSERT INTO `noticia_grupo` (`id`, `descripcion`, `alias`, `id_navegacion`, `estado`, `columnas`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'General', 'noticias/1', 2, 1, 3, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Capacitación', 'noticias/2', 19, 1, 3, 0, '0000-00-00 00:00:00', NULL, '2017-02-21 16:47:19', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Equidad de genero', 'informacion/3', 20, 1, 2, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Derechos laborales', 'informacion/4', 21, 1, 2, 0, '0000-00-00 00:00:00', NULL, '2017-02-21 16:43:18', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Salud y seguridad en el trabajo', 'informacion/5', 22, 1, 2, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina`
--

CREATE TABLE `pagina` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contenido` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadescripcion` tinytext COLLATE utf8mb4_unicode_ci,
  `metapalabras_clave` tinytext COLLATE utf8mb4_unicode_ci,
  `creado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modificado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `publicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagina`
--

INSERT INTO `pagina` (`id`, `titulo`, `contenido`, `estado`, `catid`, `hits`, `alias`, `metadescripcion`, `metapalabras_clave`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(2, 'Información estadistica', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>\r\n\r\n<p>Sed imperdiet augue eget nulla porttitor aliquet. Nulla eget felis eget lectus vestibulum ornare sed a neque. Maecenas arcu dolor, luctus ut est ac, consequat vulputate erat. Vivamus id consequat justo. Mauris augue turpis, aliquet a massa vel, rutrum convallis arcu. Phasellus sed sollicitudin neque. Aliquam sit amet elit placerat, pellentesque neque sed, convallis lacus.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/si_maestras/assets/filemanager/userfiles/estadistica.jpg" style="width: 300px; height: 225px;" /></p>', 1, 0, 33, 'informacion-estadistica', 'Resultados de maestras constructuras', 'estadisticas, maestras constructoras, caboco', '2016-09-23 18:36:07', 1, '2017-02-10 08:11:41', 1, '2017-01-14 12:46:33', '0000-00-00 00:00:00'),
(3, 'Salud y seguridad en el trabajo', '<p style="text-align: center; max-width: 853px; max-height: 480px; margin: 0 auto;"><iframe allowfullscreen="" frameborder="0" height="480" src="https://www.youtube.com/embed/C7Jt_n6lt1M?rel=0" width="853"></iframe></p>', 1, 0, 67, 'salud-seguridad-trabajo', 'Salud y seguridad en el trabajo', 'salud, seguridad, trabajo, maestras constructoras', '2016-09-24 09:36:45', 1, '2017-02-20 17:22:01', 1, '2017-01-26 15:02:53', '0000-00-00 00:00:00'),
(4, 'Norma Vigente', '<p style="text-align: center;"><img alt="" src="/si_maestras/assets/filemanager/userfiles/norma.png" style="width: 266px; height: 84px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>', 1, 0, 85, 'norma-vigente', 'Norma vigente, maestras trabajadoras', 'maestras trabajadoras, CABOCO', '2016-09-24 10:12:25', 1, '2017-02-20 17:21:58', 1, '2017-01-14 12:12:54', '0000-00-00 00:00:00'),
(5, 'Pagina de Prueba', '<p><span style="font-size:24px;">Ingresar contenido....</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, 0, 72, 'pagina-de-prueba', '', '', '2016-11-29 13:37:50', 1, '2017-01-18 14:26:06', 1, '2016-11-29 13:49:29', '0000-00-00 00:00:00'),
(6, 'Equidad de género en el sector', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', 1, 0, 17, 'equidad-de-genero-en-el-sector', 'Equidad de género en el sector', 'equidad, genero, sector', '2017-02-07 14:14:28', 1, '2017-02-20 17:16:07', 0, '2017-02-07 14:14:28', '0000-00-00 00:00:00'),
(7, 'Quiénes somos', '&nbsp;\r\n<p>La plataforma virtual&nbsp; MAESTRAS CONSTRUCTORAS alberga una base de datos de trabajadoras capacitadas y certificadas en diferentes especialidades del rubro de la construcci&oacute;n. Estas certificaciones son otorgadas por diversos centros de formaci&oacute;n t&eacute;cnica de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>El objetivo de la plataforma es promover v&iacute;nculos laborales entre empleadores y mujeres trabajadoras en la construcci&oacute;n, con el fin de facilitar la b&uacute;squeda y contrataci&oacute;n de trabajadoras capacitadas y as&iacute; promover la visibilizaci&oacute;n de la mano de obra fina que poseen, cuya fama destaca dentro del rubro de la construcci&oacute;n en nuestro pa&iacute;s.</p>\r\n\r\n<p>La Administraci&oacute;n de la Plataforma est&aacute; a cargo de la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), quienes junto con Instituciones de Formaci&oacute;n T&eacute;cnica y con otros actores importantes del sector de la construcci&oacute;n en Bolivia, impulsan el proyecto &ldquo;Construyendo Igualdad&rdquo; iniciado por la Organizaci&oacute;n Internacional de Trabajo (OIT) a principios de 2015 para la promoci&oacute;n de mejores condiciones laborales para las mujeres del sector de la construcci&oacute;n en Bolivia. Este proyecto fue financiado por la Agencia Sueca de Desarrollo Internacional (ASDI).</p>\r\n\r\n<hr />\r\n<div class="content-auspiciantes"><!-- Start Big Heading -->\r\n<div class="big-title text-center">\r\n<h1>Instituciones de <strong>Formaci&oacute;n T&eacute;cnica</strong></h1>\r\n</div>\r\n<!-- End Big Heading -->\r\n\r\n<div class="content-auspiciantes">\r\n<section class="auspiciantes slider" style="margin: 60px auto;">\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="height: 70px; width: 195px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px;" /></div>\r\n</section>\r\n</div>\r\n</div>', 1, 0, 67, 'quienes-somos', 'quiénes somos', 'quienes somos', '2017-02-07 14:24:13', 1, '2017-02-22 14:06:22', 1, '2017-02-17 12:16:28', '0000-00-00 00:00:00'),
(8, 'Cómo funciona', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', 1, 0, 16, 'como-funciona', 'cómo funciona', 'cómo funciona', '2017-02-07 14:24:58', 1, '2017-02-22 14:06:15', 0, '2017-02-07 14:24:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_predisenada`
--

CREATE TABLE `pagina_predisenada` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contenido` text COLLATE utf8mb4_unicode_ci,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescripcion` tinytext COLLATE utf8mb4_unicode_ci,
  `metapalabras_clave` tinytext COLLATE utf8mb4_unicode_ci,
  `estado` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `creado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modificado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `publicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagina_predisenada`
--

INSERT INTO `pagina_predisenada` (`id`, `titulo`, `contenido`, `alias`, `metadescripcion`, `metapalabras_clave`, `estado`, `catid`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'Formadores', NULL, 'formadores-score-bolivia', 'Formadores SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 53, '2016-09-10 11:57:40', 0, '2016-10-01 17:04:25', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Testimonios', NULL, 'testimonios-score-bolivia', 'Testimonios SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 104, '2016-09-10 11:59:10', 0, '2017-02-14 15:42:18', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Página de inicio', NULL, '', 'SCORE de la OIT es un programa mundial de formación y asistencia técnica para pequeñas y medianas empresas', 'Maestras Constructoras, CABOCO', 1, 0, 6503, '2016-09-14 15:01:08', 0, '2017-02-22 14:34:09', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Publicaciones', NULL, 'publicaciones-score-bolivia', 'Publicaciones SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 231, '2016-09-24 18:26:46', 0, '2016-11-14 12:50:17', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Contacto', NULL, 'contacto-maestras-constructoras', 'Contacto Maestras Constructoras', 'Maestras Constructoras, CABOCO', 1, 0, 284, '2016-09-28 11:09:41', 0, '2017-02-22 14:17:20', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Formulario de inicio de sesión o registro inicial de formador', NULL, 'inscripciones-previo-formadores-score-bolivia', 'Inscripciones Formadores SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 249, '2016-10-04 14:28:10', 0, '2016-10-24 12:31:23', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Formulario de inscripción de empresa', NULL, 'inscripciones-empresas-score-bolivia', 'Inscripciones Empresas SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 386, '0000-00-00 00:00:00', 0, '2016-11-29 13:17:13', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Caja de herramientas Modulo I', NULL, 'biblioteca/1', 'Caja de herramientas Modulo I', 'Maestras Constructoras, CABOCO', 0, 0, 8, '2016-10-16 19:53:21', 1, '2016-11-29 13:50:52', 1, '2016-10-18 11:04:28', '2016-10-18 11:04:05'),
(10, 'Formulario de inscripción de formador', NULL, 'inscripciones-formadores-score-bolivia', 'Inscripciones Formadores SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 590, '0000-00-00 00:00:00', 0, '2017-02-11 11:19:08', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Noticias generales', NULL, 'noticias/1', 'Noticias generales', 'Maestras Constructoras, CABOCO', 1, 0, 551, '0000-00-00 00:00:00', 0, '2017-02-22 14:16:48', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Noticias capacitacion', NULL, 'noticias/2', 'Noticias capacitacion', 'Maestras Constructoras, CABOCO', 1, 0, 153, '0000-00-00 00:00:00', 0, '2017-02-22 14:16:30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Información equidad de género', '', 'informacion/3', 'Informacion equidad de género', 'Maestras Constructoras, CABOCO', 1, 0, 18, '0000-00-00 00:00:00', 0, '2017-02-22 14:07:54', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Información derechos laborales', NULL, 'informacion/4', 'Derechos laborales', 'Maestras Constructoras, CABOCO', 1, 0, 101, '0000-00-00 00:00:00', 0, '2017-02-22 14:17:12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Información salud y seguridad en el trabajo', NULL, 'informacion/5', 'Salud y seguridad en el trabajo', 'Maestras Constructoras, CABOCO', 1, 0, 26, '0000-00-00 00:00:00', 0, '2017-02-22 14:09:43', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `nombre`, `creado`, `modificado`) VALUES
(1, 'Super Usuario', '2016-09-01 15:02:53', '0000-00-00 00:00:00'),
(2, 'Centro de Formación', '2016-09-01 15:05:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postgrado`
--

CREATE TABLE `postgrado` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT '',
  `modulo` text,
  `contenido` text,
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `postgrado`
--

INSERT INTO `postgrado` (`id`, `titulo`, `modulo`, `contenido`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'Pie de página', 'mod_pie', '<div class="row">\r\n<div class="col-xs-12 col-sm-6 col-md-3">\r\n<div><img alt="OIT" src="/si_score/assets/filemanager/userfiles/sitio/score_blanco.png" /><br />\r\nEmpresas responsables y sostenibles<br />\r\n&nbsp;</div>\r\n\r\n<div class="contact-icon">\r\n<ul>\r\n	<li><a href="#"><i class="fa fa-facebook"></i></a></li>\r\n	<li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n	<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>\r\n	<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>\r\n	<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="col-xs-12 col-sm-6 col-md-3 footer-content">\r\n<div class="footer-title">Cont&aacute;ctanos</div>\r\n\r\n<ul class="footer-contact">\r\n	<li><i class="fa fa-globe"></i> Calle Mendez Arcos , Sopocachi. La Paz, Bolivia</li>\r\n	<li><i class="fa fa-phone-square"></i> (+591) 2784578</li>\r\n	<li><i class="fa fa-envelope"></i> <a href="mailto:info@urse.org.bo">info@urse.org.bo</a></li>\r\n	<li><i class="fa fa-home"></i> <a href="javascript:;">SI SCORE</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class="col-xs-12 col-sm-6 col-md-3">\r\n<div class="footer-title">Programa SCORE</div>\r\n\r\n<ul class="footer-section">\r\n	<li><a href="javascript:;">&iquest;Qu&eacute; es SCORE?</a></li>\r\n	<li><a href="javascript:;">SCORE Global</a></li>\r\n	<li><a href="javascript:;">Representantes de SCORE Per&uacute;</a></li>\r\n	<li><a href="javascript:;">Resultados SCORE Per&uacute;</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class="col-xs-12 col-sm-6 col-md-3">\r\n<div class="footer-title">Recursos</div>\r\n\r\n<ul class="footer-section">\r\n	<li><a href="javascript:;">Caja de herramientas</a></li>\r\n	<li><a href="javascript:;">Comunicaci&oacute;n y Promoci&oacute;n</a></li>\r\n	<li><a href="javascript:;">Publicaciones</a></li>\r\n</ul>\r\n\r\n<div class="footer-title">Inscripciones</div>\r\n\r\n<ul class="footer-section">\r\n	<li><a href="javascript:;">Empresas</a></li>\r\n	<li><a href="javascript:;">Formadores</a></li>\r\n</ul>\r\n</div>\r\n</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2016-09-23 18:00:06', 1, '2016-09-23 18:00:06', '2016-09-13 10:35:07'),
(2, 'Convocatoria', 'mod_convocatoria', '<div class="col-xs-12 col-sm-12">\r\n<div class="jumbotron">\r\n<h2><b>Convocatoria del Programa SCORE </b></h2>\r\n\r\n<p>para peque&ntilde;as y medianas empresas de los sectores:</p>\r\n\r\n<p><a class="btn btn-primary btn-lg" href="javascript:;" role="button">Inscribete aqu&iacute;</a></p>\r\n</div>\r\n</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2016-09-23 16:05:53', 1, '2016-09-23 16:05:53', '0000-00-00 00:00:00'),
(3, 'Auspiciadores', 'mod_auspiciadores', '<div class="col-xs-12 section-colored ng-scope" style="padding-bottom: 30px; padding-top: 30px;">\r\n<div align="center" class="col-xs-12 col-lg-4 col-md-4"><img src="/si_score/assets/filemanager/userfiles/urse.png" /></div>\r\n\r\n<div align="center" class="col-xs-12 col-lg-4 col-md-4"><img src="/si_score/assets/filemanager/userfiles/camara_nacional.jpg" /></div>\r\n\r\n<div align="center" class="col-xs-12 col-lg-4 col-md-4"><img src="/si_score/assets/filemanager/userfiles/camara_cochabamba.jpg" /></div>\r\n</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2016-09-23 15:00:45', 1, '2016-09-23 15:00:45', '0000-00-00 00:00:00'),
(4, 'Score Global', 'mod_score_global', '<div>\r\n<div class="contenido ng-scope">\r\n<div class="col-xs-12 col-md-6">\r\n<div class="score-content">\r\n<h3 style="padding-top: 20px;">SCORE Global</h3>\r\n\r\n<p>SCORE se implement&oacute; en m&aacute;s de&nbsp;810&nbsp;empresas en&nbsp;7&nbsp;pa&iacute;ses:</p>\r\n</div>\r\n\r\n<div class="score-content centered-parent"><a class="centered-child" href="/si_score/assets/filemanager/userfiles/score-global.png"><img src="/si_score/assets/filemanager/userfiles/score-global.png" style="width:100%" /></a></div>\r\n</div>\r\n\r\n<div class="col-xs-12 col-md-6">\r\n<div class="score-content">\r\n<h3 style="padding-top: 20px;">Resultados SCORE Global<br />\r\n(2009 - 2013)</h3>\r\n\r\n<ul class="image">\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">3-4 VECES POR MES</span><br />\r\n				Reuniones de Equipos de Mejoramiento Empresarial (EME)</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">USD 3.000 Y 15.000</span><br />\r\n				Reducci&oacute;n de costos 2-3 meses despu&eacute;s de la formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">29% PROMEDIO</span><br />\r\n				Reducci&oacute;n de defectos</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">HASTA 22% MENOS</span><br />\r\n				Ausentismo laboral</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">3% AHORRO ENERG&Eacute;TICO (KwH)</span><br />\r\n				por cada unidad producida</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">15-50% Icremento en productividad 2,5</span><br />\r\n				meses despu&eacute;s del Taller de Formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">36%</span><br />\r\n				Reducci&oacute;n de accidentes</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2016-09-26 18:11:45', 1, '2016-09-26 18:11:45', '0000-00-00 00:00:00'),
(5, 'Enlaces', 'mod_enlaces', '<div class="col-xs-12 col-md-3">&nbsp;</div>\r\n\r\n<div class="col-xs-12 col-md-3" style="line-height: 4.3"><img id="mira" src="assets/img/mira.png" /> <a href="#">TESTIMONIOS DE EMPRESAS</a></div>\r\n\r\n<div class="col-xs-12 col-md-3" style="line-height: 4.3"><img id="mira" src="assets/img/mira.png" /> <a href="#">RESULTADOS DE SCORE</a></div>\r\n\r\n<div class="col-xs-12 col-md-3">&nbsp;</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2016-10-03 10:16:36', 1, '2016-10-03 10:16:36', '2016-10-03 10:15:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion_empresa`
--

CREATE TABLE `postulacion_empresa` (
  `id` int(11) NOT NULL,
  `convocatoria_id` int(11) DEFAULT NULL,
  `nombre_empresa` varchar(255) DEFAULT '',
  `telefono` varchar(255) DEFAULT '',
  `nit` varchar(255) DEFAULT '',
  `nombre_gerente` varchar(255) DEFAULT '',
  `ciudad_id` int(11) DEFAULT NULL,
  `direccion_gerencia` varchar(255) DEFAULT NULL,
  `afiliado` tinyint(4) DEFAULT NULL,
  `nombre_afiliado` varchar(255) DEFAULT '',
  `modulos_interes` varchar(255) DEFAULT '',
  `nombre_representante_legal` varchar(255) DEFAULT '',
  `cargo_representante_legal` varchar(255) DEFAULT '',
  `email_representante_legal` varchar(255) DEFAULT '',
  `celular_representante_legal` varchar(255) DEFAULT '',
  `acepto_terminos` tinyint(4) DEFAULT NULL,
  `medio_aviso_id` tinyint(4) DEFAULT NULL,
  `medio_nota` varchar(255) DEFAULT '',
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `postulacion_empresa`
--

INSERT INTO `postulacion_empresa` (`id`, `convocatoria_id`, `nombre_empresa`, `telefono`, `nit`, `nombre_gerente`, `ciudad_id`, `direccion_gerencia`, `afiliado`, `nombre_afiliado`, `modulos_interes`, `nombre_representante_legal`, `cargo_representante_legal`, `email_representante_legal`, `celular_representante_legal`, `acepto_terminos`, `medio_aviso_id`, `medio_nota`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, 4, 'Coca cola', '73232506', '4824622', 'Bautista Gustvo', 1, 'Florida', 1, 'No lo recuerdo', '1', 'Omar Bautista', 'Gerente', 'omarbautista.formaempresas@gmail.com', '73232506', 1, 5, 'Sonia Quisbert', 1, '2016-10-25 12:00:45', NULL, '2016-10-26 10:57:19', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 3, 'Toyosa SA', '7323250600', '4824622123456', 'Bautista Chambilla Gustavo Omar', 3, 'Las Palmas y tercer anillo', 0, '', '1,2,5', 'Sonia Quisbert Huanca', 'Representante en Bolivia de Coca Cola', 'soniacocacola@gmail.com', '73232506111', 1, 5, 'Roberto Gomez Bolaños', 1, '2016-10-25 12:03:38', NULL, '2016-10-26 17:45:46', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion_formador`
--

CREATE TABLE `postulacion_formador` (
  `id` int(11) NOT NULL,
  `convocatoria_id` int(11) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT '',
  `apellido_paterno` varchar(255) DEFAULT '',
  `apellido_materno` varchar(255) DEFAULT '',
  `ci` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `postulacion_formador`
--

INSERT INTO `postulacion_formador` (`id`, `convocatoria_id`, `nombres`, `apellido_paterno`, `apellido_materno`, `ci`, `email`, `password`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, NULL, 'Gustavo Omar', 'Bautista', 'Chambilla', '4824622', 'omarbautista@gmail.com', '4824622', NULL, '2016-10-23 21:05:07', NULL, '2016-10-23 21:05:07', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion_formador_tmp`
--

CREATE TABLE `postulacion_formador_tmp` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) DEFAULT '',
  `apellido_paterno` varchar(255) DEFAULT '',
  `apellido_materno` varchar(255) DEFAULT '',
  `ci` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `codigo_activacion` varchar(255) DEFAULT '',
  `activado` tinyint(4) DEFAULT '0',
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `postulacion_formador_tmp`
--

INSERT INTO `postulacion_formador_tmp` (`id`, `nombres`, `apellido_paterno`, `apellido_materno`, `ci`, `email`, `password`, `codigo_activacion`, `activado`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, 'Gustavo Omar', 'Bautista', 'Chambilla', '4824622', 'omarbautista@gmail.com', '4824622', 'Q27jaKDzqAzKX225B2zf', 0, NULL, '2016-10-22 20:48:47', NULL, '2016-10-22 20:48:47', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Gustavo Omar', 'Bautista', 'Chambilla', '4824622', 'omarbautista@gmail.com', '4824622', 'BdFLii8xmTzfpIlmvZjQ', 1, NULL, '2016-10-23 20:35:09', NULL, '2016-10-23 21:05:07', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion_postgrado`
--

CREATE TABLE `postulacion_postgrado` (
  `id` int(11) NOT NULL,
  `postulante_id` varchar(255) DEFAULT '',
  `convocatoria_id` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `año` int(11) DEFAULT '0',
  `universidad` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT '',
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentacion`
--

CREATE TABLE `presentacion` (
  `id` int(11) NOT NULL,
  `imagen_fondo` varchar(255) DEFAULT '',
  `contenido` text,
  `url_video` varchar(255) DEFAULT '',
  `titulo_enlace_1` varchar(255) DEFAULT '',
  `url_enlace_1` varchar(255) DEFAULT '',
  `titulo_enlace_2` varchar(255) DEFAULT '',
  `url_enlace_2` varchar(255) DEFAULT '',
  `titulo_enlace_3` varchar(255) DEFAULT '',
  `url_enlace_3` varchar(255) DEFAULT '',
  `titulo_enlace_4` varchar(255) DEFAULT '',
  `url_enlace_4` varchar(255) DEFAULT '',
  `titulo_enlace_5` varchar(255) DEFAULT '',
  `url_enlace_5` varchar(255) DEFAULT '',
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `presentacion`
--

INSERT INTO `presentacion` (`id`, `imagen_fondo`, `contenido`, `url_video`, `titulo_enlace_1`, `url_enlace_1`, `titulo_enlace_2`, `url_enlace_2`, `titulo_enlace_3`, `url_enlace_3`, `titulo_enlace_4`, `url_enlace_4`, `titulo_enlace_5`, `url_enlace_5`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, '', '<p>lopo</p>', '', '', '', '', '', '', '', 'Nada 4', 'http://4', 'Nada 4', 'http://5', 1, NULL, '0000-00-00 00:00:00', NULL, '2016-09-13 10:02:02', 17, '2016-09-13 10:02:02', '2016-09-10 21:14:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT '',
  `resumen` text,
  `contenido` text,
  `fuente` varchar(255) DEFAULT '',
  `fecha_publicacion` date DEFAULT '0000-00-00',
  `url_descarga` varchar(255) DEFAULT '',
  `imagen` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `titulo`, `resumen`, `contenido`, `fuente`, `fecha_publicacion`, `url_descarga`, `imagen`, `thumb`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(2, 'Fusce interdum libero ut erat sodales, eget vestibulum erat laoreet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>\r\n\r\n<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>\r\n\r\n<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>\r\n\r\n<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>\r\n\r\n<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>\r\n\r\n<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>\r\n\r\n<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>\r\n\r\n<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>\r\n\r\n<p>In eu consectetur leo. Donec interdum, nisi id laoreet egestas, sapien ligula molestie leo, at sodales nulla odio sit amet libero. Suspendisse vestibulum sit amet nisl id consequat. Nam purus quam, rhoncus eget lorem ut, pretium cursus nisi. Phasellus fermentum urna eu massa faucibus placerat. Sed ut pellentesque sapien, posuere fermentum felis. Suspendisse et condimentum risus, ac ultrices eros. Ut ornare in nulla sit amet ultrices. Cras in nisi nulla. Nam nisl lectus, commodo et orci quis, condimentum scelerisque justo. Fusce sit amet dui pulvinar dui molestie placerat.</p>\r\n\r\n<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut.</p>', 'Lorem ipsum', '2016-09-25', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', 'opera_house_article.jpg', 'opera_house_article_thumb.jpg', 1, NULL, '2016-09-24 19:32:02', 1, '2016-09-26 16:00:40', 1, '2016-09-26 16:00:40', '0000-00-00 00:00:00'),
(5, 'Duis bibendum mauris quis lorem tristique, eget aliquam sapien pulvinar lorem', '<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc eua.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>\r\n\r\n<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>\r\n\r\n<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>\r\n\r\n<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>\r\n\r\n<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>\r\n\r\n<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>\r\n\r\n<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>\r\n\r\n<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>\r\n\r\n<p>In eu consectetur leo. Donec interdum, nisi id laoreet egestas, sapien ligula molestie leo, at sodales nulla odio sit amet libero. Suspendisse vestibulum sit amet nisl id consequat. Nam purus quam, rhoncus eget lorem ut, pretium cursus nisi. Phasellus fermentum urna eu massa faucibus placerat. Sed ut pellentesque sapien, posuere fermentum felis. Suspendisse et condimentum risus, ac ultrices eros. Ut ornare in nulla sit amet ultrices. Cras in nisi nulla. Nam nisl lectus, commodo et orci quis, condimentum scelerisque justo. Fusce sit amet dui pulvinar dui molestie placerat.</p>\r\n\r\n<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut.</p>', 'Lorem ipsum', '2016-09-26', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', 'Boston-Globe-Higher-Res1.jpg', 'Boston-Globe-Higher-Res1_thumb.jpg', 1, NULL, '2016-09-26 14:43:33', 1, '2016-09-26 15:58:17', 1, '2016-09-26 15:58:17', '2016-09-26 14:43:52'),
(3, 'Vestibulum commodo magna et libero malesuada, non varius ipsum interdum', '<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>\r\n\r\n<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>\r\n\r\n<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>\r\n\r\n<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>\r\n\r\n<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>\r\n\r\n<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>\r\n\r\n<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>\r\n\r\n<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>\r\n\r\n<p>In eu consectetur leo. Donec interdum, nisi id laoreet egestas, sapien ligula molestie leo, at sodales nulla odio sit amet libero. Suspendisse vestibulum sit amet nisl id consequat. Nam purus quam, rhoncus eget lorem ut, pretium cursus nisi. Phasellus fermentum urna eu massa faucibus placerat. Sed ut pellentesque sapien, posuere fermentum felis. Suspendisse et condimentum risus, ac ultrices eros. Ut ornare in nulla sit amet ultrices. Cras in nisi nulla. Nam nisl lectus, commodo et orci quis, condimentum scelerisque justo. Fusce sit amet dui pulvinar dui molestie placerat.</p>\r\n\r\n<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut.</p>', 'Lorem ipsum', '2016-09-30', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', 'nyt.jpg', 'nyt_thumb.jpg', 1, NULL, '2016-09-26 14:30:54', 1, '2016-09-26 15:59:14', 1, '2016-09-26 15:59:14', '0000-00-00 00:00:00'),
(4, 'Suspendisse eget sapien sit amet odio placerat dictum at sit amet nisi', '<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>\r\n\r\n<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>\r\n\r\n<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>\r\n\r\n<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>\r\n\r\n<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>\r\n\r\n<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>\r\n\r\n<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>\r\n\r\n<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>\r\n\r\n<p>In eu consectetur leo. Donec interdum, nisi id laoreet egestas, sapien ligula molestie leo, at sodales nulla odio sit amet libero. Suspendisse vestibulum sit amet nisl id consequat. Nam purus quam, rhoncus eget lorem ut, pretium cursus nisi. Phasellus fermentum urna eu massa faucibus placerat. Sed ut pellentesque sapien, posuere fermentum felis. Suspendisse et condimentum risus, ac ultrices eros. Ut ornare in nulla sit amet ultrices. Cras in nisi nulla. Nam nisl lectus, commodo et orci quis, condimentum scelerisque justo. Fusce sit amet dui pulvinar dui molestie placerat.</p>\r\n\r\n<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut.</p>', 'Lorem ipsum', '2016-09-30', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', '3486576468_cd0316a8c2.jpg', '3486576468_cd0316a8c2_thumb.jpg', 1, NULL, '2016-09-26 14:33:37', 1, '2016-09-26 15:59:02', 1, '2016-09-26 15:59:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE `sesion` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('5785445b6de4cf6cf729cc2de1a25ab9ca69bb1b', '::1', 1487788449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738383333323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('549ae932c9503043f97514c7235b934f6d0db11e', '::1', 1487788169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373936383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('2dfdd7dab646c134ba115ae6cb5bb78fe8449753', '::1', 1487787968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373936383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('7dec4c0665193c6d22a427f4a03bf58635db7840', '::1', 1487787968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373936383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('bbe2628e059e6ad663c3d5d2eca2000c5a4f377d', '::1', 1487787968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373936373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('816ce2d1aad9e6aabc34f672f463819319a6f6ae', '::1', 1487787967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('1a389d4a090f2f9fff58d65614211048245696da', '::1', 1487787571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('d0a662e3712338851320c662c5a098d8dda970ee', '::1', 1487787571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('86832449abb18aea65ab27184616761b97ec7ae1', '::1', 1487787571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('009582c79c05d32c7234595e3b6064bfd1c036e3', '::1', 1487787571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('03faeef5a671383baf2eb4fc8ed67c4c6ac49d4a', '::1', 1487787571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('c8d2a996eddbedef48faccab58d34d90e985d658', '::1', 1487787571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('d5f342084dff4570ab9b1b5033033f80931de5dd', '::1', 1487787571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('dad4bc42a21efb7b527a5f49b25c947fc2985ce0', '::1', 1487787570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373236343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('419d4106fb9a67b1e6ad3616ae24275595243415', '::1', 1487787571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738373537313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('9c692ea3728706875af60cbc801413384d4fae01', '::1', 1487786885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738363538353b),
('e0ab374c5fa4b45908e87a0bb36042d358ee75de', '::1', 1487786581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738363238313b),
('f6230a0711c659a2507c371bb4da33d30eb60c8a', '::1', 1487786150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738353931353b),
('271e8340fecae9e02b746bbe6471ce717b0ae924', '::1', 1487785570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373738353536343b),
('c30acd07c2cd0377524bbb39801e7be2cfa056f5', '::1', 1487714336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373731343035353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('0da3ca5e775a7ca10e9c328187ba3050e5d4b600', '::1', 1487713855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373731333639393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('567dd709779116b0498b50eab961a89bf21f5eb7', '::1', 1487713591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373731333333333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('fe56b79dfe87875538eb68b5b82b20f6739fe6cb', '::1', 1487713312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373731333032323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('9003b210de8fe73ce36fe6518aca59965390197d', '::1', 1487712693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373731323436343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('df97fb19bb7b62f5e52c274792e32a33ea27cbe1', '::1', 1487712242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373731313939393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('536d339414fa1a6b3747b9ce258d21303916e7b2', '::1', 1487711595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373731313533393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('11bc1db0017783d9224f05670faa099a498faacd', '::1', 1487710140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730393835353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('96da340e791de9fae122739ddd59448c74f96cd4', '::1', 1487709851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730393535323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('5ba0634b078f03d9e4a7282abf37e4cf16a2e74a', '::1', 1487709418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730393133383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b6d656e73616a657c733a34373a22536520686120677561726461646f20636f7272656374616d656e7465206c6120636f6e6669677572616369c3b36e2e223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('7b057dd159dd6fca574bbc72498317440a16dc87', '::1', 1487708691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730383630373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('e1ebbdc9eea7e6f65f5912a7e3fbaef7d1ee8e8e', '::1', 1487708010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730373932313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('dcfc27d494450b246d660ff3da8b118ad8f1ce29', '::1', 1487707891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730373538373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('910e4461a8e576c61cab9f7c64e249a851facd95', '::1', 1487707424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730373137323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('7c1b9e4657d3b44c7f74770e8fcc18fbf25677a8', '::1', 1487706755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730363436393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('d017fb124d767b607bda147032619e542b8573a4', '::1', 1487705250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730353038383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('82fd42bf9b921f9250c19b93fe55c5cbeb97cec7', '::1', 1487704700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730343730303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('8dcad25fdc42652af8d3be8468b20444f8097d47', '::1', 1487704367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730343134393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('d00dedd15743b6dd67f0ea65850dbc2e65255bea', '::1', 1487703762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730333736323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('3b5d5cd267995e9a9495cb97f635bfae48a0d03d', '::1', 1487703680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730333434313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('43887a91e03abe5261feddba306c424bb19b1b1b', '::1', 1487703202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730333038303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('96a0c92ea128ddbfd7133c44c1a3c4e8c6baa5de', '::1', 1487702868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730323639373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('54205e9753769bc388b8f5772b7191880a20db49', '::1', 1487702466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730323331353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('467c2f632f9d9b65586abbf54580f425798851dc', '::1', 1487701876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730313837363b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('9e17d95dc562aac962e90914142526216d8fd2a6', '::1', 1487701227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730313037343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('764855a62b4ca7688706c3bc9a00700d7c6930ac', '::1', 1487700943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373730303636303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('ac76f1e5055ea1b33fb53478f358e0787da9138e', '::1', 1487700194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373639393933383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('bb8a7e22b188d8984712dc9ebe684e5f3d7a2460', '::1', 1487627229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632373031303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('ab3b73f6f0a044948b718400e52e3ec4c46ab65f', '::1', 1487627574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632373435313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('3d2ab3540fbf8176918b90b703391377179f76f1', '::1', 1487626462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632363432383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('a6e73c6413dd43092822ce346728e6eca8be9b7d', '::1', 1487626302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632363131303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('f9e11883932f21aefc184c627ec825cf18ab62a3', '::1', 1487625934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632353637353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('5b319d5ab2205fbac25bd5f3295909cfb611b586', '::1', 1487625657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632353336373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('13200d687add414364b4df5b9130c50659fa9d85', '::1', 1487625208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632343939383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('68cd7858da7c8ebd715136c8be5914d98f5c127d', '::1', 1487624702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632343536323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('9218a575848e40124f640c7f61e67b4e00db1be5', '::1', 1487623041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632333032313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('f405a28c425a3f8c2ba8c837b0d802e12b10fd80', '::1', 1487622841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632323631313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('aeaec0ebb1ccdb55b03feeb287facd1d9fb93c2e', '::1', 1487622513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632323234373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('8c93b076adb5e94ee132d179434b13ecb6133dad', '::1', 1487621973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632313733393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('093b44035010aed3d8b247e28f957c6f4dfb6e7e', '::1', 1487621667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632313339383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('93873ba22f1384be355ed7eae696620233bf7deb', '::1', 1487621392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632313039333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2235223b),
('8c847193c57ec3e0f9c9212ea8223005501170f4', '::1', 1487620896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632303635393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2235223b),
('c389e2da5d0976b2df85ed1c6b7f582823c11c10', '::1', 1487620149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373632303036343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b);
INSERT INTO `sesion` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('a3fd404287ec7ba3ba4d8de8bab9f83460284442', '::1', 1487619874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373631393630333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('76683d889f39d4f15091fc053391c1e68ad9f089', '::1', 1487619336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373631393237323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('30997e85ac7f3923f2a48ff1644f0461e49b9a82', '::1', 1487618851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373631383537393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('4e6ad7612ebc9b5f896750145965e2ab8437c1c8', '::1', 1487617109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373631373130363b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('05f4f977cfae05d8669df1be34e4f9379d2f53b5', '::1', 1487618529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373631383234313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('1d15f340fc1aa2c24927d3ccf5401120082c06d1', '::1', 1487616749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373631363633393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('ecf2a6a6a9340d52ce1b66307ba675f5e673fc0e', '::1', 1487616636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373631363333373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('66f1503ad42b3de3676b3c769e194b877ff80c44', '::1', 1487615709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373631353536333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('fd4be1f3482981e7ca7ecd60a6a75fe1b2191742', '::1', 1487439981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433393938313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('4c4992e541b1109050bb44a93d8079e75ede23a1', '::1', 1487439742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433393538303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('5e2e55d1dc6b10959e0cb45a093e5ed823e60d7a', '::1', 1487439539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433393236393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('8ea9ff5a9e59bca629af02632ef23721793e6c28', '::1', 1487439236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433383934303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('0308fd46b6e1d5124bcce63edcb26aab4d4f472a', '::1', 1487438873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433383539323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('1115ddbbb545dc7db7d9bfceb1cb89d435032e53', '::1', 1487438538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433383238323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('73cd8ea4d2615ef3d77ab2eda81b929028beced7', '::1', 1487438223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433373934323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('23be221666968dc99e96e39a3f2448e34ef46964', '::1', 1487437839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433373535343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('75d66a795e1170c9a96288388f0f4ba351645556', '::1', 1487437527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433373232383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('f0dd0386e5ca597fbf1c7e010d2211dbfb27a38a', '::1', 1487437119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433363833383b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('4229a92a7ee5333cd7a4b3ba225a1ddbc9b0532f', '::1', 1487436508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433363337343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('9f6917748edd7b964d3270b34011e93abbc62377', '::1', 1487436313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433363035353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('2400e3079bb62e3ff2e57ef46ba8d20e083c8a06', '::1', 1487436038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433353735343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('d7edeed889a9ce5032c981a731c0675bb8442b98', '::1', 1487435454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433353239313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('a8ced3f1b3463ff557341309caaabc3a27592f7a', '::1', 1487435165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433343837313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('337ae3caea2901f7d7a8205676ca1a2f7751ee94', '::1', 1487434758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433343536373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('07c4b18745f66023eae6ae593b0e4dc91bfa6141', '::1', 1487434558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433343236343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('29314a8ee77ab5160e6e9cff9e4971d27aed70f9', '::1', 1487433746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433333635363b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('768dde48385cb8b799d5034816034fcf77ab3270', '::1', 1487432551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433323533303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('d7f1cd757c74369186b2ac57bc90e5ec0447386a', '::1', 1487432387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433323130373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('e5493856efbb39302da4e3fc1b154dc3e1b7862a', '::1', 1487432103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433313830343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('17ace4d94138904925416a8967b6d3b18a2544d0', '::1', 1487431768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433313437353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('7e60bc432281acfe7180e9f5267f4fb1a1aaeb98', '::1', 1487430853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433303537303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('e0407f3a2a0f0a55cb17912820afd8c5bf31e57d', '::1', 1487430241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373433303233333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('1c8c7b26d817aa2a49f0eccb987acaa7c58914c8', '::1', 1487430002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373432393735353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('ad79908c60fff88136504a528fa881db88ca0c72', '::1', 1487429737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373432393435303b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('94214251f128439729f84977a346430b9b68cd6c', '::1', 1487427735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373432373733353b),
('2f943f000b1441a7ccc60824f7dfb28da5d1adba', '::1', 1487429248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373432383939333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('9eeeef04385207cc6193447815231532ae4e3f29', '::1', 1487367558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336373431343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('38aa9a0dd3990fe2d7af5fedc03ed76f02fc04f0', '::1', 1487367382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336373130333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('c8251cb45411f633f62738b018549bb36e2e62d1', '::1', 1487366794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336363539323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('cfeed2dab3d5e2acffb7ddcbb81c1a9d84db9bfb', '::1', 1487360938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336303837363b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('d0f1f1c257755872f182ce4e14ab9f8fac8ed177', '::1', 1487361743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336313434373b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('a6549f6f8bc9f16de53bc1435bef3ce5bfbb8bc2', '::1', 1487361997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336313837343b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('e7103730395d5909c706c7b2f531e788393dcb2a', '::1', 1487362579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336323339333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('0f9bf9751ac028601b844915ae01751af980f2c9', '::1', 1487364252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336343032353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('d6c1837b2279a73071df553293a254302d03c1b4', '::1', 1487364493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336343333353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('c59806f2484535ef2aeccb062358ba647da5dd72', '::1', 1487364828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336343633393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('8b898d913b0bd22b9147a9ec7d22c3bbaa17916b', '::1', 1487365662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336353139313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('2d43336429ddd255b2c9d6a563494716c1bccbef', '::1', 1487365663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336353636323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('2deb5d65e40caeace28f3ab12f0a1e3df19c46f5', '::1', 1487365662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336353636323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('527210c30c186e478fe4698c7cb4eb3bb9bd63ed', '::1', 1487365662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336353636323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('00c5dd25997eca43d99681bdb3990dbe5b38177e', '::1', 1487365663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336353636323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('02a42ce9960dd4eaf247251cb991c3612980863e', '::1', 1487365663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336353636323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('147f3bb9a01994419bc3281d7a722bb95709559b', '::1', 1487365947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336353636323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('f7cc2566c4d569e60333b32041b44095e816266d', '::1', 1487366267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336353937323b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('5637fed7a6d8d4b10dca2940fc3bedbe0738ca36', '::1', 1487366543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336363239313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a353a2261646d696e223b733a31303a22666f746f677261666961223b733a36363a22687474703a2f2f6c6f63616c686f73742f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sidebar`
--

CREATE TABLE `sidebar` (
  `id` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `creado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sidebar`
--

INSERT INTO `sidebar` (`id`, `estado`, `creado`, `modificado`) VALUES
(1, 1, '0000-00-00 00:00:00', '2016-08-24 13:55:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `contenido` text,
  `url_video` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `contenido`, `url_video`, `imagen`, `thumb`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, '<h2 class="animated2">Maestras&nbsp;<strong>Constructoras</strong></h2>\r\n\r\n<h3 class="animated3">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class="animated4"><a class="slider btn btn-system btn-large" href="#">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'mconstructora0.png', 'mconstructora0_thumb.png', 1, 0, '2016-10-03 14:43:56', 1, '2017-01-10 13:42:04', 1, '2017-01-10 13:42:04', '0000-00-00 00:00:00'),
(2, '<h2 class="animated2">Noticias y&nbsp;<strong>Capacitaci&oacute;n</strong></h2>\r\n\r\n<h3 class="animated3">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class="animated6"><a class="slider btn btn-system btn-large" href="#">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=sfDW53ddGsY', 'mconstructora1.png', 'mconstructora1_thumb.png', 1, 0, '2016-10-03 14:45:27', 1, '2017-01-10 13:42:29', 1, '2017-01-10 13:42:29', '0000-00-00 00:00:00'),
(3, '<h2 class="animated2">Informaci&oacute;n y&nbsp;<strong>Estad&iacute;stica</strong></h2>\r\n\r\n<h3 class="animated3">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class="animated5"><a class="slider btn btn-system btn-large" href="#">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'mconstructora2.png', 'mconstructora2_thumb.png', 1, 0, '2016-10-03 14:46:29', 1, '2017-01-10 13:42:58', 1, '2017-01-10 13:42:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonio`
--

CREATE TABLE `testimonio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT '',
  `contenido` text,
  `tipo` tinyint(4) DEFAULT '1',
  `url_video` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `testimonio`
--

INSERT INTO `testimonio` (`id`, `titulo`, `contenido`, `tipo`, `url_video`, `imagen`, `thumb`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'Fusce interdum libero ut erat sodales, eget vestibulum erat laoreet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci.</p>', 1, 'https://www.youtube.com/watch?v=sfDW53ddGsY', 'testimonio_empresa_1.jpg', 'testimonio_empresa_1_thumb.jpg', 1, NULL, '2016-09-26 16:59:53', 1, '2016-09-26 17:00:31', 1, '2016-09-26 17:00:31', '0000-00-00 00:00:00'),
(2, 'Duis bibendum mauris quis lorem tristique, eget aliquam sapien pulvinar', '<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>', 1, 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'testimonio_empresa_3.jpg', 'testimonio_empresa_3_thumb.jpg', 1, NULL, '2016-09-26 17:02:14', 1, '2016-09-26 17:02:27', 1, '2016-09-26 17:02:27', '0000-00-00 00:00:00'),
(3, 'Vestibulum commodo magna et libero malesuada, non varius ipsum interdum', '<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>', 1, 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'testimonio_empresa_21.jpg', 'testimonio_empresa_21_thumb.jpg', 1, NULL, '2016-09-26 17:08:06', 1, '2016-09-26 17:08:06', NULL, '2016-09-26 17:08:06', '0000-00-00 00:00:00'),
(4, 'Proin sit amet justo varius, lobortis orci at, blandit urna', '<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt.</p>', 1, 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'testimonio_empresa_4.jpg', 'testimonio_empresa_4_thumb.jpg', 1, NULL, '2016-09-26 17:08:47', 1, '2016-09-26 17:09:38', 1, '2016-09-26 17:09:38', '0000-00-00 00:00:00'),
(5, 'Arman Rojas Fusce interdum libero ut erat sodales', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci</p>', 2, '', 'foto_4.jpg', 'foto_4_thumb.jpg', 1, NULL, '2016-09-26 17:11:41', 1, '2016-09-26 17:11:41', NULL, '2016-09-26 17:11:41', '0000-00-00 00:00:00'),
(6, 'Walter Riso Duis bibendum mauris quis lorem tristique', '<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 2, '', 'foto_8.jpg', 'foto_8_thumb.jpg', 1, NULL, '2016-09-26 17:12:44', 1, '2016-09-26 17:12:44', NULL, '2016-09-26 17:12:44', '0000-00-00 00:00:00'),
(7, 'Federico Casas Suspendisse eget sapien sit amet', '<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut. </p>', 2, '', 'foto_3.jpg', 'foto_3_thumb.jpg', 1, NULL, '2016-09-26 17:13:51', 1, '2016-09-26 17:13:51', NULL, '2016-09-26 17:13:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) DEFAULT '',
  `apellidos` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT '',
  `perfil` tinyint(4) DEFAULT NULL,
  `fotografia` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `ultima_visita` datetime DEFAULT '0000-00-00 00:00:00',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `habilitado` datetime DEFAULT '0000-00-00 00:00:00',
  `deshabilitado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombres`, `apellidos`, `usuario`, `email`, `password`, `perfil`, `fotografia`, `thumb`, `estado`, `hits`, `ultima_visita`, `creado`, `creado_por`, `modificado`, `modificado_por`, `habilitado`, `deshabilitado`) VALUES
(1, 'Administrador', 'PRINCIPAL', 'admin', 'adminurse@gmail.com', 'qY8ByUNhjFJ0zs6', 1, '', '', 1, NULL, '2017-02-22 14:14:47', '2016-09-26 15:46:58', 0, '2017-02-22 14:14:47', 1, '2017-01-11 14:04:32', '0000-00-00 00:00:00'),
(2, 'Hugo', 'Montes', 'hugo', 'hugomontes.formaempresas@gmail.com', '123456789', 1, '', '', 1, NULL, '2017-02-04 12:31:21', '2017-02-01 13:45:55', 1, '2017-02-04 12:31:21', NULL, '2017-02-01 13:45:55', '0000-00-00 00:00:00'),
(3, 'juan', 'perez', 'juan', 'juan@gmail.com', '123456789', 2, '', '', 1, NULL, '2017-02-22 14:10:50', '2017-02-01 15:22:21', 1, '2017-02-22 14:10:50', NULL, '2017-02-01 15:22:21', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `biblioteca_categoria`
--
ALTER TABLE `biblioteca_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `biblioteca_documento`
--
ALTER TABLE `biblioteca_documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudad_inscripcion`
--
ALTER TABLE `ciudad_inscripcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto_respuesta`
--
ALTER TABLE `contacto_respuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `convocatoria_empresa`
--
ALTER TABLE `convocatoria_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `convocatoria_formador`
--
ALTER TABLE `convocatoria_formador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialista_ciudad`
--
ALTER TABLE `especialista_ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_especialista_ciudad` (`id`);

--
-- Indices de la tabla `especialista_departamento`
--
ALTER TABLE `especialista_departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialista_empleador`
--
ALTER TABLE `especialista_empleador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_especialista_empleador` (`id`);

--
-- Indices de la tabla `especialista_especialidad`
--
ALTER TABLE `especialista_especialidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_especialista_especialidad` (`id`);

--
-- Indices de la tabla `especialista_solicitud`
--
ALTER TABLE `especialista_solicitud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_especialista_solicitud` (`id`),
  ADD KEY `cod_especialista_solicitud_empleador` (`id_empleador`),
  ADD KEY `cod_especialista_solicitud_ciudad` (`id_ciudad`),
  ADD KEY `cod_especialista_solicitud_especialidad` (`id_especialidad`);

--
-- Indices de la tabla `especialista_trabajador`
--
ALTER TABLE `especialista_trabajador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_especialista_trabajador` (`id`),
  ADD KEY `cod_especialista_trabajador_depto` (`id_departamento`);

--
-- Indices de la tabla `especialista_trabajador_especialidad`
--
ALTER TABLE `especialista_trabajador_especialidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_especialista_trabajador_especialidad` (`id`),
  ADD KEY `cod_especialista_trabajador_especialidad_trabajador` (`id_trabajador`),
  ADD KEY `cod_especialista_trabajador_especialidad_espacialidad` (`id_especialidad`);

--
-- Indices de la tabla `formador`
--
ALTER TABLE `formador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulo_score`
--
ALTER TABLE `modulo_score`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `navegacion`
--
ALTER TABLE `navegacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticia_grupo`
--
ALTER TABLE `noticia_grupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`estado`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`creado_por`),
  ADD KEY `idx_featured_catid` (`catid`);

--
-- Indices de la tabla `pagina_predisenada`
--
ALTER TABLE `pagina_predisenada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`estado`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`creado_por`),
  ADD KEY `idx_featured_catid` (`catid`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postgrado`
--
ALTER TABLE `postgrado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulacion_empresa`
--
ALTER TABLE `postulacion_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulacion_formador`
--
ALTER TABLE `postulacion_formador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulacion_formador_tmp`
--
ALTER TABLE `postulacion_formador_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulacion_postgrado`
--
ALTER TABLE `postulacion_postgrado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `sidebar`
--
ALTER TABLE `sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonio`
--
ALTER TABLE `testimonio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `biblioteca_categoria`
--
ALTER TABLE `biblioteca_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `biblioteca_documento`
--
ALTER TABLE `biblioteca_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `ciudad_inscripcion`
--
ALTER TABLE `ciudad_inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `contacto_respuesta`
--
ALTER TABLE `contacto_respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `convocatoria_empresa`
--
ALTER TABLE `convocatoria_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `convocatoria_formador`
--
ALTER TABLE `convocatoria_formador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `especialista_ciudad`
--
ALTER TABLE `especialista_ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `especialista_departamento`
--
ALTER TABLE `especialista_departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `especialista_empleador`
--
ALTER TABLE `especialista_empleador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `especialista_especialidad`
--
ALTER TABLE `especialista_especialidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `especialista_solicitud`
--
ALTER TABLE `especialista_solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `especialista_trabajador`
--
ALTER TABLE `especialista_trabajador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `especialista_trabajador_especialidad`
--
ALTER TABLE `especialista_trabajador_especialidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT de la tabla `formador`
--
ALTER TABLE `formador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `modulo_score`
--
ALTER TABLE `modulo_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `navegacion`
--
ALTER TABLE `navegacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT de la tabla `noticia_grupo`
--
ALTER TABLE `noticia_grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `pagina_predisenada`
--
ALTER TABLE `pagina_predisenada`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `postgrado`
--
ALTER TABLE `postgrado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `postulacion_empresa`
--
ALTER TABLE `postulacion_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `postulacion_formador`
--
ALTER TABLE `postulacion_formador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `postulacion_formador_tmp`
--
ALTER TABLE `postulacion_formador_tmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `postulacion_postgrado`
--
ALTER TABLE `postulacion_postgrado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `sidebar`
--
ALTER TABLE `sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `testimonio`
--
ALTER TABLE `testimonio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `especialista_solicitud`
--
ALTER TABLE `especialista_solicitud`
  ADD CONSTRAINT `fk_especialista_solicitud_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `especialista_ciudad` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_especialista_solicitud_empleador` FOREIGN KEY (`id_empleador`) REFERENCES `especialista_empleador` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_especialista_solicitud_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialista_especialidad` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `especialista_trabajador`
--
ALTER TABLE `especialista_trabajador`
  ADD CONSTRAINT `fk_especialista_trabajador_depto` FOREIGN KEY (`id_departamento`) REFERENCES `especialista_departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `especialista_trabajador_especialidad`
--
ALTER TABLE `especialista_trabajador_especialidad`
  ADD CONSTRAINT `fk_especialista_trabajador_especialidad_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialista_especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_especialista_trabajador_especialidad_trabajador` FOREIGN KEY (`id_trabajador`) REFERENCES `especialista_trabajador` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
