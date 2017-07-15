/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 100121
Source Host           : localhost:3306
Source Database       : maestra4_caboco

Target Server Type    : MYSQL
Target Server Version : 100121
File Encoding         : 65001

Date: 2017-07-15 09:57:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biblioteca
-- ----------------------------
DROP TABLE IF EXISTS `biblioteca`;
CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of biblioteca
-- ----------------------------
INSERT INTO `biblioteca` VALUES ('1', 'Caja  de herramientas Modulo I', '<div class=\"row\" style=\"padding:20px;background-color:#f6f6f6;\">\r\n<div class=\"col-lg-5\" style=\"background-color: #026698\">\r\n<h2 style=\"padding:5px;color:#fff;\">M&oacute;dulo 1</h2>\r\n\r\n<h3 style=\"padding:5px;color:#f4f4f4;\">La cooperaci&oacute;n en el lugar de trabajo: la base del &eacute;xito empresarial</h3>\r\n</div>\r\n\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n\r\n<div class=\"col-lg-2\"><img src=\"/si_score/assets/filemanager/userfiles/biblioteca/icono-presentador.png\" style=\"margin-top: 20px;\" /></div>\r\n\r\n<div class=\"col-lg-3\">\r\n<h3>Manual del Formador</h3>\r\n<span>Contiene el proceso metodol&oacute;gico del servicio SCORE y la definici&oacute;n de los temas relacionados al M&oacute;dulo, el mismo es empleado por el Formador SCORE para poder brindar el servicio a las empresas interesadas.</span> <a href=\"#\" target=\"blank\"><img src=\"/si_score/assets/filemanager/userfiles/biblioteca/icon_pdf.png\" /></a></div>\r\n</div>\r\n\r\n<div class=\"row\" style=\"padding:20px;background-color:#f6f6f6;\">\r\n<div class=\"col-lg-2\"><img src=\"/si_score/assets/filemanager/userfiles/biblioteca/icono-workers.png\" style=\"margin-top: 20px;\" /></div>\r\n\r\n<div class=\"col-lg-3\">\r\n<h3>Manual de Formaci&oacute;n para gerentes y trabajadores</h3>\r\n<span>Contiene un mayor detalle de la definici&oacute;n de los temas relacionados al M&oacute;dulo, el mismo es empleado por el Formador SCORE y los participantes al taller de formaci&oacute;n de empresas.</span> <a href=\"#\" target=\"blank\"><img src=\"/si_score/assets/filemanager/userfiles/biblioteca/icon_pdf.png\" /></a></div>\r\n\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n\r\n<div class=\"col-lg-2\"><img src=\"/si_score/assets/filemanager/userfiles/biblioteca/icon_herramientas.png\" style=\"margin-top: 20px;\" /></div>\r\n\r\n<div class=\"col-lg-3\">\r\n<h3>Caja de herramientas</h3>\r\n<span>Conjunto de materiales y/o herramientas que tiene como objetivo fortalecer los contenidos del programa SCORE recogiendo buenas pr&aacute;cticas de trabajo a nivel nacional e internacional. &Eacute;sta contiene materiales y/o herramientas como videos, im&aacute;genes, reglamentos, gu&iacute;as, etc. que servir&aacute;n de ayuda y complemento para la Implementaci&oacute;n de SCORE en las empresas.</span> <a href=\"#\" target=\"blank\"><img src=\"/si_score/assets/filemanager/userfiles/biblioteca/icon_pdf.png\" /></a> <span class=\"read-more\" onClick=\"mostrar_biblioteca();\">ver</span></div>\r\n</div>\r\n', '1', '0', '2016-09-23 16:58:53', '1', '2016-10-18 11:04:12', '1', '2016-10-18 11:04:12', '2016-10-18 11:04:09', '0');
INSERT INTO `biblioteca` VALUES ('2', 'Caja  de herramientas Modulo II', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet.</p>', '1', '0', '2016-09-23 17:01:03', '1', '2016-10-18 11:04:11', '1', '2016-10-18 11:04:11', '2016-10-18 11:04:09', '0');
INSERT INTO `biblioteca` VALUES ('9', 'Caja  de herramientas Modulo III', '<p>Caja I</p>\r\n', '1', '0', '2016-10-07 18:03:31', '1', '2016-10-18 11:04:14', '1', '2016-10-18 11:04:14', '2016-10-18 11:04:07', '0');
INSERT INTO `biblioteca` VALUES ('5', 'Caja  de herramientas Modulo IV', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '1', '0', '2016-09-23 17:11:04', '1', '2016-10-18 11:04:13', '1', '2016-10-18 11:04:13', '2016-10-18 11:04:08', '0');
INSERT INTO `biblioteca` VALUES ('7', 'Caja  de herramientas Modulo V', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet</p>', '1', '0', '2016-09-23 17:15:31', '1', '2016-10-18 11:04:13', '1', '2016-10-18 11:04:13', '2016-10-18 11:04:08', '0');
INSERT INTO `biblioteca` VALUES ('8', 'Caja  de herramientas Modulo VI', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '1', '0', '2016-09-23 17:16:54', '1', '2016-10-18 11:04:14', '1', '2016-10-18 11:04:14', '2016-10-18 11:04:07', '0');
INSERT INTO `biblioteca` VALUES ('10', 'Caja de herramientas Modulo VII', '', '1', '0', '2016-10-16 19:49:32', '1', '2016-10-18 11:04:15', '1', '2016-10-18 11:04:15', '2016-10-18 11:04:06', '0');
INSERT INTO `biblioteca` VALUES ('11', 'Caja de herramientas Modulo VIII', '', '1', '0', '2016-10-16 19:53:21', '1', '2016-10-18 11:04:28', '1', '2016-10-18 11:04:28', '2016-10-18 11:04:05', '0');
INSERT INTO `biblioteca` VALUES ('12', 'Caja de herramientas modernas  Modulo IX', '', '0', '0', '2016-10-16 19:56:20', '1', '2016-10-17 10:11:47', '1', '2016-10-16 19:58:44', '2016-10-16 19:56:20', '1');

-- ----------------------------
-- Table structure for biblioteca_categoria
-- ----------------------------
DROP TABLE IF EXISTS `biblioteca_categoria`;
CREATE TABLE `biblioteca_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of biblioteca_categoria
-- ----------------------------
INSERT INTO `biblioteca_categoria` VALUES ('1', 'Categoría raíz de biblioteca', null, null, '0', '0', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '26', '0');
INSERT INTO `biblioteca_categoria` VALUES ('23', 'Categoria 1b', '', 'icono-videos.png', '1', '21', '1', '2016-10-14 12:19:40', '1', '2016-10-16 18:46:36', '1', '2016-10-16 18:46:36', '0000-00-00 00:00:00', '7', '8', '0');
INSERT INTO `biblioteca_categoria` VALUES ('24', 'Categoria 1c', '', 'icono-presentacion.png', '1', '21', '1', '2016-10-14 12:19:54', '1', '2016-10-15 18:30:34', '1', '2016-10-15 18:30:34', '2016-10-14 14:34:41', '9', '10', '0');
INSERT INTO `biblioteca_categoria` VALUES ('25', 'Categoria 1d', '', null, '1', '21', '1', '2016-10-14 12:20:13', '1', '2016-10-14 12:20:13', null, '2016-10-14 12:20:13', '0000-00-00 00:00:00', '11', '12', '0');
INSERT INTO `biblioteca_categoria` VALUES ('26', 'Categoria 1e', '', 'icono-presentacion.png', '1', '21', '1', '2016-10-14 12:20:31', '1', '2016-10-17 17:04:41', '1', '2016-10-17 17:04:41', '0000-00-00 00:00:00', '3', '4', '0');
INSERT INTO `biblioteca_categoria` VALUES ('27', 'Categoria 2', '<p>Estructura herramientas pr&aacute;cticas para la preparaci&oacute;n de las sesiones y desarrollo del Taller de formaci&oacute;n en aula para empresas.</p>', null, '1', '1', '1', '2016-10-14 12:20:47', '1', '2016-10-15 14:17:38', '1', '2016-10-15 14:17:38', '0000-00-00 00:00:00', '14', '25', '0');
INSERT INTO `biblioteca_categoria` VALUES ('21', 'Categoria 1', '', null, '1', '1', '1', '2016-10-14 12:18:48', '1', '2016-10-14 12:18:48', null, '2016-10-14 12:18:48', '0000-00-00 00:00:00', '2', '13', '0');
INSERT INTO `biblioteca_categoria` VALUES ('22', 'Categoria 1a', '', 'icono-videos.png', '1', '21', '1', '2016-10-14 12:19:23', '1', '2016-10-15 18:30:55', '1', '2016-10-15 18:30:55', '0000-00-00 00:00:00', '5', '6', '0');
INSERT INTO `biblioteca_categoria` VALUES ('28', 'Categoria 2a', '', null, '1', '27', '1', '2016-10-14 12:21:04', '1', '2016-10-15 14:17:38', null, '2016-10-14 12:21:04', '0000-00-00 00:00:00', '15', '16', '0');
INSERT INTO `biblioteca_categoria` VALUES ('29', 'Categoria 2b', '', null, '1', '27', '1', '2016-10-14 12:21:17', '1', '2016-10-15 14:17:38', '1', '2016-10-14 13:46:11', '0000-00-00 00:00:00', '17', '22', '0');
INSERT INTO `biblioteca_categoria` VALUES ('30', 'Categoria 2c', '', null, '1', '27', '1', '2016-10-14 12:21:32', '1', '2016-10-15 14:17:38', null, '2016-10-14 12:21:32', '0000-00-00 00:00:00', '23', '24', '0');
INSERT INTO `biblioteca_categoria` VALUES ('31', 'categoria 2bi', '', null, '1', '29', '1', '2016-10-14 12:22:22', '1', '2016-10-15 14:17:38', null, '2016-10-14 12:22:22', '0000-00-00 00:00:00', '18', '19', '0');
INSERT INTO `biblioteca_categoria` VALUES ('32', 'Categoria 2bii', '', null, '1', '29', '1', '2016-10-14 12:22:39', '1', '2016-10-15 14:17:38', null, '2016-10-14 12:22:39', '0000-00-00 00:00:00', '20', '21', '0');

-- ----------------------------
-- Table structure for biblioteca_documento
-- ----------------------------
DROP TABLE IF EXISTS `biblioteca_documento`;
CREATE TABLE `biblioteca_documento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of biblioteca_documento
-- ----------------------------
INSERT INTO `biblioteca_documento` VALUES ('1', 'Documento 1', 'Hola', '1', '22', 'examen.docx', '', '0', '2016-10-12 21:24:14', '1', '2016-10-15 18:30:55', '1', '2016-10-13 15:38:18', '2016-10-13 15:38:08', '0', '0', '1');
INSERT INTO `biblioteca_documento` VALUES ('2', 'Documento de prueba 1', 'Documento de prueba 1', '1', '22', '29396_Amores_altamente_peligrosos.pdf', '', '1', '2016-10-13 11:47:56', '1', '2016-10-15 18:30:55', '1', '2016-10-13 15:38:14', '2016-10-13 15:38:09', '0', '0', '0');
INSERT INTO `biblioteca_documento` VALUES ('3', 'Documento de prueba 2', 'Documento de prueba 2', '1', '22', '', 'https://www.youtube.com/watch?v=h053LMVUNjE', '1', '2016-10-13 11:50:03', '1', '2016-10-18 15:39:21', '1', '2016-10-18 15:39:21', '2016-10-13 15:38:10', '0', '0', '0');
INSERT INTO `biblioteca_documento` VALUES ('4', 'Documento de prueba 3', '', '1', '23', '', 'https://vimeo.com/124296403', '1', '2016-10-13 11:51:30', '1', '2016-10-18 15:40:35', '1', '2016-10-18 15:40:35', '2016-10-13 15:38:23', '0', '0', '0');
INSERT INTO `biblioteca_documento` VALUES ('5', 'Las presas de nadie', '', '1', '26', 'GUIA_PARA_EL_MANEJO_DE_IMAGEN_-_SCORE_dic20_(1)1.pdf', '', '1', '2016-10-18 13:51:40', '1', '2016-10-18 15:42:41', '1', '2016-10-18 15:42:41', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `biblioteca_documento` VALUES ('6', 'Texto pdf link', '', '1', '26', '2fEPxWJoawpsBhg.jpeg', '', '1', '2016-10-18 16:11:59', '1', '2016-10-19 14:17:36', '1', '2016-10-19 14:17:36', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `biblioteca_documento` VALUES ('7', 'beta', '', '1', '26', '', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', '1', '2016-10-18 18:13:26', '1', '2016-10-19 14:49:57', '1', '2016-10-19 14:49:57', '0000-00-00 00:00:00', '0', '0', '0');

-- ----------------------------
-- Table structure for centro_formacion
-- ----------------------------
DROP TABLE IF EXISTS `centro_formacion`;
CREATE TABLE `centro_formacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `directorio_imagenes` varchar(255) NOT NULL,
  `creado` datetime NOT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of centro_formacion
-- ----------------------------
INSERT INTO `centro_formacion` VALUES ('1', 'EG', 'Escuela de gestores municipales', 'escuela_de_gestores_municipales', '2017-01-18 14:50:47', '1', '2017-05-09 22:27:34', '1', '2017-05-09 22:27:34');
INSERT INTO `centro_formacion` VALUES ('2', 'IN', 'Infocal', 'infocal', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `centro_formacion` VALUES ('3', 'RH', 'Red habitat', 'red_habitat', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `centro_formacion` VALUES ('4', 'SM', 'Secretaria municipal de desarrollo economico', 'secretaria_municipal_de_desarrollo_economico', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `centro_formacion` VALUES ('5', 'ET', 'Escuela Taller de La Paz', 'escuelas_taller_de_la_cooperacion_espanola', '2017-05-07 16:47:59', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');

-- ----------------------------
-- Table structure for ciudad_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS `ciudad_inscripcion`;
CREATE TABLE `ciudad_inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ciudad_inscripcion
-- ----------------------------
INSERT INTO `ciudad_inscripcion` VALUES ('1', 'La Paz', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `ciudad_inscripcion` VALUES ('2', 'Cochabamba', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `ciudad_inscripcion` VALUES ('3', 'Santa Cruz de la Sierra', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `ciudad_inscripcion` VALUES ('4', 'Tarija', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `ciudad_inscripcion` VALUES ('5', 'Oruro', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `ciudad_inscripcion` VALUES ('6', 'Potosi', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `ciudad_inscripcion` VALUES ('7', 'Sucre', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `ciudad_inscripcion` VALUES ('8', 'Trinidad', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `ciudad_inscripcion` VALUES ('9', 'Cobija', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for contacto
-- ----------------------------
DROP TABLE IF EXISTS `contacto`;
CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contacto
-- ----------------------------

-- ----------------------------
-- Table structure for contacto_respuesta
-- ----------------------------
DROP TABLE IF EXISTS `contacto_respuesta`;
CREATE TABLE `contacto_respuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contacto_id` int(11) DEFAULT NULL,
  `respuesta` text,
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `enviado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contacto_respuesta
-- ----------------------------

-- ----------------------------
-- Table structure for convocatoria_empresa
-- ----------------------------
DROP TABLE IF EXISTS `convocatoria_empresa`;
CREATE TABLE `convocatoria_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of convocatoria_empresa
-- ----------------------------
INSERT INTO `convocatoria_empresa` VALUES ('1', 'Convocatoria beta', '<div align=\"center\">\r\n<h2>Financiamiento para mejorar la productividad y condiciones de trabajo basados en la cooperaci&oacute;n</h2>\r\n\r\n<p style=\"margin:0\">Ficha de Inscripci&oacute;n de Empresas al M&oacute;dulo 1 de SCORE - M&oacute;dulo 1: &ldquo;La Cooperaci&oacute;n en el lugar de trabajo&rdquo;</p>\r\n\r\n<p style=\"margin:0\">Formaci&oacute;n de Empresas SCORE - Peque&ntilde;as empresas (25 &ndash; 50 trabajadores) y medianas empresas (51 &ndash; 250 trabajadores)</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>CONVOCATORIA PARA PYMES</p>\r\n</div>\r\n', '0', '0', '2016-10-24 16:17:23', '1', '2016-10-26 17:18:41', '1', '2016-10-24 16:17:23', '2016-10-26 17:18:41', '0');
INSERT INTO `convocatoria_empresa` VALUES ('2', 'Convocatoria II/2016', '<p>nada de nada</p>\r\n', '0', '0', '2016-10-24 16:56:00', '1', '2016-10-26 10:20:12', '1', '2016-10-24 18:20:17', '2016-10-24 18:37:15', '1');
INSERT INTO `convocatoria_empresa` VALUES ('3', 'Convocatoria alfa', '<div align=\"center\">\r\n<h2>Financiamiento para mejorar la productividad y condiciones de trabajo basados en la cooperaci&oacute;n</h2>\r\n\r\n<p style=\"margin:0\">Ficha de Inscripci&oacute;n de Empresas al M&oacute;dulo 1 de SCORE - M&oacute;dulo 1: &ldquo;La Cooperaci&oacute;n en el lugar de trabajo&rdquo;</p>\r\n\r\n<p style=\"margin:0\">Formaci&oacute;n de Empresas SCORE - Peque&ntilde;as empresas (25 &ndash; 50 trabajadores) y medianas empresas (51 &ndash; 250 trabajadores)</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>CONVOCATORIA PARA PYMES</p>\r\n</div>\r\n', '0', '0', '2016-10-24 17:32:14', '1', '2016-10-26 17:18:31', '1', '0000-00-00 00:00:00', '2016-10-26 17:18:31', '0');
INSERT INTO `convocatoria_empresa` VALUES ('4', 'Convocatoria I/2016', '<h3>CONVOCATORIA PARA PYMES</h3>\r\n', '1', '0', '2016-10-24 18:32:16', '1', '2016-10-26 11:37:13', '1', '2016-10-26 11:37:13', '2016-10-26 11:37:11', '0');
INSERT INTO `convocatoria_empresa` VALUES ('5', 'Convocatoria I/2016 reacondicionado', '<div align=\"center\">\r\n<h2>Financiamiento para mejorar la productividad y condiciones de trabajo basados en la cooperaci&oacute;n</h2>\r\n\r\n<p style=\"margin:0\">Ficha de Inscripci&oacute;n de Empresas al M&oacute;dulo 1 de SCORE - M&oacute;dulo 1: &ldquo;La Cooperaci&oacute;n en el lugar de trabajo&rdquo;</p>\r\n\r\n<p style=\"margin:0\">Formaci&oacute;n de Empresas SCORE - Peque&ntilde;as empresas (25 &ndash; 50 trabajadores) y medianas empresas (51 &ndash; 250 trabajadores)</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>CONVOCATORIA PARA PYMES</p>\r\n</div>\r\n', '0', '0', '2016-10-24 18:33:26', '1', '2016-10-24 18:47:04', '1', '2016-10-24 18:38:35', '2016-10-24 18:36:19', '1');

-- ----------------------------
-- Table structure for convocatoria_formador
-- ----------------------------
DROP TABLE IF EXISTS `convocatoria_formador`;
CREATE TABLE `convocatoria_formador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of convocatoria_formador
-- ----------------------------
INSERT INTO `convocatoria_formador` VALUES ('1', 'Convocatoria 2016 formadores ', '<p>Convocatoria a formadores desesperados 1</p>\r\n', '0', '0', '2016-10-25 11:00:23', '1', '2016-10-26 10:39:53', '1', '2016-10-26 10:39:52', '2016-10-26 10:39:53', '0');
INSERT INTO `convocatoria_formador` VALUES ('2', 'Nada de convocatorias', '<p>Convocatoria a formadores desesperados 2</p>\r\n', '0', '0', '2016-10-25 11:01:27', '1', '2016-10-25 11:01:57', '1', '0000-00-00 00:00:00', '2016-10-25 11:01:35', '1');

-- ----------------------------
-- Table structure for cuestionario_opciones
-- ----------------------------
DROP TABLE IF EXISTS `cuestionario_opciones`;
CREATE TABLE `cuestionario_opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pregunta` int(11) DEFAULT NULL,
  `enunciado` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cuestionario_opciones
-- ----------------------------
INSERT INTO `cuestionario_opciones` VALUES ('1', '3', 'SI', '1');
INSERT INTO `cuestionario_opciones` VALUES ('2', '3', 'NO', '1');
INSERT INTO `cuestionario_opciones` VALUES ('3', '4', 'LA(S) TRABAJADORA(S) REQUERIDA(S) NO CONTESTÓ/NO CONTESTARON SU TELÉFONO', '1');
INSERT INTO `cuestionario_opciones` VALUES ('4', '4', 'NO SE LLEGÓ A CONCRETAR LA CITA CON LA(S) TRABAJADORA(S)', '1');
INSERT INTO `cuestionario_opciones` VALUES ('5', '4', 'LA(S) TRABAJADORA(S) NO TENÍA(N) DISPONIBILIDAD EN LAS FECHAS PROPUESTAS', '1');
INSERT INTO `cuestionario_opciones` VALUES ('6', '4', 'NO EXISTÍAN TRABAJADORAS DISPONIBLES EN LA ESPECIALIDAD O RUBRO DE MI REQUERIMIENTO', '1');
INSERT INTO `cuestionario_opciones` VALUES ('7', '4', 'NO EXISTÍA EL NÚMERO DE TRABAJADORAS REQUERIDAS PARA MI REQUERIMIENTO', '1');
INSERT INTO `cuestionario_opciones` VALUES ('8', '5', 'EXCELENTE', '1');
INSERT INTO `cuestionario_opciones` VALUES ('9', '5', 'MUY BUENO', '1');
INSERT INTO `cuestionario_opciones` VALUES ('10', '5', 'BUENO', '1');
INSERT INTO `cuestionario_opciones` VALUES ('11', '5', 'REGULAR', '1');
INSERT INTO `cuestionario_opciones` VALUES ('12', '5', 'MALO', '1');
INSERT INTO `cuestionario_opciones` VALUES ('13', '6', 'AUMENTAR EL NÚMERO DE TRABAJADORAS EN LA BASE DE DATOS', '1');
INSERT INTO `cuestionario_opciones` VALUES ('14', '6', 'AUMENTAR EL NÚMERO DE ESPECIALIDADES DE LAS TRABAJADORAS EN LA BASE DE DATOS', '1');
INSERT INTO `cuestionario_opciones` VALUES ('15', '6', 'PUNTUALIDAD DE LA(S) TRABAJADORA(S)', '1');
INSERT INTO `cuestionario_opciones` VALUES ('16', '6', 'CUMPLIMIENTO DE LA(S) TRABAJADORA(S)', '1');
INSERT INTO `cuestionario_opciones` VALUES ('17', '6', 'RAPIDEZ EN LA RESPUESTA DE LA(S) TRABAJADORA(S)', '1');
INSERT INTO `cuestionario_opciones` VALUES ('18', '6', 'PRECIOS QUE COBRAN LAS MAESTRAS CONSTRUCTORAS POR SU TRABAJO', '1');
INSERT INTO `cuestionario_opciones` VALUES ('19', '6', 'NINGUNO', '1');

-- ----------------------------
-- Table structure for cuestionario_pregunta
-- ----------------------------
DROP TABLE IF EXISTS `cuestionario_pregunta`;
CREATE TABLE `cuestionario_pregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `enunciado` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cuestionario_pregunta
-- ----------------------------
INSERT INTO `cuestionario_pregunta` VALUES ('1', 'P2', 'Número de trabajadoras contratadas', '2');
INSERT INTO `cuestionario_pregunta` VALUES ('2', 'P3', 'Por favor seleccione el o los centros de formación donde fueron formadas las maestras contratadas: (En caso de que usted no cuente con dicha información, continuar con la siguientes preguntas)', '3');
INSERT INTO `cuestionario_pregunta` VALUES ('3', 'P1', 'Usted llegó a concretar una contratación con alguna de las maestras constructoras que forman parte de la base de datos de la Plataforma Web MaestrasConstructoras.org?', '1');
INSERT INTO `cuestionario_pregunta` VALUES ('4', 'P6', 'Si la respuesta fue NO ¿cuál fue la razón? Se puede marcar más de una opción', '6');
INSERT INTO `cuestionario_pregunta` VALUES ('5', 'P4', 'Favor de indicar su conformidad con el servicio que brindó/brindaron la(s) trabajadora(s)', '4');
INSERT INTO `cuestionario_pregunta` VALUES ('6', 'P5', '¿Qué aspectos del servicio se deberían mejorar? Se puede marcar más de una opción.', '5');

-- ----------------------------
-- Table structure for cuestionario_respuesta
-- ----------------------------
DROP TABLE IF EXISTS `cuestionario_respuesta`;
CREATE TABLE `cuestionario_respuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(255) DEFAULT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `res_a` varchar(255) DEFAULT NULL,
  `res_b` int(11) DEFAULT NULL,
  `id_opciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cuestionario_respuesta
-- ----------------------------
INSERT INTO `cuestionario_respuesta` VALUES ('1', '80', '3', null, null, '1');
INSERT INTO `cuestionario_respuesta` VALUES ('2', '80', '1', null, '3', null);
INSERT INTO `cuestionario_respuesta` VALUES ('3', '80', '2', null, '3', null);
INSERT INTO `cuestionario_respuesta` VALUES ('4', '80', '2', null, '4', null);
INSERT INTO `cuestionario_respuesta` VALUES ('5', '80', '5', null, null, '10');
INSERT INTO `cuestionario_respuesta` VALUES ('6', '80', '6', null, null, '16');
INSERT INTO `cuestionario_respuesta` VALUES ('7', '80', '6', null, null, '17');
INSERT INTO `cuestionario_respuesta` VALUES ('8', '80', '6', null, null, '18');
INSERT INTO `cuestionario_respuesta` VALUES ('9', '60', '3', null, null, '1');
INSERT INTO `cuestionario_respuesta` VALUES ('10', '60', '1', null, '20', null);
INSERT INTO `cuestionario_respuesta` VALUES ('11', '60', '2', null, '2', null);
INSERT INTO `cuestionario_respuesta` VALUES ('12', '60', '2', null, '4', null);
INSERT INTO `cuestionario_respuesta` VALUES ('13', '60', '5', null, null, '11');
INSERT INTO `cuestionario_respuesta` VALUES ('14', '60', '6', null, null, '14');
INSERT INTO `cuestionario_respuesta` VALUES ('15', '60', '6', null, null, '16');
INSERT INTO `cuestionario_respuesta` VALUES ('16', '81', '3', null, null, '1');
INSERT INTO `cuestionario_respuesta` VALUES ('17', '81', '1', null, '1', null);
INSERT INTO `cuestionario_respuesta` VALUES ('18', '81', '2', null, '3', null);
INSERT INTO `cuestionario_respuesta` VALUES ('19', '81', '5', null, null, '8');
INSERT INTO `cuestionario_respuesta` VALUES ('20', '81', '6', null, null, '13');
INSERT INTO `cuestionario_respuesta` VALUES ('21', '84', '3', null, null, '1');
INSERT INTO `cuestionario_respuesta` VALUES ('22', '84', '1', null, '1', null);
INSERT INTO `cuestionario_respuesta` VALUES ('23', '84', '2', null, '1', null);
INSERT INTO `cuestionario_respuesta` VALUES ('24', '84', '5', null, null, '10');
INSERT INTO `cuestionario_respuesta` VALUES ('25', '84', '6', null, null, '14');
INSERT INTO `cuestionario_respuesta` VALUES ('26', '84', '6', null, null, '16');
INSERT INTO `cuestionario_respuesta` VALUES ('27', '85', '3', null, null, '1');
INSERT INTO `cuestionario_respuesta` VALUES ('28', '85', '1', null, '1', null);
INSERT INTO `cuestionario_respuesta` VALUES ('29', '85', '2', null, '3', null);
INSERT INTO `cuestionario_respuesta` VALUES ('30', '85', '5', null, null, '10');
INSERT INTO `cuestionario_respuesta` VALUES ('31', '85', '6', null, null, '16');
INSERT INTO `cuestionario_respuesta` VALUES ('32', '85', '6', null, null, '17');
INSERT INTO `cuestionario_respuesta` VALUES ('33', '85', '6', null, null, '18');

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_notificacion` varchar(255) DEFAULT '',
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('1', 'omarbautista@gmail.com', '2016-09-15 16:16:57', null, '2016-09-15 15:54:56', '1');

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado_por` int(11) DEFAULT NULL,
  `publicado` datetime DEFAULT '0000-00-00 00:00:00',
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  `bloqueado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('1', 'La Paz', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `empresa` VALUES ('2', 'Cochabamba', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `empresa` VALUES ('3', 'Santa Cruz de la Sierra', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `empresa` VALUES ('4', 'Tarija', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `empresa` VALUES ('5', 'Oruro', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `empresa` VALUES ('6', 'Potosi', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `empresa` VALUES ('7', 'Sucre', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `empresa` VALUES ('8', 'Trinidad', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `empresa` VALUES ('9', 'Cobija', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for especialista_area
-- ----------------------------
DROP TABLE IF EXISTS `especialista_area`;
CREATE TABLE `especialista_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_area
-- ----------------------------
INSERT INTO `especialista_area` VALUES ('1', 'OG', 'Obra Gruesa', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_area` VALUES ('2', 'OF', 'Obra Fina', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_area` VALUES ('3', 'PL', 'Plomeria', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_area` VALUES ('4', 'PN', 'Pintura', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_area` VALUES ('5', 'EL', 'Electricidad', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_area` VALUES ('6', 'GN', 'Instalación de Gas Natural', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_area` VALUES ('7', 'CI', 'Carpinteria de Inmobiliaria', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_area` VALUES ('8', 'MM', 'Metal mecánica', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_area` VALUES ('9', 'RE', 'Restauración', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');

-- ----------------------------
-- Table structure for especialista_ciudad
-- ----------------------------
DROP TABLE IF EXISTS `especialista_ciudad`;
CREATE TABLE `especialista_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_especialista_ciudad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_ciudad
-- ----------------------------
INSERT INTO `especialista_ciudad` VALUES ('1', 'La Paz');
INSERT INTO `especialista_ciudad` VALUES ('2', 'El Alto');

-- ----------------------------
-- Table structure for especialista_departamento
-- ----------------------------
DROP TABLE IF EXISTS `especialista_departamento`;
CREATE TABLE `especialista_departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_departamento
-- ----------------------------
INSERT INTO `especialista_departamento` VALUES ('1', 'La Paz', 'LPZ');
INSERT INTO `especialista_departamento` VALUES ('2', 'Cochabamba', 'CBA');
INSERT INTO `especialista_departamento` VALUES ('3', 'Beni', 'BNI');
INSERT INTO `especialista_departamento` VALUES ('4', 'Chuquisaca', 'CHQ');
INSERT INTO `especialista_departamento` VALUES ('5', 'Oruro', 'ORU');
INSERT INTO `especialista_departamento` VALUES ('6', 'Pando', 'PND');
INSERT INTO `especialista_departamento` VALUES ('7', 'Potosi', 'PSI');
INSERT INTO `especialista_departamento` VALUES ('8', 'Santa Cruz', 'SCZ');
INSERT INTO `especialista_departamento` VALUES ('9', 'Tarija', 'TJA');

-- ----------------------------
-- Table structure for especialista_empleador
-- ----------------------------
DROP TABLE IF EXISTS `especialista_empleador`;
CREATE TABLE `especialista_empleador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_especialista_empleador` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_empleador
-- ----------------------------
INSERT INTO `especialista_empleador` VALUES ('42', 'Juan Perez', 'hugo927@hotmail.com', 'direccion de juan', '2017-01-26 14:40:03', '2017-01-26 14:40:03');
INSERT INTO `especialista_empleador` VALUES ('43', 'Raul Salmon', 'hugo927@hotmail.com', 'direccion raul', '2017-01-26 18:37:48', '2017-01-26 18:37:48');
INSERT INTO `especialista_empleador` VALUES ('44', 'Juan Dias', 'hugo927@hotmail.com', 'calle de juan dias', '2017-02-07 13:44:57', '2017-02-07 13:44:57');
INSERT INTO `especialista_empleador` VALUES ('45', 'Prueba Local', 'hugomontes.formaempresas@gmail.com', 'xxx', '2017-02-07 17:19:44', '2017-02-07 17:19:44');
INSERT INTO `especialista_empleador` VALUES ('46', 'xxx', 'hugomontes927@gmail.com', 'xxx', '2017-02-07 17:25:38', '2017-02-07 17:25:38');
INSERT INTO `especialista_empleador` VALUES ('47', 'Mauro', 'hugo927@hotmail.com', 'ppp', '2017-02-07 17:27:50', '2017-02-07 17:27:50');
INSERT INTO `especialista_empleador` VALUES ('48', 'Franz  Perez', 'hugomontes.formaempresas@gmail.com', 'Av. Lanza No. 2491', '2017-02-10 12:50:38', '2017-02-10 12:50:38');
INSERT INTO `especialista_empleador` VALUES ('49', 'Alejandro', 'hugo@hotmail.com', 'direccion hugo', '2017-02-10 13:13:18', '2017-02-10 13:13:18');
INSERT INTO `especialista_empleador` VALUES ('50', 'Otto', 'hugomontes927@gmail.com', 'direccion hugo', '2017-02-10 13:14:30', '2017-02-10 13:14:30');
INSERT INTO `especialista_empleador` VALUES ('51', 'Mauricio', 'hugomontes927@gmail.com', 'der', '2017-02-10 13:23:18', '2017-02-10 13:23:18');
INSERT INTO `especialista_empleador` VALUES ('52', 'kkk', 'hugomontes927@gmail.com', 'direccion a', '2017-02-10 13:24:57', '2017-02-10 13:24:57');
INSERT INTO `especialista_empleador` VALUES ('53', 'Ramiro Mitre', 'hugomontes.formaempresas@gmail.com', 'Av. Kollasuyo No. 654', '2017-02-11 10:05:56', '2017-02-11 10:05:56');
INSERT INTO `especialista_empleador` VALUES ('54', 'Mauricio', 'hugomontes927@gmail.com', 'calle m', '2017-02-11 11:17:23', '2017-02-11 11:17:23');
INSERT INTO `especialista_empleador` VALUES ('55', 'Ramiro Mitre', 'hugomontes.formaempresas@gmail.com', 'Sanchez Lima 2293 Sopocachi', '2017-02-23 09:03:26', '2017-02-23 09:03:26');
INSERT INTO `especialista_empleador` VALUES ('56', 'asdf', 'hugomontes.formaempresas@gmail.com', 'asdf', '2017-05-21 16:04:50', '2017-05-21 16:04:50');
INSERT INTO `especialista_empleador` VALUES ('57', 'Gonzalo', 'hugomontes.formaempresas@gmail.com', 'asdf', '2017-05-21 17:45:04', '2017-05-21 17:45:04');
INSERT INTO `especialista_empleador` VALUES ('58', 'Perico Perez', 'hugomontes.formaempresas@gmail.com', 'Calle abc nro 123', '2017-05-27 11:34:38', '2017-05-27 11:34:38');
INSERT INTO `especialista_empleador` VALUES ('59', 'Perico Perez', 'hugomontes.formaempresas@gmail.com', 'Calle abc nro 123', '2017-05-27 11:49:35', '2017-05-27 11:49:35');
INSERT INTO `especialista_empleador` VALUES ('60', 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Sanchez Lima 3393', '2017-06-05 10:06:36', '2017-06-05 10:06:36');
INSERT INTO `especialista_empleador` VALUES ('61', 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Sanchez Lima 3393', '2017-06-05 15:11:14', '2017-06-05 15:11:14');
INSERT INTO `especialista_empleador` VALUES ('62', 'Grecia Mitru', 'greciamitru@gmail.com', 'cota cota', '2017-06-06 11:24:59', '2017-06-06 11:24:59');
INSERT INTO `especialista_empleador` VALUES ('63', 'Rolando saravia', 'rolando.saravia@lapaz.bo', 'Colon 379', '2017-06-07 11:14:53', '2017-06-07 11:14:53');
INSERT INTO `especialista_empleador` VALUES ('64', 'Paola Carvallo ', 'arq.paolacarvallo@gmail.com', 'Calle Colón N 379', '2017-06-07 11:23:41', '2017-06-07 11:23:41');
INSERT INTO `especialista_empleador` VALUES ('65', 'Carlos Hurtado', 'carloshurtado@red-habitat.org', 'Ecuador esq Aspiazu No. 23', '2017-06-07 14:10:35', '2017-06-07 14:10:35');
INSERT INTO `especialista_empleador` VALUES ('66', 'miguel angel', 'miguelangelformaempresas@gmail.com', 'av Saavedra', '2017-06-08 10:01:04', '2017-06-08 10:01:04');
INSERT INTO `especialista_empleador` VALUES ('67', 'miguel angel', 'miguelangelformaempresas@gmail.com', 'miraflores', '2017-06-12 10:29:21', '2017-06-12 10:29:21');
INSERT INTO `especialista_empleador` VALUES ('68', 'Grecia Mitru', 'greciamitru@gmail.com', 'calle 18  calacoto', '2017-06-12 15:20:53', '2017-06-12 15:20:53');
INSERT INTO `especialista_empleador` VALUES ('69', 'Pedro Perez', 'ramiro.mitre@gmail.com', 'Calles Santos No 345', '2017-06-16 11:11:50', '2017-06-16 11:11:50');
INSERT INTO `especialista_empleador` VALUES ('70', 'Ramiro Prueba Encuesta', 'ramiro.mitre@gmail.com', 'R. Gutierrez 874', '2017-06-22 18:09:00', '2017-06-22 18:09:00');
INSERT INTO `especialista_empleador` VALUES ('71', 'carlos hurtado', 'carloshurtado@red-habitat.org', 'edif.Qhana', '2017-06-22 18:56:53', '2017-06-22 18:56:53');
INSERT INTO `especialista_empleador` VALUES ('72', 'pedro', 'pedro@gmail.com', 'vincenti 720 sopocachi', '2017-06-25 07:01:44', '2017-06-25 07:01:44');
INSERT INTO `especialista_empleador` VALUES ('73', 'Patricia Pérez', 'patyperez@gmail.com', 'Km 2 Carretera a Oruro Calle 2 # 15', '2017-07-05 22:07:31', '2017-07-05 22:07:31');
INSERT INTO `especialista_empleador` VALUES ('74', 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Av. Kollasuyo No. 2491', '2017-07-11 10:18:31', '2017-07-11 10:18:31');
INSERT INTO `especialista_empleador` VALUES ('75', 'Ramiro Mitre', 'ramiro.mitre@gmail.com', 'Rosendo Gutierrez 879', '2017-07-11 10:22:21', '2017-07-11 10:22:21');
INSERT INTO `especialista_empleador` VALUES ('76', 'Ramiro', 'ramiro.mitre@gmail.com', 'Av. Kollasuyo No. 2491', '2017-07-11 10:32:06', '2017-07-11 10:32:06');
INSERT INTO `especialista_empleador` VALUES ('77', 'Franz Acosta', 'ramiro.mitre@gmail.com', 'Av. Kollasuyo No. 2491', '2017-07-11 10:39:10', '2017-07-11 10:39:10');
INSERT INTO `especialista_empleador` VALUES ('78', 'Grecia Mitru', 'greciamitru@gmail.com', 'calle 18  calacoto', '2017-07-12 08:59:12', '2017-07-12 08:59:12');
INSERT INTO `especialista_empleador` VALUES ('79', 'abc', 'hugomontes.formaempresas@gmail.com', 'dirdir', '2017-07-13 00:39:30', '2017-07-13 00:39:30');
INSERT INTO `especialista_empleador` VALUES ('80', 'Hugo Montes', 'hugomontes.formaempresas@gmail.com', 'dirdir', '2017-07-15 08:41:35', '2017-07-15 08:41:35');

-- ----------------------------
-- Table structure for especialista_especialidad
-- ----------------------------
DROP TABLE IF EXISTS `especialista_especialidad`;
CREATE TABLE `especialista_especialidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `id_centro` int(11) NOT NULL,
  `id_area` int(11) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `creado` datetime NOT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `modificado` datetime NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `publicado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`codigo`),
  KEY `cod_especialista_especialidad` (`id`),
  KEY `cod_especialista_especialidad_centro` (`id_centro`) USING BTREE,
  KEY `cod_especialista_especialidad_area` (`id_area`) USING BTREE,
  CONSTRAINT `fk_especialista_especialidad_area` FOREIGN KEY (`id_area`) REFERENCES `especialista_area` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_especialista_especialidad_centro` FOREIGN KEY (`id_centro`) REFERENCES `centro_formacion` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_especialidad
-- ----------------------------
INSERT INTO `especialista_especialidad` VALUES ('1', 'RHOG01', '3', '1', 'Curso Básico de Construcción Certificado por la Escuela de Gestores GAMLP', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_especialidad` VALUES ('2', 'RHOF02', '3', '2', 'Refacciones en vivienda Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('3', 'RHOF03', '3', '2', 'Revestimiento de cerámica Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('4', 'RHPL04', '3', '3', 'Instalaciones Sanitarias y plomeria Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:32', '1', '2017-01-18 14:50:32');
INSERT INTO `especialista_especialidad` VALUES ('5', 'RHPL05', '3', '3', 'Refacciones en obra fina Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:47');
INSERT INTO `especialista_especialidad` VALUES ('6', 'RHPN06', '3', '4', 'Pintura Decorativa Muralista Certificado por la  Escuela de Gestores GAMLP', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_especialidad` VALUES ('7', 'RHPN07', '3', '4', 'Pintura Decorativa Bidimensional Con certificación de MONOPOL y Red Hábitat', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('8', 'RHEL08', '3', '5', 'Especialización en Electicidad Con certificación de Red Hábitat', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_especialidad` VALUES ('9', 'EGOF09', '1', '2', 'Mantenimiento', '2017-01-18 14:50:47', '1', '2017-05-09 22:27:34', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('10', 'EGPL10', '1', '3', 'Instalaciones Sanitarias y de agua potable', '2017-01-18 14:50:47', '1', '2017-05-09 22:27:34', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('11', 'EGPN11', '1', '4', 'Pintado de Obras', '2017-01-18 14:50:47', '1', '2017-05-09 22:27:34', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('12', 'INOG12', '2', '1', 'EDIFICACION EN OBRA GRUESA (SUPERVISION EN OBRA)', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_especialidad` VALUES ('13', 'INOF13', '2', '2', 'EDIFICACION EN OBRA FINA (SUPERVISION EN OBRA)', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('14', 'INOF14', '2', '2', 'ESTRUCTURAS DOMESTICAS Y ORNAMENTALES', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('15', 'INEL15', '2', '5', 'Instalación de Calefones Solares', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:32', '1', '2017-01-18 14:50:32');
INSERT INTO `especialista_especialidad` VALUES ('16', 'INEL16', '2', '5', 'Intalaciones Eléctricas Domiciliarias', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:47');
INSERT INTO `especialista_especialidad` VALUES ('17', 'INEL17', '2', '5', 'Intalaciones Eléctricas Complementarias', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_especialidad` VALUES ('18', 'INGN18', '2', '6', 'Gas Natural Domiciliario', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('19', 'INCI19', '2', '7', 'CARPINTERIA BASICA EN ALUMINIO', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_especialidad` VALUES ('20', 'INCI20', '2', '7', 'CARPINTERIA EN ALUMINIO BOX DE BAÑO Y VENTANAS', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('21', 'INCI21', '2', '7', 'CARPINTERIA EN ALUMINIO FACHADAS FLOTANTES', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('22', 'INCI22', '2', '7', 'CARPINTERIA EN ALUMINIO PUERTAS Y MAMPARAS', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('23', 'INCI23', '2', '7', 'CONSTRUCCION DE MUEBLES CON MELAMINA', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:47');
INSERT INTO `especialista_especialidad` VALUES ('24', 'INCI24', '2', '7', 'CONSTRUCCION DE MUEBLES CON TABLERO', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_especialidad` VALUES ('25', 'SMEL25', '4', '5', 'Circuitos eléctricos y sistemas de seguridad', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('26', 'SMEL26', '4', '5', 'Instalaciones eléctricas residenciales y el uso de los aparatos e instrumentos de medida', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `especialista_especialidad` VALUES ('27', 'SMEL27', '4', '5', 'Determinación de fallas en instalaciones eléctricas; mantenimiento preventivo, Correctivo y reparaciones', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('28', 'SMEL28', '4', '5', 'Aplicación de arduinos', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('29', 'SMMM29', '4', '8', 'Soldadura oxiacetilénica, de arco, MIG/MAG y TIG.', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('30', 'ETOF30', '5', '2', 'Revoques', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('31', 'ETOF31', '5', '2', 'Molduras / Ornamentación', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('32', 'ETPL32', '5', '3', 'Instalaciones Sanitarias y plomeria Certificado por la  Escuela de Gestores GAMLP', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('33', 'ETEL33', '5', '5', 'Intalaciones Eléctricas Domiciliarias', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('34', 'ETCI34', '5', '7', 'Acabado', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('35', 'ETMM35', '5', '8', 'Soldadura', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('36', 'ETMM36', '5', '8', 'Forjado / Herrería', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('37', 'ETRE37', '5', '9', 'Restauración de muebles antiguos', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, null);
INSERT INTO `especialista_especialidad` VALUES ('38', 'ETRE38', '5', '9', 'Restauración de construcciones patrimoniales', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, null);

-- ----------------------------
-- Table structure for especialista_solicitud
-- ----------------------------
DROP TABLE IF EXISTS `especialista_solicitud`;
CREATE TABLE `especialista_solicitud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `fecha_ini` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `id_empleador` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `ctr_formulario_satisfaccion` tinyint(4) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  `encuesta` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_especialista_solicitud` (`id`),
  KEY `cod_especialista_solicitud_empleador` (`id_empleador`),
  KEY `cod_especialista_solicitud_ciudad` (`id_ciudad`),
  KEY `cod_especialista_solicitud_especialidad` (`id_especialidad`),
  CONSTRAINT `fk_especialista_solicitud_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `especialista_ciudad` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_especialista_solicitud_empleador` FOREIGN KEY (`id_empleador`) REFERENCES `especialista_empleador` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_especialista_solicitud_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialista_area` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_solicitud
-- ----------------------------
INSERT INTO `especialista_solicitud` VALUES ('52', '22', '2017-01-02', '2017-01-31', '42', '1', '3', '1', '2017-01-26 14:40:03', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('53', '30', '2017-01-03', '2017-01-31', '43', '1', '4', '1', '2017-01-26 18:37:48', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('54', '5', '2017-02-01', '2017-02-17', '44', '1', '2', '1', '2017-02-07 13:44:57', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('55', '23', '2017-02-01', '2017-02-16', '45', '1', '3', '1', '2017-02-07 17:19:44', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('56', '5', '2017-02-01', '2017-02-10', '46', '1', '4', '1', '2017-02-07 17:25:38', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('57', '23', '2017-02-17', '2017-02-25', '47', '1', '5', '1', '2017-02-07 17:27:50', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('58', '3', '2017-02-23', '2017-02-28', '48', '1', '1', '1', '2017-02-10 12:50:38', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('59', '22', '2017-02-01', '2017-02-16', '49', '1', '2', '1', '2017-02-10 13:13:18', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('60', '23', '2017-02-01', '2017-06-23', '50', '2', '2', '1', '2017-02-10 13:14:30', '2017-06-25 07:03:34', '2017-06-25 07:03:34');
INSERT INTO `especialista_solicitud` VALUES ('61', '23', '2017-02-01', '2017-02-16', '51', '1', '5', '1', '2017-02-10 13:23:18', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('62', '33', '2017-02-08', '2017-02-17', '52', '1', '4', '1', '2017-02-10 13:24:57', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('63', '5', '2017-02-12', '2017-02-25', '53', '1', '5', '1', '2017-02-11 10:05:56', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('64', '12', '2017-02-01', '2017-02-22', '54', '1', '2', '1', '2017-02-11 11:17:23', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('65', '2', '2017-02-24', '2017-02-28', '55', '1', '2', '1', '2017-02-23 09:03:26', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('67', '21', '2017-05-01', '2017-05-26', '57', '1', '2', '1', '2017-05-21 17:45:05', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('68', '11', '2017-05-01', '2017-05-12', '58', '1', '2', '1', '2017-05-27 11:34:38', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('69', '23', '2017-05-01', '2017-05-25', '59', '1', '4', '1', '2017-05-27 11:49:35', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('70', '2', '2017-06-06', '2017-06-09', '60', '1', '1', '1', '2017-06-05 10:06:36', '2017-06-09 00:30:03', null);
INSERT INTO `especialista_solicitud` VALUES ('71', '2', '2017-06-06', '2017-06-09', '61', '1', '8', '1', '2017-06-05 15:11:14', '2017-06-09 00:30:03', null);
INSERT INTO `especialista_solicitud` VALUES ('72', '5', '2017-06-15', '2017-06-23', '62', '1', '5', '1', '2017-06-06 11:24:59', '2017-06-23 00:30:02', null);
INSERT INTO `especialista_solicitud` VALUES ('73', '2', '2017-06-12', '2017-06-26', '63', '1', '9', '1', '2017-06-07 11:14:53', '2017-06-26 00:30:02', null);
INSERT INTO `especialista_solicitud` VALUES ('74', '2', '2017-06-19', '2017-06-16', '64', '1', '9', '1', '2017-06-07 11:23:41', '2017-06-16 00:30:03', null);
INSERT INTO `especialista_solicitud` VALUES ('75', '4', '2017-06-08', '2017-06-15', '65', '1', '1', '1', '2017-06-07 14:10:35', '2017-06-15 00:30:02', null);
INSERT INTO `especialista_solicitud` VALUES ('76', '2', '2017-06-08', '2017-06-09', '66', '1', '5', '1', '2017-06-08 10:01:04', '2017-06-09 00:30:03', null);
INSERT INTO `especialista_solicitud` VALUES ('77', '2', '2017-06-13', '2017-06-13', '67', '1', '6', '1', '2017-06-12 10:29:21', '2017-06-13 00:30:02', null);
INSERT INTO `especialista_solicitud` VALUES ('78', '4', '2017-06-15', '2017-06-27', '68', '2', '6', '1', '2017-06-12 15:20:53', '2017-06-27 00:30:02', null);
INSERT INTO `especialista_solicitud` VALUES ('79', '3', '2017-06-19', '2017-06-26', '69', '1', '1', '1', '2017-06-16 11:11:50', '2017-06-26 00:30:02', null);
INSERT INTO `especialista_solicitud` VALUES ('80', '1', '2017-06-23', '2017-06-24', '70', '1', '1', '1', '2017-06-22 18:09:00', '2017-06-24 08:09:45', '2017-06-24 08:09:45');
INSERT INTO `especialista_solicitud` VALUES ('81', '1', '2017-06-22', '2017-06-28', '71', '1', '4', '1', '2017-06-22 18:56:53', '2017-06-29 10:43:39', '2017-06-29 10:43:39');
INSERT INTO `especialista_solicitud` VALUES ('82', '3', '2017-06-26', '2017-06-28', '72', '1', '5', '1', '2017-06-25 07:01:44', '2017-06-28 00:30:03', null);
INSERT INTO `especialista_solicitud` VALUES ('83', '5', '2017-07-06', '2017-07-08', '73', '2', '2', '1', '2017-07-05 22:07:31', '2017-07-08 00:30:02', null);
INSERT INTO `especialista_solicitud` VALUES ('84', '3', '2017-07-11', '2017-07-12', '74', '1', '1', '1', '2017-07-11 10:18:31', '2017-07-12 09:05:45', '2017-07-12 09:05:45');
INSERT INTO `especialista_solicitud` VALUES ('85', '1', '2017-07-12', '2017-07-13', '75', '1', '1', '0', '2017-07-11 10:22:21', '2017-07-12 09:07:23', '2017-07-12 09:07:23');
INSERT INTO `especialista_solicitud` VALUES ('86', '2', '2017-07-12', '2017-07-14', '76', '1', '1', '0', '2017-07-11 10:32:06', '2017-07-11 10:32:06', null);
INSERT INTO `especialista_solicitud` VALUES ('87', '3', '2017-07-12', '2017-07-18', '77', '1', '1', '0', '2017-07-11 10:39:10', '2017-07-11 10:39:10', null);
INSERT INTO `especialista_solicitud` VALUES ('88', '2', '2017-07-12', '2017-07-12', '78', '1', '5', '1', '2017-07-12 08:59:12', '2017-07-12 09:30:02', null);
INSERT INTO `especialista_solicitud` VALUES ('89', '12', '2017-07-14', '2017-07-14', '79', '1', '1', '0', '2017-07-13 00:39:30', '2017-07-13 00:39:30', null);
INSERT INTO `especialista_solicitud` VALUES ('90', '77', '2017-07-15', '2017-07-19', '80', '1', '1', '0', '2017-07-15 08:41:35', '2017-07-15 08:41:35', null);

-- ----------------------------
-- Table structure for especialista_trabajador
-- ----------------------------
DROP TABLE IF EXISTS `especialista_trabajador`;
CREATE TABLE `especialista_trabajador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_especialista_trabajador` (`id`),
  KEY `cod_especialista_trabajador_depto` (`id_departamento`),
  CONSTRAINT `fk_especialista_trabajador_depto` FOREIGN KEY (`id_departamento`) REFERENCES `especialista_departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_trabajador
-- ----------------------------
INSERT INTO `especialista_trabajador` VALUES ('125', '26546865', 'Maestrade', 'Prueba', '1986-06-04', 'mujer', 'Froilan Perez', '34323332', '72032323', '1prueba@gmail.com', '1', '1', '2017-07-11 10:17:27', '19', '2017-07-11 10:38:13', '1', '2017-07-11 10:38:13', null);
INSERT INTO `especialista_trabajador` VALUES ('126', '35465463', '2Maestrade', '2Prueba', '1988-07-03', 'mujer', 'Calle Reseguin 2324', '216546546', '752165565', 'prueba2@prueba.com', '1', '1', '2017-07-11 10:31:10', '19', '2017-07-11 10:36:57', '1', '2017-07-11 10:36:57', null);

-- ----------------------------
-- Table structure for especialista_trabajador_especialidad
-- ----------------------------
DROP TABLE IF EXISTS `especialista_trabajador_especialidad`;
CREATE TABLE `especialista_trabajador_especialidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `fecha_certificacion` date DEFAULT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_especialista_trabajador_especialidad` (`id`),
  KEY `cod_especialista_trabajador_especialidad_trabajador` (`id_trabajador`),
  KEY `cod_especialista_trabajador_especialidad_espacialidad` (`id_especialidad`),
  CONSTRAINT `fk_especialista_trabajador_especialidad_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialista_especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especialista_trabajador_especialidad_trabajador` FOREIGN KEY (`id_trabajador`) REFERENCES `especialista_trabajador` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_trabajador_especialidad
-- ----------------------------
INSERT INTO `especialista_trabajador_especialidad` VALUES ('27', '126', '12', '2017-07-11', '2017-07-11 10:36:57', '2017-07-11 10:36:57');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('29', '125', '12', '2017-07-11', '2017-07-11 10:38:13', '2017-07-11 10:38:13');

-- ----------------------------
-- Table structure for formador
-- ----------------------------
DROP TABLE IF EXISTS `formador`;
CREATE TABLE `formador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of formador
-- ----------------------------
INSERT INTO `formador` VALUES ('1', 'Mario', 'Luna Mendez', 'varon', 'foto_1.jpg', 'foto_1_thumb.jpg', 'Formador SCORE Certificado', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>', '1', '0', '2016-09-26 16:45:09', '1', '2016-09-26 16:45:19', '1', '2016-09-26 16:45:19', '0000-00-00 00:00:00');
INSERT INTO `formador` VALUES ('2', 'Amalia', 'Salas', 'mujer', 'foto_2.jpg', 'foto_2_thumb.jpg', 'Formador SCORE Certificado', '<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>', '1', '0', '2016-09-26 16:46:42', '1', '2016-09-26 16:46:42', null, '2016-09-26 16:46:42', '0000-00-00 00:00:00');
INSERT INTO `formador` VALUES ('3', 'Armando', 'Vega', 'varon', 'foto_3.jpg', 'foto_3_thumb.jpg', 'Formador SCORE Certificado', '<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>', '1', '0', '2016-09-26 16:47:23', '1', '2017-06-19 11:17:47', null, '2016-09-26 16:47:23', '0000-00-00 00:00:00');
INSERT INTO `formador` VALUES ('4', 'Mario', 'Vargas Sagarnaga', 'varon', '', 'foto_4_thumb.jpg', 'Formador SCORE Certificado', '<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>', '1', '0', '2016-09-26 16:48:47', '1', '2016-12-29 13:51:53', '1', '2016-12-29 13:51:53', '0000-00-00 00:00:00');
INSERT INTO `formador` VALUES ('5', 'Ernesto', 'Moreno', 'varon', 'foto_5.jpg', 'foto_5_thumb.jpg', 'Formador SCORE Certificado', '<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>', '1', '0', '2016-09-26 16:49:39', '1', '2016-09-26 16:49:39', null, '2016-09-26 16:49:39', '0000-00-00 00:00:00');
INSERT INTO `formador` VALUES ('6', 'Maria', 'Delgado', 'mujer', 'foto_6.jpg', 'foto_6_thumb.jpg', 'Formador SCORE Certificado', '<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>', '1', '0', '2016-09-26 16:50:31', '1', '2016-09-26 16:50:31', null, '2016-09-26 16:50:31', '0000-00-00 00:00:00');
INSERT INTO `formador` VALUES ('7', 'Leonel', 'Bautista', 'varon', 'foto_7.jpg', 'foto_7_thumb.jpg', 'Formador SCORE Certificado', '<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>', '1', '0', '2016-09-26 16:51:16', '1', '2016-10-07 11:09:47', null, '2016-09-26 16:51:16', '0000-00-00 00:00:00');
INSERT INTO `formador` VALUES ('8', 'Walter', 'Riso', 'varon', 'foto_8.jpg', 'foto_8_thumb.jpg', 'Formador SCORE Certificado', '<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>', '1', '0', '2016-09-26 16:51:57', '1', '2016-10-07 11:09:44', null, '2016-09-26 16:51:57', '0000-00-00 00:00:00');
INSERT INTO `formador` VALUES ('9', 'kkk', 'kkk', 'varon', '', '', 'Formador SCORE Certificado', '<p>abc</p>', '1', '0', '2016-11-16 17:15:17', '1', '2016-11-16 17:15:17', null, '2016-11-16 17:15:17', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `rgt` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Elemento de menú raiz', '', '0', '', '0', '1', '1', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '32');
INSERT INTO `menu` VALUES ('2', 'INICIO', 'index.php/', '1', '2/3', '1', '1', '1', '2016-09-26 17:19:41', '1', '2017-02-11 10:00:27', '1', '2017-02-11 10:00:27', '0000-00-00 00:00:00', '2', '3');
INSERT INTO `menu` VALUES ('3', 'INFORMACIÓN DE INTERÉS', 'javascript:;', '2', '', '1', '1', '1', '2016-09-26 17:20:24', '1', '2017-02-11 10:01:12', '1', '2017-02-11 10:01:12', '0000-00-00 00:00:00', '10', '17');
INSERT INTO `menu` VALUES ('4', 'Derechos laborales', 'index.php/informacion/4', '1', '2/15', '3', '1', '1', '2016-09-26 17:21:06', '1', '2017-02-20 17:24:14', '1', '2017-02-20 17:24:14', '0000-00-00 00:00:00', '13', '14');
INSERT INTO `menu` VALUES ('5', 'Salud y Seguridad en el Trabajo', 'index.php/informacion/5', '1', '2/16', '3', '1', '1', '2016-09-26 17:22:21', '1', '2017-02-20 17:24:25', '1', '2017-02-20 17:24:25', '0000-00-00 00:00:00', '15', '16');
INSERT INTO `menu` VALUES ('21', 'Noticias', 'index.php/noticias/1', '1', '2/12', '20', '1', '1', '2017-01-18 13:56:35', '1', '2017-02-11 10:01:40', '1', '2017-02-07 14:10:21', '0000-00-00 00:00:00', '25', '26');
INSERT INTO `menu` VALUES ('22', 'Capacitación', 'index.php/noticias/2', '1', '2/13', '20', '1', '1', '2017-01-18 13:58:19', '1', '2017-02-11 10:01:40', '1', '2017-02-07 14:10:36', '0000-00-00 00:00:00', '27', '28');
INSERT INTO `menu` VALUES ('8', 'Recursos', 'javascript:;', '2', '', '1', '1', '0', '2016-09-26 17:24:46', '1', '2016-11-29 13:14:00', null, '2016-09-26 17:24:46', '0000-00-00 00:00:00', '18', '23');
INSERT INTO `menu` VALUES ('9', 'Biblioteca virtual', 'javascript:;', '2', '', '8', '1', '0', '2016-09-26 17:25:18', '1', '2016-11-29 13:14:00', null, '2016-09-26 17:25:18', '0000-00-00 00:00:00', '19', '20');
INSERT INTO `menu` VALUES ('10', 'Publicaciones', 'index.php/publicaciones-score-bolivia', '1', '2/4', '8', '1', '0', '2016-09-26 17:25:52', '1', '2016-11-29 13:14:00', null, '2016-09-26 17:25:52', '0000-00-00 00:00:00', '21', '22');
INSERT INTO `menu` VALUES ('20', 'NOTICIAS Y CAPACITACIÓN', 'javascript:;', '2', '2/3', '1', '1', '1', '2017-01-18 13:51:35', '1', '2017-02-11 10:01:40', '1', '2017-02-11 10:01:40', '0000-00-00 00:00:00', '24', '29');
INSERT INTO `menu` VALUES ('14', 'CONTÁCTANOS', 'index.php/contacto-maestras-constructoras', '1', '2/5', '1', '1', '1', '2016-09-26 17:30:39', '1', '2017-02-11 10:01:59', '1', '2017-02-11 10:01:59', '0000-00-00 00:00:00', '30', '31');
INSERT INTO `menu` VALUES ('25', 'Quiénes Somos', 'index.php/pagina/quienes-somos', '1', '1/7', '23', '1', '1', '2017-02-07 14:26:52', '1', '2017-02-11 10:00:49', null, '2017-02-07 14:26:52', '0000-00-00 00:00:00', '5', '6');
INSERT INTO `menu` VALUES ('26', 'Cómo funciona', 'index.php/pagina/como-funciona', '1', '1/8', '23', '1', '1', '2017-02-07 14:27:23', '1', '2017-02-11 10:00:49', '1', '2017-02-07 14:27:41', '0000-00-00 00:00:00', '7', '8');
INSERT INTO `menu` VALUES ('24', 'Equidad de género en el sector', 'index.php/informacion/3', '1', '2/14', '3', '1', '1', '2017-02-07 14:11:43', '1', '2017-02-20 17:13:21', '1', '2017-02-20 17:13:21', '0000-00-00 00:00:00', '11', '12');
INSERT INTO `menu` VALUES ('23', 'ACERCA DE LA PLATAFORMA', 'javascript:;', '2', '', '1', '1', '1', '2017-02-07 14:06:51', '1', '2017-02-11 10:00:49', '1', '2017-02-11 10:00:49', '0000-00-00 00:00:00', '4', '9');

-- ----------------------------
-- Table structure for modulo
-- ----------------------------
DROP TABLE IF EXISTS `modulo`;
CREATE TABLE `modulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of modulo
-- ----------------------------
INSERT INTO `modulo` VALUES ('1', 'Pie de página', 'mod_pie', '<div class=\"container\">\r\n<div class=\"row footer-widgets\"><!-- Start Subscribe & Social Links Widget -->\r\n<div class=\"col-md-3 col-xs-12\">\r\n<div class=\"footer-widget social-widget\">\r\n<p><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_maestras_final_7_blancov.png\" style=\"width: 176px; height: 66px;\" /></p>\r\n\r\n<ul class=\"social-icons\">\r\n	<li><a class=\"facebook\" href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\r\n	<li><a class=\"twitter\" href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\r\n	<li><a class=\"google\" href=\"#\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n	<li><a class=\"instgram\" href=\"#\"><i class=\"fa fa-instagram\"></i></a></li>\r\n	<li><a class=\"vimeo\" href=\"#\"><i class=\"fa fa-vimeo-square\"></i></a></li>\r\n	<li><a class=\"skype\" href=\"#\"><i class=\"fa fa-skype\"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Subscribe & Social Links Widget --><!-- Start Twitter Widget -->\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"footer-widget twitter-widget\">\r\n<h4>RECURSOS</h4>\r\n\r\n<p><a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/quienes-somos\" style=\"color: white;\">Qui&eacute;nes Somos</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/como-funciona\" style=\"color: white;\">C&oacute;mo funciona</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/informacion/3\" style=\"color: white;\">Equidad de g&eacute;nero en el sector</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/informacion/4\" style=\"color: white;\">Derechos laborales</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/informacion/5\" style=\"color: white;\">Salud y Seguridad en el Trabajo</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/administrador\" style=\"color: #fab52c;\">ADMINISTRADOR</a></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Twitter Widget --><!-- Start Flickr Widget -->\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"footer-widget twitter-widget\">\r\n<h4>DESARROLLO</h4>\r\n\r\n<p style=\"margin-bottom:10px;\"><strong>Esta plataforma fue desarrollada con el apoyo de la Organizaci&oacute;n Internacional del Trabajo y la Agencia Sueca de Desarrollo Internacional.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/OIT_BLANCO_SIN_LETRAS_P.png\" style=\"width: 74px; height: 70px;\" />&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_asdi_blanco.png\" style=\"width: 169px; height: 70px;\" /></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Flickr Widget --><!-- Start Contact Widget -->\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"footer-widget contact-widget\">\r\n<h4>CONT&Aacute;CTANOS</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 90px;\" valign=\"top\"><span><i class=\"fa fa-phone\" style=\"margin-right: 0.8rem;\"></i>Tel&eacute;fono:</span></td>\r\n			<td>&nbsp;(591) 2423134 - 2423139</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign=\"top\"><span><i class=\"fa fa-envelope\" style=\"margin-right: 0.8rem;\"></i>Email:</span></td>\r\n			<td>&nbsp;caboco.bo@gmail.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign=\"top\"><span><i class=\"fa  fa-map-marker\" style=\"margin-right: 0.8rem;\"></i>&nbsp;Direcci&oacute;n:</span></td>\r\n			<td>&nbsp;Av. Sanchez Lima 2557 - Torre Codes Piso 5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Contact Widget --></div>\r\n<!-- .row --><!-- Start Copyright -->\r\n\r\n<div class=\"copyright-section\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>&copy; OIT Todos los derechos reservados - Desarrollado por <a href=\"http://formaempresas.com\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_formaempresas_blanco.png\" style=\"width: 83px; height: 12px;\" /></a></p>\r\n</div>\r\n<!--\r\n<div class=\"col-md-6\">\r\n<ul class=\"footer-nav\">\r\n	<li><a href=\"#\">Sitemap</a></li>\r\n	<li><a href=\"#\">Privacy Policy</a></li>\r\n	<li><a href=\"#\">Contact</a></li>\r\n</ul>\r\n</div>\r\n--></div>\r\n</div>\r\n<!-- End Copyright --></div>', '1', null, '0000-00-00 00:00:00', null, '2017-04-24 23:59:51', '1', '2017-04-24 23:59:51', '2016-09-13 10:35:07');
INSERT INTO `modulo` VALUES ('2', 'Auspiciadores', 'mod_auspiciantes', '<ul id=\"foo0\">\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n</ul>', '1', null, '0000-00-00 00:00:00', null, '2017-03-18 11:52:32', '1', '2017-03-18 11:52:32', '0000-00-00 00:00:00');
INSERT INTO `modulo` VALUES ('3', 'Empresas', 'mod_auspiciadores', '<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>', '1', null, '0000-00-00 00:00:00', null, '2017-03-18 11:56:16', '1', '2017-03-18 11:56:16', '0000-00-00 00:00:00');
INSERT INTO `modulo` VALUES ('4', 'Score Global', 'mod_score_global', '<div class=\"contenido ng-scope\">\r\n<div class=\"col-xs-12 col-md-6\">\r\n<div class=\"score-content\">\r\n<h3 style=\"padding-top: 20px;\">Maestras constructoras</h3>\r\n\r\n<p>Maestras constructoras se implement&oacute; en m&aacute;s de&nbsp;810&nbsp;empresas en&nbsp;7&nbsp;pa&iacute;ses:</p>\r\n</div>\r\n\r\n<div class=\"score-content centered-parent\">Resultados SCORE Global<br />\r\n(2009 - 2013)</div>\r\n</div>\r\n\r\n<div class=\"col-xs-12 col-md-6\">\r\n<div class=\"score-content\">\r\n<ul class=\"image\">\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">3-4 VECES POR MES</span><br />\r\n				Reuniones de Equipos de Mejoramiento Empresarial (EME)</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">USD 3.000 Y 15.000</span><br />\r\n				Reducci&oacute;n de costos 2-3 meses despu&eacute;s de la formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">29% PROMEDIO</span><br />\r\n				Reducci&oacute;n de defectos</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">HASTA 22% MENOS</span><br />\r\n				Ausentismo laboral</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">3% AHORRO ENERG&Eacute;TICO (KwH)</span><br />\r\n				por cada unidad producida</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">15-50% Icremento en productividad 2,5</span><br />\r\n				meses despu&eacute;s del Taller de Formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">36%</span><br />\r\n				Reducci&oacute;n de accidentes</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '1', null, '0000-00-00 00:00:00', null, '2017-01-16 15:16:13', '1', '2017-01-16 15:16:13', '0000-00-00 00:00:00');
INSERT INTO `modulo` VALUES ('5', 'Escuelas de formación', 'mod_enlaces', '<div>\r\n  <a href=\"http://mi.lapaz.bo/index.php?option=com_content&view=categories&id=20&Itemid=618\" target=\"_blank\">\r\n  <img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_Desarrollo_Economico.jpg\" style=\"width: 318px; height: 100px; padding-top: 10px;\" />\r\n  </a>\r\n</div>\r\n\r\n<div><a href=\"https://www.facebook.com/CCaM.LaPaz/\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_egm.jpg\" style=\"width: 239px; height: 100px;\" /></a></div>\r\n\r\n<div><a href=\"http://www.red-habitat.org\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_red_habitad.png\" style=\"width: 88px; height: 100px;\" /></a></div>\r\n\r\n<div><a href=\"http://www.infocallp.org/infocal2/index.php/ct-menu-item-1\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_infocal2.jpg\" style=\"width: 279px; height: 100px; padding-top: 10px;\" /></a></div>\r\n\r\n<div><a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/escuela-taller-de-la-paz\" target=\"_blank\"><img alt=\"logo-etlp\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_ESCUELA_ETLP.png\" style=\"height: 100px; width:auto; padding-top: 10px;\" /></a></div>', '1', null, '0000-00-00 00:00:00', null, '2017-06-08 09:40:05', '1', '2017-06-08 09:40:05', '2016-10-03 10:15:07');
INSERT INTO `modulo` VALUES ('6', 'Logotipo', 'mod_logotipo', 'logo_maestras_final_7.png', '1', null, '0000-00-00 00:00:00', null, '2017-02-08 17:29:02', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for modulo_score
-- ----------------------------
DROP TABLE IF EXISTS `modulo_score`;
CREATE TABLE `modulo_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of modulo_score
-- ----------------------------
INSERT INTO `modulo_score` VALUES ('1', 'Gestión de la cooperación en el lugar de trabajo', '1', '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `modulo_score` VALUES ('2', 'Gestión de la calidad', '2', '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `modulo_score` VALUES ('3', 'Gestión ambiental', '3', '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `modulo_score` VALUES ('4', 'Gestión de los recursos humanos', '4', '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `modulo_score` VALUES ('5', 'Gestión de la seguridad y salud en el trabajo', '5', '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for navegacion
-- ----------------------------
DROP TABLE IF EXISTS `navegacion`;
CREATE TABLE `navegacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vista` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `navegacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of navegacion
-- ----------------------------
INSERT INTO `navegacion` VALUES ('1', 'usuarios', 'index.php/administrador/usuario', '0000-00-00 00:00:00', '2017-07-11 10:08:46');
INSERT INTO `navegacion` VALUES ('2', 'noticias_generales', 'index.php/administrador/noticia/1', '0000-00-00 00:00:00', '2017-07-10 09:25:57');
INSERT INTO `navegacion` VALUES ('3', 'paginas', 'index.php/administrador/pagina', '0000-00-00 00:00:00', '2017-06-09 11:24:48');
INSERT INTO `navegacion` VALUES ('4', 'menus', 'index.php/administrador/menu', '0000-00-00 00:00:00', '2017-06-08 08:13:17');
INSERT INTO `navegacion` VALUES ('5', 'formadores', 'index.php/administrador/formador', '0000-00-00 00:00:00', '2017-02-06 16:17:20');
INSERT INTO `navegacion` VALUES ('6', 'testimonios', 'index.php/administrador/testimonio', '0000-00-00 00:00:00', '2016-11-10 12:25:20');
INSERT INTO `navegacion` VALUES ('7', 'publicaciones', 'index.php/administrador/publicacion', '0000-00-00 00:00:00', '2017-03-21 11:11:51');
INSERT INTO `navegacion` VALUES ('8', 'contactos', 'index.php/administrador/contacto', '0000-00-00 00:00:00', '2017-06-06 11:25:14');
INSERT INTO `navegacion` VALUES ('9', 'slides', 'index.php/administrador/slide', '0000-00-00 00:00:00', '2017-06-08 09:37:08');
INSERT INTO `navegacion` VALUES ('10', 'bibliotecas', 'index.php/intranet/biblioteca', '0000-00-00 00:00:00', '2016-10-26 10:57:39');
INSERT INTO `navegacion` VALUES ('11', 'biblioteca_categorias', 'index.php/intranet/biblioteca_categoria?search_in=biblioteca_id&search_key=1', '0000-00-00 00:00:00', '2016-10-26 18:57:17');
INSERT INTO `navegacion` VALUES ('12', 'biblioteca_documentos', 'index.php/intranet/biblioteca_documento', '0000-00-00 00:00:00', '2016-10-26 11:56:10');
INSERT INTO `navegacion` VALUES ('13', 'paginas_predisenadas', 'index.php/administrador/pagina_predisenada', '0000-00-00 00:00:00', '2017-06-10 11:47:39');
INSERT INTO `navegacion` VALUES ('16', 'inscripcion_empresas', 'index.php/intranet/inscripcion_empresa', '0000-00-00 00:00:00', '2016-10-27 10:12:00');
INSERT INTO `navegacion` VALUES ('14', 'convocatoria_empresas', 'index.php/intranet/convocatoria_empresa', '0000-00-00 00:00:00', '2016-10-26 17:20:10');
INSERT INTO `navegacion` VALUES ('15', 'convocatoria_formadores', 'index.php/intranet/convocatoria_formador', '0000-00-00 00:00:00', '2016-10-26 12:09:43');
INSERT INTO `navegacion` VALUES ('17', 'especialistas', 'index.php/administrador/especialista/centro', '0000-00-00 00:00:00', '2017-07-11 10:37:53');
INSERT INTO `navegacion` VALUES ('18', 'especialidades', 'index.php/administrador/especialidad', '0000-00-00 00:00:00', '2017-04-04 07:46:18');
INSERT INTO `navegacion` VALUES ('19', 'noticias_capacitacion', 'index.php/administrador/noticia/2', '0000-00-00 00:00:00', '2017-07-10 12:02:53');
INSERT INTO `navegacion` VALUES ('20', 'informacion_equidad', 'index.php/administrador/noticia/centro/3', '0000-00-00 00:00:00', '2017-06-27 10:54:13');
INSERT INTO `navegacion` VALUES ('21', 'informacion_derecho', 'index.php/administrador/informacion/4', '0000-00-00 00:00:00', '2017-06-26 14:17:23');
INSERT INTO `navegacion` VALUES ('22', 'informacion_salud', 'index.php/administrador/informacion/5', '0000-00-00 00:00:00', '2017-06-26 14:17:38');
INSERT INTO `navegacion` VALUES ('23', 'centros_formacion', 'index.php/administrador/centro', '0000-00-00 00:00:00', '2017-07-11 09:41:30');
INSERT INTO `navegacion` VALUES ('24', 'encuesta', 'index.php/administrador/encuesta', '0000-00-00 00:00:00', '2017-07-10 12:03:30');

-- ----------------------------
-- Table structure for noticia
-- ----------------------------
DROP TABLE IF EXISTS `noticia`;
CREATE TABLE `noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of noticia
-- ----------------------------
INSERT INTO `noticia` VALUES ('65', '\"Si me dejaba manosear me pagaban más\": La albañil boliviana que lucha contra el acoso sexual', '<p>&quot;Si me dejaba manosear me pagaban m&aacute;s&quot;: la alba&ntilde;il boliviana que lucha contra el acoso sexual</p>', '<p>&quot;Si me dejaba manosear me pagaban m&aacute;s&quot;: la alba&ntilde;il boliviana que lucha contra el acoso sexual</p>', 'VIDEO', 'https://www.youtube.com/watch?v=5O_OqwUQOII', '', null, 'video', 'BBC MUNDO', '', 'https://img.youtube.com/vi/5O_OqwUQOII/0.jpg', 'noticia_default_thumb.jpg', '3', '1', '0', '0', '2017-03-07 12:19:30', '1', '2017-03-07 12:20:19', '1', '2017-03-07 12:20:19', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('11', 'Diálogo tripartito facilita una nueva normativa en Bolivia para proteger la salud de los trabajadores de la construcción', '<p>La aprobaci&oacute;n de este decreto se dio a trav&eacute;s de la implementaci&oacute;n del Convenio n&uacute;m. 167 de la OIT referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.</p>', '<p>La seguridad y salud para los trabajadores de la construcci&oacute;n constituye una creciente preocupaci&oacute;n en Bolivia que fue abordada por su Ministerio de Trabajo, Empleo y Previsi&oacute;n Social, la Confederaci&oacute;n Sindical de Trabajadores de la Construcci&oacute;n de Bolivia y la C&aacute;mara Boliviana de la Construcci&oacute;n, quienes mediante un proceso de di&aacute;logo tripartito, aprobaron el pasado 5 de octubre el decreto que reglamenta la Ley N&ordm; 545 de ratificaci&oacute;n del Convenio n&uacute;m. 167 de la Organizaci&oacute;n Internacional del Trabajo (OIT) referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.<br />\r\n<br />\r\nEste reglamento establece que se deben tomar todas las medidas necesarias con el fin de proteger la vida y la salud de los trabajadores. Entre las actividades clasificadas dentro del rubro de la construcci&oacute;n se encuentran la edificaci&oacute;n, las excavaciones, la construcci&oacute;n de carreteras, las obras viales, las transformaciones estructurales, la renovaci&oacute;n, el mantenimiento, la reparaci&oacute;n, las labores de limpieza y pintura, y la demolici&oacute;n de todo tipo de edificaciones.&nbsp;<br />\r\n<br />\r\nAsimismo, la reglamentaci&oacute;n trata diversos puntos como ser la prevenci&oacute;n y protecci&oacute;n contra incendios, los tipos de maquinaria, equipos y herramientas, los trabajos en altura, de demolici&oacute;n, las excavaciones, la iluminaci&oacute;n y el ruido ocupacional. Finalmente, la norma dispone que se deben garantizar las condiciones apropiadas de seguridad y salud en el lugar de trabajo para aquellos trabajadores catalogados como &ldquo;cuenta propia&rdquo;.&nbsp;<br />\r\n<br />\r\nCabe resaltar que a pesar que el sector construcci&oacute;n experiment&oacute; un crecimiento sostenido en la &uacute;ltima d&eacute;cada en Bolivia atrayendo el 8,8% de la fuerza laboral del pa&iacute;s, no contaba con regulaciones espec&iacute;ficas que garantizaran la seguridad y salud de los trabajadores.&nbsp;<br />\r\n<br />\r\nFinalmente, es necesario recordar que la OIT tiene entre sus mandatos la construcci&oacute;n de condiciones que propicien el desarrollo de un di&aacute;logo social de manera sostenible, para impulsar la generaci&oacute;n de empleo digno y sostenible; la difusi&oacute;n y respeto de los derechos fundamentales en el trabajo y el tratamiento del conflicto a trav&eacute;s del dialogo.</p>', 'NOTICIA', null, null, null, 'texto', 'OIT', '', 'n13.png', 'n13_thumb.png', '1', '1', '0', '0', '2017-01-18 15:05:24', '1', '2017-01-18 16:07:25', '1', '2017-01-18 16:07:25', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('12', 'Mujeres del sector de la construcción en Bolivia se forman en Derechos Fundamentales y Normas Internacionales del Trabajo', '<p>El 10 de febrero de 2015, el Estado Plurinacional de Bolivia ratific&oacute; el Convenio 167 de la OIT sobre seguridad y salud en el sector de la construcci&oacute;n. En este marco, la OIT promueve un proyecto que cuenta con el financiamiento de la Agencia Sueca de Desarrollo Internacional (ASDI) para la gesti&oacute;n 2016-2017. El proyecto denominado &ldquo;Construyendo Igualdad&rdquo; fue presentado el d&iacute;a 20 de mayo en una mesa multipartita conformada por los actores m&aacute;s importantes del sector de la construcci&oacute;n en Bolivia. Este proyecto tiene como objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo.</p>', '<p>Con el apoyo de la mesa multipartita se consensuaron y validaron diferentes actividades del proyecto, definiendo varias l&iacute;neas de acci&oacute;n. En seguimiento a estos acuerdos, el 21 de julio de 2016 se realiz&oacute; una formaci&oacute;n sobre derechos fundamentales del trabajo a 20 representantes de la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) y a 10 mujeres miembros de la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB).<br />\r\n<br />\r\nLa formaci&oacute;n estuvo a cargo de un asesor legal de la Central Obrera Boliviana (COB), quien abord&oacute; dos grandes temas, las Normas Internacionales del Trabajo y la Normativa Nacional. Dentro de la primera tem&aacute;tica el facilitador explic&oacute; detalladamente las caracter&iacute;sticas del sistema y el control normativo de la OIT y expuso la relaci&oacute;n entre las Normas Internacionales de Trabajo y la legislaci&oacute;n boliviana, tambi&eacute;n habl&oacute; sobre la importancia de la ratificaci&oacute;n del Convenio 167 de la OIT sobre seguridad y salud en la construcci&oacute;n.<br />\r\n<br />\r\nPor otro lado, dentro de la tem&aacute;tica de la normativa boliviana, se abordaron los principales principios del derecho del trabajo, como ser el principio protectivo, el principio de irrenunciabilidad, el principio de inversi&oacute;n de la prueba, el principio de primac&iacute;a de la realidad y el principio de la no discriminaci&oacute;n laboral. Adem&aacute;s, se expusieron los contenidos de la nueva legislaci&oacute;n laboral en Bolivia enfoc&aacute;ndose principalmente en la Ley General del Trabajo.<br />\r\n<br />\r\nAl finalizar el curso, las participantes reconocieron la importancia de las tem&aacute;ticas expuestas ya que muchas de ellas no estaban familiarizadas con las mismas. Se identificaron muchas necesidades que tienen relaci&oacute;n con la falta de seguridad contractual y la falta de conocimiento de las normas internacionales del trabajo. La mayor&iacute;a de las mujeres expresaron su preocupaci&oacute;n frente a la falta de estabilidad laboral debido al incumplimiento de las normativas vigentes.&nbsp;</p>', 'NOTICIA', null, null, null, 'texto', 'OIT', '', 'n2.jpg', 'n2_thumb.jpg', '1', '1', '0', '0', '2017-01-18 15:38:09', '1', '2017-01-18 15:38:09', null, '2017-01-18 15:38:09', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('13', 'La OIT despierta el interés institucional por mejorar las condiciones de trabajo de las mujeres constructoras', '<p>Durante los &uacute;ltimos a&ntilde;os Bolivia experiment&oacute; un importante crecimiento en el sector de la construcci&oacute;n que signific&oacute; una mayor demanda de mano de obra, la cual se presenta como una alternativa para las mujeres que necesitan incrementar sus ingresos. En esta coyuntura, la Oficina de la OIT para los Pa&iacute;ses Andinos, junto a la Agencia Sueca de Desarrollo Internacional (ASDI) y Red H&aacute;bitat, inici&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo; con la convocatoria a una mesa multipartita en la ciudad de La Paz.</p>', '<p>Desde el 2009 el sector de la construcci&oacute;n en Bolivia presenta un importante crecimiento, entre el 8 y 11% anual, situ&aacute;ndose como el segundo de mayor contribuci&oacute;n al PIB nacional luego de los hidrocarburos. Este boom de la construcci&oacute;n ha determinado un incremento de la demanda de mano de obra, donde las mujeres incursionan de forma sostenida. Si bien en la &uacute;ltima d&eacute;cada en Bolivia las mujeres irrumpieron en mercados de trabajo tradicionalmente monopolizados por los hombres, este proceso contin&uacute;a enfrent&aacute;ndose a la discriminaci&oacute;n por raz&oacute;n de g&eacute;nero, de raza y a la desigualdad en la remuneraci&oacute;n, situaci&oacute;n que es especialmente profunda en el caso de aquellas mujeres que actualmente se dedican a la construcci&oacute;n.<br />\r\n<br />\r\nConsciente de esta problem&aacute;tica, y siguiendo el trabajo iniciado con la ratificaci&oacute;n del Convenio n&uacute;m. 167 de la OIT &ldquo;Convenio sobre seguridad y salud en la construcci&oacute;n&rdquo;, la Oficina de la OIT para los Pa&iacute;ses Andinos present&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo;, el cual tiene por objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo, mejorando sus condiciones de vida, empoder&aacute;ndolas en sus derechos fundamentales del trabajo y logrando su emancipaci&oacute;n econ&oacute;mica. Para llegar a esta meta, la OIT organiz&oacute; una mesa multipartita para presentar dicha iniciativa y generar las bases de trabajo conjunto que direccionen y apoyen la ejecuci&oacute;n de las actividades.&nbsp;<br />\r\n<br />\r\nLas instituciones que asistieron a la mesa multipartita fueron: la Central Obrera Boliviana (COB), la Confederaci&oacute;n de Empresarios Privados de Bolivia (CEPB), la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB), la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC), el Gobierno Aut&oacute;nomo Municipal de La Paz (GAMLP), el Gobierno Aut&oacute;nomo Municipal de El Alto (GAMEA), la ONG Red H&aacute;bitat, y la Embajada de Suecia,&nbsp;<br />\r\n<br />\r\nEl encuentro se inici&oacute; con la descripci&oacute;n de la problem&aacute;tica del sector, acorde a los datos estad&iacute;sticos nacionales disponibles, y con la presentaci&oacute;n del proyecto de la OIT. Al finalizar, y luego de un amplio debate, los asistentes se&ntilde;alaron los puntos en los cuales sus organizaciones podr&iacute;an brindar apoyo al proyecto, por ejemplo desde el lado de los Gobiernos Municipales, incluir las iniciativas empresariales de las mujeres constructoras en las incubadoras de empresas y en las ferias municipales; coordinar las actividades de formaci&oacute;n y apoyar en la elaboraci&oacute;n de normativas municipales para asegurar una inclusi&oacute;n digna de las mujeres constructoras. Desde el lado del gremio empresarial se comprometieron en trabajar en aspectos de formaci&oacute;n, certificaci&oacute;n de los procesos en curso, y trabajar en normativas y cultura de seguridad y salud en el lugar del trabajo. Las organizaciones de trabajadores, por su parte, se comprometieron a socializar y coordinar las actividades con sus bases. Finalmente, todos los participantes manifestaron su inter&eacute;s en participar en el seguimiento del proyecto, confirmando su apoyo a las siguientes mesas multipartitas que ser&aacute;n convocadas por la OIT para evaluar el avance de las intervenciones.</p>', 'NOTICIA', null, null, null, 'texto', 'OIT', '', 'n3.jpg', 'n3_thumb.jpg', '1', '1', '0', '0', '2017-01-18 16:02:42', '1', '2017-01-18 16:02:42', null, '2017-01-18 16:02:42', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('32', 'Construyendo Igualdad en el sector de las mujeres trabajadoras en construcción en Bolivia', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', 'VIDEO', 'https://www.youtube.com/watch?v=TGaRmkKyQok', null, null, 'video', '', '', 'https://img.youtube.com/vi/TGaRmkKyQok/0.jpg', 'noticia_default_thumb.jpg', '1', '1', '0', '0', '2017-01-28 13:08:37', '1', '2017-02-18 11:10:54', null, '2017-01-28 13:08:37', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('30', 'La OIT en apoyo a la mujer trabajadora de la construcción en Bolivia', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', 'VIDEO', 'https://www.youtube.com/watch?v=jubqQaWl_UE', '', null, 'video', 'OIT', '', 'https://img.youtube.com/vi/jubqQaWl_UE/0.jpg', 'noticia_default_thumb.jpg', '1', '1', '0', '0', '2017-01-28 13:03:25', '1', '2017-03-07 12:15:21', '1', '2017-03-07 12:15:21', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('35', 'Integer capacitacion dapibus lorem vel nibh volutpat mollis', '<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_4.jpg', 'noti_4_thumb.jpg', '2', '1', '0', '0', '2016-09-23 17:09:43', '1', '2016-09-23 17:09:43', null, '2016-09-23 17:09:43', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('36', 'Integer capacitacion condimentum arcu vel lacinia pretium', '<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_3.jpg', 'noti_3_thumb.jpg', '2', '1', '0', '0', '2016-09-23 17:07:00', '1', '2016-09-23 17:07:00', null, '2016-09-23 17:07:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('37', 'Cras capacitacion vestibulum enim a velit elementum, sit amet facilisis sem malesuada', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_5.jpg', 'noti_5_thumb.jpg', '2', '1', '0', '0', '2016-09-23 17:11:04', '1', '2016-09-23 17:11:04', null, '2016-09-23 17:11:04', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('38', 'Vestibulum capacitacion aliquet erat sit amet tortor posuere, id lacinia sapien varius', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_61.jpg', 'noti_61_thumb.jpg', '2', '1', '0', '0', '2016-09-23 17:12:03', '1', '2017-02-02 16:30:47', '1', '2017-01-30 16:31:07', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('39', 'Aenean capacitacion interdum ipsum sit amet rutrum pharetra', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_7.jpg', 'noti_7_thumb.jpg', '2', '1', '0', '0', '2016-09-23 17:15:31', '1', '2016-10-07 14:45:57', null, '2016-09-23 17:15:31', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('40', 'Nullam capacitacion tincidunt urna nec tellus consequat, non rutrum tellus mattis', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque.&nbsp;Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', 'http://google.com', 'noti_8.jpg', 'noti_8_thumb.jpg', '2', '1', '0', '0', '2016-09-23 17:16:54', '1', '2017-01-30 16:19:38', '1', '2017-01-30 16:19:38', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('66', 'La seguridad social para los trabajadores de la construcción', '<p><strong><span style=\"font-size:14px;\">La seguridad social para los trabajadores de la construcci&oacute;n</span></strong></p>', '<p>Los niveles de ingreso de los trabajadores de la construcci&oacute;n en Bolivia var&iacute;an seg&uacute;n su categor&iacute;a; los obreros dependientes obtienen menor remuneraci&oacute;n en promedio que los cuenta propia, as&iacute; como los salarios de los empleadores o jefes del sector informal superan a los del sector dependiente. Si bien los promedios de ingreso del sector superan el salario m&iacute;nimo nacional, especialmente en el sector independiente, est&aacute;n perdiendo las coberturas y beneficios de la Seguridad Social. Sin embargo, a pesar de que un gran n&uacute;mero de trabajadores de la construcci&oacute;n est&aacute;n en condici&oacute;n de dependencia, la seguridad y salud en el trabajo como la cobertura de Seguridad Social es muy baja, tanto en salud como en pensiones. Por tanto, los trabajadores de la construcci&oacute;n son vulnerables ante las adversidades de corto y largo plazo.</p>', 'VIDEO', 'https://www.youtube.com/watch?v=C7Jt_n6lt1M', null, '', 'video', 'OIT', '', 'https://img.youtube.com/vi/C7Jt_n6lt1M/0.jpg', 'noticia_default_thumb.jpg', '4', '1', '0', '0', '2017-03-07 13:45:00', '1', '2017-03-21 13:42:18', '1', '2017-03-21 13:42:18', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('57', 'Datos Relevantes sobre Género en el Sector de la Construcción', '<p><span style=\"font-size:14px;\"><strong>Datos extra&iacute;dos de la encuesta de hogares 2014</strong></span></p>', '<ul>\r\n	<li style=\"text-align: justify;\"><strong>95,5% del total de los trabajadores de la construcci&oacute;n son varones, frente a solamente 4,5% que son mujeres.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>La mayor parte de las trabajadoras de la construcci&oacute;n son asalariadas, pero no cuentan con cobertura de Seguridad Social por las condiciones de informalidad en las que trabajan.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Del total de los trabajadores en construcci&oacute;n asalariados el 5,6% son mujeres y el 94,4% son hombres.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Entre los hombres 26,4% son trabajadores por cuenta propia mientras que entre las mujeres la presencia de trabajadoras por cuenta propia es de solamente 1,3%.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Del total de los trabajadores sin remuneraci&oacute;n dentro del sector de la construcci&oacute;n 62% son mujeres y 38% son hombres.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Del total de los trabajadores sin remuneraci&oacute;n que son familiares o aprendices dentro del sector de la construcci&oacute;n las mujeres representan un 24,7% y los hombres solamente un 0,8%.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Si bien se acelera la incorporaci&oacute;n de las mujeres en la industria de la construcci&oacute;n y esta mano de obra es apreciada por los empleadores, no se refleja en el nivel de ingresos.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Las mujeres generalmente se vinculan a la actividad de la construcci&oacute;n como ayudantes o peones. Por esta raz&oacute;n las mujeres reciben por lo menos un 20% menos de la paga que se realiza a un var&oacute;n, independientemente de la actividad o la responsabilidad (Peri&oacute;dico P&aacute;gina Siete, domingo 10 de noviembre de 2013).</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Del total de trabajadores de la construcci&oacute;n 58,9% de los hombres ejercen como alba&ntilde;iles y solamente el 15,5% coo ayudantes, en tanto que en el caso de las mujeres , 15,8% trabaja como alba&ntilde;il y 28,6% como ayudantes.</strong></li>\r\n</ul>', 'DATOS ESTADÍSTICOS', '', '', '', 'texto', '', '', 'Untitled8.png', 'Untitled8_thumb.png', '3', '1', '0', '0', '2017-03-07 09:29:08', '1', '2017-03-21 13:35:00', '1', '2017-03-21 13:35:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('58', 'Estereotipos y preconceptos del sector de la construcción', '<p><span style=\"font-size:18px;\"><b>Estereotipos y preconceptos presentes en la gesti&oacute;n del empleo dentro del sector de la construcci&oacute;n</b></span></p>', '<p><strong>EL TEMA:</strong> La fuerza y resistencia f&iacute;sica</p>\r\n\r\n<p><strong>ESTEREOTIPOS:</strong> &ldquo;Las mujeres no tienen suficiente fuerza para trabajar en la construcci&oacute;n&rdquo;</p>\r\n\r\n<p><strong>REFLEXIONEMOS:</strong></p>\r\n\r\n<p>&bull; La fuerza f&iacute;sica depende no solo del sexo: tambi&eacute;n depende del entrenamiento y la experiencia previa. Muchas ocupaciones tradicionalmente femeninas requieren gran fuerza y resistencia. Ejemplos: Comadrona y trabajadora dom&eacute;stica.</p>\r\n\r\n<p>&bull; Cada vez m&aacute;s la tecnolog&iacute;a suple la fuerza f&iacute;sica en el trabajo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><u>La segmentaci&oacute;n laboral por sexo en el sector de la construcci&oacute;n es un problema porque:</u></strong></p>\r\n\r\n<p>&nbsp;&bull; Limita las posibilidades de mujeres y hombres de optar a empleos diversos; y por tanto, limita las posibilidades de las empresas de aprovechar la diversidad del talento.</p>\r\n\r\n<p>&bull; Los sectores donde se genera m&aacute;s empleo (por ejemplo, la construcci&oacute;n con fondos p&uacute;blicos) benefician fundamentalmente a los hombres.</p>\r\n\r\n<p>&bull; Los empleos ocupados por mujeres son normalmente m&aacute;s precarios, con menor remuneraci&oacute;n y prestaciones sociales.</p>\r\n\r\n<p>&bull; Limita las posibilidades de las mujeres de acceder a puestos de decisi&oacute;n</p>\r\n\r\n<p>&nbsp;</p>', 'NOTICIA', '', '', null, 'texto', '', '', 'images.jpg', 'images_thumb.jpg', '0', '1', '0', '0', '2017-03-07 10:19:22', '1', '2017-03-07 10:19:22', null, '2017-03-07 10:19:22', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('59', 'Estereotipos y preconceptos presentes dentro del sector de la construcción', '<p><span style=\"font-size:14px;\"><strong>Estereotipos y preconceptos presentes en la gesti&oacute;n del empleo dentro del sector de la construcci&oacute;n</strong></span></p>', '<p style=\"text-align: justify;\"><strong>EL TEMA:</strong> La fuerza y resistencia f&iacute;sica</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>ESTEREOTIPOS:</strong> &ldquo;Las mujeres no tienen suficiente fuerza para trabajar en la construcci&oacute;n&rdquo;</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>REFLEXIONEMOS:</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">La fuerza f&iacute;sica depende no solo del sexo: tambi&eacute;n depende del entrenamiento y la experiencia previa. Muchas ocupaciones tradicionalmente femeninas requieren gran fuerza y resistencia. Ejemplos: Comadrona y trabajadora dom&eacute;stica.</li>\r\n	<li style=\"text-align: justify;\">Cada vez m&aacute;s la tecnolog&iacute;a suple la fuerza f&iacute;sica en el trabajo.</li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\"><strong>La segmentaci&oacute;n laboral por sexo en el sector de la construcci&oacute;n es un problema porque:</strong></p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;&bull; Limita las posibilidades de mujeres y hombres de optar a empleos diversos; y por tanto, limita las posibilidades de las empresas de aprovechar la diversidad del talento.</p>\r\n\r\n<p style=\"text-align: justify;\">&bull; Los sectores donde se genera m&aacute;s empleo (por ejemplo, la construcci&oacute;n con fondos p&uacute;blicos) benefician fundamentalmente a los hombres.</p>\r\n\r\n<p style=\"text-align: justify;\">&bull; Los empleos ocupados por mujeres son normalmente m&aacute;s precarios, con menor remuneraci&oacute;n y prestaciones sociales.</p>\r\n\r\n<p style=\"text-align: justify;\">&bull; Limita las posibilidades de las mujeres de acceder a puestos de decisi&oacute;n</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'INFORMACIÓN DE INTERÉS', '', '', '', 'texto', '', '', 'images7.jpg', 'images7_thumb.jpg', '3', '1', '0', '0', '2017-03-07 10:20:00', '1', '2017-03-21 13:37:00', '1', '2017-03-21 13:37:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('60', '\"Si me dejaba manosear me pagaban más\": La albañil boliviana que lucha contra el acoso sexual', '<p><span style=\"font-size:18px;\">V&iacute;deo BBC MUNDO</span></p>', '<p><span style=\"font-size:18px;\">V&iacute;deo sobre la lucha contra el acoso sexual en el sector de la construcci&oacute;n</span></p>', 'VIDEO', 'http://vid.io/xqOx', '', null, 'video', 'BBC MUNDO', 'http://vid.io/xqOx', 'https://img.youtube.com/vi/p://vid.io/xqOx/0.jpg', 'noticia_default_thumb.jpg', '0', '1', '0', '0', '2017-03-07 10:27:44', '1', '2017-03-07 10:27:44', null, '2017-03-07 10:27:44', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('61', '\"Si me dejaba manosear me pagaban más\": La albañil boliviana que lucha contra el acoso sexual', '<p><span style=\"font-size:18px;\">V&iacute;deo sobre la lucha contra el acoso sexual en el sector de la construcci&oacute;n</span></p>', '<p>Video BBC Mundo</p>', 'VIDEO', 'https://www.youtube.com/watch?v=5O_OqwUQOII&t=115s', '', null, 'video', 'BBC MUNDO', '', 'https://img.youtube.com/vi/5O_OqwUQOII&t=115s/0.jpg', 'noticia_default_thumb.jpg', '3', '0', '0', '0', '2017-03-07 10:28:04', '1', '2017-03-07 12:18:40', '1', '2017-03-07 12:17:12', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('62', 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', null, 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'gggg.png', 'gggg_thumb.png', '0', '1', '0', '0', '2017-03-07 12:01:12', '1', '2017-03-07 12:01:12', null, '2017-03-07 12:01:12', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('63', 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', null, 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'gggg1.png', 'gggg1_thumb.png', '0', '1', '0', '0', '2017-03-07 12:01:40', '1', '2017-03-07 12:01:40', null, '2017-03-07 12:01:40', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('64', 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', null, 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'FOTO_1_opt.jpg', 'FOTO_1_opt_thumb.jpg', '1', '1', '0', '0', '2017-03-07 12:02:36', '1', '2017-03-07 12:06:33', '1', '2017-03-07 12:06:33', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('72', 'La Seguridad y la Salud en el Sector de la Construcción', '<p>Gu&iacute;a breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', '<p>Gu&iacute;a breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', 'TRÍPTICO INFORMATIVO', null, null, 'TRIPTICO_constructoras1.pdf', 'pdf', '', '', 'TR3_(2)-min2.png', 'TR3_(2)-min2_thumb.png', '0', '1', '0', '0', '2017-03-21 09:39:28', '1', '2017-03-21 13:22:50', '1', '2017-03-21 13:22:50', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('71', 'La Seguridad y la Salud en el Sector de la Construcción', '<p>Gu&iacute;a breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', '<p>G&uacute;ia breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', 'TRÍPTICO INFORMATIVO', null, null, 'TRIPTICO_constructoras.pdf', 'pdf', '', '', 'TR-min.png', 'TR-min_thumb.png', '0', '1', '0', '0', '2017-03-21 09:25:51', '1', '2017-03-21 09:32:14', '1', '2017-03-21 09:32:14', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('73', 'Seguridad y Salud en el Sector de la Construcción', '<p><span style=\"font-size:14px;\"><strong>Repertorio de recomendaciones pr&aacute;cticas de la OIT</strong></span></p>', '<p>De conformidad con la decisi&oacute;n adoptada por el Consejo de Administraci&oacute;n de la Oficina Internacional del Trabajo en su 244.a reuni&oacute;n (noviembre de 1989), del 12 al 19 de marzo de 1991 se celebr&oacute; en Ginebra la Reuni&oacute;n de expertos convocada para elaborar un repertorio de recomendaciones pr&aacute;cticas sobre la seguridad y la salud en la construcci&oacute;n. En esa reuni&oacute;n participaron veinti&uacute;n expertos (siete de cada grupo) designados por el Consejo de Administraci&oacute;n previa consulta con el Grupo Gubernamental, el Grupo de los Empleadores y el Grupo de los Trabajadores del Consejo. La Reuni&oacute;n de expertos examin&oacute; y adopt&oacute; el texto del presente repertorio, que se bas&oacute; sobre un proyecto preparado por la Oficina.</p>\r\n\r\n<p>Estas directivas est&aacute;n destinadas a todas las personas, tanto del sector p&uacute;blico como del sector privado, a las que competen la seguridad y la protecci&oacute;n de la salud en la industria de la construcci&oacute;n. Este repertorio no tiene la finalidad de reemplazar a las leyes o reglamentos nacionales ni a normas vigentes. Ha sido elaborado con el prop&oacute;sito de servir de gu&iacute;a a cuantos deban formular disposiciones sobre esa materia, sean &eacute;stos autoridades p&uacute;blicas, comisiones, dirigentes de empresa u organizaciones de empleadores o de trabajadores de la industria de la construcci&oacute;n.</p>\r\n\r\n<p><br />\r\nEs conveniente interpretar las disposiciones del repertorio tomando en cuenta la situaci&oacute;n nacional y local, los medios t&eacute;cnicos disponibles y la escala de las operaciones, en tanto que condiciones que determinar&aacute;n el alcance de su aplicaci&oacute;n. La publicaci&oacute;n del presente repertorio fue autorizada por el Consejo de Administraci&oacute;n de la Oficina Internacional del Trabajo en su 250.a reuni&oacute;n (mayo-junio de 1991).</p>', 'PUBLICACIÓN', null, null, 'SEGURIDAD_Y_SALUD_EN_EL_SECTOR_DE_LA_CONSTRUCCIÓN.pdf', 'pdf', 'OIT', '', 'JJJJ_(2)1.png', 'JJJJ_(2)1_thumb.png', '5', '1', '0', '0', '2017-03-21 12:04:17', '1', '2017-03-21 13:45:26', '1', '2017-03-21 13:45:26', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('78', 'La Legislación Laboral en Bolivia', '<p><strong><span style=\"font-size:14px;\">La Legislaci&oacute;n Laboral en Bolivia</span></strong></p>', '<p>La Legislaci&oacute;n Laboral en Bolivia</p>', 'INFORMACIÓN DE INTERÉS', null, null, '5__LA_NUEVA_LEGISLACION_LABORAL_EN_BOLIVIA.pdf', 'pdf', '', '', 'SSS-min.png', 'SSS-min_thumb.png', '4', '1', '0', '0', '2017-03-21 13:52:55', '1', '2017-03-21 13:53:22', '1', '2017-03-21 13:53:22', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('76', 'La Seguridad y la Salud en el Sector de la Construcción', '<p><strong><span style=\"font-size:14px;\">Gu&iacute;a breve de medidas de protecci&oacute;n</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:14px;\">Convenio 167 de la OIT</span></strong></p>', '<p>Gu&iacute;a breve de medidas de protecci&oacute;n</p>\r\n\r\n<p>Convenio 167 de la OIT</p>', 'TRÍPTICO INFORMATIVO', null, null, 'TRIPTICO_constructoras2.pdf', 'pdf', '', '', 'TR3_(2)-min4.png', 'TR3_(2)-min4_thumb.png', '5', '1', '0', '0', '2017-03-21 13:24:10', '1', '2017-03-21 13:43:10', '1', '2017-03-21 13:43:10', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('77', 'El hostigamiento o acoso sexual', '<p><strong>&ldquo;Comportamiento en funci&oacute;n del sexo, de car&aacute;cter desagradable y ofensivo para la persona que lo sufre. Para que se trate de acoso sexual es necesaria la confluencia de ambos aspectos negativos: no deseado y ofensivo&rdquo;.</strong></p>\r\n\r\n<p><strong>Organizaci&oacute;n Internacional del Trabajo (OIT)</strong></p>', '<p style=\"text-align: justify;\"><span style=\"font-size:14px;\"><strong>&iquest;Qu&eacute; es el acoso sexual?</strong></span></p>\r\n\r\n<p style=\"text-align: justify;\">El acoso sexual es una conducta no deseada de naturaleza sexual en el lugar de trabajo, que hace que la persona se sienta ofendida, humillada y/o intimidada. Es un t&eacute;rmino relativamente reciente que describe un problema antiguo.</p>\r\n\r\n<p style=\"text-align: justify;\">Tanto la OIT como la CEDAW identifican el acoso sexual como una manifestaci&oacute;n de la discriminaci&oacute;n de g&eacute;nero y como una forma espec&iacute;fica de violencia contra las mujeres.</p>\r\n\r\n<p style=\"text-align: justify;\">El acoso sexual es una violaci&oacute;n de los derechos fundamentales de las trabajadoras y los trabajadores, constituye un problema de salud y seguridad en el trabajo y una inaceptable situaci&oacute;n laboral.</p>', 'HOJA INFORMATIVA', null, null, 'El_hostigamiento_o_acoso_sexual.pdf', 'pdf', 'OIT', '', 'host-min2.png', 'host-min2_thumb.png', '3', '1', '0', '0', '2017-03-21 13:29:41', '1', '2017-03-21 13:34:05', '1', '2017-03-21 13:34:05', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('75', 'Declaración de la OIT relativa a los principios y Derechos Fundamentales en el Trabajo y su seguimiento', '<p><strong><span style=\"font-size:16px;\">Adoptada por la Conferencia Internacional del Trabajo en su octog&eacute;sima sexta reuni&oacute;n, Ginebra, 18 de junio de 1998<br />\r\n(Anexo revisado, 15 de junio de 2010)</span></strong></p>', '<p style=\"text-align: justify;\">La Organizaci&oacute;n Internacional del Trabajo adopt&oacute; el 18 de junio de 1998, en Ginebra, una Declaraci&oacute;n de la OIT relativa a los principios y derechos fundamentales en el trabajo y su seguimiento.De esta manera, la OIT desea aportar una respuesta a los desaf&iacute;os planteados por la mundializaci&oacute;n de la econom&iacute;a, que han sido objeto de numerosos debates en su seno desde 1994.</p>\r\n\r\n<p style=\"text-align: justify;\">Si bien la mundializaci&oacute;n de la econom&iacute;a es un factor de crecimiento econ&oacute;mico, y aun cuando este &uacute;ltimo es una condici&oacute;n esencial del progreso social, todo confirma que no se trata de una condici&oacute;n suficiente para asegurar dicho progreso. El crecimiento debe ir acompa&ntilde;ado, pues, de un m&iacute;nimo de reglas de funcionamiento social fundadas en valores comunes, en virtud de las cuales los propios interesados tengan la posibilidad de reivindicar una participaci&oacute;n justa en las riquezas que han contribuido a crear.</p>\r\n\r\n<p style=\"text-align: justify;\">La Declaraci&oacute;n pretende conciliar la preocupaci&oacute;n por estimular los esfuerzos que todos los pa&iacute;ses dedican a lograr que el progreso social vaya a la par con el progreso de la econom&iacute;a, por una parte, con la de respetar la diversidad de situaciones, las posibilidades y las preferencias de cada pa&iacute;s, por la otra.</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'PUBLICACIÓN', null, null, 'DECLARACIÓN_DE_LA_OIT_RELATIVA_A_LOS_PRINCIPIOS_Y_DERECHOS_FUNDAMENTALES_EN_EL_TRABAJO1.pdf', 'pdf', '', '', 'derec5.png', 'derec5_thumb.png', '4', '1', '0', '0', '2017-03-21 13:18:44', '1', '2017-03-21 13:41:57', '1', '2017-03-21 13:41:57', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('83', 'Decreto Supremo N° 2936: Reglamento de seguridad en la construcción', '<p>Entra en vigencia el Reglamento de seguridad en la construcci&oacute;n, trabajadores y empresas constructoras deben cumplir sus disposiciones.</p>', '<p>Entra en vigencia el reglamento de seguridad en la construcci&oacute;n, trabajadores y empresas constructoras deben cumplir sus disposiciones<br />\r\n<br />\r\nEl Ministerio de Trabajo, Empleo y Previsi&oacute;n Social transcurrido los 180 d&iacute;as de plazo que dispone el Decreto Supremo No. 2936, pone en vigencia el Reglamento de Seguridad en la Construcci&oacute;n que dispone las medidas de seguridad ocupacional que se deben implementar en las obras de construcci&oacute;n para evitar la ocurrencia de&nbsp;accidentes de trabajo y enfermedades ocupacionales.</p>', 'DECRETO SUPREMO N° 2936: REGLAMENTO DE SEGURIDAD EN LA CONSTRUCCIÓN', null, null, 'DECRETO_SUPREMO_2936_BOLIVIA1.pdf', 'pdf', 'OIT', 'https://www.ilo.org/dyn/natlex/docs/ELECTRONIC/103224/125227/F-1939980153/DECRETO%20SUPREMO%202936%20BOLIVIA.pdf', 'Untitled_(2).png', 'Untitled_(2)_thumb.png', '5', '1', '0', '0', '2017-04-06 10:18:48', '1', '2017-04-06 14:05:09', '1', '2017-04-06 14:05:09', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('84', 'Bolivia LEY No 545 del 14 de Julio de 2014', '<p><strong><span style=\"font-size:14px;\">Ratifica el Convenio N&ordm; 167 &ldquo;Convenio Sobre Seguridad y Salud en la Construcci&oacute;n&rdquo;, de la Organizaci&oacute;n Internacional del Trabajo &ndash; OlT, adoptado en la 75 reuni&oacute;n de la Conferencia General.</span></strong></p>', '<p><b>Tipo de la norma:</b>&nbsp;<a href=\"http://www.derechoteca.com/legislacion-bolivia/ley/\" rel=\"tag\">LEY</a><br />\r\n<b>Publicado en Gaceta Oficial de Bolivia:</b>&nbsp;N&deg;&nbsp;<a href=\"http://www.derechoteca.com/gacetabolivia/gaceta-edicion-0662-del-15-julio-2014\">0662</a><br />\r\n<b>Fecha de gaceta:</b>&nbsp;15 de Julio de 2014<br />\r\n<b>Numero de la norma:</b>&nbsp;545<br />\r\n<b>Fecha de la norma:</b>&nbsp;14 de Julio de 2014<br />\r\n<b>Pais:</b>&nbsp;Bolivia</p>', 'LEY No 145 QUE RATIFICA EL CONVENIO 167 DE LA OIT', null, null, 'Ley_545.pdf', 'pdf', '', '', 'ss1.png', 'ss1_thumb.png', '5', '1', '0', '0', '2017-04-06 10:22:12', '1', '2017-04-06 14:06:31', '1', '2017-04-06 14:06:31', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('85', 'Convenio 167 de la OIT', '<h1 id=\"page-title\"><strong><span style=\"font-size:14px;\">C167 - Convenio sobre seguridad y salud en la construcci&oacute;n, 1988 (n&uacute;m.&nbsp;167)</span></strong></h1>\r\n\r\n<h2><strong><span style=\"font-size:14px;\">Convenio sobre seguridad y salud en la construcci&oacute;n (Entrada en vigor: 11 enero 1991)Adopci&oacute;n: Ginebra, 75&ordf; reuni&oacute;n CIT (20 junio 1988) - Estatus: Instrumento actualizado (Convenios T&eacute;cnicos).Pr&oacute;ximo per&iacute;odo en que la denuncia es posible: 11 enero 2021 - 11 enero 2022</span></strong></h2>', '<h2>Pre&aacute;mbulo</h2>\r\n\r\n<p>La Conferencia General de la Organizaci&oacute;n Internacional del Trabajo:</p>\r\n\r\n<p>Convocada en Ginebra por el Consejo de Administraci&oacute;n de la Oficina Internacional del Trabajo, y congregada en dicha ciudad el 1 junio 1988 en su septuag&eacute;sima quinta reuni&oacute;n;</p>\r\n\r\n<p>Recordando los convenios y recomendaciones internacionales del trabajo pertinentes, y en particular el Convenio y la Recomendaci&oacute;n sobre las prescripciones de seguridad (edificaci&oacute;n), 1937; la Recomendaci&oacute;n sobre la colaboraci&oacute;n para prevenir los accidentes (edificaci&oacute;n), 1937; el Convenio y la Recomendaci&oacute;n sobre la protecci&oacute;n contra las radiaciones, 1960; el Convenio y la Recomendaci&oacute;n sobre la protecci&oacute;n de la maquinaria, 1963; el Convenio y la Recomendaci&oacute;n sobre el peso m&aacute;ximo, 1967; el Convenio y la Recomendaci&oacute;n sobre el c&aacute;ncer profesional, 1974; el Convenio y la Recomendaci&oacute;n sobre el medio ambiente de trabajo (contaminaci&oacute;n del aire, ruido y vibraciones), 1977; el Convenio y la Recomendaci&oacute;n sobre seguridad y salud de los trabajadores, 1981; el Convenio y la Recomendaci&oacute;n sobre los servicios de salud en el trabajo 1985; el Convenio y la Recomendaci&oacute;n sobre el asbesto, 1986, y la lista de enfermedades profesionales, en su versi&oacute;n modificada de 1980, anexa al Convenio sobre las prestaciones en caso de accidentes del trabajo, 1964;</p>\r\n\r\n<p>Despu&eacute;s de haber decidido adoptar diversas proposiciones relativas a la seguridad y la salud en la construcci&oacute;n, que constituye el cuarto punto del orden del d&iacute;a de la reuni&oacute;n, y</p>\r\n\r\n<p>Despu&eacute;s de haber decidido que dichas proposiciones revistan la forma de un convenio internacional que revise el Convenio sobre las prescripciones de seguridad (edificaci&oacute;n), 1937,</p>\r\n\r\n<p>adopta, con fecha veinte de junio de mil novecientos ochenta y ocho, el presente Convenio, que podr&aacute; ser citado como el Convenio sobre seguridad y salud en la construcci&oacute;n, 1988:</p>', 'INFORMACIÓN DE INTERÉS', null, null, 'CONVENIO_167.pdf', 'pdf', 'OIT', 'http://www.ilo.org/dyn/normlex/es/f?p=NORMLEXPUB:12100:0::NO::P12100_ILO_CODE:C167', 'conv1.png', 'conv1_thumb.png', '5', '1', '0', '0', '2017-04-06 10:24:50', '1', '2017-04-06 10:24:50', null, '2017-04-06 10:24:50', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('86', 'Celebrando el “Día de la constructora Boliviana”  se realiza la entrega de certificados de formación técnica a 93 mujeres constructoras de las ciudades de La Paz y El alto', '<p><strong><span style=\"font-size:14px;\">El 26 de abril se celebra en Bolivia el &ldquo;D&iacute;a de la Constructora Boliviana&rdquo;, fecha propicia para la entrega de certificados a 93 mujeres trabajadoras de la construcci&oacute;n que culminaron exitosamente diversos cursos de capacitaci&oacute;n t&eacute;cnica en el rubro</span></strong></p>', '<p>El evento conmemorativo por el &ldquo;D&iacute;a de la Constructora Boliviana&rdquo; fue organizado por la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) en coordinaci&oacute;n con la ONG &ldquo;Red H&aacute;bitat&rdquo;&nbsp; y la Organizaci&oacute;n Internacional del Trabajo (OIT) y fue llevado a cabo el d&iacute;a 26 de abril de 2017 en la ciudad de La Paz. En el evento se realiz&oacute; la entrega de certificados a 93 mujeres que culminaron los cursos de capacitaci&oacute;n t&eacute;cnica en construcci&oacute;n (durante las gestiones 2016 y 2017) promovidos por la Red H&aacute;bitat en el marco del Proyecto &ldquo;Mujeres en la construcci&oacute;n hacia su empoderamiento econ&oacute;mico y pol&iacute;tico&rdquo; con el apoyo de ONU Mujeres.</p>\r\n\r\n<p>El acto cont&oacute; con la presencia de representantes de diversas organizaciones, como de los Gobiernos Aut&oacute;nomos Municipales de La Paz y de El Alto (principalmente a trav&eacute;s de sus Secretar&iacute;as de Infraestructura), de la C&aacute;mara Departamental de la Construcci&oacute;n (CADECO), del Ministerio de Trabajo, Empleo y Previsi&oacute;n Social, de la Organizaci&oacute;n Internacional del Trabajo (OIT), de la Red Habitat, de ONU Mujeres y de la ASOMUC adem&aacute;s de mujeres constructoras y p&uacute;blico en general.</p>\r\n\r\n<p>En las intervenciones, los actores coincidieron acerca de la importancia de dar continuidad al &nbsp;apoyo para el fortalecimiento t&eacute;cnico y por tanto competitivo de las mujeres que trabajan en un rubro creciente y mayormente abarcado por hombres.</p>\r\n\r\n<p>Asimismo, se destac&oacute; la importancia de continuar apoyando a las mujeres constructoras hacia la equidad de g&eacute;nero e igualdad de condiciones laborales dentro de este sector en Bolivia. Siendo que uno de los aspectos sobresalientes en este sentido es el de la desigualdad de remuneraci&oacute;n entre hombres y mujeres trabajadores dentro de esta industria. Sobre este &uacute;ltimo punto, la OIT en Bolivia destac&oacute; el trabajo que vienen realizando desde el a&ntilde;o 2016 en el marco del Proyecto <em>&ldquo;Construyendo Igualdad&rdquo; </em>que busca mejorar las condiciones laborales de las mujeres constructoras bolivianas luchando contra formas inaceptables de trabajo. Este proyecto es &nbsp;impulsado por una mesa multipartita conformada por los actores m&aacute;s importantes del sector, como ser la Central Obrera Boliviana (COB), la Confederaci&oacute;n de Empresarios Privados de Bolivia (CEPB), los Gobiernos Aut&oacute;nomos Municipales de La Paz y El Alto, la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB), la Red H&aacute;bitat y la ASOMUC.</p>\r\n\r\n<p>Actualmente, estos actores se encuentran revisando una propuesta de Pol&iacute;tica elaborada por la OIT para promover la igualdad de oportunidades y remuneraci&oacute;n a nivel nacional en el sector de la construcci&oacute;n y, &nbsp;una vez se cuente con las observaciones y aportes de todos los actores que conforman la mesa multipartita, la propuesta ser&aacute; presentada a las autoridades nacionales pertinentes para su consideraci&oacute;n.</p>\r\n\r\n<p>Seg&uacute;n Rodrigo Mogrovejo, Coordinador Nacional de Proyectos de la OIT en Bolivia, esta pol&iacute;tica ser&aacute; el motor que impulse la lucha por la igualdad de condiciones laborales dentro del sector de la construcci&oacute;n en Bolivia.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'F-min.jpg', 'F-min_thumb.jpg', '1', '1', '0', '0', '2017-05-10 08:16:55', '1', '2017-05-10 08:16:55', null, '2017-05-10 08:16:55', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('87', 'Resolución Ministerial 387-17 para aprobación de Normas Técnicas de Seguridad en la Construcción', '<p><strong><span style=\"font-size:14px;\">Resoluci&oacute;n Ministerial 387-17 para aprobaci&oacute;n de Normas T&eacute;cnicas de Seguridad en la Construcci&oacute;n</span></strong></p>', '<p>NORMA T&Eacute;CNICA NTS 001/17 ILUMINACI&Oacute;N</p>\r\n\r\n<p>NORMA T&Eacute;CNICA NTS 002/17 RUIDO</p>\r\n\r\n<p>NORMA T&Eacute;CNICA NTS 003/17 TRABAJOS EN ALTURA</p>\r\n\r\n<p>NORMA T&Eacute;CNICA NTS 004/17 MANIPULACI&Oacute;N DE ESCALERAS</p>\r\n\r\n<p>VNORMA T&Eacute;CNICA NTS 005/17 ANDAMIOS</p>', 'Resolución Ministerial 387-17 para aprobación de Normas Técnicas de Seguridad en la Construcción', null, null, 'R_M_387.pdf', 'pdf', '', '', 'rm-min_(1).png', 'rm-min_(1)_thumb.png', '5', '1', '0', '0', '2017-05-29 09:16:10', '1', '2017-05-29 09:16:59', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('110', 'Mujeres constructoras de Bolivia se capacitaron en temas de gestión empresarial', '<p><strong><span style=\"font-size:14px;\">A trav&eacute;s de la metodolog&iacute;a IMESUNCO de la OIT, las participantes aprendieron herramientas b&aacute;sicas para iniciar un nuevo emprendimiento empresarial.</span></strong></p>', '<p style=\"text-align: justify;\">La Paz &ndash; Un total de 56 mujeres constructoras bolivianas se capacitaron en la metodolog&iacute;a IMESUNCO &ldquo;Inicie y Mejore su Negocio de Construcci&oacute;n&rdquo; de la Organizaci&oacute;n Internacional del Trabajo (OIT). La actividad llevada a cabo en las instalaciones del Gobierno Aut&oacute;nomo Municipal de La Paz, fue organizada por la Oficina de la OIT en Bolivia en coordinaci&oacute;n con la Secretar&iacute;a de Desarrollo Econ&oacute;mico del municipio pace&ntilde;o.<br />\r\n<br />\r\nLa realizaci&oacute;n del curso permiti&oacute; que las participantes aprendan herramientas b&aacute;sicas para iniciar un nuevo emprendimiento empresarial. El contenido abarc&oacute; desde la idea inicial de negocio, la organizaci&oacute;n de una empresa, el manejo del mercado, la determinaci&oacute;n de costos de productos o servicios hasta la identificaci&oacute;n de las fuentes de financiamiento m&aacute;s id&oacute;neas para sus necesidades.</p>\r\n\r\n<p style=\"text-align: justify;\">Durante la actividad, Rodrigo Mogrovejo, Coordinador Nacional de la OIT en Bolivia destac&oacute; que el recurso m&aacute;s importante en el pa&iacute;s es el recurso humano, por lo tanto &ldquo;se debe promover el emprendimiento entre las mujeres del rubro de la construcci&oacute;n, para mejorar su calidad de vida y aumentar su nivel de ingresos, pues apostar por las mujeres es apostar por el desarrollo de Bolivia&rdquo;.<br />\r\n<br />\r\n&ldquo;Ahora que cuentan con los conceptos b&aacute;sicos de su idea de negocio, las mujeres tendr&aacute;n la oportunidad de presentarse a la incubadora de empresas promocionada por la Secretar&iacute;a de Desarrollo Econ&oacute;mico. Este proceso de acompa&ntilde;amiento est&aacute; compuesto por capacitaci&oacute;n y orientaci&oacute;n para validar su idea de negocio&rdquo;, explic&oacute; Mogrovejo.<br />\r\n<br />\r\nLas mujeres ser&aacute;n asistidas t&eacute;cnicamente por profesionales de la Secretar&iacute;a de Desarrollo Econ&oacute;mico para realizar un estudio de mercado y visitar a potenciales clientes, todo ello con el objetivo de hacer realidad la idea de negocio trabajada durante el taller IMESUNCO.<br />\r\n<br />\r\nDebido al &eacute;xito del curso, el Coordinador Nacional de la OIT en Bolivia expres&oacute; a los asistentes la intenci&oacute;n de continuar la formaci&oacute;n de las mujeres, esta vez con un curso sobre Seguridad y Salud en el Trabajo (SST).&nbsp;<br />\r\n<br />\r\nAl respecto, Nevy Chac&oacute;n, representante del Sindicato de Mujeres de la CSTCB, expres&oacute; su apoyo destacando que &ldquo;la seguridad para las mujeres constructoras es indispensable, pues a falta de conocimientos muchas de ellas se exponen diariamente a riesgos y accidentes en sus fuentes laborales&rdquo;.&nbsp;<br />\r\n<br />\r\nEntre las 56 mujeres certificadas se encuentran constructoras independientes y dependientes, muchas de ellas forman parte de la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) y del Sindicato de Mujeres, organizaci&oacute;n afilada a la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB).</p>', 'NOTICIA', '', '', '', 'texto', 'OIT', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_556874/lang--es/index.htm', 'Untitled-min.png', 'Untitled-min_thumb.png', '1', '1', '0', '0', '2017-06-26 14:15:09', '1', '2017-06-26 14:15:34', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('104', 'Normas de condiciones mínimas de niveles de iluminación y de exposición de ruido en los lugares de trabajo', '<p>NTS-001/17-ILUMINACI&Oacute;N</p>\r\n\r\n<p>NTS-002/17-RUIDO</p>', '<p>NORMA DE CONDICIONES M&Iacute;NIMAS DE NIVELES DE ILUMINACI&Oacute;N EN<br />\r\nLOS LUGARES DE TRABAJO</p>\r\n\r\n<p>NORMA DE CONDICIONES M&Iacute;NIMAS DE NIVELES DE EXPOSICI&Oacute;N DE RUIDO<br />\r\nEN LOS LUGARES DE TRABAJO</p>', 'NORMAS DE CONDICIONES MÍNIMAS DE NIVELES DE ILUMINACIÓN Y DE EXPOSICIÓN DE RUIDO EN LOS LUGARES DE TRABAJO', '', '', '', 'pdf', 'Ministerio de Trabajo, Empleo y Previsión Social', '', '1+.png', '1+_thumb.png', '5', '1', '0', '0', '2017-06-09 12:45:08', '1', '2017-06-09 12:56:33', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('112', 'Curso  de  Fortalecimiento en Derechos Humanos y Empoderamiento Político (DEL 5 AL  23 DE JUNIO DE  2017)', '<p>Del 5 al 23 de junio/2017, 23 mujeres y 1 var&oacute;n participaron y concluyeron el &ldquo;Curso de Fortalecimiento en Derechos Humanos y Empoderamiento Pol&iacute;tico&rdquo;, ejecutado en coordinaci&oacute;n con la Escuela de Gestores Municipales del GAMLP, en el marco del proyecto &ldquo;Mujeres en la construcci&oacute;n, hacia su empoderamiento pol&iacute;tico y econ&oacute;mico&rdquo; apoyado por el Fondo para la Igualdad de G&eacute;nero/ ONU mujeres.</p>', '<p>El curso cont&oacute; con la participaci&oacute;n de facilitadoras/es invitados de instituciones como: Colectivo Cabildeo, Comunidad de Derechos Humanos, Comit&eacute; impulsor de la Agenda Legislativa y pol&iacute;tica de las Mujeres, REMTE, CEDLA, Cat&oacute;licas por el Derecho a Decidir y personal t&eacute;cnico de Red H&aacute;bitat.</p>\r\n\r\n<p>El curso conto con 5 m&oacute;dulos de capacitaci&oacute;n: Modulo I. Contexto hist&oacute;rico boliviano. El nacimiento del Estado Plurinacional de Bolivia y la Nueva Constituci&oacute;n Pol&iacute;tica del Estado CPE. M&oacute;dulo II. Los derechos de las mujeres en la normativa internacional y nacional y los avances para su realizaci&oacute;n. M&oacute;dulo III. Derechos econ&oacute;micos de las Mujeres. Las mujeres en la construcci&oacute;n en Bolivia. M&oacute;dulo IV. Fortalecimiento de autoestima, empoderamiento y convivencia. M&oacute;dulo V. Incidencia pol&iacute;tica y comunicaci&oacute;n que incluyo&nbsp; un taller de vocer&iacute;a de dos d&iacute;as con el objetivo de preparar a las participantes para entrevistas en medios de comunicaci&oacute;n.</p>\r\n\r\n<p>Las participantes evaluaron satisfactoriamente este curso orientado a lograr su empoderamiento pol&iacute;tico y econ&oacute;mico&nbsp; y la construcci&oacute;n de liderazgos para la lucha de sus derechos como mujeres trabajadoras en el sector de la construcci&oacute;n.</p>', 'NOTICIA', '', '', '', 'texto', 'RED HABITAT', '', 'Curso-rh-2017.png', 'Curso-rh-2017_thumb.png', '1', '1', '3', '0', '2017-06-29 11:25:37', '28', '2017-07-10 09:25:47', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('105', 'Normas de condiciones mínimas para realizar trabajos en altura y norma de manipulación de escaleras', '<p>NTS-003/17-TRABAJOS EN ALTURA</p>\r\n\r\n<p>NTS-004/17-MANIPULACI&Oacute;N DE ESCALERAS</p>', '<p>NORMA DE CONDICIONES M&Iacute;NIMAS PARA REALIZAR TRABAJOS EN<br />\r\nALTURA</p>\r\n\r\n<p>NORMA DE MANIPULACI&Oacute;N DE ESCALERAS</p>', 'NORMAS DE CONDICIONES MÍNIMAS PARA REALIZAR TRABAJOS EN ALTURA Y NORMA DE MANIPULACIÓN DE ESCALERAS', '', '', '', 'pdf', 'Ministerio de Trabajo, Empleo y Previsión Social', '', '2.png', '2_thumb.png', '5', '1', '0', '0', '2017-06-09 12:48:51', '1', '2017-06-09 12:49:30', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('106', 'Normas para andamios y trabajos de demolición', '<p>NTS-005/17- ANDAMIOS</p>\r\n\r\n<p>NTS-006/17-TRABAJOS DE DEMOLICI&Oacute;N</p>', '<p>ANDAMIOS</p>\r\n\r\n<p>TRABAJOS DE DEMOLICI&Oacute;N</p>', 'NORMAS PARA ANDAMIOS Y TRABAJOS DE DEMOLICIÓN', '', '', 'NTS_005_Andamios_y_NTS_006_Trabajos_de_Demolición.pdf', 'pdf', 'Ministerio de Trabajo, Empleo y Previsión Social', '', '3.png', '3_thumb.png', '5', '1', '0', '0', '2017-06-09 12:52:12', '1', '2017-06-09 12:52:20', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('107', 'Normas de condiciones mínimas para realizar trabajos de excavación y trabajos en espacios confinados', '<p>NTS-007/17-TRABAJOS DE EXCAVACI&Oacute;N</p>\r\n\r\n<p>NTS-008/17-TRABAJOS EN ESPACIOS CONFINADOS</p>', '<p>NORMA DE CONDICIONES M&Iacute;NIMAS PARA REALIZAR TRABAJOS DE<br />\r\nEXCAVACI&Oacute;N</p>\r\n\r\n<p>NORMA DE CONDICIONES M&Iacute;NIMAS PARA REALIZAR TRABAJOS EN<br />\r\nESPACIOS CONFINADOS</p>', 'NORMAS DE CONDICIONES MÍNIMAS PARA REALIZAR TRABAJOS DE EXCAVACIÓN Y TRABAJOS EN ESPACIOS CONFINADOS', '', '', 'NTS_007_Trabajos_de_Excavación_y_NTS_008_Trabajos_en_espacios_confinados.pdf', 'pdf', 'Ministerio de Trabajo, Empleo y Previsión Social', '', '4.png', '4_thumb.png', '5', '1', '0', '0', '2017-06-09 12:55:04', '1', '2017-06-09 12:55:10', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('113', 'La OIT y el Gobierno Municipal de La Paz suman fuerzas en beneficio de la seguridad y salud para las mujeres trabajadoras de la construcción', '<p><strong><span style=\"font-size:14px;\">&ldquo;El desarrollo de un pa&iacute;s no es posible si no va acompa&ntilde;ado del pleno desarrollo de la mujer&rdquo;, se&ntilde;al&oacute; el Director de la Oficina de la OIT para los Pa&iacute;ses Andinos durante la culminaci&oacute;n del proceso de formaci&oacute;n.</span></strong></p>', '<p style=\"text-align: justify;\">Desde el a&ntilde;o 2016 la OIT en Bolivia viene implementando acciones para la dignificaci&oacute;n del trabajo e inclusi&oacute;n de la mujer en el sector de la construcci&oacute;n con un entorno laboral&nbsp; digno y seguro. Este apoyo se realiza con financiamiento de la Cooperaci&oacute;n Sueca y la participaci&oacute;n de diversos actores que conforman una mesa multipartita, entre ellos se encuentran organizaciones de mujeres trabajadoras del sector, la C&aacute;mara Boliviana de la Construcci&oacute;n,&nbsp; los Gobiernos Municipales de La Paz y de El Alto y la ONG Red Habitat.</p>\r\n\r\n<p style=\"text-align: justify;\">En este sentido, la OIT reconoce que la importancia de la seguridad y la salud en el trabajo debe ser un tema prioritario para el sector, como se&ntilde;ala el Coordinador Nacional Rodrigo Mogrovejo: &ldquo;La salud y la seguridad de los trabajadores deben ser de fundamental inter&eacute;s para todos&rdquo;. Bolivia ratific&oacute; el Convenio 167 de la OIT sobre la seguridad y salud en el sector de la construcci&oacute;n el a&ntilde;o 2014 y desde entonces a nivel gubernamental se ha puesto en vigencia normativa que debe ser promovida tanto con empleadores como con trabajadores.</p>\r\n\r\n<p style=\"text-align: justify;\">Por todo lo se&ntilde;alado, en junio de 2017 se llev&oacute; a cabo un proceso de formaci&oacute;n en salud y seguridad en la construcci&oacute;n adaptado para las mujeres que trabajan en el sector y a otras que pretenden incursionar en el mismo. Este proceso abarc&oacute; la tem&aacute;tica de manera te&oacute;rica y pr&aacute;ctica, contando con formaci&oacute;n en aula y visitas a obras de construcci&oacute;n modelo para mostrar ejemplos de buenas pr&aacute;cticas a las participantes. El proceso concluy&oacute; el d&iacute;a 5 de julio con la entrega formal de la certificaci&oacute;n, en la cual se cont&oacute; con la presencia del Director &nbsp;de la Oficina de la OIT Para los Pa&iacute;ses Andinos Philippe Vanhuygem, el Coordinador Nacional Rodrigo Mogrovejo, la esposa del Alcalde Luis Revilla, Maricruz Rivera, el Secretario Municipal de Desarrollo Econ&oacute;mico Sergio Siles S&aacute;nchez, la Directora de la Secretaria Municipal de Desarrollo Econ&oacute;mico Cecilia De Bonadona y la Secretaria Municipal de Desarrollo Social Rosmery Acarapi.</p>\r\n\r\n<p style=\"text-align: justify;\">Durante el acto de entrega, todos los representantes destacaron el important&iacute;simo papel que desempe&ntilde;a la mujer en torno al desarrollo econ&oacute;mico y social de un pa&iacute;s, por lo cual felicitaron la labor de las trabajadoras y su inter&eacute;s en mejorar sus condiciones laborales, como se&ntilde;al&oacute; el Director de la OIT Philippe Vanhuynegem &ldquo;El desarrollo de un pa&iacute;s no es posible si no va acompa&ntilde;ado del pleno desarrollo de la mujer&rdquo;. En el evento las participantes beneficiadas por el proceso agradecieron la atenci&oacute;n que se brinda a su sector y se&ntilde;alaron que su principal objetivo al salir a trabajar es el de volver a sus hogares sanas y salvas, teniendo en cuenta que las medidas de seguridad parten del autocuidado&nbsp; y la responsabilidad que debe tener cada trabajadora al desempe&ntilde;ar sus labores. El apoyo de la OIT continuar&aacute; en este sentido para fortalecer las capacidades de este sector.</p>', 'NOTICIA', '', '', '', 'texto', 'OIT', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_562286/lang--es/index.htm', 'Untitled-min_(1).png', 'Untitled-min_(1)_thumb.png', '1', '1', '0', '0', '2017-07-10 08:15:26', '1', '2017-07-10 08:15:39', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for noticia_grupo
-- ----------------------------
DROP TABLE IF EXISTS `noticia_grupo`;
CREATE TABLE `noticia_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of noticia_grupo
-- ----------------------------
INSERT INTO `noticia_grupo` VALUES ('1', 'General', 'noticias/1', '2', '1', '3', '0', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia_grupo` VALUES ('2', 'Capacitación', 'noticias/2', '19', '1', '3', '0', '0000-00-00 00:00:00', null, '2017-02-21 16:47:19', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia_grupo` VALUES ('3', 'Equidad de genero', 'informacion/3', '20', '1', '2', '0', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia_grupo` VALUES ('4', 'Derechos laborales', 'informacion/4', '21', '1', '2', '0', '0000-00-00 00:00:00', null, '2017-02-21 16:43:18', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia_grupo` VALUES ('5', 'Salud y seguridad en el trabajo', 'informacion/5', '22', '1', '2', '0', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for pagina
-- ----------------------------
DROP TABLE IF EXISTS `pagina`;
CREATE TABLE `pagina` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`estado`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`creado_por`),
  KEY `idx_featured_catid` (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pagina
-- ----------------------------
INSERT INTO `pagina` VALUES ('2', 'Información estadistica', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>\r\n\r\n<p>Sed imperdiet augue eget nulla porttitor aliquet. Nulla eget felis eget lectus vestibulum ornare sed a neque. Maecenas arcu dolor, luctus ut est ac, consequat vulputate erat. Vivamus id consequat justo. Mauris augue turpis, aliquet a massa vel, rutrum convallis arcu. Phasellus sed sollicitudin neque. Aliquam sit amet elit placerat, pellentesque neque sed, convallis lacus.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/estadistica.jpg\" style=\"width: 300px; height: 225px;\" /></p>', '1', '0', '36', 'informacion-estadistica', 'Resultados de maestras constructuras', 'estadisticas, maestras constructoras, caboco', '2016-09-23 18:36:07', '1', '2017-05-22 22:59:11', '1', '2017-01-14 12:46:33', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('3', 'Salud y seguridad en el trabajo', '<p style=\"text-align: center; max-width: 853px; max-height: 480px; margin: 0 auto;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"480\" src=\"https://www.youtube.com/embed/C7Jt_n6lt1M?rel=0\" width=\"853\"></iframe></p>', '1', '0', '75', 'salud-seguridad-trabajo', 'Salud y seguridad en el trabajo', 'salud, seguridad, trabajo, maestras constructoras', '2016-09-24 09:36:45', '1', '2017-06-22 21:42:07', '1', '2017-01-26 15:02:53', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('4', 'Norma Vigente', '<p style=\"text-align: center;\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/norma.png\" style=\"width: 266px; height: 84px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>', '1', '0', '93', 'norma-vigente', 'Norma vigente, maestras trabajadoras', 'maestras trabajadoras, CABOCO', '2016-09-24 10:12:25', '1', '2017-05-19 08:40:16', '1', '2017-01-14 12:12:54', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('5', 'Pagina de Prueba', '<p><span style=\"font-size:24px;\">Ingresar contenido....</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '1', '0', '72', 'pagina-de-prueba', '', '', '2016-11-29 13:37:50', '1', '2017-01-18 14:26:06', '1', '2016-11-29 13:49:29', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('6', 'Equidad de género en el sector', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', '1', '0', '30', 'equidad-de-genero-en-el-sector', 'Equidad de género en el sector', 'equidad, genero, sector', '2017-02-07 14:14:28', '1', '2017-07-10 01:47:56', '0', '2017-02-07 14:14:28', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('7', 'Quiénes somos', '<p>&nbsp;</p>\r\n\r\n<p>La plataforma virtual&nbsp; MAESTRAS CONSTRUCTORAS alberga una base de datos de trabajadoras capacitadas y certificadas en diferentes especialidades del rubro de la construcci&oacute;n. Estas certificaciones son otorgadas por diversos centros de formaci&oacute;n t&eacute;cnica de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>El objetivo de la plataforma es promover v&iacute;nculos laborales entre empleadores y mujeres trabajadoras en la construcci&oacute;n, con el fin de facilitar la b&uacute;squeda y contrataci&oacute;n de trabajadoras capacitadas y as&iacute; promover la visibilizaci&oacute;n de la mano de obra fina que poseen, cuya fama destaca dentro del rubro de la construcci&oacute;n en nuestro pa&iacute;s.</p>\r\n\r\n<p>La Administraci&oacute;n de la Plataforma est&aacute; a cargo de la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), quienes junto con Instituciones de Formaci&oacute;n T&eacute;cnica y con otros actores importantes del sector de la construcci&oacute;n en Bolivia, impulsan el proyecto &ldquo;Construyendo Igualdad&rdquo; iniciado por la Organizaci&oacute;n Internacional de Trabajo (OIT) a principios de 2015 para la promoci&oacute;n de mejores condiciones laborales para las mujeres del sector de la construcci&oacute;n en Bolivia. Este proyecto fue financiado por la Agencia Sueca de Desarrollo Internacional (ASDI).</p>\r\n\r\n<hr />\r\n<div class=\"content-auspiciantes\"><!-- Start Big Heading -->\r\n<div class=\"big-title text-center\">\r\n<h1>Instituciones de <strong>Formaci&oacute;n T&eacute;cnica</strong></h1>\r\n</div>\r\n<!-- End Big Heading -->\r\n\r\n<div class=\"content-auspiciantes\">\r\n<section class=\"auspiciantes slider\" style=\"margin: 60px auto;\">\r\n<div><a href=\"http://www.infocallp.org/infocal2/index.php/ct-menu-item-1\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg\" style=\"height: 70px; width: 195px;\" /></a></div>\r\n\r\n<div><a href=\"https://www.facebook.com/CCaM.LaPaz/\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/LOGO_V3_blanco2.jpg\" style=\"width: 162px; height: 90px;\" /></a></div>\r\n\r\n  <div><a href=\"http://mi.lapaz.bo/index.php?option=com_content&view=categories&id=20&Itemid=618\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/logo_Desarrollo_Economico2.png\" style=\"width: 222px; height: 70px;\" /></a></div>\r\n\r\n<div><a href=\"http://www.red-habitat.org/rh/index.php\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/RED_HABITAT.png\" style=\"height: 90px; width: 81px;\" /></a></div>\r\n\r\n<div><a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/escuela-taller-de-la-paz\" target=\"_blank\"><img alt=\"logo-etlp\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_ESCUELA_ETLP.png\" style=\"height: 90px; width: 81px;\" /> </a></div>\r\n</section>\r\n</div>\r\n</div>', '1', '0', '194', 'quienes-somos', 'quiénes somos', 'quienes somos', '2017-02-07 14:24:13', '1', '2017-07-10 15:11:44', '1', '2017-06-08 09:42:57', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('8', 'Cómo funciona', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', '1', '0', '92', 'como-funciona', 'cómo funciona', 'cómo funciona', '2017-02-07 14:24:58', '1', '2017-07-11 11:21:38', '0', '2017-02-07 14:24:58', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('9', 'Escuela Taller de La Paz', '<div class=\"row\">\r\n<div class=\"col-md-offset-3 col-md-6 col-md-offset-3\">\r\n<div class=\"text-center\"><img atl=\"logo-ETLP\" class=\"img-responsive text-center img-thumbnail\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_ESCUELA_ETLP.png\" style=\"height:150px;\" /></div>\r\n\r\n<h4 class=\"classic-title\"><span>Objetivo:</span></h4>\r\n\r\n<p class=\"text-justify\">La formaci&oacute;n t&eacute;cnica en oficios relacionados con la salvaguarda del patrimonio y mejora de espacios p&uacute;blicos de j&oacute;venes, hombre y mujeres entre 16 y 25 a&ntilde;os y pertenecientes a estratos vulnerables de la ciudad de La Paz, competitivos para ingresar y permanecer en el mercado laboral del sector demandante.</p>\r\n\r\n<div class=\"text-center\" style=\"margin:0px;\"><img atl=\"ETLP-foto\" class=\"img-responsive text-center img-thumbnail\" src=\"/si_maestras/assets/filemanager/userfiles/etlp-foto2.png\" /></div>\r\n\r\n<hr />\r\n<h4 class=\"classic-title\"><span>Metodolog&iacute;a:</span></h4>\r\n\r\n<p class=\"text-justify\">La metodolog&iacute;a de formaci&oacute;n ocupacional de la Escuela Taller De La Paz se base en el <strong>aprender &ndash; produciendo</strong>, fundamental para garantizar un buen aprovechamiento de los conocimientos te&oacute;ricos aprendidos as&iacute; como para lograr un mejor acceso al empleo una vez concluida su formaci&oacute;n. Nuestras pr&aacute;cticas se realizan en obras reales (inmueble y muebles patrimoniales).</p>\r\n\r\n<hr />\r\n<h4 class=\"classic-title\"><span>Qu&eacute; ofrecemos:</span></h4>\r\n\r\n<p class=\"text-justify\">Formaci&oacute;n en las siguientes &aacute;reas: Forja y carpinter&iacute;a met&aacute;lica, construcci&oacute;n, carpinter&iacute;a y talla en madera y policrom&iacute;a, todos dedicados a la conservaci&oacute;n y restauraci&oacute;n. Capacitaci&oacute;n en cursos cortos para el p&uacute;blico en general.</p>\r\n\r\n<div class=\"text-center\"><img atl=\"ETLP-foto\" class=\"img-responsive text-center img-thumbnail\" src=\"/si_maestras/assets/filemanager/userfiles/etlp-foto1.png\" /></div>\r\n\r\n<hr />\r\n<h4 class=\"classic-title\"><span>Titulaciones:</span></h4>\r\n\r\n<h5>T&eacute;cnico medio en construcci&oacute;n para la restauraci&oacute;n.</h5>\r\n\r\n<p class=\"text-justify\">Formaci&oacute;n en el oficio de la construcci&oacute;n tradicional y contempor&aacute;nea y t&eacute;cnicas de conservaci&oacute;n y restauraci&oacute;n de nuestro patrimonio cultural edificado.</p>\r\n\r\n<h5>T&eacute;cnico medio en carpinter&iacute;a para la restauraci&oacute;n.</h5>\r\n\r\n<p class=\"text-justify\">Formaci&oacute;n en el oficio de la carpinter&iacute;a, con el fin de sentar las bases para la elaboraci&oacute;n de objetos decorativos y utilitarios.</p>\r\n\r\n<h5>T&eacute;cnico medio en forja y carpinter&iacute;a met&aacute;lica para la restauraci&oacute;n.</h5>\r\n\r\n<p class=\"text-justify\">Formaci&oacute;n en el oficio de la forja de metales y la carpinter&iacute;a met&aacute;lica; con t&eacute;cnicas de conservaci&oacute;n y restauraci&oacute;n de nuestro patrimonio cultural construido en metal.</p>\r\n\r\n<h5>T&eacute;cnico medio en talla de madera y t&eacute;cnicas de acabado.</h5>\r\n\r\n<p class=\"text-justify\">Formaci&oacute;n en talla en madera de objetos art&iacute;sticos, figuras antropomorfas, zoomorfas, mobiliario de estilo y las diferentes t&eacute;cnicas de acabados como ser policrom&iacute;as, pan de oro, esgrafiado y encarnaciones.</p>\r\n\r\n<div class=\"text-center\"><img atl=\"ETLP-foto\" class=\"img-responsive text-center img-thumbnail\" src=\"/si_maestras/assets/filemanager/userfiles/etlp-foto3.png\" /></div>\r\n\r\n<hr />\r\n<h4 class=\"classic-title\"><span>Obras realizadas por la ETLP:</span></h4>\r\n\r\n<ul>\r\n	<li><strong>- </strong>Restauraci&oacute;n del Museo del Litoral Boliviano.</li>\r\n	<li><strong>- </strong>Restauraci&oacute;n del Museo Tambo Quirquincho.</li>\r\n	<li><strong>- </strong>Reposici&oacute;n del Escudo y conservaci&oacute;n de la fachada de la Casa Espa&ntilde;a.</li>\r\n	<li><strong>- </strong>Restauraci&oacute;n Hall del Palacio Consistorial.</li>\r\n	<li><strong>- </strong>Restauraci&oacute;n de la Unidad Educativa Brasil.</li>\r\n	<li><strong>- </strong>Restauraci&oacute;n de la pintura mural del sal&oacute;n de actos del Colegio Ayacucho.</li>\r\n	<li><strong>- </strong>Conservaci&oacute;n de fachadas y mural de la Casa de la Cultura Franz Tamayo.</li>\r\n	<li><strong>- </strong>Conservaci&oacute;n preventiva de esculturas en espacios abiertos.</li>\r\n	<li><strong>- </strong>Conservaci&oacute;n de las puertas de bronce de la catedral de La Paz, entre muchas.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h4 class=\"classic-title\"><span>Horarios:</span></h4>\r\n\r\n<p class=\"text-justify\">Clases de 8:30 a 16:30 (horario continuo).</p>\r\n\r\n<hr />\r\n<h4 class=\"classic-title\"><span>Becas de apoyo</span></h4>\r\n\r\n<p class=\"text-justify\">Se otorgan becas econ&oacute;micas por d&iacute;a asistido de clases.</p>\r\n\r\n<hr />\r\n<h4 class=\"classic-title\"><span>Nuestra historia:</span></h4>\r\n\r\n<p class=\"text-justify\">El proyecto Escuela Taller de La Paz, nace dentro del <strong>Acuerdo de entendimiento entre la Embajada de Espa&ntilde;a en Bolivia</strong> y el gobierno Municipal de La Paz, en mayo de 2007 y entra en funcionamiento el 5 de mayo de 2009.</p>\r\n\r\n<p class=\"text-justify\"><strong>El 21 de septiembre de 2012, el Ministerio de Educaci&oacute;n emiti&oacute; la Resoluci&oacute;n Ministerial No 629/2012</strong>, autorizando la implementaci&oacute;n y desarrollo del proyecto &ldquo;escuela Talle de La Paz&rdquo;, con car&aacute;cter piloto experimental a cargo de la direcci&oacute;n de Patrimonio Cultural de la Secretaria Municipal de Culturas del Gobierno Aut&oacute;nomo Municipal de La Paz.</p>\r\n\r\n<p class=\"text-justify\">La Escuela Taller de La Paz (ETLP) es un <strong>Centro de Formaci&oacute;n T&eacute;cnica especializado</strong> en la conservaci&oacute;n y restauraci&oacute;n del patrimonio cultural.</p>\r\n\r\n<p class=\"text-justify\">En La Paz se formaron m&aacute;s de 200 j&oacute;venes en la Escuela Taller de La Paz de GAMLP.</p>\r\n\r\n<div class=\"text-center\"><img atl=\"ETLP-foto\" class=\"img-responsive text-center img-thumbnail\" src=\"/si_maestras/assets/filemanager/userfiles/etlp-foto4.png\" /></div>\r\n\r\n<hr />\r\n<h4 class=\"classic-title\"><span>Contactos:</span></h4>\r\n\r\n<ul>\r\n	<li><strong>Email : </strong> escuela.taller@lapaz.bo</li>\r\n	<li>(Secretaria) ETLP</li>\r\n	<li><i class=\"fa fa-mobile\"></i><strong>Tel&eacute;fono: </strong>(2)-2650149</li>\r\n	<li><i class=\"fa fa-globe\"></i><strong>Direcci&oacute;n : </strong> Calle Colon Nro. 379 Entre calles Mercado y Potos&iacute;</li>\r\n</ul>\r\n</div>\r\n</div>', '1', '0', '102', 'escuela-taller-de-la-paz', '', '', '2017-05-30 10:28:59', '1', '2017-07-12 08:43:16', '1', '2017-06-09 11:25:53', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for pagina_predisenada
-- ----------------------------
DROP TABLE IF EXISTS `pagina_predisenada`;
CREATE TABLE `pagina_predisenada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`estado`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`creado_por`),
  KEY `idx_featured_catid` (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pagina_predisenada
-- ----------------------------
INSERT INTO `pagina_predisenada` VALUES ('1', 'Formadores', null, 'formadores-score-bolivia', 'Formadores SCORE Bolivia', 'Maestras Constructoras, CABOCO', '1', '0', '53', '2016-09-10 11:57:40', '0', '2016-10-01 17:04:25', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('2', 'Testimonios', null, 'testimonios-score-bolivia', 'Testimonios SCORE Bolivia', 'Maestras Constructoras, CABOCO', '1', '0', '104', '2016-09-10 11:59:10', '0', '2017-02-14 15:42:18', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('3', 'Página de inicio', null, '', 'www.maestrasconstructoras.org es una base de datos de trabajadoras certificadas en el rubro de la construcción. Forma parte del proyecto \"Construyendo Igualdad\" desarrollado por la OIT con apoyo de ASDI', 'Maestras Constructoras, CABOCO, trabajadoras, certificadas, oit, asdi, mujer, construccion, empleo, bolivia', '1', '0', '10114', '2016-09-14 15:01:08', '0', '2017-07-15 08:44:20', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('4', 'Publicaciones', null, 'publicaciones-score-bolivia', 'Publicaciones Maestras Constructoras', 'Maestras Constructoras, CABOCO', '1', '0', '231', '2016-09-24 18:26:46', '0', '2016-11-14 12:50:17', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('5', 'Contacto', null, 'contacto-maestras-constructoras', 'Contacto Maestras Constructoras', 'Maestras Constructoras, CABOCO', '1', '0', '474', '2016-09-28 11:09:41', '0', '2017-07-15 09:56:47', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('9', 'Caja de herramientas Modulo I', null, 'biblioteca/1', 'Caja de herramientas Modulo I', 'Maestras Constructoras, CABOCO', '0', '0', '8', '2016-10-16 19:53:21', '1', '2016-11-29 13:50:52', '1', '2016-10-18 11:04:28', '2016-10-18 11:04:05');
INSERT INTO `pagina_predisenada` VALUES ('12', 'Noticias generales', null, 'noticias/1', 'Noticias generales', 'Maestras Constructoras, CABOCO', '1', '0', '1169', '0000-00-00 00:00:00', '0', '2017-07-12 23:04:12', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('13', 'Noticias capacitacion', null, 'noticias/2', 'Noticias capacitacion', 'Maestras Constructoras, CABOCO', '1', '0', '456', '0000-00-00 00:00:00', '0', '2017-07-10 22:20:24', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('14', 'Información equidad de género', '', 'informacion/3', 'Informacion equidad de género', 'Maestras Constructoras, CABOCO', '1', '0', '326', '0000-00-00 00:00:00', '0', '2017-07-10 07:39:47', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('15', 'Información derechos laborales', null, 'informacion/4', 'Derechos laborales', 'Maestras Constructoras, CABOCO', '1', '0', '272', '0000-00-00 00:00:00', '0', '2017-07-11 23:21:05', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('16', 'Información salud y seguridad en el trabajo', null, 'informacion/5', 'Salud y seguridad en el trabajo', 'Maestras Constructoras, CABOCO', '1', '0', '479', '0000-00-00 00:00:00', '0', '2017-07-12 18:28:59', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for perfil
-- ----------------------------
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creado` datetime DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of perfil
-- ----------------------------
INSERT INTO `perfil` VALUES ('1', 'Super Usuario', '2016-09-01 15:02:53', '0000-00-00 00:00:00');
INSERT INTO `perfil` VALUES ('2', 'Centro de Formación', '2016-09-01 15:05:14', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for postgrado
-- ----------------------------
DROP TABLE IF EXISTS `postgrado`;
CREATE TABLE `postgrado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of postgrado
-- ----------------------------
INSERT INTO `postgrado` VALUES ('1', 'Pie de página', 'mod_pie', '<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-6 col-md-3\">\r\n<div><img alt=\"OIT\" src=\"/si_score/assets/filemanager/userfiles/sitio/score_blanco.png\" /><br />\r\nEmpresas responsables y sostenibles<br />\r\n&nbsp;</div>\r\n\r\n<div class=\"contact-icon\">\r\n<ul>\r\n	<li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\r\n	<li><a href=\"#\"><i class=\"fa fa-rss\" aria-hidden=\"true\"></i></a></li>\r\n	<li><a href=\"#\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i></a></li>\r\n	<li><a href=\"#\"><i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"></i></a></li>\r\n	<li><a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-xs-12 col-sm-6 col-md-3 footer-content\">\r\n<div class=\"footer-title\">Cont&aacute;ctanos</div>\r\n\r\n<ul class=\"footer-contact\">\r\n	<li><i class=\"fa fa-globe\"></i> Calle Mendez Arcos , Sopocachi. La Paz, Bolivia</li>\r\n	<li><i class=\"fa fa-phone-square\"></i> (+591) 2784578</li>\r\n	<li><i class=\"fa fa-envelope\"></i> <a href=\"mailto:info@urse.org.bo\">info@urse.org.bo</a></li>\r\n	<li><i class=\"fa fa-home\"></i> <a href=\"javascript:;\">SI SCORE</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-xs-12 col-sm-6 col-md-3\">\r\n<div class=\"footer-title\">Programa SCORE</div>\r\n\r\n<ul class=\"footer-section\">\r\n	<li><a href=\"javascript:;\">&iquest;Qu&eacute; es SCORE?</a></li>\r\n	<li><a href=\"javascript:;\">SCORE Global</a></li>\r\n	<li><a href=\"javascript:;\">Representantes de SCORE Per&uacute;</a></li>\r\n	<li><a href=\"javascript:;\">Resultados SCORE Per&uacute;</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-xs-12 col-sm-6 col-md-3\">\r\n<div class=\"footer-title\">Recursos</div>\r\n\r\n<ul class=\"footer-section\">\r\n	<li><a href=\"javascript:;\">Caja de herramientas</a></li>\r\n	<li><a href=\"javascript:;\">Comunicaci&oacute;n y Promoci&oacute;n</a></li>\r\n	<li><a href=\"javascript:;\">Publicaciones</a></li>\r\n</ul>\r\n\r\n<div class=\"footer-title\">Inscripciones</div>\r\n\r\n<ul class=\"footer-section\">\r\n	<li><a href=\"javascript:;\">Empresas</a></li>\r\n	<li><a href=\"javascript:;\">Formadores</a></li>\r\n</ul>\r\n</div>\r\n</div>', '1', null, '0000-00-00 00:00:00', null, '2016-09-23 18:00:06', '1', '2016-09-23 18:00:06', '2016-09-13 10:35:07');
INSERT INTO `postgrado` VALUES ('2', 'Convocatoria', 'mod_convocatoria', '<div class=\"col-xs-12 col-sm-12\">\r\n<div class=\"jumbotron\">\r\n<h2><b>Convocatoria del Programa SCORE </b></h2>\r\n\r\n<p>para peque&ntilde;as y medianas empresas de los sectores:</p>\r\n\r\n<p><a class=\"btn btn-primary btn-lg\" href=\"javascript:;\" role=\"button\">Inscribete aqu&iacute;</a></p>\r\n</div>\r\n</div>', '1', null, '0000-00-00 00:00:00', null, '2016-09-23 16:05:53', '1', '2016-09-23 16:05:53', '0000-00-00 00:00:00');
INSERT INTO `postgrado` VALUES ('3', 'Auspiciadores', 'mod_auspiciadores', '<div class=\"col-xs-12 section-colored ng-scope\" style=\"padding-bottom: 30px; padding-top: 30px;\">\r\n<div align=\"center\" class=\"col-xs-12 col-lg-4 col-md-4\"><img src=\"/si_score/assets/filemanager/userfiles/urse.png\" /></div>\r\n\r\n<div align=\"center\" class=\"col-xs-12 col-lg-4 col-md-4\"><img src=\"/si_score/assets/filemanager/userfiles/camara_nacional.jpg\" /></div>\r\n\r\n<div align=\"center\" class=\"col-xs-12 col-lg-4 col-md-4\"><img src=\"/si_score/assets/filemanager/userfiles/camara_cochabamba.jpg\" /></div>\r\n</div>', '1', null, '0000-00-00 00:00:00', null, '2016-09-23 15:00:45', '1', '2016-09-23 15:00:45', '0000-00-00 00:00:00');
INSERT INTO `postgrado` VALUES ('4', 'Score Global', 'mod_score_global', '<div>\r\n<div class=\"contenido ng-scope\">\r\n<div class=\"col-xs-12 col-md-6\">\r\n<div class=\"score-content\">\r\n<h3 style=\"padding-top: 20px;\">SCORE Global</h3>\r\n\r\n<p>SCORE se implement&oacute; en m&aacute;s de&nbsp;810&nbsp;empresas en&nbsp;7&nbsp;pa&iacute;ses:</p>\r\n</div>\r\n\r\n<div class=\"score-content centered-parent\"><a class=\"centered-child\" href=\"/si_score/assets/filemanager/userfiles/score-global.png\"><img src=\"/si_score/assets/filemanager/userfiles/score-global.png\" style=\"width:100%\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-xs-12 col-md-6\">\r\n<div class=\"score-content\">\r\n<h3 style=\"padding-top: 20px;\">Resultados SCORE Global<br />\r\n(2009 - 2013)</h3>\r\n\r\n<ul class=\"image\">\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">3-4 VECES POR MES</span><br />\r\n				Reuniones de Equipos de Mejoramiento Empresarial (EME)</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">USD 3.000 Y 15.000</span><br />\r\n				Reducci&oacute;n de costos 2-3 meses despu&eacute;s de la formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">29% PROMEDIO</span><br />\r\n				Reducci&oacute;n de defectos</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">HASTA 22% MENOS</span><br />\r\n				Ausentismo laboral</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">3% AHORRO ENERG&Eacute;TICO (KwH)</span><br />\r\n				por cada unidad producida</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">15-50% Icremento en productividad 2,5</span><br />\r\n				meses despu&eacute;s del Taller de Formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">36%</span><br />\r\n				Reducci&oacute;n de accidentes</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '1', null, '0000-00-00 00:00:00', null, '2016-09-26 18:11:45', '1', '2016-09-26 18:11:45', '0000-00-00 00:00:00');
INSERT INTO `postgrado` VALUES ('5', 'Enlaces', 'mod_enlaces', '<div class=\"col-xs-12 col-md-3\">&nbsp;</div>\r\n\r\n<div class=\"col-xs-12 col-md-3\" style=\"line-height: 4.3\"><img id=\"mira\" src=\"assets/img/mira.png\" /> <a href=\"#\">TESTIMONIOS DE EMPRESAS</a></div>\r\n\r\n<div class=\"col-xs-12 col-md-3\" style=\"line-height: 4.3\"><img id=\"mira\" src=\"assets/img/mira.png\" /> <a href=\"#\">RESULTADOS DE SCORE</a></div>\r\n\r\n<div class=\"col-xs-12 col-md-3\">&nbsp;</div>', '1', null, '0000-00-00 00:00:00', null, '2016-10-03 10:16:36', '1', '2016-10-03 10:16:36', '2016-10-03 10:15:07');

-- ----------------------------
-- Table structure for postulacion_empresa
-- ----------------------------
DROP TABLE IF EXISTS `postulacion_empresa`;
CREATE TABLE `postulacion_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of postulacion_empresa
-- ----------------------------
INSERT INTO `postulacion_empresa` VALUES ('1', '4', 'Coca cola', '73232506', '4824622', 'Bautista Gustvo', '1', 'Florida', '1', 'No lo recuerdo', '1', 'Omar Bautista', 'Gerente', 'omarbautista.formaempresas@gmail.com', '73232506', '1', '5', 'Sonia Quisbert', '1', '2016-10-25 12:00:45', null, '2016-10-26 10:57:19', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `postulacion_empresa` VALUES ('2', '3', 'Toyosa SA', '7323250600', '4824622123456', 'Bautista Chambilla Gustavo Omar', '3', 'Las Palmas y tercer anillo', '0', '', '1,2,5', 'Sonia Quisbert Huanca', 'Representante en Bolivia de Coca Cola', 'soniacocacola@gmail.com', '73232506111', '1', '5', 'Roberto Gomez Bolaños', '1', '2016-10-25 12:03:38', null, '2016-10-26 17:45:46', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for postulacion_formador
-- ----------------------------
DROP TABLE IF EXISTS `postulacion_formador`;
CREATE TABLE `postulacion_formador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of postulacion_formador
-- ----------------------------
INSERT INTO `postulacion_formador` VALUES ('1', null, 'Gustavo Omar', 'Bautista', 'Chambilla', '4824622', 'omarbautista@gmail.com', '4824622', null, '2016-10-23 21:05:07', null, '2016-10-23 21:05:07', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for postulacion_formador_tmp
-- ----------------------------
DROP TABLE IF EXISTS `postulacion_formador_tmp`;
CREATE TABLE `postulacion_formador_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of postulacion_formador_tmp
-- ----------------------------
INSERT INTO `postulacion_formador_tmp` VALUES ('1', 'Gustavo Omar', 'Bautista', 'Chambilla', '4824622', 'omarbautista@gmail.com', '4824622', 'Q27jaKDzqAzKX225B2zf', '0', null, '2016-10-22 20:48:47', null, '2016-10-22 20:48:47', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `postulacion_formador_tmp` VALUES ('2', 'Gustavo Omar', 'Bautista', 'Chambilla', '4824622', 'omarbautista@gmail.com', '4824622', 'BdFLii8xmTzfpIlmvZjQ', '1', null, '2016-10-23 20:35:09', null, '2016-10-23 21:05:07', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for postulacion_postgrado
-- ----------------------------
DROP TABLE IF EXISTS `postulacion_postgrado`;
CREATE TABLE `postulacion_postgrado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bloqueado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of postulacion_postgrado
-- ----------------------------

-- ----------------------------
-- Table structure for presentacion
-- ----------------------------
DROP TABLE IF EXISTS `presentacion`;
CREATE TABLE `presentacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of presentacion
-- ----------------------------
INSERT INTO `presentacion` VALUES ('1', '', '<p>lopo</p>', '', '', '', '', '', '', '', 'Nada 4', 'http://4', 'Nada 4', 'http://5', '1', null, '0000-00-00 00:00:00', null, '2016-09-13 10:02:02', '17', '2016-09-13 10:02:02', '2016-09-10 21:14:40');

-- ----------------------------
-- Table structure for publicacion
-- ----------------------------
DROP TABLE IF EXISTS `publicacion`;
CREATE TABLE `publicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of publicacion
-- ----------------------------
INSERT INTO `publicacion` VALUES ('2', 'Fusce interdum libero ut erat sodales, eget vestibulum erat laoreet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>\r\n\r\n<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>\r\n\r\n<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>\r\n\r\n<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>\r\n\r\n<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>\r\n\r\n<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>\r\n\r\n<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>\r\n\r\n<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>\r\n\r\n<p>In eu consectetur leo. Donec interdum, nisi id laoreet egestas, sapien ligula molestie leo, at sodales nulla odio sit amet libero. Suspendisse vestibulum sit amet nisl id consequat. Nam purus quam, rhoncus eget lorem ut, pretium cursus nisi. Phasellus fermentum urna eu massa faucibus placerat. Sed ut pellentesque sapien, posuere fermentum felis. Suspendisse et condimentum risus, ac ultrices eros. Ut ornare in nulla sit amet ultrices. Cras in nisi nulla. Nam nisl lectus, commodo et orci quis, condimentum scelerisque justo. Fusce sit amet dui pulvinar dui molestie placerat.</p>\r\n\r\n<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut.</p>', 'Lorem ipsum', '2016-09-25', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', 'opera_house_article.jpg', 'opera_house_article_thumb.jpg', '1', null, '2016-09-24 19:32:02', '1', '2016-09-26 16:00:40', '1', '2016-09-26 16:00:40', '0000-00-00 00:00:00');
INSERT INTO `publicacion` VALUES ('5', 'Duis bibendum mauris quis lorem tristique, eget aliquam sapien pulvinar lorem', '<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc eua.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>\r\n\r\n<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>\r\n\r\n<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>\r\n\r\n<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>\r\n\r\n<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>\r\n\r\n<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>\r\n\r\n<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>\r\n\r\n<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>\r\n\r\n<p>In eu consectetur leo. Donec interdum, nisi id laoreet egestas, sapien ligula molestie leo, at sodales nulla odio sit amet libero. Suspendisse vestibulum sit amet nisl id consequat. Nam purus quam, rhoncus eget lorem ut, pretium cursus nisi. Phasellus fermentum urna eu massa faucibus placerat. Sed ut pellentesque sapien, posuere fermentum felis. Suspendisse et condimentum risus, ac ultrices eros. Ut ornare in nulla sit amet ultrices. Cras in nisi nulla. Nam nisl lectus, commodo et orci quis, condimentum scelerisque justo. Fusce sit amet dui pulvinar dui molestie placerat.</p>\r\n\r\n<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut.</p>', 'Lorem ipsum', '2016-09-26', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', 'Boston-Globe-Higher-Res1.jpg', 'Boston-Globe-Higher-Res1_thumb.jpg', '1', null, '2016-09-26 14:43:33', '1', '2016-09-26 15:58:17', '1', '2016-09-26 15:58:17', '2016-09-26 14:43:52');
INSERT INTO `publicacion` VALUES ('3', 'Vestibulum commodo magna et libero malesuada, non varius ipsum interdum', '<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>\r\n\r\n<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>\r\n\r\n<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>\r\n\r\n<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>\r\n\r\n<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>\r\n\r\n<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>\r\n\r\n<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>\r\n\r\n<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>\r\n\r\n<p>In eu consectetur leo. Donec interdum, nisi id laoreet egestas, sapien ligula molestie leo, at sodales nulla odio sit amet libero. Suspendisse vestibulum sit amet nisl id consequat. Nam purus quam, rhoncus eget lorem ut, pretium cursus nisi. Phasellus fermentum urna eu massa faucibus placerat. Sed ut pellentesque sapien, posuere fermentum felis. Suspendisse et condimentum risus, ac ultrices eros. Ut ornare in nulla sit amet ultrices. Cras in nisi nulla. Nam nisl lectus, commodo et orci quis, condimentum scelerisque justo. Fusce sit amet dui pulvinar dui molestie placerat.</p>\r\n\r\n<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut.</p>', 'Lorem ipsum', '2016-09-30', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', 'nyt.jpg', 'nyt_thumb.jpg', '1', null, '2016-09-26 14:30:54', '1', '2016-09-26 15:59:14', '1', '2016-09-26 15:59:14', '0000-00-00 00:00:00');
INSERT INTO `publicacion` VALUES ('4', 'Suspendisse eget sapien sit amet odio placerat dictum at sit amet nisi', '<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci. Sed in dapibus arcu. Proin imperdiet, libero ut aliquam consectetur, nulla erat blandit eros, in malesuada dolor augue non dolor. Nunc placerat, risus vitae faucibus convallis, est est commodo quam, nec commodo sapien sapien quis massa. Curabitur ipsum massa, pulvinar nec laoreet eget, condimentum cursus orci. Donec varius risus quis vestibulum tristique. Donec accumsan eleifend leo a dictum. Maecenas gravida dui a metus fermentum venenatis.</p>\r\n\r\n<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus dui sit amet neque congue euismod. Pellentesque dignissim rutrum risus quis dignissim. Curabitur eget tempus velit. Cras egestas leo non erat pharetra tempor. Maecenas feugiat lacinia fermentum. Pellentesque a sem libero. Nam sit amet mattis augue, non tempor nunc.</p>\r\n\r\n<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>\r\n\r\n<p>Integer sit amet lacus in dui maximus tempor. Praesent dapibus ultricies lorem in bibendum. Maecenas neque diam, consequat a elit in, rhoncus dignissim tortor. Aenean congue quam vel eros gravida, eu fermentum mauris posuere. Integer commodo nibh a dui aliquam ultrices. Nullam scelerisque sit amet risus id sollicitudin. Nulla facilisi. Aliquam vitae neque sagittis, maximus tortor ut, hendrerit libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel dolor sodales, dignissim nulla vitae, mollis libero. Donec sit amet auctor leo. Maecenas sodales, felis ut facilisis aliquet, sapien dolor imperdiet arcu, pharetra porttitor sapien magna sodales justo. Duis pulvinar venenatis blandit. Ut finibus nulla diam, ut semper purus pulvinar sit amet.</p>\r\n\r\n<p>In in nunc quis augue dapibus faucibus in ut turpis. Aliquam eleifend ante non elit tristique, nec lobortis massa laoreet. Nunc at commodo mi. Morbi pellentesque efficitur tristique. Duis ut ex a enim cursus pretium. Cras lobortis, leo at hendrerit ultricies, metus magna commodo nulla, sit amet venenatis lorem tellus vel elit. Nunc a ante dictum, sagittis nulla et, aliquet purus. Nulla nibh sem, malesuada vel porttitor quis, laoreet vel mi. Duis non magna a mi iaculis elementum. Cras vel magna in est vehicula malesuada. Aenean eros magna, rhoncus vel orci quis, porttitor tincidunt sapien. Fusce ante ex, convallis quis egestas eu, porttitor eget nunc. Maecenas lobortis enim ut massa molestie rutrum. Sed vel erat felis. Mauris lobortis eros non vehicula varius.</p>\r\n\r\n<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>\r\n\r\n<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>\r\n\r\n<p>Donec commodo felis nec viverra luctus. In sit amet purus eleifend, tincidunt sapien non, tincidunt justo. Sed sit amet auctor augue, eu consequat nisi. Nullam nec tempus libero. Sed orci lacus, sagittis ac metus id, ullamcorper porttitor tellus. Nulla lorem sapien, interdum vitae accumsan vel, maximus sed lorem. Vivamus sit amet dolor ligula. Proin venenatis neque elit, quis ornare elit viverra sed.</p>\r\n\r\n<p>In eu consectetur leo. Donec interdum, nisi id laoreet egestas, sapien ligula molestie leo, at sodales nulla odio sit amet libero. Suspendisse vestibulum sit amet nisl id consequat. Nam purus quam, rhoncus eget lorem ut, pretium cursus nisi. Phasellus fermentum urna eu massa faucibus placerat. Sed ut pellentesque sapien, posuere fermentum felis. Suspendisse et condimentum risus, ac ultrices eros. Ut ornare in nulla sit amet ultrices. Cras in nisi nulla. Nam nisl lectus, commodo et orci quis, condimentum scelerisque justo. Fusce sit amet dui pulvinar dui molestie placerat.</p>\r\n\r\n<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut.</p>', 'Lorem ipsum', '2016-09-30', 'http://summit2016.purposeofcorporation.org/documents/test_document_pdf.pdf', '3486576468_cd0316a8c2.jpg', '3486576468_cd0316a8c2_thumb.jpg', '1', null, '2016-09-26 14:33:37', '1', '2016-09-26 15:59:02', '1', '2016-09-26 15:59:02', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for sesion
-- ----------------------------
DROP TABLE IF EXISTS `sesion`;
CREATE TABLE `sesion` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sesion
-- ----------------------------
INSERT INTO `sesion` VALUES ('7e0f6c7a2ebb8f96b9ce252059159370c7cb942c', '173.254.76.196', '1499918402', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393931383430323B);
INSERT INTO `sesion` VALUES ('6269eda20029b36ecd0caf28937951bad09ca1f2', '216.244.66.198', '1499916852', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393931363835323B);
INSERT INTO `sesion` VALUES ('1da8d0a05a6f3a4f93db4c1cc334daf5eab71d69', '173.254.76.196', '1499914802', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393931343830323B);
INSERT INTO `sesion` VALUES ('00b01725dddadeae2967fe2a08422783e1f3dc12', '173.254.76.196', '1499911202', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393931313230323B);
INSERT INTO `sesion` VALUES ('5db69bd7185e8556e4eae33c634afbc965639b0d', '173.254.76.196', '1499907602', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393930373630323B);
INSERT INTO `sesion` VALUES ('c96b99364190b6ca14b1b446c3d531c9cbab3a92', '173.254.76.196', '1499904002', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393930343030323B);
INSERT INTO `sesion` VALUES ('562898915f11e4147d3d1bb97fa3d8686dd8ee65', '173.254.76.196', '1499900402', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393930303430323B);
INSERT INTO `sesion` VALUES ('97f60e8a6c22a4262816bfb89036be67a1fc6476', '173.252.124.225', '1499900339', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393930303333393B);
INSERT INTO `sesion` VALUES ('2e44cbb4e24841ddae3e6d68138839b436a1916f', '66.249.79.92', '1499898656', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393839383635363B);
INSERT INTO `sesion` VALUES ('bc15335fe692e5fdf94fbc3665e8922f687ae71a', '173.254.76.196', '1499896802', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393839363830323B);
INSERT INTO `sesion` VALUES ('ba01547c123457f1a5253f04790faecb4683d48d', '173.254.76.196', '1499889602', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393838393630323B);
INSERT INTO `sesion` VALUES ('ab6213ffe760bce81a40062e30ba8474195f1f9b', '173.254.76.196', '1499893202', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393839333230323B);
INSERT INTO `sesion` VALUES ('ae4f04817b979dc7d93be2ed29de32bfe2c583a2', '::1', '1499920558', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393932303337303B);
INSERT INTO `sesion` VALUES ('bbed62b4fd69add87565154ce9dca19585d966de', '::1', '1499920813', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439393932303737303B);
INSERT INTO `sesion` VALUES ('d3c68b72b94f641d79495821858f4b8a6b73e384', '::1', '1500122062', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132313739323B);
INSERT INTO `sesion` VALUES ('63deb011ab434bac3496fea6457138d957560971', '::1', '1500122139', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132323133383B);
INSERT INTO `sesion` VALUES ('b0978ca88cdeda4358bf39bd2f1cc10fe5bcbf57', '::1', '1500122748', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132323439353B);
INSERT INTO `sesion` VALUES ('15879147d8d7dd865027a9a4ab1f410b2d90361e', '::1', '1500123147', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132333031323B);
INSERT INTO `sesion` VALUES ('8ce83330ee5d03dbe5c6ecc7de9bc97aa2fa25fa', '::1', '1500123683', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132333430353B);
INSERT INTO `sesion` VALUES ('ed7aa498c23c57cd74f2251767b577401edf63d3', '::1', '1500123907', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132333731383B);
INSERT INTO `sesion` VALUES ('42bddc1798ab6ff8a62f3da280a560ff2b73e340', '::1', '1500124769', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132343439373B);
INSERT INTO `sesion` VALUES ('f2fea0037cf4d18c7146a666760c405b2a83f765', '::1', '1500124974', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132343830393B);
INSERT INTO `sesion` VALUES ('e32c992ec0d1277a958ea80e3e8d731b3b56fac8', '::1', '1500126256', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132363235363B);
INSERT INTO `sesion` VALUES ('ac3171cc09eb0163f774c4f36f6b139182446106', '::1', '1500126661', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132363634303B);
INSERT INTO `sesion` VALUES ('82d018d0f1ea614a303039b30e317836b265b0a1', '::1', '1500127007', 0x5F5F63695F6C6173745F726567656E65726174657C693A313530303132373030373B);

-- ----------------------------
-- Table structure for sidebar
-- ----------------------------
DROP TABLE IF EXISTS `sidebar`;
CREATE TABLE `sidebar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `creado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modificado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sidebar
-- ----------------------------
INSERT INTO `sidebar` VALUES ('1', '1', '0000-00-00 00:00:00', '2016-08-24 13:55:03');

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES ('1', '<h2 class=\"animated2\">Maestras&nbsp;<strong>Constructoras</strong></h2>\r\n\r\n<h3 class=\"animated3\">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class=\"animated4\"><a class=\"slider btn btn-system btn-large\" href=\"#\">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'mconstructora0.png', 'mconstructora0_thumb.png', '1', '0', '2016-10-03 14:43:56', '1', '2017-05-30 12:44:59', '1', '2017-05-30 12:44:59', '0000-00-00 00:00:00');
INSERT INTO `slide` VALUES ('2', '<h2 class=\"animated2\">Noticias y&nbsp;<strong>Capacitaci&oacute;n</strong></h2>\r\n\r\n<h3 class=\"animated3\">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class=\"animated6\"><a class=\"slider btn btn-system btn-large\" href=\"#\">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=sfDW53ddGsY', 'fondo-2.jpg', 'fondo-2_thumb.jpg', '1', '0', '2016-10-03 14:45:27', '1', '2017-05-30 12:42:28', '1', '2017-05-30 12:42:28', '0000-00-00 00:00:00');
INSERT INTO `slide` VALUES ('3', '<h2 class=\"animated2\">Informaci&oacute;n y&nbsp;<strong>Estad&iacute;stica</strong></h2>\r\n\r\n<h3 class=\"animated3\">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class=\"animated5\"><a class=\"slider btn btn-system btn-large\" href=\"#\">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'fondo-11.jpg', 'fondo-11_thumb.jpg', '1', '0', '2016-10-03 14:46:29', '1', '2017-05-30 12:39:15', '1', '2017-05-30 12:39:15', '0000-00-00 00:00:00');
INSERT INTO `slide` VALUES ('4', '<p>esto es un fondo de prueba</p>', '', 'logo-prueba.jpg', 'logo-prueba_thumb.jpg', '1', '0', '2017-06-05 10:06:53', '1', '2017-06-05 10:06:53', null, '2017-06-05 10:06:53', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for testimonio
-- ----------------------------
DROP TABLE IF EXISTS `testimonio`;
CREATE TABLE `testimonio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `despublicado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testimonio
-- ----------------------------
INSERT INTO `testimonio` VALUES ('1', 'Fusce interdum libero ut erat sodales, eget vestibulum erat laoreet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci.</p>', '1', 'https://www.youtube.com/watch?v=sfDW53ddGsY', 'testimonio_empresa_1.jpg', 'testimonio_empresa_1_thumb.jpg', '1', null, '2016-09-26 16:59:53', '1', '2016-09-26 17:00:31', '1', '2016-09-26 17:00:31', '0000-00-00 00:00:00');
INSERT INTO `testimonio` VALUES ('2', 'Duis bibendum mauris quis lorem tristique, eget aliquam sapien pulvinar', '<p>Donec non fringilla ligula, id feugiat ex. Integer sem lorem, facilisis non commodo lacinia, porta at tellus. Praesent non nisi ut mauris suscipit tempor. Duis hendrerit diam ut justo maximus, vitae tincidunt ex consequat. Nunc turpis magna, mollis nec orci in, convallis lobortis augue. Integer porta neque id velit posuere, in consectetur mi auctor. Vivamus est diam, consequat ac quam eu, sagittis viverra nibh.</p>', '1', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'testimonio_empresa_3.jpg', 'testimonio_empresa_3_thumb.jpg', '1', null, '2016-09-26 17:02:14', '1', '2016-09-26 17:02:27', '1', '2016-09-26 17:02:27', '0000-00-00 00:00:00');
INSERT INTO `testimonio` VALUES ('3', 'Vestibulum commodo magna et libero malesuada, non varius ipsum interdum', '<p>Sed laoreet, lacus sit amet dapibus mattis, risus enim aliquam felis, sit amet gravida nisi ex sit amet eros. Mauris nec hendrerit leo, vitae venenatis augue. Nullam convallis vestibulum augue vel interdum. In hac habitasse platea dictumst. Suspendisse placerat quam quis est vehicula, a imperdiet lectus vehicula. Praesent tincidunt ornare mattis. Morbi vulputate vestibulum rhoncus.</p>', '1', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'testimonio_empresa_21.jpg', 'testimonio_empresa_21_thumb.jpg', '1', null, '2016-09-26 17:08:06', '1', '2016-09-26 17:08:06', null, '2016-09-26 17:08:06', '0000-00-00 00:00:00');
INSERT INTO `testimonio` VALUES ('4', 'Proin sit amet justo varius, lobortis orci at, blandit urna', '<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt.</p>', '1', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'testimonio_empresa_4.jpg', 'testimonio_empresa_4_thumb.jpg', '1', null, '2016-09-26 17:08:47', '1', '2016-09-26 17:09:38', '1', '2016-09-26 17:09:38', '0000-00-00 00:00:00');
INSERT INTO `testimonio` VALUES ('5', 'Arman Rojas Fusce interdum libero ut erat sodales', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra sagittis risus, at rutrum odio consectetur id. Nulla augue dui, consectetur vitae diam sed, dignissim porta augue. Fusce efficitur consectetur pharetra. Nam faucibus ipsum id lacus venenatis, at sollicitudin sem interdum. Sed pellentesque, urna a semper rutrum, lectus lorem sagittis lorem, ac lacinia sapien leo a ipsum. Etiam ac neque ornare, vestibulum ligula venenatis, efficitur orci</p>', '2', '', 'foto_4.jpg', 'foto_4_thumb.jpg', '1', null, '2016-09-26 17:11:41', '1', '2016-09-26 17:11:41', null, '2016-09-26 17:11:41', '0000-00-00 00:00:00');
INSERT INTO `testimonio` VALUES ('6', 'Walter Riso Duis bibendum mauris quis lorem tristique', '<p>Suspendisse nec mi eu risus mollis tempor. Aliquam tortor risus, aliquam dapibus rutrum sed, imperdiet eget nunc. Cras id elit lacus. Integer malesuada a turpis in mollis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', '2', '', 'foto_8.jpg', 'foto_8_thumb.jpg', '1', null, '2016-09-26 17:12:44', '1', '2016-09-26 17:12:44', null, '2016-09-26 17:12:44', '0000-00-00 00:00:00');
INSERT INTO `testimonio` VALUES ('7', 'Federico Casas Suspendisse eget sapien sit amet', '<p>Mauris dapibus et sapien ut sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed faucibus, magna non tempor mattis, ante urna ornare dui, nec fermentum neque nisi ac odio. Proin lacus dui, posuere at erat ac, malesuada porta ante. Phasellus ac urna nec sapien aliquam auctor vel sit amet diam. Sed tempor diam nunc, sit amet mollis eros porttitor non. Mauris dictum sem ut orci lacinia tincidunt. Suspendisse consequat diam velit, nec condimentum ipsum consequat ut. </p>', '2', '', 'foto_3.jpg', 'foto_3_thumb.jpg', '1', null, '2016-09-26 17:13:51', '1', '2016-09-26 17:13:51', null, '2016-09-26 17:13:51', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `deshabilitado` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'Administrador', 'PRINCIPAL', 'admaestrascons', 'info@maestrasconstructoras.org', 'qY8ByUNhjFJ0zs6', '1', '0', '', '', '1', null, '2017-07-11 08:56:05', '2016-09-26 15:46:58', '0', '2017-07-11 08:56:05', '1', '2017-02-22 16:17:53', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('19', 'Nestor', 'Castro', 'nestorcastro', 'njcm152429@gmail.com', 'Y-&x+G\'\"aZ\\q', '2', '2', '', '', '1', null, '2017-07-11 10:26:21', '2017-06-03 13:48:13', '1', '2017-07-11 10:26:21', null, '2017-06-03 13:48:13', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('16', 'Ronald', 'Touchard', 'ronaldtouchard', 'rttcomunicate@gmail.com', 'N7eralIpwF.A', '2', '2', '', '', '1', null, '0000-00-00 00:00:00', '2017-06-03 13:30:06', '1', '2017-06-03 13:30:06', null, '2017-06-03 13:30:06', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('15', 'Gustavo', 'Fernandez', 'gustavofernandez', 'gustavo.fernandez@lapaz.bo', 'D-aG0vhKuFwn', '2', '1', '', '', '1', null, '2017-07-08 10:21:52', '2017-06-03 13:12:40', '1', '2017-07-08 10:21:52', null, '2017-06-03 13:12:40', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('12', 'Rolando', 'Saravia', 'rolandosaravia', 'rolosaravi@yahoo.com', 'qY8ByUNhjFJ0zs6', '2', '5', '', '', '1', null, '2017-06-19 08:04:38', '2017-06-03 13:03:26', '1', '2017-06-19 08:04:38', '1', '2017-06-12 15:56:02', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('17', 'Efrain', 'Valero', 'efrainvalero', 'efrainvalerod@gmail.com', 'qY8ByUNhjFJ0zs6', '2', '2', '', '', '1', null, '2017-06-15 00:47:45', '2017-06-03 13:36:33', '1', '2017-06-15 00:47:45', null, '2017-06-03 13:36:33', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('18', 'Nestor', 'Alave', 'nestoralave', 'nestoralave@hotmail.com', 'Q2Y?xO8F09D7', '2', '2', '', '', '1', null, '2017-06-03 14:00:24', '2017-06-03 13:37:42', '1', '2017-06-03 14:00:24', null, '2017-06-03 13:37:42', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('13', 'Marcelino', 'Osco', 'marcelinoosco', 'marcelino__osco@hotmail.com', '+\\6viUbk)|tp', '2', '5', '', '', '1', null, '2017-06-12 15:42:30', '2017-06-03 13:05:26', '1', '2017-06-12 15:56:55', '1', '2017-06-12 15:56:55', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('14', 'Paola', 'Carvallo', 'paolacarvallo', 'arq.paolacarvallo@gmail.com', 'ltY-nN\\Q_aW1', '2', '5', '', '', '1', null, '2017-06-19 09:34:23', '2017-06-03 13:07:14', '1', '2017-06-19 09:34:23', '1', '2017-06-12 15:57:42', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('28', 'Carlos Roberto', 'Hurtado Meneses', 'carloshurtado', 'carloshurtado@red-habitat.org', 'auVr_J7*NHAb', '2', '3', '', '', '1', null, '2017-07-08 10:25:35', '2017-06-22 10:40:33', '1', '2017-07-08 10:25:35', '1', '2017-06-22 10:46:21', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('24', 'Pastora', 'Zuñagua', 'Pastora Zuñagua', 'patyzm@red-habitat.org', '1azJLwy6YFdO', '2', '3', '', '', '1', null, '0000-00-00 00:00:00', '2017-06-06 19:40:14', '1', '2017-06-06 19:40:14', null, '2017-06-06 19:40:14', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('30', 'test nombre', 'test apellido', 'test', 'test@gmail.com', 'TP6A?c7hlJzs', '2', '1', '', '', '1', null, '2017-06-27 10:50:24', '2017-06-27 10:48:12', '1', '2017-06-27 10:50:24', '1', '2017-06-27 10:49:01', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('29', 'Adrian Rafael', 'Calderon Braun', 'adriancalderon', 'adrian.calderon@lapaz.bo', 'KZj\\kp\'lcYsv', '2', '4', '', '', '1', null, '2017-06-26 15:01:51', '2017-06-22 10:50:55', '1', '2017-06-26 15:01:51', null, '2017-06-22 10:50:55', '0000-00-00 00:00:00');
SET FOREIGN_KEY_CHECKS=1;
