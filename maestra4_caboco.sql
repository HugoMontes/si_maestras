-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2017 a las 13:19:15
-- Versión del servidor: 5.6.32-78.1-log
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `maestra4_caboco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE IF NOT EXISTS `biblioteca` (
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `biblioteca_categoria` (
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `biblioteca_documento` (
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `ciudad_inscripcion` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `contacto` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `respondido`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(2, 'aaa', 'aaa@gmail.com', 'aaa', 0, NULL, '2016-11-11 15:17:30', NULL, '2016-11-11 15:17:30', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'bbb', 'bbb@gmail.com', 'bbb', 0, NULL, '2016-11-11 15:19:02', NULL, '2016-11-11 15:19:02', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_respuesta`
--

CREATE TABLE IF NOT EXISTS `contacto_respuesta` (
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

CREATE TABLE IF NOT EXISTS `convocatoria_empresa` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `convocatoria_formador` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL,
  `email_notificacion` varchar(255) DEFAULT '',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `email`
--

INSERT INTO `email` (`id`, `email_notificacion`, `creado`, `creado_por`, `modificado`, `modificado_por`) VALUES
(1, 'omarbautista@gmail.com', '2016-09-15 16:16:57', NULL, '2016-09-15 15:54:56', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `especialista_ciudad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `especialista_departamento` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `especialista_empleador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

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
(54, 'Mauricio', 'hugomontes927@gmail.com', 'calle m', '2017-02-11 11:17:23', '2017-02-11 11:17:23'),
(55, 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Sanchez Lima 2293 Sopocachi', '2017-02-23 09:03:26', '2017-02-23 09:03:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_especialidad`
--

CREATE TABLE IF NOT EXISTS `especialista_especialidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `especialista_solicitud` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_ini` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `id_empleador` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

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
(64, 12, '2017-02-01', '2017-02-22', 54, 1, 2, '2017-02-11 11:17:23', '2017-02-11 11:17:23'),
(65, 2, '2017-02-24', '2017-02-28', 55, 1, 2, '2017-02-23 09:03:26', '2017-02-23 09:03:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_trabajador`
--

CREATE TABLE IF NOT EXISTS `especialista_trabajador` (
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `especialista_trabajador_especialidad` (
  `id` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `anios_experiencia` int(11) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `formador` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `menu` (
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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `modulo` (
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id`, `titulo`, `modulo`, `contenido`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'Pie de página', 'mod_pie', '<div class="container">\r\n<div class="row footer-widgets"><!-- Start Subscribe & Social Links Widget -->\r\n<div class="col-md-3 col-xs-12">\r\n<div class="footer-widget social-widget">\r\n<p><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_maestras_final_7_blancov.png" style="width: 176px; height: 66px;" /></p>\r\n\r\n<ul class="social-icons">\r\n	<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>\r\n	<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>\r\n	<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li>\r\n	<li><a class="instgram" href="#"><i class="fa fa-instagram"></i></a></li>\r\n	<li><a class="vimeo" href="#"><i class="fa fa-vimeo-square"></i></a></li>\r\n	<li><a class="skype" href="#"><i class="fa fa-skype"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Subscribe & Social Links Widget --><!-- Start Twitter Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget twitter-widget">\r\n<h4>RECURSOS</h4>\r\n\r\n<p><a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/quienes-somos" style="color: white;">Qui&eacute;nes Somos</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/como-funciona" style="color: white;">C&oacute;mo funciona</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/equidad-de-genero-en-el-sector" style="color: white;">Equidad de g&eacute;nero en el sector</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/norma-vigente" style="color: white;">Derechos laborales</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/salud-seguridad-trabajo" style="color: white;">Salud y Seguridad en el Trabajo</a></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Twitter Widget --><!-- Start Flickr Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget twitter-widget">\r\n<h4>DESARROLLO</h4>\r\n\r\n<p style="margin-bottom:10px;"><strong>Esta plataforma fue desarrollada con el apoyo de la Organizaci&oacute;n Internacional del Trabajo</strong></p>\r\n\r\n<p><img alt="" src="/si_maestras/assets/filemanager/userfiles/OIT_BLANCO_SIN_LETRAS_P.png" style="width: 53px; height: 50px;" /></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Flickr Widget --><!-- Start Contact Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget contact-widget">\r\n<h4>CONT&Aacute;CTANOS</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="width: 90px;" valign="top"><span><i class="fa fa-phone" style="margin-right: 0.8rem;"></i>Tel&eacute;fono:</span></td>\r\n			<td>&nbsp;(591) 2423134 - 2423139</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top"><span><i class="fa fa-envelope" style="margin-right: 0.8rem;"></i>Email:</span></td>\r\n			<td>&nbsp;caboco.bo@gmail.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top"><span><i class="fa  fa-map-marker" style="margin-right: 0.8rem;"></i>&nbsp;Direcci&oacute;n:</span></td>\r\n			<td>&nbsp;Av. Sanchez Lima 2557 - Torre Codes Piso 5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Contact Widget --></div>\r\n<!-- .row --><!-- Start Copyright -->\r\n\r\n<div class="copyright-section">\r\n<div class="row">\r\n<div class="col-md-6">\r\n<p>&copy; OIT Todos los derechos reservados - Desarrollado por <a href="http://formaempresas.com" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_formaempresas_blanco.png" style="width: 83px; height: 12px;" /></a></p>\r\n</div>\r\n<!--\r\n<div class="col-md-6">\r\n<ul class="footer-nav">\r\n	<li><a href="#">Sitemap</a></li>\r\n	<li><a href="#">Privacy Policy</a></li>\r\n	<li><a href="#">Contact</a></li>\r\n</ul>\r\n</div>\r\n--></div>\r\n</div>\r\n<!-- End Copyright --></div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-02-22 16:09:41', 1, '2017-02-22 16:09:41', '2016-09-13 10:35:07'),
(2, 'Auspiciadores', 'mod_auspiciantes', '<ul id="foo0">\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n  	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n  <li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n  <li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/gamlp.png" style="width: 70px; height: 70px;" /></li>\r\n</ul>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-02-17 17:36:54', 1, '2017-02-17 17:36:54', '0000-00-00 00:00:00'),
(3, 'Empresas', 'mod_auspiciadores', '<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/cepb.png" style="height: 110px; width: 270px;" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-03-07 13:57:04', 1, '2017-03-07 13:57:04', '0000-00-00 00:00:00'),
(4, 'Score Global', 'mod_score_global', '<div class="contenido ng-scope">\r\n<div class="col-xs-12 col-md-6">\r\n<div class="score-content">\r\n<h3 style="padding-top: 20px;">Maestras constructoras</h3>\r\n\r\n<p>Maestras constructoras se implement&oacute; en m&aacute;s de&nbsp;810&nbsp;empresas en&nbsp;7&nbsp;pa&iacute;ses:</p>\r\n</div>\r\n\r\n<div class="score-content centered-parent">Resultados SCORE Global<br />\r\n(2009 - 2013)</div>\r\n</div>\r\n\r\n<div class="col-xs-12 col-md-6">\r\n<div class="score-content">\r\n<ul class="image">\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">3-4 VECES POR MES</span><br />\r\n				Reuniones de Equipos de Mejoramiento Empresarial (EME)</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">USD 3.000 Y 15.000</span><br />\r\n				Reducci&oacute;n de costos 2-3 meses despu&eacute;s de la formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">29% PROMEDIO</span><br />\r\n				Reducci&oacute;n de defectos</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">HASTA 22% MENOS</span><br />\r\n				Ausentismo laboral</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">3% AHORRO ENERG&Eacute;TICO (KwH)</span><br />\r\n				por cada unidad producida</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">15-50% Icremento en productividad 2,5</span><br />\r\n				meses despu&eacute;s del Taller de Formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">36%</span><br />\r\n				Reducci&oacute;n de accidentes</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-01-16 15:16:13', 1, '2017-01-16 15:16:13', '0000-00-00 00:00:00'),
(5, 'Escuelas de formación', 'mod_enlaces', '<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/logo_Desarrollo_Economico2.png" style="width: 222px; height: 70px; padding-top: 10px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/LOGO_V3_blanco2.jpg" style="width: 181px; height: 100px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/RED_HABITAT.png" style="width: 89px; height: 100px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px; padding-top: 10px;" /></div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-02-22 16:08:37', 1, '2017-02-22 16:08:37', '2016-10-03 10:15:07'),
(6, 'Logotipo', 'mod_logotipo', 'logo_maestras_final_7.png', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-02-08 17:29:02', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_score`
--

CREATE TABLE IF NOT EXISTS `modulo_score` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `navegacion` (
  `id` int(11) NOT NULL,
  `vista` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `navegacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `navegacion`
--

INSERT INTO `navegacion` (`id`, `vista`, `navegacion`, `creado`, `modificado`) VALUES
(1, 'usuarios', 'index.php/administrador/usuario', '0000-00-00 00:00:00', '2017-03-16 14:25:16'),
(2, 'noticias_generales', 'index.php/administrador/noticia/1', '0000-00-00 00:00:00', '2017-03-16 14:23:55'),
(3, 'paginas', 'index.php/administrador/pagina', '0000-00-00 00:00:00', '2017-03-07 15:01:34'),
(4, 'menus', 'index.php/administrador/menu', '0000-00-00 00:00:00', '2017-03-07 15:03:45'),
(5, 'formadores', 'index.php/administrador/formador', '0000-00-00 00:00:00', '2017-02-06 16:17:20'),
(6, 'testimonios', 'index.php/administrador/testimonio', '0000-00-00 00:00:00', '2016-11-10 12:25:20'),
(7, 'publicaciones', 'index.php/administrador/publicacion', '0000-00-00 00:00:00', '2017-03-16 14:25:04'),
(8, 'contactos', 'index.php/administrador/contacto', '0000-00-00 00:00:00', '2017-03-13 15:09:43'),
(9, 'slides', 'index.php/administrador/slide', '0000-00-00 00:00:00', '2017-03-16 14:25:22'),
(10, 'bibliotecas', 'index.php/intranet/biblioteca', '0000-00-00 00:00:00', '2016-10-26 10:57:39'),
(11, 'biblioteca_categorias', 'index.php/intranet/biblioteca_categoria?search_in=biblioteca_id&search_key=1', '0000-00-00 00:00:00', '2016-10-26 18:57:17'),
(12, 'biblioteca_documentos', 'index.php/intranet/biblioteca_documento', '0000-00-00 00:00:00', '2016-10-26 11:56:10'),
(13, 'paginas_predisenadas', 'index.php/administrador/pagina_predisenada', '0000-00-00 00:00:00', '2017-03-16 14:23:49'),
(16, 'inscripcion_empresas', 'index.php/intranet/inscripcion_empresa', '0000-00-00 00:00:00', '2016-10-27 10:12:00'),
(14, 'convocatoria_empresas', 'index.php/intranet/convocatoria_empresa', '0000-00-00 00:00:00', '2016-10-26 17:20:10'),
(15, 'convocatoria_formadores', 'index.php/intranet/convocatoria_formador', '0000-00-00 00:00:00', '2016-10-26 12:09:43'),
(17, 'especialistas', 'index.php/administrador/especialista', '0000-00-00 00:00:00', '2017-03-16 14:24:32'),
(18, 'especialidades', 'index.php/administrador/especialidad', '0000-00-00 00:00:00', '2017-03-16 14:24:54'),
(19, 'noticias_capacitacion', 'index.php/administrador/noticia/2', '0000-00-00 00:00:00', '2017-03-16 14:24:11'),
(20, 'informacion_equidad', 'index.php/administrador/informacion/3', '0000-00-00 00:00:00', '2017-03-16 14:25:49'),
(21, 'informacion_derecho', 'index.php/administrador/informacion/4', '0000-00-00 00:00:00', '2017-03-16 14:26:06'),
(22, 'informacion_salud', 'index.php/administrador/informacion/5', '0000-00-00 00:00:00', '2017-03-16 14:26:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id`, `titulo`, `resumen`, `contenido`, `url_video`, `url_audio`, `tipo_contenido`, `fuente`, `url`, `imagen`, `thumb`, `id_grupo`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(65, '"Si me dejaba manosear me pagaban más": La albañil boliviana que lucha contra el acoso sexual', '<p>&quot;Si me dejaba manosear me pagaban m&aacute;s&quot;: la alba&ntilde;il boliviana que lucha contra el acoso sexual</p>', '<p>&quot;Si me dejaba manosear me pagaban m&aacute;s&quot;: la alba&ntilde;il boliviana que lucha contra el acoso sexual</p>', 'https://www.youtube.com/watch?v=5O_OqwUQOII', '', 'video', 'BBC MUNDO', '', 'https://img.youtube.com/vi/5O_OqwUQOII/0.jpg', 'noticia_default_thumb.jpg', 3, 1, 0, '2017-03-07 12:19:30', 1, '2017-03-07 12:20:19', 1, '2017-03-07 12:20:19', '0000-00-00 00:00:00'),
(11, 'Diálogo tripartito facilita una nueva normativa en Bolivia para proteger la salud de los trabajadores de la construcción', '<p>La aprobaci&oacute;n de este decreto se dio a trav&eacute;s de la implementaci&oacute;n del Convenio n&uacute;m. 167 de la OIT referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.</p>', '<p>La seguridad y salud para los trabajadores de la construcci&oacute;n constituye una creciente preocupaci&oacute;n en Bolivia que fue abordada por su Ministerio de Trabajo, Empleo y Previsi&oacute;n Social, la Confederaci&oacute;n Sindical de Trabajadores de la Construcci&oacute;n de Bolivia y la C&aacute;mara Boliviana de la Construcci&oacute;n, quienes mediante un proceso de di&aacute;logo tripartito, aprobaron el pasado 5 de octubre el decreto que reglamenta la Ley N&ordm; 545 de ratificaci&oacute;n del Convenio n&uacute;m. 167 de la Organizaci&oacute;n Internacional del Trabajo (OIT) referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.<br />\r\n<br />\r\nEste reglamento establece que se deben tomar todas las medidas necesarias con el fin de proteger la vida y la salud de los trabajadores. Entre las actividades clasificadas dentro del rubro de la construcci&oacute;n se encuentran la edificaci&oacute;n, las excavaciones, la construcci&oacute;n de carreteras, las obras viales, las transformaciones estructurales, la renovaci&oacute;n, el mantenimiento, la reparaci&oacute;n, las labores de limpieza y pintura, y la demolici&oacute;n de todo tipo de edificaciones.&nbsp;<br />\r\n<br />\r\nAsimismo, la reglamentaci&oacute;n trata diversos puntos como ser la prevenci&oacute;n y protecci&oacute;n contra incendios, los tipos de maquinaria, equipos y herramientas, los trabajos en altura, de demolici&oacute;n, las excavaciones, la iluminaci&oacute;n y el ruido ocupacional. Finalmente, la norma dispone que se deben garantizar las condiciones apropiadas de seguridad y salud en el lugar de trabajo para aquellos trabajadores catalogados como &ldquo;cuenta propia&rdquo;.&nbsp;<br />\r\n<br />\r\nCabe resaltar que a pesar que el sector construcci&oacute;n experiment&oacute; un crecimiento sostenido en la &uacute;ltima d&eacute;cada en Bolivia atrayendo el 8,8% de la fuerza laboral del pa&iacute;s, no contaba con regulaciones espec&iacute;ficas que garantizaran la seguridad y salud de los trabajadores.&nbsp;<br />\r\n<br />\r\nFinalmente, es necesario recordar que la OIT tiene entre sus mandatos la construcci&oacute;n de condiciones que propicien el desarrollo de un di&aacute;logo social de manera sostenible, para impulsar la generaci&oacute;n de empleo digno y sostenible; la difusi&oacute;n y respeto de los derechos fundamentales en el trabajo y el tratamiento del conflicto a trav&eacute;s del dialogo.</p>', NULL, NULL, 'texto', 'OIT', '', 'n13.png', 'n13_thumb.png', 1, 1, 0, '2017-01-18 15:05:24', 1, '2017-01-18 16:07:25', 1, '2017-01-18 16:07:25', '0000-00-00 00:00:00'),
(12, 'Mujeres del sector de la construcción en Bolivia se forman en Derechos Fundamentales y Normas Internacionales del Trabajo', '<p>El 10 de febrero de 2015, el Estado Plurinacional de Bolivia ratific&oacute; el Convenio 167 de la OIT sobre seguridad y salud en el sector de la construcci&oacute;n. En este marco, la OIT promueve un proyecto que cuenta con el financiamiento de la Agencia Sueca de Desarrollo Internacional (ASDI) para la gesti&oacute;n 2016-2017. El proyecto denominado &ldquo;Construyendo Igualdad&rdquo; fue presentado el d&iacute;a 20 de mayo en una mesa multipartita conformada por los actores m&aacute;s importantes del sector de la construcci&oacute;n en Bolivia. Este proyecto tiene como objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo.</p>', '<p>Con el apoyo de la mesa multipartita se consensuaron y validaron diferentes actividades del proyecto, definiendo varias l&iacute;neas de acci&oacute;n. En seguimiento a estos acuerdos, el 21 de julio de 2016 se realiz&oacute; una formaci&oacute;n sobre derechos fundamentales del trabajo a 20 representantes de la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) y a 10 mujeres miembros de la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB).<br />\r\n<br />\r\nLa formaci&oacute;n estuvo a cargo de un asesor legal de la Central Obrera Boliviana (COB), quien abord&oacute; dos grandes temas, las Normas Internacionales del Trabajo y la Normativa Nacional. Dentro de la primera tem&aacute;tica el facilitador explic&oacute; detalladamente las caracter&iacute;sticas del sistema y el control normativo de la OIT y expuso la relaci&oacute;n entre las Normas Internacionales de Trabajo y la legislaci&oacute;n boliviana, tambi&eacute;n habl&oacute; sobre la importancia de la ratificaci&oacute;n del Convenio 167 de la OIT sobre seguridad y salud en la construcci&oacute;n.<br />\r\n<br />\r\nPor otro lado, dentro de la tem&aacute;tica de la normativa boliviana, se abordaron los principales principios del derecho del trabajo, como ser el principio protectivo, el principio de irrenunciabilidad, el principio de inversi&oacute;n de la prueba, el principio de primac&iacute;a de la realidad y el principio de la no discriminaci&oacute;n laboral. Adem&aacute;s, se expusieron los contenidos de la nueva legislaci&oacute;n laboral en Bolivia enfoc&aacute;ndose principalmente en la Ley General del Trabajo.<br />\r\n<br />\r\nAl finalizar el curso, las participantes reconocieron la importancia de las tem&aacute;ticas expuestas ya que muchas de ellas no estaban familiarizadas con las mismas. Se identificaron muchas necesidades que tienen relaci&oacute;n con la falta de seguridad contractual y la falta de conocimiento de las normas internacionales del trabajo. La mayor&iacute;a de las mujeres expresaron su preocupaci&oacute;n frente a la falta de estabilidad laboral debido al incumplimiento de las normativas vigentes.&nbsp;</p>', NULL, NULL, 'texto', 'OIT', '', 'n2.jpg', 'n2_thumb.jpg', 1, 1, 0, '2017-01-18 15:38:09', 1, '2017-01-18 15:38:09', NULL, '2017-01-18 15:38:09', '0000-00-00 00:00:00'),
(13, 'La OIT despierta el interés institucional por mejorar las condiciones de trabajo de las mujeres constructoras', '<p>Durante los &uacute;ltimos a&ntilde;os Bolivia experiment&oacute; un importante crecimiento en el sector de la construcci&oacute;n que signific&oacute; una mayor demanda de mano de obra, la cual se presenta como una alternativa para las mujeres que necesitan incrementar sus ingresos. En esta coyuntura, la Oficina de la OIT para los Pa&iacute;ses Andinos, junto a la Agencia Sueca de Desarrollo Internacional (ASDI) y Red H&aacute;bitat, inici&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo; con la convocatoria a una mesa multipartita en la ciudad de La Paz.</p>', '<p>Desde el 2009 el sector de la construcci&oacute;n en Bolivia presenta un importante crecimiento, entre el 8 y 11% anual, situ&aacute;ndose como el segundo de mayor contribuci&oacute;n al PIB nacional luego de los hidrocarburos. Este boom de la construcci&oacute;n ha determinado un incremento de la demanda de mano de obra, donde las mujeres incursionan de forma sostenida. Si bien en la &uacute;ltima d&eacute;cada en Bolivia las mujeres irrumpieron en mercados de trabajo tradicionalmente monopolizados por los hombres, este proceso contin&uacute;a enfrent&aacute;ndose a la discriminaci&oacute;n por raz&oacute;n de g&eacute;nero, de raza y a la desigualdad en la remuneraci&oacute;n, situaci&oacute;n que es especialmente profunda en el caso de aquellas mujeres que actualmente se dedican a la construcci&oacute;n.<br />\r\n<br />\r\nConsciente de esta problem&aacute;tica, y siguiendo el trabajo iniciado con la ratificaci&oacute;n del Convenio n&uacute;m. 167 de la OIT &ldquo;Convenio sobre seguridad y salud en la construcci&oacute;n&rdquo;, la Oficina de la OIT para los Pa&iacute;ses Andinos present&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo;, el cual tiene por objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo, mejorando sus condiciones de vida, empoder&aacute;ndolas en sus derechos fundamentales del trabajo y logrando su emancipaci&oacute;n econ&oacute;mica. Para llegar a esta meta, la OIT organiz&oacute; una mesa multipartita para presentar dicha iniciativa y generar las bases de trabajo conjunto que direccionen y apoyen la ejecuci&oacute;n de las actividades.&nbsp;<br />\r\n<br />\r\nLas instituciones que asistieron a la mesa multipartita fueron: la Central Obrera Boliviana (COB), la Confederaci&oacute;n de Empresarios Privados de Bolivia (CEPB), la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB), la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC), el Gobierno Aut&oacute;nomo Municipal de La Paz (GAMLP), el Gobierno Aut&oacute;nomo Municipal de El Alto (GAMEA), la ONG Red H&aacute;bitat, y la Embajada de Suecia,&nbsp;<br />\r\n<br />\r\nEl encuentro se inici&oacute; con la descripci&oacute;n de la problem&aacute;tica del sector, acorde a los datos estad&iacute;sticos nacionales disponibles, y con la presentaci&oacute;n del proyecto de la OIT. Al finalizar, y luego de un amplio debate, los asistentes se&ntilde;alaron los puntos en los cuales sus organizaciones podr&iacute;an brindar apoyo al proyecto, por ejemplo desde el lado de los Gobiernos Municipales, incluir las iniciativas empresariales de las mujeres constructoras en las incubadoras de empresas y en las ferias municipales; coordinar las actividades de formaci&oacute;n y apoyar en la elaboraci&oacute;n de normativas municipales para asegurar una inclusi&oacute;n digna de las mujeres constructoras. Desde el lado del gremio empresarial se comprometieron en trabajar en aspectos de formaci&oacute;n, certificaci&oacute;n de los procesos en curso, y trabajar en normativas y cultura de seguridad y salud en el lugar del trabajo. Las organizaciones de trabajadores, por su parte, se comprometieron a socializar y coordinar las actividades con sus bases. Finalmente, todos los participantes manifestaron su inter&eacute;s en participar en el seguimiento del proyecto, confirmando su apoyo a las siguientes mesas multipartitas que ser&aacute;n convocadas por la OIT para evaluar el avance de las intervenciones.</p>', NULL, NULL, 'texto', 'OIT', '', 'n3.jpg', 'n3_thumb.jpg', 1, 1, 0, '2017-01-18 16:02:42', 1, '2017-01-18 16:02:42', NULL, '2017-01-18 16:02:42', '0000-00-00 00:00:00'),
(32, 'Construyendo Igualdad en el sector de las mujeres trabajadoras en construcción en Bolivia', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', 'https://www.youtube.com/watch?v=TGaRmkKyQok', NULL, 'video', '', '', 'https://img.youtube.com/vi/TGaRmkKyQok/0.jpg', 'noticia_default_thumb.jpg', 1, 1, 0, '2017-01-28 13:08:37', 1, '2017-02-18 11:10:54', NULL, '2017-01-28 13:08:37', '0000-00-00 00:00:00'),
(30, 'La OIT en apoyo a la mujer trabajadora de la construcción en Bolivia', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', 'https://www.youtube.com/watch?v=jubqQaWl_UE', '', 'video', 'OIT', '', 'https://img.youtube.com/vi/jubqQaWl_UE/0.jpg', 'noticia_default_thumb.jpg', 1, 1, 0, '2017-01-28 13:03:25', 1, '2017-03-07 12:15:21', 1, '2017-03-07 12:15:21', '0000-00-00 00:00:00'),
(35, 'Integer capacitacion dapibus lorem vel nibh volutpat mollis', '<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_4.jpg', 'noti_4_thumb.jpg', 2, 1, 0, '2016-09-23 17:09:43', 1, '2016-09-23 17:09:43', NULL, '2016-09-23 17:09:43', '0000-00-00 00:00:00'),
(36, 'Integer capacitacion condimentum arcu vel lacinia pretium', '<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_3.jpg', 'noti_3_thumb.jpg', 2, 1, 0, '2016-09-23 17:07:00', 1, '2016-09-23 17:07:00', NULL, '2016-09-23 17:07:00', '0000-00-00 00:00:00'),
(37, 'Cras capacitacion vestibulum enim a velit elementum, sit amet facilisis sem malesuada', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_5.jpg', 'noti_5_thumb.jpg', 2, 1, 0, '2016-09-23 17:11:04', 1, '2016-09-23 17:11:04', NULL, '2016-09-23 17:11:04', '0000-00-00 00:00:00'),
(38, 'Vestibulum capacitacion aliquet erat sit amet tortor posuere, id lacinia sapien varius', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_61.jpg', 'noti_61_thumb.jpg', 2, 1, 0, '2016-09-23 17:12:03', 1, '2017-02-02 16:30:47', 1, '2017-01-30 16:31:07', '0000-00-00 00:00:00'),
(39, 'Aenean capacitacion interdum ipsum sit amet rutrum pharetra', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', '', 'noti_7.jpg', 'noti_7_thumb.jpg', 2, 1, 0, '2016-09-23 17:15:31', 1, '2016-10-07 14:45:57', NULL, '2016-09-23 17:15:31', '0000-00-00 00:00:00'),
(40, 'Nullam capacitacion tincidunt urna nec tellus consequat, non rutrum tellus mattis', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque.&nbsp;Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', '', '', 'texto', 'OIT', 'http://google.com', 'noti_8.jpg', 'noti_8_thumb.jpg', 2, 1, 0, '2016-09-23 17:16:54', 1, '2017-01-30 16:19:38', 1, '2017-01-30 16:19:38', '0000-00-00 00:00:00'),
(66, 'La seguridad social para los trabajadores de la construcción', '<p>La seguridad social para los trabajadores de la construcci&oacute;n</p>', '<p>Los niveles de ingreso de los trabajadores de la construcci&oacute;n en Bolivia var&iacute;an seg&uacute;n su categor&iacute;a; los obreros dependientes obtienen menor remuneraci&oacute;n en promedio que los cuenta propia, as&iacute; como los salarios de los empleadores o jefes del sector informal superan a los del sector dependiente. Si bien los promedios de ingreso del sector superan el salario m&iacute;nimo nacional, especialmente en el sector independiente, est&aacute;n perdiendo las coberturas y beneficios de la Seguridad Social. Sin embargo, a pesar de que un gran n&uacute;mero de trabajadores de la construcci&oacute;n est&aacute;n en condici&oacute;n de dependencia, la seguridad y salud en el trabajo como la cobertura de Seguridad Social es muy baja, tanto en salud como en pensiones. Por tanto, los trabajadores de la construcci&oacute;n son vulnerables ante las adversidades de corto y largo plazo.</p>', 'https://www.youtube.com/watch?v=C7Jt_n6lt1M', '', 'video', 'OIT', '', 'https://img.youtube.com/vi/C7Jt_n6lt1M/0.jpg', 'noticia_default_thumb.jpg', 4, 1, 0, '2017-03-07 13:45:00', 1, '2017-03-07 13:46:10', 1, '2017-03-07 13:46:10', '0000-00-00 00:00:00'),
(57, 'Datos Relevantes sobre Género en el Sector de la Construcción', '<p><span style="font-size:18px;"><strong>Datos extra&iacute;dos de la encuesta de hogares 2014.</strong></span></p>', '<ul>\r\n	<li style="text-align: justify;"><strong>95,5% del total de los trabajadores de la construcci&oacute;n son varones, frente a solamente 4,5% que son mujeres.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>La mayor parte de las trabajadoras de la construcci&oacute;n son asalariadas, pero no cuentan con cobertura de Seguridad Social por las condiciones de informalidad en las que trabajan.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Del total de los trabajadores en construcci&oacute;n asalariados el 5,6% son mujeres y el 94,4% son hombres.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Entre los hombres 26,4% son trabajadores por cuenta propia mientras que entre las mujeres la presencia de trabajadoras por cuenta propia es de solamente 1,3%.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Del total de los trabajadores sin remuneraci&oacute;n dentro del sector de la construcci&oacute;n 62% son mujeres y 38% son hombres.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Del total de los trabajadores sin remuneraci&oacute;n que son familiares o aprendices dentro del sector de la construcci&oacute;n las mujeres representan un 24,7% y los hombres solamente un 0,8%.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Si bien se acelera la incorporaci&oacute;n de las mujeres en la industria de la construcci&oacute;n y esta mano de obra es apreciada por los empleadores, no se refleja en el nivel de ingresos.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Las mujeres generalmente se vinculan a la actividad de la construcci&oacute;n como ayudantes o peones. Por esta raz&oacute;n las mujeres reciben por lo menos un 20% menos de la paga que se realiza a un var&oacute;n, independientemente de la actividad o la responsabilidad (Peri&oacute;dico P&aacute;gina Siete, domingo 10 de noviembre de 2013).</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Del total de trabajadores de la construcci&oacute;n 58,9% de los hombres ejercen como alba&ntilde;iles y solamente el 15,5% coo ayudantes, en tanto que en el caso de las mujeres , 15,8% trabaja como alba&ntilde;il y 28,6% como ayudantes.</strong></li>\r\n</ul>', '', '', 'texto', '', '', 'Untitled6.png', 'Untitled6_thumb.png', 3, 1, 0, '2017-03-07 09:29:08', 1, '2017-03-07 10:24:52', 1, '2017-03-07 10:24:52', '0000-00-00 00:00:00'),
(58, 'Estereotipos y preconceptos del sector de la construcción', '<p><span style="font-size:18px;"><b>Estereotipos y preconceptos presentes en la gesti&oacute;n del empleo dentro del sector de la construcci&oacute;n</b></span></p>', '<p><strong>EL TEMA:</strong> La fuerza y resistencia f&iacute;sica</p>\r\n\r\n<p><strong>ESTEREOTIPOS:</strong> &ldquo;Las mujeres no tienen suficiente fuerza para trabajar en la construcci&oacute;n&rdquo;</p>\r\n\r\n<p><strong>REFLEXIONEMOS:</strong></p>\r\n\r\n<p>&bull; La fuerza f&iacute;sica depende no solo del sexo: tambi&eacute;n depende del entrenamiento y la experiencia previa. Muchas ocupaciones tradicionalmente femeninas requieren gran fuerza y resistencia. Ejemplos: Comadrona y trabajadora dom&eacute;stica.</p>\r\n\r\n<p>&bull; Cada vez m&aacute;s la tecnolog&iacute;a suple la fuerza f&iacute;sica en el trabajo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><u>La segmentaci&oacute;n laboral por sexo en el sector de la construcci&oacute;n es un problema porque:</u></strong></p>\r\n\r\n<p>&nbsp;&bull; Limita las posibilidades de mujeres y hombres de optar a empleos diversos; y por tanto, limita las posibilidades de las empresas de aprovechar la diversidad del talento.</p>\r\n\r\n<p>&bull; Los sectores donde se genera m&aacute;s empleo (por ejemplo, la construcci&oacute;n con fondos p&uacute;blicos) benefician fundamentalmente a los hombres.</p>\r\n\r\n<p>&bull; Los empleos ocupados por mujeres son normalmente m&aacute;s precarios, con menor remuneraci&oacute;n y prestaciones sociales.</p>\r\n\r\n<p>&bull; Limita las posibilidades de las mujeres de acceder a puestos de decisi&oacute;n</p>\r\n\r\n<p>&nbsp;</p>', '', '', 'texto', '', '', 'images.jpg', 'images_thumb.jpg', 0, 1, 0, '2017-03-07 10:19:22', 1, '2017-03-07 10:19:22', NULL, '2017-03-07 10:19:22', '0000-00-00 00:00:00'),
(59, 'Estereotipos y preconceptos presentes dentro del sector de la construcción', '<p><span style="font-size:18px;"><strong>Estereotipos y preconceptos presentes en la gesti&oacute;n del empleo dentro del sector de la construcci&oacute;n</strong></span></p>', '<p style="text-align: justify;"><strong>EL TEMA:</strong> La fuerza y resistencia f&iacute;sica</p>\r\n\r\n<p style="text-align: justify;"><strong>ESTEREOTIPOS:</strong> &ldquo;Las mujeres no tienen suficiente fuerza para trabajar en la construcci&oacute;n&rdquo;</p>\r\n\r\n<p style="text-align: justify;"><strong>REFLEXIONEMOS:</strong></p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;">La fuerza f&iacute;sica depende no solo del sexo: tambi&eacute;n depende del entrenamiento y la experiencia previa. Muchas ocupaciones tradicionalmente femeninas requieren gran fuerza y resistencia. Ejemplos: Comadrona y trabajadora dom&eacute;stica.</li>\r\n	<li style="text-align: justify;">Cada vez m&aacute;s la tecnolog&iacute;a suple la fuerza f&iacute;sica en el trabajo.</li>\r\n</ul>\r\n\r\n<p style="text-align: justify;"><strong>La segmentaci&oacute;n laboral por sexo en el sector de la construcci&oacute;n es un problema porque:</strong></p>\r\n\r\n<p style="text-align: justify;">&nbsp;&bull; Limita las posibilidades de mujeres y hombres de optar a empleos diversos; y por tanto, limita las posibilidades de las empresas de aprovechar la diversidad del talento.</p>\r\n\r\n<p style="text-align: justify;">&bull; Los sectores donde se genera m&aacute;s empleo (por ejemplo, la construcci&oacute;n con fondos p&uacute;blicos) benefician fundamentalmente a los hombres.</p>\r\n\r\n<p style="text-align: justify;">&bull; Los empleos ocupados por mujeres son normalmente m&aacute;s precarios, con menor remuneraci&oacute;n y prestaciones sociales.</p>\r\n\r\n<p style="text-align: justify;">&bull; Limita las posibilidades de las mujeres de acceder a puestos de decisi&oacute;n</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', 'texto', '', '', 'images4.jpg', 'images4_thumb.jpg', 3, 1, 0, '2017-03-07 10:20:00', 1, '2017-03-07 10:23:57', 1, '2017-03-07 10:23:57', '0000-00-00 00:00:00'),
(60, '"Si me dejaba manosear me pagaban más": La albañil boliviana que lucha contra el acoso sexual', '<p><span style="font-size:18px;">V&iacute;deo BBC MUNDO</span></p>', '<p><span style="font-size:18px;">V&iacute;deo sobre la lucha contra el acoso sexual en el sector de la construcci&oacute;n</span></p>', 'http://vid.io/xqOx', '', 'video', 'BBC MUNDO', 'http://vid.io/xqOx', 'https://img.youtube.com/vi/p://vid.io/xqOx/0.jpg', 'noticia_default_thumb.jpg', 0, 1, 0, '2017-03-07 10:27:44', 1, '2017-03-07 10:27:44', NULL, '2017-03-07 10:27:44', '0000-00-00 00:00:00'),
(61, '"Si me dejaba manosear me pagaban más": La albañil boliviana que lucha contra el acoso sexual', '<p><span style="font-size:18px;">V&iacute;deo sobre la lucha contra el acoso sexual en el sector de la construcci&oacute;n</span></p>', '<p>Video BBC Mundo</p>', 'https://www.youtube.com/watch?v=5O_OqwUQOII&t=115s', '', 'video', 'BBC MUNDO', '', 'https://img.youtube.com/vi/5O_OqwUQOII&t=115s/0.jpg', 'noticia_default_thumb.jpg', 3, 0, 0, '2017-03-07 10:28:04', 1, '2017-03-07 12:18:40', 1, '2017-03-07 12:17:12', '0000-00-00 00:00:00'),
(62, 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', '', '', 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'gggg.png', 'gggg_thumb.png', 0, 1, 0, '2017-03-07 12:01:12', 1, '2017-03-07 12:01:12', NULL, '2017-03-07 12:01:12', '0000-00-00 00:00:00');
INSERT INTO `noticia` (`id`, `titulo`, `resumen`, `contenido`, `url_video`, `url_audio`, `tipo_contenido`, `fuente`, `url`, `imagen`, `thumb`, `id_grupo`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(63, 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', '', '', 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'gggg1.png', 'gggg1_thumb.png', 0, 1, 0, '2017-03-07 12:01:40', 1, '2017-03-07 12:01:40', NULL, '2017-03-07 12:01:40', '0000-00-00 00:00:00'),
(64, 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', '', '', 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'FOTO_1_opt.jpg', 'FOTO_1_opt_thumb.jpg', 1, 1, 0, '2017-03-07 12:02:36', 1, '2017-03-07 12:06:33', 1, '2017-03-07 12:06:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia_grupo`
--

CREATE TABLE IF NOT EXISTS `noticia_grupo` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `pagina` (
  `id` int(10) unsigned NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contenido` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadescripcion` tinytext COLLATE utf8mb4_unicode_ci,
  `metapalabras_clave` tinytext COLLATE utf8mb4_unicode_ci,
  `creado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(10) unsigned NOT NULL DEFAULT '0',
  `modificado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(10) unsigned NOT NULL DEFAULT '0',
  `publicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagina`
--

INSERT INTO `pagina` (`id`, `titulo`, `contenido`, `estado`, `catid`, `hits`, `alias`, `metadescripcion`, `metapalabras_clave`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(2, 'Información estadistica', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>\r\n\r\n<p>Sed imperdiet augue eget nulla porttitor aliquet. Nulla eget felis eget lectus vestibulum ornare sed a neque. Maecenas arcu dolor, luctus ut est ac, consequat vulputate erat. Vivamus id consequat justo. Mauris augue turpis, aliquet a massa vel, rutrum convallis arcu. Phasellus sed sollicitudin neque. Aliquam sit amet elit placerat, pellentesque neque sed, convallis lacus.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/si_maestras/assets/filemanager/userfiles/estadistica.jpg" style="width: 300px; height: 225px;" /></p>', 1, 0, 33, 'informacion-estadistica', 'Resultados de maestras constructuras', 'estadisticas, maestras constructoras, caboco', '2016-09-23 18:36:07', 1, '2017-02-10 08:11:41', 1, '2017-01-14 12:46:33', '0000-00-00 00:00:00'),
(3, 'Salud y seguridad en el trabajo', '<p style="text-align: center; max-width: 853px; max-height: 480px; margin: 0 auto;"><iframe allowfullscreen="" frameborder="0" height="480" src="https://www.youtube.com/embed/C7Jt_n6lt1M?rel=0" width="853"></iframe></p>', 1, 0, 70, 'salud-seguridad-trabajo', 'Salud y seguridad en el trabajo', 'salud, seguridad, trabajo, maestras constructoras', '2016-09-24 09:36:45', 1, '2017-02-28 07:20:18', 1, '2017-01-26 15:02:53', '0000-00-00 00:00:00'),
(4, 'Norma Vigente', '<p style="text-align: center;"><img alt="" src="/si_maestras/assets/filemanager/userfiles/norma.png" style="width: 266px; height: 84px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>', 1, 0, 88, 'norma-vigente', 'Norma vigente, maestras trabajadoras', 'maestras trabajadoras, CABOCO', '2016-09-24 10:12:25', 1, '2017-02-26 04:56:43', 1, '2017-01-14 12:12:54', '0000-00-00 00:00:00'),
(5, 'Pagina de Prueba', '<p><span style="font-size:24px;">Ingresar contenido....</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, 0, 72, 'pagina-de-prueba', '', '', '2016-11-29 13:37:50', 1, '2017-01-18 14:26:06', 1, '2016-11-29 13:49:29', '0000-00-00 00:00:00'),
(6, 'Equidad de género en el sector', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', 1, 0, 20, 'equidad-de-genero-en-el-sector', 'Equidad de género en el sector', 'equidad, genero, sector', '2017-02-07 14:14:28', 1, '2017-02-26 12:31:26', 0, '2017-02-07 14:14:28', '0000-00-00 00:00:00'),
(7, 'Quiénes somos', '&nbsp;\r\n<p>La plataforma virtual&nbsp; MAESTRAS CONSTRUCTORAS alberga una base de datos de trabajadoras capacitadas y certificadas en diferentes especialidades del rubro de la construcci&oacute;n. Estas certificaciones son otorgadas por diversos centros de formaci&oacute;n t&eacute;cnica de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>El objetivo de la plataforma es promover v&iacute;nculos laborales entre empleadores y mujeres trabajadoras en la construcci&oacute;n, con el fin de facilitar la b&uacute;squeda y contrataci&oacute;n de trabajadoras capacitadas y as&iacute; promover la visibilizaci&oacute;n de la mano de obra fina que poseen, cuya fama destaca dentro del rubro de la construcci&oacute;n en nuestro pa&iacute;s.</p>\r\n\r\n<p>La Administraci&oacute;n de la Plataforma est&aacute; a cargo de la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), quienes junto con Instituciones de Formaci&oacute;n T&eacute;cnica y con otros actores importantes del sector de la construcci&oacute;n en Bolivia, impulsan el proyecto &ldquo;Construyendo Igualdad&rdquo; iniciado por la Organizaci&oacute;n Internacional de Trabajo (OIT) a principios de 2015 para la promoci&oacute;n de mejores condiciones laborales para las mujeres del sector de la construcci&oacute;n en Bolivia. Este proyecto fue financiado por la Agencia Sueca de Desarrollo Internacional (ASDI).</p>\r\n\r\n<hr />\r\n<div class="content-auspiciantes"><!-- Start Big Heading -->\r\n<div class="big-title text-center">\r\n<h1>Instituciones de <strong>Formaci&oacute;n T&eacute;cnica</strong></h1>\r\n</div>\r\n<!-- End Big Heading -->\r\n\r\n<div class="content-auspiciantes">\r\n<section class="auspiciantes slider" style="margin: 60px auto;">\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="height: 70px; width: 195px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="width: 195px; height: 70px;" /></div>\r\n</section>\r\n</div>\r\n</div>', 1, 0, 88, 'quienes-somos', 'quiénes somos', 'quienes somos', '2017-02-07 14:24:13', 1, '2017-03-09 14:57:12', 1, '2017-02-17 12:16:28', '0000-00-00 00:00:00'),
(8, 'Cómo funciona', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', 1, 0, 29, 'como-funciona', 'cómo funciona', 'cómo funciona', '2017-02-07 14:24:58', 1, '2017-03-07 15:03:26', 0, '2017-02-07 14:24:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_predisenada`
--

CREATE TABLE IF NOT EXISTS `pagina_predisenada` (
  `id` int(10) unsigned NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contenido` text COLLATE utf8mb4_unicode_ci,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescripcion` tinytext COLLATE utf8mb4_unicode_ci,
  `metapalabras_clave` tinytext COLLATE utf8mb4_unicode_ci,
  `estado` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `creado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(10) unsigned NOT NULL DEFAULT '0',
  `modificado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(10) unsigned NOT NULL DEFAULT '0',
  `publicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagina_predisenada`
--

INSERT INTO `pagina_predisenada` (`id`, `titulo`, `contenido`, `alias`, `metadescripcion`, `metapalabras_clave`, `estado`, `catid`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, 'Formadores', NULL, 'formadores-score-bolivia', 'Formadores SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 53, '2016-09-10 11:57:40', 0, '2016-10-01 17:04:25', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Testimonios', NULL, 'testimonios-score-bolivia', 'Testimonios SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 104, '2016-09-10 11:59:10', 0, '2017-02-14 15:42:18', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Página de inicio', NULL, '', 'SCORE de la OIT es un programa mundial de formación y asistencia técnica para pequeñas y medianas empresas', 'Maestras Constructoras, CABOCO', 1, 0, 6778, '2016-09-14 15:01:08', 0, '2017-03-16 14:22:13', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Publicaciones', NULL, 'publicaciones-score-bolivia', 'Publicaciones SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 231, '2016-09-24 18:26:46', 0, '2016-11-14 12:50:17', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Contacto', NULL, 'contacto-maestras-constructoras', 'Contacto Maestras Constructoras', 'Maestras Constructoras, CABOCO', 1, 0, 297, '2016-09-28 11:09:41', 0, '2017-03-07 15:04:30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Formulario de inicio de sesión o registro inicial de formador', NULL, 'inscripciones-previo-formadores-score-bolivia', 'Inscripciones Formadores SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 249, '2016-10-04 14:28:10', 0, '2016-10-24 12:31:23', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Formulario de inscripción de empresa', NULL, 'inscripciones-empresas-score-bolivia', 'Inscripciones Empresas SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 386, '0000-00-00 00:00:00', 0, '2016-11-29 13:17:13', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Caja de herramientas Modulo I', NULL, 'biblioteca/1', 'Caja de herramientas Modulo I', 'Maestras Constructoras, CABOCO', 0, 0, 8, '2016-10-16 19:53:21', 1, '2016-11-29 13:50:52', 1, '2016-10-18 11:04:28', '2016-10-18 11:04:05'),
(10, 'Formulario de inscripción de formador', NULL, 'inscripciones-formadores-score-bolivia', 'Inscripciones Formadores SCORE Bolivia', 'Maestras Constructoras, CABOCO', 1, 0, 593, '0000-00-00 00:00:00', 0, '2017-02-23 10:12:28', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Noticias generales', NULL, 'noticias/1', 'Noticias generales', 'Maestras Constructoras, CABOCO', 1, 0, 653, '0000-00-00 00:00:00', 0, '2017-03-14 17:38:01', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Noticias capacitacion', NULL, 'noticias/2', 'Noticias capacitacion', 'Maestras Constructoras, CABOCO', 1, 0, 195, '0000-00-00 00:00:00', 0, '2017-03-16 14:35:46', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Información equidad de género', '', 'informacion/3', 'Informacion equidad de género', 'Maestras Constructoras, CABOCO', 1, 0, 85, '0000-00-00 00:00:00', 0, '2017-03-16 02:28:18', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Información derechos laborales', NULL, 'informacion/4', 'Derechos laborales', 'Maestras Constructoras, CABOCO', 1, 0, 126, '0000-00-00 00:00:00', 0, '2017-03-07 15:07:50', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Información salud y seguridad en el trabajo', NULL, 'informacion/5', 'Salud y seguridad en el trabajo', 'Maestras Constructoras, CABOCO', 1, 0, 49, '0000-00-00 00:00:00', 0, '2017-03-14 10:19:26', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE IF NOT EXISTS `postgrado` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `postulacion_empresa` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `postulacion_formador` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `postulacion_formador`
--

INSERT INTO `postulacion_formador` (`id`, `convocatoria_id`, `nombres`, `apellido_paterno`, `apellido_materno`, `ci`, `email`, `password`, `estado`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`, `bloqueado`) VALUES
(1, NULL, 'Gustavo Omar', 'Bautista', 'Chambilla', '4824622', 'omarbautista@gmail.com', '4824622', NULL, '2016-10-23 21:05:07', NULL, '2016-10-23 21:05:07', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion_formador_tmp`
--

CREATE TABLE IF NOT EXISTS `postulacion_formador_tmp` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `postulacion_postgrado` (
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

CREATE TABLE IF NOT EXISTS `presentacion` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `presentacion`
--

INSERT INTO `presentacion` (`id`, `imagen_fondo`, `contenido`, `url_video`, `titulo_enlace_1`, `url_enlace_1`, `titulo_enlace_2`, `url_enlace_2`, `titulo_enlace_3`, `url_enlace_3`, `titulo_enlace_4`, `url_enlace_4`, `titulo_enlace_5`, `url_enlace_5`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, '', '<p>lopo</p>', '', '', '', '', '', '', '', 'Nada 4', 'http://4', 'Nada 4', 'http://5', 1, NULL, '0000-00-00 00:00:00', NULL, '2016-09-13 10:02:02', 17, '2016-09-13 10:02:02', '2016-09-10 21:14:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE IF NOT EXISTS `publicacion` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `sesion` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3d919de8cee69ef2663042176eba4966ff2e98f5', '66.249.88.57', 1489211261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393231313236313b),
('f97a53bb52dff1e2c0fc6738b160cde392e917e4', '180.76.15.6', 1489201737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393230313733373b),
('9d79733152d5fbc7db44c230244f4b2e10b552f9', '66.249.79.118', 1489193185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393139333138353b),
('a8ffbe6be315107fb8f6f8dcb4821571d9e3f51e', '66.249.79.126', 1489175772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393137353737323b),
('34ac884efca3c33837b6929c824d737559a419e5', '186.121.242.58', 1489167100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393136373039363b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('29c5be8649fa6892083f7f469667747908ea5dae', '104.237.243.224', 1489165579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393136353537393b),
('c84fca689622eab6c3ce75219b37f6d0bc1d1e04', '186.121.242.58', 1489165544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393136353532353b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('b01bbf577a4910fa026eb2b6adc089a47c609cdb', '186.121.242.58', 1489165525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393136353532343b),
('5909145d9fdf3c26b20541a64e0536ba23ab460f', '66.249.65.58', 1489153058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393135333035373b),
('bfe93ea643f15834f31dd538fe90a99adae0b9f5', '66.249.65.57', 1489153058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393135333035363b),
('2be97cc2e4bbbe643685f8521f66334e236b0c18', '66.249.88.58', 1489119316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393131393331363b),
('e4047c3f3a89a9b207c7abcc670db716f43b0efa', '173.252.124.68', 1489099448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393039393434383b),
('4296e1f70138639713b96b6980b187713a4c5935', '174.138.95.111', 1489093696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393039333639363b),
('b099616b3e705c9f9deaa1871dc4acbc1dbc0665', '66.249.65.57', 1489092265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393039323236343b),
('11b656d738f51b039d494c87acc2f4c88fcc9cfc', '66.249.65.58', 1489088607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393038383630373b),
('8f05980be17e4db71ca5a21feaf3dd6956535dca', '104.237.243.21', 1489087675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393038373637353b),
('39ba84e843b2e11120cfff40f4233875abd2773d', '186.121.242.58', 1489087720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393038373631343b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('e3191ec86e3245e7dadcda78449c91b2a50f2399', '66.249.65.58', 1489087098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393038373039383b),
('2b69fb8faa632f0c3bba8cc215d1008ed81fefe7', '40.77.167.88', 1489076226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393037363232363b),
('0894ef482751aa6a75b6a7d8333d5353ae6a1adc', '40.77.167.88', 1489076175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393037363137353b),
('23a387ae22e4d3c2e28de535df4de6e11cc3fbb2', '40.77.167.88', 1489076148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393037363134383b),
('241402961d654d99a45d0bc601b920ebff47ab27', '40.77.167.88', 1489076087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393037363038373b),
('73be50181e98807153fab12c297b033bfd0a5732', '40.77.167.88', 1489076058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393037363035383b),
('c937f769cdc8504cc60445b8fcd51fdf830ba31b', '186.121.215.124', 1489075113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393037353033353b),
('ff61ed6d4820b31aad8c3f85b26a89976db81352', '66.249.79.126', 1489071744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393037313734343b),
('597dd6378319cbd8aec0a744aa663d57a42b2027', '66.249.88.58', 1489064798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393036343739383b),
('980ec6c346b2055ad4a260e20f586877885e2953', '171.25.193.77', 1489055511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393035353531313b),
('b2ab4e6a578a81a4573a6d20d03d44a4f65b93d7', '83.103.189.110', 1489054024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393035343032343b),
('9076fd0cfb9fe92cbb1cee02932cd77e0cbdafa1', '64.246.165.200', 1489025562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393032353536323b),
('94e9717e7a07164a1a21187526edfc211948e958', '66.249.79.118', 1488955806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383935353830363b),
('e6ae7afc8b6a3bb5be31d1a50a005a87ac074619', '66.249.79.126', 1488955482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383935353438323b),
('f87183f0edddc0470f44eae2a4fcb578fa5c30a9', '66.249.88.7', 1488944408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383934343430383b),
('bad354c664e626911ba7f164210f7b98a363e4a8', '180.76.15.6', 1488926879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932363837383b),
('d9882935798c789638bbf7579d321cc2d477ccd8', '186.121.231.201', 1488925166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932353136363b),
('30555b82ed9adac87b12f69e987f4295d7b91905', '186.121.231.201', 1488924528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932343330393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('761b9da9bd46d97169b00a892d22600c7e6ed1b0', '186.121.242.58', 1488911662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931313432333b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('301570a1cc29dff46a9fab74d63e8ae8cbb2e381', '186.121.242.58', 1488911381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931313132323b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('c0ede163d40b89bfd6eb8a12092cb878428b19cd', '186.121.242.58', 1488910675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931303339303b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('08e9b52a510c3f88a8b68309722a345c43465ca9', '186.121.242.58', 1488910923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931303639383b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2234223b),
('9f710e158e7c2bd8de1db945d053579071d262be', '104.237.242.30', 1488910447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931303434373b677275706f5f6e6f74696369617c733a313a2235223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('77a0d32e3ec04a72238f733f68b9de4cf74ff640', '104.237.242.195', 1488923621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932333632313b),
('c7c82abde6333fb076e1d8a06a8c510dd450a25e', '186.121.231.201', 1488923940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932333932393b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('5619301103968aed585a3b7be7d07e52d9a42c1f', '186.121.242.58', 1488923573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932333537333b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('584d93e4155d15e808cf9acdbbb50bcd15c81be4', '186.121.231.201', 1488923028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932333032383b),
('bf3a550e8cbbb4de960874a8b124ba4b6ae8ec75', '186.121.231.201', 1488922981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932323730363b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('e4133f3bde0afb33a645400f2fe6bb464d3c7f88', '38.80.27.221', 1488918371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931383337303b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('323ee403668dc9336bd7a4158f23310e3bc0e117', '186.121.242.58', 1488918304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931383239373b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('f87b49b2f21561223ea5d14d0a22c518f62f445e', '186.121.242.58', 1488915503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931353436373b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('117d03fc4627783d03268b32bf3107e89c98d812', '104.237.242.131', 1488914406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931343430363b),
('ed9c34d39fea517bc6be0681feab4123bbb10a8b', '186.121.242.58', 1488914488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931343438383b),
('9495dc68a9de0d3dc215fdaf949e2a0357ae9753', '186.121.242.58', 1488915021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931343737373b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('5f7796268f60617f33d7091aa395d6367a6f47ae', '186.121.242.58', 1488915292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931353039343b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('420ee7fe33ed1c9bb0aae92c226e582e1ce4f99f', '180.76.15.163', 1488911835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931313833353b),
('b7baf02cea2b082451bc127fdc75b5bd7c4522e1', '186.121.242.58', 1488914640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931343334333b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('10d526528efe2c45ad8032992965dec85e5a974b', '186.121.242.58', 1488911801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383931313830313b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('82e82847dd53d2bd1ea9c8ba78d819e1c0535790', '186.121.242.58', 1488904665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383930343434373b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('0369bc74e357b0b1d781604354b75c7f7ea7292a', '186.121.242.58', 1488905070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383930343831303b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('f474acf80287c283799d436bd3d79e3f2b2c35e5', '186.121.242.58', 1488905378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383930353131333b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2233223b),
('2ede1eb7bc2b4d42fb179fbe7e2a03dcc76c9001', '186.121.242.58', 1488905681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383930353431393b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('358ab453e56de87d78cc6aad4b0b06992c96fb09', '186.121.242.58', 1488905810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383930353733303b72656d656d6265725f6d657c623a313b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('1f4a9908e916b44a90fd3ada2ec3fad5d06129cd', '66.249.75.5', 1489255931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393235353933313b),
('74ddba3fe60daa5d3cbb847ee656a315f8f2cab9', '66.249.75.2', 1489305018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393330353031383b),
('38cb8fe425f3b17a2d5e67308c7f3519b926c8b4', '181.188.179.146', 1489353813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393335333831333b),
('1840db926f7b87983552a8d87f688832521f5d54', '45.63.115.46', 1489397377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393339373337373b),
('f1cb0efe909fccae3cd433f816ae17332ce860f6', '66.249.88.56', 1489418819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393431383831393b),
('55de2843c031f8a796a16a474442c0d919da6cb2', '186.121.242.58', 1489433983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393433333836343b677275706f5f6e6f74696369617c733a313a2233223b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('aaca5ef98b110a584371c9ea66d3b94c42d58ad4', '38.80.27.203', 1489433919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393433333931393b),
('4e863077026a8a64a1eb48c0b3e8b9cbc902ecbc', '186.121.242.58', 1489437618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393433373631383b677275706f5f6e6f74696369617c733a313a2233223b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b),
('44559a6b9edf519a64016b6782c38d3ba4c29132', '104.237.242.231', 1489437667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393433373636363b677275706f5f6e6f74696369617c733a313a2233223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('e77ef63bb9597aea983c5ef99356e3e067f80555', '180.76.15.142', 1489441899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393434313839393b),
('4d4b801019729a3703d6797fb01decc02176d7cc', '66.249.66.65', 1489442922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393434323932323b),
('5d7f7f914ecef3913cb453f9304e3606e665d1c5', '103.251.201.171', 1489444260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393434343236303b),
('86b17654e4a617f25601af7447c57858f8005417', '180.76.15.150', 1489477215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393437373231353b),
('d59832390d0bcd568e76469d9b4366f09db9590e', '66.249.66.65', 1489502966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393530323936363b),
('3b52bb81c72ad10b027cc956133e5215246e76e1', '66.249.66.71', 1489506317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393530363331373b),
('78c861f2f53fbc96258e4b02691d2e29fa7fed59', '66.249.66.68', 1489514875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531343837353b),
('5a0d4b4bc8c54b77077f98eeabd5fbea892db255', '180.76.15.6', 1489529281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393532393238313b),
('99287f41d4355eb37b488ca5dbc04f18af4ccc77', '66.249.88.56', 1489547613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393534373631333b),
('6afc6efd409ba22d2f02eb5d5759751ab1120101', '180.76.15.139', 1489564574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393536343537343b),
('479e9e24acba841d04b0bf7fe4799b894d314ee5', '52.4.48.181', 1489577699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393537373639393b),
('5e0eb48f96c58c245be1398877331b492bafa6c6', '109.63.206.2', 1489597936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393539373933363b),
('d0a9baded51c7af703b2dd5425ab6f40beda7460', '66.249.69.135', 1489601531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393630313533313b),
('5f1964ad388713c8e39286bc01e6b795c5d9815e', '180.76.15.160', 1489617074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393631373037343b),
('f64a15bb841a2ac3e342ad2af3a50fd71f4e82bc', '66.249.88.57', 1489636360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393633363336303b),
('636fd9fa33be26f3e777b13195facf0c3703e137', '66.249.69.132', 1489647184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393634373138343b),
('bc754277da9151ec47cc1994febfbc2edb08b334', '66.249.69.132', 1489647307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393634373330373b),
('3f928f78c2adea1ef6f381592b9542c3e8106025', '66.249.69.132', 1489647368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393634373336383b),
('9663ded5c0bf48cdb373d4ace9885d44954493ca', '66.249.69.132', 1489647498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393634373439383b),
('9d07f3bca8567f58c1177ae19b5011f7f2bd1d24', '180.76.15.10', 1489679209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393637393230393b),
('0f688668a3aeca50f1c1f57a0ec1218d8013dd5b', '186.121.218.226', 1489690569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393639303333333b7573756172696f7c613a383a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2235223b),
('215ef6dd4bc1028bea349b8fcd1c9907c7ea7463', '66.249.79.130', 1489691146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393639313134363b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sidebar`
--

CREATE TABLE IF NOT EXISTS `sidebar` (
  `id` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `creado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sidebar`
--

INSERT INTO `sidebar` (`id`, `estado`, `creado`, `modificado`) VALUES
(1, 1, '0000-00-00 00:00:00', '2016-08-24 13:55:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `testimonio` (
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `usuario` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombres`, `apellidos`, `usuario`, `email`, `password`, `perfil`, `fotografia`, `thumb`, `estado`, `hits`, `ultima_visita`, `creado`, `creado_por`, `modificado`, `modificado_por`, `habilitado`, `deshabilitado`) VALUES
(1, 'Administrador', 'PRINCIPAL', 'admaestrascons', 'info@maestrasconstructoras.org', 'qY8ByUNhjFJ0zs6', 1, '', '', 1, NULL, '2017-03-16 14:22:36', '2016-09-26 15:46:58', 0, '2017-03-16 14:22:36', 1, '2017-02-22 16:17:53', '0000-00-00 00:00:00'),
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
  ADD PRIMARY KEY (`id`), ADD KEY `cod_especialista_ciudad` (`id`);

--
-- Indices de la tabla `especialista_departamento`
--
ALTER TABLE `especialista_departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialista_empleador`
--
ALTER TABLE `especialista_empleador`
  ADD PRIMARY KEY (`id`), ADD KEY `cod_especialista_empleador` (`id`);

--
-- Indices de la tabla `especialista_especialidad`
--
ALTER TABLE `especialista_especialidad`
  ADD PRIMARY KEY (`id`), ADD KEY `cod_especialista_especialidad` (`id`);

--
-- Indices de la tabla `especialista_solicitud`
--
ALTER TABLE `especialista_solicitud`
  ADD PRIMARY KEY (`id`), ADD KEY `cod_especialista_solicitud` (`id`), ADD KEY `cod_especialista_solicitud_empleador` (`id_empleador`), ADD KEY `cod_especialista_solicitud_ciudad` (`id_ciudad`), ADD KEY `cod_especialista_solicitud_especialidad` (`id_especialidad`);

--
-- Indices de la tabla `especialista_trabajador`
--
ALTER TABLE `especialista_trabajador`
  ADD PRIMARY KEY (`id`), ADD KEY `cod_especialista_trabajador` (`id`), ADD KEY `cod_especialista_trabajador_depto` (`id_departamento`);

--
-- Indices de la tabla `especialista_trabajador_especialidad`
--
ALTER TABLE `especialista_trabajador_especialidad`
  ADD PRIMARY KEY (`id`), ADD KEY `cod_especialista_trabajador_especialidad` (`id`), ADD KEY `cod_especialista_trabajador_especialidad_trabajador` (`id_trabajador`), ADD KEY `cod_especialista_trabajador_especialidad_espacialidad` (`id_especialidad`);

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
  ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`estado`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`creado_por`), ADD KEY `idx_featured_catid` (`catid`);

--
-- Indices de la tabla `pagina_predisenada`
--
ALTER TABLE `pagina_predisenada`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`estado`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`creado_por`), ADD KEY `idx_featured_catid` (`catid`);

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
  ADD PRIMARY KEY (`id`), ADD KEY `ci_sessions_timestamp` (`timestamp`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `biblioteca_categoria`
--
ALTER TABLE `biblioteca_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `biblioteca_documento`
--
ALTER TABLE `biblioteca_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `ciudad_inscripcion`
--
ALTER TABLE `ciudad_inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `contacto_respuesta`
--
ALTER TABLE `contacto_respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `convocatoria_empresa`
--
ALTER TABLE `convocatoria_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `convocatoria_formador`
--
ALTER TABLE `convocatoria_formador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `especialista_ciudad`
--
ALTER TABLE `especialista_ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `especialista_departamento`
--
ALTER TABLE `especialista_departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `especialista_empleador`
--
ALTER TABLE `especialista_empleador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `especialista_especialidad`
--
ALTER TABLE `especialista_especialidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `especialista_solicitud`
--
ALTER TABLE `especialista_solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT de la tabla `especialista_trabajador`
--
ALTER TABLE `especialista_trabajador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `especialista_trabajador_especialidad`
--
ALTER TABLE `especialista_trabajador_especialidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT de la tabla `formador`
--
ALTER TABLE `formador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `modulo_score`
--
ALTER TABLE `modulo_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `navegacion`
--
ALTER TABLE `navegacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `noticia_grupo`
--
ALTER TABLE `noticia_grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `pagina_predisenada`
--
ALTER TABLE `pagina_predisenada`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `postgrado`
--
ALTER TABLE `postgrado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `postulacion_empresa`
--
ALTER TABLE `postulacion_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `postulacion_formador`
--
ALTER TABLE `postulacion_formador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `postulacion_formador_tmp`
--
ALTER TABLE `postulacion_formador_tmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `postulacion_postgrado`
--
ALTER TABLE `postulacion_postgrado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `sidebar`
--
ALTER TABLE `sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `testimonio`
--
ALTER TABLE `testimonio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
