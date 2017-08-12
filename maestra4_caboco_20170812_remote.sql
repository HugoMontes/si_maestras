-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-08-2017 a las 10:24:44
-- Versión del servidor: 5.6.32-78.1-log
-- Versión de PHP: 5.6.20

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
-- Estructura de tabla para la tabla `centro_formacion`
--

CREATE TABLE IF NOT EXISTS `centro_formacion` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `directorio_imagenes` varchar(255) NOT NULL,
  `creado` datetime NOT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `centro_formacion`
--

INSERT INTO `centro_formacion` (`id`, `codigo`, `descripcion`, `directorio_imagenes`, `creado`, `creado_por`, `modificado`, `estado`, `publicado`) VALUES
(1, 'EG', 'Escuela de gestores municipales', 'escuela_de_gestores_municipales', '2017-01-18 14:50:47', 1, '2017-07-15 11:47:23', 1, '2017-07-15 11:47:23'),
(2, 'IN', 'Infocal', 'infocal', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(3, 'RH', 'Red habitat', 'red_habitat', '2017-01-18 14:50:47', 1, '2017-07-15 11:48:22', 1, '2017-07-15 11:48:22'),
(4, 'SM', 'Secretaria municipal de desarrollo economico', 'secretaria_municipal_de_desarrollo_economico', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(5, 'ET', 'Escuela Taller de La Paz', 'escuelas_taller_de_la_cooperacion_espanola', '2017-05-07 16:47:59', 1, '2017-07-15 10:36:01', 1, '2017-07-15 10:36:01');

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- Estructura de tabla para la tabla `cuestionario_opciones`
--

CREATE TABLE IF NOT EXISTS `cuestionario_opciones` (
  `id` int(11) NOT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `enunciado` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuestionario_opciones`
--

INSERT INTO `cuestionario_opciones` (`id`, `id_pregunta`, `enunciado`, `estado`) VALUES
(1, 3, 'SI', 1),
(2, 3, 'NO', 1),
(3, 4, 'LA(S) TRABAJADORA(S) REQUERIDA(S) NO CONTESTÓ/NO CONTESTARON SU TELÉFONO', 1),
(4, 4, 'NO SE LLEGÓ A CONCRETAR LA CITA CON LA(S) TRABAJADORA(S)', 1),
(5, 4, 'LA(S) TRABAJADORA(S) NO TENÍA(N) DISPONIBILIDAD EN LAS FECHAS PROPUESTAS', 1),
(6, 4, 'NO EXISTÍAN TRABAJADORAS DISPONIBLES EN LA ESPECIALIDAD O RUBRO DE MI REQUERIMIENTO', 1),
(7, 4, 'NO EXISTÍA EL NÚMERO DE TRABAJADORAS REQUERIDAS PARA MI REQUERIMIENTO', 1),
(8, 5, 'EXCELENTE', 1),
(9, 5, 'MUY BUENO', 1),
(10, 5, 'BUENO', 1),
(11, 5, 'REGULAR', 1),
(12, 5, 'MALO', 1),
(13, 6, 'AUMENTAR EL NÚMERO DE TRABAJADORAS EN LA BASE DE DATOS', 1),
(14, 6, 'AUMENTAR EL NÚMERO DE ESPECIALIDADES DE LAS TRABAJADORAS EN LA BASE DE DATOS', 1),
(15, 6, 'PUNTUALIDAD DE LA(S) TRABAJADORA(S)', 1),
(16, 6, 'CUMPLIMIENTO DE LA(S) TRABAJADORA(S)', 1),
(17, 6, 'RAPIDEZ EN LA RESPUESTA DE LA(S) TRABAJADORA(S)', 1),
(18, 6, 'PRECIOS QUE COBRAN LAS MAESTRAS CONSTRUCTORAS POR SU TRABAJO', 1),
(19, 6, 'NINGUNO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario_pregunta`
--

CREATE TABLE IF NOT EXISTS `cuestionario_pregunta` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  `enunciado` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuestionario_pregunta`
--

INSERT INTO `cuestionario_pregunta` (`id`, `codigo`, `enunciado`, `orden`) VALUES
(1, 'P2', 'Número de trabajadoras contratadas', 2),
(2, 'P3', 'Por favor seleccione el o los centros de formación donde fueron formadas las maestras contratadas: (En caso de que usted no cuente con dicha información, continuar con la siguientes preguntas)', 3),
(3, 'P1', '¿Llegó usted a concretar una contratación con alguna de las maestras constructoras que forman parte de la base de datos de la Plataforma Web MaestrasConstructoras.org?', 1),
(4, 'P6', 'Si la respuesta fue NO ¿cuál fue la razón? Se puede marcar más de una opción', 6),
(5, 'P4', 'Indique su conformidad con el servicio que brindó/brindaron la(s) trabajadora(s)', 4),
(6, 'P5', '¿Qué aspectos del servicio se deberían mejorar? (Se puede marcar más de una opción)', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario_respuesta`
--

CREATE TABLE IF NOT EXISTS `cuestionario_respuesta` (
  `id` int(11) NOT NULL,
  `id_usuario` int(255) DEFAULT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `res_a` varchar(255) DEFAULT NULL,
  `res_b` int(11) DEFAULT NULL,
  `id_opciones` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuestionario_respuesta`
--

INSERT INTO `cuestionario_respuesta` (`id`, `id_usuario`, `id_pregunta`, `res_a`, `res_b`, `id_opciones`) VALUES
(1, 80, 3, NULL, NULL, 1),
(2, 80, 1, NULL, 3, NULL),
(3, 80, 2, NULL, 3, NULL),
(4, 80, 2, NULL, 4, NULL),
(5, 80, 5, NULL, NULL, 10),
(6, 80, 6, NULL, NULL, 16),
(7, 80, 6, NULL, NULL, 17),
(8, 80, 6, NULL, NULL, 18),
(9, 60, 3, NULL, NULL, 1),
(10, 60, 1, NULL, 20, NULL),
(11, 60, 2, NULL, 2, NULL),
(12, 60, 2, NULL, 4, NULL),
(13, 60, 5, NULL, NULL, 11),
(14, 60, 6, NULL, NULL, 14),
(15, 60, 6, NULL, NULL, 16),
(16, 81, 3, NULL, NULL, 1),
(17, 81, 1, NULL, 1, NULL),
(18, 81, 2, NULL, 3, NULL),
(19, 81, 5, NULL, NULL, 8),
(20, 81, 6, NULL, NULL, 13),
(21, 84, 3, NULL, NULL, 1),
(22, 84, 1, NULL, 1, NULL),
(23, 84, 2, NULL, 1, NULL),
(24, 84, 5, NULL, NULL, 10),
(25, 84, 6, NULL, NULL, 14),
(26, 84, 6, NULL, NULL, 16),
(27, 85, 3, NULL, NULL, 1),
(28, 85, 1, NULL, 1, NULL),
(29, 85, 2, NULL, 3, NULL),
(30, 85, 5, NULL, NULL, 10),
(31, 85, 6, NULL, NULL, 16),
(32, 85, 6, NULL, NULL, 17),
(33, 85, 6, NULL, NULL, 18),
(34, 103, 3, NULL, NULL, 2),
(35, 103, 4, NULL, NULL, 5),
(36, 103, 4, NULL, NULL, 6),
(37, 103, 4, NULL, NULL, 7),
(38, 100, 3, NULL, NULL, 1),
(39, 100, 1, NULL, 1, NULL),
(40, 100, 2, NULL, 3, NULL),
(41, 100, 5, NULL, NULL, 8),
(42, 100, 6, NULL, NULL, 13);

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
-- Estructura de tabla para la tabla `especialista_area`
--

CREATE TABLE IF NOT EXISTS `especialista_area` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_area`
--

INSERT INTO `especialista_area` (`id`, `codigo`, `descripcion`, `creado`, `creado_por`, `modificado`, `estado`, `publicado`) VALUES
(1, 'OG', 'Obra Gruesa', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(2, 'OF', 'Obra Fina', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(3, 'PL', 'Plomeria', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(4, 'PN', 'Pintura', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(5, 'EL', 'Electricidad', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(6, 'GN', 'Instalación de Gas Natural', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(7, 'CI', 'Carpinteria de Inmobiliaria', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(8, 'MM', 'Metal mecánica', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(9, 'RE', 'Restauración', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_empleador`
--

INSERT INTO `especialista_empleador` (`id`, `nombre`, `correo`, `direccion`, `creado`, `modificado`) VALUES
(83, 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Av. Kollasuyo No. 2491', '2017-07-15 12:00:04', '2017-07-15 12:00:04'),
(84, 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Sanchez Lima 2293', '2017-07-18 08:46:18', '2017-07-18 08:46:18'),
(85, 'Pastora Zuñagua ', 'patyzm2000@gmail.com', 'pura pura', '2017-07-21 09:59:48', '2017-07-21 09:59:48'),
(86, 'Pastora Zuñagua ', 'patyzm2000@gmail.com', 'pura pura', '2017-07-24 12:04:02', '2017-07-24 12:04:02'),
(87, 'Pastora Zuñagua ', 'patyzm2000@gmail.com', 'pura pura', '2017-07-25 11:47:00', '2017-07-25 11:47:00'),
(88, 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Sanchez Lima 2293', '2017-07-25 17:13:33', '2017-07-25 17:13:33'),
(89, 'Pastora Zuñagua ', 'patyzm2000@gmail.com', 'pura pura', '2017-07-26 11:05:42', '2017-07-26 11:05:42'),
(90, 'Grecia Mitru', 'greciamitru@gmail.com', 'Cota Cota calle 27, Av. Muñoz Reyes. Edificio Torre Nova piso 2A', '2017-07-26 16:38:11', '2017-07-26 16:38:11'),
(91, 'Pastora Zuñagua ', 'patyzm2000@gmail.com', 'pura pura', '2017-07-27 09:18:46', '2017-07-27 09:18:46'),
(92, 'Pastora Zuñagua ', 'patyzm2000@gmail.com', 'pura pura', '2017-07-27 09:18:47', '2017-07-27 09:18:47'),
(93, 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'R. Gutierrez 874', '2017-07-27 09:31:01', '2017-07-27 09:31:01'),
(94, 'Grecia Mitru', 'greciamitru@gmail.com', 'Cota Cota calle 27, Av. Muñoz Reyes. Edificio Torre Nova piso 2A', '2017-07-27 13:54:27', '2017-07-27 13:54:27'),
(95, 'carlos hurtado', 'carloshurtado@red-habitat.org', 'sopocachi', '2017-07-31 09:46:25', '2017-07-31 09:46:25'),
(96, 'Juan Perez', 'hugomontes.formaempresas@gmail.com', 'direccion test', '2017-08-05 10:38:58', '2017-08-05 10:38:58'),
(97, 'Grecia Mitru', 'greciamitru@gmail.com', 'Cota Cota calle 27, Av. Muñoz Reyes. Edificio Torre Nova piso 2A', '2017-08-10 12:19:53', '2017-08-10 12:19:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_especialidad`
--

CREATE TABLE IF NOT EXISTS `especialista_especialidad` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `id_centro` int(11) NOT NULL,
  `id_area` int(11) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `creado` datetime NOT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_especialidad`
--

INSERT INTO `especialista_especialidad` (`id`, `codigo`, `id_centro`, `id_area`, `descripcion`, `creado`, `creado_por`, `modificado`, `estado`, `publicado`) VALUES
(1, 'RHOG01', 3, 1, 'Curso Básico de Construcción Certificado por la Escuela de Gestores GAMLP', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(2, 'RHOF02', 3, 2, 'Refacciones en vivienda Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(3, 'RHOF03', 3, 2, 'Revestimiento de cerámica Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(4, 'RHPL04', 3, 3, 'Instalaciones Sanitarias y plomeria Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:32', 1, '2017-01-18 14:50:32'),
(6, 'RHPN06', 3, 4, 'Pintura Decorativa Muralista Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(7, 'RHPN07', 3, 4, 'Pintura Decorativa Bidimensional Con certificación de MONOPOL y Red Hábitat', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(8, 'RHEL08', 3, 5, 'Especialización en Electicidad Con certificación de Red Hábitat', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(12, 'INOG12', 2, 1, 'EDIFICACION EN OBRA GRUESA (SUPERVISION EN OBRA)', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(13, 'INOF13', 2, 2, 'EDIFICACION EN OBRA FINA (SUPERVISION EN OBRA)', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(14, 'INOF14', 2, 2, 'ESTRUCTURAS DOMESTICAS Y ORNAMENTALES', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(15, 'INEL15', 2, 5, 'Instalación de Calefones Solares', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:32', 1, '2017-01-18 14:50:32'),
(16, 'INEL16', 2, 5, 'Intalaciones Eléctricas Domiciliarias', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:47', 1, '2017-01-18 14:50:47'),
(17, 'INEL17', 2, 5, 'Intalaciones Eléctricas Complementarias', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(18, 'INGN18', 2, 6, 'Gas Natural Domiciliario', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(19, 'INCI19', 2, 7, 'CARPINTERIA BASICA EN ALUMINIO', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(20, 'INCI20', 2, 7, 'CARPINTERIA EN ALUMINIO BOX DE BAÑO Y VENTANAS', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(21, 'INCI21', 2, 7, 'CARPINTERIA EN ALUMINIO FACHADAS FLOTANTES', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(22, 'INCI22', 2, 7, 'CARPINTERIA EN ALUMINIO PUERTAS Y MAMPARAS', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(23, 'INCI23', 2, 7, 'CONSTRUCCION DE MUEBLES CON MELAMINA', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:47', 1, '2017-01-18 14:50:47'),
(24, 'INCI24', 2, 7, 'CONSTRUCCION DE MUEBLES CON TABLERO', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(25, 'SMEL25', 4, 5, 'Circuitos eléctricos y sistemas de seguridad', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(26, 'SMEL26', 4, 5, 'Instalaciones eléctricas residenciales y el uso de los aparatos e instrumentos de medida', '2017-01-18 14:50:47', 1, '2017-01-18 14:49:55', 1, '2017-01-18 14:49:55'),
(27, 'SMEL27', 4, 5, 'Determinación de fallas en instalaciones eléctricas; mantenimiento preventivo, Correctivo y reparaciones', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(28, 'SMEL28', 4, 5, 'Aplicación de arduinos', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(29, 'SMMM29', 4, 8, 'Soldadura oxiacetilénica, de arco, MIG/MAG y TIG.', '2017-01-18 14:50:47', 1, '2017-01-18 14:50:03', 1, '2017-01-18 14:50:03'),
(55, 'ETOG55', 5, 1, 'Construcción de techos nuevos', '2017-07-14 11:23:40', 1, '2017-07-14 11:23:40', 1, '2017-07-14 11:23:40'),
(56, 'ETOG56', 5, 1, 'Reparación de techos', '2017-07-14 11:24:04', 1, '2017-07-14 11:24:04', 1, '2017-07-14 11:24:04'),
(57, 'ETOG57', 5, 1, 'Consolidación de cimientos, sobrecimientos, muros de adobe y ladrillo', '2017-07-14 11:24:26', 1, '2017-07-14 11:24:26', 1, '2017-07-14 11:24:26'),
(58, 'ETOF58', 5, 2, 'Consolidación de Revoques', '2017-07-14 11:26:59', 1, '2017-07-14 11:26:59', 1, '2017-07-14 11:26:59'),
(59, 'ETOF59', 5, 2, 'Molduras / Ornamentación', '2017-07-14 11:27:34', 1, '2017-07-14 11:27:34', 1, '2017-07-14 11:27:34'),
(60, 'ETOF60', 5, 2, 'Refacción de viviendas ', '2017-07-14 11:27:54', 1, '2017-07-14 11:27:54', 1, '2017-07-14 11:27:54'),
(61, 'ETOF61', 5, 2, 'Decoración con molduras corridas y con molde', '2017-07-14 11:28:10', 1, '2017-07-14 11:28:10', 1, '2017-07-14 11:28:10'),
(62, 'ETOF62', 5, 2, 'Reparación y colocado de pisos', '2017-07-14 11:28:26', 1, '2017-07-14 11:28:26', 1, '2017-07-14 11:28:26'),
(63, 'ETOF63', 5, 2, 'Revestimientos cerámicos', '2017-07-14 11:28:39', 1, '2017-07-14 11:28:39', 1, '2017-07-14 11:28:39'),
(64, 'ETPL64', 5, 3, 'Instalaciones sanitarias y de agua potable domiciliario (básico)', '2017-07-14 11:31:00', 1, '2017-07-14 11:31:00', 1, '2017-07-14 11:31:00'),
(65, 'ETPN65', 5, 4, 'Pintura general de obras', '2017-07-14 11:31:59', 1, '2017-07-14 11:31:59', 1, '2017-07-14 11:31:59'),
(66, 'ETPN66', 5, 4, 'Pintura Decorativa', '2017-07-14 11:32:14', 1, '2017-07-14 11:32:14', 1, '2017-07-14 11:32:14'),
(67, 'ETEL67', 5, 5, 'Intalaciones Eléctricas Domiciliarias', '2017-07-14 11:32:48', 1, '2017-07-14 11:32:48', 1, '2017-07-14 11:32:48'),
(68, 'ETCI68', 5, 7, 'Restauración de muebles, puertas y ventanas de madera', '2017-07-14 11:33:27', 1, '2017-07-14 11:33:27', 1, '2017-07-14 11:33:27'),
(69, 'ETCI69', 5, 7, 'Construcción de muebles con tablero', '2017-07-14 11:33:57', 1, '2017-07-14 11:33:57', 1, '2017-07-14 11:33:57'),
(70, 'ETCI70', 5, 7, 'Construcción de muebles con melamina', '2017-07-14 11:34:14', 1, '2017-07-14 11:34:14', 1, '2017-07-14 11:34:14'),
(71, 'ETCI71', 5, 7, 'Construcción de celosías de madera', '2017-07-14 11:34:38', 1, '2017-07-14 11:34:38', 1, '2017-07-14 11:34:38'),
(72, 'ETMM72', 5, 8, 'Soldadura con arco y MIG/MAG ', '2017-07-14 11:36:34', 1, '2017-07-14 11:36:34', 1, '2017-07-14 11:36:34'),
(73, 'ETMM73', 5, 8, 'Construcción de puertas y rejas forjadas', '2017-07-14 11:37:15', 1, '2017-07-14 11:37:15', 1, '2017-07-14 11:37:15'),
(74, 'ETRE74', 5, 9, 'Restauración de muebles antiguos', '2017-07-14 11:37:37', 1, '2017-07-14 11:37:37', 1, '2017-07-14 11:37:37'),
(75, 'ETRE75', 5, 9, 'Restauración de construcciones patrimoniales', '2017-07-14 11:37:52', 1, '2017-07-14 11:37:52', 1, '2017-07-14 11:37:52'),
(77, 'EGOG77', 1, 1, 'Cursos Básico de Construcción', '2017-07-15 11:23:36', 1, '2017-07-15 11:23:36', 1, '2017-07-15 11:23:36'),
(78, 'EGOF78', 1, 2, 'Revestimiento de cerámica', '2017-07-15 11:24:04', 1, '2017-07-15 11:24:04', 1, '2017-07-15 11:24:04'),
(79, 'EGOF79', 1, 2, 'Refacciones en vivienda', '2017-07-15 11:24:20', 1, '2017-07-15 11:24:20', 1, '2017-07-15 11:24:20'),
(80, 'EGPL80', 1, 3, 'Instalaciones Sanitarias y plomeria', '2017-07-15 11:26:22', 1, '2017-07-15 11:26:22', 1, '2017-07-15 11:26:22'),
(82, 'EGPN82', 1, 4, 'Especialización en pintura', '2017-07-15 11:26:59', 1, '2017-07-15 11:26:59', 1, '2017-07-15 11:26:59'),
(83, 'EGEL83', 1, 5, 'Instalaciones Eléctricas', '2017-07-15 11:27:11', 1, '2017-07-15 11:27:11', 1, '2017-07-15 11:27:11'),
(84, 'EGOF84', 1, 2, 'Refacciones en obra fina', '2017-07-15 11:47:17', 1, '2017-07-15 11:47:17', 1, '2017-07-15 11:47:17'),
(85, 'RHOF85', 3, 2, 'Refacciones en obra fina Certificado por la  Escuela de Gestores GAMLP', '2017-07-15 11:48:20', 1, '2017-07-15 11:48:20', 1, '2017-07-15 11:48:20');

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
  `ctr_formulario_satisfaccion` tinyint(4) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  `encuesta` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_solicitud`
--

INSERT INTO `especialista_solicitud` (`id`, `cantidad`, `fecha_ini`, `fecha_fin`, `id_empleador`, `id_ciudad`, `id_especialidad`, `ctr_formulario_satisfaccion`, `creado`, `modificado`, `encuesta`) VALUES
(93, 2, '2017-07-15', '2017-07-17', 83, 1, 7, 1, '2017-07-15 12:00:04', '2017-07-17 00:30:02', NULL),
(94, 2, '2017-07-18', '2017-07-19', 84, 1, 1, 1, '2017-07-18 08:46:18', '2017-07-19 00:30:03', NULL),
(95, 5, '2017-07-24', '2017-07-30', 85, 1, 4, 1, '2017-07-21 09:59:48', '2017-07-30 00:30:02', NULL),
(96, 10, '2017-07-27', '2017-07-31', 86, 1, 4, 1, '2017-07-24 12:04:02', '2017-07-31 00:30:03', NULL),
(97, 10, '2017-07-26', '2017-07-31', 87, 1, 4, 1, '2017-07-25 11:47:00', '2017-07-31 00:30:03', NULL),
(98, 3, '2017-07-26', '2017-07-28', 88, 1, 2, 1, '2017-07-25 17:13:33', '2017-07-28 00:30:03', NULL),
(99, 10, '2017-07-27', '2017-07-31', 89, 1, 4, 1, '2017-07-26 11:05:42', '2017-07-31 00:30:03', NULL),
(100, 1, '2017-08-02', '2017-08-04', 90, 1, 3, 1, '2017-07-26 16:38:11', '2017-08-08 15:38:36', '2017-08-08 15:38:36'),
(101, 10, '2017-07-28', '2017-07-31', 91, 1, 4, 1, '2017-07-27 09:18:46', '2017-07-31 00:30:03', NULL),
(102, 10, '2017-07-28', '2017-07-31', 92, 1, 4, 1, '2017-07-27 09:18:47', '2017-07-31 00:30:03', NULL),
(103, 3, '2017-07-28', '2017-07-31', 93, 1, 4, 1, '2017-07-27 09:31:01', '2017-07-31 11:31:33', '2017-07-31 11:31:33'),
(104, 1, '2017-07-29', '2017-07-07', 94, 1, 2, 1, '2017-07-27 13:54:27', '2017-07-27 14:30:02', NULL),
(105, 2, '2017-08-02', '2017-08-03', 95, 1, 4, 1, '2017-07-31 09:46:25', '2017-08-03 00:30:02', NULL),
(106, 12, '2017-08-05', '2017-08-18', 96, 1, 1, 0, '2017-08-05 10:38:58', '2017-08-05 10:38:58', NULL),
(107, 3, '2017-08-14', '2017-08-16', 97, 1, 2, 0, '2017-08-10 12:19:53', '2017-08-10 12:19:53', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_trabajador`
--

INSERT INTO `especialista_trabajador` (`id`, `ci`, `nombres`, `apellidos`, `fecha_nacimiento`, `genero`, `direccion`, `telefono_contacto`, `telefono_referencia`, `correo`, `id_departamento`, `id_ciudad`, `creado`, `creado_por`, `modificado`, `estado`, `publicado`, `despublicado`) VALUES
(127, '6963797 LP.', 'ARUQUIPA QUENTA', 'ALICIA', '1987-12-12', 'mujer', 'CALLE 5 Nº 50 ZONA BELLA VISTA', '67196262', '79502838', 'alice-ian@hotmail.com', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(128, '6957738 LP.', 'CALDERON CHINARI', 'DINA', '1992-11-11', 'mujer', 'AV. TEJADA SORZANO Nº 1163 ZONA ALTO MIRAFLORES', '76573866', '72529429', 'anid_1515@hotmail.com', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(129, '8317414 LP.', 'QUISPE MAMANI', 'OLGA JHURINA', '1987-12-10', 'mujer', 'CALLE B Nº 3 ZONA VINO TINTO', '69752852', '71510870', 'yuri_19_14@hotmail.com', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(130, '8430895 LP.', 'HUAÑARRAYA QUILLA', 'CIRILA', '1991-05-26', 'mujer', 'AV. PRINCIPAL Nº 7 ZONA JUPAPINA', '67111496 - 72086660', '', 'REBECA_huchani@hotmail.com', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(131, '6807606 LP.', 'HUCHANI SERRANO', 'REBECA', '1986-05-28', 'mujer', 'AV. GRAL TORREZ Nº 23 ZONA CUPILUPACA CENTRAL', '73701850', '2216336', '', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(132, '8443224 LP.', 'CHALCO BOLAÑOS', 'KAREN', '1991-03-10', 'mujer', 'RODRIGUEZ Nº875 ZONA GRAN PODER', '75272309 - 77713785', '', 'kareninoska@hotmail.com', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(133, '8308010 LP.', 'MUÑOZ KATERINE', 'CAROL', '1988-04-11', 'mujer', 'AV. RAMOS GAVILAN ZONA ACHACHICALA', '60120826', '', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(134, '9164830 LP.', 'VARGAS', 'JANNETH MARISOL', '1994-05-17', 'mujer', 'LOAYZA BELTRAN Nº 222 ZONA VILLA LITORAL', '72050566', '', 'sol_mari.1717@hotmail.com', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(135, '8441943 LP.', 'OROZCO GERONIMO', 'ROSELA ESMERALDA', '1993-10-02', 'mujer', 'RIO HUAYLLAS Nº 3 ZONA VILLA ARMONIA', '60113682', '', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(136, '12863891 LP.', 'ARNEZ', 'IVON GUADALUPE', '1995-09-07', 'mujer', 'AV. CIRCUNVALACION Nº 90 ZONA PAMPAHASI', '75840764', '2256533', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(137, '6858897 LP.', 'DURAN VARGAS', 'LIZETH', '1988-05-12', 'mujer', 'SUCRE LADO SURTIDO Nº 7 ZONA SANTA BARBARA', '76716317', '', 'd.vargas@outlook.com', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(138, '7090086 LP.', 'HUARACHI VERASTEGUI', 'BLANCA EUGENIA', '1993-12-09', 'mujer', 'AV. CIVICA Nº 60 ZONA VILLA TEJADA EL ALTO', '65540638', '22594562', 'blankita_655@hotmail.com', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(139, '10905096 LP.', 'MAMANI LLUSCO', 'IVON ABIGAIL', '1991-02-28', 'mujer', 'CALLE INCA ALONZO Nº 25 ALTO SAN ANTONIO', '2230307', '', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(140, '8370329 LP.', 'MAMANI MAMANI', 'VALERIA GILDA', '1994-09-14', 'mujer', 'AV.PERIFERICA Nº 56 ZONA CALLAPA', '79550672', '', 'vale_vidlpuk@hotmail.com', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(141, '9911981 LP.', 'OQUENDO', 'MADAI ARELI', '1995-06-07', 'mujer', 'PLAZA KENNEDY Nº B-2 DEPTO. 6 PISO 3 ZONA SAN SEBASTIAN', '79594479', '2245593', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(142, '9201310 LP.', 'ROJAS FLORES', 'CARLA ANDREA', '1994-10-27', 'mujer', 'C. 2DO CRUCERO Nº 1416 ZONA NORTE PERIFERICA', '70670459', '', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(143, '6884495 LP.', 'TACACHIRA PAYI', 'LAURA ELIZA', '1992-12-04', 'mujer', 'CALLE SUCRE S/N ZONA CENTRO', '77533355', '', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(144, '9125938 LP.', 'ALANOCA PAREDES', 'JHOVANA TOMASA', '1993-12-20', 'mujer', 'AV. AROMA Nº 3 ZONA SANTA ROSA Y EXALTACION - EL ALTO', '73268664', '', '', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(145, '9975996 LP.', 'TARQUI TAMBO', 'NANCY PAULA', '1993-06-28', 'mujer', 'CALLE ABROJO Nº 4095 ZONA 7 DE SEPTIEMBRE', '60141201', '', '', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(146, '12670812 LP.', 'TARQUINO RAMOS', 'SELENA MONICA', '1995-03-28', 'mujer', 'FINAL PUERTO RICO ESQ.PEDRO TARIFA Nº 12 ZONA ALTO MIRAFLORES', '70142456', '', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(147, '9083769 LP.', 'LEON NINA', 'RUSICELA', '1998-08-17', 'mujer', 'AV. ADELA ZAMUDIO Nº 1075 ZONA SAN PABLO', '75220652', '', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(148, '8344646 LP.', 'MACHACA MAMANI', 'ROCIO DEL CARMEN', '1996-02-23', 'mujer', 'NORBERTO GALDO Nº 160 ZONA VINO TINTO', '60691508', '2290177', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(149, '13116451 LP.', 'MAMANI ALVAREZ', 'GIORGINA', '1997-05-02', 'mujer', 'CARDO SANTO Nº 1144 ZONA CHARAPAQUI', '77254163', '', '', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(150, '9864586 LP.', 'MAMANI ZAPANA', 'MAGDALENA', '1992-12-23', 'mujer', 'JULIAN APAZA S/N ZONA VILLA PABON', '78841889', '', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(151, '12422096 LP.', 'PATTY QUISPE', 'ANA CAROLINA', '1997-07-29', 'mujer', 'OKORURO Nº1094 ZONA COSMOS 79 EL ALTO', '70605676', '', '', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(152, ' 9103160 LP.', 'PAYE CONDORI', 'JANNETH ESTHER', '1995-12-14', 'mujer', 'EDUARDO ABAROA S/N ZONA ESCOBAR URIA', '77720701-69963905', '71511900', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(153, '9976844 LP.', 'TARQUI TAMBO', 'GLADYS AMALIA', '1996-10-31', 'mujer', 'AV. ABROJO Nº 4095 ZONA 7 DE SEPTIEMBRE', '67112753', '', '', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(154, '13406945 LP.', 'TORREZ FERRANO', 'GEOVANA SIRLEY', '1997-07-24', 'mujer', 'MANUEL CABALEERO Nº 1605 ZONA CALAMA', '78894777', '71188150', '', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(155, '9125028 LP.', 'FLORES MAMANI', 'MARA MIREYA', '1998-03-21', 'mujer', 'AV. NIEVES LINARES Nº 280 ZONA SAN ISIDRO', '78793679', '77250051', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(156, '9249848 LP.', 'QUISPE LIFONZO', 'ANDREA', '1996-03-14', 'mujer', 'PANORAMICA Nº 218 ZONA CUSICANCHA EL ALTO', '60173819', '72519749', '', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(157, '6725575 LP.', 'CALLISAYA SIRPA', 'SOL ADRIANE', '1997-11-22', 'mujer', 'AV. BUENOS AIRES Nº 2078 ZONA TEMBLADERANI', '60636709', '2211453', '', 1, 1, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(158, '8321170 LP', 'ALVAREZ LARREA', 'SHEYLA MARIEL', '1995-01-08', 'mujer', 'RIO SECO, PLAN 192, CALLE 3 Nª 3201', '79561547', '77586281', 'sheyla_larrea@hotmail.com', 1, 2, '2017-07-15 12:28:50', 13, '2017-07-15 12:28:50', 1, '2017-07-15 12:28:50', NULL),
(159, '4850848', 'SANTUSA', 'AMARU', '1975-11-11', 'mujer', 'Urb. Las Nieves Alto Irpavi C/ 4 Nº 12', '71986440', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(160, '4284859', 'ADELA SALUSTIANA', 'APAZA ORIHUELA', '1972-06-07', 'mujer', 'Zona: Las Lomas C/ 9 Nº 1038', '2418955-73733529', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(161, '7084000', 'LIZZET NOEMI', 'APAZA QUISPE', '1993-01-22', 'mujer', 'Zona: San Martin de Porres Nº 1037 Av. Antofagasta', '76723733-63211684', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(162, '4768941', 'DEBORA', 'ARGOTE HUALLPA', '1979-12-01', 'mujer', 'Zona: Norte Av. Periferica Nº 804', '71277311', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(163, '4937848', 'MIRIAN MARITA', 'ARUQUIPA CASTILLO', '1980-03-27', 'mujer', 'Zona: San Martin Camino a Viacha C/ Jaime Mendoza Nº 2895', '60652687-71960083', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(164, '4063043', 'ELISA', 'BADILLO PINTO VDA. DE CALLISAYA', '1974-11-14', 'mujer', 'El Alto Zona Alfa y Omega Av. America Nº 5183', '72065791-72589536', '2422276 - 2422285', NULL, 5, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(165, '10939444', 'GABRIELA ', 'CADENA CASERES', '1993-02-26', 'mujer', 'C/ Nueva York Nº 63 Zona: Obispo Indaburo', '75825370', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(166, '2445294', 'MARTHA', 'CALLE CALLE', '1962-12-04', 'mujer', 'Av. Marcelo Q. Santa Cruz Nº 901 Zona: Pasamkeri', '72532126', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(167, '8321808', 'ELIA', 'CALLE MOLLO', '1988-06-07', 'mujer', 'Zona: San Silvestre Av. Japon ', '68021141', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(168, '6056221', 'VICTORIA', 'CALLE MONTAÑO', '1980-03-22', 'mujer', 'El Alto Zona: Cristal 1 C/ Girasoles Nº 16', '63662447', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(169, '2381220', 'ESTHER ', 'CALLE PAREDES', '1961-01-02', 'mujer', 'Zona: Callampaya C/ Calatayud Nº 574', '60175578', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(170, '4745939', 'JUANA ALICIA ', 'CALLE QUISPE', '1976-06-26', 'mujer', 'Zona: Munaypata C/ Cristo Vencedor Nº 2061', '69865223', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(171, '4365682', 'CRISTINA', 'CALLE QUISPE', '1965-03-12', 'mujer', 'Zona: Santa Rosa C/ Isaac Camacho Nº 1025', '68100661', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(172, '2536524', 'HORTENCIA', 'CALLISAYA', '1961-04-27', 'mujer', 'Av. R. Rastrillo Nº 55 Zona: Bajo San Antonio', '73015483', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(173, '3388873', 'MODESTA', 'CALLISAYA NINA', '1967-01-01', 'mujer', 'Zona: Achachicala C/ Teniente Senon Rios Nº 715', '70120735', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(174, '2318588', 'ESPERANZA', 'CALLISAYA ROCHA', '1958-12-17', 'mujer', 'C/ Mario Alberto Nº 33 Zona: Tembladerani', '60566896', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(175, '4929528', 'VIVIANA', 'CHINO LIMACHI', '1981-08-08', 'mujer', 'Central Llojeta Av. Mario Mercado Nº1849', '70584235', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(176, '6182306', 'RITA', 'CHOQUE', '1971-06-14', 'mujer', 'Av. Fortunato Pinto Nº 57 Zona: Sagrado Corazon de Jesus', '73280312', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(177, '3374835', 'ESPERANZA', 'CHOQUE DE PATY', '1967-09-17', 'mujer', 'Zona: Tembladerani C/ Zudañez Nº 342', '72578651', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(178, '3525211', 'MATILDE', 'CONDORI', '1970-09-20', 'mujer', 'Zona: Agua de la Vida C/ 3 Nº 41', '2285043', '2422276 - 2422285', NULL, 5, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(179, '234567', 'MARTHA RUTH', 'CONDORI MAMANI', '1998-01-21', 'mujer', 'El Alto Zona: 16 de Noviembre Av. Incahuasi', '65606264', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(180, '4760808', 'BASILIA EDITH', 'CRUZ BLANCO', '1978-01-08', 'mujer', 'Zona: Alto Tejar 2do Bascones  Chualluma Nº 17', '65103685', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(181, '10009000', 'MARIA ANTONIETA', 'CRUZ MAYTA', '1979-06-12', 'mujer', 'Zona: Pasankeri C/ Luis Espinal Nº 51', '77275524', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(182, '10018128', 'VIANCA', 'ESCARZO ROQUE', '1984-12-08', 'mujer', 'Chasquipampa Calle 61', '60552455', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(183, '4841182', 'CLAUDIA', 'FOSARICO CORISA', '1979-02-17', 'mujer', 'Zona: Villa San Antonio C/ Nicolas Ortiz Nº 2471', '79133875', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(184, '3418008', 'MAGDALENA ROSARIO', 'GONZALES CALLE', '1972-07-22', 'mujer', 'C/ Luciano Alcoreza Nº 123 Zona: Villa Nueva Potosi', '69826796', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(185, '9171616', 'SELENA FANNY', 'HUCHANI CALLE', '1990-10-09', 'mujer', 'Zona: Pasankeri Av. Marcelo Quiroga Santa Cruz C/ Tocopil', '69826796', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(186, '2357760', 'RAMONA', 'MAMANI DE MAMANI', '1954-04-07', 'mujer', 'Zona: Pasankeri C/ 1 de Mayo Nº 911', '76236414', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(187, '2693956', 'VICTORIA ', 'MAMANI ORTEGA', '1962-10-06', 'mujer', 'Zona: Pura Pura C/10 Nº 458', '77732999', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(188, '3495678', 'LUCY REMEDIOS', 'MAMANI PAREDES', '1971-06-20', 'mujer', 'El Alto Zona: Cristal 1 Av. Ana Maria Flores C/ Los Narcisos ', '60600805', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(189, '3489477', 'ANASTACIA', 'MAURI CHAMBI', '1962-04-14', 'mujer', 'Zona: Alto Llojeta C/ Che Guevara Nº 2000', '73534483', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(190, '6147496', 'MARINA', 'MELENDES VILLANUEVA', '1984-09-09', 'mujer', 'Zona: La Merced Av. Periferica Nº 18', '60654206', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(191, '9894292', 'XIMENA ', 'MENDOZA HUANCA', '1974-01-18', 'mujer', 'Zona: Rosal Norte Av. Manuel Ibañez Nº 909', '70452788', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(192, '7049730', 'PAMELA ', 'PEREZ FIGUEREDO', '1990-02-05', 'mujer', 'El Alto Zona: Senkata 79 Av. Putungato Nº 2025', '65104518', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(193, '4911089', 'EULALIA FELIZA', 'QUIROZ AGUILAR', '1983-12-09', 'mujer', 'Av. Periferica Nº 18 Zona: La Merced', '65158759', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(194, '4298871', 'FAUSTA', 'QUISPE AGUILAR', '1972-12-18', 'mujer', 'Zona: Villa Victoria Av. Quintanilla Zuazo Nº 1477', '76574834-61167991', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(195, '6191109', 'CONSUELO NANCY', 'QUISPE MAMANI', '1985-08-01', 'mujer', 'Zona: La Portada C/ Juancito Pinto Nº 5', '67093940', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(196, '6152047', 'SONIA ', 'QUISPE VENTURA', '1982-06-27', 'mujer', 'Zona: Pampahasi C/ 6', '76235044', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(197, '4984166', 'JULIA', 'RAMOS CONDORI', '1979-08-16', 'mujer', 'Zona: Miraflores Av. Juan Vargas Nº 2057', '73269818', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(198, '8325708', 'ANA LUISA', 'ROCHA LOPEZ ', '1990-09-10', 'mujer', 'Zona: Chijimarka C/ 6 Nº 479', '70109365', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(199, '4847742', 'MARIA ESTHER ', 'ROCHA MENACHO', '1975-08-26', 'mujer', 'Zona: Tembladerani C/ 12 de Octubre Nº 2259', '79597987', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(200, '12510674', 'LEDY', 'ROJAS AYALA', '1995-06-26', 'mujer', 'El Alto Zona: Cristal 1 Av. Tokio C/ Colkiri Nº 8205', '70110514', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(201, '2708850', 'LIDIA', 'ROMERO ALARCON ', '1969-03-26', 'mujer', 'Zona: Alto Chijini Av. 5 de Agosto Nº 1121', '79663200', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(202, '6854941', 'PAMELA ADRIANA', 'ROMERO VARGAS', '1986-09-17', 'mujer', 'El Alto Zona: Cristal 1 C/ Guayabos Nº 4194', '60618805', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(203, '4329260', 'GLORIA', 'TICONA MACHACA', '1976-04-15', 'mujer', 'Zona: Alto Lima Av. Adrian Castillo Nº 55', '79654645', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(204, '9082631', 'NINFA MARIA', 'TINTAYA QUISPE', '1994-08-05', 'mujer', 'Zona: Ascinals Av. Nestor Galindo Nº 4185', '78983740', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(205, '1767790', 'ROMANE', 'VARGAS AGUADA', '1982-09-22', 'mujer', 'Zona: Central C/ Murillo Esq. Cochabamba Nº 972', '72091995', '2422276 - 2422285', NULL, 7, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(206, '2448509', 'ERIKA DORIS ', 'VEDIA JALDIN', '1966-02-27', 'mujer', 'El Alto Zona: Santa Rosa C/7  Nº 5', '65590078', '2422276 - 2422285', NULL, 1, 2, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(207, '8413842', 'NATHALY ESTRELLA', 'VILA DE VINAYA', '1987-06-10', 'mujer', 'Zona: Alto Tejar C/ Rio Loza Nº 55', '77726119', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(208, '4945112', 'MERCEDES', 'YANA RAMOS', '1977-09-23', 'mujer', 'Zona: Pasankeri C/ Santa Rosa Nº651', '75841905', '2422276 - 2422285', NULL, 1, 1, '2017-07-18 08:50:38', 15, '2017-07-18 08:50:38', 1, '2017-07-18 08:50:38', NULL),
(209, '3330208', 'GLORIA  JUANA', 'MAMANI MAMANI', '1996-12-17', 'mujer', 'ZONA 16 DE JULIO AVENIDA CANTUTANI NRO.  3304', '71242988', '', '', 1, 2, '2017-07-26 09:50:45', 17, '2017-07-26 09:50:45', 1, '2017-07-26 09:50:45', NULL),
(210, '5480490', 'GUADALUPE', 'CHAVEZ CHOQUE', '1981-11-22', 'mujer', 'ZONA SANTA ROSA CALLE B', '', '', '', 1, 2, '2017-07-26 10:09:33', 17, '2017-07-26 10:09:33', 1, '2017-07-26 10:09:33', NULL),
(211, '2240365', 'WARA CLAUDIA', 'TORRES TAPIA', '1981-06-12', 'mujer', 'CISNEROS CASI ESQ. DIAZ ROMERO', '72061822', '', '', 1, 2, '2017-07-26 10:21:28', 17, '2017-07-26 10:21:28', 1, '2017-07-26 10:21:28', NULL),
(212, '4876425', 'CINTHYA MARIA', 'RONDON ZULETA', '1981-01-21', 'mujer', 'MIRAFLORES  PARAGUAY', '705501570', '', '', 1, 1, '2017-07-26 10:32:11', 17, '2017-07-26 10:32:11', 1, '2017-07-26 10:32:11', NULL),
(213, '4837119', 'CYNTIA ISABEL', 'CAMARGO FUENTES', '1979-07-08', 'mujer', 'VILLA COPACABANA  C/PADRE CORVERA', '73076035', '', '', 1, 2, '2017-07-26 10:40:06', 17, '2017-07-26 10:40:06', 1, '2017-07-26 10:40:06', NULL),
(214, '4819162', 'LUCIA VERONICA', 'JUSTINIANO   CALDERON', '1986-10-11', 'mujer', 'YANACOCHA', '72596796', '', '', 1, 1, '2017-07-26 10:47:42', 17, '2017-07-26 10:47:42', 1, '2017-07-26 10:47:42', NULL),
(215, '6978408', 'AMELY ROMELIA', 'PINEDO  REY', '1989-01-10', 'mujer', 'VILLA FATIMA B. PETROLERO', '65610818', '', '', 1, 1, '2017-07-26 10:58:42', 17, '2017-07-26 10:58:42', 1, '2017-07-26 10:58:42', NULL),
(216, '4859050', 'BIANCA IRINA', 'SALAZAR  SALAS', '1984-08-08', 'mujer', 'CALLE LUIS CRESPO', '70587617', '', '', 1, 1, '2017-07-26 11:08:01', 17, '2017-07-26 11:08:01', 1, '2017-07-26 11:08:01', NULL),
(217, '6067370', 'GUILLERMINA', 'BELTRAN  MARCA', '1984-06-25', 'mujer', 'ZONA LAS DELICIAS CALLE JACINTO', '71223358', '', '', 1, 2, '2017-07-26 11:15:41', 17, '2017-07-26 11:15:41', 1, '2017-07-26 11:15:41', NULL),
(218, '6906923', 'DANNY MARITZA', 'APAZA  HUANACO', '1987-11-29', 'mujer', 'ZONA LOS ANDES CALLE ARTURO VALLE', '73228286', '2843986', '', 1, 2, '2017-07-26 11:24:34', 17, '2017-07-26 11:24:34', 1, '2017-07-26 11:24:34', NULL),
(219, '5479338', 'PATRICIA ADELAIDA', 'KUNO  TARQUI', '1982-06-11', 'mujer', 'ZONA VILLA DOLORES AVENIDA TIHUANACU CALLE 3 # 326', '70562529', '', '', 1, 2, '2017-07-26 11:34:21', 17, '2017-07-27 11:29:33', 1, '2017-07-27 11:29:33', NULL),
(220, '2704205', 'JIMENA CARMEN', 'MOLINA   RODRIGUEZ', '1979-12-11', 'mujer', 'ZONA CHASQUIPAMPA  CALLE 48 - # 1348', '71573794', '', '', 1, 1, '2017-07-26 11:42:57', 17, '2017-07-26 11:42:57', 1, '2017-07-26 11:42:57', NULL),
(221, '4909048', 'CLAUDIA MELISSA', 'CORDERO RAMIREZ', '1987-07-03', 'mujer', 'ZONA SAN ANTONIO ALTO AV.OCTAVIO CAMPERO', '71524077', '', '', 1, 2, '2017-07-26 11:49:28', 17, '2017-07-26 11:49:28', 1, '2017-07-26 11:49:28', NULL),
(222, '9246375', 'ANA LETICIA', 'PASI CONDORI', '1990-01-27', 'mujer', 'AV. SEÑOR DE LAGUNAS', '79607273', '', '', 1, 2, '2017-07-26 13:50:37', 17, '2017-07-26 13:50:37', 1, '2017-07-26 13:50:37', NULL),
(223, '6811863', 'LILIAN GIOVANNA', 'POMA  CANAVIRI', '1989-10-18', 'mujer', 'ZONA ALTO LIMA  CALLE BOQUERON', '651555672', '', '', 1, 2, '2017-07-26 14:11:19', 17, '2017-07-26 14:11:19', 1, '2017-07-26 14:11:19', NULL),
(224, '4033302', 'LIDIA', 'MENDOZA  LOPEZ', '1979-08-03', 'mujer', 'ZONA CHAMOCO CHICO CALLE CANCHAS BLANCAS', '67166271', '', '', 1, 2, '2017-07-26 14:20:42', 17, '2017-07-26 14:20:42', 1, '2017-07-26 14:20:42', NULL),
(225, '4847952', 'CELIA', 'VELASCO NINA', '1978-07-28', 'mujer', 'ZONA KALIRI BOLOGNIA CALLE 3', '70538585', '', '', 1, 1, '2017-07-26 14:28:00', 17, '2017-07-26 14:28:00', 1, '2017-07-26 14:28:00', NULL),
(226, '6952221', 'RUTHY', 'MAMANI JACINTO', '1989-12-05', 'mujer', 'ZONA 27 DE MAYO AVENIDA JAPON/C. HEROES DEL CHACO', '68113502', '', '', 1, 2, '2017-07-26 14:35:57', 17, '2017-07-26 14:35:57', 1, '2017-07-26 14:35:57', NULL),
(227, '9946940', 'KARINA', 'TORREZ OBLITAS', '1994-11-04', 'mujer', 'ZONA JAPARI/ACHOCALLA ZONA SANTA BARBARA AVENIDA LA PAZ', '67054979', '', '', 1, 2, '2017-07-26 14:49:29', 17, '2017-07-27 11:26:06', 1, '2017-07-27 11:26:06', NULL),
(228, '6852304', 'DELIA', 'QUISPE GONZALES', '1988-06-30', 'mujer', 'ZONA VILLA JULIANA  CALLE 8 Nº 4831', '74006516', '', '', 1, 2, '2017-07-26 15:00:13', 17, '2017-07-26 15:00:13', 1, '2017-07-26 15:00:13', NULL),
(229, '7034304', 'MONICA', 'MACHACA  POMACAHUA', '1991-04-01', 'mujer', 'ZONA MARISCAL SUCRE   CALLE SALVADOR CAMACHO', '77271935', '', '', 1, 1, '2017-07-26 15:06:54', 17, '2017-07-26 15:06:54', 1, '2017-07-26 15:06:54', NULL),
(230, '6025447', 'BERTHA', 'CALLE  CARI', '1985-11-21', 'mujer', 'VILLA BOLIVAR D  CALLE 105', '73072297', '', '', 1, 2, '2017-07-26 15:19:00', 17, '2017-07-26 15:19:00', 1, '2017-07-26 15:19:00', NULL),
(231, '6852648', 'EVA LOURDES', 'SALINAS MAMANI', '1989-06-15', 'mujer', 'ZONA MARISCAL SANTA CRUZ  CALLE ANTOFAGASTA', '71237900', '', '', 1, 2, '2017-07-26 15:34:00', 17, '2017-07-26 15:34:00', 1, '2017-07-26 15:34:00', NULL),
(232, '9987237', 'MAGUI LURDES', 'MAMANI LAURA', '1990-10-15', 'mujer', 'ZONA SENKATA  PASAJE LUIS AGUIRRE', '72545366', '', '', 1, 2, '2017-07-26 15:38:48', 17, '2017-07-26 15:38:48', 1, '2017-07-26 15:38:48', NULL),
(233, '9250874', 'KATHERINE', 'APAZA PINEDO', '1993-04-04', 'mujer', 'ZONA CHARAPAQUI II   CALLE CLAUDIO CORTES ESQ. VILLALOBOS', '78884778', '', '', 1, 2, '2017-07-26 15:47:22', 17, '2017-07-26 15:47:22', 1, '2017-07-26 15:47:22', NULL),
(234, '7054949', 'ANA GABRIELA', 'MAMANI  TICONA', '1992-06-18', 'mujer', 'ZONA SAJAMA CALLE RAMON GONZALES', '60630146', '', '', 1, 2, '2017-07-26 15:53:01', 17, '2017-07-26 15:53:01', 1, '2017-07-26 15:53:01', NULL),
(235, '8429301', 'GRACIELA', 'VILLANUEVA QUISPE', '1993-01-25', 'mujer', 'CALLE AGUIRRE AV. CHIJIMARCA', '71223898', '', '', 1, 2, '2017-07-26 15:58:44', 17, '2017-07-26 15:58:44', 1, '2017-07-26 15:58:44', NULL),
(236, '9210772', 'MARIELA ROXANA', 'HUANCA  ASPI', '1994-06-20', 'mujer', 'ZONA ILLAMPU CALLE ALTO PLATA', '65989525', '', '', 1, 1, '2017-07-26 16:06:51', 17, '2017-07-26 16:06:51', 1, '2017-07-26 16:06:51', NULL),
(237, '7088219', 'DENIAM YUAHNA', 'ARAMAYO  PACASI', '1991-11-07', 'mujer', 'ZONA ASUNCION SAN PEDRO  AV LITORAL', '75820358', '', '', 1, 2, '2017-07-26 16:17:57', 17, '2017-07-26 16:17:57', 1, '2017-07-26 16:17:57', NULL),
(238, '6166134', 'YAQUELIN CAROLA', 'APARICIO  RIVEROS', '1984-09-23', 'mujer', 'ZONA CALVARIO  AVENIDA JUAN JOSE TORREZ', '68148373', '', '', 1, 2, '2017-07-26 16:29:57', 17, '2017-07-26 16:29:57', 1, '2017-07-26 16:29:57', NULL),
(239, '6787730', 'TANIA KATY', 'MAMANI  QUISPE', '1985-03-22', 'mujer', 'ZONA NUEVOS HORIZONTES II CALLE QUECHISLA', '71294788', '', '', 1, 2, '2017-07-26 16:36:49', 17, '2017-07-26 16:36:49', 1, '2017-07-26 16:36:49', NULL),
(240, '6048048', 'ANA MARIA', 'TINTAYA COPARI', '1985-04-17', 'mujer', 'VILLA YUNGUYO - RIO SECO    AVENIDA 7 DE OCTUBRE', '71995522', '', '', 1, 2, '2017-07-26 16:43:47', 17, '2017-07-26 16:43:47', 1, '2017-07-26 16:43:47', NULL),
(241, '6008795', 'LAURA', 'TICONA SANGA', '1982-01-23', 'mujer', 'ZONA RIO SECO  AVENIDA CIRCUNVALACION CALLE 4', '73530140', '', '', 1, 2, '2017-07-26 16:49:44', 17, '2017-07-26 16:49:44', 1, '2017-07-26 16:49:44', NULL),
(242, '6787806', 'FAVIOLA', 'MAMANI CALLIZAYA', '1987-05-28', 'mujer', 'RIO SECO/ZONA CHAPUMA CALLE 5', '77555250', '', '', 1, 2, '2017-07-26 16:54:03', 17, '2017-07-26 16:54:03', 1, '2017-07-26 16:54:03', NULL),
(243, '3417335', 'SONIA', 'LARUTA NINA', '1973-09-21', 'mujer', 'AVENIDA 16 DE JULIO', '71517425', '', '', 1, 2, '2017-07-26 16:58:27', 17, '2017-07-26 16:58:27', 1, '2017-07-26 16:58:27', NULL),
(244, '7047335', 'INGRITH', 'ESQUIVEL GUTIERREZ', '1989-08-11', 'mujer', 'ZONA BAJO LLOJETA   CALLE FRNAZCO BEDREGAL', '75843826', '', '', 1, 2, '2017-07-26 17:03:32', 17, '2017-07-26 17:03:32', 1, '2017-07-26 17:03:32', NULL),
(245, '6098155', 'NELLY', 'APAZA GUACHALLA', '1989-10-01', 'mujer', '23 DE MARZO-RIO SECO CALLE COBIJA', '71579253', '', '', 1, 2, '2017-07-26 17:07:54', 17, '2017-07-26 17:07:54', 1, '2017-07-26 17:07:54', NULL),
(246, '7068220', 'LIZETH LEYLA', 'GUAYGUA   PANDO', '1989-03-29', 'mujer', 'AV. ADRIAN CASTILLO', '60605995', '', '', 1, 2, '2017-07-26 17:12:16', 17, '2017-07-26 17:12:16', 1, '2017-07-26 17:12:16', NULL),
(247, '7058706', 'MARIBEL', 'QUINTEROS SARZURI', '1992-05-05', 'mujer', 'ROSENDO VILLALOBOS NRO 1434', '77568829', '', '', 1, 2, '2017-07-27 09:00:36', 17, '2017-07-27 09:00:36', 1, '2017-07-27 09:00:36', NULL),
(248, '6888488', 'CLAUDIA ROSA', 'TORREZ  MAMANI', '1988-06-02', 'mujer', 'ZONA LA LENGUETA', '', '', '', 1, 2, '2017-07-27 09:05:20', 17, '2017-07-27 09:05:20', 1, '2017-07-27 09:05:20', NULL),
(249, '7097923', 'JHANET NINOSKA', 'ANTONIO', '1989-12-19', 'mujer', 'FARO MURILLO', '70157430', '', '', 1, 2, '2017-07-27 09:10:25', 17, '2017-07-27 09:10:25', 1, '2017-07-27 09:10:25', NULL),
(250, '5959158', 'JANETH ELVIRA', 'COAQUIRA   FLORES', '1980-07-28', 'mujer', 'AVENIDA PERIFERICA CALLE 4', '60594394', '', '', 1, 2, '2017-07-27 09:15:56', 17, '2017-07-27 09:15:56', 1, '2017-07-27 09:15:56', NULL),
(251, '9936825', 'MAYA', 'MONASTERIOS  RAMIREZ', '1993-01-15', 'mujer', 'ZONA ACHUMANI', '77500726', '', '', 1, 2, '2017-07-27 09:21:08', 17, '2017-07-27 09:21:08', 1, '2017-07-27 09:21:08', NULL),
(252, '8262389', 'JULIA', 'CHOQUEHUANCA  ARO', '1989-03-02', 'mujer', 'ZONA ALTO LIMA, 3º SECCION CALLE INGAVI', '73230840', '', '', 1, 2, '2017-07-27 09:28:25', 17, '2017-07-27 09:28:25', 1, '2017-07-27 09:28:25', NULL),
(253, '5996899', 'NARDA MARIEL', 'BACARREZA  MENDOZA', '1984-03-18', 'mujer', 'ZONA MUNAYPATA  CALLE JUAN XXIII', '65114149', '', '', 1, 2, '2017-07-27 09:34:05', 17, '2017-07-27 09:34:05', 1, '2017-07-27 09:34:05', NULL),
(254, '6024955', 'ADELAIDA', 'OSCO LIMACHI', '1983-06-11', 'mujer', 'ZONA VILLA INGENIO U. V. 4 CALLE BARTOLINA SISA', '74048789', '', '', 1, 2, '2017-07-27 09:39:15', 17, '2017-07-27 09:39:15', 1, '2017-07-27 09:39:15', NULL),
(255, '8437651', 'BERONICA REYNA', 'CACERES  FLORES', '1988-04-23', 'mujer', 'ZONA PACAJES', '71953595', '', '', 1, 2, '2017-07-27 09:46:14', 17, '2017-07-27 09:46:14', 1, '2017-07-27 09:46:14', NULL),
(256, '9249440', 'MARIA EUGENIA', 'POCHO  LUQUE', '1992-03-07', 'mujer', 'ZONA LOS ANDES  AV. 16 DE JULIO', '77229442', '', '', 1, 2, '2017-07-27 09:51:42', 17, '2017-07-27 09:51:42', 1, '2017-07-27 09:51:42', NULL),
(257, '7057229', 'NANCY', 'VENTURA QUISPE', '1986-08-02', 'mujer', 'ZONA PROGRESO  AV.MCAL A. DE SANTA CRUZ', '76253208', '', '', 1, 2, '2017-07-27 09:57:03', 17, '2017-07-27 09:57:03', 1, '2017-07-27 09:57:03', NULL),
(258, '8319309', 'DANIELA LESLY', 'CAPIONA  VALLEJOS', '1990-04-23', 'mujer', 'ZONA BARRIO PETROLERO  CALLE 20', '78954569', '', '', 1, 2, '2017-07-27 10:04:03', 17, '2017-07-27 10:04:03', 1, '2017-07-27 10:04:03', NULL),
(259, '7056648', 'GIOVANA', 'QUISPE  MAMANI', '1992-01-29', 'mujer', 'RIO SECO ZONA VILLA TUNARI  CALLE 11', '77786292', '77211670', '', 1, 2, '2017-07-27 10:11:51', 17, '2017-07-27 10:11:51', 1, '2017-07-27 10:11:51', NULL),
(260, '7057727', 'AMALIA GRACIELA', 'APAZA  PILLCO', '1989-08-12', 'mujer', 'VILLA INGENIO AV. SANTIAGO DE MUNAYPATA', '78794843', '', '', 1, 2, '2017-07-27 10:16:42', 17, '2017-07-27 10:16:42', 1, '2017-07-27 10:16:42', NULL),
(261, '6843126', 'JHOVANA', 'RIVEROS AGUILAR', '1989-04-14', 'mujer', 'ZONA EL PARAISO  AV. JUNIN', '79151067', '2833289', '', 1, 2, '2017-07-27 10:21:24', 17, '2017-07-27 10:21:24', 1, '2017-07-27 10:21:24', NULL),
(262, '6949478', 'ADRIANA MARILIN', 'VELASQUEZ LOZA', '1994-05-26', 'mujer', 'VILLA TEJADA RECTANGULAR   CALE 4 AV. ESCALON AGUERO', '79606451', '', '', 1, 1, '2017-07-27 10:27:34', 17, '2017-07-27 10:27:34', 1, '2017-07-27 10:27:34', NULL),
(263, '8324661', 'YHANINA ESPERANZA', 'TAPIA  HIDALGO', '1992-02-13', 'mujer', 'ZONA 3 DE MAYO CALLE LUIS TABORGA', '76535217', '', '', 1, 2, '2017-07-27 10:31:42', 17, '2017-07-27 10:31:42', 1, '2017-07-27 10:31:42', NULL),
(264, '8346927', 'XIMENA', 'CAHUANA ULO', '1996-09-12', 'mujer', 'ZONA VILLA ORIENTAL  CALLE CUENCA', '79585715', '22575822', '', 1, 2, '2017-07-27 10:37:51', 17, '2017-07-27 10:37:51', 1, '2017-07-27 10:37:51', NULL),
(265, '8278567', 'GRECIA CAROLINA', 'MENDOZA  SARCO', '1989-08-17', 'mujer', 'ZONA CHAMOCO CHICO  CALLE  1RO DE ENERO', '72538817', '2862544', '', 1, 1, '2017-07-27 10:44:01', 17, '2017-07-27 10:44:01', 1, '2017-07-27 10:44:01', NULL),
(266, '4783591', 'SARAH GLORIA', 'JIMENEZ ARUQUIPA', '1992-01-09', 'mujer', 'ZONA VILLA FATIMA CALLE "B" POKENI', '67327061', '', '', 1, 1, '2017-07-27 10:48:30', 17, '2017-07-27 10:48:30', 1, '2017-07-27 10:48:30', NULL),
(267, '6952891', 'JHENNY ISABEL', 'CASILLA  ALCON', '1989-07-05', 'mujer', 'ZONA VILLA ADELA PLAN 108 MANZANO 216', '67155826', '', '', 1, 2, '2017-07-27 10:53:08', 17, '2017-07-27 10:53:08', 1, '2017-07-27 10:53:08', NULL),
(268, '10060277', 'IRIAN', 'ZAPATA SEISA', '1998-02-23', 'mujer', 'CALLE ATAHULLPA', '61162725', '', '', 1, 2, '2017-07-27 10:59:28', 17, '2017-07-27 10:59:28', 1, '2017-07-27 10:59:28', NULL),
(269, '7075381', 'JHOBANA INES', 'QUISPE  ALI', '1993-04-15', 'mujer', 'ZONA GERMAN BUSCH 1-1-3  AV. SERGIO ALMARAS PAZ', '60516241', '', '', 1, 1, '2017-07-27 11:06:22', 17, '2017-07-27 11:06:22', 1, '2017-07-27 11:06:22', NULL),
(270, '10021924', 'ROSEMARY ESTHER', 'QUISPE QUISPE', '1996-01-11', 'mujer', 'ZONA SANTISIMA TRINIDAD CALLE 19', '65598965', '', '', 1, 1, '2017-07-27 11:10:44', 17, '2017-07-27 11:10:44', 1, '2017-07-27 11:10:44', NULL),
(271, '10097429', 'JUANA', 'CONDORI  TORREZ', '1998-06-23', 'mujer', 'ZONA VILLA INGENIO CALLE BARTOLINA SISA', '60104183', '', '', 1, 2, '2017-07-27 11:17:06', 17, '2017-07-27 11:17:06', 1, '2017-07-27 11:17:06', NULL),
(272, '9070699', 'CLAUDIA SILVIA', 'LAURA TAPIA', '1994-11-30', 'mujer', 'ZONA VIRGEN DE COPACABANA CALLE QUEÑUA', '78786034', '', '', 1, 2, '2017-07-27 11:22:39', 17, '2017-07-27 11:22:39', 1, '2017-07-27 11:22:39', NULL),
(273, '9946500', 'LIZET', 'VELASCO  PAUCARA', '1991-08-15', 'mujer', 'ZONA ALTO LIMA - 3RA. SECCION AVENIDA 7', '79502811', '65130761', '', 1, 2, '2017-07-27 11:38:42', 17, '2017-07-27 11:38:42', 1, '2017-07-27 11:38:42', NULL),
(274, '8314522', 'MAYRA', 'VELARDE LUIS', '1992-12-30', 'mujer', 'S/N', '76556520', '0', '', 1, 1, '2017-08-01 11:36:24', 29, '2017-08-01 11:36:24', 1, '2017-08-01 11:36:24', NULL),
(275, '8314861', 'FABIANA ALICIA', 'MENDOZA HUANCA', '1993-02-23', 'mujer', 'BOQUERON 6735', '77773228', '71932265', '', 1, 1, '2017-08-01 11:36:24', 29, '2017-08-01 11:36:24', 1, '2017-08-01 11:36:24', NULL),
(276, '10919983', 'YANELA', 'PAZ HUARI', '1993-02-23', 'mujer', 'C/ 29 DE DICIEMBRE N° 6', '70657356', '78937790', '', 1, 1, '2017-08-01 11:36:24', 29, '2017-08-01 11:36:24', 1, '2017-08-01 11:36:24', NULL),
(277, '5112429', 'MARIA ELENA', 'NAVA AROZAMENA', '1989-08-30', 'mujer', 'CALLE ALFREDO TARIFA N.- 882', '75813978', '67578571', '', 1, 1, '2017-08-01 11:36:24', 29, '2017-08-01 11:36:24', 1, '2017-08-01 11:36:24', NULL),
(278, '6945432', 'GABRIELA', 'PAREDES BAUTISTA', '1992-02-24', 'mujer', 'AV.OCTAVIO CAMPERO N.-36', '75813978', '67578571', '', 1, 1, '2017-08-01 11:36:24', 29, '2017-08-01 11:36:24', 1, '2017-08-01 11:36:24', NULL),
(279, '6957887', 'TANIA', 'QUISPE POMA', '1986-12-31', 'mujer', 'C. RIO BAURES Nª1085', '75813978', '67578571', '', 1, 1, '2017-08-01 11:36:24', 29, '2017-08-01 11:36:24', 1, '2017-08-01 11:36:24', NULL),
(280, '6791120', 'SILVIA', 'PAÑUNI ARO ', '1991-04-15', 'mujer', 'C/BOQUERON', '78802820', '78835430', '', 1, 1, '2017-08-01 11:36:24', 29, '2017-08-01 11:36:24', 1, '2017-08-01 11:36:24', NULL),
(281, '12511334', 'REYNA CORINA', 'CUSI GUTIERREZ', '1996-07-15', 'mujer', 'CALLE LAS RETAMAS N.-2303', '71983374', '71983374', '', 1, 1, '2017-08-01 11:36:24', 29, '2017-08-01 11:36:24', 1, '2017-08-01 11:36:24', NULL),
(282, '6847667', 'ANDREA MARINA', 'FLORES AVILA', '1995-09-29', 'mujer', 'CALLE TENIENTE DELGADILLO NRO. 2071', '65602233', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(283, '7082442', 'SILVIA VANESA', 'GONZALES TITLE', '1993-12-13', 'mujer', 'S/N', '65643591', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(284, '10906861', 'XIMENA DUCELAIRA', 'ARUQUIPA CAHUNA', '1995-08-30', 'mujer', 'BARRIO MINASA , VILLA EL CARMEN CALLE 2 RAUL SALMO', '72068134', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(285, '6959017', 'YULI', 'BLANCO BLANCO', '1995-12-24', 'mujer', 'AV. RAUL SALMON N.- 47 ZONA 12 DE OCTUBRE', '65137413', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(286, '10034365', 'MARIBEL', 'ALVAREZ SAAVEDRA', '1997-04-08', 'mujer', 'CALLE ARACA N.- 2994', '69744752', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(287, '10061001', 'GUADALUPE', 'SIÑANI GUTIERREZ', '1995-05-15', 'mujer', 'CALLE HUALLPARRIMACHI NRO. 345', '67108299', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(288, '9928707', 'KATHERIN', 'CHAMBILLA VARGAS', '1994-06-20', 'mujer', 'AV. COCHABAMBA', '69813411', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(289, '9932227', 'MADELIN ISABEL', 'PATZI CHOQUE', '1997-01-28', 'mujer', 'CALLE JOSE LIBORIO VARGAS N.- 3624', '74905354', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(290, '5988602', 'WILMA RUTH', 'QUISPE APAZA ', '1980-10-08', 'mujer', 'ALTO VINO TINTO CALLE B', '79126319', '', '', 1, 1, '2017-08-01 15:28:42', 29, '2017-08-01 15:28:42', 1, '2017-08-01 15:28:42', NULL),
(291, '10015230', 'ANDREA', 'QUISPE HUANCA ', '2001-10-03', 'mujer', 'Calle C #196', '73515230', '', '', 1, 1, '2017-08-01 16:41:05', 29, '2017-08-01 16:41:05', 1, '2017-08-01 16:41:05', NULL),
(292, '4985515', 'AMELIA', 'RAMOS PEREZ', '1991-10-23', 'mujer', 'Av. CAndelaria #2154', '79623056', '', 'ameliarp@gmail.com', 1, 1, '2017-08-01 16:41:05', 29, '2017-08-01 16:41:05', 1, '2017-08-01 16:41:05', NULL),
(293, '8325712', 'ANA JULIA', 'FERNANDEZ AGUILAR', '1990-02-17', 'mujer', 'Calle Linares #968', '73573505', '', '', 1, 1, '2017-08-01 16:41:05', 29, '2017-08-01 16:41:05', 1, '2017-08-01 16:41:05', NULL),
(294, '8416605', 'DANITZA MERCEDES', 'GUTIERREZ', '1988-09-23', 'mujer', 'Avenida Avaroa #82', '70531688', '', '', 1, 1, '2017-08-01 16:41:05', 29, '2017-08-01 16:41:05', 1, '2017-08-01 16:41:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_trabajador_especialidad`
--

CREATE TABLE IF NOT EXISTS `especialista_trabajador_especialidad` (
  `id` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `fecha_certificacion` date DEFAULT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialista_trabajador_especialidad`
--

INSERT INTO `especialista_trabajador_especialidad` (`id`, `id_trabajador`, `id_especialidad`, `fecha_certificacion`, `creado`, `modificado`) VALUES
(30, 127, 58, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(31, 127, 59, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(32, 128, 58, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(33, 128, 59, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(34, 129, 58, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(35, 129, 59, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(36, 130, 58, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(37, 130, 59, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(38, 131, 58, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(39, 131, 59, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(40, 132, 68, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(41, 132, 69, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(42, 132, 70, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(43, 132, 71, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(44, 133, 68, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(45, 133, 69, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(46, 133, 70, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(47, 133, 71, '2011-05-08', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(48, 134, 58, '2012-01-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(49, 134, 59, '2012-01-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(50, 135, 72, '2012-01-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(51, 135, 73, '2012-01-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(52, 136, 58, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(53, 136, 59, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(54, 137, 58, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(55, 137, 59, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(56, 138, 58, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(57, 138, 59, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(58, 139, 58, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(59, 139, 59, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(60, 140, 58, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(61, 140, 59, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(62, 141, 58, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(63, 141, 59, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(64, 142, 58, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(65, 142, 59, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(66, 143, 58, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(67, 143, 59, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(68, 144, 68, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(69, 144, 69, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(70, 144, 70, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(71, 144, 71, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(72, 145, 68, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(73, 145, 69, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(74, 145, 70, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(75, 145, 71, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(76, 146, 72, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(77, 146, 73, '2014-12-30', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(78, 147, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(79, 147, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(80, 148, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(81, 148, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(82, 149, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(83, 149, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(84, 150, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(85, 150, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(86, 151, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(87, 151, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(88, 152, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(89, 152, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(90, 153, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(91, 153, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(92, 154, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(93, 154, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(94, 155, 68, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(95, 155, 69, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(96, 155, 70, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(97, 155, 71, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(98, 156, 68, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(99, 156, 69, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(100, 156, 70, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(101, 156, 71, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(102, 157, 72, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(103, 157, 73, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(104, 158, 58, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(105, 158, 59, '2016-12-19', '2017-07-15 12:28:50', '2017-07-15 12:28:50'),
(106, 127, 68, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(107, 127, 69, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(108, 127, 70, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(109, 127, 71, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(110, 128, 68, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(111, 128, 69, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(112, 128, 70, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(113, 128, 71, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(114, 129, 68, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(115, 129, 69, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(116, 129, 70, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(117, 129, 71, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(118, 130, 68, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(119, 130, 69, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(120, 130, 70, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(121, 130, 71, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(122, 131, 68, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(123, 131, 69, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(124, 131, 70, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(125, 131, 71, '2011-05-08', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(126, 134, 68, '2012-01-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(127, 134, 69, '2012-01-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(128, 134, 70, '2012-01-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(129, 134, 71, '2012-01-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(130, 136, 68, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(131, 136, 69, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(132, 136, 70, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(133, 136, 71, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(134, 137, 68, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(135, 137, 69, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(136, 137, 70, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(137, 137, 71, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(138, 138, 68, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(139, 138, 69, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(140, 138, 70, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(141, 138, 71, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(142, 139, 68, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(143, 139, 69, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(144, 139, 70, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(145, 139, 71, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(146, 140, 68, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(147, 140, 69, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(148, 140, 70, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(149, 140, 71, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(150, 141, 68, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(151, 141, 69, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(152, 141, 70, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(153, 141, 71, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(154, 142, 68, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(155, 142, 69, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(156, 142, 70, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(157, 142, 71, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(158, 143, 68, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(159, 143, 69, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(160, 143, 70, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(161, 143, 71, '2014-12-30', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(162, 147, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(163, 147, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(164, 147, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(165, 147, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(166, 148, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(167, 148, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(168, 148, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(169, 148, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(170, 149, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(171, 149, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(172, 149, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(173, 149, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(174, 150, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(175, 150, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(176, 150, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(177, 150, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(178, 151, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(179, 151, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(180, 151, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(181, 151, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(182, 152, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(183, 152, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(184, 152, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(185, 152, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(186, 153, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(187, 153, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(188, 153, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(189, 153, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(190, 154, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(191, 154, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(192, 154, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(193, 154, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(194, 158, 68, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(195, 158, 69, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(196, 158, 70, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(197, 158, 71, '2016-12-19', '2017-07-15 13:05:20', '2017-07-15 13:05:20'),
(298, 209, 13, '0000-00-00', '2017-07-26 09:50:45', '2017-07-26 09:50:45'),
(299, 210, 13, '0000-00-00', '2017-07-26 10:09:33', '2017-07-26 10:09:33'),
(300, 211, 13, '0000-00-00', '2017-07-26 10:21:28', '2017-07-26 10:21:28'),
(301, 212, 13, '0000-00-00', '2017-07-26 10:32:11', '2017-07-26 10:32:11'),
(302, 213, 13, '0000-00-00', '2017-07-26 10:40:06', '2017-07-26 10:40:06'),
(303, 214, 13, '0000-00-00', '2017-07-26 10:47:42', '2017-07-26 10:47:42'),
(304, 215, 13, '0000-00-00', '2017-07-26 10:58:42', '2017-07-26 10:58:42'),
(305, 216, 13, '0000-00-00', '2017-07-26 11:08:01', '2017-07-26 11:08:01'),
(306, 217, 12, '0000-00-00', '2017-07-26 11:15:41', '2017-07-26 11:15:41'),
(307, 218, 12, '0000-00-00', '2017-07-26 11:24:34', '2017-07-26 11:24:34'),
(309, 220, 13, '0000-00-00', '2017-07-26 11:42:57', '2017-07-26 11:42:57'),
(310, 221, 13, '0000-00-00', '2017-07-26 11:49:28', '2017-07-26 11:49:28'),
(311, 222, 15, '0000-00-00', '2017-07-26 13:50:37', '2017-07-26 13:50:37'),
(312, 223, 18, '0000-00-00', '2017-07-26 14:11:19', '2017-07-26 14:11:19'),
(313, 224, 18, '0000-00-00', '2017-07-26 14:20:42', '2017-07-26 14:20:42'),
(314, 225, 18, '0000-00-00', '2017-07-26 14:28:00', '2017-07-26 14:28:00'),
(315, 226, 18, '0000-00-00', '2017-07-26 14:35:57', '2017-07-26 14:35:57'),
(317, 228, 18, '0000-00-00', '2017-07-26 15:00:13', '2017-07-26 15:00:13'),
(318, 229, 18, '0000-00-00', '2017-07-26 15:06:54', '2017-07-26 15:06:54'),
(319, 230, 18, '0000-00-00', '2017-07-26 15:19:00', '2017-07-26 15:19:00'),
(320, 231, 18, '0000-00-00', '2017-07-26 15:34:00', '2017-07-26 15:34:00'),
(321, 232, 18, '0000-00-00', '2017-07-26 15:38:48', '2017-07-26 15:38:48'),
(322, 233, 18, '0000-00-00', '2017-07-26 15:47:22', '2017-07-26 15:47:22'),
(323, 234, 18, '0000-00-00', '2017-07-26 15:53:01', '2017-07-26 15:53:01'),
(324, 235, 18, '0000-00-00', '2017-07-26 15:58:44', '2017-07-26 15:58:44'),
(325, 236, 18, '0000-00-00', '2017-07-26 16:06:51', '2017-07-26 16:06:51'),
(326, 237, 18, '0000-00-00', '2017-07-26 16:17:57', '2017-07-26 16:17:57'),
(327, 238, 18, '0000-00-00', '2017-07-26 16:29:57', '2017-07-26 16:29:57'),
(328, 239, 18, '0000-00-00', '2017-07-26 16:36:49', '2017-07-26 16:36:49'),
(329, 240, 18, '0000-00-00', '2017-07-26 16:43:47', '2017-07-26 16:43:47'),
(330, 241, 18, '0000-00-00', '2017-07-26 16:49:44', '2017-07-26 16:49:44'),
(331, 242, 18, '0000-00-00', '2017-07-26 16:54:03', '2017-07-26 16:54:03'),
(332, 243, 18, '0000-00-00', '2017-07-26 16:58:27', '2017-07-26 16:58:27'),
(333, 244, 18, '0000-00-00', '2017-07-26 17:03:32', '2017-07-26 17:03:32'),
(334, 245, 18, '0000-00-00', '2017-07-26 17:07:54', '2017-07-26 17:07:54'),
(335, 246, 18, '0000-00-00', '2017-07-26 17:12:16', '2017-07-26 17:12:16'),
(336, 247, 18, '0000-00-00', '2017-07-27 09:00:36', '2017-07-27 09:00:36'),
(337, 248, 18, '0000-00-00', '2017-07-27 09:05:20', '2017-07-27 09:05:20'),
(338, 249, 18, '0000-00-00', '2017-07-27 09:10:25', '2017-07-27 09:10:25'),
(339, 250, 18, '0000-00-00', '2017-07-27 09:15:56', '2017-07-27 09:15:56'),
(340, 159, 77, '2013-08-02', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(341, 160, 77, '2013-08-02', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(342, 160, 82, '2013-10-28', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(343, 161, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(344, 162, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(345, 162, 84, '2017-04-16', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(346, 163, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(347, 164, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(348, 165, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(349, 166, 77, '2013-10-11', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(350, 166, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(351, 167, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(352, 168, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(353, 169, 77, '2013-10-11', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(354, 169, 82, '2013-12-20', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(355, 170, 77, '2016-09-05', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(356, 171, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(357, 172, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(358, 173, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(359, 174, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(360, 175, 77, '2016-09-05', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(361, 175, 84, '2016-12-11', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(362, 176, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(363, 177, 77, '2013-03-31', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(364, 177, 82, '2013-07-05', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(365, 178, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(366, 179, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(367, 180, 82, '2014-10-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(368, 180, 84, '2016-06-17', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(369, 181, 77, '2013-03-31', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(370, 181, 82, '2013-07-05', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(371, 181, 84, '2016-06-17', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(372, 182, 84, '2016-06-17', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(373, 183, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(374, 184, 77, '2013-09-13', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(375, 184, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(376, 185, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(377, 186, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(378, 187, 77, '2013-09-13', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(379, 187, 82, '2013-11-15', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(380, 188, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(381, 189, 77, '2016-09-05', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(382, 190, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(383, 191, 77, '2013-03-31', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(384, 191, 82, '2013-07-05', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(385, 191, 84, '2016-12-11', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(386, 192, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(387, 193, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(388, 194, 77, '2013-08-02', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(389, 194, 82, '2013-10-28', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(390, 195, 82, '2017-07-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(391, 196, 77, '2013-08-02', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(392, 196, 82, '2013-10-28', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(393, 197, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(394, 198, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(395, 199, 77, '2013-08-02', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(396, 199, 82, '2013-12-20', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(397, 200, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(398, 201, 77, '2013-03-31', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(399, 201, 82, '2013-07-05', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(400, 201, 84, '2016-06-17', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(401, 202, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(402, 203, 82, '2014-10-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(403, 203, 84, '2016-06-17', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(404, 204, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(405, 205, 84, '2016-12-11', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(406, 206, 77, '2017-07-06', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(407, 207, 82, '2014-10-09', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(408, 208, 77, '2013-08-02', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(409, 208, 82, '2013-12-20', '2017-07-27 09:46:48', '2017-07-27 09:46:48'),
(410, 251, 18, '0000-00-00', '2017-07-27 09:21:08', '2017-07-27 09:21:08'),
(411, 252, 18, '0000-00-00', '2017-07-27 09:28:25', '2017-07-27 09:28:25'),
(412, 253, 18, '0000-00-00', '2017-07-27 09:34:05', '2017-07-27 09:34:05'),
(413, 254, 18, '0000-00-00', '2017-07-27 09:39:15', '2017-07-27 09:39:15'),
(414, 255, 18, '2017-07-27', '2017-07-27 09:46:14', '2017-07-27 09:46:14'),
(415, 256, 18, '0000-00-00', '2017-07-27 09:51:42', '2017-07-27 09:51:42'),
(416, 257, 18, '0000-00-00', '2017-07-27 09:57:03', '2017-07-27 09:57:03'),
(417, 258, 18, '0000-00-00', '2017-07-27 10:04:03', '2017-07-27 10:04:03'),
(418, 259, 18, '0000-00-00', '2017-07-27 10:11:51', '2017-07-27 10:11:51'),
(419, 260, 18, '0000-00-00', '2017-07-27 10:16:42', '2017-07-27 10:16:42'),
(420, 261, 18, '0000-00-00', '2017-07-27 10:21:24', '2017-07-27 10:21:24'),
(421, 262, 18, '0000-00-00', '2017-07-27 10:27:34', '2017-07-27 10:27:34'),
(422, 263, 18, '0000-00-00', '2017-07-27 10:31:42', '2017-07-27 10:31:42'),
(423, 264, 18, '0000-00-00', '2017-07-27 10:37:51', '2017-07-27 10:37:51'),
(424, 265, 18, '0000-00-00', '2017-07-27 10:44:01', '2017-07-27 10:44:01'),
(425, 266, 18, '0000-00-00', '2017-07-27 10:48:30', '2017-07-27 10:48:30'),
(426, 267, 18, '0000-00-00', '2017-07-27 10:53:08', '2017-07-27 10:53:08'),
(427, 268, 18, '0000-00-00', '2017-07-27 10:59:28', '2017-07-27 10:59:28'),
(428, 269, 18, '0000-00-00', '2017-07-27 11:06:22', '2017-07-27 11:06:22'),
(429, 270, 18, '0000-00-00', '2017-07-27 11:10:44', '2017-07-27 11:10:44'),
(430, 271, 18, '0000-00-00', '2017-07-27 11:17:06', '2017-07-27 11:17:06'),
(431, 272, 18, '0000-00-00', '2017-07-27 11:22:39', '2017-07-27 11:22:39'),
(432, 227, 18, '0000-00-00', '2017-07-27 11:26:06', '2017-07-27 11:26:06'),
(433, 219, 12, '0000-00-00', '2017-07-27 11:29:33', '2017-07-27 11:29:33'),
(434, 273, 18, '0000-00-00', '2017-07-27 11:38:42', '2017-07-27 11:38:42'),
(435, 274, 25, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(436, 274, 26, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(437, 274, 27, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(438, 274, 28, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(439, 275, 25, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(440, 275, 26, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(441, 275, 27, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(442, 275, 28, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(443, 276, 25, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(444, 276, 26, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(445, 276, 27, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(446, 276, 28, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(447, 277, 25, '2016-12-26', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(448, 277, 26, '2016-12-26', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(449, 277, 27, '2016-12-26', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(450, 277, 28, '2016-12-26', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(451, 278, 25, '2016-12-26', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(452, 278, 26, '2016-12-26', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(453, 278, 27, '2016-12-26', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(454, 278, 28, '2016-12-26', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(455, 279, 25, '2016-11-10', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(456, 279, 26, '2016-11-10', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(457, 279, 27, '2016-11-10', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(458, 279, 28, '2016-11-10', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(459, 280, 25, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(460, 280, 26, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(461, 280, 27, '2016-11-11', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(462, 280, 28, '2016-06-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(463, 281, 25, '2016-10-06', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(464, 281, 26, '2016-10-07', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(465, 281, 27, '2016-11-12', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(466, 281, 28, '2016-10-09', '2017-08-01 11:36:24', '2017-08-01 11:36:24'),
(467, 282, 25, '2015-03-15', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(468, 282, 26, '2015-03-15', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(469, 282, 27, '2015-03-15', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(470, 283, 25, '2015-09-30', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(471, 283, 26, '2015-09-30', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(472, 283, 27, '2015-09-30', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(473, 284, 25, '2015-10-14', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(474, 284, 26, '2015-10-14', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(475, 284, 27, '2015-10-14', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(476, 285, 28, '2015-10-14', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(477, 286, 28, '2015-10-14', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(478, 287, 29, '2015-03-02', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(479, 288, 29, '2015-10-08', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(480, 289, 29, '2015-10-08', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(481, 290, 29, '2015-10-08', '2017-08-01 15:28:42', '2017-08-01 15:28:42'),
(482, 291, 25, '2017-07-09', '2017-08-01 16:41:05', '2017-08-01 16:41:05'),
(483, 291, 28, '2017-07-09', '2017-08-01 16:41:05', '2017-08-01 16:41:05'),
(484, 292, 29, '2017-07-05', '2017-08-01 16:41:05', '2017-08-01 16:41:05'),
(485, 293, 29, '2017-07-09', '2017-08-01 16:41:05', '2017-08-01 16:41:05'),
(486, 294, 29, '2017-07-18', '2017-08-01 16:41:05', '2017-08-01 16:41:05');

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
(3, 'Armando', 'Vega', 'varon', 'foto_3.jpg', 'foto_3_thumb.jpg', 'Formador SCORE Certificado', '<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>', 1, 0, '2016-09-26 16:47:23', 1, '2017-06-19 11:17:47', NULL, '2016-09-26 16:47:23', '0000-00-00 00:00:00'),
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
(1, 'Pie de página', 'mod_pie', '<div class="container">\r\n<div class="row footer-widgets"><!-- Start Subscribe & Social Links Widget -->\r\n<div class="col-md-3 col-xs-12">\r\n<div class="footer-widget social-widget">\r\n<p><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_maestras_final_7_blancov.png" style="width: 176px; height: 66px;" /></p>\r\n\r\n<ul class="social-icons">\r\n	<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>\r\n	<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>\r\n	<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li>\r\n	<li><a class="instgram" href="#"><i class="fa fa-instagram"></i></a></li>\r\n	<li><a class="vimeo" href="#"><i class="fa fa-vimeo-square"></i></a></li>\r\n	<li><a class="skype" href="#"><i class="fa fa-skype"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Subscribe & Social Links Widget --><!-- Start Twitter Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget twitter-widget">\r\n<h4>RECURSOS</h4>\r\n\r\n<p><a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/quienes-somos" style="color: white;">Qui&eacute;nes Somos</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/como-funciona" style="color: white;">C&oacute;mo funciona</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/informacion/3" style="color: white;">Equidad de g&eacute;nero en el sector</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/informacion/4" style="color: white;">Derechos laborales</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/informacion/5" style="color: white;">Salud y Seguridad en el Trabajo</a><br />\r\n<a href="http://maestrasconstructoras.org/si_maestras/index.php/administrador" style="color: #fab52c;">ADMINISTRADOR</a></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Twitter Widget --><!-- Start Flickr Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget twitter-widget">\r\n<h4>DESARROLLO</h4>\r\n\r\n<p style="margin-bottom:10px;"><strong>Esta plataforma fue desarrollada con el apoyo de la Organizaci&oacute;n Internacional del Trabajo y la Agencia Sueca de Desarrollo Internacional.</strong></p>\r\n\r\n<p><img alt="" src="/si_maestras/assets/filemanager/userfiles/OIT_BLANCO_SIN_LETRAS_P.png" style="width: 74px; height: 70px;" />&nbsp; &nbsp;&nbsp;<img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_asdi_blanco.png" style="width: 169px; height: 70px;" /></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Flickr Widget --><!-- Start Contact Widget -->\r\n\r\n<div class="col-md-3">\r\n<div class="footer-widget contact-widget">\r\n<h4>CONT&Aacute;CTANOS</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="width: 90px;" valign="top"><span><i class="fa fa-phone" style="margin-right: 0.8rem;"></i>Tel&eacute;fono:</span></td>\r\n			<td>&nbsp;(591) 2423134 - 2423139</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top"><span><i class="fa fa-envelope" style="margin-right: 0.8rem;"></i>Email:</span></td>\r\n			<td>&nbsp;caboco.bo@gmail.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top"><span><i class="fa  fa-map-marker" style="margin-right: 0.8rem;"></i>&nbsp;Direcci&oacute;n:</span></td>\r\n			<td>&nbsp;Av. Sanchez Lima 2557 - Torre Codes Piso 5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Contact Widget --></div>\r\n<!-- .row --><!-- Start Copyright -->\r\n\r\n<div class="copyright-section">\r\n<div class="row">\r\n<div class="col-md-6">\r\n<p>&copy; OIT Todos los derechos reservados - Desarrollado por <a href="http://formaempresas.com" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_formaempresas_blanco.png" style="width: 83px; height: 12px;" /></a></p>\r\n</div>\r\n<!--\r\n<div class="col-md-6">\r\n<ul class="footer-nav">\r\n	<li><a href="#">Sitemap</a></li>\r\n	<li><a href="#">Privacy Policy</a></li>\r\n	<li><a href="#">Contact</a></li>\r\n</ul>\r\n</div>\r\n--></div>\r\n</div>\r\n<!-- End Copyright --></div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-04-24 23:59:51', 1, '2017-04-24 23:59:51', '2016-09-13 10:35:07'),
(2, 'Auspiciadores', 'mod_auspiciantes', '<ul id="foo0">\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg" style="width: 93px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg" style="width: 93px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg" style="width: 93px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg" style="width: 93px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg" style="width: 93px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg" style="width: 93px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg" style="width: 93px; height: 70px;" /></li>\r\n	<li><img alt="" src="/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg" style="width: 93px; height: 70px;" /></li>\r\n</ul>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-03-18 11:52:32', 1, '2017-03-18 11:52:32', '0000-00-00 00:00:00'),
(3, 'Empresas', 'mod_auspiciadores', '<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg" style="height: 110px; width: 147px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg" style="height: 110px; width: 147px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg" style="height: 110px; width: 147px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg" style="height: 110px; width: 147px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg" style="height: 110px; width: 147px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg" style="height: 110px; width: 147px;" /></div>\r\n\r\n<div><img alt="" src="/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg" style="height: 110px; width: 147px;" /></div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-03-18 11:56:16', 1, '2017-03-18 11:56:16', '0000-00-00 00:00:00'),
(4, 'Score Global', 'mod_score_global', '<div class="contenido ng-scope">\r\n<div class="col-xs-12 col-md-6">\r\n<div class="score-content">\r\n<h3 style="padding-top: 20px;">Maestras constructoras</h3>\r\n\r\n<p>Maestras constructoras se implement&oacute; en m&aacute;s de&nbsp;810&nbsp;empresas en&nbsp;7&nbsp;pa&iacute;ses:</p>\r\n</div>\r\n\r\n<div class="score-content centered-parent">Resultados SCORE Global<br />\r\n(2009 - 2013)</div>\r\n</div>\r\n\r\n<div class="col-xs-12 col-md-6">\r\n<div class="score-content">\r\n<ul class="image">\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">3-4 VECES POR MES</span><br />\r\n				Reuniones de Equipos de Mejoramiento Empresarial (EME)</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">USD 3.000 Y 15.000</span><br />\r\n				Reducci&oacute;n de costos 2-3 meses despu&eacute;s de la formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">29% PROMEDIO</span><br />\r\n				Reducci&oacute;n de defectos</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">HASTA 22% MENOS</span><br />\r\n				Ausentismo laboral</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">3% AHORRO ENERG&Eacute;TICO (KwH)</span><br />\r\n				por cada unidad producida</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">15-50% Icremento en productividad 2,5</span><br />\r\n				meses despu&eacute;s del Taller de Formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style="width: 100%;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width: 25px;"><img src="/si_score/assets/filemanager/userfiles/sitio/indice-check.png" /></td>\r\n				<td><span class="indice-valor">36%</span><br />\r\n				Reducci&oacute;n de accidentes</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-01-16 15:16:13', 1, '2017-01-16 15:16:13', '0000-00-00 00:00:00'),
(5, 'Escuelas de formación', 'mod_enlaces', '<div>\r\n  <a href="http://mi.lapaz.bo/index.php?option=com_content&view=categories&id=20&Itemid=618" target="_blank">\r\n  <img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_Desarrollo_Economico.jpg" style="width: 318px; height: 100px; padding-top: 10px;" />\r\n  </a>\r\n</div>\r\n\r\n<div><a href="https://www.facebook.com/CCaM.LaPaz/" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_egm.jpg" style="width: 239px; height: 100px;" /></a></div>\r\n\r\n<div><a href="http://www.red-habitat.org" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_red_habitad.png" style="width: 88px; height: 100px;" /></a></div>\r\n\r\n<div><a href="http://www.infocallp.org/infocal2/index.php/ct-menu-item-1" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/logo_infocal2.jpg" style="width: 279px; height: 100px; padding-top: 10px;" /></a></div>\r\n\r\n<div><a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/escuela-taller-de-la-paz" target="_blank"><img alt="logo-etlp" src="/si_maestras/assets/filemanager/userfiles/LOGO_ESCUELA_ETLP.png" style="height: 100px; width:auto; padding-top: 10px;" /></a></div>', 1, NULL, '0000-00-00 00:00:00', NULL, '2017-06-08 09:40:05', 1, '2017-06-08 09:40:05', '2016-10-03 10:15:07'),
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `navegacion`
--

INSERT INTO `navegacion` (`id`, `vista`, `navegacion`, `creado`, `modificado`) VALUES
(1, 'usuarios', 'index.php/administrador/usuario', '0000-00-00 00:00:00', '2017-07-26 18:49:13'),
(2, 'noticias_generales', 'index.php/administrador/noticia/1', '0000-00-00 00:00:00', '2017-08-09 09:03:32'),
(3, 'paginas', 'index.php/administrador/pagina', '0000-00-00 00:00:00', '2017-08-11 20:09:44'),
(4, 'menus', 'index.php/administrador/menu', '0000-00-00 00:00:00', '2017-07-27 10:06:48'),
(5, 'formadores', 'index.php/administrador/formador', '0000-00-00 00:00:00', '2017-02-06 16:17:20'),
(6, 'testimonios', 'index.php/administrador/testimonio', '0000-00-00 00:00:00', '2016-11-10 12:25:20'),
(7, 'publicaciones', 'index.php/administrador/publicacion', '0000-00-00 00:00:00', '2017-03-21 11:11:51'),
(8, 'contactos', 'index.php/administrador/contacto', '0000-00-00 00:00:00', '2017-07-27 10:23:39'),
(9, 'slides', 'index.php/administrador/slide', '0000-00-00 00:00:00', '2017-07-27 10:21:10'),
(10, 'bibliotecas', 'index.php/intranet/biblioteca', '0000-00-00 00:00:00', '2016-10-26 10:57:39'),
(11, 'biblioteca_categorias', 'index.php/intranet/biblioteca_categoria?search_in=biblioteca_id&search_key=1', '0000-00-00 00:00:00', '2016-10-26 18:57:17'),
(12, 'biblioteca_documentos', 'index.php/intranet/biblioteca_documento', '0000-00-00 00:00:00', '2016-10-26 11:56:10'),
(13, 'paginas_predisenadas', 'index.php/administrador/pagina_predisenada', '0000-00-00 00:00:00', '2017-07-31 18:40:49'),
(16, 'inscripcion_empresas', 'index.php/intranet/inscripcion_empresa', '0000-00-00 00:00:00', '2016-10-27 10:12:00'),
(14, 'convocatoria_empresas', 'index.php/intranet/convocatoria_empresa', '0000-00-00 00:00:00', '2016-10-26 17:20:10'),
(15, 'convocatoria_formadores', 'index.php/intranet/convocatoria_formador', '0000-00-00 00:00:00', '2016-10-26 12:09:43'),
(17, 'especialistas', 'index.php/administrador/especialista', '0000-00-00 00:00:00', '2017-08-11 10:05:41'),
(18, 'especialidades', 'index.php/administrador/especialidad', '0000-00-00 00:00:00', '2017-04-04 07:46:18'),
(19, 'noticias_capacitacion', 'index.php/administrador/noticia/2', '0000-00-00 00:00:00', '2017-08-11 09:19:42'),
(20, 'informacion_equidad', 'index.php/administrador/informacion/3', '0000-00-00 00:00:00', '2017-08-09 09:10:00'),
(21, 'informacion_derecho', 'index.php/administrador/informacion/4', '0000-00-00 00:00:00', '2017-07-26 10:22:57'),
(22, 'informacion_salud', 'index.php/administrador/informacion/5', '0000-00-00 00:00:00', '2017-08-11 11:49:49'),
(23, 'centros_formacion', 'index.php/administrador/centro', '0000-00-00 00:00:00', '2017-08-11 10:04:01'),
(24, 'encuesta', 'index.php/administrador/encuesta', '0000-00-00 00:00:00', '2017-08-10 12:18:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT '',
  `resumen` text,
  `contenido` text,
  `rotulo` varchar(255) DEFAULT NULL,
  `url_video` text,
  `url_audio` text,
  `doc_pdf` varchar(255) DEFAULT NULL,
  `tipo_contenido` varchar(255) DEFAULT NULL,
  `fuente` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `id_centro` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id`, `titulo`, `resumen`, `contenido`, `rotulo`, `url_video`, `url_audio`, `doc_pdf`, `tipo_contenido`, `fuente`, `url`, `imagen`, `thumb`, `id_grupo`, `estado`, `id_centro`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(65, '"Si me dejaba manosear me pagaban más": La albañil boliviana que lucha contra el acoso sexual', '<p>&quot;Si me dejaba manosear me pagaban m&aacute;s&quot;: la alba&ntilde;il boliviana que lucha contra el acoso sexual</p>', '<p>&quot;Si me dejaba manosear me pagaban m&aacute;s&quot;: la alba&ntilde;il boliviana que lucha contra el acoso sexual</p>', 'VIDEO', 'https://www.youtube.com/watch?v=5O_OqwUQOII', '', NULL, 'video', 'BBC MUNDO', '', 'https://img.youtube.com/vi/5O_OqwUQOII/0.jpg', 'noticia_default_thumb.jpg', 3, 1, 0, 0, '2017-03-07 12:19:30', 1, '2017-03-07 12:20:19', 1, '2017-03-07 12:20:19', '0000-00-00 00:00:00'),
(11, 'Diálogo tripartito facilita una nueva normativa en Bolivia para proteger la salud de los trabajadores de la construcción', '<p>La aprobaci&oacute;n de este decreto se dio a trav&eacute;s de la implementaci&oacute;n del Convenio n&uacute;m. 167 de la OIT referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.</p>', '<p>La seguridad y salud para los trabajadores de la construcci&oacute;n constituye una creciente preocupaci&oacute;n en Bolivia que fue abordada por su Ministerio de Trabajo, Empleo y Previsi&oacute;n Social, la Confederaci&oacute;n Sindical de Trabajadores de la Construcci&oacute;n de Bolivia y la C&aacute;mara Boliviana de la Construcci&oacute;n, quienes mediante un proceso de di&aacute;logo tripartito, aprobaron el pasado 5 de octubre el decreto que reglamenta la Ley N&ordm; 545 de ratificaci&oacute;n del Convenio n&uacute;m. 167 de la Organizaci&oacute;n Internacional del Trabajo (OIT) referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.<br />\r\n<br />\r\nEste reglamento establece que se deben tomar todas las medidas necesarias con el fin de proteger la vida y la salud de los trabajadores. Entre las actividades clasificadas dentro del rubro de la construcci&oacute;n se encuentran la edificaci&oacute;n, las excavaciones, la construcci&oacute;n de carreteras, las obras viales, las transformaciones estructurales, la renovaci&oacute;n, el mantenimiento, la reparaci&oacute;n, las labores de limpieza y pintura, y la demolici&oacute;n de todo tipo de edificaciones.&nbsp;<br />\r\n<br />\r\nAsimismo, la reglamentaci&oacute;n trata diversos puntos como ser la prevenci&oacute;n y protecci&oacute;n contra incendios, los tipos de maquinaria, equipos y herramientas, los trabajos en altura, de demolici&oacute;n, las excavaciones, la iluminaci&oacute;n y el ruido ocupacional. Finalmente, la norma dispone que se deben garantizar las condiciones apropiadas de seguridad y salud en el lugar de trabajo para aquellos trabajadores catalogados como &ldquo;cuenta propia&rdquo;.&nbsp;<br />\r\n<br />\r\nCabe resaltar que a pesar que el sector construcci&oacute;n experiment&oacute; un crecimiento sostenido en la &uacute;ltima d&eacute;cada en Bolivia atrayendo el 8,8% de la fuerza laboral del pa&iacute;s, no contaba con regulaciones espec&iacute;ficas que garantizaran la seguridad y salud de los trabajadores.&nbsp;<br />\r\n<br />\r\nFinalmente, es necesario recordar que la OIT tiene entre sus mandatos la construcci&oacute;n de condiciones que propicien el desarrollo de un di&aacute;logo social de manera sostenible, para impulsar la generaci&oacute;n de empleo digno y sostenible; la difusi&oacute;n y respeto de los derechos fundamentales en el trabajo y el tratamiento del conflicto a trav&eacute;s del dialogo.</p>', 'NOTICIA', NULL, NULL, NULL, 'texto', 'OIT', '', 'n13.png', 'n13_thumb.png', 1, 1, 0, 0, '2017-01-18 15:05:24', 1, '2017-01-18 16:07:25', 1, '2017-01-18 16:07:25', '0000-00-00 00:00:00'),
(12, 'Mujeres del sector de la construcción en Bolivia se forman en Derechos Fundamentales y Normas Internacionales del Trabajo', '<p>El 10 de febrero de 2015, el Estado Plurinacional de Bolivia ratific&oacute; el Convenio 167 de la OIT sobre seguridad y salud en el sector de la construcci&oacute;n. En este marco, la OIT promueve un proyecto que cuenta con el financiamiento de la Agencia Sueca de Desarrollo Internacional (ASDI) para la gesti&oacute;n 2016-2017. El proyecto denominado &ldquo;Construyendo Igualdad&rdquo; fue presentado el d&iacute;a 20 de mayo en una mesa multipartita conformada por los actores m&aacute;s importantes del sector de la construcci&oacute;n en Bolivia. Este proyecto tiene como objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo.</p>', '<p>Con el apoyo de la mesa multipartita se consensuaron y validaron diferentes actividades del proyecto, definiendo varias l&iacute;neas de acci&oacute;n. En seguimiento a estos acuerdos, el 21 de julio de 2016 se realiz&oacute; una formaci&oacute;n sobre derechos fundamentales del trabajo a 20 representantes de la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) y a 10 mujeres miembros de la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB).<br />\r\n<br />\r\nLa formaci&oacute;n estuvo a cargo de un asesor legal de la Central Obrera Boliviana (COB), quien abord&oacute; dos grandes temas, las Normas Internacionales del Trabajo y la Normativa Nacional. Dentro de la primera tem&aacute;tica el facilitador explic&oacute; detalladamente las caracter&iacute;sticas del sistema y el control normativo de la OIT y expuso la relaci&oacute;n entre las Normas Internacionales de Trabajo y la legislaci&oacute;n boliviana, tambi&eacute;n habl&oacute; sobre la importancia de la ratificaci&oacute;n del Convenio 167 de la OIT sobre seguridad y salud en la construcci&oacute;n.<br />\r\n<br />\r\nPor otro lado, dentro de la tem&aacute;tica de la normativa boliviana, se abordaron los principales principios del derecho del trabajo, como ser el principio protectivo, el principio de irrenunciabilidad, el principio de inversi&oacute;n de la prueba, el principio de primac&iacute;a de la realidad y el principio de la no discriminaci&oacute;n laboral. Adem&aacute;s, se expusieron los contenidos de la nueva legislaci&oacute;n laboral en Bolivia enfoc&aacute;ndose principalmente en la Ley General del Trabajo.<br />\r\n<br />\r\nAl finalizar el curso, las participantes reconocieron la importancia de las tem&aacute;ticas expuestas ya que muchas de ellas no estaban familiarizadas con las mismas. Se identificaron muchas necesidades que tienen relaci&oacute;n con la falta de seguridad contractual y la falta de conocimiento de las normas internacionales del trabajo. La mayor&iacute;a de las mujeres expresaron su preocupaci&oacute;n frente a la falta de estabilidad laboral debido al incumplimiento de las normativas vigentes.&nbsp;</p>', 'NOTICIA', NULL, NULL, NULL, 'texto', 'OIT', '', 'n2.jpg', 'n2_thumb.jpg', 1, 1, 0, 0, '2017-01-18 15:38:09', 1, '2017-01-18 15:38:09', NULL, '2017-01-18 15:38:09', '0000-00-00 00:00:00'),
(13, 'La OIT despierta el interés institucional por mejorar las condiciones de trabajo de las mujeres constructoras', '<p>Durante los &uacute;ltimos a&ntilde;os Bolivia experiment&oacute; un importante crecimiento en el sector de la construcci&oacute;n que signific&oacute; una mayor demanda de mano de obra, la cual se presenta como una alternativa para las mujeres que necesitan incrementar sus ingresos. En esta coyuntura, la Oficina de la OIT para los Pa&iacute;ses Andinos, junto a la Agencia Sueca de Desarrollo Internacional (ASDI) y Red H&aacute;bitat, inici&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo; con la convocatoria a una mesa multipartita en la ciudad de La Paz.</p>', '<p>Desde el 2009 el sector de la construcci&oacute;n en Bolivia presenta un importante crecimiento, entre el 8 y 11% anual, situ&aacute;ndose como el segundo de mayor contribuci&oacute;n al PIB nacional luego de los hidrocarburos. Este boom de la construcci&oacute;n ha determinado un incremento de la demanda de mano de obra, donde las mujeres incursionan de forma sostenida. Si bien en la &uacute;ltima d&eacute;cada en Bolivia las mujeres irrumpieron en mercados de trabajo tradicionalmente monopolizados por los hombres, este proceso contin&uacute;a enfrent&aacute;ndose a la discriminaci&oacute;n por raz&oacute;n de g&eacute;nero, de raza y a la desigualdad en la remuneraci&oacute;n, situaci&oacute;n que es especialmente profunda en el caso de aquellas mujeres que actualmente se dedican a la construcci&oacute;n.<br />\r\n<br />\r\nConsciente de esta problem&aacute;tica, y siguiendo el trabajo iniciado con la ratificaci&oacute;n del Convenio n&uacute;m. 167 de la OIT &ldquo;Convenio sobre seguridad y salud en la construcci&oacute;n&rdquo;, la Oficina de la OIT para los Pa&iacute;ses Andinos present&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo;, el cual tiene por objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo, mejorando sus condiciones de vida, empoder&aacute;ndolas en sus derechos fundamentales del trabajo y logrando su emancipaci&oacute;n econ&oacute;mica. Para llegar a esta meta, la OIT organiz&oacute; una mesa multipartita para presentar dicha iniciativa y generar las bases de trabajo conjunto que direccionen y apoyen la ejecuci&oacute;n de las actividades.&nbsp;<br />\r\n<br />\r\nLas instituciones que asistieron a la mesa multipartita fueron: la Central Obrera Boliviana (COB), la Confederaci&oacute;n de Empresarios Privados de Bolivia (CEPB), la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB), la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC), el Gobierno Aut&oacute;nomo Municipal de La Paz (GAMLP), el Gobierno Aut&oacute;nomo Municipal de El Alto (GAMEA), la ONG Red H&aacute;bitat, y la Embajada de Suecia,&nbsp;<br />\r\n<br />\r\nEl encuentro se inici&oacute; con la descripci&oacute;n de la problem&aacute;tica del sector, acorde a los datos estad&iacute;sticos nacionales disponibles, y con la presentaci&oacute;n del proyecto de la OIT. Al finalizar, y luego de un amplio debate, los asistentes se&ntilde;alaron los puntos en los cuales sus organizaciones podr&iacute;an brindar apoyo al proyecto, por ejemplo desde el lado de los Gobiernos Municipales, incluir las iniciativas empresariales de las mujeres constructoras en las incubadoras de empresas y en las ferias municipales; coordinar las actividades de formaci&oacute;n y apoyar en la elaboraci&oacute;n de normativas municipales para asegurar una inclusi&oacute;n digna de las mujeres constructoras. Desde el lado del gremio empresarial se comprometieron en trabajar en aspectos de formaci&oacute;n, certificaci&oacute;n de los procesos en curso, y trabajar en normativas y cultura de seguridad y salud en el lugar del trabajo. Las organizaciones de trabajadores, por su parte, se comprometieron a socializar y coordinar las actividades con sus bases. Finalmente, todos los participantes manifestaron su inter&eacute;s en participar en el seguimiento del proyecto, confirmando su apoyo a las siguientes mesas multipartitas que ser&aacute;n convocadas por la OIT para evaluar el avance de las intervenciones.</p>', 'NOTICIA', NULL, NULL, NULL, 'texto', 'OIT', '', 'n3.jpg', 'n3_thumb.jpg', 1, 1, 0, 0, '2017-01-18 16:02:42', 1, '2017-01-18 16:02:42', NULL, '2017-01-18 16:02:42', '0000-00-00 00:00:00'),
(32, 'Construyendo Igualdad en el sector de las mujeres trabajadoras en construcción en Bolivia', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', 'VIDEO', 'https://www.youtube.com/watch?v=TGaRmkKyQok', NULL, NULL, 'video', '', '', 'https://img.youtube.com/vi/TGaRmkKyQok/0.jpg', 'noticia_default_thumb.jpg', 1, 1, 0, 0, '2017-01-28 13:08:37', 1, '2017-02-18 11:10:54', NULL, '2017-01-28 13:08:37', '0000-00-00 00:00:00'),
(30, 'La OIT en apoyo a la mujer trabajadora de la construcción en Bolivia', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', 'VIDEO', 'https://www.youtube.com/watch?v=jubqQaWl_UE', '', NULL, 'video', 'OIT', '', 'https://img.youtube.com/vi/jubqQaWl_UE/0.jpg', 'noticia_default_thumb.jpg', 1, 1, 0, 0, '2017-01-28 13:03:25', 1, '2017-03-07 12:15:21', 1, '2017-03-07 12:15:21', '0000-00-00 00:00:00'),
(35, 'Integer capacitacion dapibus lorem vel nibh volutpat mollis', '<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', NULL, 'texto', 'OIT', '', 'noti_4.jpg', 'noti_4_thumb.jpg', 2, 1, 0, 0, '2016-09-23 17:09:43', 1, '2016-09-23 17:09:43', NULL, '2016-09-23 17:09:43', '0000-00-00 00:00:00'),
(36, 'Integer capacitacion condimentum arcu vel lacinia pretium', '<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', NULL, 'texto', 'OIT', '', 'noti_3.jpg', 'noti_3_thumb.jpg', 2, 1, 0, 0, '2016-09-23 17:07:00', 1, '2016-09-23 17:07:00', NULL, '2016-09-23 17:07:00', '0000-00-00 00:00:00'),
(37, 'Cras capacitacion vestibulum enim a velit elementum, sit amet facilisis sem malesuada', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', NULL, 'texto', 'OIT', '', 'noti_5.jpg', 'noti_5_thumb.jpg', 2, 1, 0, 0, '2016-09-23 17:11:04', 1, '2016-09-23 17:11:04', NULL, '2016-09-23 17:11:04', '0000-00-00 00:00:00'),
(38, 'Vestibulum capacitacion aliquet erat sit amet tortor posuere, id lacinia sapien varius', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', NULL, 'texto', 'OIT', '', 'noti_61.jpg', 'noti_61_thumb.jpg', 2, 1, 0, 0, '2016-09-23 17:12:03', 1, '2017-02-02 16:30:47', 1, '2017-01-30 16:31:07', '0000-00-00 00:00:00'),
(39, 'Aenean capacitacion interdum ipsum sit amet rutrum pharetra', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', NULL, 'texto', 'OIT', '', 'noti_7.jpg', 'noti_7_thumb.jpg', 2, 1, 0, 0, '2016-09-23 17:15:31', 1, '2016-10-07 14:45:57', NULL, '2016-09-23 17:15:31', '0000-00-00 00:00:00'),
(40, 'Nullam capacitacion tincidunt urna nec tellus consequat, non rutrum tellus mattis', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque.&nbsp;Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', NULL, 'texto', 'OIT', 'http://google.com', 'noti_8.jpg', 'noti_8_thumb.jpg', 2, 1, 0, 0, '2016-09-23 17:16:54', 1, '2017-01-30 16:19:38', 1, '2017-01-30 16:19:38', '0000-00-00 00:00:00'),
(66, 'La seguridad social para los trabajadores de la construcción', '<p><strong><span style="font-size:14px;">La seguridad social para los trabajadores de la construcci&oacute;n</span></strong></p>', '<p>Los niveles de ingreso de los trabajadores de la construcci&oacute;n en Bolivia var&iacute;an seg&uacute;n su categor&iacute;a; los obreros dependientes obtienen menor remuneraci&oacute;n en promedio que los cuenta propia, as&iacute; como los salarios de los empleadores o jefes del sector informal superan a los del sector dependiente. Si bien los promedios de ingreso del sector superan el salario m&iacute;nimo nacional, especialmente en el sector independiente, est&aacute;n perdiendo las coberturas y beneficios de la Seguridad Social. Sin embargo, a pesar de que un gran n&uacute;mero de trabajadores de la construcci&oacute;n est&aacute;n en condici&oacute;n de dependencia, la seguridad y salud en el trabajo como la cobertura de Seguridad Social es muy baja, tanto en salud como en pensiones. Por tanto, los trabajadores de la construcci&oacute;n son vulnerables ante las adversidades de corto y largo plazo.</p>', 'VIDEO', 'https://www.youtube.com/watch?v=C7Jt_n6lt1M', NULL, '', 'video', 'OIT', '', 'https://img.youtube.com/vi/C7Jt_n6lt1M/0.jpg', 'noticia_default_thumb.jpg', 4, 1, 0, 0, '2017-03-07 13:45:00', 1, '2017-03-21 13:42:18', 1, '2017-03-21 13:42:18', '0000-00-00 00:00:00'),
(57, 'Datos Relevantes sobre Género en el Sector de la Construcción', '<p><span style="font-size:14px;"><strong>Datos extra&iacute;dos de la encuesta de hogares 2014</strong></span></p>', '<ul>\r\n	<li style="text-align: justify;"><strong>95,5% del total de los trabajadores de la construcci&oacute;n son varones, frente a solamente 4,5% que son mujeres.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>La mayor parte de las trabajadoras de la construcci&oacute;n son asalariadas, pero no cuentan con cobertura de Seguridad Social por las condiciones de informalidad en las que trabajan.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Del total de los trabajadores en construcci&oacute;n asalariados el 5,6% son mujeres y el 94,4% son hombres.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Entre los hombres 26,4% son trabajadores por cuenta propia mientras que entre las mujeres la presencia de trabajadoras por cuenta propia es de solamente 1,3%.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Del total de los trabajadores sin remuneraci&oacute;n dentro del sector de la construcci&oacute;n 62% son mujeres y 38% son hombres.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Del total de los trabajadores sin remuneraci&oacute;n que son familiares o aprendices dentro del sector de la construcci&oacute;n las mujeres representan un 24,7% y los hombres solamente un 0,8%.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Si bien se acelera la incorporaci&oacute;n de las mujeres en la industria de la construcci&oacute;n y esta mano de obra es apreciada por los empleadores, no se refleja en el nivel de ingresos.</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Las mujeres generalmente se vinculan a la actividad de la construcci&oacute;n como ayudantes o peones. Por esta raz&oacute;n las mujeres reciben por lo menos un 20% menos de la paga que se realiza a un var&oacute;n, independientemente de la actividad o la responsabilidad (Peri&oacute;dico P&aacute;gina Siete, domingo 10 de noviembre de 2013).</strong></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><strong>Del total de trabajadores de la construcci&oacute;n 58,9% de los hombres ejercen como alba&ntilde;iles y solamente el 15,5% coo ayudantes, en tanto que en el caso de las mujeres , 15,8% trabaja como alba&ntilde;il y 28,6% como ayudantes.</strong></li>\r\n</ul>', 'DATOS ESTADÍSTICOS', '', '', '', 'texto', '', '', 'Untitled8.png', 'Untitled8_thumb.png', 3, 1, 0, 0, '2017-03-07 09:29:08', 1, '2017-03-21 13:35:00', 1, '2017-03-21 13:35:00', '0000-00-00 00:00:00'),
(58, 'Estereotipos y preconceptos del sector de la construcción', '<p><span style="font-size:18px;"><b>Estereotipos y preconceptos presentes en la gesti&oacute;n del empleo dentro del sector de la construcci&oacute;n</b></span></p>', '<p><strong>EL TEMA:</strong> La fuerza y resistencia f&iacute;sica</p>\r\n\r\n<p><strong>ESTEREOTIPOS:</strong> &ldquo;Las mujeres no tienen suficiente fuerza para trabajar en la construcci&oacute;n&rdquo;</p>\r\n\r\n<p><strong>REFLEXIONEMOS:</strong></p>\r\n\r\n<p>&bull; La fuerza f&iacute;sica depende no solo del sexo: tambi&eacute;n depende del entrenamiento y la experiencia previa. Muchas ocupaciones tradicionalmente femeninas requieren gran fuerza y resistencia. Ejemplos: Comadrona y trabajadora dom&eacute;stica.</p>\r\n\r\n<p>&bull; Cada vez m&aacute;s la tecnolog&iacute;a suple la fuerza f&iacute;sica en el trabajo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><u>La segmentaci&oacute;n laboral por sexo en el sector de la construcci&oacute;n es un problema porque:</u></strong></p>\r\n\r\n<p>&nbsp;&bull; Limita las posibilidades de mujeres y hombres de optar a empleos diversos; y por tanto, limita las posibilidades de las empresas de aprovechar la diversidad del talento.</p>\r\n\r\n<p>&bull; Los sectores donde se genera m&aacute;s empleo (por ejemplo, la construcci&oacute;n con fondos p&uacute;blicos) benefician fundamentalmente a los hombres.</p>\r\n\r\n<p>&bull; Los empleos ocupados por mujeres son normalmente m&aacute;s precarios, con menor remuneraci&oacute;n y prestaciones sociales.</p>\r\n\r\n<p>&bull; Limita las posibilidades de las mujeres de acceder a puestos de decisi&oacute;n</p>\r\n\r\n<p>&nbsp;</p>', 'NOTICIA', '', '', NULL, 'texto', '', '', 'images.jpg', 'images_thumb.jpg', 0, 1, 0, 0, '2017-03-07 10:19:22', 1, '2017-03-07 10:19:22', NULL, '2017-03-07 10:19:22', '0000-00-00 00:00:00'),
(59, 'Estereotipos y preconceptos presentes dentro del sector de la construcción', '<p><span style="font-size:14px;"><strong>Estereotipos y preconceptos presentes en la gesti&oacute;n del empleo dentro del sector de la construcci&oacute;n</strong></span></p>', '<p style="text-align: justify;"><strong>EL TEMA:</strong> La fuerza y resistencia f&iacute;sica</p>\r\n\r\n<p style="text-align: justify;"><strong>ESTEREOTIPOS:</strong> &ldquo;Las mujeres no tienen suficiente fuerza para trabajar en la construcci&oacute;n&rdquo;</p>\r\n\r\n<p style="text-align: justify;"><strong>REFLEXIONEMOS:</strong></p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;">La fuerza f&iacute;sica depende no solo del sexo: tambi&eacute;n depende del entrenamiento y la experiencia previa. Muchas ocupaciones tradicionalmente femeninas requieren gran fuerza y resistencia. Ejemplos: Comadrona y trabajadora dom&eacute;stica.</li>\r\n	<li style="text-align: justify;">Cada vez m&aacute;s la tecnolog&iacute;a suple la fuerza f&iacute;sica en el trabajo.</li>\r\n</ul>\r\n\r\n<p style="text-align: justify;"><strong>La segmentaci&oacute;n laboral por sexo en el sector de la construcci&oacute;n es un problema porque:</strong></p>\r\n\r\n<p style="text-align: justify;">&nbsp;&bull; Limita las posibilidades de mujeres y hombres de optar a empleos diversos; y por tanto, limita las posibilidades de las empresas de aprovechar la diversidad del talento.</p>\r\n\r\n<p style="text-align: justify;">&bull; Los sectores donde se genera m&aacute;s empleo (por ejemplo, la construcci&oacute;n con fondos p&uacute;blicos) benefician fundamentalmente a los hombres.</p>\r\n\r\n<p style="text-align: justify;">&bull; Los empleos ocupados por mujeres son normalmente m&aacute;s precarios, con menor remuneraci&oacute;n y prestaciones sociales.</p>\r\n\r\n<p style="text-align: justify;">&bull; Limita las posibilidades de las mujeres de acceder a puestos de decisi&oacute;n</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>', 'INFORMACIÓN DE INTERÉS', '', '', '', 'texto', '', '', 'images7.jpg', 'images7_thumb.jpg', 3, 1, 0, 0, '2017-03-07 10:20:00', 1, '2017-03-21 13:37:00', 1, '2017-03-21 13:37:00', '0000-00-00 00:00:00'),
(60, '"Si me dejaba manosear me pagaban más": La albañil boliviana que lucha contra el acoso sexual', '<p><span style="font-size:18px;">V&iacute;deo BBC MUNDO</span></p>', '<p><span style="font-size:18px;">V&iacute;deo sobre la lucha contra el acoso sexual en el sector de la construcci&oacute;n</span></p>', 'VIDEO', 'http://vid.io/xqOx', '', NULL, 'video', 'BBC MUNDO', 'http://vid.io/xqOx', 'https://img.youtube.com/vi/p://vid.io/xqOx/0.jpg', 'noticia_default_thumb.jpg', 0, 1, 0, 0, '2017-03-07 10:27:44', 1, '2017-03-07 10:27:44', NULL, '2017-03-07 10:27:44', '0000-00-00 00:00:00'),
(61, '"Si me dejaba manosear me pagaban más": La albañil boliviana que lucha contra el acoso sexual', '<p><span style="font-size:18px;">V&iacute;deo sobre la lucha contra el acoso sexual en el sector de la construcci&oacute;n</span></p>', '<p>Video BBC Mundo</p>', 'VIDEO', 'https://www.youtube.com/watch?v=5O_OqwUQOII&t=115s', '', NULL, 'video', 'BBC MUNDO', '', 'https://img.youtube.com/vi/5O_OqwUQOII&t=115s/0.jpg', 'noticia_default_thumb.jpg', 3, 0, 0, 0, '2017-03-07 10:28:04', 1, '2017-03-07 12:18:40', 1, '2017-03-07 12:17:12', '0000-00-00 00:00:00'),
(62, 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', NULL, 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'gggg.png', 'gggg_thumb.png', 0, 1, 0, 0, '2017-03-07 12:01:12', 1, '2017-03-07 12:01:12', NULL, '2017-03-07 12:01:12', '0000-00-00 00:00:00');
INSERT INTO `noticia` (`id`, `titulo`, `resumen`, `contenido`, `rotulo`, `url_video`, `url_audio`, `doc_pdf`, `tipo_contenido`, `fuente`, `url`, `imagen`, `thumb`, `id_grupo`, `estado`, `id_centro`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(63, 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', NULL, 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'gggg1.png', 'gggg1_thumb.png', 0, 1, 0, 0, '2017-03-07 12:01:40', 1, '2017-03-07 12:01:40', NULL, '2017-03-07 12:01:40', '0000-00-00 00:00:00'),
(64, 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', NULL, 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'FOTO_1_opt.jpg', 'FOTO_1_opt_thumb.jpg', 1, 1, 0, 0, '2017-03-07 12:02:36', 1, '2017-03-07 12:06:33', 1, '2017-03-07 12:06:33', '0000-00-00 00:00:00'),
(72, 'La Seguridad y la Salud en el Sector de la Construcción', '<p>Gu&iacute;a breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', '<p>Gu&iacute;a breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', 'TRÍPTICO INFORMATIVO', NULL, NULL, 'TRIPTICO_constructoras1.pdf', 'pdf', '', '', 'TR3_(2)-min2.png', 'TR3_(2)-min2_thumb.png', 0, 1, 0, 0, '2017-03-21 09:39:28', 1, '2017-03-21 13:22:50', 1, '2017-03-21 13:22:50', '0000-00-00 00:00:00'),
(71, 'La Seguridad y la Salud en el Sector de la Construcción', '<p>Gu&iacute;a breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', '<p>G&uacute;ia breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', 'TRÍPTICO INFORMATIVO', NULL, NULL, 'TRIPTICO_constructoras.pdf', 'pdf', '', '', 'TR-min.png', 'TR-min_thumb.png', 0, 1, 0, 0, '2017-03-21 09:25:51', 1, '2017-03-21 09:32:14', 1, '2017-03-21 09:32:14', '0000-00-00 00:00:00'),
(73, 'Seguridad y Salud en el Sector de la Construcción', '<p><span style="font-size:14px;"><strong>Repertorio de recomendaciones pr&aacute;cticas de la OIT</strong></span></p>', '<p>De conformidad con la decisi&oacute;n adoptada por el Consejo de Administraci&oacute;n de la Oficina Internacional del Trabajo en su 244.a reuni&oacute;n (noviembre de 1989), del 12 al 19 de marzo de 1991 se celebr&oacute; en Ginebra la Reuni&oacute;n de expertos convocada para elaborar un repertorio de recomendaciones pr&aacute;cticas sobre la seguridad y la salud en la construcci&oacute;n. En esa reuni&oacute;n participaron veinti&uacute;n expertos (siete de cada grupo) designados por el Consejo de Administraci&oacute;n previa consulta con el Grupo Gubernamental, el Grupo de los Empleadores y el Grupo de los Trabajadores del Consejo. La Reuni&oacute;n de expertos examin&oacute; y adopt&oacute; el texto del presente repertorio, que se bas&oacute; sobre un proyecto preparado por la Oficina.</p>\r\n\r\n<p>Estas directivas est&aacute;n destinadas a todas las personas, tanto del sector p&uacute;blico como del sector privado, a las que competen la seguridad y la protecci&oacute;n de la salud en la industria de la construcci&oacute;n. Este repertorio no tiene la finalidad de reemplazar a las leyes o reglamentos nacionales ni a normas vigentes. Ha sido elaborado con el prop&oacute;sito de servir de gu&iacute;a a cuantos deban formular disposiciones sobre esa materia, sean &eacute;stos autoridades p&uacute;blicas, comisiones, dirigentes de empresa u organizaciones de empleadores o de trabajadores de la industria de la construcci&oacute;n.</p>\r\n\r\n<p><br />\r\nEs conveniente interpretar las disposiciones del repertorio tomando en cuenta la situaci&oacute;n nacional y local, los medios t&eacute;cnicos disponibles y la escala de las operaciones, en tanto que condiciones que determinar&aacute;n el alcance de su aplicaci&oacute;n. La publicaci&oacute;n del presente repertorio fue autorizada por el Consejo de Administraci&oacute;n de la Oficina Internacional del Trabajo en su 250.a reuni&oacute;n (mayo-junio de 1991).</p>', 'PUBLICACIÓN', NULL, NULL, 'SEGURIDAD_Y_SALUD_EN_EL_SECTOR_DE_LA_CONSTRUCCIÓN.pdf', 'pdf', 'OIT', '', 'JJJJ_(2)1.png', 'JJJJ_(2)1_thumb.png', 5, 1, 0, 0, '2017-03-21 12:04:17', 1, '2017-03-21 13:45:26', 1, '2017-03-21 13:45:26', '0000-00-00 00:00:00'),
(78, 'La Legislación Laboral en Bolivia', '<p><strong><span style="font-size:14px;">La Legislaci&oacute;n Laboral en Bolivia</span></strong></p>', '<p>La Legislaci&oacute;n Laboral en Bolivia</p>', 'INFORMACIÓN DE INTERÉS', NULL, NULL, '5__LA_NUEVA_LEGISLACION_LABORAL_EN_BOLIVIA.pdf', 'pdf', '', '', 'SSS-min.png', 'SSS-min_thumb.png', 4, 1, 0, 0, '2017-03-21 13:52:55', 1, '2017-03-21 13:53:22', 1, '2017-03-21 13:53:22', '0000-00-00 00:00:00'),
(76, 'La Seguridad y la Salud en el Sector de la Construcción', '<p><strong><span style="font-size:14px;">Gu&iacute;a breve de medidas de protecci&oacute;n</span></strong></p>\r\n\r\n<p><strong><span style="font-size:14px;">Convenio 167 de la OIT</span></strong></p>', '<p>Gu&iacute;a breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', 'TRÍPTICO INFORMATIVO', NULL, NULL, 'TRIPTICO_constructoras2.pdf', 'pdf', '', '', 'TR3_(2)-min4.png', 'TR3_(2)-min4_thumb.png', 5, 1, 0, 0, '2017-03-21 13:24:10', 1, '2017-03-21 13:43:10', 1, '2017-03-21 13:43:10', '0000-00-00 00:00:00'),
(77, 'El hostigamiento o acoso sexual', '<p><strong>&ldquo;Comportamiento en funci&oacute;n del sexo, de car&aacute;cter desagradable y ofensivo para la persona que lo sufre. Para que se trate de acoso sexual es necesaria la confluencia de ambos aspectos negativos: no deseado y ofensivo&rdquo;.</strong></p>\r\n\r\n<p><strong>Organizaci&oacute;n Internacional del Trabajo (OIT)</strong></p>', '<p style="text-align: justify;"><span style="font-size:14px;"><strong>&iquest;Qu&eacute; es el acoso sexual?</strong></span></p>\r\n\r\n<p style="text-align: justify;">El acoso sexual es una conducta no deseada de naturaleza sexual en el lugar de trabajo, que hace que la persona se sienta ofendida, humillada y/o intimidada. Es un t&eacute;rmino relativamente reciente que describe un problema antiguo.</p>\r\n\r\n<p style="text-align: justify;">Tanto la OIT como la CEDAW identifican el acoso sexual como una manifestaci&oacute;n de la discriminaci&oacute;n de g&eacute;nero y como una forma espec&iacute;fica de violencia contra las mujeres.</p>\r\n\r\n<p style="text-align: justify;">El acoso sexual es una violaci&oacute;n de los derechos fundamentales de las trabajadoras y los trabajadores, constituye un problema de salud y seguridad en el trabajo y una inaceptable situaci&oacute;n laboral.</p>', 'HOJA INFORMATIVA', NULL, NULL, 'El_hostigamiento_o_acoso_sexual.pdf', 'pdf', 'OIT', '', 'host-min2.png', 'host-min2_thumb.png', 3, 1, 0, 0, '2017-03-21 13:29:41', 1, '2017-03-21 13:34:05', 1, '2017-03-21 13:34:05', '0000-00-00 00:00:00'),
(75, 'Declaración de la OIT relativa a los principios y Derechos Fundamentales en el Trabajo y su seguimiento', '<p><strong><span style="font-size:16px;">Adoptada por la Conferencia Internacional del Trabajo en su octog&eacute;sima sexta reuni&oacute;n, Ginebra, 18 de junio de 1998<br />\r\n(Anexo revisado, 15 de junio de 2010)</span></strong></p>', '<p style="text-align: justify;">La Organizaci&oacute;n Internacional del Trabajo adopt&oacute; el 18 de junio de 1998, en Ginebra, una Declaraci&oacute;n de la OIT relativa a los principios y derechos fundamentales en el trabajo y su seguimiento.De esta manera, la OIT desea aportar una respuesta a los desaf&iacute;os planteados por la mundializaci&oacute;n de la econom&iacute;a, que han sido objeto de numerosos debates en su seno desde 1994.</p>\r\n\r\n<p style="text-align: justify;">Si bien la mundializaci&oacute;n de la econom&iacute;a es un factor de crecimiento econ&oacute;mico, y aun cuando este &uacute;ltimo es una condici&oacute;n esencial del progreso social, todo confirma que no se trata de una condici&oacute;n suficiente para asegurar dicho progreso. El crecimiento debe ir acompa&ntilde;ado, pues, de un m&iacute;nimo de reglas de funcionamiento social fundadas en valores comunes, en virtud de las cuales los propios interesados tengan la posibilidad de reivindicar una participaci&oacute;n justa en las riquezas que han contribuido a crear.</p>\r\n\r\n<p style="text-align: justify;">La Declaraci&oacute;n pretende conciliar la preocupaci&oacute;n por estimular los esfuerzos que todos los pa&iacute;ses dedican a lograr que el progreso social vaya a la par con el progreso de la econom&iacute;a, por una parte, con la de respetar la diversidad de situaciones, las posibilidades y las preferencias de cada pa&iacute;s, por la otra.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>', 'PUBLICACIÓN', NULL, NULL, 'DECLARACIÓN_DE_LA_OIT_RELATIVA_A_LOS_PRINCIPIOS_Y_DERECHOS_FUNDAMENTALES_EN_EL_TRABAJO1.pdf', 'pdf', '', '', 'derec5.png', 'derec5_thumb.png', 4, 1, 0, 0, '2017-03-21 13:18:44', 1, '2017-03-21 13:41:57', 1, '2017-03-21 13:41:57', '0000-00-00 00:00:00'),
(83, 'Decreto Supremo N° 2936: Reglamento de seguridad en la construcción', '<p>Entra en vigencia el Reglamento de seguridad en la construcci&oacute;n, trabajadores y empresas constructoras deben cumplir sus disposiciones.</p>', '<p>Entra en vigencia el reglamento de seguridad en la construcci&oacute;n, trabajadores y empresas constructoras deben cumplir sus disposiciones<br />\r\n<br />\r\nEl Ministerio de Trabajo, Empleo y Previsi&oacute;n Social transcurrido los 180 d&iacute;as de plazo que dispone el Decreto Supremo No. 2936, pone en vigencia el Reglamento de Seguridad en la Construcci&oacute;n que dispone las medidas de seguridad ocupacional que se deben implementar en las obras de construcci&oacute;n para evitar la ocurrencia de&nbsp;accidentes de trabajo y enfermedades ocupacionales.</p>', 'DECRETO SUPREMO N° 2936: REGLAMENTO DE SEGURIDAD EN LA CONSTRUCCIÓN', NULL, NULL, 'DECRETO_SUPREMO_2936_BOLIVIA1.pdf', 'pdf', 'OIT', 'https://www.ilo.org/dyn/natlex/docs/ELECTRONIC/103224/125227/F-1939980153/DECRETO%20SUPREMO%202936%20BOLIVIA.pdf', 'Untitled_(2).png', 'Untitled_(2)_thumb.png', 5, 1, 0, 0, '2017-04-06 10:18:48', 1, '2017-04-06 14:05:09', 1, '2017-04-06 14:05:09', '0000-00-00 00:00:00'),
(84, 'Bolivia LEY No 545 del 14 de Julio de 2014', '<p><strong><span style="font-size:14px;">Ratifica el Convenio N&ordm; 167 &ldquo;Convenio Sobre Seguridad y Salud en la Construcci&oacute;n&rdquo;, de la Organizaci&oacute;n Internacional del Trabajo &ndash; OlT, adoptado en la 75 reuni&oacute;n de la Conferencia General.</span></strong></p>', '<p><b>Tipo de la norma:</b>&nbsp;<a href="http://www.derechoteca.com/legislacion-bolivia/ley/" rel="tag">LEY</a><br />\r\n<b>Publicado en Gaceta Oficial de Bolivia:</b>&nbsp;N&deg;&nbsp;<a href="http://www.derechoteca.com/gacetabolivia/gaceta-edicion-0662-del-15-julio-2014">0662</a><br />\r\n<b>Fecha de gaceta:</b>&nbsp;15 de Julio de 2014<br />\r\n<b>Numero de la norma:</b>&nbsp;545<br />\r\n<b>Fecha de la norma:</b>&nbsp;14 de Julio de 2014<br />\r\n<b>Pais:</b>&nbsp;Bolivia</p>', 'LEY No 145 QUE RATIFICA EL CONVENIO 167 DE LA OIT', NULL, NULL, 'Ley_545.pdf', 'pdf', '', '', 'ss1.png', 'ss1_thumb.png', 5, 1, 0, 0, '2017-04-06 10:22:12', 1, '2017-04-06 14:06:31', 1, '2017-04-06 14:06:31', '0000-00-00 00:00:00'),
(85, 'Convenio 167 de la OIT', '<h1 id="page-title"><strong><span style="font-size:14px;">C167 - Convenio sobre seguridad y salud en la construcci&oacute;n, 1988 (n&uacute;m.&nbsp;167)</span></strong></h1>\r\n\r\n<h2><strong><span style="font-size:14px;">Convenio sobre seguridad y salud en la construcci&oacute;n (Entrada en vigor: 11 enero 1991)Adopci&oacute;n: Ginebra, 75&ordf; reuni&oacute;n CIT (20 junio 1988) - Estatus: Instrumento actualizado (Convenios T&eacute;cnicos).Pr&oacute;ximo per&iacute;odo en que la denuncia es posible: 11 enero 2021 - 11 enero 2022</span></strong></h2>', '<h2>Pre&aacute;mbulo</h2>\r\n\r\n<p>La Conferencia General de la Organizaci&oacute;n Internacional del Trabajo:</p>\r\n\r\n<p>Convocada en Ginebra por el Consejo de Administraci&oacute;n de la Oficina Internacional del Trabajo, y congregada en dicha ciudad el 1 junio 1988 en su septuag&eacute;sima quinta reuni&oacute;n;</p>\r\n\r\n<p>Recordando los convenios y recomendaciones internacionales del trabajo pertinentes, y en particular el Convenio y la Recomendaci&oacute;n sobre las prescripciones de seguridad (edificaci&oacute;n), 1937; la Recomendaci&oacute;n sobre la colaboraci&oacute;n para prevenir los accidentes (edificaci&oacute;n), 1937; el Convenio y la Recomendaci&oacute;n sobre la protecci&oacute;n contra las radiaciones, 1960; el Convenio y la Recomendaci&oacute;n sobre la protecci&oacute;n de la maquinaria, 1963; el Convenio y la Recomendaci&oacute;n sobre el peso m&aacute;ximo, 1967; el Convenio y la Recomendaci&oacute;n sobre el c&aacute;ncer profesional, 1974; el Convenio y la Recomendaci&oacute;n sobre el medio ambiente de trabajo (contaminaci&oacute;n del aire, ruido y vibraciones), 1977; el Convenio y la Recomendaci&oacute;n sobre seguridad y salud de los trabajadores, 1981; el Convenio y la Recomendaci&oacute;n sobre los servicios de salud en el trabajo 1985; el Convenio y la Recomendaci&oacute;n sobre el asbesto, 1986, y la lista de enfermedades profesionales, en su versi&oacute;n modificada de 1980, anexa al Convenio sobre las prestaciones en caso de accidentes del trabajo, 1964;</p>\r\n\r\n<p>Despu&eacute;s de haber decidido adoptar diversas proposiciones relativas a la seguridad y la salud en la construcci&oacute;n, que constituye el cuarto punto del orden del d&iacute;a de la reuni&oacute;n, y</p>\r\n\r\n<p>Despu&eacute;s de haber decidido que dichas proposiciones revistan la forma de un convenio internacional que revise el Convenio sobre las prescripciones de seguridad (edificaci&oacute;n), 1937,</p>\r\n\r\n<p>adopta, con fecha veinte de junio de mil novecientos ochenta y ocho, el presente Convenio, que podr&aacute; ser citado como el Convenio sobre seguridad y salud en la construcci&oacute;n, 1988:</p>', 'INFORMACIÓN DE INTERÉS', NULL, NULL, 'CONVENIO_167.pdf', 'pdf', 'OIT', 'http://www.ilo.org/dyn/normlex/es/f?p=NORMLEXPUB:12100:0::NO::P12100_ILO_CODE:C167', 'conv1.png', 'conv1_thumb.png', 5, 1, 0, 0, '2017-04-06 10:24:50', 1, '2017-04-06 10:24:50', NULL, '2017-04-06 10:24:50', '0000-00-00 00:00:00'),
(86, 'Celebrando el “Día de la constructora Boliviana”  se realiza la entrega de certificados de formación técnica a 93 mujeres constructoras de las ciudades de La Paz y El alto', '<p><strong><span style="font-size:14px;">El 26 de abril se celebra en Bolivia el &ldquo;D&iacute;a de la Constructora Boliviana&rdquo;, fecha propicia para la entrega de certificados a 93 mujeres trabajadoras de la construcci&oacute;n que culminaron exitosamente diversos cursos de capacitaci&oacute;n t&eacute;cnica en el rubro</span></strong></p>', '<p>El evento conmemorativo por el &ldquo;D&iacute;a de la Constructora Boliviana&rdquo; fue organizado por la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) en coordinaci&oacute;n con la ONG &ldquo;Red H&aacute;bitat&rdquo;&nbsp; y la Organizaci&oacute;n Internacional del Trabajo (OIT) y fue llevado a cabo el d&iacute;a 26 de abril de 2017 en la ciudad de La Paz. En el evento se realiz&oacute; la entrega de certificados a 93 mujeres que culminaron los cursos de capacitaci&oacute;n t&eacute;cnica en construcci&oacute;n (durante las gestiones 2016 y 2017) promovidos por la Red H&aacute;bitat en el marco del Proyecto &ldquo;Mujeres en la construcci&oacute;n hacia su empoderamiento econ&oacute;mico y pol&iacute;tico&rdquo; con el apoyo de ONU Mujeres.</p>\r\n\r\n<p>El acto cont&oacute; con la presencia de representantes de diversas organizaciones, como de los Gobiernos Aut&oacute;nomos Municipales de La Paz y de El Alto (principalmente a trav&eacute;s de sus Secretar&iacute;as de Infraestructura), de la C&aacute;mara Departamental de la Construcci&oacute;n (CADECO), del Ministerio de Trabajo, Empleo y Previsi&oacute;n Social, de la Organizaci&oacute;n Internacional del Trabajo (OIT), de la Red Habitat, de ONU Mujeres y de la ASOMUC adem&aacute;s de mujeres constructoras y p&uacute;blico en general.</p>\r\n\r\n<p>En las intervenciones, los actores coincidieron acerca de la importancia de dar continuidad al &nbsp;apoyo para el fortalecimiento t&eacute;cnico y por tanto competitivo de las mujeres que trabajan en un rubro creciente y mayormente abarcado por hombres.</p>\r\n\r\n<p>Asimismo, se destac&oacute; la importancia de continuar apoyando a las mujeres constructoras hacia la equidad de g&eacute;nero e igualdad de condiciones laborales dentro de este sector en Bolivia. Siendo que uno de los aspectos sobresalientes en este sentido es el de la desigualdad de remuneraci&oacute;n entre hombres y mujeres trabajadores dentro de esta industria. Sobre este &uacute;ltimo punto, la OIT en Bolivia destac&oacute; el trabajo que vienen realizando desde el a&ntilde;o 2016 en el marco del Proyecto <em>&ldquo;Construyendo Igualdad&rdquo; </em>que busca mejorar las condiciones laborales de las mujeres constructoras bolivianas luchando contra formas inaceptables de trabajo. Este proyecto es &nbsp;impulsado por una mesa multipartita conformada por los actores m&aacute;s importantes del sector, como ser la Central Obrera Boliviana (COB), la Confederaci&oacute;n de Empresarios Privados de Bolivia (CEPB), los Gobiernos Aut&oacute;nomos Municipales de La Paz y El Alto, la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB), la Red H&aacute;bitat y la ASOMUC.</p>\r\n\r\n<p>Actualmente, estos actores se encuentran revisando una propuesta de Pol&iacute;tica elaborada por la OIT para promover la igualdad de oportunidades y remuneraci&oacute;n a nivel nacional en el sector de la construcci&oacute;n y, &nbsp;una vez se cuente con las observaciones y aportes de todos los actores que conforman la mesa multipartita, la propuesta ser&aacute; presentada a las autoridades nacionales pertinentes para su consideraci&oacute;n.</p>\r\n\r\n<p>Seg&uacute;n Rodrigo Mogrovejo, Coordinador Nacional de Proyectos de la OIT en Bolivia, esta pol&iacute;tica ser&aacute; el motor que impulse la lucha por la igualdad de condiciones laborales dentro del sector de la construcci&oacute;n en Bolivia.</p>', 'NOTICIA', '', '', NULL, 'texto', 'OIT', '', 'F-min.jpg', 'F-min_thumb.jpg', 1, 1, 0, 0, '2017-05-10 08:16:55', 1, '2017-05-10 08:16:55', NULL, '2017-05-10 08:16:55', '0000-00-00 00:00:00'),
(87, 'Resolución Ministerial 387-17 para aprobación de Normas Técnicas de Seguridad en la Construcción', '<p><strong><span style="font-size:14px;">Resoluci&oacute;n Ministerial 387-17 para aprobaci&oacute;n de Normas T&eacute;cnicas de Seguridad en la Construcci&oacute;n</span></strong></p>', '<p>NORMA T&Eacute;CNICA NTS 001/17 ILUMINACI&Oacute;N</p>\r\n\r\n<p>NORMA T&Eacute;CNICA NTS 002/17 RUIDO</p>\r\n\r\n<p>NORMA T&Eacute;CNICA NTS 003/17 TRABAJOS EN ALTURA</p>\r\n\r\n<p>NORMA T&Eacute;CNICA NTS 004/17 MANIPULACI&Oacute;N DE ESCALERAS</p>\r\n\r\n<p>VNORMA T&Eacute;CNICA NTS 005/17 ANDAMIOS</p>', 'Resolución Ministerial 387-17 para aprobación de Normas Técnicas de Seguridad en la Construcción', NULL, NULL, 'R_M_387.pdf', 'pdf', '', '', 'rm-min_(1).png', 'rm-min_(1)_thumb.png', 5, 1, 0, 0, '2017-05-29 09:16:10', 1, '2017-05-29 09:16:59', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Mujeres constructoras de Bolivia se capacitaron en temas de gestión empresarial', '<p><strong><span style="font-size:14px;">A trav&eacute;s de la metodolog&iacute;a IMESUNCO de la OIT, las participantes aprendieron herramientas b&aacute;sicas para iniciar un nuevo emprendimiento empresarial.</span></strong></p>', '<p style="text-align: justify;">La Paz &ndash; Un total de 56 mujeres constructoras bolivianas se capacitaron en la metodolog&iacute;a IMESUNCO &ldquo;Inicie y Mejore su Negocio de Construcci&oacute;n&rdquo; de la Organizaci&oacute;n Internacional del Trabajo (OIT). La actividad llevada a cabo en las instalaciones del Gobierno Aut&oacute;nomo Municipal de La Paz, fue organizada por la Oficina de la OIT en Bolivia en coordinaci&oacute;n con la Secretar&iacute;a de Desarrollo Econ&oacute;mico del municipio pace&ntilde;o.<br />\r\n<br />\r\nLa realizaci&oacute;n del curso permiti&oacute; que las participantes aprendan herramientas b&aacute;sicas para iniciar un nuevo emprendimiento empresarial. El contenido abarc&oacute; desde la idea inicial de negocio, la organizaci&oacute;n de una empresa, el manejo del mercado, la determinaci&oacute;n de costos de productos o servicios hasta la identificaci&oacute;n de las fuentes de financiamiento m&aacute;s id&oacute;neas para sus necesidades.</p>\r\n\r\n<p style="text-align: justify;">Durante la actividad, Rodrigo Mogrovejo, Coordinador Nacional de la OIT en Bolivia destac&oacute; que el recurso m&aacute;s importante en el pa&iacute;s es el recurso humano, por lo tanto &ldquo;se debe promover el emprendimiento entre las mujeres del rubro de la construcci&oacute;n, para mejorar su calidad de vida y aumentar su nivel de ingresos, pues apostar por las mujeres es apostar por el desarrollo de Bolivia&rdquo;.<br />\r\n<br />\r\n&ldquo;Ahora que cuentan con los conceptos b&aacute;sicos de su idea de negocio, las mujeres tendr&aacute;n la oportunidad de presentarse a la incubadora de empresas promocionada por la Secretar&iacute;a de Desarrollo Econ&oacute;mico. Este proceso de acompa&ntilde;amiento est&aacute; compuesto por capacitaci&oacute;n y orientaci&oacute;n para validar su idea de negocio&rdquo;, explic&oacute; Mogrovejo.<br />\r\n<br />\r\nLas mujeres ser&aacute;n asistidas t&eacute;cnicamente por profesionales de la Secretar&iacute;a de Desarrollo Econ&oacute;mico para realizar un estudio de mercado y visitar a potenciales clientes, todo ello con el objetivo de hacer realidad la idea de negocio trabajada durante el taller IMESUNCO.<br />\r\n<br />\r\nDebido al &eacute;xito del curso, el Coordinador Nacional de la OIT en Bolivia expres&oacute; a los asistentes la intenci&oacute;n de continuar la formaci&oacute;n de las mujeres, esta vez con un curso sobre Seguridad y Salud en el Trabajo (SST).&nbsp;<br />\r\n<br />\r\nAl respecto, Nevy Chac&oacute;n, representante del Sindicato de Mujeres de la CSTCB, expres&oacute; su apoyo destacando que &ldquo;la seguridad para las mujeres constructoras es indispensable, pues a falta de conocimientos muchas de ellas se exponen diariamente a riesgos y accidentes en sus fuentes laborales&rdquo;.&nbsp;<br />\r\n<br />\r\nEntre las 56 mujeres certificadas se encuentran constructoras independientes y dependientes, muchas de ellas forman parte de la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) y del Sindicato de Mujeres, organizaci&oacute;n afilada a la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB).</p>', 'NOTICIA', '', '', '', 'texto', 'OIT', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_556874/lang--es/index.htm', 'Untitled-min.png', 'Untitled-min_thumb.png', 1, 1, 0, 0, '2017-06-26 14:15:09', 1, '2017-06-26 14:15:34', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Normas de condiciones mínimas de niveles de iluminación y de exposición de ruido en los lugares de trabajo', '<p>NTS-001/17-ILUMINACI&Oacute;N</p>\r\n\r\n<p>NTS-002/17-RUIDO</p>', '<p>NORMA DE CONDICIONES M&Iacute;NIMAS DE NIVELES DE ILUMINACI&Oacute;N EN<br />\r\nLOS LUGARES DE TRABAJO</p>\r\n\r\n<p>NORMA DE CONDICIONES M&Iacute;NIMAS DE NIVELES DE EXPOSICI&Oacute;N DE RUIDO<br />\r\nEN LOS LUGARES DE TRABAJO</p>', 'NORMAS DE CONDICIONES MÍNIMAS DE NIVELES DE ILUMINACIÓN Y DE EXPOSICIÓN DE RUIDO EN LOS LUGARES DE TRABAJO', '', '', '', 'pdf', 'Ministerio de Trabajo, Empleo y Previsión Social', '', '1+.png', '1+_thumb.png', 5, 1, 0, 0, '2017-06-09 12:45:08', 1, '2017-06-09 12:56:33', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Curso  de  Fortalecimiento en Derechos Humanos y Empoderamiento Político (DEL 5 AL  23 DE JUNIO DE  2017)', '<p>Del 5 al 23 de junio/2017, 23 mujeres y 1 var&oacute;n participaron y concluyeron el &ldquo;Curso de Fortalecimiento en Derechos Humanos y Empoderamiento Pol&iacute;tico&rdquo;, ejecutado en coordinaci&oacute;n con la Escuela de Gestores Municipales del GAMLP, en el marco del proyecto &ldquo;Mujeres en la construcci&oacute;n, hacia su empoderamiento pol&iacute;tico y econ&oacute;mico&rdquo; apoyado por el Fondo para la Igualdad de G&eacute;nero/ ONU mujeres.</p>', '<p>El curso cont&oacute; con la participaci&oacute;n de facilitadoras/es invitados de instituciones como: Colectivo Cabildeo, Comunidad de Derechos Humanos, Comit&eacute; impulsor de la Agenda Legislativa y pol&iacute;tica de las Mujeres, REMTE, CEDLA, Cat&oacute;licas por el Derecho a Decidir y personal t&eacute;cnico de Red H&aacute;bitat.</p>\r\n\r\n<p>El curso conto con 5 m&oacute;dulos de capacitaci&oacute;n: Modulo I. Contexto hist&oacute;rico boliviano. El nacimiento del Estado Plurinacional de Bolivia y la Nueva Constituci&oacute;n Pol&iacute;tica del Estado CPE. M&oacute;dulo II. Los derechos de las mujeres en la normativa internacional y nacional y los avances para su realizaci&oacute;n. M&oacute;dulo III. Derechos econ&oacute;micos de las Mujeres. Las mujeres en la construcci&oacute;n en Bolivia. M&oacute;dulo IV. Fortalecimiento de autoestima, empoderamiento y convivencia. M&oacute;dulo V. Incidencia pol&iacute;tica y comunicaci&oacute;n que incluyo&nbsp; un taller de vocer&iacute;a de dos d&iacute;as con el objetivo de preparar a las participantes para entrevistas en medios de comunicaci&oacute;n.</p>\r\n\r\n<p>Las participantes evaluaron satisfactoriamente este curso orientado a lograr su empoderamiento pol&iacute;tico y econ&oacute;mico&nbsp; y la construcci&oacute;n de liderazgos para la lucha de sus derechos como mujeres trabajadoras en el sector de la construcci&oacute;n.</p>', 'NOTICIA', '', '', '', 'texto', 'RED HABITAT', '', 'Curso-rh-2017.png', 'Curso-rh-2017_thumb.png', 1, 1, 3, 0, '2017-06-29 11:25:37', 28, '2017-07-10 09:25:47', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Normas de condiciones mínimas para realizar trabajos en altura y norma de manipulación de escaleras', '<p>NTS-003/17-TRABAJOS EN ALTURA</p>\r\n\r\n<p>NTS-004/17-MANIPULACI&Oacute;N DE ESCALERAS</p>', '<p>NORMA DE CONDICIONES M&Iacute;NIMAS PARA REALIZAR TRABAJOS EN<br />\r\nALTURA</p>\r\n\r\n<p>NORMA DE MANIPULACI&Oacute;N DE ESCALERAS</p>', 'NORMAS DE CONDICIONES MÍNIMAS PARA REALIZAR TRABAJOS EN ALTURA Y NORMA DE MANIPULACIÓN DE ESCALERAS', '', '', '', 'pdf', 'Ministerio de Trabajo, Empleo y Previsión Social', '', '2.png', '2_thumb.png', 5, 1, 0, 0, '2017-06-09 12:48:51', 1, '2017-06-09 12:49:30', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Normas para andamios y trabajos de demolición', '<p>NTS-005/17- ANDAMIOS</p>\r\n\r\n<p>NTS-006/17-TRABAJOS DE DEMOLICI&Oacute;N</p>', '<p>ANDAMIOS</p>\r\n\r\n<p>TRABAJOS DE DEMOLICI&Oacute;N</p>', 'NORMAS PARA ANDAMIOS Y TRABAJOS DE DEMOLICIÓN', '', '', 'NTS_005_Andamios_y_NTS_006_Trabajos_de_Demolición.pdf', 'pdf', 'Ministerio de Trabajo, Empleo y Previsión Social', '', '3.png', '3_thumb.png', 5, 1, 0, 0, '2017-06-09 12:52:12', 1, '2017-06-09 12:52:20', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Normas de condiciones mínimas para realizar trabajos de excavación y trabajos en espacios confinados', '<p>NTS-007/17-TRABAJOS DE EXCAVACI&Oacute;N</p>\r\n\r\n<p>NTS-008/17-TRABAJOS EN ESPACIOS CONFINADOS</p>', '<p>NORMA DE CONDICIONES M&Iacute;NIMAS PARA REALIZAR TRABAJOS DE<br />\r\nEXCAVACI&Oacute;N</p>\r\n\r\n<p>NORMA DE CONDICIONES M&Iacute;NIMAS PARA REALIZAR TRABAJOS EN<br />\r\nESPACIOS CONFINADOS</p>', 'NORMAS DE CONDICIONES MÍNIMAS PARA REALIZAR TRABAJOS DE EXCAVACIÓN Y TRABAJOS EN ESPACIOS CONFINADOS', '', '', 'NTS_007_Trabajos_de_Excavación_y_NTS_008_Trabajos_en_espacios_confinados.pdf', 'pdf', 'Ministerio de Trabajo, Empleo y Previsión Social', '', '4.png', '4_thumb.png', 5, 1, 0, 0, '2017-06-09 12:55:04', 1, '2017-06-09 12:55:10', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'La OIT y el Gobierno Municipal de La Paz suman fuerzas en beneficio de la seguridad y salud para las mujeres trabajadoras de la construcción', '<p><strong><span style="font-size:14px;">&ldquo;El desarrollo de un pa&iacute;s no es posible si no va acompa&ntilde;ado del pleno desarrollo de la mujer&rdquo;, se&ntilde;al&oacute; el Director de la Oficina de la OIT para los Pa&iacute;ses Andinos durante la culminaci&oacute;n del proceso de formaci&oacute;n.</span></strong></p>', '<p style="text-align: justify;">Desde el a&ntilde;o 2016 la OIT en Bolivia viene implementando acciones para la dignificaci&oacute;n del trabajo e inclusi&oacute;n de la mujer en el sector de la construcci&oacute;n con un entorno laboral&nbsp; digno y seguro. Este apoyo se realiza con financiamiento de la Cooperaci&oacute;n Sueca y la participaci&oacute;n de diversos actores que conforman una mesa multipartita, entre ellos se encuentran organizaciones de mujeres trabajadoras del sector, la C&aacute;mara Boliviana de la Construcci&oacute;n,&nbsp; los Gobiernos Municipales de La Paz y de El Alto y la ONG Red Habitat.</p>\r\n\r\n<p style="text-align: justify;">En este sentido, la OIT reconoce que la importancia de la seguridad y la salud en el trabajo debe ser un tema prioritario para el sector, como se&ntilde;ala el Coordinador Nacional Rodrigo Mogrovejo: &ldquo;La salud y la seguridad de los trabajadores deben ser de fundamental inter&eacute;s para todos&rdquo;. Bolivia ratific&oacute; el Convenio 167 de la OIT sobre la seguridad y salud en el sector de la construcci&oacute;n el a&ntilde;o 2014 y desde entonces a nivel gubernamental se ha puesto en vigencia normativa que debe ser promovida tanto con empleadores como con trabajadores.</p>\r\n\r\n<p style="text-align: justify;">Por todo lo se&ntilde;alado, en junio de 2017 se llev&oacute; a cabo un proceso de formaci&oacute;n en salud y seguridad en la construcci&oacute;n adaptado para las mujeres que trabajan en el sector y a otras que pretenden incursionar en el mismo. Este proceso abarc&oacute; la tem&aacute;tica de manera te&oacute;rica y pr&aacute;ctica, contando con formaci&oacute;n en aula y visitas a obras de construcci&oacute;n modelo para mostrar ejemplos de buenas pr&aacute;cticas a las participantes. El proceso concluy&oacute; el d&iacute;a 5 de julio con la entrega formal de la certificaci&oacute;n, en la cual se cont&oacute; con la presencia del Director &nbsp;de la Oficina de la OIT Para los Pa&iacute;ses Andinos Philippe Vanhuygem, el Coordinador Nacional Rodrigo Mogrovejo, la esposa del Alcalde Luis Revilla, Maricruz Rivera, el Secretario Municipal de Desarrollo Econ&oacute;mico Sergio Siles S&aacute;nchez, la Directora de la Secretaria Municipal de Desarrollo Econ&oacute;mico Cecilia De Bonadona y la Secretaria Municipal de Desarrollo Social Rosmery Acarapi.</p>\r\n\r\n<p style="text-align: justify;">Durante el acto de entrega, todos los representantes destacaron el important&iacute;simo papel que desempe&ntilde;a la mujer en torno al desarrollo econ&oacute;mico y social de un pa&iacute;s, por lo cual felicitaron la labor de las trabajadoras y su inter&eacute;s en mejorar sus condiciones laborales, como se&ntilde;al&oacute; el Director de la OIT Philippe Vanhuynegem &ldquo;El desarrollo de un pa&iacute;s no es posible si no va acompa&ntilde;ado del pleno desarrollo de la mujer&rdquo;. En el evento las participantes beneficiadas por el proceso agradecieron la atenci&oacute;n que se brinda a su sector y se&ntilde;alaron que su principal objetivo al salir a trabajar es el de volver a sus hogares sanas y salvas, teniendo en cuenta que las medidas de seguridad parten del autocuidado&nbsp; y la responsabilidad que debe tener cada trabajadora al desempe&ntilde;ar sus labores. El apoyo de la OIT continuar&aacute; en este sentido para fortalecer las capacidades de este sector.</p>', 'NOTICIA', '', '', '', 'texto', 'OIT', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_562286/lang--es/index.htm', 'Untitled-min_(1).png', 'Untitled-min_(1)_thumb.png', 1, 1, 0, 0, '2017-07-10 08:15:26', 1, '2017-07-10 08:15:39', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'La OIT y los principales actores del sector de la construcción en Bolivia lanzan herramienta web para contratación de mujeres en este rubro', '<p><span style="font-size:14px;"><strong>Este lanzamiento constituye un primer gran paso hacia la inclusi&oacute;n de la mujer en el sector de la construcci&oacute;n, dijo el Coordinador de la OIT en Bolivia, Rodrigo Mogrovejo.</strong></span></p>', '<p style="text-align: justify;">La Paz &ndash; La Oficina de la Organizaci&oacute;n Internacional del Trabajo (OIT) en Bolivia realiz&oacute; pasado 18 de julio el lanzamiento de la plataforma virtual&nbsp;<a href="http://maestrasconstructoras.org/si_maestras/" target="_blank">www.maestrasconstructoras.org&nbsp;</a>&nbsp;a fin de impulsar la contrataci&oacute;n de mujeres en diversas especialidades en este rubro. Esta plataforma ser&aacute; gestionada por la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO) y contendr&aacute; una base de datos de trabajadoras certificadas.<br />\r\n<br />\r\nRodrigo Mogrovejo, Coordinador Nacional de la Oficina de la OIT, explic&oacute; que esta base de datos ser&aacute; actualizada por diversos centros de formaci&oacute;n t&eacute;cnica que certifican a las mujeres en diferentes especialidades.<br />\r\n<br />\r\n&ldquo;Este lanzamiento constituye un primer gran paso hacia la inclusi&oacute;n de la mujer en el sector de la construcci&oacute;n y su &eacute;xito depender&aacute; de que todos los actores de la mesa multipartita apoyen su difusi&oacute;n, adem&aacute;s de que las mujeres inscritas en la base de datos actualicen sus datos de manera regular y responsable&rdquo;, agreg&oacute; Mogrovejo.</p>\r\n\r\n<p style="text-align: justify;">Desde 2016, la OIT en Bolivia, con financiamiento de la Cooperaci&oacute;n Sueca, ha iniciado distintas acciones para la dignificaci&oacute;n del trabajo de las mujeres en el sector de la construcci&oacute;n. En este sentido, uno de los principales objetivos de este apoyo consiste en promover herramientas para la emancipaci&oacute;n econ&oacute;mica de las mujeres que trabajan en el sector.<br />\r\n<br />\r\nEn el evento tambi&eacute;n se realiz&oacute; la presentaci&oacute;n de una propuesta de Ley para la igualdad de remuneraci&oacute;n en el sector, la misma que fue construida con aportes de los propios actores que constituyen la mesa multipartita y que a&uacute;n continua en proceso de elaboraci&oacute;n.&nbsp;<br />\r\n<br />\r\nLos participantes del evento, y miembros de la mesa multipartita, fueron representantes de la C&aacute;mara Boliviana de la Construcci&oacute;n, la Central Obrera Boliviana (COB), la Federaci&oacute;n Sindical de Trabajadores Obreros de la Construcci&oacute;n, la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC), los Gobiernos Municipales de La Paz y de El Alto y la ONG Red H&aacute;bitat.&nbsp;<br />\r\n<br />\r\nEl evento finaliz&oacute; con el agradecimiento de las representantes de la ASOMUC quienes agradecieron todo el apoyo que la OIT les brinda y reconocieron la gran utilidad que tendr&aacute; la plataforma para poder incrementar sus oportunidades laborales.</p>', 'NOTICIA', '', '', '', 'texto', 'OIT', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_565549/lang--es/index.htm', 'Untitled-min_(2).png', 'Untitled-min_(2)_thumb.png', 1, 1, 0, 0, '2017-07-26 10:27:46', 1, '2017-07-26 10:27:59', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Capacitación de las mujeres indígenas en el sector de la construcción en Bolivia', '<h1><strong><span style="font-size:14px;">Video documental sobre la capacitaci&oacute;n de las mujeres ind&iacute;genas en el sector de la construcci&oacute;n en Bolivia</span></strong></h1>', '<p style="text-align: justify;">Los pueblos ind&iacute;genas constituyen el 5% de la poblaci&oacute;n mundial, pero el 15% de la poblaci&oacute;n pobre del planeta. Como consecuencia de su exclusi&oacute;n y discriminaci&oacute;n, las mujeres ind&iacute;genas son a menudo las m&aacute;s pobres entre los pobres. Tienen m&aacute;s dificultades para lograr un empleo. En Bolivia, la OIT y sus asociados trabajan para promover los derechos de las mujeres ind&iacute;genas, fomentar su autonom&iacute;a econ&oacute;mica y ayudarles a alcanzar la justicia social.</p>', 'VIDEO', 'https://www.youtube.com/watch?v=abz8qrDTVj0', '', '', 'video', 'OIT', 'http://www.ilo.org/global/about-the-ilo/multimedia/video/video-news-releases/WCMS_568670/lang--es/index.htm', 'https://img.youtube.com/vi/abz8qrDTVj0/0.jpg', 'noticia_default_thumb.jpg', 3, 1, 0, 0, '2017-08-09 09:09:54', 1, '2017-08-09 09:10:03', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Material de formación sobre evaluación y gestión de riesgos en el lugar de trabajo para pequeñas y medianas empresas', '<p style="text-align: justify;"><strong><span style="font-size:14px;">El presente material de formaci&oacute;n sobre evaluaci&oacute;n y gesti&oacute;n de riesgos en el lugar de trabajo pretende fundamentalmente capacitar a propietarios y gestores de peque&ntilde;as y medianas empresas (PYME) para adoptar medidas destinadas a mejorar las condiciones de seguridad y salud en sus lugares de trabajo.</span></strong></p>', '<p style="text-align: justify;">La evaluaci&oacute;n de riesgos constituye un instrumento fundamental en la gesti&oacute;n de la seguridad y la salud en el trabajo en una empresa y proporciona a empleadores y empresas un medio que les permite ser proactivos, identificar los peligros y adoptar medidas para solucionar los problemas antes de que estos causen un accidente o enfermedad. Tal como demuestra este conjunto de medidas, desarrollar soluciones no resulta tan dif&iacute;cil, puesto que estas se basan en el &iacute;ntimo conocimiento que propietarios y trabajadores tienen de su propio lugar de trabajo. El objetivo consiste en ayudar a empleadores y trabajadores a encontrar soluciones pr&aacute;cticas y eficaces en funci&oacute;n de los costos para controlar los riesgos en el lugar de trabajo para el beneficio tanto de los trabajadores como de los propietarios de empresas.<br />\r\n<br />\r\nEl material de formaci&oacute;n consta de tres m&oacute;dulos. El m&oacute;dulo principal es una herramienta de autoayuda que abarca los cinco pasos que componen el proceso de evaluaci&oacute;n de riesgos. Infundir&aacute; confianza y facultar&aacute; a propietarios y trabajadores de las PYME para llevar a cabo sus propias evaluaciones de riesgos. El segundo m&oacute;dulo contiene un esquema de gu&iacute;a pr&aacute;ctica del instructor, elaborada para promover los cursos de formaci&oacute;n sobre evaluaci&oacute;n de riesgos y ayudar a los instructores a planificar programas de evaluaci&oacute;n de riesgos. Incluye hojas de actividades destinadas a guiar a los participantes en el proceso de evaluaci&oacute;n de riesgos. Por &uacute;ltimo, el tercer m&oacute;dulo contiene ejemplos de evaluaciones de riesgos en determinados sectores profesionales donde abundan las PYME.<br />\r\n<br />\r\nEl presente documento se ha elaborado en el marco del proyecto &laquo;Linking safety and health at work to sustainable economic development: From theory and platitudes to conviction and action&raquo; (2009&ndash;2012), financiado por el Agencia Sueca de Cooperaci&oacute;n Internacional para el Desarrollo (Asdi).</p>', 'INFORMACIÓN DE INTERÉS', '', '', 'wcms_232852.pdf', 'pdf', 'OIT', 'http://www.ilo.org/wcmsp5/groups/public/---ed_protect/---protrav/---safework/documents/instructionalmaterial/wcms_232852.pdf', 'Untitled-min_(2)1.png', 'Untitled-min_(2)1_thumb.png', 5, 1, 0, 0, '2017-08-11 11:29:05', 1, '2017-08-11 11:29:17', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` (`id`, `titulo`, `resumen`, `contenido`, `rotulo`, `url_video`, `url_audio`, `doc_pdf`, `tipo_contenido`, `fuente`, `url`, `imagen`, `thumb`, `id_grupo`, `estado`, `id_centro`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(117, 'Una Guía de 5 pasos para empleadores, trabajadores y sus representantes sobre la realización de evaluaciones de riesgos en el lugar de trabajo', '<p style="text-align: justify;"><strong><span style="font-size:14px;">La presente gu&iacute;a tiene como objetivo ayudar a los empleadores, trabajadores y sus representantes en la evaluaci&oacute;n de los riesgos de seguridad y salud en el lugar de trabajo.</span></strong></p>', '<p style="text-align: justify;">&iquest;C&oacute;mo llevar a cabo la evaluaci&oacute;n de riesgos en el lugar de trabajo? Siga los cinco pasos de este folleto:<br />\r\nPaso 1: Identificar los peligros;<br />\r\nPaso 2: Identificar qui&eacute;n puede sufrir los da&ntilde;os y de qu&eacute; manera;<br />\r\nPaso 3: Evaluar el riesgo: Identificar y decidir las medidas de control de riesgos en materia de seguridad y salud;<br />\r\nPaso 4: Dejar constancia de qui&eacute;n es responsable de la puesta en marcha de cada medida de control y en qu&eacute; plazos;<br />\r\nPaso 5: Registrar los resultados, realizar el seguimiento y revisar la evaluaci&oacute;n de riesgos, y actualizarla cuando sea necesario.<br />\r\n<br />\r\nLa plantilla que se ofrece como ejemplo en esta gu&iacute;a ha sido dise&ntilde;ada para mostrar los pasos l&oacute;gicos en una evaluaci&oacute;n de riesgos y tambi&eacute;n resulta &uacute;til para registrar los resultados en un formato sencillo y f&aacute;cilmente accesible.<br />\r\n<br />\r\nLa evaluaci&oacute;n de riesgos en el lugar de trabajo es uno de los instrumentos fundamentales para mejorar las condiciones de seguridad y salud en el trabajo. Por lo tanto, desempe&ntilde;a un papel importante en la protecci&oacute;n de los trabajadores y las empresas, y al mismo tiempo, en el cumplimiento de la legislaci&oacute;n en varios pa&iacute;ses. Ayuda a que las personas se centren en los riesgos que cuentan realmente en el lugar de trabajo, aquellos que potencialmente pueden crear da&ntilde;os reales.<br />\r\n<br />\r\nUna evaluaci&oacute;n de riesgos en el lugar de trabajo realizada de manera correcta contribuir&aacute; a proteger a los trabajadores mediante la eliminaci&oacute;n o reducci&oacute;n de los peligros y riesgos relacionados con el trabajo. Como consecuencia, deber&iacute;a tambi&eacute;n beneficiar a las empresas gracias a una mejor organizaci&oacute;n de los m&eacute;todos de trabajo y a su vez tendr&iacute;a el potencial de incrementar la productividad.<br />\r\n<br />\r\nLa metodolog&iacute;a empleada en esta gu&iacute;a, no representa la &uacute;nica manera de llevar a cabo evaluaciones del riesgo, existen otros m&eacute;todos que funcionan igualmente, en especial, en el caso de riesgos y situaciones m&aacute;s complejos. Consideramos que este m&eacute;todo es el m&aacute;s directo y simple para las peque&ntilde;as y medianas empresas.</p>', 'INFORMACIÓN DE INTERÉS', '', '', 'GUIA.pdf', 'pdf', 'OIT', 'http://www.ilo.org/wcmsp5/groups/public/---ed_protect/---protrav/---safework/documents/publication/wcms_349874.pdf', 'D.png', 'D_thumb.png', 5, 1, 0, 0, '2017-08-11 11:32:05', 1, '2017-08-11 11:32:20', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Prevenir Caídas - Trabajar en Alturas', '<p style="text-align: justify;"><strong><span style="font-size:14px;">Las ca&iacute;das de altura pueden causar la muerte o la incapacidad permanente</span></strong></p>', '<p style="text-align: justify;">En todos los lugares de trabajo que supongan un riesgo de ca&iacute;da para el trabajador, por ejemplo las aberturas del suelo, los bordes de los edificios, los huecos del ascensor, los tejados, etc, se deben tomar medidas de prevenci&oacute;n adecuadas para evitar las ca&iacute;das, y en el caso de que no sea posible, para atenuar las consecuencias de las mismas.</p>', 'TRABAJO EN ALTURAS', '', '', '', 'pdf', 'OIT', '', 'altiras-min.png', 'altiras-min_thumb.png', 5, 1, 0, 0, '2017-08-11 11:36:59', 1, '2017-08-11 11:42:28', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Equipos de Protección Individual', '<p style="text-align: justify;"><strong><span style="font-size:14px;">Los equipos de protecci&oacute;n individual permiten trabajar en condiciones seguras y saludables</span></strong></p>', '<p style="text-align: justify;">El empleador deber&aacute; proporciar y mantener ropas y equipos de protecci&oacute;n individual adecuados a los tipos de trabajo y riesgo, sin que suponga costo alguno para los trabajadores, y ello con el fin de protegerlos de los riesgos de accidentes o lesiones. El empleador deber&aacute; proporcionar a los trabajadores los medios adecuados para posibilitar el uso de los equipos de protecci&oacute;n individual, asegurar la correcta utilizaci&oacute;n de los mismos e informar de cualquier equipamiento defectuoso.</p>', 'EQUIPOS DE PROTECCIÓN INDIVIDUAL', '', '', '12-02_PPE_pdf_ES.pdf', 'pdf', 'OIT', '', 'epp-min.png', 'epp-min_thumb.png', 5, 1, 0, 0, '2017-08-11 11:41:48', 1, '2017-08-11 11:41:58', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Trabajar Seguro en las Excavaciones y Zanjas', '<p style="text-align: justify;"><strong><span style="font-size:14px;">Trabajar Seguro en las Excavaciones y Zanjas</span></strong></p>', '<p style="text-align: justify;">Las obras de excavaci&oacute;n y cavado de zanjas o fosos puede ser sumamente peligrosas y provocar lesiones graves, e incluso la muerte, si no son realizadas de manera segura. Entre los principales riesgos constan: quedarse atrapados o enterrados, caer dentro de la excavaci&oacute;n, ser golpeados y lesionados por materiales que caen dentro de la excavaci&oacute;n, ahogos, el choque con conducciones de servicio (gas, agua o electricidad), asfixia o incluso la intoxicaci&oacute;n por gases que penetran en la excavaci&oacute;n o en la zanja.</p>', 'TRABAJO SEGURO EN EXCAVACIONES Y  ZANJAS', '', '', '12-02_Excavation_pdf_ES.pdf', 'pdf', 'OIT', '', 'EX-min.png', 'EX-min_thumb.png', 5, 1, 0, 0, '2017-08-11 11:47:02', 1, '2017-08-11 11:47:11', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagina`
--

INSERT INTO `pagina` (`id`, `titulo`, `contenido`, `estado`, `catid`, `hits`, `alias`, `metadescripcion`, `metapalabras_clave`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(2, 'Información estadistica', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>\r\n\r\n<p>Sed imperdiet augue eget nulla porttitor aliquet. Nulla eget felis eget lectus vestibulum ornare sed a neque. Maecenas arcu dolor, luctus ut est ac, consequat vulputate erat. Vivamus id consequat justo. Mauris augue turpis, aliquet a massa vel, rutrum convallis arcu. Phasellus sed sollicitudin neque. Aliquam sit amet elit placerat, pellentesque neque sed, convallis lacus.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/si_maestras/assets/filemanager/userfiles/estadistica.jpg" style="width: 300px; height: 225px;" /></p>', 1, 0, 36, 'informacion-estadistica', 'Resultados de maestras constructuras', 'estadisticas, maestras constructoras, caboco', '2016-09-23 18:36:07', 1, '2017-05-22 22:59:11', 1, '2017-01-14 12:46:33', '0000-00-00 00:00:00'),
(3, 'Salud y seguridad en el trabajo', '<p style="text-align: center; max-width: 853px; max-height: 480px; margin: 0 auto;"><iframe allowfullscreen="" frameborder="0" height="480" src="https://www.youtube.com/embed/C7Jt_n6lt1M?rel=0" width="853"></iframe></p>', 1, 0, 75, 'salud-seguridad-trabajo', 'Salud y seguridad en el trabajo', 'salud, seguridad, trabajo, maestras constructoras', '2016-09-24 09:36:45', 1, '2017-06-22 21:42:07', 1, '2017-01-26 15:02:53', '0000-00-00 00:00:00'),
(4, 'Norma Vigente', '<p style="text-align: center;"><img alt="" src="/si_maestras/assets/filemanager/userfiles/norma.png" style="width: 266px; height: 84px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>', 1, 0, 94, 'norma-vigente', 'Norma vigente, maestras trabajadoras', 'maestras trabajadoras, CABOCO', '2016-09-24 10:12:25', 1, '2017-08-05 00:39:51', 1, '2017-01-14 12:12:54', '0000-00-00 00:00:00'),
(5, 'Pagina de Prueba', '<p><span style="font-size:24px;">Ingresar contenido....</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, 0, 72, 'pagina-de-prueba', '', '', '2016-11-29 13:37:50', 1, '2017-01-18 14:26:06', 1, '2016-11-29 13:49:29', '0000-00-00 00:00:00'),
(6, 'Equidad de género en el sector', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', 1, 0, 30, 'equidad-de-genero-en-el-sector', 'Equidad de género en el sector', 'equidad, genero, sector', '2017-02-07 14:14:28', 1, '2017-07-10 01:47:56', 0, '2017-02-07 14:14:28', '0000-00-00 00:00:00'),
(7, 'Quiénes somos', '<p>&nbsp;</p>\r\n\r\n<p>La plataforma virtual&nbsp; MAESTRAS CONSTRUCTORAS alberga una base de datos de trabajadoras capacitadas y certificadas en diferentes especialidades del rubro de la construcci&oacute;n. Estas certificaciones son otorgadas por diversos centros de formaci&oacute;n t&eacute;cnica de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>El objetivo de la plataforma es promover v&iacute;nculos laborales entre empleadores y mujeres trabajadoras en la construcci&oacute;n, con el fin de facilitar la b&uacute;squeda y contrataci&oacute;n de trabajadoras capacitadas y as&iacute; promover la visibilizaci&oacute;n de la mano de obra fina que poseen, cuya fama destaca dentro del rubro de la construcci&oacute;n en nuestro pa&iacute;s.</p>\r\n\r\n<p>La Administraci&oacute;n de la Plataforma est&aacute; a cargo de la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), quienes junto con Instituciones de Formaci&oacute;n T&eacute;cnica y con otros actores importantes del sector de la construcci&oacute;n en Bolivia, impulsan el proyecto &ldquo;Construyendo Igualdad&rdquo; iniciado por la Organizaci&oacute;n Internacional de Trabajo (OIT) a principios de 2015 para la promoci&oacute;n de mejores condiciones laborales para las mujeres del sector de la construcci&oacute;n en Bolivia. Este proyecto fue financiado por la Agencia Sueca de Desarrollo Internacional (ASDI).</p>\r\n\r\n<hr />\r\n<div class="content-auspiciantes"><!-- Start Big Heading -->\r\n<div class="big-title text-center">\r\n<h1>Instituciones de <strong>Formaci&oacute;n T&eacute;cnica</strong></h1>\r\n</div>\r\n<!-- End Big Heading -->\r\n\r\n<div class="content-auspiciantes">\r\n<section class="auspiciantes slider" style="margin: 60px auto;">\r\n<div><a href="http://www.infocallp.org/infocal2/index.php/ct-menu-item-1" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg" style="height: 70px; width: 195px;" /></a></div>\r\n\r\n<div><a href="https://www.facebook.com/CCaM.LaPaz/" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/LOGO_V3_blanco2.jpg" style="width: 162px; height: 90px;" /></a></div>\r\n\r\n  <div><a href="http://mi.lapaz.bo/index.php?option=com_content&view=categories&id=20&Itemid=618" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/logo_Desarrollo_Economico2.png" style="width: 222px; height: 70px;" /></a></div>\r\n\r\n<div><a href="http://www.red-habitat.org/rh/index.php" target="_blank"><img alt="" src="/si_maestras/assets/filemanager/userfiles/escuelas/RED_HABITAT.png" style="height: 90px; width: 81px;" /></a></div>\r\n\r\n<div><a href="http://maestrasconstructoras.org/si_maestras/index.php/pagina/escuela-taller-de-la-paz" target="_blank"><img alt="logo-etlp" src="/si_maestras/assets/filemanager/userfiles/LOGO_ESCUELA_ETLP.png" style="height: 90px; width: 81px;" /> </a></div>\r\n</section>\r\n</div>\r\n</div>', 1, 0, 232, 'quienes-somos', 'quiénes somos', 'quienes somos', '2017-02-07 14:24:13', 1, '2017-08-11 12:46:55', 1, '2017-06-08 09:42:57', '0000-00-00 00:00:00'),
(8, 'Cómo funciona', '<div>&nbsp;\r\n<center>\r\n<h2 class="main-heading">PARA CONTACTAR UNA MAESTRA CONSTRUCTORA DEBES:</h2>\r\n</center>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<center>\r\n<div class="embed-responsive embed-responsive-16by9"><iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/f3i0x6Ncb8U" width="560"></iframe></div>\r\n</center>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<center>\r\n<h4 class="main-heading">Los pasos para recibir informaci&oacute;n de una Maestra Constructora y poder contactarla son los siguientes:</h4>\r\n</center>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n<center>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><img height="50px" src="http://maestrasconstructoras.org/si_maestras/assets/filemanager/userfiles/como_fuciona/num1.png" width="50px" /></td>\r\n			<td>&nbsp;&nbsp;&nbsp;</td>\r\n			<td>\r\n			<p>Selecciona la ciudad.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img height="50px" src="http://maestrasconstructoras.org/si_maestras/assets/filemanager/userfiles/como_fuciona/num2.png" width="50px" /></td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Indica el rubro donde necesitas apoyo.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img height="50px" src="http://maestrasconstructoras.org/si_maestras/assets/filemanager/userfiles/como_fuciona/num3.png" width="50px" /></td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Ingresa el n&uacute;mero de trabajadoras.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img height="50px" src="http://maestrasconstructoras.org/si_maestras/assets/filemanager/userfiles/como_fuciona/num4.png" width="50px" /></td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Ingresa las fechas de inicio y de finalizaci&oacute;n aproximados de las obras.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img height="50px" src="http://maestrasconstructoras.org/si_maestras/assets/filemanager/userfiles/como_fuciona/num5.png" width="50px" /></td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Coloca tu nombre.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img height="50px" src="http://maestrasconstructoras.org/si_maestras/assets/filemanager/userfiles/como_fuciona/num6.png" width="50px" /></td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Coloca tu correo electr&oacute;nico para enviar la informaci&oacute;n al mismo.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img height="50px" src="http://maestrasconstructoras.org/si_maestras/assets/filemanager/userfiles/como_fuciona/num7.png" width="50px" /></td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Coloca la direcci&oacute;n donde se realizar&aacute; la obra.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img height="50px" src="http://maestrasconstructoras.org/si_maestras/assets/filemanager/userfiles/como_fuciona/num8.png" width="50px" /></td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Finalmente indica que no eres un robot y env&iacute;a la solicitud. Env&iacute;a un mensaje.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</center>\r\n\r\n<p>&nbsp;</p>', 1, 0, 181, 'como-funciona', 'cómo funciona', 'cómo funciona', '2017-02-07 14:24:58', 1, '2017-08-10 09:37:10', 1, '2017-07-27 18:41:51', '0000-00-00 00:00:00'),
(9, 'Escuela Taller de La Paz', '<div class="row">\r\n<div class="col-md-offset-3 col-md-6 col-md-offset-3">\r\n<div class="text-center"><img atl="logo-ETLP" class="img-responsive text-center img-thumbnail" src="/si_maestras/assets/filemanager/userfiles/LOGO_ESCUELA_ETLP.png" style="height:150px;" /></div>\r\n\r\n<h4 class="classic-title"><span>Objetivo:</span></h4>\r\n\r\n<p class="text-justify">La formaci&oacute;n t&eacute;cnica en oficios relacionados con la salvaguarda del patrimonio y mejora de espacios p&uacute;blicos de j&oacute;venes, hombre y mujeres entre 16 y 25 a&ntilde;os y pertenecientes a estratos vulnerables de la ciudad de La Paz, competitivos para ingresar y permanecer en el mercado laboral del sector demandante.</p>\r\n\r\n<div class="text-center" style="margin:0px;"><img atl="ETLP-foto" class="img-responsive text-center img-thumbnail" src="/si_maestras/assets/filemanager/userfiles/etlp-foto2.png" /></div>\r\n\r\n<hr />\r\n<h4 class="classic-title"><span>Metodolog&iacute;a:</span></h4>\r\n\r\n<p class="text-justify">La metodolog&iacute;a de formaci&oacute;n ocupacional de la Escuela Taller De La Paz se base en el <strong>aprender &ndash; produciendo</strong>, fundamental para garantizar un buen aprovechamiento de los conocimientos te&oacute;ricos aprendidos as&iacute; como para lograr un mejor acceso al empleo una vez concluida su formaci&oacute;n. Nuestras pr&aacute;cticas se realizan en obras reales (inmueble y muebles patrimoniales).</p>\r\n\r\n<hr />\r\n<h4 class="classic-title"><span>Qu&eacute; ofrecemos:</span></h4>\r\n\r\n<p class="text-justify">Formaci&oacute;n en las siguientes &aacute;reas: Forja y carpinter&iacute;a met&aacute;lica, construcci&oacute;n, carpinter&iacute;a y talla en madera y policrom&iacute;a, todos dedicados a la conservaci&oacute;n y restauraci&oacute;n. Capacitaci&oacute;n en cursos cortos para el p&uacute;blico en general.</p>\r\n\r\n<div class="text-center"><img atl="ETLP-foto" class="img-responsive text-center img-thumbnail" src="/si_maestras/assets/filemanager/userfiles/etlp-foto1.png" /></div>\r\n\r\n<hr />\r\n<h4 class="classic-title"><span>Titulaciones:</span></h4>\r\n\r\n<h5>T&eacute;cnico medio en construcci&oacute;n para la restauraci&oacute;n.</h5>\r\n\r\n<p class="text-justify">Formaci&oacute;n en el oficio de la construcci&oacute;n tradicional y contempor&aacute;nea y t&eacute;cnicas de conservaci&oacute;n y restauraci&oacute;n de nuestro patrimonio cultural edificado.</p>\r\n\r\n<h5>T&eacute;cnico medio en carpinter&iacute;a para la restauraci&oacute;n.</h5>\r\n\r\n<p class="text-justify">Formaci&oacute;n en el oficio de la carpinter&iacute;a, con el fin de sentar las bases para la elaboraci&oacute;n de objetos decorativos y utilitarios.</p>\r\n\r\n<h5>T&eacute;cnico medio en forja y carpinter&iacute;a met&aacute;lica para la restauraci&oacute;n.</h5>\r\n\r\n<p class="text-justify">Formaci&oacute;n en el oficio de la forja de metales y la carpinter&iacute;a met&aacute;lica; con t&eacute;cnicas de conservaci&oacute;n y restauraci&oacute;n de nuestro patrimonio cultural construido en metal.</p>\r\n\r\n<h5>T&eacute;cnico medio en talla de madera y t&eacute;cnicas de acabado.</h5>\r\n\r\n<p class="text-justify">Formaci&oacute;n en talla en madera de objetos art&iacute;sticos, figuras antropomorfas, zoomorfas, mobiliario de estilo y las diferentes t&eacute;cnicas de acabados como ser policrom&iacute;as, pan de oro, esgrafiado y encarnaciones.</p>\r\n\r\n<div class="text-center"><img atl="ETLP-foto" class="img-responsive text-center img-thumbnail" src="/si_maestras/assets/filemanager/userfiles/etlp-foto3.png" /></div>\r\n\r\n<hr />\r\n<h4 class="classic-title"><span>Obras realizadas por la ETLP:</span></h4>\r\n\r\n<ul>\r\n	<li><strong>- </strong>Restauraci&oacute;n del Museo del Litoral Boliviano.</li>\r\n	<li><strong>- </strong>Restauraci&oacute;n del Museo Tambo Quirquincho.</li>\r\n	<li><strong>- </strong>Reposici&oacute;n del Escudo y conservaci&oacute;n de la fachada de la Casa Espa&ntilde;a.</li>\r\n	<li><strong>- </strong>Restauraci&oacute;n Hall del Palacio Consistorial.</li>\r\n	<li><strong>- </strong>Restauraci&oacute;n de la Unidad Educativa Brasil.</li>\r\n	<li><strong>- </strong>Restauraci&oacute;n de la pintura mural del sal&oacute;n de actos del Colegio Ayacucho.</li>\r\n	<li><strong>- </strong>Conservaci&oacute;n de fachadas y mural de la Casa de la Cultura Franz Tamayo.</li>\r\n	<li><strong>- </strong>Conservaci&oacute;n preventiva de esculturas en espacios abiertos.</li>\r\n	<li><strong>- </strong>Conservaci&oacute;n de las puertas de bronce de la catedral de La Paz, entre muchas.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h4 class="classic-title"><span>Horarios:</span></h4>\r\n\r\n<p class="text-justify">Clases de 8:30 a 16:30 (horario continuo).</p>\r\n\r\n<hr />\r\n<h4 class="classic-title"><span>Becas de apoyo</span></h4>\r\n\r\n<p class="text-justify">Se otorgan becas econ&oacute;micas por d&iacute;a asistido de clases.</p>\r\n\r\n<hr />\r\n<h4 class="classic-title"><span>Nuestra historia:</span></h4>\r\n\r\n<p class="text-justify">El proyecto Escuela Taller de La Paz, nace dentro del <strong>Acuerdo de entendimiento entre la Embajada de Espa&ntilde;a en Bolivia</strong> y el gobierno Municipal de La Paz, en mayo de 2007 y entra en funcionamiento el 5 de mayo de 2009.</p>\r\n\r\n<p class="text-justify"><strong>El 21 de septiembre de 2012, el Ministerio de Educaci&oacute;n emiti&oacute; la Resoluci&oacute;n Ministerial No 629/2012</strong>, autorizando la implementaci&oacute;n y desarrollo del proyecto &ldquo;escuela Talle de La Paz&rdquo;, con car&aacute;cter piloto experimental a cargo de la direcci&oacute;n de Patrimonio Cultural de la Secretaria Municipal de Culturas del Gobierno Aut&oacute;nomo Municipal de La Paz.</p>\r\n\r\n<p class="text-justify">La Escuela Taller de La Paz (ETLP) es un <strong>Centro de Formaci&oacute;n T&eacute;cnica especializado</strong> en la conservaci&oacute;n y restauraci&oacute;n del patrimonio cultural.</p>\r\n\r\n<p class="text-justify">En La Paz se formaron m&aacute;s de 200 j&oacute;venes en la Escuela Taller de La Paz de GAMLP.</p>\r\n\r\n<div class="text-center"><img atl="ETLP-foto" class="img-responsive text-center img-thumbnail" src="/si_maestras/assets/filemanager/userfiles/etlp-foto4.png" /></div>\r\n\r\n<hr />\r\n<h4 class="classic-title"><span>Contactos:</span></h4>\r\n\r\n<ul>\r\n	<li><strong>Email : </strong> escuela.taller@lapaz.bo</li>\r\n	<li>(Secretaria) ETLP</li>\r\n	<li><i class="fa fa-mobile"></i><strong>Tel&eacute;fono: </strong>(2)-2650149</li>\r\n	<li><i class="fa fa-globe"></i><strong>Direcci&oacute;n : </strong> Calle Colon Nro. 379 Entre calles Mercado y Potos&iacute;</li>\r\n</ul>\r\n</div>\r\n</div>', 1, 0, 123, 'escuela-taller-de-la-paz', '', '', '2017-05-30 10:28:59', 1, '2017-08-11 16:31:12', 1, '2017-06-09 11:25:53', '0000-00-00 00:00:00');

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
(3, 'Página de inicio', NULL, '', 'www.maestrasconstructoras.org es una base de datos de trabajadoras certificadas en el rubro de la construcción. Forma parte del proyecto "Construyendo Igualdad" desarrollado por la OIT con apoyo de ASDI', 'Maestras Constructoras, CABOCO, trabajadoras, certificadas, oit, asdi, mujer, construccion, empleo, bolivia', 1, 0, 10731, '2016-09-14 15:01:08', 0, '2017-08-12 10:35:25', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Publicaciones', NULL, 'publicaciones-score-bolivia', 'Publicaciones Maestras Constructoras', 'Maestras Constructoras, CABOCO', 1, 0, 231, '2016-09-24 18:26:46', 0, '2016-11-14 12:50:17', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Contacto', NULL, 'contacto-maestras-constructoras', 'Contacto Maestras Constructoras', 'Maestras Constructoras, CABOCO', 1, 0, 551, '2016-09-28 11:09:41', 0, '2017-08-12 09:56:56', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Caja de herramientas Modulo I', NULL, 'biblioteca/1', 'Caja de herramientas Modulo I', 'Maestras Constructoras, CABOCO', 0, 0, 8, '2016-10-16 19:53:21', 1, '2016-11-29 13:50:52', 1, '2016-10-18 11:04:28', '2016-10-18 11:04:05'),
(12, 'Noticias generales', NULL, 'noticias/1', 'Noticias generales', 'Maestras Constructoras, CABOCO', 1, 0, 1422, '0000-00-00 00:00:00', 0, '2017-08-12 10:26:06', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Noticias capacitacion', NULL, 'noticias/2', 'Noticias capacitacion', 'Maestras Constructoras, CABOCO', 1, 0, 560, '0000-00-00 00:00:00', 0, '2017-08-12 07:36:31', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Información equidad de género', '', 'informacion/3', 'Informacion equidad de género', 'Maestras Constructoras, CABOCO', 1, 0, 382, '0000-00-00 00:00:00', 0, '2017-08-11 17:23:12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Información derechos laborales', NULL, 'informacion/4', 'Derechos laborales', 'Maestras Constructoras, CABOCO', 1, 0, 311, '0000-00-00 00:00:00', 0, '2017-08-11 02:34:30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Información salud y seguridad en el trabajo', NULL, 'informacion/5', 'Salud y seguridad en el trabajo', 'Maestras Constructoras, CABOCO', 1, 0, 691, '0000-00-00 00:00:00', 0, '2017-08-12 11:01:03', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
('773648ce72e745f96da583bec48d3b8243df5836', '173.254.76.196', 1501318802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313331383830323b),
('b774167cc5f1f7ace322e6d1fa6b5c62312bf08f', '77.88.5.58', 1501317498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313331373439383b),
('d92e02c4717d92e29c4af3f659bc38065c5900af', '173.254.76.196', 1501315203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313331353230333b),
('cd1833aec084b41a5fae0be8ebc0130c865e4b4d', '66.249.79.94', 1501315173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313331353137333b),
('a2939a23d987f6e20ed9f9820b4d67a3728b274a', '77.88.5.58', 1501313967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313331333936373b),
('b515907701013b421c5433fdf881cb446436b33d', '77.88.5.1', 1501313316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313331333331363b),
('639144e02afc7c8b7cd0c4ada7734e250965de34', '77.88.5.58', 1501312187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313331323138373b),
('00b0a9b266a8ef95772fddfd6d06c5fbe6dcbea3', '173.254.76.196', 1501311601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313331313630313b),
('b0d92a5579ea32cfb90502eac6c404bf9d9fcf54', '40.77.167.77', 1501309354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313330393335343b),
('2aabf84a056ef6fef3ca2dfa5f40fcdc76905e2e', '173.254.76.196', 1501308002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313330383030323b),
('76ae8adc40a84c7caa318cc67257689db2147a29', '66.249.79.92', 1501306363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313330363336323b),
('01592422882bbc280ef204effd1833f037a45074', '173.254.76.196', 1501304402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313330343430323b),
('444a213bbc817e79e82d7c87e746ad87ee8ba644', '40.77.167.68', 1501302048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313330323034383b),
('6da5c6c582a565f6e0d40e5425128c2720398fc1', '173.254.76.196', 1501300802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313330303830323b),
('24332b35b04ebd5e36336a0a3e6b778d7382805c', '66.249.79.90', 1501299053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313239393035333b),
('3ee04678d9092f1cee1a05edc8a12fac2e8914ab', '173.254.76.196', 1501297203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313239373230333b),
('9af604a7e077621aa034612b6994e0db157bc29b', '173.254.76.196', 1501293602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313239333630323b),
('0d7ed7ba1e114e4da5e5ce62028a275166a56c7c', '157.55.39.130', 1501293479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313239333437393b),
('078aed7b719536c12e9d84e00fb8eee4ae37f1f5', '173.254.76.196', 1501290001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313239303030313b),
('978d965d18ef312d5b5502b2d322d72b7d9967c1', '190.181.24.177', 1501288266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313238383231313b),
('6df8e42f09da5adeeec2679f82a8b767805125f8', '190.181.24.177', 1501287269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313238373130363b),
('4d82a6a76e4c6d60a0e61f7e79d85bd53e993b6c', '173.254.76.196', 1501286402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313238363430323b),
('e36d800d7af0c80aa9b96ed3c0c5fd4759bff458', '173.254.76.196', 1501282802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313238323830323b),
('5af6033a32aff496cc95cbcaf783e4688f7eb431', '173.254.76.196', 1501279202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313237393230323b),
('5b2662b109211be5b382300515797ff2dd92db53', '173.254.76.196', 1501275602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313237353630323b),
('d61bd38492fb27578e3fa60a511bd587f0df1880', '216.244.66.198', 1501272442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313237323434323b),
('6879ffca1bd7c4969efc19f2d95e4b0bf2effbd2', '173.254.76.196', 1501272003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313237323030333b),
('399ba24fa8caeb799d1cf42a3d2053a73238d1f8', '173.254.76.196', 1501268402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313236383430323b),
('2c527f9ef4bb0d734a5fa3304efe8cd3bfd3f97b', '180.76.15.5', 1501268362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313236383336313b),
('b14d585558777e6e0270c0fc9cc97090004d2001', '173.254.76.196', 1501264803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313236343830333b),
('1ba6196d217fccfb5c7427221e01f76c71cbcdc2', '216.244.66.198', 1501262494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313236323439333b),
('aede6c05b9bed2af9c8115bfd9ad45b0414900f9', '173.254.76.196', 1501261203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313236313230333b),
('518cb390c8102b3303115067ebc93e3a75116c3e', '173.254.76.196', 1501257603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235373630333b),
('186cf89f047c51276a0500f2e55eb7a91f99a5aa', '38.80.23.25', 1501256976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235363937363b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('aca9db96bb80ce5d9a43d854f0a97803f5d6c2b1', '186.121.242.58', 1501256882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235363837383b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('6714978fb44ebd4d650cc88a30ff121f22ed9470', '190.181.24.177', 1501256664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235363530393b),
('e6a5ec23dace603b59331392b06c78a4d1097329', '180.76.15.156', 1501255607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235353630373b),
('26e60724ceb369e217718740937a33b5234ec9f5', '173.254.76.196', 1501254002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235343030323b),
('c22d6b1305b45719008927a0bc4b360b97978d69', '38.80.27.169', 1501252974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235323937343b),
('4c1fac2a7c68d73ee3584069b6518b6cb3487bd9', '186.121.242.58', 1501252898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235323839353b),
('8eac746f1615569b87059e0d1a5ef10079f1cef8', '173.254.76.196', 1501250403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313235303430333b),
('cb4adcdeec385ae19139491ddf2117dd1b84e353', '190.181.45.225', 1501249844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313234393834343b),
('65d5bb86c2554d123b92f29c9aa934beb01695d6', '200.87.123.58', 1501248931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313234383933313b),
('2edf63e73e070bf4530d9fe12fabc9768b3a6ef6', '173.254.76.196', 1501246803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313234363830333b),
('cb60eade480ac289add5d3e14263ea1da5a0b263', '200.87.123.58', 1501246123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313234363132323b),
('6cee106d56d8a4fb9eaa417728f90dcede3e58ca', '173.254.76.196', 1501243203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313234333230333b),
('5e6da8828b1edeb0b0f7334c3cc6e9d2f4ed6e59', '173.254.76.196', 1501239602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313233393630323b),
('20deb05ce6d8ed3b776b00c001f444ebe3125487', '66.249.79.90', 1501237604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313233373630343b),
('0a1397e9799eabe36330dbfa24d3f255ca291bc8', '66.249.79.94', 1501236742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313233363734323b),
('c6bc04622600f5aa9973421434b977d98fe05125', '173.254.76.196', 1501236003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313233363030333b),
('6b9dd010fed5f350dda95b08fe0daa4571869879', '157.55.39.61', 1501233241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313233333234313b),
('00f0d11422208faa9f6cf3ed276a2c2bd0645e22', '163.172.4.153', 1501232422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313233323432323b),
('52cb22d9553207058ef8ba0009786d4d3b4ce7b9', '173.254.76.196', 1501232404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313233323430333b),
('5fb1931ca50e385eb93e61b0565998614831617e', '173.254.76.196', 1501228801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313232383830313b),
('2f5ead684cd5460a0ef759e313625d4b15b5c540', '173.254.76.196', 1501225204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313232353230343b),
('3a04cb812bf535c6136910ee21decf79fc90aa2c', '173.254.76.196', 1501221605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313232313630353b),
('d9bfee57da4548c18eeb0840bf8422b9acf75a93', '173.254.76.196', 1501218003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313231383030333b),
('6e1d6a6009c2fb2ed0e4eec4007c803275d2c81d', '66.249.79.92', 1501215029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313231353032393b),
('3c46d7ad0f46e7ed5e4603e448bebd1378d1ad71', '173.254.76.196', 1501214402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313231343430323b),
('f0ace4eaf57133e2d0e8594114ae633099362bae', '40.77.167.62', 1501211383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313231313338333b),
('e671935c1a4bdcad5ff85d1ecf9f6815a17f263c', '40.77.167.77', 1501211210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313231313231303b),
('ba3a6fe483dee0caac48da076fe965d9e5ca68f3', '173.254.76.196', 1501210802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313231303830323b),
('3d475b3f12d1acb79727a87e1b2f0f410d688b2c', '173.252.84.57', 1501210422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313231303432323b),
('9a2d483b064e5a37ef73d67deb99ceab45cee357', '173.252.123.129', 1501210419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313231303431393b),
('8e21289b3a6fd7411f4284b51bfbaa1c77afdb13', '173.254.76.196', 1501207202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313230373230323b),
('7f31912880dd99540f85a25d8211ddd022e04df6', '173.254.76.196', 1501203601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313230333630313b),
('bf974c3b9cd6fe47de499c2241a29d57d1324531', '173.254.76.196', 1501200002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313230303030323b),
('dcf1f45a39f9203ce81e0a85e27365ce3cff89c7', '91.103.66.202', 1501199443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139393434333b),
('bebe919e509a0cb25433645f02ce06ec9d776776', '199.19.249.196', 1501199441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139393434313b),
('88ead1081839fd98c5eabbf4e3d987539fb90aa7', '91.103.66.202', 1501199439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139393433393b),
('1c2346059c7dd941c543ccc1a8133b2406f6c0b9', '91.103.66.203', 1501199439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139393433393b),
('2dff007d3eb46a37eb819f0db690214cfca31fb8', '199.19.249.196', 1501198881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139383838313b),
('6e5938d2bb5c58beabff703284abdcbe9c2f96f0', '8.28.16.254', 1501198881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139383838303b),
('8b7bfbe1df1893015a7d78afd46414caa7c4a58d', '190.181.24.177', 1501198367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139383237393b),
('34c494333145646313c190d6e1188296e385b685', '190.181.24.177', 1501197728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139373732383b),
('eed566c2804b352d68c431fc912239ab41030249', '200.87.123.58', 1501197312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139373331323b),
('10a3c5f4eda01594d147845befd734a66b3df9c7', '200.87.123.58', 1501197311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139373331313b6572726f727c733a32373a22c2a1506f72206661766f7220696e696369612073657369c3b36e21223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('92a7e70a00032dd8bccc6bb21edb28878553ff18', '200.87.123.58', 1501196730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139363731393b),
('232b5eeaec1de4106194d666ec0a820129628c11', '190.181.24.177', 1501196867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139363634333b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('cbb2adfef2171527221f5993bfa3286f2e4525be', '190.181.24.177', 1501197113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139363936393b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('8f0788a31c6bf8f3fb170c673cb28d1172cacb3b', '180.76.15.145', 1501196452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139363435323b),
('3c784f9ec4c9042cfb423aea55659ad3b0ba4d00', '173.254.76.196', 1501196402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139363430323b),
('1fc0a7053a3f67798bd2323baa285866d0ceb930', '190.181.24.177', 1501196422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139363330393b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('b18eed4a50b60a45ed6a7c36e56d7462b09a99eb', '190.181.24.177', 1501194544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139343534343b),
('fe068fb8c9f377ce81c645f8b40a0ffbfce90bde', '190.181.24.177', 1501195997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139353936373b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('9200db9a93c20109b212e421c1e24bbeabc43481', '190.181.24.177', 1501194350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139343334363b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('755af26078ece87cdbc1679347e81b28542a08d4', '190.181.24.177', 1501193837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139333833323b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('d4a37ea359a4253330923e8e527198443cfa6794', '190.181.24.177', 1501194588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139343239393b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('6d56b454c3cc40604cac92627e4b5bc6728e6bf6', '173.254.76.196', 1501192802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139323830323b),
('c5a404eab4c2b738e6b8cfd584f94034640b28d3', '190.181.24.177', 1501193601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313139333436303b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('51aa14c48af65c6b6ed219f97e5c89f02c8bbd01', '40.77.167.62', 1501189385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138393338353b),
('7de81dce5719bdfcfbce4d8037fa262d2a7a6522', '173.254.76.196', 1501189202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138393230323b),
('f7dd6dcdca56acde22ed82276cb0aa9853fd0cba', '66.249.88.1', 1501187855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138373835353b),
('4c222381fd98138b75bd3c1c7b7757c139eb7abf', '38.80.23.21', 1501185445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138353434353b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('f3225c71b7f97cd71a9325609a9537c3774ccb7e', '173.254.76.196', 1501185601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138353630313b),
('3508ce907fb36e2fbc849243cde2d7649eef8023', '186.121.242.58', 1501185385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138353338353b677275706f5f6e6f74696369617c733a313a2232223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('36950bb835b28260439baa8eb5e176bad96a2361', '200.105.188.245', 1501183005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138333030353b),
('b8f6c16faa09f9a74589486d9bd43a311c19e994', '173.254.76.196', 1501182002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138323030323b),
('a01043d47d77e92d27b942046786b1ce61dd58c2', '186.121.242.58', 1501180200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313138303230303b677275706f5f6e6f74696369617c733a313a2232223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('2218a30cbd8b65412cbd20c8e5b21f54915ee6aa', '186.121.242.58', 1501180088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137393830393b677275706f5f6e6f74696369617c733a313a2232223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('8e0d632587db8e6371846a18ab9c235a1906a516', '180.76.15.12', 1501179761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137393736313b),
('aac0654136ac87101f038462ad9fc9897370a717', '40.77.167.62', 1501178875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137383837353b),
('316d86cb2c8268ee0a856a7087dce0c05b923efb', '173.254.76.196', 1501178402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137383430323b),
('172a424afc3ac6f4298be7585bc9752dceb00d60', '190.181.24.177', 1501175832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137353830303b),
('f182d4cf44352750cdf84f2f85b85619b6a98376', '173.254.76.196', 1501174802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137343830323b),
('7bec6f04078ba3a5c31760d1ec201d467c7ac282', '190.181.24.177', 1501174364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137343336303b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('854d4b96205e641256cdbf45ab0c1218b8a4fc04', '77.75.78.167', 1501174152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137343135323b),
('aac4663160e799b4dd26fa94c47ce25661ecb4f4', '190.181.24.177', 1501174153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137343033343b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('83efd8cfa5470a1ee19fa89473dbcb40f68c0eef', '190.181.24.177', 1501173490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137333432353b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('11905ee3eb653a81eb73c42975a7a8e6197c7421', '190.181.24.177', 1501171960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137313830363b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('0aeaec05fc9a70481a2dfdf0e8953bd6e2bd3c21', '200.87.123.61', 1501171771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137313439363b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('9b70715309188482128c5654e68f5359e3e6c407', '190.181.24.177', 1501171669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137313435393b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('0b573b6c3170dabb6378ea0e66bb2920dc9459a6', '173.254.76.196', 1501171202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137313230323b),
('f495fd64df8419923722c560e692b98be036ee7d', '190.181.24.177', 1501171445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137313135343b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('9a6cb6795e153cde8b3fac302bbcf26af15f44b4', '200.87.123.61', 1501171180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137313131393b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('3bc2f918c7b5ea94dd4cc8eaeb72ceb13ce61f74', '200.87.123.61', 1501170980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137303735393b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('a023effe8e1726f5bf74960332f4566716b1b9bc', '200.87.123.61', 1501170566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137303432363b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('a10ac0fe40732c65af8724aca59eef71910348c5', '186.121.242.58', 1501170419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137303139353b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('a492f13f21e5e7240d3826e61d749980a31f92cf', '200.87.123.61', 1501170146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313137303130303b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('f014ff6bb5f93e9b3b2e489c1aec32c753538ac7', '186.121.242.58', 1501170130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136393837313b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('1854660a89257b37759d406489b4790954deb18f', '200.87.123.61', 1501170044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136393738323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('63411999a539c0ee7ff128eb504666811f603f9d', '38.80.27.158', 1501169529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136393532393b),
('83a5da3a9057dfdd7ba34102842305be5893f151', '186.121.242.58', 1501169559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136393437343b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('84c6cd112a47cda101bdcea4acb903a768c3c3cb', '200.87.123.61', 1501169571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136393431333b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('757c824da336e6c92154ba60ff46bf94abd1c0b9', '190.181.24.177', 1501169404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136393132363b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('2d8fe04e42103ee4fabc4c101e715551f091bd5b', '200.87.123.61', 1501169381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136393038333b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('f886a3d7269bfffa4de7a814e6b0a616f6cc8f17', '200.87.123.61', 1501168988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136383735303b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('f1ef0de0acbf0ec0acf4b1d940c7a6090f956c15', '200.87.123.61', 1501168719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136383434313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b);
INSERT INTO `sesion` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1089db84a0f26e96d725b521107cb1acfe7bf951', '200.87.123.61', 1501168159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136383037313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('b04081017d97c3a4bfab3a66cb5a6e69ff30fea0', '190.181.24.177', 1501167970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136373836383b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('0402135a19b3f98f233d2b80cf78873204a9f8f4', '200.87.123.61', 1501167768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136373730323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('5146ba42da10c39c0c285c85e1047b75db5659d8', '173.254.76.196', 1501167602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136373630323b),
('b89f8b52c39b604518d1e0db89d8d47e6388ffe2', '190.181.24.177', 1501167566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136373333313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('c6ac6d670b1b68214aae1e5b60100fea9129cb64', '200.87.123.61', 1501167500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136373137333b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('7118b617d8193d38ccceb806657a254f28846551', '200.87.123.61', 1501167173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136373137333b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('733feec9fd8e53ab4395e5272b0329e66f0b3a97', '190.181.24.177', 1501167242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136373031313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('b8988d76be495b6979b7fb76069f359cf216a683', '200.87.123.61', 1501167084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136363833333b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('f56e4d7274365f793447baa3977397707af794f2', '200.87.123.61', 1501166803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136363531313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('163da296033caf625bbaff1835c15b5e5bae2543', '190.181.24.177', 1501166467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136363436373b),
('b88561bf43b09c11ee5b84bac664b905730440ff', '190.181.24.177', 1501166410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136363431303b),
('e47a60db6d6e31bddfca279ca9a6c58454e42d68', '190.181.24.177', 1501166257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136363133303b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('8ae46dc01360547f5c70ab138fceac4ae30b5f53', '200.87.123.61', 1501166159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136363034333b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('83330a7c7a1b77d04358ddc26dedb6137e4f8203', '190.181.24.177', 1501165952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136353736313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('e5558892bf08d029bc0d837eaaf4bbdbf45c03cf', '200.87.123.61', 1501165721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136353632333b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('ec99bee3437b006a4d59189f948e1b85bfe27054', '190.181.24.177', 1501165604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136353630343b),
('0189e52249ecf458c5ec990b150d92a166ce1f09', '190.181.24.177', 1501165481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136353438313b),
('2c63bcb9292364cbfe12e325672535c170117e68', '200.87.123.58', 1501165649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136353338333b),
('4951487a50ea7452e75a57bd993fb0a40f820bc2', '200.87.123.61', 1501165393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136353330323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('04d55b0ab1470b5e5cbf189e4772a1988b276463', '200.87.123.61', 1501165082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136343837363b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('c9c4912cb38b93af548f8edd6e64773ff51e1796', '190.181.24.177', 1501164656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136343537303b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('121b964c20ed48ac10e4ed0311bd08b87a8be441', '190.181.24.177', 1501164354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136343335343b),
('128a5edea2b77cd4d54d442fd71aa113dfbeae2f', '190.181.24.177', 1501164515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136343531353b),
('5ad48d07ec00d58240a777b6688b0928f0ddb74b', '200.87.123.61', 1501164854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136343535353b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('f70d198b22763d77582abe4e30f035476307bdb8', '200.87.123.61', 1501164354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136343234353b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('5ee7f8f2aff4b435705c3291f19babdfceeb04d8', '173.254.76.196', 1501164002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136343030323b),
('c00c149b91567100a440d35380e31a043e293c08', '190.181.24.177', 1501164398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136343139393b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('e8f0d0564312d8afef8a676d3c927bdc28f26e0a', '190.181.24.177', 1501163997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136333939373b),
('749a8cbffe93e80161c890083fdfd4939c1ea887', '190.181.24.177', 1501164061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136333738343b),
('6bb85bab9744d2c0fdf59fbf0482995d56b7c6b6', '190.181.24.177', 1501164089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136333739373b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('be7950fec671210a0a4a12b4accd351d1de11183', '200.87.123.61', 1501164006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136333930353b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('1d05c3a0cc6a055a8390f3ff69a639d3977fa4ac', '200.87.123.61', 1501163532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136333436383b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('57a111f970230dbd0292a288065cc52d823e25f3', '190.181.24.177', 1501163327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136333332303b),
('2b9ac0ec65fef40581f55ef0546e6336be4cb58b', '200.87.123.61', 1501163235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136333135363b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('c3c05e9a344cab91988c54d5f5131585869fb23a', '190.181.45.225', 1501163346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136333037353b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223234223b733a373a227573756172696f223b733a31353a22706173746f72617a75c3b161677561223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a373a22506173746f7261223b733a393a226170656c6c69646f73223b733a383a225a75c3b161677561223b733a363a2263726561646f223b733a31393a22323031372d30362d30362031393a34303a3134223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2233223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a31313a225245442048414249544154223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a31323a227265645f686162697461742f223b7d6578697374655f736573696f6e7c623a313b),
('34a7805deb093809224ad9f0b9cb291c622a0e9d', '200.87.123.61', 1501162974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136323534373b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('a38024697bed31eefcf2546d6aae8a7eaf0021ca', '200.87.123.61', 1501162521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136323233363b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('aa2e95033322e8d54d95c8b3fb533508b5c48a5d', '38.80.23.58', 1501160958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136303935383b),
('9849d05a38883ebb56f8556e4e9702413484e679', '190.181.24.177', 1501161473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136313437333b),
('19d04019b453b02b34eccf86b49fc95c19d9b170', '200.87.123.61', 1501161981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136313637393b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('2974e044ae3dce8eb33be5c9a5a904f0159375b4', '190.181.24.177', 1501161815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136313831353b),
('e2307f21cf35b4c166337a42f7863a77bdc59bcb', '200.87.123.58', 1501160178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136303137383b),
('f94613a95cfe38ddb79b945a492e62b54f4c47d9', '173.254.76.196', 1501160401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136303430313b),
('0bc9cae470365deeb2a18b12f985c613aa83d6a8', '186.121.242.58', 1501160956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136303931363b677275706f5f6e6f74696369617c733a313a2232223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('13e5e83b06663777b33a44427dd1a882137a1457', '190.181.24.177', 1501160024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313136303032343b),
('9f89082bb6b180b71874193430abb5baf5dcb21e', '216.244.66.198', 1501158595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313135383539353b),
('eda82bd33c7bdc4cdc9b7fd42c5653c3ef9a3112', '207.46.13.119', 1501151220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313135313232303b),
('4d3288ef0d9eee2ea1d3918b06c3bf77b216281a', '207.46.13.119', 1501153035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313135333033353b),
('48a5d07b9c132af2b23e719f76d8f514f017c8e2', '173.254.76.196', 1501153202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313135333230323b),
('77418e299409f79c68a8bab4bfe07f25cfa3e19f', '200.105.184.41', 1501155484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313135353330373b),
('10d073810bedfc6c48fc1c1f45c9da5be6d105f1', '173.254.76.196', 1501156802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313135363830323b),
('132d868f6ec209098ecaa5734d5210af2ff9baf8', '173.254.76.196', 1501149602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313134393630323b),
('efd9e369feadb53c1b1e9f4b473cc0c6b03e8e01', '173.254.76.196', 1501138802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313133383830323b),
('81f612e77e22e1fcfe0b51921299206f42393603', '207.46.13.119', 1501141246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313134313234363b),
('8aa1f76de90d36b910889852236777d71b13e12e', '173.254.76.196', 1501142402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313134323430323b),
('56e7dc1406e7a077e942abe871fb71c9872ea17f', '173.254.76.196', 1501146001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313134363030313b),
('91489224021e500d3980417be3be42ebd8f3de79', '216.244.66.198', 1501137446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313133373434363b),
('c4f6ad27e1c8db2ae80fd70507f26c13bffd0bca', '173.254.76.196', 1501128002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132383030323b),
('a18596db86b97d680d15b2b2fc9da24e65418be9', '212.43.115.29', 1501128766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132383736363b),
('14e1f8c3a5edac99a0a70d1054d7c4d864bbbb35', '68.180.228.242', 1501129169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132393136393b),
('471ef414307fb1dc5d3268fe65032a8aff5f254a', '173.254.76.196', 1501131602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313133313630323b),
('edeaa5d12546e99521946202aca73bbd066a69bd', '173.254.76.196', 1501135203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313133353230333b),
('9aae1eaf7addabe1671753c1f0f66b2df86165ac', '199.19.104.163', 1501124960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132343936303b),
('ce42027c88a0db273871957cbebba861ab5f0cc6', '157.55.39.228', 1501127941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132373934313b),
('841d50b7fdddd5125d2807b44b93aa3a6f2020fe', '190.181.24.177', 1501112079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131323037393b),
('46166ce29266889e9bb8cb4a9844dbcc7d253c40', '66.249.79.94', 1501120370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132303337303b),
('d32f8583af208fd040450b66464499d76e4da621', '173.254.76.196', 1501120802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132303830323b),
('d4b3fcdce70add1e9cf7bf7a579b11e0b9c31021', '173.252.84.198', 1501121020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132313032303b),
('04697ac6b5689fef5b604a7d4e2979e3f1664831', '173.254.76.196', 1501124402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313132343430313b),
('dae5c56f26449caafded244fae4486e330f41e21', '190.181.24.177', 1501112092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131323039323b),
('f18cabf2efa6e73354142d3696f6c8f932506203', '173.254.76.196', 1501113602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131333630323b),
('d07af6c71dd3646d251c2e86080cd48853d16ec0', '173.254.76.196', 1501117202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131373230323b),
('05b1041c21d86567cc5d5876e2d25b862758ebde', '66.249.79.92', 1501111497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131313439373b),
('91286b31bfe8d1eb6f3359dd27b66448815688eb', '190.181.24.177', 1501111411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131313335393b7573756172696f7c613a31313a7b733a323a226964223b733a323a223234223b733a373a227573756172696f223b733a31353a22706173746f72617a75c3b161677561223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a373a22506173746f7261223b733a393a226170656c6c69646f73223b733a383a225a75c3b161677561223b733a363a2263726561646f223b733a31393a22323031372d30362d30362031393a34303a3134223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2233223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a31313a225245442048414249544154223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a31323a227265645f686162697461742f223b7d6578697374655f736573696f6e7c623a313b),
('745d07c0d8628d610cf6665bc66254a62e042524', '190.181.24.177', 1501111406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131313430363b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('5378fe6d3ade75f6b009b587578c63297e466c50', '190.181.24.177', 1501111020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131303939323b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('7c8a88c3eeacff418b15837c9a18a152a90e94d1', '190.181.24.177', 1501111188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131313033373b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('903b388346ab557aba35398cd86ef18440591cf2', '173.254.76.196', 1501110002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313131303030323b),
('1419f57635792e772f5b084099b57592038564d9', '181.115.128.198', 1501108679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130383637393b),
('8955287276035fb52fb66708ec4d8fee19befd68', '173.254.76.196', 1501106401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130363430313b),
('c9e9a7b4d7706a7b55c7bf1576b5064f732a7a62', '180.76.15.27', 1501105824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130353832343b),
('d0a909d704fcdbf1465bb22ef6d3dff70189a986', '200.87.123.61', 1501105336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130353133363b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('09752df0b4bfeedec5f99ff11cc3b2706fc82e68', '200.87.123.61', 1501105075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130343831323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('298c35064d56c035480af19a4f632ea40f276b9a', '190.181.45.225', 1501104688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130343635373b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('f6abb4a0eea8d4ada32bbc8ae6f0dc0ab03c64cb', '200.87.123.61', 1501104608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130343530373b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('0a1a5bbcac486323cd45a67544fe62873246e8c7', '190.181.45.225', 1501103658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130333634373b),
('5b2070d249b064064ad5071da47eea75f7bb38f3', '200.87.123.61', 1501104348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130333938343b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('ffbdf99c4e3adae9e14dce461bda4630ef1d1449', '200.87.123.61', 1501103759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130333632373b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('ec678b145a098fe91d29bdb234cb32719ee0241e', '186.121.242.58', 1501103478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130333435393b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('b9873730144f9e465c032c7e45120ab334fb23f2', '190.181.24.177', 1501103578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130333335393b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b);
INSERT INTO `sesion` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('41ffa2cfa7930fc5ef46df06c5801e7fd2b0efdf', '200.87.123.61', 1501103358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130333230393b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('f0a0a0177a6e1476c01d045bd1f7b63b8d732f7a', '186.121.242.58', 1501103340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130333131323b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('c3a1307d11b96811f7326e5b0177af1fa3a84359', '173.254.76.196', 1501102802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130323830323b),
('3e472c190ef1ce824a96bc04d39a243ce301d199', '190.181.24.177', 1501102898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130323831323b),
('14dbe6b66921a68999ae63f0d40e1da3ffa09811', '104.237.243.84', 1501102646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130323634363b),
('e95ff4628e6a8ccdc6bf6295d1e6aa0cca2a3172', '200.87.123.61', 1501102976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130323739373b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('9fc0eeb43d8357f3f7d82c1ebb87f78738bc4474', '190.181.24.177', 1501102727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130323434333b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('81530343c6a2cda2950304f7b716bebd3178b3c5', '186.121.242.58', 1501102763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130323438373b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('a852d99c4bed06c060ee7c90f840a8eb7aed723b', '200.87.123.61', 1501095158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039353034323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('ddeae4f523deb146a17c0990a80898c5bcae93b6', '200.87.123.61', 1501095684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039353438303b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('26c083178045981e4c24e61eb35f4e80268441db', '173.254.76.196', 1501095602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039353630323b),
('620ca8df70c538e29bd46a19e20372d8fadae0d6', '200.87.123.61', 1501096395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039353935373b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('894faffeed74c90b626b1b1c771ee4373f4ad7d1', '200.87.123.61', 1501097011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039363736393b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('1b4cec3c8af4e9512a94522d8dd20bce7cb07936', '200.105.194.2', 1501097284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039373238333b),
('177a0f74f94429db8df007ec3514e8798b5c3336', '200.87.123.61', 1501097571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039373431333b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('219420ecebd8a91c0345d5b8cabea61941f837de', '66.249.79.90', 1501097705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039373730353b),
('ea218706fe1629c7598e2db288dff6beb0b2e04f', '200.87.123.61', 1501098270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039373831343b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('3f1844dfb19e2b6e5e5b488ee5813e505c77b3d1', '66.249.79.90', 1501098016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039383031363b),
('11e71dbd0085ee9b63bae0cfedbe1af7417802e4', '200.87.123.61', 1501098684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039383534303b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('4b39de4371fd7ef41f22dd6e5f12f8e0957ed67f', '200.87.123.61', 1501099009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039383834313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('0cc6220a4831702aa8be1c0ecab89fd9882d7d0f', '173.254.76.196', 1501099202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039393230323b),
('6899a39ca53f85d7094ee0ff65f5b2f4bd9ba0ae', '200.87.123.61', 1501099729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039393434303b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('2f1ad7a8c6c951bbdb371965df5056c62c3180f8', '200.87.123.61', 1501099845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313039393736323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('41bca89c86e85cdeb0b7c73d4013828896e253e0', '66.249.79.94', 1501100168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130303136383b),
('89977b8d833421b77777a87cd5049e5dff74406c', '66.249.79.92', 1501100169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130303136393b),
('c34f353b21a9a54d8711361f0b15c22c3aaf45ad', '200.87.123.61', 1501100304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130303234323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('6a68f3ac9a3befb23a047b3e801466c87845ddab', '200.87.123.61', 1501100668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130303538313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('b81492ca0242f29f6a6c29fa8dbd84869d995120', '200.87.123.61', 1501101151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130303932343b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('170e3b2136bb8386f190d7b992995c8ac907bcc7', '66.249.88.1', 1501101104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130313130343b),
('34a12ae9dd84bb117d9e005462d1fc6540e01a70', '66.102.7.58', 1501101141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130313134313b),
('6cf05d27fbfc88ec057545d4198a550e112d11d1', '66.102.7.60', 1501101142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130313134323b),
('94ba463b445bf0faa334469c6a31c67d836eae10', '200.87.123.61', 1501101542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130313431313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('77cd23da5cae3077a531d27463159f0b0d6e032c', '200.87.123.61', 1501102078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130313739363b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('0ab2a660b4f33a999097feb682c2edfeab543f29', '181.177.182.135', 1501102008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130323030383b),
('eed89bd5f0c05c7a4cac1ab377d5d3f592a1593a', '200.87.123.61', 1501102457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313130323130313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223137223b733a373a227573756172696f223b733a31323a2265667261696e76616c65726f223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a363a2245667261696e223b733a393a226170656c6c69646f73223b733a363a2256616c65726f223b733a363a2263726561646f223b733a31393a22323031372d30362d30332031333a33363a3333223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2232223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a373a22494e464f43414c223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a383a22696e666f63616c2f223b7d6578697374655f736573696f6e7c623a313b),
('974b8175c9e1f1c2e6d5e91124096ac642624272', '40.77.167.68', 1501321999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332313939393b),
('100d67a8c77cdf20607a969130ac7e14eac45ed9', '173.254.76.196', 1501322402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332323430323b),
('9fdd9039a51e08ea47e9ad20f187c16368c13beb', '77.88.5.58', 1501324506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332343530363b),
('71bc18709d56e9fe968ba32db3ea57cce5aa0456', '77.88.5.1', 1501325819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332353831393b),
('2afb6232cb18b7df5d406723579de32fb4efeafe', '77.88.5.58', 1501325959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332353935393b),
('98c6f6574d85fba2d48c2d2fdbea5a81ea055fc5', '77.88.5.58', 1501325964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332353936343b),
('bcc680c6a0e202c2dc8e6faa2bc0118ce5cc9e05', '173.254.76.196', 1501326002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332363030323b),
('7c09381a68fe3919b4135cb348fe9b03aaf6072a', '77.88.5.58', 1501328058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332383035383b),
('0a276ce5be9a4f750c3ff4a9e97c4ea67e8da268', '77.88.5.58', 1501329168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332393136383b),
('0e7142a29a7bef75713941fb2e9b1f73058f65ea', '173.254.76.196', 1501329602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313332393630323b),
('4c1da755588a7c218fde1fc58dc0f65c295e042b', '77.88.5.58', 1501332786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333323738363b),
('d57094ab004311961d43ddbef0e4ab1ae6ccc785', '77.88.5.58', 1501332789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333323738393b),
('4e026f7bbcdff884d65c4ca41e9f0c588a3a9ca0', '173.254.76.196', 1501333202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333333230323b),
('a922d95ad255cc0bf4f6c5ca22fde8c80fe15526', '77.88.5.58', 1501333554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333333535343b),
('21a6adc645e07dc3239f00f2dec3f2da7e8f8a9b', '77.88.5.58', 1501334787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333343738373b),
('f6caacb6da54aad4264942768be1a4407c919bee', '77.88.5.58', 1501335345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333353334353b),
('536c3aaa94c8fec7f99cbe51d8ce0b98987a2d4c', '77.88.5.1', 1501336654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333363635343b),
('a4cad3d1958469db46e7cc126752379d3f218ca8', '173.254.76.196', 1501336802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333363830323b),
('25b1641705f2eb36bb459e48b9a4fed8853627d6', '180.76.15.20', 1501337301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333373330313b),
('6cbb202c26e7611dcbee22bca722126e97ea13ab', '216.244.66.198', 1501337574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333373537343b),
('7b7245316904fa3b806fb51a115db3fd78b65c62', '66.249.88.4', 1501338515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333383531353b),
('492ebcd76bcad06f922ffe11805167948ad16e74', '77.88.5.58', 1501338550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313333383535303b),
('64caa2dde3f8a06b8a33509bc5da4f7cc2dc1d53', '77.88.5.58', 1501340130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334303133303b),
('68f2a238e956f4eac4e224d0fb44f0ce56f5c3e1', '77.88.5.58', 1501340181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334303138313b),
('e9173c069ae1f0f1cc33cc074b69ede4ac3772a4', '173.254.76.196', 1501340402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334303430323b),
('f0764bc7b0d98d555983393f96c69ef6a55361c1', '66.249.79.90', 1501342588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334323538383b),
('4c6820bf38a51787856fc74ab3fc3279d4fa1ac8', '180.76.15.18', 1501342625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334323632353b),
('d49643a4e40d680a686ee624cc979734eac65372', '77.88.5.58', 1501342693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334323639333b),
('993d0aed05e2e84829c7165e30c09a37146beba2', '77.88.5.58', 1501342943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334323934333b),
('0e76476d187430928e1df1e76ad9906fcf23ca53', '186.77.142.124', 1501343422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334333432323b),
('4a8060614af61b6e7d80fef5459917ff671dde6b', '173.254.76.196', 1501344002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334343030323b),
('a06f09bcfb453a1944d5defc9e55893be253c08b', '186.32.10.150', 1501344244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334343234333b),
('038db9ace691abac76cbda02814f908247833f73', '173.252.85.209', 1501344251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334343235313b),
('7fc0d9f92cab089fdb935b3b143a1ac1564e4e85', '77.88.5.58', 1501344770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334343737303b),
('e310cd1fe295e94e1b77b39ad17b73cfa3a5602d', '77.88.5.58', 1501345248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334353234383b),
('dc349648df1277e0ffa21cad27af2b07ea055ae0', '186.32.10.150', 1501345728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334353732383b),
('ea5d0e8a4ee82da1e4d0d9906299c0a8bd2ec4e3', '173.254.76.196', 1501347602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313334373630323b),
('d608fd9e0025c2712c5fb51e4b4abda9909f21f1', '68.180.230.167', 1501350547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313335303534373b),
('03c11ae8b8435f1a1a95b1be68b879c312969378', '68.180.230.167', 1501350677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313335303637373b),
('7582c97602f34824b79bbecf59dbf93db1281d72', '68.180.230.167', 1501350696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313335303639363b),
('f5956975ea66272850708e2166c5eaf0fa4e2a63', '68.180.230.167', 1501351100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313335313130303b),
('8786b27406e549201039c6458bd3848177edc912', '173.254.76.196', 1501351202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313335313230323b),
('31ccbc7194ceeb404aaee8634cde401a28e65ef7', '180.76.15.32', 1501352208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313335323230383b),
('16c0dd9bec05108d05dfd08c78507212e7ec9ba0', '173.254.76.196', 1501354802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313335343830323b),
('12e6c5109e034782242c0e7a3d1fa12bcadc7adf', '173.254.76.196', 1501358402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313335383430323b),
('a59fe9791cd2e5b20dd5268305fc0609f6500364', '173.254.76.196', 1501362002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313336323030323b),
('c374800d372e656e34f82352c80f03dd7e9564b0', '77.88.5.58', 1501363103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313336333130333b),
('af1380078cdef101ca10a2274bb2e5cf3581d2e2', '173.254.76.196', 1501365602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313336353630323b),
('47745e63157816e69b3a9b51ad3ca8d9988fde64', '173.254.76.196', 1501369202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313336393230323b),
('285ee23d2089766b300d6c485653d542640dceb9', '173.252.90.245', 1501371016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337313031363b),
('599379b0324cef48c3e44b666d16c45dcf026b65', '173.254.76.196', 1501372802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337323830323b),
('94f64bdb8a1293adf138c6a2514d21dface37d01', '181.188.177.128', 1501374474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337343431333b),
('5e8254a283e5164881c34896eb7e7f44da61c7ba', '181.188.177.128', 1501374603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337343537363b),
('e22613066a307d9115f5044115a0e3994b7048a0', '181.188.177.128', 1501374803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337343830333b),
('ac7f26d3606c03c3f93cc3ef81c0616a9918f3ca', '173.254.76.196', 1501376402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337363430323b),
('793b81f53e5c656800267c3ed4c33d79df345c69', '181.188.177.128', 1501377173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337373133303b),
('630c9f2127ca2e7e1455efafd9b634a8db45a12d', '68.180.230.167', 1501377998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337373939383b),
('a4b2a800dfc469609cc296017eaf4686771bd335', '40.77.167.85', 1501379385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313337393338353b),
('728b74330dd9bbe9011839bd22214f7090102880', '173.254.76.196', 1501380001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313338303030313b),
('b897e45c25aaa412a940f87a2b7fdffe7d536302', '66.249.79.94', 1501383502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313338333530323b),
('0b861c31cf75d46d3f3941fb43f73aa8e8160f03', '173.254.76.196', 1501383602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313338333630323b),
('33d10033d0b8713a7667cb62ab9396f5247e1564', '68.180.230.167', 1501383954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313338333935343b),
('6b80026271802163729731db1296b82c3a3caecb', '54.165.90.203', 1501386053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313338363035333b),
('23b6a4c21433f108ddd259c6dc91c94b58b3711d', '173.254.76.196', 1501387202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313338373230313b),
('08499074b1450081a3f904db2b0c7ef2b0d7cabe', '173.254.76.196', 1501390803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313339303830323b),
('4fee8ccba7a90d5638546bd738d0cf348f69fe77', '66.249.79.94', 1501391432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313339313433323b),
('d3b727319dee9a70c2b44be1a9d2adfbd1d993ce', '66.249.79.90', 1501392044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313339323034343b),
('edc49a1af007578c4379af0974f6519edbf63a4e', '173.254.76.196', 1501394403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313339343430333b),
('cca01ab77f8b8c0993d3914a797f2988ea6033b6', '173.254.76.196', 1501398002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313339383030323b),
('6e130d59f84c5330fc39a5b54f62b3e93ea5a720', '122.100.200.103', 1501401485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430313438343b),
('b2a9a38edab20fd1bd7db9f04cf472659f67dda2', '173.254.76.196', 1501401602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430313630323b),
('953881cfcd423e13ec156e996cec71ba76e31882', '66.249.79.92', 1501402908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430323930383b),
('33d30a990791ef34fe790238c6060fe54bacedc1', '173.252.85.212', 1501402913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430323931333b),
('70edc294fe488c67fa726fb8983e41b2916346fc', '68.180.230.167', 1501404390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430343338393b),
('7d22adc899137fd134d0fc1289376d7f606fb186', '173.254.76.196', 1501405203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430353230323b),
('ad921424c5ce9974800e6e6540c95e5fc6f39cba', '66.249.79.90', 1501405958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430353935383b),
('9c0b1346d0810cb9110fd589ab11e8bf590a00b5', '173.254.76.196', 1501408803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430383830323b),
('339407298d145179260092d5a3376c323d602b1a', '68.180.230.167', 1501409801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313430393830313b),
('7249a43dfa33c42b8c946af06cc81b8f8e5143b3', '190.129.108.228', 1501410456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313431303435363b),
('35f1ea8218491621ec56b30f925202b84334f23e', '69.63.188.110', 1501410517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313431303531373b),
('59bcf5eaa74d871be5368e35af055a14500266b7', '173.254.76.196', 1501412402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313431323430323b),
('068fe649c15e2fa31bc11d9edde709c05ab6a8fd', '173.254.76.196', 1501416002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313431363030323b),
('9e33a69a9679469baaa11e510afb5a5679eabcd9', '68.180.230.167', 1501417059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313431373035393b),
('eb789a0203620a9610927f2ff04ad1b60b8cce6e', '173.254.76.196', 1501419602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313431393630323b),
('279069af50305add2b183b8b219cf5ee92bc6217', '173.254.76.196', 1501423202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313432333230323b),
('58f466a74ce0b6c8b32dc11674c6fb2d3ac7d42d', '173.254.76.196', 1501426802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313432363830323b),
('cd562335172ef147d2bef3ed823123c9ed88dd27', '190.129.127.20', 1501429259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313432393235393b),
('dc35d250076cec23243165ada849d19c12dd635c', '173.254.76.196', 1501430401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313433303430313b),
('52674dbfeaee06392afabe4d00fcd7680e2a2356', '173.254.76.196', 1501434003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313433343030333b),
('0f598c31d49c96e0fe28da168a4e39674e5a015c', '173.254.76.196', 1501437602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313433373630323b),
('95837e7819bc4a6e8717dab2886e28e874f613f1', '173.254.76.196', 1501441202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313434313230323b),
('22f47a7c30d3700474692257949d756effe6b882', '216.244.66.198', 1501442748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313434323734383b),
('fa5743742ca69dce61c28ae40b720bb3ff39088d', '216.244.66.198', 1501443099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313434333039393b),
('3ff0a3d313bf853c668a59f7da8489ac64c132d3', '173.254.76.196', 1501444802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313434343830323b),
('0eb8f232a7d149dd298801d31a2aead3016d579a', '173.254.76.196', 1501448402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313434383430323b),
('fcee9cd8ca448baf1b9b6d4c197b09e595d0e24b', '173.254.76.196', 1501452002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313435323030323b),
('3d01b29a3d5956c6e58e6388997b54b463da4d43', '216.244.66.198', 1501452981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313435323938313b),
('931e98a8a54d9231c07c06ef66555641539e667b', '173.254.76.196', 1501455602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313435353630323b),
('11f48a2cbaf4bb515fd97361bc385e9d2f4437ad', '173.254.76.196', 1501459203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313435393230333b),
('b3e1fdf1c1abb9cbf7727b6f420e6bd73df1e591', '216.244.66.198', 1501462492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313436323439323b),
('b1e13b93d4299ff0f37732007c76d36e9141f48e', '173.254.76.196', 1501462802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313436323830323b),
('c827719a0e2cd02ba751b078157dfb36b3181da4', '180.76.15.148', 1501464098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313436343039383b),
('dc0562dd5f95042742c38efaefc2dae253f03ffa', '173.254.76.196', 1501466403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313436363430333b),
('18ff6bca978c9df5919b467cbe0b3a053e21429c', '173.254.76.196', 1501470002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313437303030323b),
('0bd9c437e231f0a6b09cb2883bbabd37787a2fa6', '173.254.76.196', 1501473602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313437333630323b),
('4e5aef4ffa01a2f5bd01574e6446174b43356e15', '66.249.79.92', 1501474795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313437343739353b),
('fddd527e95a4f3136a977662a15a4891605c6501', '173.254.76.196', 1501477203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313437373230333b),
('40868e5b3de32dc271925b48670facfceb20f895', '173.254.76.196', 1501480803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313438303830333b),
('72964be3440b5e74375d058ded509e12de1f83aa', '173.254.76.196', 1501484402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313438343430323b),
('ffb084e190729fffa25eb7af3c799ecc49f15ab3', '173.254.76.196', 1501488002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313438383030323b),
('2d9508054fb9101cf5fcceb3749cec75eb0685b0', '173.254.76.196', 1501491603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313439313630333b),
('7b82a4362685e40287d2651dcc13a259b7701c29', '216.244.66.198', 1501494796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313439343739363b),
('b7ca1b14e74ece82ca96db5ee9afc5fc6a99ef58', '216.244.66.198', 1501494812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313439343831323b),
('5b374c7002be7e1d00a985bf0b78819d1391520a', '173.254.76.196', 1501495202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313439353230323b),
('0af23fc75d9ff42fdc2b1cb6d96119dd7e6268c2', '66.249.79.94', 1501497830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313439373832393b),
('7a89cd9a3942550dcc67fb0bc62d01c746ad5446', '173.254.76.196', 1501498802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313439383830323b),
('ce8cbcc58d6b3304ae3d261f6cd7185a5063d86b', '54.165.90.203', 1501500033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530303033323b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('bc8230d6478eaef863fd029aa4846200e67004eb', '54.165.90.203', 1501501453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530313435333b),
('6c9fc5a58196ed1dd2603292fe6a0edc9af9d89f', '173.254.76.196', 1501502402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530323430323b),
('e66e2f54002323aa956c928f528e67693677c6b1', '54.165.90.203', 1501502693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530323637343b6572726f727c733a32373a22c2a1506f72206661766f7220696e696369612073657369c3b36e21223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('a2f6b557667d1d46a9cb3f2f3d17b17c1eff5956', '186.121.242.58', 1501504639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530343632363b677275706f5f6e6f74696369617c733a313a2232223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('b305fe3498245c322e44e287de41dc186abfa6cc', '104.237.243.178', 1501504648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530343634383b),
('eb0a5587852558c25ecf3a55a6480013e444809f', '173.254.76.196', 1501506002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530363030323b),
('b5c76f6ecf16ef8f7ba67400474bfd8b7f72a6cc', '190.181.24.177', 1501508849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530383834393b),
('718b62cfbb9813a6737c5edacab3f1f3563e86f8', '173.254.76.196', 1501509601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530393630313b),
('ff5413ddbc5811333807b227afc8a0fe43414cfc', '190.181.45.225', 1501510187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313530393930353b),
('574a14efd84c75a75f7e2ed36b86022285489515', '190.181.45.225', 1501510669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313531303439383b),
('51865fb5e7fa44ead8b755a5743dbb516752d0f0', '190.181.45.225', 1501510825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313531303832353b),
('06c7385a9acd14b6cc290c0cd5fff916a0f495cb', '173.254.76.196', 1501513202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313531333230323b),
('f0877465d3ed388eeb0c0da43a9d8692d649e0cb', '181.16.1.57', 1501514311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313531343331313b),
('9a5efaf1551f7b822857779e07cc49efc4fb9448', '54.165.90.203', 1501516064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313531353939303b),
('1626f6afc47940731a10928c2a7d12f950398fc3', '54.165.90.203', 1501516112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313531363039353b),
('ee6c814d5a39efc0dd1d482c206a46738cdf6ed9', '173.254.76.196', 1501516802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313531363830323b),
('1bc4c6baa50db5619177a10bf932a1d649d2f460', '190.181.24.177', 1501516897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313531363836353b),
('c86865d03db61379348dfda70bb4b41a878404a7', '173.254.76.196', 1501520402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532303430323b),
('554b4731e812e39613c9192559065bbdca8212a1', '173.254.76.196', 1501524003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532343030333b),
('6941f344b7c07b19dff4d413e4b8125758aace35', '190.181.45.225', 1501525968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532353936383b),
('4dcaf57172d404ba561d0f6d6ae32686d8b547b7', '66.249.88.56', 1501526242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532363234323b),
('5ab4ad83c33c0a1835b417d95ec5982f86f10087', '191.116.126.207', 1501526862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532363736383b),
('e9027530c3c924d3608414f641e11b508b7a813f', '173.254.76.196', 1501527602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532373630323b),
('434e934c9ee6d230c850c7bfc31d2a4345e9f0f5', '54.165.90.203', 1501527709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532373634343b),
('7503b43578679b53229c1181ca1422edfac1ee79', '186.121.242.58', 1501528580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532383538303b),
('1911acda5cd46799bd4d17e0f48ec692aa12a796', '104.237.242.134', 1501528614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313532383631343b),
('cf5e5ffedc4acccaf8b7d362c79fca270062efb6', '173.254.76.196', 1501531201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313533313230313b),
('5ea8419f29fe0a4a26406bb6aaa55c68440a330c', '173.254.76.196', 1501534801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313533343830313b),
('86ae2f02ca2b247cc2d3e7ded1dcdbeb1c585036', '173.254.76.196', 1501538401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313533383430313b),
('b659dd7659d657320ec10f21405e38a67ae72190', '200.105.184.244', 1501541951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313534313932333b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('a96a0a554512b2a6679523d145cde1198707bea7', '173.254.76.196', 1501542002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313534323030323b),
('6a7cc631081be750332c74166cf05e7cce8d897b', '200.105.184.244', 1501542826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313534323632323b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('9ec6de5c122e0dfe9f222513d8142751383f750b', '216.244.66.198', 1501544191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313534343139313b),
('b07777c65421fc3efefc6cbed3bee04fb0e2d460', '216.244.66.198', 1501544854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313534343835343b);
INSERT INTO `sesion` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('9359eb3888f0e5a4e13fc5a70e1eaf307572651e', '173.254.76.196', 1501545602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313534353630323b),
('23e027ac2e909cbe57832f8917634c3ad3255679', '54.165.90.203', 1501547916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313534373931363b),
('2d224ef76176fa31b3605ec5b239d1a5a3ba3e73', '173.254.76.196', 1501549201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313534393230313b),
('741813c93ee38fa3674525f2274955b9a680f96d', '216.244.66.198', 1501552006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313535323030363b),
('c796c880d09a2a60f2d25cf34d9df91607f353cb', '40.77.167.85', 1501552419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313535323431393b),
('a6f9c1ba2c6dbb2fb1d55d619b40ae3004e4a1b8', '173.254.76.196', 1501552802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313535323830323b),
('c49ffe5618356d53d9cc808c2304a4a6a653f1e0', '180.76.15.11', 1501554731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313535343733313b),
('c058643b117a7967cfb1918e0c03db75be486076', '216.244.66.198', 1501555027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313535353032373b),
('896f4411c42fe9bd4d57d55c30423310c7c9f878', '173.254.76.196', 1501556402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313535363430323b),
('7e94276009036c6cd745f747257e1b29b7cbdd2f', '173.254.76.196', 1501560002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536303030323b),
('0a7f2729bd9e961a7986279e0d71021f2d6d2f0e', '216.244.66.198', 1501561463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536313436333b),
('457686a2edd5f5ba1ffc86bce454d5963437ae18', '216.244.66.198', 1501562419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536323431393b),
('227bdee805c2a23a32dedb0fa083250d32354dc8', '77.75.78.162', 1501563393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536333339333b),
('d37c6e377f253718c55fb80bb5012670a8a07786', '66.249.75.5', 1501563601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536333630313b),
('b667cfba3fbb63e3a00750cd5fc29708d076d79a', '173.254.76.196', 1501563602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536333630323b),
('2c85c7a4ab74163b8b278997085b29be3c577f8c', '173.254.76.196', 1501567204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536373230343b),
('c1103a9552f0048117ef824c5e89e5dcf43cc041', '54.165.90.203', 1501568652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536383635323b),
('5dccfdf2dc1c8ea85b6a8b2e4bc2640534cc989c', '216.244.66.198', 1501569774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313536393737343b),
('0cf82fc01cbce9d2f65d883d7b637c52f5ccb292', '173.254.76.196', 1501570802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313537303830323b),
('5e293a4c6d51c34a3e4e443d3c1f1bf2728c836f', '173.254.76.196', 1501574403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313537343430333b),
('481aa0c56e8e46b034f76ddf3093b383c89a139f', '216.244.66.198', 1501577173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313537373137323b),
('2f53788498c48b403dc2c2c3b8464af459f02802', '173.254.76.196', 1501578002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313537383030323b),
('c9bf152bce987fac9805082625e35dda6b774c98', '173.254.76.196', 1501581604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313538313630343b),
('0b0f7c78af7f2ecd7b0be2de0aaa484fa56b23d6', '216.244.66.198', 1501584447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313538343434363b),
('13eab6b6d84e46697e207a3fc8d0c497863d57c6', '173.254.76.196', 1501585202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313538353230323b),
('5502b694a79d62a8416729cf4de63f8fdf967e37', '173.254.76.196', 1501588802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313538383830323b),
('44fa97c5bfc2874d31b9152b9c4d2a10a630846d', '173.254.76.196', 1501592402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313539323430323b),
('0d24a5cf99f34f0da342f7ebf9eda129553aadbb', '173.254.76.196', 1501596002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313539363030323b),
('d8fcfdf3c26465785756e7855320fee90e497349', '186.121.242.58', 1501599458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313539393435383b),
('aa7105ff1ae4849eefcfee9aa72b7fef48fa6900', '38.80.23.67', 1501599526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313539393532363b),
('6b9d0dcfa4287ecbf826027639676d2fdca88176', '173.254.76.196', 1501599602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313539393630323b),
('ebf53fea93207713dcdfc24712c617c2a91814c9', '190.181.60.74', 1501601488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630313230323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('aca7ff2f78e1bc1282b7f0167fcf16f9632890b0', '190.181.60.74', 1501601787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630313533363b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('723e787601a42b6c37da7b3549bf7e19ff1a93c8', '216.244.66.198', 1501602343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630323334333b),
('e27d6efa4a53961dc59d4af5a24aeeea56c69679', '173.254.76.196', 1501603202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630333230323b),
('3deb92b33ab5f476a4a89d1cd1bd2e45b3d1513e', '186.121.242.58', 1501604999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630343939333b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('bf9d9bcd5b918f1bc35c7debbce7703eecb45290', '104.237.242.73', 1501605027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630353032363b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('0625f58f95fecb65ec692cb68edb77a8f6a043b6', '190.3.90.226', 1501606193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630363033303b),
('fa75277da9657748d44280ec4ac78d9b315c9788', '173.252.120.121', 1501606186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630363138363b),
('684311cbea3d6d1cfec50d27f276efb164283e64', '190.3.90.226', 1501606445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630363434353b),
('b05e7c5f4f09a4ee275993511eb9dce105af6cc5', '173.254.76.196', 1501606802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313630363830323b),
('50ad53e47c7194098911a2d52d013aafd4db13d6', '173.254.76.196', 1501610402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313631303430323b),
('3aeb9e812941b2cfee59504cfbfcd9ef0f5c761c', '66.249.79.92', 1501611011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313631313031313b),
('1bc8c4d062dc2d058016287e87218cb4862e948e', '66.249.88.57', 1501612809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313631323830393b),
('b6419220ab5ec74bbe1b15f252c4e1ded07e2d0d', '173.254.76.196', 1501614001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313631343030313b),
('17a8b6bc68d44f09b4eab339931aaa676e65c2aa', '35.163.4.225', 1501614078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313631343037383b),
('1c56a105605778fb8d0763247e3e30079f79b30f', '190.181.60.74', 1501615545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313631353337323b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('5d2f64e18e3862b903b3b93d3352aacf1135810e', '190.181.60.74', 1501615822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313631353732323b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b),
('b656cd270bf4c0d347dc1b1e16d92eb19953ac7b', '173.254.76.196', 1501617602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313631373630323b),
('7124ac19852c29884f6d3f9b1aa4d4b780b3ce9a', '190.181.60.74', 1501620194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632303033373b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b),
('f96e93d596326683df4989f57061783e71fa3b5f', '190.181.60.74', 1501620648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632303433303b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2231223b),
('719580f4a92f41234c74314313404b7f00063f2b', '173.254.76.196', 1501621202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632313230323b),
('0634f526f9315fceff0b8eb93a0650dffc69ed77', '216.244.66.198', 1501621644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632313634343b),
('b58afcc5c2156ba267db83a4ff90d9cd0daa1892', '190.181.51.148', 1501622934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632323735323b),
('a6e291348701dded28e5c8bfdb130df86a760e1f', '190.181.51.148', 1501623240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632333132393b),
('3c677aa1a126530409a288995c873d3a15beb295', '190.181.51.148', 1501623522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632333438333b),
('660b1c14313202a4db4a0cefadc00553ddecc034', '181.188.184.179', 1501623800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632333830303b),
('aed4e09b6d689e645a1fcff54b49d53f3b6fa975', '173.254.76.196', 1501624802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632343830323b),
('34a678c56533f93eed97512a1758c1af84eea3eb', '200.105.184.244', 1501624887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632343838373b),
('386a0d0caf1fb9282fbfa8ee61830ccafa0a09ca', '200.105.184.244', 1501625667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353632323b),
('124ceed95ef707388b6afb043ab636b82db86bae', '86.58.206.100', 1501625918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353931383b),
('42e937c6e43497b235de5fb2f8e1c0cc084748b9', '86.58.206.100', 1501625919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353931393b),
('6cd09cf30c17e7c2e582dc25d5b64f844117de50', '86.58.206.100', 1501625919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353931393b),
('6b9b1b0369a3d57dbb73a46104cb1c01259457d5', '86.58.206.100', 1501625920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932303b),
('f413c8ad385350655ba4b3a42c8b0b1fd6cd1f85', '86.58.206.100', 1501625920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932303b),
('7a5fc05ed7947591df96d0b4ab8dfa46373f5a8b', '86.58.206.100', 1501625921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932313b),
('0b1194dded8bf31ba485f17507033cb0fa422fd2', '86.58.206.100', 1501625921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932313b),
('02ccbf727ac2a00bafeeee145db8e3c815526d5d', '86.58.206.100', 1501625922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932323b),
('e55fb72135765321b96221cc49fa695684cabcaf', '86.58.206.100', 1501625923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932333b),
('86c0665ac7681048360d588704d3e0dcc37c7544', '86.58.206.100', 1501625923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932333b),
('241a7f094b2b1a189e39455fa92a12dd669dbb79', '86.58.206.100', 1501625924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932343b),
('a42c3101d901a7686e693fb314a6ecb2bd2a9c9d', '86.58.206.100', 1501625925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932353b),
('407b26957a720e43d800d5abf01c8e73ac0c654f', '86.58.206.100', 1501625925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932353b),
('7f895d79fb711145f00eb5cf5deff3de1a892938', '86.58.206.100', 1501625926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932353b),
('60047daca78865ad9de90ff684b334c67e067c96', '86.58.206.100', 1501625926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932363b),
('62508e1717afe9028200fe14c34dfe078cdc2ea4', '86.58.206.100', 1501625927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932373b),
('5c7fff7541af07b577095a34ce3647f41a704996', '86.58.206.100', 1501625929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353932393b),
('f603235ccb128477ac3c0063f3e7b40e51402bb3', '86.58.206.100', 1501625930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933303b),
('b7c72c49adaf835083095bf3568b4ab24ce6fa2a', '86.58.206.100', 1501625930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933303b),
('ca6493f102804c765e48f7b8e399f8fd8dfe2411', '86.58.206.100', 1501625931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933313b),
('e74be56f0a17125ac19d7bb92004c1e8727fffc7', '86.58.206.100', 1501625931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933313b),
('048b2d93ef4e93b6d4c55bf9a0fa0f55a1d9f4f9', '86.58.206.100', 1501625932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933323b),
('3c3cadc8b27db8d9312d9eaea9c020d795290bcf', '86.58.206.100', 1501625933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933333b),
('ad8bd4cb45cd1151fe61607e51370960139330a6', '86.58.206.100', 1501625933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933333b),
('a76e87ce2d12eea802b779e05013e0bffa18feb2', '86.58.206.100', 1501625934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933343b),
('ea4faec35e7013ac77904bfb13d1b84f9ee632ef', '86.58.206.100', 1501625934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933343b),
('3ce9d8a2dcd1db7e1978e61b15ba62d2ccb9b181', '86.58.206.100', 1501625935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632353933353b),
('7a7b0021f02bc3688d93af79046dd4999635ff2b', '200.105.184.244', 1501626382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632363338323b),
('436bc5c47bc8c4f82375b7a05d6cabd46be44b9a', '173.254.76.196', 1501628402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632383430323b),
('a587699454232f6d315d1c9cea98a19fbe02c61c', '216.244.66.198', 1501628962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313632383936323b),
('11f7333bf31ac45eb63ad1947e1f66c0f90c74b8', '173.254.76.196', 1501632001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313633323030313b),
('075f66f70c6f088ee07150f67ff1ca57ad43593b', '190.181.45.225', 1501632885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313633323837363b),
('1c3699797ecae10044502338b2dc705af07ccfc8', '173.252.88.191', 1501632880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313633323838303b),
('73e9bee2a72d42879b9e1a015c414541f2ba398d', '173.252.90.84', 1501632887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313633323838373b),
('81927a6caf6bf9e1a88445f5bad6cc1bfaf0bdb9', '173.254.76.196', 1501635602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313633353630323b),
('a81815c27cb300d85ce1011c065b69149d1e8f54', '190.181.45.225', 1501635650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313633353635303b),
('92ddb870575709d1edeebfaebd3ab0f86bb783d4', '216.244.66.198', 1501638150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313633383135303b),
('c7cec7b8cb68886dfa20e4294abba4e3b7749549', '173.254.76.196', 1501639202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313633393230323b),
('8fb33cbe24e7049520c45017c0d85e32c7a73922', '173.254.76.196', 1501642802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313634323830323b),
('131dea5939a5005c09d3dbd2b9166d2a9094d134', '216.244.66.198', 1501645637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313634353633373b),
('489de85131e7f5dc2ad3d44009a5e6615d1716d0', '173.254.76.196', 1501646402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313634363430323b),
('77e1de98196a75d885f498aee27d81427d8d762d', '173.254.76.196', 1501650002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313635303030323b),
('f794ba170402c0f192e905b115bc1a5f5eb92b90', '173.254.76.196', 1501653603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313635333630323b),
('679af696e30eb8b583c74f65cb016f2d776a341f', '173.254.76.196', 1501657202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313635373230323b),
('8b78c195f74df2295d55b160d66df263c9cc3e3a', '173.254.76.196', 1501660803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313636303830323b),
('8a0312b6b33f8afea6473108b2b2d991b524e76a', '173.254.76.196', 1501664402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313636343430323b),
('6d310ad3a57cb79c7f25e91ef758aec490a01313', '216.244.66.250', 1501666734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313636363733343b),
('3140824d86e078b74e50e3c31aa1efbe6916b393', '173.254.76.196', 1501668002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313636383030323b),
('9d227a71b9a580cd7335969c03e3e7f77869a74e', '173.254.76.196', 1501671602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637313630323b),
('e43c2b7ab7262e715acdf7fa0ecfb46f6b94d1f3', '66.249.79.90', 1501671615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637313631353b),
('bc144e42e07633b1eb29cf82b8a8f811acbc7837', '85.143.218.11', 1501675055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637353035353b),
('469800e334b93871448bf7e7628a374df7b665d7', '177.143.18.92', 1501675060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637353036303b),
('0b7445d469ff1a41bbc77b0508b7a776103bcfaa', '173.254.76.196', 1501675203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637353230333b),
('892e0980bf870eb7638cedc1efed0d1ba17b1ea3', '180.76.15.10', 1501675830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637353833303b),
('8dd64c871923215a7137cd4d13025ea5007914c3', '163.172.71.23', 1501676266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637363236353b),
('5092a456248ca8ce51156fa0979cb5848e0f6ff3', '216.244.66.250', 1501678088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637383038373b),
('925b7c4c5beb1e059213156f4726717a749e22a8', '173.254.76.196', 1501678802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637383830323b),
('fd44cff2dc5f9f85a7ce191be4e91788d8a7d870', '186.121.242.58', 1501678847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637383832343b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('7237c11ca0228b9380a661d8f80cbaee0af32649', '104.237.243.80', 1501678900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313637383930303b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('bc1e68e06efefbfc2c5e581f14627a999c765373', '66.249.88.1', 1501680572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638303537323b),
('79deddc9be099d1e4c580cd0a4b587905ccf685c', '157.55.39.38', 1501680788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638303738383b),
('385fa5098d04215eebb5510bf382fb97a8011c84', '200.87.9.141', 1501681848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638313731363b),
('657412b68db1735bf3d1fa998d76ba2799dd397b', '69.171.225.24', 1501681843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638313834333b),
('29960279ee35617aef1b9de4c6bacdd2d611b60d', '200.87.9.141', 1501682106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638323130363b),
('8b8f23a0d9ac79a8e8d8252e894ac6b20aaf8e9e', '173.254.76.196', 1501682402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638323430323b),
('67582ef8e63fd6e0b887a94983171c5114f2c103', '200.87.123.58', 1501685334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638353333343b),
('6e8a246a23bbc8a083bb27ebc81fee2e39fd3441', '173.254.76.196', 1501686002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638363030323b),
('8272573729a85ec86dd895a0cadc1c201d73392a', '173.254.76.196', 1501689603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638393630333b),
('0682514f024542a1069ca074d02f373c1e9a2b80', '190.104.28.29', 1501689949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313638393934393b),
('c35ae812cb8defbb4983cd466f3d01cbe4a9a733', '216.244.66.198', 1501692908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313639323930383b),
('745be4bc841be370a7475fc7898d834d4c09d183', '173.254.76.196', 1501693202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313639333230323b),
('993ae7fabebc567c7fbc0fff6a65e3d4a4ed3a40', '173.254.76.196', 1501696802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313639363830323b),
('599db99d051b276c39862d44c5083946780987fd', '173.254.76.196', 1501700402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730303430323b),
('bcac38abe555968a46356326bd32c0367dee61cd', '190.181.60.74', 1501701190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730313032313b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b),
('2299588842200e7b22663ea25584edd94ef82e45', '190.181.60.74', 1501701551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730313533383b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b),
('49e683068cea21c76841bb41857bb4613f921610', '66.249.66.66', 1501702022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730323032323b),
('41f8889371ef3f85f307062c743a3e5abf625e41', '216.244.66.198', 1501703612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730333631323b),
('f5fb8c71fc11eec12f5fac9a7d3ccab0ec2ac873', '173.254.76.196', 1501704002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730343030323b),
('49cac87000be7f5d1ed28df9ae77666b24d1ff98', '200.105.184.244', 1501706441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730363432363b),
('cd3429e8ab93221a2fe457a0af396aad07399a4d', '190.181.51.148', 1501706788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730363537333b),
('637e4f25771a6adee345a94f8aa2ce772365a053', '190.181.51.148', 1501706906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730363930363b),
('0ce827fd61133f036443c5d58fec4301b4defed9', '173.254.76.196', 1501707602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730373630323b),
('d84b961cbaf580b1b2c00ef7fa2d0ea4cbaff3c0', '200.105.184.244', 1501707814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313730373831343b),
('73fb468ed048d25d3f5a3c7341445371acb7159c', '190.181.60.74', 1501710157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313731303038313b),
('d0a87aa7c0ad3bc10f39bc82d091529793490ec6', '173.254.76.196', 1501711202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313731313230323b),
('e449ff946d0ea7b40fa755eed1cfd71b2654162e', '66.249.66.68', 1501713288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313731333238383b),
('c4e2b7ec68daab6020fa0f0c4c8ad5eda259d679', '216.244.66.198', 1501713375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313731333337353b),
('f88c2b4953111b8c8b84bbebaf8300189644fe56', '173.254.76.196', 1501714801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313731343830313b),
('8e9cf63b1dcf2bd2d243df3b8fe66bb09453d7df', '66.249.88.57', 1501716951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313731363935313b),
('de8d3272d4cd4b04c89f21ba4f1ea82e8bfa4aeb', '173.254.76.196', 1501718402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313731383430323b),
('014ca917d48251e20893cf4ec7a0fa6043dbda7a', '163.172.4.153', 1501721242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313732313234323b),
('b0e2b22e3395fe68a4c10fa019bab9e98d94e21c', '173.254.76.196', 1501722002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313732323030323b),
('f4c77028121c5fa25759eda4ac6b3919f3552751', '180.76.15.11', 1501723348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313732333334383b),
('36d04e34cc248619e2d7ccca7ed2292924e7f5e0', '216.244.66.198', 1501723672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313732333637323b),
('8bcece0e8c9666f9c9f0fefbf7a78d8c16536177', '173.254.76.196', 1501725602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313732353630323b),
('8b3a9bedd52ee434494af357bd908f15a20e08dc', '173.254.76.196', 1501729202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313732393230323b),
('6854d3b7a4f0933cb58ae850965dd553b8799a43', '173.254.76.196', 1501732802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313733323830323b),
('3856f0e556b71eb2701b07598a56cf5961b4bb1c', '216.244.66.198', 1501733382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313733333338323b),
('989568a105fcaf7ac0cdf98ac6406db76caf1a10', '216.244.66.198', 1501733395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313733333339353b),
('0bd8971ae6fefd4f0f77842d71bc1227282c9c8a', '66.249.66.68', 1501733446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313733333434363b),
('4851ce2fa63c3349338354b34e47e77d81c6097f', '173.254.76.196', 1501736402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313733363430323b),
('5d5d066d49270e5c28cf647d5b8554243a57c1e7', '216.244.66.250', 1501739916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313733393931363b),
('86c3d48410961bb7ef5ad8b828bedf3948cf525e', '173.254.76.196', 1501740003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313734303030323b),
('970deb0326b7c5afdec5d792aa0a41a0d0da5b82', '83.149.99.151', 1501743018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313734333031383b),
('5409b0369235eb597d47c36aa1b110f613f417e5', '173.254.76.196', 1501743601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313734333630313b),
('b4286fdd8962010ed897ef56a93450929502b639', '173.254.76.196', 1501747202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313734373230323b),
('e20cde44cfdd737c3be323615dfe9b03f352e51c', '173.254.76.196', 1501750802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313735303830323b),
('7731f2cd9804d6084c11882f9567ae46ce4c3ca2', '77.75.77.62', 1501752029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313735323032393b),
('a0e49e40bf913e5e049e3be2a91a5c780a599fee', '173.254.76.196', 1501754402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313735343430323b),
('a95115fac454d060dd160301fd85940c12d86f21', '173.254.76.196', 1501758002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313735383030323b),
('26a176b6a18c5ea9c460b03af78ee4eb48da3b56', '173.254.76.196', 1501761602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313736313630323b),
('ae9619eeaa558cc9ebe5f913dc9b5a2ad8d379fa', '173.254.76.196', 1501765202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313736353230323b),
('5d23506aaad24c1e3b6c7b89e4419c4fa28a1afa', '66.249.66.68', 1501767506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313736373530363b),
('36da804e02df63a3b17691e7c87fbca675d63266', '173.254.76.196', 1501768802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313736383830323b),
('a2a1172aea415dfea7dcf73e5d31afc18adb80f2', '173.254.76.196', 1501772402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737323430313b),
('21283668e3c0068c9aa454f7a7c612aaa4b707e2', '64.246.165.210', 1501774991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737343939313b),
('b45f67566e14f386b7a49dad846d3034fe3c0495', '200.105.137.91', 1501775997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737353939373b),
('a23a70ec4392781f8f4f39bb1cf0c80a0e3be444', '173.254.76.196', 1501776002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737363030323b),
('6ac2d4b7342c06d0fc6e23faaca6b2cbf7c82ded', '216.244.66.198', 1501777184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737373138343b),
('9e12ba06f5d8a46519bae82045b33319cbc90cbd', '180.76.15.10', 1501777717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737373731373b),
('17c0c513d52619176673c57b004836a9736a3c87', '68.180.230.222', 1501777720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737373732303b),
('86dfa2050fc82ffeaacf931ca3e6568820a7def0', '190.104.28.29', 1501778558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737383535383b),
('a4e39c910d33fbc4d5b788fe0ffbf716b1bea642', '173.254.76.196', 1501779603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313737393630333b),
('8ee57013e00f3ce84dfd2a0dd1d19835dfa35d5d', '185.17.121.43', 1501780572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738303537323b),
('915e173dc257556e6682d79dbfb5600313e837ac', '185.17.121.43', 1501780573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738303537333b),
('379b87de413355b535be399ec746f3c2d85fe2bd', '173.254.76.196', 1501783202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738333230323b),
('41f0ed5a619e49d3535ea16938deab8df3c18049', '190.181.0.32', 1501784263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738343232363b),
('9118017103506eb0e01efb0b415f960dbb803aad', '173.252.88.95', 1501784266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738343236363b),
('030b9b28a42a9296d265e905f8aef3ac7f61fbaa', '216.244.66.198', 1501784520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738343532303b),
('3d5bbd149411851e968b1dd22e81ec61868165b9', '66.249.66.68', 1501786788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738363738383b),
('90c3652aa1873ad2269a046f9ea4b1a37de1cbda', '173.254.76.196', 1501786802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738363830323b),
('18f9c73e1ee9e2a5d464a3f7fb7c82e645a082a2', '199.58.86.209', 1501787539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738373533393b),
('3e45aae24951b8c3a744d9b985ca778bb35d2138', '190.181.0.32', 1501789191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313738393139313b),
('cb23ffd2cd641da1aa88b1f5e9bffa8462dac2bc', '173.254.76.196', 1501790402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313739303430323b),
('6ce12a755ce732c7b9046c8df8e4338b1c8b7d87', '216.244.66.198', 1501791704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313739313730343b),
('4e04a45171bf3c68dab3c0cbf7b23913774dfbb3', '173.254.76.196', 1501794002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313739343030323b),
('a16718dcf265e307cc517fb18f600b4f9256100e', '180.76.15.149', 1501794923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313739343932333b),
('f5590193abcfcfbcc1a728fe3e54b5a1be82fafc', '173.254.76.196', 1501797601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313739373630313b),
('0fe14ec6e356ae06d6b2c9d7cfbf2a1adac51fd8', '173.254.76.196', 1501801202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313830313230323b),
('9e05b912bdd10198d586145402ddbeae76713881', '173.254.76.196', 1501804802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313830343830323b),
('65991126befa429506a8d7f49aee8a5585403195', '173.254.76.196', 1501808402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313830383430323b),
('606f08be97d0c68239cb2f9db9238eb1af5c5229', '173.254.76.196', 1501812002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313831323030323b),
('924d3faeb069cb552336168fbdb84e3266f46df0', '216.244.66.198', 1501812328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313831323332353b),
('24de2d1c3dda88864d747d60430742f3a2eb22a7', '173.254.76.196', 1501815602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313831353630323b),
('cdeeab4b52a3179d8dae5d8a727afd314da096fb', '173.254.76.196', 1501819201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313831393230313b),
('ee67e2c7457bf2f1e3370b9c7caa67a90858a114', '66.249.66.66', 1501819997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313831393939373b),
('d2c0c87a4fc5b317509ad1b949d13411a37f3a5f', '180.76.15.154', 1501822232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313832323233323b),
('01af8a147a7398b25b26f58f914004d6363b7cec', '173.254.76.196', 1501822802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313832323830323b),
('262486f6c6741baa970b2fad1a41d9e8c773f46d', '173.254.76.196', 1501826405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313832363430353b),
('6c7bb03ebbd415299ca758f4e6973fa26842f1da', '52.41.211.72', 1501828206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313832383230363b),
('c406acbd845642f32cbbd2aaaf9808257bba04a1', '173.254.76.196', 1501830003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313833303030333b),
('4cb44ec8dd6e5dbde8abd27bc07cc27cf1995eed', '66.249.66.68', 1501833430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313833333432393b),
('0c9d7dc84dfda65deb5045d176c5504fb96b0fa3', '173.254.76.196', 1501833602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313833333630323b),
('75155696540261b0b62840a7ad755a39ab47e06f', '88.198.23.179', 1501835686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313833353638353b),
('27a1b0ee63e79ea8963386a46047e64c3a1fb18d', '173.254.76.196', 1501837204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313833373230343b),
('dbbf718e55c52d79b31c6dcb341167d231c6da43', '173.254.76.196', 1501840803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313834303830333b),
('67e1f41be5163d3683fa24bbf64c6e15f2dc271e', '173.254.76.196', 1501844403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313834343430333b),
('f3530c947d49cbd56c52ad9060c65d4ca96a481e', '173.254.76.196', 1501848002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313834383030323b),
('4ddd6ec4830bfcb9a33972a7b39db9652ab890ee', '77.66.1.97', 1501848695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313834383639353b),
('12e7044a32d5a89c649e539dc15b7e091605a66f', '162.210.196.98', 1501849036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313834393033363b),
('82e7c983dc7493bc932e7ce8dc301a19e43014ae', '173.254.76.196', 1501851603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313835313630333b),
('da71cd4fb66525e02c4507be6b3af915d8cf182a', '216.244.66.250', 1501854571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313835343537313b),
('2691c926ab445845314d400a8b7a6b51b97aa4dd', '66.249.88.56', 1501854669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313835343636393b),
('97906a64bb826f9aa23b1de57eb57df2d89d1eb4', '173.254.76.196', 1501855202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313835353230323b),
('5dd74de26252f675487a0d876b44e39f45ee5ee8', '216.244.66.198', 1501856047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313835363034363b),
('633578affc9c915dba75f7aa75811a3f915b99d4', '66.249.79.94', 1501857336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313835373333363b),
('f67d53eafbef6cfec987db9a5ad1d281a82c935a', '173.254.76.196', 1501858802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313835383830323b),
('29e7f25167b7a842f83c6bf8dbb7716f12f390ba', '173.254.76.196', 1501862404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313836323430333b),
('a66d83a3fce04f25c34238aa330b0f9f927acb51', '66.249.79.92', 1501865013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313836353031333b),
('3745392fc3470e0c9bf81f2f1799cd0862bf0dc4', '173.254.76.196', 1501866002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313836363030323b),
('efe03f8157ba911015f4e3bf9dc04760f39bab8d', '173.254.76.196', 1501869604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313836393630343b),
('e9939ff4b6958c86a12724f79c521efe9aec8218', '180.76.15.29', 1501873152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313837333135323b),
('b7bb1b53fdc789d0cf76af6e1076e5a1f67db3e4', '173.254.76.196', 1501873202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313837333230323b),
('77481a18fc3296198e171edd6055e0bfb947945f', '66.249.79.90', 1501873267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313837333236373b),
('cad2a873627d0e665fe7024522a6dc1fe49436db', '173.254.76.196', 1501876803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313837363830323b),
('1c294e25d3f69447568d6fea464df5fd978bbffd', '173.254.76.196', 1501880402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313838303430313b),
('7435e3910e7f100f4cc1f7dd078a26009712285a', '66.249.79.94', 1501882045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313838323034353b),
('71ab910402b61858689472b79b9ff351ba74e83d', '77.66.1.97', 1501883146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313838333134363b),
('aa9da6b0646ec57c75cbb7b01f2a3972ddab0c03', '173.254.76.196', 1501884002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313838343030323b),
('0d83c0edefad22eb4eac78bc09ac1bf05a4a96c5', '173.254.76.196', 1501887602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313838373630323b),
('03f0feeb513f4355f0265ca2504f95d951236628', '66.249.79.94', 1501888157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313838383135373b),
('40d69c6c79094ed6b05a73d59ffafa4a6e9c6e4c', '77.66.1.97', 1501888176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313838383137363b),
('7202501cd9c76d182504adb69f9f27d654184fef', '77.66.1.97', 1501888322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313838383332323b),
('aa5fde93d520fc7c5e5d0ff721a93104ec07e522', '173.254.76.196', 1501891202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313839313230323b),
('632075816354ec9514cd85645bcb7ccc02dd98b5', '180.76.15.158', 1501892818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313839323831373b),
('b67ecdfb2580d526a5f7498c3dd893d4800a16a4', '173.254.76.196', 1501894802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313839343830323b),
('fe398f8c1e65ef4f18b8d5ec29a14290417e57f8', '173.254.76.196', 1501898402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313839383430323b),
('80bd1e37eaf1b05e9f68b768be77a4da2bfeb0d5', '180.76.15.12', 1501901558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313930313535383b),
('9316b320515504aa719dcb08b310549ad0cc4569', '173.254.76.196', 1501902002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313930323030323b),
('98206b7d47ba89078f2a4021cb58ebb14d7e01f9', '180.76.15.161', 1501904179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313930343137393b),
('3f170ee42a40f44cfad91f9e421ed23a91ce7f2a', '173.254.76.196', 1501905602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313930353630323b),
('c3a62d5096cd268c6e3dca51e5196087a115f4f1', '68.180.230.222', 1501905904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313930353930343b),
('2f904983d51b4c1c2c988222b6ff9db1cd6cc2fb', '216.244.66.198', 1501906594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313930363539343b),
('6f223154d22694422e24a5018b16a6f3ea706f71', '173.254.76.196', 1501909202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313930393230323b),
('9620ecf057d89bd1aace283a938dca6447634737', '66.249.79.92', 1501909791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313930393739313b),
('8853a861e978a29683f543ce62687c96fd5851d2', '173.254.76.196', 1501912803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313931323830333b),
('9accc23ecd3349ca1d062df70dc9738903ba3ef5', '173.254.76.196', 1501916402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313931363430323b),
('51dd7fbf6acead983fa564fab52fb3beaff46040', '216.244.66.198', 1501916425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313931363432353b),
('c623771ad1aa3c50124d75a65cbe38a03752b3bc', '66.249.79.90', 1501916749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313931363734393b),
('cab4b4397f1fd128f870a3a7b99b03535df815ff', '65.132.59.34', 1501917255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313931373235353b),
('67ec564a5d360ed876ed26291d7e79e37489deef', '173.254.76.196', 1501920002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932303030323b),
('9e3da913cab2db59cf74b280bbea32493aeb6129', '77.88.5.58', 1501920383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932303338333b),
('73e8e3e46a522ffdef2c017cfa9a7bc2ec98d9de', '82.202.194.181', 1501923246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932333234363b),
('05ad8c7ff73a511649a2c65c8aa38941a1492d57', '82.202.194.181', 1501923247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932333234373b),
('6268d9d04e9bbc69270868561a93fbd15c6475b4', '173.254.76.196', 1501923602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932333630323b);
INSERT INTO `sesion` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('acd0adbadcd074c2a74235d846da0d6582f1460a', '81.177.23.52', 1501923635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932333633353b),
('693b2f20742dda78f314a078f6472e4fc118e9dd', '81.177.23.52', 1501923640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932333634303b),
('f2b829e26550bcf3482b72dde409409d11061691', '91.226.92.214', 1501923640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932333634303b),
('6e00c1bb9cbf92a2257e53d79e914b44ec66cd17', '91.226.92.214', 1501923642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932333634313b),
('f11c6dd76bd2e8574c3ac39c8bcbabba4f9d4b89', '35.162.70.167', 1501924734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932343733343b),
('6fb80255dd6c27a35a2a59238db74d4272c2ee14', '173.254.76.196', 1501927202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932373230323b),
('f43dd46e491b26f3bf93aa5000f78d6da7811f8d', '46.165.197.142', 1501927951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313932373935313b),
('8e9631bec856e234d0e1559d91386ce8e65f474e', '173.254.76.196', 1501930802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313933303830323b),
('244d90133400cd1a59053771d6b5be8bff8a227c', '173.254.76.196', 1501934402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313933343430323b),
('4d7260889015b136ef4b6b6299cb0b95e03907ed', '90.75.236.188', 1501935869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313933353835303b),
('d19a96e3dd8b8115477e0563f57f5fc9aea696c4', '77.88.5.58', 1501937379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313933373337393b),
('c61e1ea436f4a2389bab6a9dc7703908c15944a2', '173.254.76.196', 1501938002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313933383030323b),
('7cffc593559b4d16f63420e7ca96cc7f12409500', '173.254.76.196', 1501941602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934313630323b),
('129b5bcf16fa03dde26700bcd1336bc7b9685d49', '66.249.79.94', 1501944163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934343136333b),
('4d9d6953797f40a824c5b50c87b0a87b1bd25a36', '200.105.185.25', 1501944247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934343136383b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('1e63e2aeb203041c1f72be6b71854df22955e031', '200.105.185.25', 1501945018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934353031383b),
('56e85c4d65b6432d867b5fcbbe07f8c29f620d12', '173.254.76.196', 1501945202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934353230323b),
('a74731c8265917e3dab3b33973a66a51961847fe', '200.105.185.25', 1501945779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934353535333b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('caf22f1ccc223f91dda051d1e65890d6519c5ca3', '200.105.185.25', 1501945986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934353930383b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('60ab65760563c500298161f03fd086561c65879b', '200.105.185.25', 1501946791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934363733313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('c354be75570065f9640a20aa1646f7bbf8366d12', '216.244.66.250', 1501947710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934373731303b),
('a98c55519ba4c09d2fc84485e05e246acd05c357', '173.254.76.196', 1501948802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934383830323b),
('43c01d4647648acc1d3d39f9e850dc6d51927620', '128.52.128.105', 1501949949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313934393934393b),
('dbb8b23975ef8270fb3720ea271d54dcab912dde', '173.254.76.196', 1501952402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313935323430323b),
('1cc27ffd4fb452017b2f44c9587fa6e30716bfeb', '173.254.76.196', 1501956002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313935363030323b),
('ee1eb826b2e1ab63fcc47c2a34e66581fba17301', '216.244.66.250', 1501959299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313935393239393b),
('555a8e64735ca52e33e872f9b6c3e580c7e7781f', '173.254.76.196', 1501959602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313935393630323b),
('356260b0cebeff6d0878f102aa977024a2617484', '77.75.79.119', 1501960155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936303135353b),
('d326114b5648293df9e2a7efbc1dc9e4751fac8d', '173.254.76.196', 1501963201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936333230313b),
('bf4f4ba6c1852976d3b72bd0b1dcdaaf2ce18d70', '173.254.76.196', 1501966802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936363830323b),
('e2692d0815bf40f0a301c029558ef8c01fc2e111', '190.129.127.190', 1501968206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936373932393b),
('70d3944bd5337c49be66a7894ef0c81c4da9e13b', '173.252.84.199', 1501968133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936383133333b),
('f27aeb9057caa96aeeafb02b9fdc1f3b73f31b0a', '190.129.127.190', 1501968664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936383338383b),
('5af57ff0f666be506c3781bfb64a568e518a9f9f', '190.129.127.190', 1501969123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936393132333b),
('7b360ec9710813d693411405b056720f0eb2287e', '190.129.127.190', 1501969721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936393732313b),
('8e7cb8e1eac315fa361765db2771c1e37d3f02d5', '173.252.84.198', 1501969726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313936393732363b),
('9855fe4ac82d111370fc9780f4537b5fbbe087ab', '173.254.76.196', 1501970402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313937303430323b),
('dd855e259b35ac213272e00e9b17923288df94e1', '77.66.1.97', 1501972578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313937323537383b),
('3706f5291e2f0a03ec48944b213d97de98a585a4', '77.66.1.97', 1501972579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313937323537393b),
('4950d03150abce5f346def57191fb540ae7c127f', '173.254.76.196', 1501974002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313937343030323b),
('2ff39f72294e52feb49f4f4072e502a4efb12ddb', '66.249.79.90', 1501974833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313937343833333b),
('0f93a89d5954a27e17f70d0634dd2d8db7cff5cd', '68.180.230.222', 1501977557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313937373535363b),
('3456cffcfba7c1beb5a1c92957061feeccd516b9', '173.254.76.196', 1501977602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313937373630323b),
('4fbaa7234b1acbfa01759ad67183519ab76517fc', '68.180.230.222', 1501979394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313937393339343b),
('056ed837099b2a8e98d3768b9610a43b5382cb1d', '173.254.76.196', 1501981202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313938313230323b),
('a8806a4aa6b967a24384a2bb06d4d6aaf70b9e3e', '216.244.66.198', 1501983559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313938333535393b),
('c7cde0a3bb9367804c3be238a8ae2d06e5b8069b', '66.249.79.92', 1501984738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313938343733373b),
('073c47d009a5338ef41e1a18443419312a935f35', '173.254.76.196', 1501984801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313938343830313b),
('39560749e9f89d416447eb955f05fbc37c324b58', '66.249.79.90', 1501985969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313938353936393b),
('bb87c93e2deee1c0f674282bb13c179fcf726fd0', '173.254.76.196', 1501988402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313938383430323b),
('4d4ddb2d033c93f0759541ac620bf44b43c2be74', '66.249.79.94', 1501989298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313938393239383b),
('b1512c5c82041db984435999a3f990ddfd87467b', '173.254.76.196', 1501992002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939323030313b),
('f316215c25416a59157dcc0ab1b8a637917deaf8', '173.254.76.196', 1501995602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939353630323b),
('5d861ab42c3d729776b788c2b136b2ef3b834d2c', '69.58.178.59', 1501997097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373039373b),
('b198d87b8ba709db6052afc43c0395b35021474d', '69.58.178.59', 1501997099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373039393b),
('0341c1c559d02396d12a1a39fcaaf95f5454726f', '69.58.178.59', 1501997101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373130313b),
('cd7d699360d29ed664a9221a57a2bfd49d7c5bba', '69.58.178.59', 1501997103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373130333b),
('8b4e306c362745b7514a326c1345f6a3c39e01c6', '69.58.178.59', 1501997104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373130343b),
('2737c9ca8262b77321f2727ea8d5a815e566d0dc', '69.58.178.59', 1501997105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373130353b),
('2a94e629640510bd425e8ffb95750cf40a4bbeb5', '69.58.178.59', 1501997106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373130363b),
('c3916a5cfcfdbb3af1f13894a417bf6166f9ad8f', '69.58.178.59', 1501997108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373130383b),
('62e92ada52e0ea5ce1e8aa1b3dd144eb83f03ed0', '69.58.178.59', 1501997109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373130393b),
('247c49753470e5fc01b054db0ce61fde3b3d6baf', '69.58.178.59', 1501997111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939373131313b),
('6189a7c9b89b1f8a27b94b9b91364d857ec4bd3a', '173.254.76.196', 1501999203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530313939393230323b),
('b2523a236ddb20fb2c0db364832da95de3cac4ce', '180.76.15.6', 1502000275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323030303237353b),
('9c00b8b25eb70f54c8eab7ba88e2edd440547b2c', '66.249.79.94', 1502000626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323030303632363b),
('434f2ba797df6817f0793453f487547dc4481c23', '173.254.76.196', 1502002803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323030323830333b),
('6905d4633c930667abcfa63ca4f1779b32531c68', '66.249.79.92', 1502005498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323030353439383b),
('7bff6075b12f9351d0e1b1ed313975ce84a7fc69', '173.254.76.196', 1502006402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323030363430323b),
('bb20d93c99db3f1554797627930e453698dce717', '195.22.127.63', 1502006592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323030363539323b),
('7509a501b12f6acab867bdf57e3274336f863e52', '173.254.76.196', 1502010003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323031303030333b),
('46ab2c744466a46fbed913a17bb971294c2b76eb', '216.244.66.250', 1502011005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323031313030353b),
('89cf66d256ee96ae11feb93383b06c2fda348ffe', '216.244.66.250', 1502011089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323031313038393b),
('8128ebb801a350c81bc5747e73ad3869cd73ff1e', '173.254.76.196', 1502013602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323031333630323b),
('b979cbc44e59eaf480ce5c04fd8bbc821b8117e1', '173.254.76.196', 1502017203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323031373230333b),
('69822f27ffec1359180d4c5f2918781cf075fa6c', '108.59.8.70', 1502017594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323031373539343b),
('2873f4031a368679155dc8df629cb294eeee2193', '173.254.76.196', 1502020802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323032303830323b),
('c454c89d36efafef0a179af0135f951ddc627ce5', '52.34.24.33', 1502024196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323032343139363b),
('ee3f0e3ac2e9a883a8ebdaf768546e4072dc8972', '173.254.76.196', 1502024402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323032343430323b),
('beb346459a3c70c191ed35696b6e007870fdced9', '66.249.79.94', 1502025488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323032353438383b),
('b8475d8589382e80727e9ebb42e94fe73f5aa96f', '173.254.76.196', 1502028002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323032383030323b),
('8932f59efc5b55485bf40d6e9b3aa75681f396ad', '173.254.76.196', 1502031602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323033313630323b),
('6c350ac81a638119a825dde2840912f22a1810d7', '216.244.66.198', 1502034561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323033343536313b),
('bc477f975e39393bc39d82185cdf86db002b0492', '216.244.66.198', 1502034573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323033343537333b),
('fb4b0b9a83e4b898d6a10e6ee4cd2ccf794671cd', '173.254.76.196', 1502035201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323033353230313b),
('0b963a721ba07b0d6f02ceec9764a60ebaf998cc', '173.254.76.196', 1502038802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323033383830323b),
('a4bcdc071d2cfcfb69cde73cf1bb1002c44f8e44', '180.76.15.10', 1502041082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323034313038323b),
('88b12ef90c0ec06ca4b9775690b18bd560008fb6', '173.254.76.196', 1502042402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323034323430323b),
('7633a7bf81f7b3051c0c32dfd2e6141025dc6907', '66.249.79.92', 1502045392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323034353339323b),
('fbb745ec108ca4490320b257ea6fd45d82db5703', '173.254.76.196', 1502046002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323034363030323b),
('ec30b1238345d9f348aab636acb12b9aab3940a0', '66.249.79.90', 1502049276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323034393237363b),
('76ffad261434b00a741f09858126f9911289144b', '173.254.76.196', 1502049602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323034393630323b),
('0f32f781a53b1da6d8bb34c225f5dbad536fc27c', '216.244.66.250', 1502050671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323035303637313b),
('4544f16cb8d46f669e48b433abd836bdd70bfbe4', '173.254.76.196', 1502053202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323035333230323b),
('40956eeafc621e4a7bc0a3e0449a7d91d9111a75', '173.254.76.196', 1502056802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323035363830323b),
('547828439d20cef60caed9883eede2a4f60be314', '173.254.76.196', 1502060402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323036303430323b),
('0142cbda6b8ec515616c4247ec0014798c740438', '173.254.76.196', 1502064001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323036343030313b),
('5e67333efc47eadc3b792cf1264cd775e56be98a', '66.249.79.92', 1502064241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323036343234313b),
('4e7c38d8fbb0a7b05f45d38f0b0c7d854283f8f1', '190.235.75.68', 1502064632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323036343633323b),
('1a9db177e4f02bd199edb6709420239a35f657de', '173.252.88.88', 1502064641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323036343634313b),
('8a9bf131eb2f356390c181b0706c73dfcf4a09f8', '173.254.76.196', 1502067602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323036373630323b),
('85d958c29cd7fe20c12e180295d0c652595f0599', '173.254.76.196', 1502071202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323037313230323b),
('f16aa06fd5187c1182a5cfb50532608949e83275', '173.254.76.196', 1502074802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323037343830323b),
('bc5f2124b9c03b0dd9c44d858e6ed14dd60bda70', '207.46.13.23', 1502078327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323037383332373b),
('b06e1bacbd51c3708b6366cbd5c7c6e83e5189e4', '173.254.76.196', 1502078402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323037383430323b),
('3e4496548981f1141c522ea31dc8e7f045052730', '180.76.15.14', 1502081383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323038313338333b),
('e7fa737004559af2c17748650fc399a18624e38f', '173.254.76.196', 1502082002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323038323030323b),
('e826b6e1de42dac1e9f282060fd5ff10f3a1ae7e', '216.244.66.198', 1502083777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323038333737373b),
('12c9652907ad1abb40a480c7ae537364a37e656f', '173.254.76.196', 1502085603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323038353630333b),
('051706b4e2dbf65bf5d3a486a5d2d14be25c9472', '173.254.76.196', 1502089202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323038393230323b),
('e1edd63682ed99da3309d1c1801eb302f2b42ac9', '216.244.66.198', 1502092217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323039323231373b),
('d031c93deb43ad4b2a3fce8aa7ba3a1fbc63255e', '66.249.79.90', 1502092493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323039323439333b),
('2748585e65daa734dfe6897261fec04d3bdf80b5', '173.254.76.196', 1502092801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323039323830313b),
('cd5429f0937ff297354179eb88a3178d716574f1', '216.244.66.198', 1502093364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323039333336343b),
('087ead35673a91d6402948a976dc20a7021afb8d', '188.226.129.55', 1502095964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323039353936343b),
('27b834d12cc77beaa8f48904396382aa9c5cef1f', '173.254.76.196', 1502096403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323039363430333b),
('a89a7805bb2380c60fdefe7c356dcab6ecfa3045', '173.254.76.196', 1502100003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323130303030323b),
('1cd520ef0d3d2ebfc121b3c9afaae18c1825fafd', '216.244.66.198', 1502102243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323130323234333b),
('dcde8f44e57b019ebc3004a23f7d4367eeed70e2', '173.254.76.196', 1502103601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323130333630313b),
('7bb6bb0a1160631657a19031523433494d6200e4', '173.254.76.196', 1502107202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323130373230323b),
('1732346a3b5342e88704ac0cd11eaca2fc4d4640', '216.244.66.198', 1502109590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323130393539303b),
('bf9b7f762364f542758bc4cfd599fdedea3a5fab', '162.210.196.130', 1502110067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323131303036373b),
('5e6df7ca2156d2cdecb78a8833c7e90ee51efda3', '173.254.76.196', 1502110802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323131303830323b),
('72f1954b6836a90f816938b650beea7d640b3189', '80.117.92.107', 1502112105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323131323130353b),
('d7bae714ff807d552df1886261c5dceeaa3a9cf9', '173.254.76.196', 1502114402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323131343430323b),
('06c197525fef53a393c3b842a090bb886f38fa25', '216.244.66.198', 1502116726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323131363732363b),
('01665d9d089c296eb6c27bbc13dd2641a49e1b04', '173.254.76.196', 1502118002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323131383030323b),
('84d1373f0244fa00c7f79f79d4634c6b7bfa91ca', '173.254.76.196', 1502121602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323132313630323b),
('d3dc9489c8eb0d3fb77cd2911e1e6000dad795ad', '173.254.76.196', 1502125202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323132353230323b),
('29bc62eb217665b46a9a3e0228d6f9fff6d518c2', '216.244.66.198', 1502125980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323132353938303b),
('7adad008e7a3e192975cc6a3c088e01425bbad31', '173.254.76.196', 1502128803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323132383830323b),
('73e593ec4f5a98c036e2d418624e160d3f9c9823', '66.249.79.94', 1502130472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323133303437323b),
('d8306e44bdaec8c255fdbdc4bd7df509e5a3ed9e', '216.244.66.198', 1502131869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323133313836393b),
('f566819d9b91721dc51edd017bb41a9b6667fe7d', '173.254.76.196', 1502132402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323133323430323b),
('0b4e1675cbb2344a447bc08dd42d5a9c22ef91a1', '173.254.76.196', 1502136001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323133363030313b),
('bd70cf9cd6fbd27abdc799c22fb093755933855f', '66.249.79.94', 1502138979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323133383937393b),
('0814a8d9b0019fe6c7bb535cee2de96ac2ca9a33', '173.254.76.196', 1502139602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323133393630323b),
('4176368e2f77d8b59d600d8ab28a268212853e89', '173.254.76.196', 1502143201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323134333230313b),
('56cc02df17303621114303294f69dd0f319a36ab', '200.105.220.148', 1502145043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323134353034303b),
('f1f8ea98e35c72f7d62d8fa850b671dc9e76668c', '173.252.90.241', 1502145058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323134353035383b),
('42261fb90b7a6ae6cc3950db659927458d3961c7', '66.249.79.90', 1502146593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323134363539333b),
('e74a107a91949edf573457648480cd5c9c838f7b', '173.254.76.196', 1502146802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323134363830323b),
('36eef9975a58b6dc62ce6d8a2bba3604963ba98a', '180.76.15.159', 1502147319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323134373331393b),
('c32a72f351f027346a7d26e87fb7721144a31f0f', '66.249.79.90', 1502149652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323134393635323b),
('322bd0fffbf1fc12743605470fb6fd8b78c2f589', '173.254.76.196', 1502150402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323135303430323b),
('2e155ea19bf33436eb0511e449be1facc272e47c', '216.244.66.250', 1502150676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323135303637363b),
('c7d653acb9c022db5a597afc5f11c157e56aa503', '173.254.76.196', 1502154002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323135343030323b),
('4e3bd5bd79e71418d976ee9144e7eb598b16c8c3', '173.254.76.196', 1502157602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323135373630323b),
('d78662e4074853225ca0658a74d8d6e2dcbae170', '66.249.79.94', 1502159154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323135393135343b),
('658c89126c757ea79a9d64f0199b0bcbffa2a566', '173.254.76.196', 1502161202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323136313230323b),
('bf3c6660c212ed551791dbc85a5ad08e963027fe', '216.244.66.250', 1502161626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323136313632363b),
('c2466db6287e72f9f6a08263df48c9c6a90640fb', '173.254.76.196', 1502164802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323136343830323b),
('50848b0643bd21178c976947f94dd3de813a3691', '173.254.76.196', 1502168401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323136383430313b),
('cbe63e76d56376d68d8065074582990f1872e2bb', '66.249.79.90', 1502169239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323136393233393b),
('85d7837b7cb5d7bbc65764f17a111e9cceae439e', '173.254.76.196', 1502172004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137323030343b),
('8d1d724e65d8c2b8ec893f19a8400bb2ba8b92c1', '207.46.13.114', 1502172627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137323632373b),
('2487fab36ae14dcdf2ad9bdf28d270945ff38c19', '66.249.79.92', 1502172900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137323930303b),
('397ddb020fd2585d598e2a45ef125922dbe8cc26', '66.249.79.94', 1502174719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137343731393b),
('05dc93a904be90be453e62c3d01bdb74ca2ff894', '173.254.76.196', 1502175603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137353630333b),
('d3f9654b7bc4efde6149626a6a5f3cec3557c4f6', '66.249.79.90', 1502175959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137353935393b),
('2d0239019b25964d20a020109744968c1d802745', '66.249.79.90', 1502176879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137363837393b),
('0423c588fd3a2bafa8168fc5210279f92c76b03f', '66.249.79.92', 1502177177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137373137373b),
('018be99ef58bd802fb6c1ed88f195c0d708a653f', '216.244.66.198', 1502178969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137383936393b),
('13a16b180b35e3212509e4c8e11c8640d78d0232', '173.254.76.196', 1502179202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137393230323b),
('1dcf0f69b348f6ee699151d1f753043a69e8502c', '52.41.211.72', 1502179297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323137393239373b),
('059af639ee355411f28788f8336dd8cb0c8cd9c5', '173.254.76.196', 1502182803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323138323830323b),
('27f308acf618dbe750af6977bf8a6aae8b1de0e2', '66.249.79.90', 1502185379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323138353337393b),
('89b5cced4463b2f7a01aa276b13006249841f1f2', '173.254.76.196', 1502186402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323138363430323b),
('bd75c7abd701c41b9a3429d283d1e69f9373ee08', '180.76.15.33', 1502188094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323138383039343b),
('967db77830a10b34cc80d79fb3dab01cbca8c1ba', '216.244.66.198', 1502188998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323138383939383b),
('6d83ea298ba192c2597c2ea0db9ff880668b21f0', '108.59.8.70', 1502189854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323138393835343b),
('dda43c46786d9344faf910f8d3e6419c2b8d92b4', '173.254.76.196', 1502190002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323139303030323b),
('6c12652f5a3a485a9708f911e8d59e19a820d729', '173.254.76.196', 1502193603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323139333630333b),
('45cc087f08db9f7fc79b0286b058ed820c1fcee9', '216.244.66.250', 1502193804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323139333830343b),
('8534bfb5efbd7c3f21f535e47404551d329d9ac3', '66.249.79.90', 1502193989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323139333938393b),
('5b9927857a30c4e8c6149bd359d4f4746d8f218f', '155.133.38.215', 1502194298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323139343239313b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('d06b708519f41048f9c7f8d34a7992c383b1d50a', '173.254.76.196', 1502197202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323139373230323b),
('70eb6362e7bf1d211777a521f7a1775057559a3f', '186.121.242.58', 1502198110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323139373939373b),
('6129c8414915c039b4b845ac86c84acb93514742', '104.237.243.176', 1502198082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323139383038323b),
('e4bb1a1d62ff3a491c60f7aa99ac74e6222b65a4', '173.254.76.196', 1502200802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230303830323b),
('7f93154bfd56e882c602d29c2a5db1be3da8f24c', '216.244.66.250', 1502204261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230343236313b),
('0b696e4236b12698a8e94e4989d0c55c01d38c88', '173.254.76.196', 1502204402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230343430323b),
('8b7f05afa749f3f0e18e2fdb84100ae729f3dc4c', '190.129.71.227', 1502205813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230353831333b),
('7c86c96cfcdb12f3eae3ef87dddbff0afd91c428', '200.105.161.203', 1502206444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230363237363b),
('8fb9ee591302df95e9a5f68ea223c065d9e9751e', '190.129.71.227', 1502206637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230363632393b),
('417629e67444860f3748d65a389d869da071292a', '190.181.51.148', 1502206860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230363836303b),
('fb195defb416535dae59cb8862c46a667c4822d4', '200.105.161.203', 1502207297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230373239373b),
('ef35277e81f90854a1861863fb08691fd874fcd6', '186.121.242.58', 1502207399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230373337313b),
('48e73418521f226140aadf2fac7fdbf607fc2ca6', '190.129.71.227', 1502207679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230373637393b),
('4549716cc4529ab151f491d8324ecd8c3af9697b', '173.254.76.196', 1502208002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230383030323b),
('be49ceb52fff2b3735fccb0cab76edbccad786fb', '180.76.15.140', 1502208315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230383331353b),
('a42c28dbfd49e86c027f75ca08a3276a68f8eec3', '186.121.242.58', 1502208749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230383734393b),
('e3acf88570d45634073e8198c924f9841948f919', '66.249.88.56', 1502209001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323230393030313b),
('c784f842057f678500bab569075047169a1591ff', '173.254.76.196', 1502211602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323231313630323b),
('9be60c9b3ad3eb739932db1ee8118203a1314fcb', '163.172.4.153', 1502212298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323231323239383b),
('3be717109664f838e0995b4139e06f2a4ecf29b7', '216.244.66.198', 1502213682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323231333638323b),
('56effefba4efdc8f2dda960571da89b3649bee3b', '173.254.76.196', 1502215202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323231353230323b),
('3d60f94e52ceed3a8cb394ced4089a7d72b3b214', '173.254.76.196', 1502218802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323231383830323b),
('8bdf4cdf39b7bc9740b5cdb71daa98c1e03a1b83', '216.244.66.198', 1502220036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232303033363b),
('893955393e1bfaa0bada6de5c6540ec96f289414', '173.254.76.196', 1502222402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232323430323b),
('044f02bc99ba052b7039bc7c4a0dcf573655ce65', '186.121.242.58', 1502222920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232323634383b),
('01a552f834288f31962e034b1aa43a50cdb63273', '38.80.23.168', 1502222731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232323733313b),
('c2f4a5ad9241ad572d7a6be294cfd4450505956d', '157.55.39.87', 1502223173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232333137333b),
('d515f788fb1cb19fdcdec6c369eb8f21dd27e419', '66.249.79.92', 1502223251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232333235313b),
('5af6c3b92bffaa745ad1db8bbe560c1fdf534083', '216.244.66.198', 1502224368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232343336383b),
('b4d0a2c696a2548a3bf701d31c6d3992a8f3e0cb', '173.254.76.196', 1502226002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232363030323b),
('84d6add3a0acbafc2ad8b35af472037cce368f2c', '109.236.82.177', 1502226367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232363336373b),
('3edea1cf7a87126bae7635329de7b3040c1c751f', '176.10.99.201', 1502226672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232363637323b),
('e48d6a7d8a54e9af459f4367870b6ae5802e26f5', '200.105.161.203', 1502229469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232393436393b),
('36a5b56da692a8bce5dbdb1d64f1191b372e0773', '173.254.76.196', 1502229602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323232393630323b),
('5e2ca5a0ef379e8ed4ba009308f133e8b428a7d5', '216.244.66.198', 1502230511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323233303531313b),
('65213585bd4a14faf230d72c13a74dbac8bbd81f', '216.244.66.250', 1502232947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323233323934373b),
('c088cf553128b8f5e2cfc7dea9c08696dc1ee62c', '173.254.76.196', 1502233202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323233333230323b),
('b4486d55a551877dda32874967fd420e7e4106f1', '216.244.66.198', 1502234310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323233343331303b),
('c9322cb230a8aa4a44113fff215ae89a10912923', '173.254.76.196', 1502236802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323233363830323b),
('7deaf8688cd0c934d37571e18e8a817d882d5bae', '216.244.66.250', 1502240254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323234303235333b),
('3a2ebf964f4b6777daa831f56c5bd848789a8f1d', '173.254.76.196', 1502240402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323234303430323b),
('c897c779b5362e5b942fb143fc46b9ad71df7d6b', '66.249.79.94', 1502241055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323234313035353b),
('901bbebcaf072fc95e106b9082841eb4108514af', '216.244.66.198', 1502243921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323234333932313b),
('c1c82317235f44053277effa5796f4fefd2c6daf', '216.244.66.198', 1502243944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323234333934343b),
('54018f674894b2f870bbf79fb395e8497be735ab', '173.254.76.196', 1502244002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323234343030323b),
('d52f4052604602be96782a604dea2f0d8f48a38e', '173.254.76.196', 1502247602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323234373630323b),
('1bb92357272a97825e2c0267fe2ae6c7194a55bb', '173.254.76.196', 1502251202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323235313230323b),
('20fe6ca17f2fa0f9772ec24e712efa513f670418', '173.254.76.196', 1502254802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323235343830323b),
('113e3a9e8eda6814e9c2dfa324463a36632cc3be', '173.254.76.196', 1502258407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323235383430373b),
('5584f5c42ddf86ba7a42d0a1feaf16d8a22b6b28', '167.114.209.28', 1502260536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323236303531383b),
('3f4c0c638859e48ca3473c68cbbe265c4c6545ae', '167.114.209.28', 1502260537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323236303533373b),
('f0a5b620f9939558b7acec0226879fa8e0c8edf7', '173.254.76.196', 1502262002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323236323030323b),
('3606fa0f65c5a331d871016a6e591b25206f174f', '173.254.76.196', 1502265602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323236353630323b),
('39c3e163dac5ff853b274bfca65e4e40ec802902', '173.254.76.196', 1502269202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323236393230323b),
('733415424fe93badf96f4a3bfa7977de45a180ba', '216.244.66.198', 1502269378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323236393337383b),
('e5f3e90b1dec03e23f0342cc0a50182d51c51c0d', '173.254.76.196', 1502272802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237323830323b),
('3612df282d19934991cd5650721241cd7bb3e287', '146.185.223.114', 1502273897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237333839373b),
('8eed4af32ebe152bc086c173658c1c8451cefd14', '66.249.79.94', 1502275232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237353233323b),
('a41cc64b01f75bb633a82af7442b959fee826596', '66.249.79.94', 1502276160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237363136303b),
('f4b92c051772fcaae1c6c1d6197ca4afdabc026f', '66.249.79.90', 1502276164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237363136333b),
('734981b8067b7ca436ebd07e8e3feea4f8849c5c', '173.254.76.196', 1502276402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237363430323b),
('6a30832c1a75e43d37ada3f1566ee2419d3f96a8', '62.212.73.211', 1502278668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237383636383b),
('b82c423f79970243ed5b2c311272d6f3b44d3762', '216.244.66.250', 1502278966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237383936363b),
('62bacb37ea7bf9b3c6e9c70def4ca526a36ba84a', '180.76.15.34', 1502279087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323237393038373b),
('e9b7c6df45c4b303ffdc009ad888598832b54197', '173.254.76.196', 1502280002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238303030323b),
('4b2fc479f126228d4ea35cd125d44a8724a41436', '186.121.242.58', 1502282996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238323939363b),
('f602ce3b9185e81149eb924cbb9f6bda7cfaf99a', '38.80.23.123', 1502283090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238333039303b),
('b4f2af8061eefeb5ebf33c0f436b77b92635c5bf', '173.254.76.196', 1502283602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238333630323b),
('7b49f7dbc858d33401f1a93ba4d44bb2be0f00fe', '180.76.15.17', 1502284808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238343830383b),
('53cccc52d69d2668e93faaeaae34920ff4022471', '186.121.242.58', 1502285749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238353532393b677275706f5f6e6f74696369617c733a313a2233223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('1704e0cfa85596e620e38cebaadb5d000c6a6264', '186.121.242.58', 1502286057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238353939343b677275706f5f6e6f74696369617c733a313a2233223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('a3a57c2d68d87eb771b8da1da57aa7450b2bb7ec', '186.121.242.58', 1502286876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238363837363b677275706f5f6e6f74696369617c733a313a2233223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('f1b2f0f78f71da0ddffa40398a28eedc927191e9', '104.237.243.168', 1502286973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238363937323b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('76d2fcfd1a78a8d28b86012dd917f10a1b819c25', '173.254.76.196', 1502287202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323238373230323b),
('efc89f779d31e9bd9affdeb6ce2a7664de80025a', '173.254.76.196', 1502290801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239303830313b),
('fd043ddd5babb0d4429fcc870c43120321d5c7bc', '200.87.134.43', 1502290954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239303935343b),
('5ecee98f30405fdcbcea619311e327003f2e6610', '37.204.80.51', 1502293104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239333130343b),
('a24befc9888e8475d5ecbeb7047ba915ac020f4a', '77.41.30.194', 1502293386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239333338363b),
('1c4372be2a70a33a3cd8095f5f4ad622dc39b67f', '173.254.76.196', 1502294402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239343430323b),
('a850288ff963a4c7770c2761447de59878eaf936', '216.244.66.250', 1502294455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239343435353b),
('23c3719c2e51cc911b0b848b75ff7dac96e3f0d5', '190.181.60.74', 1502294509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239343530393b),
('e878eb85b78c627e97d40ab814f385ccd263540a', '186.121.242.58', 1502295853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239353831303b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('2ddd83b31aef9e2054bc8e72d6e0ecad5b0c8ccc', '173.254.76.196', 1502298002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323239383030323b),
('4077b52dd853ff5ab23b8d35be473e9e97a2bfdd', '173.254.76.196', 1502301602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330313630323b),
('2885ff075c0e79e88d8b714f78c785c032e3a113', '190.181.60.74', 1502304031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330333932353b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b),
('e68ad357dca84b75cd4f76d91beb658f6b4e7999', '190.181.60.74', 1502304952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330343935323b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('eeca44c89d5f6b00b6b40eb503c7ef72aa8b0b1c', '190.181.60.74', 1502304960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330343935343b7573756172696f7c613a31313a7b733a323a226964223b733a323a223239223b733a373a227573756172696f223b733a31343a2261647269616e63616c6465726f6e223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241647269616e2052616661656c223b733a393a226170656c6c69646f73223b733a31343a2243616c6465726f6e20427261756e223b733a363a2263726561646f223b733a31393a22323031372d30362d32322031303a35303a3535223b733a393a2270657266696c5f6964223b733a313a2232223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2234223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a34343a2253454352455441524941204d554e49434950414c204445204445534152524f4c4c4f2045434f4e4f4d49434f223b733a363a2270657266696c223b733a32303a2243656e74726f20646520466f726d616369c3b36e223b733a31323a226469725f696d6167656e6573223b733a34353a22736563726574617269615f6d756e69636970616c5f64655f6465736172726f6c6c6f5f65636f6e6f6d69636f2f223b7d6578697374655f736573696f6e7c623a313b677275706f5f6e6f74696369617c733a313a2232223b),
('ab5a880d3ee9ad3616346ece7c060acfd65fd078', '173.254.76.196', 1502305202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330353230323b),
('43c70e75de0891e03dc634ce62f6b233456f0dd5', '216.244.66.250', 1502305331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330353333313b),
('136a64ec115c711a7110f26498180e2c60fb8867', '186.121.242.58', 1502306212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330363035363b),
('fb0b69b020fb27c30a3f999a857a55507c295ab0', '38.80.23.1', 1502306127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330363132373b);
INSERT INTO `sesion` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8053279da9e82309a9fa70cb82b969fb1f415413', '200.105.161.203', 1502306447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330363137363b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('a6b55ce51a4bcacabd3bf1fb9a1412c95bf83bae', '200.105.161.203', 1502306508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330363530383b),
('71c93678a69e1eb83572129474b0181b8174cce9', '173.254.76.196', 1502308802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330383830323b),
('a248a0c77ca54826ead57f1a770a8e43a944f66e', '216.244.66.198', 1502308867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323330383836373b),
('29a556c3208e23888fc52688cf2b51f45e11b0b7', '173.254.76.196', 1502312402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323331323430323b),
('3287708549e60d3789db374af92f8eb623b2a086', '173.254.76.196', 1502316002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323331363030323b),
('cbe4a15304f95f8c1f5eae1241afdc335d528ef2', '173.254.76.196', 1502319602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323331393630323b),
('8570b354cef66fb9f62dc7ae26fa23de9bcc71c7', '173.254.76.196', 1502323202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323332333230323b),
('48acb2c636905b636e0fa857f8315fe0682af4d0', '173.254.76.196', 1502326802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323332363830323b),
('3fe6ab3712cd549ccfde0db8105cd92299b8706a', '173.254.76.196', 1502330402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323333303430323b),
('5c5448e1c4c9f35e869ff5fc25bfd256862fbafb', '216.244.66.198', 1502330745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323333303734353b),
('276a186c8ec7ff29a80d4cef64b55a5124d12406', '173.254.76.196', 1502334002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323333343030323b),
('4d903cb4d39904da93847c056322439ccb827973', '173.254.76.196', 1502337601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323333373630313b),
('77cd05c454a4b8dbc167524a02e4664f5027515e', '66.249.79.90', 1502341170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323334313137303b),
('d4145ab75ba1245bfda822a58a1cdec211ff3356', '173.254.76.196', 1502341202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323334313230323b),
('1e04e1f62991fc12485a1c8fa2a74e8367c61409', '216.244.66.198', 1502344234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323334343233343b),
('d6eea331f20c9dda68951213b43ccf14e4ba75ad', '173.254.76.196', 1502344802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323334343830323b),
('aa507a42648780bc865eba18d1596c3d8398e095', '173.254.76.196', 1502348402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323334383430323b),
('18a33d378d432ec48eb6b1acecce2d91b4715d43', '216.244.66.250', 1502348516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323334383531363b),
('7991d523d4013aa6a1825732b9f4edde394bb595', '173.254.76.196', 1502352002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323335323030323b),
('d75d1c0737612ce2081e051872da84b144ac60ee', '52.34.24.33', 1502354758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323335343735383b),
('e413789ce287a5fa1040d00eff354da034f5575c', '173.254.76.196', 1502355602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323335353630323b),
('2192a3eedf1cc530e36c20077e96712bcac8aa7c', '216.244.66.250', 1502358892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323335383839323b),
('a3818a96b0d93006bcdb7b755730a1c0bde063c1', '173.254.76.196', 1502359202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323335393230313b),
('5f037fea2dfa01c302f0b2f45ceebdbe50f82d8d', '66.249.79.90', 1502360475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323336303437353b),
('8e3ce9d771fdeaa8b938a8b0bfa6930dd05199fa', '173.254.76.196', 1502362802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323336323830323b),
('54128c9e851896539b0e88db824b972f5f8353aa', '173.254.76.196', 1502366401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323336363430313b),
('49839d2ffa6b02b590fd9e4fff1fedd2e198613e', '173.254.76.196', 1502370002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337303030323b),
('cd184f4b84736402cd17f62ac3f02a0bf5612a12', '173.254.76.196', 1502373602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337333630323b),
('95695cedf68be5e2bd10c2878e3bf072673bc837', '186.121.242.58', 1502374019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337333732323b),
('3a819cba3b602df5dd9961698b62cc7dcd6395f1', '104.237.243.60', 1502373787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337333738373b),
('9444cc9197d4b02424eb41d68f1c473210674c75', '186.121.242.58', 1502373895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337333839353b),
('89a6046937c8c308252110edeefc893df7bd93d9', '193.134.194.90', 1502374014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337343031343b),
('66150e982dcdba1cf1af70be67646dafd6d45f85', '186.121.242.58', 1502374030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337343033303b),
('44369fc269827d0f395bc610b0e952a145e43674', '193.134.194.143', 1502374231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337343233313b),
('3c0d58dd96566a77c7c551e682544e70bedbb7d2', '104.237.242.213', 1502374299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337343239393b),
('840362d8c8a47ff08bedb8983f70116103c084ec', '200.105.161.203', 1502374523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337343439363b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('1f81919a174af725cbb7fc18562a580ea37a1b15', '181.114.127.62', 1502374604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337343630343b),
('b25a0cb6e7e6057bda1619996ec0c781e6bd8624', '190.129.30.175', 1502375260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337353038343b),
('66ea157aecccdde3b8558d8f0e7ea2d5d28273b5', '193.134.194.90', 1502375715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337353634333b),
('e375273468a7c428ee7385ddd7ce44d43025b8fd', '186.121.242.58', 1502375776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337353737363b),
('4c285d78e007f899111dbedf7d79ffb1df5f1c49', '200.105.161.203', 1502376663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337363630373b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('cffbbcd1105187effb13d227e9ff2897940c5504', '173.254.76.196', 1502377202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337373230323b),
('674ef1e2fd5ef1f3414b21c3f4595c9434554139', '216.244.66.250', 1502379453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337393435333b),
('b7d06f6c0a213156efd67066e3a32457931e439f', '173.252.85.212', 1502379544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323337393534343b),
('5e5e4d31dce177ad6df292453304dadcd64962b0', '173.254.76.196', 1502380802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338303830323b),
('b950d11bdcd3d74e437e84f450afe5cf1bd1d6d8', '66.249.79.94', 1502380994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338303939343b),
('b996bfdf9f111953bf3689337696dcbb2b439893', '216.244.66.250', 1502382359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338323335393b),
('41b37fdcbd3ee6f861600160bb0d72c59bff1d9d', '186.121.242.58', 1502383806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338333731353b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('e13bcf751a4e38c7b838390c472d0b469daaf4f1', '104.237.243.209', 1502383769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338333736383b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('8bcdd6f1725c710c2f01fe790c4577d29de18d07', '173.254.76.196', 1502384403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338343430333b),
('58c171873ef3313828797b4cf61e2f59aa8b425c', '200.105.161.203', 1502384529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338343532393b),
('e645c51123af1de8b283736c35e696d0e56ff78b', '173.254.76.196', 1502388002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338383030323b),
('49b20d23e7cd88547c5556488b0a06d02372afaf', '66.249.79.94', 1502388030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338383033303b),
('e2f85c358e094c1784d7bd26fd287041073cbe18', '216.244.66.250', 1502389891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323338393839313b),
('677a97ed6e29d758a6a6ed690456f57d953d7abb', '190.181.51.148', 1502390192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339303139323b),
('0b4476377af05849537c19ed8ecd7d84f2a41ff9', '173.254.76.196', 1502391602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339313630323b),
('c8f58b5b9979d1bf7ad11bd11263bc0ad0d12620', '66.249.88.57', 1502394318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339343331383b),
('862e37d5976b40d38c24f9191cd0bd33783b34f1', '66.249.88.58', 1502394836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339343833363b),
('5bd30bc0f48a4529d9b51c88fad2dbcc2bec4f7a', '66.102.7.60', 1502394836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339343833363b),
('5a00e254906f36593cf39fcffb5b13eea32a2d4a', '173.254.76.196', 1502395203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339353230333b),
('330fe8aa38b7e3a991cb6f18151977b4020ceae9', '173.254.76.196', 1502398802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339383830323b),
('cb6d65ffb4ed7ad2a704a6a5ba8816db8862e377', '86.170.38.198', 1502399018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339393031383b),
('634327cd3bf0c4f043848221b23699a88419fafe', '2.120.161.48', 1502399018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339393031383b),
('1d7bebbf7e237a10b66999232843b29a372c0730', '81.187.72.193', 1502399018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339393031383b),
('283dd1eee93b0b258a11fe6bbfb1c89f853dba05', '79.70.41.153', 1502399018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339393031383b),
('5abe68db3f13f420650f7b1098916fe6bac3a2ab', '213.138.109.226', 1502399020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323339393032303b),
('7d6238b1378e990bdbd1a1c0e44add9799055e3b', '173.254.76.196', 1502402401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323430323430313b),
('d3dc6481fd329149bdf27a1699415bf617473e87', '82.202.194.181', 1502404064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323430343036343b),
('024cacd56e863e572bf0d3c3ce7c31056f3964ec', '82.202.194.181', 1502404065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323430343036353b),
('ba08be4891d6720eb10ab8f75bdb3bbd12b8c72e', '173.254.76.196', 1502406002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323430363030323b),
('a089caa16f186a202a2c2248d938d72a107ff92d', '173.254.76.196', 1502409601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323430393630313b),
('dec0504d2e407c0cb1077bd4444643a7b5187f58', '216.244.66.250', 1502410578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323431303537383b),
('e2a006f96a668671b1f80d0e5d0032b4f58077cc', '173.254.76.196', 1502413202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323431333230323b),
('c22a32e86689160772f2198b3aaa6b6dc6aa3238', '216.244.66.198', 1502414313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323431343331333b),
('9e766a83afc65f687dddd14b8734e8f60a48db79', '173.254.76.196', 1502416802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323431363830323b),
('feffab3b15d337f08ecac012e7eed9b59479fbf9', '138.197.73.53', 1502418049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323431383034393b),
('a28e008537a1631638a09183db618193b9b00b3c', '173.254.76.196', 1502420402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323432303430323b),
('5f5efcfc6448674735fc99ae5dbe5b5e5044f56f', '216.244.66.250', 1502422144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323432323134343b),
('c9f9ec4fc9c0ef2269997585600f2a97ab916af9', '173.254.76.196', 1502424002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323432343030323b),
('cb0eb664b9fbeffeed55ac0db5bdf9fded5e8d0f', '216.244.66.198', 1502424433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323432343433333b),
('2755bac2ed57244bab9f748133c57d758da2f693', '216.244.66.198', 1502427109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323432373130393b),
('2298ed9c497273edbd79b611e5bf432370c0fe29', '173.254.76.196', 1502427602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323432373630323b),
('04dbcce7332d7ea72f04de22e8bc7bdbd96f2d3a', '216.244.66.250', 1502431032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323433313033323b),
('c02518ff174def57a542a65a39f3e50848009c33', '173.254.76.196', 1502431202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323433313230323b),
('d489fc7bea1caced3db56cc07305a87360b58b07', '173.254.76.196', 1502434803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323433343830333b),
('d91b73785e9213bfe81ade324a636553273005f1', '216.244.66.250', 1502435070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323433353037303b),
('6f33b8b3787bb169b40452313bd3fa40c443c94e', '216.244.66.198', 1502437550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323433373535303b),
('efdf880af7c3226bd91e3071f7198b1741a0f21d', '173.254.76.196', 1502438402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323433383430323b),
('5b8701718d43e835f9e09415a9456ef62c59429a', '173.254.76.196', 1502442004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323434323030343b),
('09acc390d9a1041090f17ac384a9ea6c9412f270', '173.254.76.196', 1502445604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323434353630343b),
('635ea7a5c93b000f4acf59bead7ec120cf67a8e3', '52.41.81.97', 1502448332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323434383333313b),
('c03e68f5256ce41a755da4285749d7094209f156', '173.254.76.196', 1502449203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323434393230333b),
('22187e7bfb554126764cc687de0a55f23f568c35', '173.254.76.196', 1502452802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323435323830323b),
('35a11b518615c9c7a8ca95dec7cb1d8a28213e0f', '181.114.125.67', 1502456133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323435363133323b),
('89efc460c0e6e6dc41b11bc0eab5b84e7873f768', '173.254.76.196', 1502456402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323435363430323b),
('496aa5b3e216f91211ec2096f5d85378425c3ec2', '181.114.125.67', 1502456481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323435363438313b),
('15c8f558daeb3841a80f12c48118cac847919e72', '186.121.242.58', 1502459310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323435393330353b677275706f5f6e6f74696369617c733a313a2232223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('1f27b22caf9d1dfabc6f7b110fc21d864fccfab6', '38.80.23.24', 1502459383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323435393338323b677275706f5f6e6f74696369617c733a313a2232223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('2e96cb15e7b4442ea74bc808308bbdd5fffdd3c0', '173.254.76.196', 1502460002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436303030323b),
('3f9571ca83db017fc82d88199d8780baa557d74d', '186.121.242.58', 1502462151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436323033333b677275706f5f6e6f74696369617c733a313a2232223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('80b4cf9aab3bf823608aeb454a21bea9d9b63f56', '173.254.76.196', 1502463603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436333630323b),
('7331130a5cc0381f4d1b7bb1cdb88f8e942bd592', '186.121.219.12', 1502466719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436363731393b),
('f935b41c549c38fee16ea37f8ca83101023ef9a7', '186.121.242.58', 1502467201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436363931353b677275706f5f6e6f74696369617c733a313a2235223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('a030a2bc06bc1aa88d472bcf71dd027502f96672', '38.80.23.82', 1502466969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436363936383b677275706f5f6e6f74696369617c733a313a2235223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('9c4adb4243e08ea21c781a805527f5a106c67cac', '186.121.219.12', 1502467037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436373033373b),
('23949644bb57a9cee25267b78e27ea05a9fd05f3', '173.254.76.196', 1502467202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436373230323b),
('2e6c462d6c492a292b0889c61778036d6e41cb92', '186.121.242.58', 1502467626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436373332353b677275706f5f6e6f74696369617c733a313a2235223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('e0e5efd2d0b4a44766ded4ef8a5e5eea3246a806', '186.121.242.58', 1502467928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436373632383b677275706f5f6e6f74696369617c733a313a2235223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('c6d5c1fc1ed960787d30e492d33cab1bc0bcdb5e', '186.121.242.58', 1502468232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436373934323b677275706f5f6e6f74696369617c733a313a2235223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('19520380d253aba0d36b12724b256abd08243723', '104.237.243.121', 1502467978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436373937383b),
('ce18ce783f21da5fbe349e3b063806136b0d42f3', '186.121.242.58', 1502468456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436383338393b677275706f5f6e6f74696369617c733a313a2235223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('39ffbbd81d62a9f58f4106d0c6159aa000a7d310', '66.249.88.56', 1502469815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323436393831353b),
('59f1b316f8debf0b9fc66bf3391e533c3140b7a8', '173.254.76.196', 1502470803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323437303830333b),
('057f17fd0e3cbfc13fa14dd40a4b6e1358c1803e', '40.77.167.62', 1502471815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323437313831353b),
('3ebe85cbfa2cd16021d43615f24f34fd3ae89014', '186.121.242.58', 1502473473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323437333437323b677275706f5f6e6f74696369617c733a313a2235223b72656d656d6265725f6d657c623a313b7573756172696f7c613a31313a7b733a323a226964223b733a313a2231223b733a373a227573756172696f223b733a31343a2261646d61657374726173636f6e73223b733a31303a22666f746f677261666961223b733a38323a22687474703a2f2f6d61657374726173636f6e7374727563746f7261732e6f72672f73695f6d616573747261732f6173736574732f696d672f7573756172696f732f7468756d622f64656661756c742e6a7067223b733a373a226e6f6d62726573223b733a31333a2241646d696e6973747261646f72223b733a393a226170656c6c69646f73223b733a393a225052494e434950414c223b733a363a2263726561646f223b733a31393a22323031362d30392d32362031353a34363a3538223b733a393a2270657266696c5f6964223b733a313a2231223b733a31363a2263656e74726f5f666f726d6163696f6e223b733a313a2230223b733a32303a227478745f63656e74726f5f666f726d6163696f6e223b733a303a22223b733a363a2270657266696c223b733a31333a225375706572205573756172696f223b733a31323a226469725f696d6167656e6573223b733a303a22223b7d6578697374655f736573696f6e7c623a313b),
('c10d8d9fc8c9766abb973f08db9e391475101cec', '104.237.243.239', 1502473538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323437333533383b),
('e2d0a0e1b2d9ebc5d64eb657385f0af434d5b92d', '173.254.76.196', 1502474402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323437343430323b),
('0bc8507ac872f91778d1dbd5869ad6d05ce224dd', '173.254.76.196', 1502478003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323437383030333b),
('e4b36af853e44673d3978e8764ed79c2564700ab', '188.32.129.128', 1502480407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438303430363b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('6ed8412397e6674bc3163e05679e924ed5cbede6', '173.254.76.196', 1502481602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438313630323b),
('df904f69c8d7a3767d1876a7bf22918b75cce815', '173.254.76.196', 1502485203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438353230333b),
('2e3b2c9a214cf38f469f913da6e72d5e842f2aab', '40.77.167.62', 1502485272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438353237323b),
('3c1ba3ba63b774546fa0227251baddebba287398', '216.244.66.250', 1502486412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438363431323b),
('c19d5ea7faf3809e2dd5b4c6317efa1812e382f1', '216.244.66.250', 1502486527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438363532373b),
('a6838f19c7534a5acffcd6b7b2355cb77d660793', '216.244.66.198', 1502488392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438383339323b),
('93e8a5fc55a9a961f29f19e5e06809f83526f068', '216.244.66.198', 1502488401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438383430313b),
('b5c771de9d5af2906e3ef53df62816d7d3adaee2', '173.254.76.196', 1502488802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438383830323b),
('0a73926fb8412eb4ff4c66098b8bc3bbd0834cb4', '66.249.79.92', 1502489090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438393039303b),
('1975efd12cfa6884481b0ecba6d631ec3b5d7bfa', '173.252.85.216', 1502489101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323438393130313b),
('ba93e7cc07dbe7f0aeb6babc2bbd14b2e16ecc5a', '173.254.76.196', 1502492401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323439323430313b),
('a793321c3d7f0a0a7127cfb246daafc8d4ddd02b', '185.86.79.13', 1502492659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323439323635393b),
('10553c65b7241ff893be22b38538cdacadbcb9f6', '185.86.79.13', 1502492661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323439323636313b),
('3b0f79fcb4e7200c20eefc381e2ce601342826cf', '1.32.7.243', 1502493547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323439333534363b),
('468df6c28adabcc52031ff1e7a1ea7da45974af4', '173.254.76.196', 1502496003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323439363030323b),
('0b21a458d83927b108c7512fd683980026db67b8', '178.140.51.62', 1502498384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323439383338343b6572726f727c733a32373a22c2a1506f72206661766f7220696e696369612073657369c3b36e21223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('14ef137d0150bd0bff388a99805fdefddf8ad7c2', '173.254.76.196', 1502499601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323439393630313b),
('ac44e76494d6559b059d01605220d8f4a814f6f5', '173.254.76.196', 1502503202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323530333230323b),
('afb0e3a3dd824396b595bc84738ca2900dcef253', '173.254.76.196', 1502506802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323530363830323b),
('c341d972ce358ac88cdcede3def0b2688ce17f38', '173.254.76.196', 1502510401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323531303430313b),
('27d9d0a74e1d28f6526366f9ca465a916b1700fa', '72.30.14.77', 1502510623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323531303632333b),
('9913fbf985e5a53ff38e94c4ba8a0240794cee85', '216.244.66.250', 1502513909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323531333930393b),
('460ed79f2b9834b8d720851aad05f5fc9544fbd2', '173.254.76.196', 1502514002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323531343030323b),
('061bc75d06444008e84365e7b36973b7ec12ca99', '173.254.76.196', 1502517603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323531373630323b),
('9c1db808c0cd08846bc1a2c502d5194859d977a3', '173.254.76.196', 1502521202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323532313230323b),
('92c24ae8f5f797361f01081961bd21d69de84baf', '66.249.79.94', 1502521685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323532313638353b),
('dbbcb635662c4b524e233347f4d1043e859ff4b5', '173.254.76.196', 1502524802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323532343830323b),
('d40c9f537278fb0e16a247941bb9d044cb95f259', '173.254.76.196', 1502528401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323532383430313b),
('5743a68abb8544a8696227d26d5edabcf6aa6313', '173.254.76.196', 1502532002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323533323030323b),
('1583e6be64064f029abdd2d75ecf24a804031d43', '66.249.79.90', 1502533161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323533333136303b),
('22e8fbd5ee5a99a774a121816992a9c98fdb2334', '173.254.76.196', 1502535602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323533353630323b),
('a09466f8959f722f46277ddb3aded51086e8ee4d', '173.254.76.196', 1502539202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323533393230323b),
('cc4d715f23022e1f3b85600b0c36abc8479addb9', '216.244.66.198', 1502539591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323533393539313b),
('58793c9a72a2da341d737da011541dff857f1370', '173.254.76.196', 1502542801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323534323830313b),
('b2f4bfd7e73867da08a9835ec382ea44914e2f7d', '52.34.24.33', 1502543560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323534333536303b),
('6a84af7c9477d929428acdc909a7b62cbe3e1879', '173.254.76.196', 1502546402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323534363430323b),
('181697ca58dfb7803b405aff3c53e95ff696d126', '82.202.194.181', 1502548015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323534383031353b),
('5b115136b9888a8a02b838dcd88a9e0062b35a41', '82.202.194.181', 1502548016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323534383031363b),
('e8a7c520e7ced0052e49272222a7f698b6094869', '216.244.66.198', 1502549766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323534393736363b),
('2b5eacd4df6d24db275201892ec5f9e783ebd127', '173.254.76.196', 1502550001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323535303030313b),
('0c2872c6fff4f7c37f0b8bf4532029d7cb799b22', '216.244.66.235', 1502550325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323535303332353b),
('bd05db199b2c2a14401c5eeb7de2d6f536a4604a', '66.249.79.90', 1502551458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323535313435383b),
('c454e42204ef4b7d007b58b7d1d7c35749249204', '66.249.79.92', 1502551844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323535313834343b),
('1054bfbe95226ddf94201cf743b90ac91a783538', '66.220.152.173', 1502551860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323535313836303b),
('d3d0673c461f40fe493b620cffb52cae0ce73b0e', '173.252.88.219', 1502551863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323535313836333b),
('eb7642e541ae5a072c3e07349f9798aeac80633f', '173.254.76.196', 1502553602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323535333630323b);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `contenido`, `url_video`, `imagen`, `thumb`, `estado`, `hits`, `creado`, `creado_por`, `modificado`, `modificado_por`, `publicado`, `despublicado`) VALUES
(1, '<h2 class="animated2">Maestras&nbsp;<strong>Constructoras</strong></h2>\r\n\r\n<h3 class="animated3">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class="animated4"><a class="slider btn btn-system btn-large" href="#">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'mconstructora0.png', 'mconstructora0_thumb.png', 1, 0, '2016-10-03 14:43:56', 1, '2017-05-30 12:44:59', 1, '2017-05-30 12:44:59', '0000-00-00 00:00:00'),
(2, '<h2 class="animated2">Noticias y&nbsp;<strong>Capacitaci&oacute;n</strong></h2>\r\n\r\n<h3 class="animated3">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class="animated6"><a class="slider btn btn-system btn-large" href="#">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=sfDW53ddGsY', 'fondo-2.jpg', 'fondo-2_thumb.jpg', 1, 0, '2016-10-03 14:45:27', 1, '2017-05-30 12:42:28', 1, '2017-05-30 12:42:28', '0000-00-00 00:00:00'),
(3, '<h2 class="animated2">Informaci&oacute;n y&nbsp;<strong>Estad&iacute;stica</strong></h2>\r\n\r\n<h3 class="animated3">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class="animated5"><a class="slider btn btn-system btn-large" href="#">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'fondo-11.jpg', 'fondo-11_thumb.jpg', 1, 0, '2016-10-03 14:46:29', 1, '2017-05-30 12:39:15', 1, '2017-05-30 12:39:15', '0000-00-00 00:00:00'),
(4, '<p>esto es un fondo de prueba</p>', '', 'logo-prueba.jpg', 'logo-prueba_thumb.jpg', 1, 0, '2017-06-05 10:06:53', 1, '2017-06-05 10:06:53', NULL, '2017-06-05 10:06:53', '0000-00-00 00:00:00');

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
  `centro_formacion` int(11) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombres`, `apellidos`, `usuario`, `email`, `password`, `perfil`, `centro_formacion`, `fotografia`, `thumb`, `estado`, `hits`, `ultima_visita`, `creado`, `creado_por`, `modificado`, `modificado_por`, `habilitado`, `deshabilitado`) VALUES
(1, 'Administrador', 'PRINCIPAL', 'admaestrascons', 'info@maestrasconstructoras.org', 'qY8ByUNhjFJ0zs6', 1, 0, '', '', 1, NULL, '2017-08-11 09:18:30', '2016-09-26 15:46:58', 0, '2017-08-11 09:18:30', 1, '2017-02-22 16:17:53', '0000-00-00 00:00:00'),
(19, 'Nestor', 'Castro', 'nestorcastro', 'njcm152429@gmail.com', 'Y-&x+G''"aZ\\q', 2, 2, '', '', 1, NULL, '2017-07-11 10:26:21', '2017-06-03 13:48:13', 1, '2017-07-11 10:26:21', NULL, '2017-06-03 13:48:13', '0000-00-00 00:00:00'),
(16, 'Ronald', 'Touchard', 'ronaldtouchard', 'rttcomunicate@gmail.com', 'N7eralIpwF.A', 2, 2, '', '', 1, NULL, '0000-00-00 00:00:00', '2017-06-03 13:30:06', 1, '2017-06-03 13:30:06', NULL, '2017-06-03 13:30:06', '0000-00-00 00:00:00'),
(15, 'Gustavo', 'Fernandez', 'gustavofernandez', 'gustavo.fernandez@lapaz.bo', 'D-aG0vhKuFwn', 2, 1, '', '', 1, NULL, '2017-07-25 17:07:27', '2017-06-03 13:12:40', 1, '2017-07-25 17:07:27', NULL, '2017-06-03 13:12:40', '0000-00-00 00:00:00'),
(12, 'Rolando', 'Saravia', 'rolandosaravia', 'rolosaravi@yahoo.com', 'qY8ByUNhjFJ0zs6', 2, 5, '', '', 1, NULL, '2017-07-13 16:23:02', '2017-06-03 13:03:26', 1, '2017-07-13 16:23:02', 1, '2017-06-12 15:56:02', '0000-00-00 00:00:00'),
(17, 'Efrain', 'Valero', 'efrainvalero', 'efrainvalerod@gmail.com', 'qY8ByUNhjFJ0zs6', 2, 2, '', '', 1, NULL, '2017-07-27 18:33:29', '2017-06-03 13:36:33', 1, '2017-07-27 18:33:29', NULL, '2017-06-03 13:36:33', '0000-00-00 00:00:00'),
(18, 'Nestor', 'Alave', 'nestoralave', 'nestoralave@hotmail.com', 'Q2Y?xO8F09D7', 2, 2, '', '', 1, NULL, '2017-06-03 14:00:24', '2017-06-03 13:37:42', 1, '2017-06-03 14:00:24', NULL, '2017-06-03 13:37:42', '0000-00-00 00:00:00'),
(13, 'Marcelino', 'Osco', 'marcelinoosco', 'marcelino__osco@hotmail.com', '+\\6viUbk)|tp', 2, 5, '', '', 1, NULL, '2017-07-21 13:01:10', '2017-06-03 13:05:26', 1, '2017-07-21 13:01:10', 1, '2017-06-12 15:56:55', '0000-00-00 00:00:00'),
(14, 'Paola', 'Carvallo', 'paolacarvallo', 'arq.paolacarvallo@gmail.com', 'ltY-nN\\Q_aW1', 2, 5, '', '', 1, NULL, '2017-07-13 16:24:02', '2017-06-03 13:07:14', 1, '2017-07-13 16:24:02', 1, '2017-06-12 15:57:42', '0000-00-00 00:00:00'),
(28, 'Carlos Roberto', 'Hurtado Meneses', 'carloshurtado', 'carloshurtado@red-habitat.org', 'auVr_J7*NHAb', 2, 3, '', '', 1, NULL, '2017-07-13 16:50:00', '2017-06-22 10:40:33', 1, '2017-07-13 16:50:00', 1, '2017-06-22 10:46:21', '0000-00-00 00:00:00'),
(24, 'Pastora', 'Zuñagua', 'pastorazuñagua', 'patyzm@red-habitat.org', '1azJLwy6YFdO', 2, 3, '', '', 1, NULL, '2017-07-27 09:15:53', '2017-06-06 19:40:14', 1, '2017-07-27 09:15:53', 1, '2017-07-26 18:53:26', '0000-00-00 00:00:00'),
(30, 'test nombre', 'test apellido', 'test', 'test@gmail.com', 'TP6A?c7hlJzs', 2, 1, '', '', 1, NULL, '2017-06-27 10:50:24', '2017-06-27 10:48:12', 1, '2017-06-27 10:50:24', 1, '2017-06-27 10:49:01', '0000-00-00 00:00:00'),
(29, 'Adrian Rafael', 'Calderon Braun', 'adriancalderon', 'adrian.calderon@lapaz.bo', 'KZj\\kp''lcYsv', 2, 4, '', '', 1, NULL, '2017-08-09 14:10:30', '2017-06-22 10:50:55', 1, '2017-08-09 14:10:30', NULL, '2017-06-22 10:50:55', '0000-00-00 00:00:00');

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
-- Indices de la tabla `centro_formacion`
--
ALTER TABLE `centro_formacion`
  ADD PRIMARY KEY (`id`,`codigo`);

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
-- Indices de la tabla `cuestionario_opciones`
--
ALTER TABLE `cuestionario_opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuestionario_pregunta`
--
ALTER TABLE `cuestionario_pregunta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuestionario_respuesta`
--
ALTER TABLE `cuestionario_respuesta`
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
-- Indices de la tabla `especialista_area`
--
ALTER TABLE `especialista_area`
  ADD PRIMARY KEY (`id`,`codigo`);

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
  ADD PRIMARY KEY (`id`,`codigo`), ADD KEY `cod_especialista_especialidad` (`id`), ADD KEY `cod_especialista_especialidad_centro` (`id_centro`) USING BTREE, ADD KEY `cod_especialista_especialidad_area` (`id_area`) USING BTREE;

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
-- AUTO_INCREMENT de la tabla `centro_formacion`
--
ALTER TABLE `centro_formacion`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT de la tabla `cuestionario_opciones`
--
ALTER TABLE `cuestionario_opciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `cuestionario_pregunta`
--
ALTER TABLE `cuestionario_pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `cuestionario_respuesta`
--
ALTER TABLE `cuestionario_respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
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
-- AUTO_INCREMENT de la tabla `especialista_area`
--
ALTER TABLE `especialista_area`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT de la tabla `especialista_especialidad`
--
ALTER TABLE `especialista_especialidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT de la tabla `especialista_solicitud`
--
ALTER TABLE `especialista_solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT de la tabla `especialista_trabajador`
--
ALTER TABLE `especialista_trabajador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT de la tabla `especialista_trabajador_especialidad`
--
ALTER TABLE `especialista_trabajador_especialidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=487;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT de la tabla `noticia_grupo`
--
ALTER TABLE `noticia_grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `testimonio`
--
ALTER TABLE `testimonio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `especialista_especialidad`
--
ALTER TABLE `especialista_especialidad`
ADD CONSTRAINT `fk_especialista_especialidad_area` FOREIGN KEY (`id_area`) REFERENCES `especialista_area` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `fk_especialista_especialidad_centro` FOREIGN KEY (`id_centro`) REFERENCES `centro_formacion` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `especialista_solicitud`
--
ALTER TABLE `especialista_solicitud`
ADD CONSTRAINT `fk_especialista_solicitud_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `especialista_ciudad` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `fk_especialista_solicitud_empleador` FOREIGN KEY (`id_empleador`) REFERENCES `especialista_empleador` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `fk_especialista_solicitud_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialista_area` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
