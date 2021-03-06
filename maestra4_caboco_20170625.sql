/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : maestra4_caboco

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2017-06-25 09:31:22
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of centro_formacion
-- ----------------------------
INSERT INTO `centro_formacion` VALUES ('1', 'EG', 'Escuela de gestores municipales', 'escuela_de_gestores_municipales', '2017-01-18 14:50:47', '1', '2017-05-09 22:27:34', '1', '2017-05-09 22:27:34');
INSERT INTO `centro_formacion` VALUES ('2', 'IN', 'Infocal', 'infocal', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `centro_formacion` VALUES ('3', 'RH', 'Red habitat', 'red_habitat', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `centro_formacion` VALUES ('4', 'SM', 'Secretaria municipal de desarrollo economico', 'secretaria_municipal_de_desarrollo_economico', '2017-01-18 14:50:47', '1', '2017-01-18 14:49:55', '1', '2017-01-18 14:49:55');
INSERT INTO `centro_formacion` VALUES ('5', 'ET', 'Escuela Taller de La Paz', 'escuelas_taller_de_la_cooperacion_espanola', '2017-05-07 16:47:59', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `centro_formacion` VALUES ('7', 'HU', 'HUGO MONTES', 'HUGO_MONTES', '2017-06-04 21:19:27', '1', '2017-06-25 08:07:15', '1', '2017-06-25 08:07:15');
INSERT INTO `centro_formacion` VALUES ('10', 'MV', 'mi prueba', 'mi_prueba', '2017-06-24 22:58:46', '1', '2017-06-24 22:58:46', '1', '2017-06-24 22:58:46');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contacto
-- ----------------------------
INSERT INTO `contacto` VALUES ('2', 'aaa', 'aaa@gmail.com', 'aaa', '0', null, '2016-11-11 15:17:30', null, '2016-11-11 15:17:30', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `contacto` VALUES ('3', 'bbb', 'bbb@gmail.com', 'bbb', '0', null, '2016-11-11 15:19:02', null, '2016-11-11 15:19:02', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cuestionario_respuesta
-- ----------------------------
INSERT INTO `cuestionario_respuesta` VALUES ('92', '52', '3', null, null, '1');
INSERT INTO `cuestionario_respuesta` VALUES ('93', '52', '1', null, '16', null);
INSERT INTO `cuestionario_respuesta` VALUES ('94', '52', '2', null, '1', null);
INSERT INTO `cuestionario_respuesta` VALUES ('95', '52', '2', null, '2', null);
INSERT INTO `cuestionario_respuesta` VALUES ('96', '52', '5', null, null, '9');
INSERT INTO `cuestionario_respuesta` VALUES ('97', '52', '6', null, null, '15');
INSERT INTO `cuestionario_respuesta` VALUES ('98', '52', '6', null, null, '18');
INSERT INTO `cuestionario_respuesta` VALUES ('99', '53', '3', null, null, '2');
INSERT INTO `cuestionario_respuesta` VALUES ('100', '53', '4', null, null, '5');
INSERT INTO `cuestionario_respuesta` VALUES ('101', '53', '4', null, null, '6');
INSERT INTO `cuestionario_respuesta` VALUES ('102', '54', '3', null, null, '1');
INSERT INTO `cuestionario_respuesta` VALUES ('103', '54', '1', null, '11', null);
INSERT INTO `cuestionario_respuesta` VALUES ('104', '54', '2', null, '2', null);
INSERT INTO `cuestionario_respuesta` VALUES ('105', '54', '2', null, '3', null);
INSERT INTO `cuestionario_respuesta` VALUES ('106', '54', '5', null, null, '10');
INSERT INTO `cuestionario_respuesta` VALUES ('107', '54', '6', null, null, '15');
INSERT INTO `cuestionario_respuesta` VALUES ('108', '54', '6', null, null, '16');
INSERT INTO `cuestionario_respuesta` VALUES ('109', '54', '6', null, null, '18');

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

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
INSERT INTO `especialista_empleador` VALUES ('52', 'Florencio', 'hugomontes927@gmail.com', 'direccion a', '2017-02-10 13:24:57', '2017-02-10 13:24:57');
INSERT INTO `especialista_empleador` VALUES ('53', 'Ramiro Mitre', 'hugomontes.formaempresas@gmail.com', 'Av. Kollasuyo No. 654', '2017-02-11 10:05:56', '2017-02-11 10:05:56');
INSERT INTO `especialista_empleador` VALUES ('54', 'Esteban', 'hugomontes927@gmail.com', 'calle m', '2017-02-11 11:17:23', '2017-02-11 11:17:23');
INSERT INTO `especialista_empleador` VALUES ('55', 'Ramiro Mitre', 'hugomontes.formaempresas@gmail.com', 'Sanchez Lima 2293 Sopocachi', '2017-02-23 09:03:26', '2017-02-23 09:03:26');
INSERT INTO `especialista_empleador` VALUES ('56', 'asdf', 'hugomontes.formaempresas@gmail.com', 'asdf', '2017-05-21 16:04:50', '2017-05-21 16:04:50');
INSERT INTO `especialista_empleador` VALUES ('57', 'Gonzalo', 'hugomontes.formaempresas@gmail.com', 'asdf', '2017-05-21 17:45:04', '2017-05-21 17:45:04');
INSERT INTO `especialista_empleador` VALUES ('58', 'Perico Perez', 'hugomontes.formaempresas@gmail.com', 'Calle abc nro 123', '2017-05-27 11:34:38', '2017-05-27 11:34:38');
INSERT INTO `especialista_empleador` VALUES ('59', 'Perico Perez', 'hugomontes.formaempresas@gmail.com', 'Calle abc nro 123', '2017-05-27 11:49:35', '2017-05-27 11:49:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

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
INSERT INTO `especialista_especialidad` VALUES ('29', 'SMMM29', '4', '8', 'Soldadura', '2017-01-18 14:50:47', '1', '2017-01-18 14:50:03', '1', '2017-01-18 14:50:03');
INSERT INTO `especialista_especialidad` VALUES ('30', 'ETOF30', '5', '2', 'Revoques', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('31', 'ETOF31', '5', '2', 'Molduras / Ornamentación', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('32', 'ETPL32', '5', '3', 'Instalaciones Sanitarias y plomeria Certificado por la  Escuela de Gestores GAMLP', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('33', 'ETEL33', '5', '5', 'Intalaciones Eléctricas Domiciliarias', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('34', 'ETCI34', '5', '7', 'Acabado', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('35', 'ETMM35', '5', '8', 'Soldadura', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('36', 'ETMM36', '5', '8', 'Forjado / Herrería', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00', '1', '2017-05-09 22:37:00');
INSERT INTO `especialista_especialidad` VALUES ('37', 'ETRE37', '5', '9', 'Restauración de muebles antiguos', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, null);
INSERT INTO `especialista_especialidad` VALUES ('38', 'ETRE38', '5', '9', 'Restauración de construcciones patrimoniales', '0000-00-00 00:00:00', null, '0000-00-00 00:00:00', null, null);
INSERT INTO `especialista_especialidad` VALUES ('55', 'HUOF55', '7', '2', 'mmm', '2017-06-25 08:59:39', '1', '2017-06-25 08:59:39', '1', '2017-06-25 08:59:39');

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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_solicitud
-- ----------------------------
INSERT INTO `especialista_solicitud` VALUES ('52', '22', '2017-01-02', '2017-01-31', '42', '1', '3', '1', '2017-01-26 14:40:03', '2017-06-21 10:56:56', '2017-06-21 10:56:56');
INSERT INTO `especialista_solicitud` VALUES ('53', '30', '2017-01-03', '2017-01-31', '43', '1', '4', '1', '2017-01-26 18:37:48', '2017-06-21 11:03:40', '2017-06-21 11:03:40');
INSERT INTO `especialista_solicitud` VALUES ('54', '5', '2017-02-01', '2017-02-17', '44', '1', '2', '1', '2017-02-07 13:44:57', '2017-06-21 13:05:07', '2017-06-21 13:05:07');
INSERT INTO `especialista_solicitud` VALUES ('55', '23', '2017-02-01', '2017-02-16', '45', '1', '3', '1', '2017-02-07 17:19:44', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('56', '5', '2017-02-01', '2017-02-10', '46', '1', '4', '1', '2017-02-07 17:25:38', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('57', '23', '2017-02-17', '2017-02-25', '47', '1', '5', '1', '2017-02-07 17:27:50', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('58', '3', '2017-02-23', '2017-02-28', '48', '1', '1', '1', '2017-02-10 12:50:38', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('59', '22', '2017-02-01', '2017-02-16', '49', '1', '2', '1', '2017-02-10 13:13:18', '2017-05-27 14:36:52', null);
INSERT INTO `especialista_solicitud` VALUES ('60', '23', '2017-02-01', '2017-06-23', '50', '2', '2', '0', '2017-02-10 13:14:30', '2017-02-10 13:14:30', null);
INSERT INTO `especialista_solicitud` VALUES ('61', '23', '2017-02-01', '2017-02-16', '51', '1', '5', '1', '2017-02-10 13:23:18', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('62', '33', '2017-02-08', '2017-02-17', '52', '1', '4', '1', '2017-02-10 13:24:57', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('63', '5', '2017-02-12', '2017-02-25', '53', '1', '5', '1', '2017-02-11 10:05:56', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('64', '12', '2017-02-01', '2017-02-22', '54', '1', '2', '1', '2017-02-11 11:17:23', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('65', '2', '2017-02-24', '2017-02-28', '55', '1', '2', '1', '2017-02-23 09:03:26', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('67', '21', '2017-05-01', '2017-05-26', '57', '1', '2', '1', '2017-05-21 17:45:05', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('68', '11', '2017-05-01', '2017-05-12', '58', '1', '2', '1', '2017-05-27 11:34:38', '2017-05-27 14:36:53', null);
INSERT INTO `especialista_solicitud` VALUES ('69', '23', '2017-05-01', '2017-05-25', '59', '1', '4', '1', '2017-05-27 11:49:35', '2017-05-27 14:36:53', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_trabajador
-- ----------------------------
INSERT INTO `especialista_trabajador` VALUES ('3', '8965852', 'Lorena', 'Gomez', '2016-11-20', 'mujer', 'Av buenos aires', '75058585', null, 'pedro@gmail.com', '1', '1', '2016-11-15 16:27:17', '1', '2016-11-15 16:27:17', '1', '2016-11-15 16:27:17', null);
INSERT INTO `especialista_trabajador` VALUES ('4', '2548811', 'Ana', 'Perez', '2016-06-15', 'mujer', 'Av landaeta nro 123', '70489897', null, 'ana@gmail.com', '1', '1', '2016-11-15 16:32:03', '1', '2016-11-17 17:35:43', '1', '2016-11-17 17:35:43', null);
INSERT INTO `especialista_trabajador` VALUES ('6', '5122525', 'Gabriela', 'Morales', '1985-08-30', 'mujer', 'Av. Juan Pablo II', '75214586', null, 'zzz@gmail.com', '1', '2', '2016-11-16 14:25:53', '1', '2016-11-17 17:34:46', '1', '2016-11-17 17:34:46', null);
INSERT INTO `especialista_trabajador` VALUES ('7', '9869632', 'Raquel', 'Velez', '1990-06-18', 'mujer', 'av poeta nro 123', '71252563', null, '', '4', '1', '2016-11-16 15:39:39', '1', '2016-11-18 15:41:52', '1', '2016-11-18 15:41:52', null);
INSERT INTO `especialista_trabajador` VALUES ('8', '5858215', 'Martha', 'Reyes', '2000-01-13', 'mujer', 'Av buenos aires nro 456', '2457854', null, 'marcos@gmail.com', '1', '1', '2016-11-16 15:47:23', '1', '2016-11-17 17:33:33', '1', '2016-11-17 17:33:33', null);
INSERT INTO `especialista_trabajador` VALUES ('10', '1152585', 'Karmen', 'Salinas', '1985-06-01', 'mujer', 'Pampahasi nro 456', '78585858', null, 'karmen@gmail.com', '2', '1', '2016-11-16 17:10:29', '1', '2016-11-17 17:35:56', '1', '2016-11-17 17:35:56', null);
INSERT INTO `especialista_trabajador` VALUES ('11', '6898586', 'Juaquina', 'Perales', '2000-11-17', 'mujer', 'Av poeta nro 666', '', null, '', '1', '2', '2016-11-16 17:12:55', '1', '2016-11-17 17:32:55', '1', '2016-11-17 17:32:55', null);
INSERT INTO `especialista_trabajador` VALUES ('12', '1285485', 'Irene', 'Gonzales', '1985-08-30', 'mujer', 'Sopocachi calle 3', '70154852', null, 'zzz@gmail.com', '1', '1', '2016-11-16 17:21:28', '1', '2016-11-17 17:34:25', '1', '2016-11-17 17:34:25', null);
INSERT INTO `especialista_trabajador` VALUES ('13', '5889966', 'Barbara', 'Simpson', '1991-08-30', 'mujer', 'av siempre vivas nro 508', '71458225', null, 'bar@hotmail.com', '1', '1', '2016-11-17 15:55:56', '1', '2016-11-17 15:55:56', '1', '2016-11-17 15:55:56', null);
INSERT INTO `especialista_trabajador` VALUES ('14', '9858585', 'Claudia', 'Conde', '1995-03-12', 'mujer', 'Av. Arce nro 8547', '74854852', '', 'claudia@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2017-05-23 20:33:45', '1', '2017-05-23 20:33:45', null);
INSERT INTO `especialista_trabajador` VALUES ('15', '9658214', 'Maria', 'Torrez', '1991-05-05', 'mujer', 'Av. Miraflores nro 888', '65285823', '', 'maria@yahoo.es', '1', '2', '2016-11-17 16:59:53', '1', '2017-01-14 10:17:03', '1', '2017-01-14 10:17:03', null);
INSERT INTO `especialista_trabajador` VALUES ('16', '6525856', 'Juana', 'Cortes', '1985-04-10', 'mujer', 'Av. costanera nro 966', '68745852', null, 'juana@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', null);
INSERT INTO `especialista_trabajador` VALUES ('17', '5874852', 'Paola', 'Ramirez', '1990-05-22', 'mujer', 'Chasquipampa nro 444', '78596586', null, 'paola@hotmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', null);
INSERT INTO `especialista_trabajador` VALUES ('18', '6859585', 'Fabiola', 'Teran', '1985-08-30', 'mujer', 'Pampahasi nro 456', '75058585', '', 'fabi@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2017-05-23 20:34:08', '1', '2017-05-23 20:34:08', null);
INSERT INTO `especialista_trabajador` VALUES ('19', '6958965', 'Monica', 'Quispe', '1991-08-30', 'mujer', 'Av poeta nro 666', '70489897', null, 'monica@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', null);
INSERT INTO `especialista_trabajador` VALUES ('20', '5589669', 'Jacky', 'Arias', '1995-03-12', 'mujer', 'Sopocachi calle 3', '75214586', '', 'jacky@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2017-05-23 20:34:20', '1', '2017-05-23 20:34:20', null);
INSERT INTO `especialista_trabajador` VALUES ('21', '6778559', 'Marleny', 'Gonzales', '1991-05-05', 'mujer', 'av siempre vivas nro 508', '71252563', null, 'marleny@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', null);
INSERT INTO `especialista_trabajador` VALUES ('22', '6415885', 'Isabel', 'Olivero', '1985-04-10', 'mujer', 'Av. Arce nro 8547', '75058585', null, 'isabel@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', null);
INSERT INTO `especialista_trabajador` VALUES ('23', '5485258', 'Irma', 'Flores', '1990-05-22', 'mujer', 'Av. Miraflores nro 888', '70489897', '', 'irma@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2017-01-14 10:16:14', '1', '2017-01-14 10:16:14', null);
INSERT INTO `especialista_trabajador` VALUES ('24', '6958558', 'Vania', 'Zapata', '2000-01-13', 'mujer', 'Av. costanera nro 966', '75214586', null, 'vania@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', null);
INSERT INTO `especialista_trabajador` VALUES ('25', '5120508', 'Carla', 'Soria', '1985-06-01', 'mujer', 'Av landaeta nro 123', '71252563', null, 'carla@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', null);
INSERT INTO `especialista_trabajador` VALUES ('26', '6985896', 'Esmeralda', 'Blanco', '2000-11-17', 'mujer', 'Av. Juan Pablo II', '75058585', null, 'esmeralda@gmail.com', '1', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', '1', '2016-11-17 16:59:53', null);
INSERT INTO `especialista_trabajador` VALUES ('27', '5774488', 'Evarista', 'Gutierrez', '1982-06-11', 'mujer', 'Alto tacaua nro 123', '', '', '', '1', '1', '2017-01-06 16:43:04', '1', '2017-05-23 20:33:21', '1', '2017-05-23 20:33:21', null);
INSERT INTO `especialista_trabajador` VALUES ('28', '5985258', 'Narda', 'Ticona', '1985-08-30', 'mujer', 'Calle Nat Agu nro 927', '7305895', '7158525', '', '1', '1', '2017-01-13 15:30:09', '1', '2017-05-23 20:31:41', '1', '2017-05-23 20:31:41', null);
INSERT INTO `especialista_trabajador` VALUES ('29', '7788552', 'Beatriz', 'Quiroga', '2002-03-05', 'mujer', 'Sopocachi nro 777', '2478547', '7158985', '', '1', '2', '2017-01-13 15:59:13', '1', '2017-05-23 20:31:25', '1', '2017-05-23 20:31:25', null);
INSERT INTO `especialista_trabajador` VALUES ('30', '9658258', 'Paola', 'Uribe', '2000-04-06', 'mujer', 'Calle ingavi nro 456', '', '', '', '1', '1', '2017-01-13 16:00:57', '1', '2017-05-23 20:31:08', '1', '2017-05-23 20:31:08', null);
INSERT INTO `especialista_trabajador` VALUES ('32', '898585', 'Teresa', 'Mamani', '2015-03-02', 'mujer', 'Calle Uyuni nro 888', '', '', '', '1', '1', '2017-01-13 17:42:04', '1', '2017-05-23 20:30:50', '1', '2017-05-23 20:30:50', null);
INSERT INTO `especialista_trabajador` VALUES ('33', '5852479', 'Angelines', 'Fernandez', '1998-07-05', 'mujer', 'Calle 71 Calacoto', '', '', '', '1', '1', '2017-01-14 10:22:48', '1', '2017-05-23 20:26:36', '1', '2017-05-23 20:26:36', null);
INSERT INTO `especialista_trabajador` VALUES ('34', '8541458', 'Kantuta', 'Perales', '2006-06-05', 'mujer', 'Calle Perales Nro 123', '', '', '', '1', '1', '2017-02-03 16:41:03', '1', '2017-05-23 20:26:18', '1', '2017-05-23 20:26:18', null);
INSERT INTO `especialista_trabajador` VALUES ('35', '9658525', 'Erika', 'Espinosa', '2008-06-04', 'mujer', 'Av Arce nro 777', '', '', '', '1', '1', '2017-02-03 16:49:32', '3', '2017-05-23 20:24:39', '1', '2017-05-23 20:24:39', null);
INSERT INTO `especialista_trabajador` VALUES ('53', '5874852', 'Juana', 'Rodrigues', '1969-12-31', 'mujer', 'Calle Linares Nro 456', '2457895', '74587456', 'anabel@gmail.com', '1', '1', '2017-03-22 11:21:48', '1', '2017-05-23 20:16:44', '1', '2017-05-23 20:16:44', null);
INSERT INTO `especialista_trabajador` VALUES ('54', '1524582', 'Ana', 'Lopez', '1969-12-31', 'mujer', 'Av Pacifico nro 111', '2514585', '60189554', 'anastasia@gmail.com', '1', '1', '2017-03-22 11:21:48', '1', '2017-05-23 20:24:20', '1', '2017-05-23 20:24:20', null);
INSERT INTO `especialista_trabajador` VALUES ('58', '123', 'Gregoria', 'Yupanqui', '2015-03-02', 'mujer', 'ddddd', '', '', '', '1', '1', '2017-05-07 22:43:21', '1', '2017-05-23 20:14:52', '1', '2017-05-23 20:14:52', null);
INSERT INTO `especialista_trabajador` VALUES ('59', '123123', 'Soledad', 'Murrillo', '1995-05-07', 'mujer', 'ccccccccc', '333444', '', '', '1', '1', '2017-05-20 01:21:05', '4', '2017-05-23 20:14:32', '1', '2017-05-23 20:14:32', null);
INSERT INTO `especialista_trabajador` VALUES ('60', '5566', 'Andalucia', 'Terrazas', '2006-08-12', 'mujer', 'ddddddd', '', '', '', '2', '1', '2017-05-20 01:44:29', '4', '2017-05-23 20:13:06', '1', '2017-05-23 20:13:06', null);
INSERT INTO `especialista_trabajador` VALUES ('79', '321321', 'test2', 'testape2', '2017-06-25', 'mujer', 'Calle 2', '222222', '999888', 'test@test.com', '1', '1', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('80', '222333', 'test3', 'testape3', '2017-06-26', 'mujer', 'Calle 3', '333333', '999888', 'test@test.com', '3', '2', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('81', '543534', 'test4', 'testape4', '2017-06-27', 'mujer', 'Calle 4', '444444', '999888', 'test@test.com', '1', '1', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('82', '666555', 'test5', 'testape5', '2017-06-28', 'mujer', 'Calle 5', '555555', '999888', 'test@test.com', '1', '1', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('83', '343434', 'test6', 'testape6', '2017-06-26', 'mujer', 'Calle 6', '666666', '999888', 'test@test.com', '5', '1', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('84', '565656', 'test7', 'testape7', '2017-06-30', 'mujer', 'Calle 7', '777777', '999888', 'test@test.com', '6', '1', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('85', '444555', 'test8', 'testape8', '2017-07-01', 'mujer', 'Calle 8', '888888', '999888', 'test@test.com', '1', '2', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('86', '111222', 'test9', 'testape9', '2017-07-02', 'mujer', 'Calle 9', '999999', '999888', 'test@test.com', '1', '1', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('87', '765765', 'test10', 'testape10', '2017-07-03', 'mujer', 'Calle 10', '111222', '999888', 'test@test.com', '1', '1', '2017-06-04 18:15:15', '4', '2017-06-04 18:15:15', '1', '2017-06-04 18:15:15', null);
INSERT INTO `especialista_trabajador` VALUES ('88', '5978415', 'TestFinal', 'APFinal', '2007-11-10', 'mujer', 'Calle Test', '7666888', '70141414', '', '1', '1', '2017-06-17 13:07:15', '4', '2017-06-17 13:07:15', '1', '2017-06-17 13:07:15', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialista_trabajador_especialidad
-- ----------------------------
INSERT INTO `especialista_trabajador_especialidad` VALUES ('1', '13', '1', '2017-03-13', '2016-11-17 15:55:56', '2016-11-17 15:55:56');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('2', '13', '2', '2017-05-18', '2016-11-17 15:55:56', '2016-11-17 15:55:56');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('3', '13', '3', '2017-03-13', '2016-11-17 15:55:56', '2016-11-17 15:55:56');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('4', '13', '4', '2017-05-18', '2016-11-17 15:55:56', '2016-11-17 15:55:56');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('8', '11', '2', '2017-03-13', '2016-11-17 17:32:55', '2016-11-17 17:32:55');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('9', '11', '4', '2017-05-18', '2016-11-17 17:32:55', '2016-11-17 17:32:55');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('10', '8', '1', '2017-03-13', '2016-11-17 17:33:33', '2016-11-17 17:33:33');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('11', '8', '2', '2017-05-18', '2016-11-17 17:33:33', '2016-11-17 17:33:33');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('13', '6', '1', '2017-03-13', '2016-11-17 17:34:46', '2016-11-17 17:34:46');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('14', '6', '3', '2017-05-18', '2016-11-17 17:34:46', '2016-11-17 17:34:46');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('17', '4', '2', '2017-03-13', '2016-11-17 17:35:43', '2016-11-17 17:35:43');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('18', '10', '3', '2017-05-18', '2016-11-17 17:35:56', '2016-11-17 17:35:56');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('19', '10', '4', '2017-03-13', '2016-11-17 17:35:56', '2016-11-17 17:35:56');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('20', '7', '4', '2017-05-18', '2016-11-18 15:41:52', '2016-11-18 15:41:52');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('24', '10', '2', '2017-03-13', '2016-11-18 15:41:52', '2016-11-18 15:41:52');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('30', '12', '2', '2017-05-18', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('31', '12', '3', '2017-03-13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('38', '16', '1', '2017-03-13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('39', '16', '2', '2017-05-18', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('40', '16', '3', '2017-03-13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('41', '16', '4', '2017-05-18', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('42', '19', '4', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('46', '21', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('47', '21', '3', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('49', '22', '2', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('50', '22', '29', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('51', '22', '4', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('53', '24', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('54', '24', '4', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('55', '25', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('56', '25', '19', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('57', '25', '4', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('58', '26', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('59', '26', '2', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('60', '26', '3', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('61', '26', '4', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('83', '23', '3', null, '2017-01-14 10:16:14', '2017-01-14 10:16:14');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('84', '23', '18', null, '2017-01-14 10:16:14', '2017-01-14 10:16:14');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('85', '15', '1', null, '2017-01-14 10:17:03', '2017-01-14 10:17:03');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('86', '15', '2', null, '2017-01-14 10:17:03', '2017-01-14 10:17:03');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('164', '60', '30', '2017-05-23', '2017-05-23 20:13:06', '2017-05-23 20:13:06');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('165', '60', '37', '2017-05-23', '2017-05-23 20:13:06', '2017-05-23 20:13:06');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('166', '60', '38', '2017-05-23', '2017-05-23 20:13:06', '2017-05-23 20:13:06');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('167', '60', '7', '2017-05-20', '2017-05-23 20:13:06', '2017-05-23 20:13:06');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('168', '60', '8', '2017-05-20', '2017-05-23 20:13:06', '2017-05-23 20:13:06');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('169', '59', '37', '2017-05-23', '2017-05-23 20:14:32', '2017-05-23 20:14:32');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('170', '59', '18', '2017-05-23', '2017-05-23 20:14:33', '2017-05-23 20:14:33');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('171', '59', '5', '2017-05-20', '2017-05-23 20:14:33', '2017-05-23 20:14:33');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('172', '59', '7', '2017-05-20', '2017-05-23 20:14:33', '2017-05-23 20:14:33');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('173', '58', '38', '2017-05-23', '2017-05-23 20:14:52', '2017-05-23 20:14:52');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('174', '58', '12', '2016-05-17', '2017-05-23 20:14:52', '2017-05-23 20:14:52');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('175', '58', '15', '2017-05-08', '2017-05-23 20:14:52', '2017-05-23 20:14:52');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('176', '58', '17', '2017-05-12', '2017-05-23 20:14:52', '2017-05-23 20:14:52');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('177', '58', '18', '2017-05-23', '2017-05-23 20:14:52', '2017-05-23 20:14:52');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('183', '53', '37', '2017-05-23', '2017-05-23 20:16:44', '2017-05-23 20:16:44');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('184', '53', '38', '2017-05-23', '2017-05-23 20:16:45', '2017-05-23 20:16:45');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('185', '53', '18', '2017-05-23', '2017-05-23 20:16:45', '2017-05-23 20:16:45');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('186', '53', '2', '2017-05-23', '2017-05-23 20:16:45', '2017-05-23 20:16:45');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('187', '53', '4', '2017-05-23', '2017-05-23 20:16:45', '2017-05-23 20:16:45');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('194', '54', '37', '2017-05-23', '2017-05-23 20:24:21', '2017-05-23 20:24:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('195', '54', '38', '2017-05-23', '2017-05-23 20:24:21', '2017-05-23 20:24:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('196', '54', '18', '2017-05-23', '2017-05-23 20:24:21', '2017-05-23 20:24:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('197', '54', '3', '2017-05-23', '2017-05-23 20:24:21', '2017-05-23 20:24:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('198', '54', '4', '2017-05-23', '2017-05-23 20:24:21', '2017-05-23 20:24:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('199', '54', '6', '2017-05-23', '2017-05-23 20:24:21', '2017-05-23 20:24:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('200', '54', '7', '2017-05-23', '2017-05-23 20:24:21', '2017-05-23 20:24:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('201', '54', '29', '2017-05-23', '2017-05-23 20:24:21', '2017-05-23 20:24:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('202', '35', '1', '2017-05-23', '2017-05-23 20:24:39', '2017-05-23 20:24:39');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('203', '35', '2', '2017-05-23', '2017-05-23 20:24:39', '2017-05-23 20:24:39');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('204', '35', '6', '2017-05-23', '2017-05-23 20:24:39', '2017-05-23 20:24:39');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('205', '35', '7', '2017-05-23', '2017-05-23 20:24:39', '2017-05-23 20:24:39');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('209', '34', '1', '2017-05-23', '2017-05-23 20:26:18', '2017-05-23 20:26:18');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('210', '34', '4', '2017-05-23', '2017-05-23 20:26:18', '2017-05-23 20:26:18');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('211', '34', '7', '2017-05-23', '2017-05-23 20:26:18', '2017-05-23 20:26:18');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('212', '34', '8', '2017-05-23', '2017-05-23 20:26:18', '2017-05-23 20:26:18');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('213', '33', '2', '2017-05-23', '2017-05-23 20:26:36', '2017-05-23 20:26:36');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('214', '33', '3', '2017-05-23', '2017-05-23 20:26:36', '2017-05-23 20:26:36');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('215', '33', '8', '2017-05-23', '2017-05-23 20:26:36', '2017-05-23 20:26:36');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('219', '32', '21', '2017-05-23', '2017-05-23 20:30:50', '2017-05-23 20:30:50');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('220', '32', '22', '2017-05-23', '2017-05-23 20:30:50', '2017-05-23 20:30:50');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('221', '32', '3', '2017-05-23', '2017-05-23 20:30:50', '2017-05-23 20:30:50');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('222', '32', '4', '2017-05-23', '2017-05-23 20:30:50', '2017-05-23 20:30:50');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('223', '32', '8', '2017-05-23', '2017-05-23 20:30:50', '2017-05-23 20:30:50');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('224', '30', '19', '2017-05-23', '2017-05-23 20:31:08', '2017-05-23 20:31:08');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('225', '30', '20', '2017-05-23', '2017-05-23 20:31:08', '2017-05-23 20:31:08');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('226', '30', '21', '2017-05-23', '2017-05-23 20:31:08', '2017-05-23 20:31:08');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('227', '30', '3', '2017-05-23', '2017-05-23 20:31:08', '2017-05-23 20:31:08');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('228', '29', '21', '2017-05-23', '2017-05-23 20:31:25', '2017-05-23 20:31:25');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('229', '29', '23', '2017-05-23', '2017-05-23 20:31:25', '2017-05-23 20:31:25');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('230', '29', '1', '2017-05-23', '2017-05-23 20:31:25', '2017-05-23 20:31:25');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('231', '29', '2', '2017-05-23', '2017-05-23 20:31:25', '2017-05-23 20:31:25');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('232', '29', '4', '2017-05-23', '2017-05-23 20:31:25', '2017-05-23 20:31:25');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('233', '28', '22', '2017-05-23', '2017-05-23 20:31:41', '2017-05-23 20:31:41');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('234', '28', '23', '2017-05-23', '2017-05-23 20:31:41', '2017-05-23 20:31:41');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('235', '28', '1', '2017-05-23', '2017-05-23 20:31:41', '2017-05-23 20:31:41');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('236', '28', '3', '2017-05-23', '2017-05-23 20:31:41', '2017-05-23 20:31:41');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('237', '28', '8', '2017-05-23', '2017-05-23 20:31:41', '2017-05-23 20:31:41');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('240', '27', '35', '2017-05-23', '2017-05-23 20:33:21', '2017-05-23 20:33:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('241', '27', '36', '2017-05-23', '2017-05-23 20:33:21', '2017-05-23 20:33:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('242', '27', '1', '2017-05-23', '2017-05-23 20:33:21', '2017-05-23 20:33:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('243', '27', '3', '2017-05-23', '2017-05-23 20:33:21', '2017-05-23 20:33:21');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('244', '14', '35', '2017-05-23', '2017-05-23 20:33:45', '2017-05-23 20:33:45');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('245', '14', '36', '2017-05-23', '2017-05-23 20:33:45', '2017-05-23 20:33:45');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('246', '14', '2', '2017-05-18', '2017-05-23 20:33:45', '2017-05-23 20:33:45');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('247', '14', '3', '2017-03-13', '2017-05-23 20:33:46', '2017-05-23 20:33:46');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('248', '14', '4', '2017-05-18', '2017-05-23 20:33:46', '2017-05-23 20:33:46');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('249', '18', '35', '2017-05-23', '2017-05-23 20:34:08', '2017-05-23 20:34:08');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('250', '18', '36', '2017-05-23', '2017-05-23 20:34:08', '2017-05-23 20:34:08');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('251', '20', '35', '2017-05-23', '2017-05-23 20:34:20', '2017-05-23 20:34:20');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('252', '20', '36', '2017-05-23', '2017-05-23 20:34:20', '2017-05-23 20:34:20');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('253', '20', '1', '2017-05-23', '2017-05-23 20:34:20', '2017-05-23 20:34:20');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('254', '20', '4', '2017-05-23', '2017-05-23 20:34:20', '2017-05-23 20:34:20');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('255', '58', '3', '2010-07-24', '2017-06-03 10:29:10', '2017-06-03 10:29:10');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('256', '58', '3', '2010-07-24', '2017-06-03 10:30:47', '2017-06-03 10:30:47');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('257', '58', '3', '2010-07-24', '2017-06-03 10:31:07', '2017-06-03 10:31:07');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('258', '59', '4', '2017-06-28', '2017-06-03 13:40:12', '2017-06-03 13:40:12');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('267', '59', '4', '2017-06-28', '2017-06-03 14:13:33', '2017-06-03 14:13:33');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('276', '59', '4', '2017-06-28', '2017-06-03 14:23:17', '2017-06-03 14:23:17');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('285', '59', '4', '2017-06-28', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('286', '79', '3', '2017-07-13', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('287', '80', '7', '2017-08-19', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('288', '81', '2', '2017-04-16', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('289', '82', '6', '2017-06-14', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('290', '84', '1', '2017-02-09', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('291', '85', '5', '2017-06-28', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('292', '86', '2', '2017-01-16', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('293', '87', '8', '2016-09-05', '2017-06-04 18:15:15', '2017-06-04 18:15:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('294', '88', '2', '2017-06-17', '2017-06-17 13:07:15', '2017-06-17 13:07:15');
INSERT INTO `especialista_trabajador_especialidad` VALUES ('295', '88', '4', '2017-06-17', '2017-06-17 13:07:15', '2017-06-17 13:07:15');

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
INSERT INTO `formador` VALUES ('3', 'Armando', 'Vega', 'varon', 'foto_3.jpg', 'foto_3_thumb.jpg', 'Formador SCORE Certificado', '<p>Sed tortor nisi, blandit vitae vehicula in, interdum sit amet orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu consectetur purus. In sit amet dignissim ipsum. Nulla volutpat nunc id pellentesque posuere. Aenean sagittis pellentesque nisl non fringilla. Mauris egestas neque a dapibus tincidunt. Aliquam erat volutpat. Suspendisse eleifend, ante venenatis maximus ullamcorper, diam leo sodales neque, in dignissim metus ipsum sed nulla. Donec faucibus metus sit amet lacinia rhoncus. Pellentesque euismod velit euismod, gravida lorem nec, ultrices leo. Donec pulvinar, leo nec pulvinar gravida, felis mi faucibus lacus, ut facilisis risus augue sit amet augue. Maecenas imperdiet lorem eros, vitae gravida turpis tincidunt et.</p>', '1', '0', '2016-09-26 16:47:23', '1', '2016-09-26 16:47:23', null, '2016-09-26 16:47:23', '0000-00-00 00:00:00');
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
INSERT INTO `modulo` VALUES ('1', 'Pie de página', 'mod_pie', '<div class=\"container\">\r\n<div class=\"row footer-widgets\"><!-- Start Subscribe & Social Links Widget -->\r\n<div class=\"col-md-3 col-xs-12\">\r\n<div class=\"footer-widget social-widget\">\r\n<p><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_maestras_final_7_blancov.png\" style=\"width: 176px; height: 66px;\" /></p>\r\n\r\n<ul class=\"social-icons\">\r\n	<li><a class=\"facebook\" href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\r\n	<li><a class=\"twitter\" href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\r\n	<li><a class=\"google\" href=\"#\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n	<li><a class=\"instgram\" href=\"#\"><i class=\"fa fa-instagram\"></i></a></li>\r\n	<li><a class=\"vimeo\" href=\"#\"><i class=\"fa fa-vimeo-square\"></i></a></li>\r\n	<li><a class=\"skype\" href=\"#\"><i class=\"fa fa-skype\"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Subscribe & Social Links Widget --><!-- Start Twitter Widget -->\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"footer-widget twitter-widget\">\r\n<h4>RECURSOS</h4>\r\n\r\n<p><a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/quienes-somos\" style=\"color: white;\">Qui&eacute;nes Somos</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/como-funciona\" style=\"color: white;\">C&oacute;mo funciona</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/equidad-de-genero-en-el-sector\" style=\"color: white;\">Equidad de g&eacute;nero en el sector</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/norma-vigente\" style=\"color: white;\">Derechos laborales</a><br />\r\n<a href=\"http://maestrasconstructoras.org/si_maestras/index.php/pagina/salud-seguridad-trabajo\" style=\"color: white;\">Salud y Seguridad en el Trabajo</a></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Twitter Widget --><!-- Start Flickr Widget -->\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"footer-widget twitter-widget\">\r\n<h4>DESARROLLO</h4>\r\n\r\n<p style=\"margin-bottom:10px;\"><strong>Esta plataforma fue desarrollada con el apoyo de la Organizaci&oacute;n Internacional del Trabajo y la Agencia Sueca de Desarrollo Internacional.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/OIT_BLANCO_SIN_LETRAS_P.png\" style=\"width: 74px; height: 70px;\" />&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_asdi_blanco.png\" style=\"width: 169px; height: 70px;\" /></p>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Flickr Widget --><!-- Start Contact Widget -->\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"footer-widget contact-widget\">\r\n<h4>CONT&Aacute;CTANOS</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 90px;\" valign=\"top\"><span><i class=\"fa fa-phone\" style=\"margin-right: 0.8rem;\"></i>Tel&eacute;fono:</span></td>\r\n			<td>&nbsp;(591) 2423134 - 2423139</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign=\"top\"><span><i class=\"fa fa-envelope\" style=\"margin-right: 0.8rem;\"></i>Email:</span></td>\r\n			<td>&nbsp;caboco.bo@gmail.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign=\"top\"><span><i class=\"fa  fa-map-marker\" style=\"margin-right: 0.8rem;\"></i>&nbsp;Direcci&oacute;n:</span></td>\r\n			<td>&nbsp;Av. Sanchez Lima 2557 - Torre Codes Piso 5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<!-- .col-md-3 --><!-- End Contact Widget --></div>\r\n<!-- .row --><!-- Start Copyright -->\r\n\r\n<div class=\"copyright-section\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>&copy; OIT Todos los derechos reservados - Desarrollado por <a href=\"http://formaempresas.com\" target=\"_blank\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/logo_formaempresas_blanco.png\" style=\"width: 83px; height: 12px;\" /></a></p>\r\n</div>\r\n<!--\r\n<div class=\"col-md-6\">\r\n<ul class=\"footer-nav\">\r\n	<li><a href=\"#\">Sitemap</a></li>\r\n	<li><a href=\"#\">Privacy Policy</a></li>\r\n	<li><a href=\"#\">Contact</a></li>\r\n</ul>\r\n</div>\r\n--></div>\r\n</div>\r\n<!-- End Copyright --></div>', '1', null, '0000-00-00 00:00:00', null, '2017-03-18 12:07:24', '1', '2017-03-18 12:07:24', '2016-09-13 10:35:07');
INSERT INTO `modulo` VALUES ('2', 'Auspiciadores', 'mod_auspiciantes', '<ul id=\"foo0\">\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n	<li><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/auspiciadores/publicidad.jpg\" style=\"width: 93px; height: 70px;\" /></li>\r\n</ul>', '1', null, '0000-00-00 00:00:00', null, '2017-03-18 11:52:32', '1', '2017-03-18 11:52:32', '0000-00-00 00:00:00');
INSERT INTO `modulo` VALUES ('3', 'Empresas', 'mod_auspiciadores', '<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/LOGO_EMPRESA.jpg\" style=\"height: 110px; width: 147px;\" /></div>', '1', null, '0000-00-00 00:00:00', null, '2017-03-18 11:56:16', '1', '2017-03-18 11:56:16', '0000-00-00 00:00:00');
INSERT INTO `modulo` VALUES ('4', 'Score Global', 'mod_score_global', '<div class=\"contenido ng-scope\">\r\n<div class=\"col-xs-12 col-md-6\">\r\n<div class=\"score-content\">\r\n<h3 style=\"padding-top: 20px;\">Maestras constructoras</h3>\r\n\r\n<p>Maestras constructoras se implement&oacute; en m&aacute;s de&nbsp;810&nbsp;empresas en&nbsp;7&nbsp;pa&iacute;ses:</p>\r\n</div>\r\n\r\n<div class=\"score-content centered-parent\">Resultados SCORE Global<br />\r\n(2009 - 2013)</div>\r\n</div>\r\n\r\n<div class=\"col-xs-12 col-md-6\">\r\n<div class=\"score-content\">\r\n<ul class=\"image\">\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">3-4 VECES POR MES</span><br />\r\n				Reuniones de Equipos de Mejoramiento Empresarial (EME)</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">USD 3.000 Y 15.000</span><br />\r\n				Reducci&oacute;n de costos 2-3 meses despu&eacute;s de la formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">29% PROMEDIO</span><br />\r\n				Reducci&oacute;n de defectos</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">HASTA 22% MENOS</span><br />\r\n				Ausentismo laboral</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">3% AHORRO ENERG&Eacute;TICO (KwH)</span><br />\r\n				por cada unidad producida</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">15-50% Icremento en productividad 2,5</span><br />\r\n				meses despu&eacute;s del Taller de Formaci&oacute;n</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>\r\n	<table style=\"width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width: 25px;\"><img src=\"/si_score/assets/filemanager/userfiles/sitio/indice-check.png\" /></td>\r\n				<td><span class=\"indice-valor\">36%</span><br />\r\n				Reducci&oacute;n de accidentes</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '1', null, '0000-00-00 00:00:00', null, '2017-01-16 15:16:13', '1', '2017-01-16 15:16:13', '0000-00-00 00:00:00');
INSERT INTO `modulo` VALUES ('5', 'Escuelas de formación', 'mod_enlaces', '<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/logo_Desarrollo_Economico2.png\" style=\"width: 222px; height: 70px; padding-top: 10px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/LOGO_V3_blanco2.jpg\" style=\"width: 181px; height: 100px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/RED_HABITAT.png\" style=\"width: 89px; height: 100px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg\" style=\"width: 195px; height: 70px; padding-top: 10px;\" /></div>', '1', null, '0000-00-00 00:00:00', null, '2017-02-22 16:08:37', '1', '2017-02-22 16:08:37', '2016-10-03 10:15:07');
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
INSERT INTO `navegacion` VALUES ('1', 'usuarios', 'index.php/administrador/usuario', '0000-00-00 00:00:00', '2017-05-21 20:52:18');
INSERT INTO `navegacion` VALUES ('2', 'noticias_generales', 'index.php/administrador/noticia/1?search_in=titulo&search_key=xxx', '0000-00-00 00:00:00', '2017-06-25 07:49:40');
INSERT INTO `navegacion` VALUES ('3', 'paginas', 'index.php/administrador/pagina', '0000-00-00 00:00:00', '2017-05-21 20:53:41');
INSERT INTO `navegacion` VALUES ('4', 'menus', 'index.php/administrador/menu', '0000-00-00 00:00:00', '2017-04-08 09:53:50');
INSERT INTO `navegacion` VALUES ('5', 'formadores', 'index.php/administrador/centro', '0000-00-00 00:00:00', '2017-03-31 17:39:31');
INSERT INTO `navegacion` VALUES ('6', 'testimonios', 'index.php/administrador/testimonio', '0000-00-00 00:00:00', '2016-11-10 12:25:20');
INSERT INTO `navegacion` VALUES ('7', 'publicaciones', 'index.php/administrador/publicacion', '0000-00-00 00:00:00', '2017-06-21 12:08:38');
INSERT INTO `navegacion` VALUES ('8', 'contactos', 'index.php/administrador/contacto', '0000-00-00 00:00:00', '2017-05-20 03:32:38');
INSERT INTO `navegacion` VALUES ('9', 'slides', 'index.php/administrador/slide', '0000-00-00 00:00:00', '2017-03-16 14:25:22');
INSERT INTO `navegacion` VALUES ('10', 'bibliotecas', 'index.php/intranet/biblioteca', '0000-00-00 00:00:00', '2016-10-26 10:57:39');
INSERT INTO `navegacion` VALUES ('11', 'biblioteca_categorias', 'index.php/intranet/biblioteca_categoria?search_in=biblioteca_id&search_key=1', '0000-00-00 00:00:00', '2016-10-26 18:57:17');
INSERT INTO `navegacion` VALUES ('12', 'biblioteca_documentos', 'index.php/intranet/biblioteca_documento', '0000-00-00 00:00:00', '2016-10-26 11:56:10');
INSERT INTO `navegacion` VALUES ('13', 'paginas_predisenadas', 'index.php/administrador/pagina_predisenada', '0000-00-00 00:00:00', '2017-05-21 19:36:50');
INSERT INTO `navegacion` VALUES ('16', 'inscripcion_empresas', 'index.php/intranet/inscripcion_empresa', '0000-00-00 00:00:00', '2016-10-27 10:12:00');
INSERT INTO `navegacion` VALUES ('14', 'convocatoria_empresas', 'index.php/intranet/convocatoria_empresa', '0000-00-00 00:00:00', '2016-10-26 17:20:10');
INSERT INTO `navegacion` VALUES ('15', 'convocatoria_formadores', 'index.php/intranet/convocatoria_formador', '0000-00-00 00:00:00', '2016-10-26 12:09:43');
INSERT INTO `navegacion` VALUES ('17', 'especialistas', 'index.php/administrador/especialista/centro', '0000-00-00 00:00:00', '2017-06-21 12:45:07');
INSERT INTO `navegacion` VALUES ('18', 'especialidades', 'index.php/administrador/especialidad', '0000-00-00 00:00:00', '2017-05-21 19:41:29');
INSERT INTO `navegacion` VALUES ('19', 'noticias_capacitacion', 'index.php/administrador/noticia/centro/2', '0000-00-00 00:00:00', '2017-06-21 12:56:20');
INSERT INTO `navegacion` VALUES ('20', 'informacion_equidad', 'index.php/administrador/noticia/centro/3', '0000-00-00 00:00:00', '2017-06-04 18:48:47');
INSERT INTO `navegacion` VALUES ('21', 'informacion_derecho', 'index.php/administrador/noticia/centro/4', '0000-00-00 00:00:00', '2017-06-04 18:11:45');
INSERT INTO `navegacion` VALUES ('22', 'informacion_salud', 'index.php/administrador/noticia/centro/5', '0000-00-00 00:00:00', '2017-06-04 18:11:48');
INSERT INTO `navegacion` VALUES ('23', 'centros_formacion', 'index.php/administrador/centro', '0000-00-00 00:00:00', '2017-06-25 08:05:46');
INSERT INTO `navegacion` VALUES ('24', 'encuesta', 'index.php/administrador/encuesta', '0000-00-00 00:00:00', '2017-06-21 14:09:41');

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
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of noticia
-- ----------------------------
INSERT INTO `noticia` VALUES ('65', '\"Si me dejaba manosear me pagaban más\": La albañil boliviana que lucha contra el acoso sexual', '<p>&quot;Si me dejaba manosear me pagaban m&aacute;s&quot;: la alba&ntilde;il boliviana que lucha contra el acoso sexual</p>', '<p>&quot;Si me dejaba manosear me pagaban m&aacute;s&quot;: la alba&ntilde;il boliviana que lucha contra el acoso sexual</p>', 'VIDEO', 'https://www.youtube.com/watch?v=5O_OqwUQOII', '', null, 'video', 'BBC MUNDO', '', 'https://img.youtube.com/vi/5O_OqwUQOII/0.jpg', 'noticia_default_thumb.jpg', '3', '1', '3', '0', '2017-03-07 12:19:30', '1', '2017-03-07 12:20:19', '1', '2017-03-07 12:20:19', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('11', 'Diálogo tripartito facilita una nueva normativa en Bolivia para proteger la salud de los trabajadores de la construcción', '<p>La aprobaci&oacute;n de este decreto se dio a trav&eacute;s de la implementaci&oacute;n del Convenio n&uacute;m. 167 de la OIT referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.</p>', '<p>La seguridad y salud para los trabajadores de la construcci&oacute;n constituye una creciente preocupaci&oacute;n en Bolivia que fue abordada por su Ministerio de Trabajo, Empleo y Previsi&oacute;n Social, la Confederaci&oacute;n Sindical de Trabajadores de la Construcci&oacute;n de Bolivia y la C&aacute;mara Boliviana de la Construcci&oacute;n, quienes mediante un proceso de di&aacute;logo tripartito, aprobaron el pasado 5 de octubre el decreto que reglamenta la Ley N&ordm; 545 de ratificaci&oacute;n del Convenio n&uacute;m. 167 de la Organizaci&oacute;n Internacional del Trabajo (OIT) referido a la seguridad y salud en el trabajo en el sector construcci&oacute;n.<br />\r\n<br />\r\nEste reglamento establece que se deben tomar todas las medidas necesarias con el fin de proteger la vida y la salud de los trabajadores. Entre las actividades clasificadas dentro del rubro de la construcci&oacute;n se encuentran la edificaci&oacute;n, las excavaciones, la construcci&oacute;n de carreteras, las obras viales, las transformaciones estructurales, la renovaci&oacute;n, el mantenimiento, la reparaci&oacute;n, las labores de limpieza y pintura, y la demolici&oacute;n de todo tipo de edificaciones.&nbsp;<br />\r\n<br />\r\nAsimismo, la reglamentaci&oacute;n trata diversos puntos como ser la prevenci&oacute;n y protecci&oacute;n contra incendios, los tipos de maquinaria, equipos y herramientas, los trabajos en altura, de demolici&oacute;n, las excavaciones, la iluminaci&oacute;n y el ruido ocupacional. Finalmente, la norma dispone que se deben garantizar las condiciones apropiadas de seguridad y salud en el lugar de trabajo para aquellos trabajadores catalogados como &ldquo;cuenta propia&rdquo;.&nbsp;<br />\r\n<br />\r\nCabe resaltar que a pesar que el sector construcci&oacute;n experiment&oacute; un crecimiento sostenido en la &uacute;ltima d&eacute;cada en Bolivia atrayendo el 8,8% de la fuerza laboral del pa&iacute;s, no contaba con regulaciones espec&iacute;ficas que garantizaran la seguridad y salud de los trabajadores.&nbsp;<br />\r\n<br />\r\nFinalmente, es necesario recordar que la OIT tiene entre sus mandatos la construcci&oacute;n de condiciones que propicien el desarrollo de un di&aacute;logo social de manera sostenible, para impulsar la generaci&oacute;n de empleo digno y sostenible; la difusi&oacute;n y respeto de los derechos fundamentales en el trabajo y el tratamiento del conflicto a trav&eacute;s del dialogo.</p>', 'NOTICIA', null, null, null, 'texto', 'OIT', '', 'n13.png', 'n13_thumb.png', '2', '1', '3', '0', '2017-01-18 15:05:24', '1', '2017-01-18 16:07:25', '1', '2017-01-18 16:07:25', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('12', 'Mujeres del sector de la construcción en Bolivia se forman en Derechos Fundamentales y Normas Internacionales del Trabajo', '<p>El 10 de febrero de 2015, el Estado Plurinacional de Bolivia ratific&oacute; el Convenio 167 de la OIT sobre seguridad y salud en el sector de la construcci&oacute;n. En este marco, la OIT promueve un proyecto que cuenta con el financiamiento de la Agencia Sueca de Desarrollo Internacional (ASDI) para la gesti&oacute;n 2016-2017. El proyecto denominado &ldquo;Construyendo Igualdad&rdquo; fue presentado el d&iacute;a 20 de mayo en una mesa multipartita conformada por los actores m&aacute;s importantes del sector de la construcci&oacute;n en Bolivia. Este proyecto tiene como objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo.</p>', '<p>Con el apoyo de la mesa multipartita se consensuaron y validaron diferentes actividades del proyecto, definiendo varias l&iacute;neas de acci&oacute;n. En seguimiento a estos acuerdos, el 21 de julio de 2016 se realiz&oacute; una formaci&oacute;n sobre derechos fundamentales del trabajo a 20 representantes de la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC) y a 10 mujeres miembros de la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB).<br />\r\n<br />\r\nLa formaci&oacute;n estuvo a cargo de un asesor legal de la Central Obrera Boliviana (COB), quien abord&oacute; dos grandes temas, las Normas Internacionales del Trabajo y la Normativa Nacional. Dentro de la primera tem&aacute;tica el facilitador explic&oacute; detalladamente las caracter&iacute;sticas del sistema y el control normativo de la OIT y expuso la relaci&oacute;n entre las Normas Internacionales de Trabajo y la legislaci&oacute;n boliviana, tambi&eacute;n habl&oacute; sobre la importancia de la ratificaci&oacute;n del Convenio 167 de la OIT sobre seguridad y salud en la construcci&oacute;n.<br />\r\n<br />\r\nPor otro lado, dentro de la tem&aacute;tica de la normativa boliviana, se abordaron los principales principios del derecho del trabajo, como ser el principio protectivo, el principio de irrenunciabilidad, el principio de inversi&oacute;n de la prueba, el principio de primac&iacute;a de la realidad y el principio de la no discriminaci&oacute;n laboral. Adem&aacute;s, se expusieron los contenidos de la nueva legislaci&oacute;n laboral en Bolivia enfoc&aacute;ndose principalmente en la Ley General del Trabajo.<br />\r\n<br />\r\nAl finalizar el curso, las participantes reconocieron la importancia de las tem&aacute;ticas expuestas ya que muchas de ellas no estaban familiarizadas con las mismas. Se identificaron muchas necesidades que tienen relaci&oacute;n con la falta de seguridad contractual y la falta de conocimiento de las normas internacionales del trabajo. La mayor&iacute;a de las mujeres expresaron su preocupaci&oacute;n frente a la falta de estabilidad laboral debido al incumplimiento de las normativas vigentes.&nbsp;</p>', 'NOTICIA', null, null, null, 'texto', 'OIT', '', 'n2.jpg', 'n2_thumb.jpg', '1', '1', '0', '0', '2017-01-18 15:38:09', '1', '2017-01-18 15:38:09', null, '2017-01-18 15:38:09', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('13', 'La OIT despierta el interés institucional por mejorar las condiciones de trabajo de las mujeres constructoras', '<p>Durante los &uacute;ltimos a&ntilde;os Bolivia experiment&oacute; un importante crecimiento en el sector de la construcci&oacute;n que signific&oacute; una mayor demanda de mano de obra, la cual se presenta como una alternativa para las mujeres que necesitan incrementar sus ingresos. En esta coyuntura, la Oficina de la OIT para los Pa&iacute;ses Andinos, junto a la Agencia Sueca de Desarrollo Internacional (ASDI) y Red H&aacute;bitat, inici&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo; con la convocatoria a una mesa multipartita en la ciudad de La Paz.</p>', '<p>Desde el 2009 el sector de la construcci&oacute;n en Bolivia presenta un importante crecimiento, entre el 8 y 11% anual, situ&aacute;ndose como el segundo de mayor contribuci&oacute;n al PIB nacional luego de los hidrocarburos. Este boom de la construcci&oacute;n ha determinado un incremento de la demanda de mano de obra, donde las mujeres incursionan de forma sostenida. Si bien en la &uacute;ltima d&eacute;cada en Bolivia las mujeres irrumpieron en mercados de trabajo tradicionalmente monopolizados por los hombres, este proceso contin&uacute;a enfrent&aacute;ndose a la discriminaci&oacute;n por raz&oacute;n de g&eacute;nero, de raza y a la desigualdad en la remuneraci&oacute;n, situaci&oacute;n que es especialmente profunda en el caso de aquellas mujeres que actualmente se dedican a la construcci&oacute;n.<br />\r\n<br />\r\nConsciente de esta problem&aacute;tica, y siguiendo el trabajo iniciado con la ratificaci&oacute;n del Convenio n&uacute;m. 167 de la OIT &ldquo;Convenio sobre seguridad y salud en la construcci&oacute;n&rdquo;, la Oficina de la OIT para los Pa&iacute;ses Andinos present&oacute; el proyecto &ldquo;Construyendo Igualdad&rdquo;, el cual tiene por objetivo mejorar la protecci&oacute;n de las mujeres constructoras contra formas inaceptables de trabajo, mejorando sus condiciones de vida, empoder&aacute;ndolas en sus derechos fundamentales del trabajo y logrando su emancipaci&oacute;n econ&oacute;mica. Para llegar a esta meta, la OIT organiz&oacute; una mesa multipartita para presentar dicha iniciativa y generar las bases de trabajo conjunto que direccionen y apoyen la ejecuci&oacute;n de las actividades.&nbsp;<br />\r\n<br />\r\nLas instituciones que asistieron a la mesa multipartita fueron: la Central Obrera Boliviana (COB), la Confederaci&oacute;n de Empresarios Privados de Bolivia (CEPB), la Confederaci&oacute;n Sindical de Trabajadores en Construcci&oacute;n de Bolivia (CSTCB), la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), la Asociaci&oacute;n de Mujeres Constructoras (ASOMUC), el Gobierno Aut&oacute;nomo Municipal de La Paz (GAMLP), el Gobierno Aut&oacute;nomo Municipal de El Alto (GAMEA), la ONG Red H&aacute;bitat, y la Embajada de Suecia,&nbsp;<br />\r\n<br />\r\nEl encuentro se inici&oacute; con la descripci&oacute;n de la problem&aacute;tica del sector, acorde a los datos estad&iacute;sticos nacionales disponibles, y con la presentaci&oacute;n del proyecto de la OIT. Al finalizar, y luego de un amplio debate, los asistentes se&ntilde;alaron los puntos en los cuales sus organizaciones podr&iacute;an brindar apoyo al proyecto, por ejemplo desde el lado de los Gobiernos Municipales, incluir las iniciativas empresariales de las mujeres constructoras en las incubadoras de empresas y en las ferias municipales; coordinar las actividades de formaci&oacute;n y apoyar en la elaboraci&oacute;n de normativas municipales para asegurar una inclusi&oacute;n digna de las mujeres constructoras. Desde el lado del gremio empresarial se comprometieron en trabajar en aspectos de formaci&oacute;n, certificaci&oacute;n de los procesos en curso, y trabajar en normativas y cultura de seguridad y salud en el lugar del trabajo. Las organizaciones de trabajadores, por su parte, se comprometieron a socializar y coordinar las actividades con sus bases. Finalmente, todos los participantes manifestaron su inter&eacute;s en participar en el seguimiento del proyecto, confirmando su apoyo a las siguientes mesas multipartitas que ser&aacute;n convocadas por la OIT para evaluar el avance de las intervenciones.</p>', 'NOTICIA', null, null, null, 'texto', 'OIT', '', 'n3.jpg', 'n3_thumb.jpg', '1', '1', '0', '0', '2017-01-18 16:02:42', '1', '2017-05-21 12:34:14', null, '2017-01-18 16:02:42', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('32', 'Construyendo Igualdad en el sector de las mujeres trabajadoras en construcción en Bolivia', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', '<p>Construyendo Igualdad en el sector de las mujeres trabajadoras en construcci&oacute;n en Bolivia</p>', 'VIDEO', 'https://www.youtube.com/watch?v=TGaRmkKyQok', null, '', 'video', '', '', 'https://img.youtube.com/vi/TGaRmkKyQok/0.jpg', 'noticia_default_thumb.jpg', '2', '1', '3', '0', '2017-01-28 13:08:37', '1', '2017-05-21 12:57:29', '1', '2017-05-21 12:55:46', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('30', 'La OIT en apoyo a la mujer trabajadora de la construcción en Bolivia', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', '<p>La OIT en apoyo a la mujer trabajadora de la construcci&oacute;n en Bolivia</p>', 'VIDEO', 'https://www.youtube.com/watch?v=jubqQaWl_UE', '', null, 'video', 'OIT', '', 'https://img.youtube.com/vi/jubqQaWl_UE/0.jpg', 'noticia_default_thumb.jpg', '4', '3', '3', '0', '2017-01-28 13:03:25', '1', '2017-03-07 12:15:21', '1', '2017-03-07 12:15:21', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('35', 'Integer capacitacion dapibus lorem vel nibh volutpat mollis', '<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_4.jpg', 'noti_4_thumb.jpg', '2', '1', '2', '0', '2016-09-23 17:09:43', '1', '2016-09-23 17:09:43', null, '2016-09-23 17:09:43', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('36', 'Integer capacitacion condimentum arcu vel lacinia pretium', '<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_3.jpg', 'noti_3_thumb.jpg', '1', '1', '0', '0', '2016-09-23 17:07:00', '1', '2016-09-23 17:07:00', null, '2016-09-23 17:07:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('37', 'Cras capacitacion vestibulum enim a velit elementum, sit amet facilisis sem malesuada', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_5.jpg', 'noti_5_thumb.jpg', '2', '2', '1', '0', '2016-09-23 17:11:04', '1', '2016-09-23 17:11:04', null, '2016-09-23 17:11:04', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('38', 'Vestibulum capacitacion aliquet erat sit amet tortor posuere, id lacinia sapien varius', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_61.jpg', 'noti_61_thumb.jpg', '2', '1', '1', '0', '2016-09-23 17:12:03', '1', '2017-02-02 16:30:47', '1', '2017-01-30 16:31:07', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('39', 'Aenean capacitacion interdum ipsum sit amet rutrum pharetra', '<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', null, 'texto', 'OIT', '', 'noti_7.jpg', 'noti_7_thumb.jpg', '5', '2', '3', '0', '2016-09-23 17:15:31', '1', '2016-10-07 14:45:57', null, '2016-09-23 17:15:31', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('40', 'AAA Nullam capacitacion tincidunt urna nec tellus consequat, non rutrum tellus mattis', '<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque.&nbsp;Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ipsum imperdiet, porta mi sit amet, ultricies magna. Phasellus sit amet tellus varius, molestie metus in, feugiat odio. Donec ut sodales est, in pharetra mi. Aenean laoreet metus pellentesque, tincidunt dui lacinia, volutpat nisl. In ornare laoreet mi, a consequat libero vestibulum nec. Sed sed aliquam purus. Pellentesque vel vulputate sem. Nulla quis lorem eget odio pellentesque egestas. Cras porta id lacus vitae efficitur. Nulla sodales efficitur consequat. Mauris mi est, varius vitae risus vitae, vulputate tincidunt elit.</p>\r\n\r\n<p>Donec dapibus mi in enim tincidunt egestas. Proin et suscipit neque, sit amet pretium nibh. Nulla non placerat sapien. Vivamus consectetur tristique laoreet. Morbi id lectus eleifend, fermentum libero sed, mollis quam. Duis sodales ex sit amet blandit dictum. Aliquam nec massa lorem. Mauris dignissim, justo quis auctor ornare, dui diam feugiat mauris, sit amet ornare nulla lorem non eros. Nunc eget lectus a dui pretium auctor vel sed lectus. Proin vel enim sodales, pretium magna facilisis, fermentum purus. Aliquam erat volutpat.</p>\r\n\r\n<p>Etiam ut tortor et ex scelerisque feugiat eu ac tellus. Vestibulum dolor orci, tristique ut mollis et, tempor vel velit. Mauris pulvinar viverra velit sed vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla sit amet magna malesuada bibendum nec ac arcu. Nulla facilisi. Suspendisse potenti. Vivamus vel ultricies purus. Mauris nulla lectus, pretium quis commodo sed, porttitor eu orci.</p>\r\n\r\n<p>Sed imperdiet accumsan purus et ullamcorper. Praesent in laoreet dolor. Sed facilisis sit amet turpis vitae blandit. Aliquam suscipit porttitor placerat. Mauris sit amet pellentesque tellus, a laoreet leo. Quisque venenatis quam nibh, nec convallis augue tristique scelerisque. In suscipit dignissim est sollicitudin rutrum. Sed ut risus quam. Maecenas suscipit luctus ex, quis iaculis arcu tincidunt vel. Fusce ac nisi ac dui ultrices feugiat. Aliquam semper ante et euismod gravida. Cras id bibendum erat. Maecenas quis pharetra eros, id eleifend augue. Duis malesuada aliquam blandit.</p>\r\n\r\n<p>Etiam vel elit et nisl egestas porttitor. Maecenas in lorem eu ipsum ullamcorper porta. Fusce molestie tristique tortor vitae suscipit. Sed pellentesque, urna sed vehicula tincidunt, leo ante laoreet erat, eu venenatis massa tellus non sem. Maecenas et dolor diam. Praesent ac quam ut orci efficitur iaculis non sit amet arcu. Proin at cursus arcu, non porttitor dui. Nulla id mattis nibh. Fusce dapibus, purus sit amet egestas ornare, leo justo consequat mi, finibus mollis augue eros et leo. Aliquam eu velit et enim porta ullamcorper. Vestibulum eget dapibus ipsum. Ut a libero dignissim, tincidunt lectus et, ultricies diam. Nunc sed maximus nulla. Vivamus id pretium ligula, venenatis consectetur velit.</p>', 'NOTICIA', '', '', '', 'texto', 'OIT', 'http://google.com', 'noticia_default.png', 'noticia_default_thumb.jpg', '2', '1', '2', '0', '2016-09-23 17:16:54', '1', '2017-05-20 04:31:56', '4', '2017-05-20 04:31:56', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('66', 'La seguridad social para los trabajadores de la construcción', '<p>La seguridad social para los trabajadores de la construcci&oacute;n</p>', '<p>Los niveles de ingreso de los trabajadores de la construcci&oacute;n en Bolivia var&iacute;an seg&uacute;n su categor&iacute;a; los obreros dependientes obtienen menor remuneraci&oacute;n en promedio que los cuenta propia, as&iacute; como los salarios de los empleadores o jefes del sector informal superan a los del sector dependiente. Si bien los promedios de ingreso del sector superan el salario m&iacute;nimo nacional, especialmente en el sector independiente, est&aacute;n perdiendo las coberturas y beneficios de la Seguridad Social. Sin embargo, a pesar de que un gran n&uacute;mero de trabajadores de la construcci&oacute;n est&aacute;n en condici&oacute;n de dependencia, la seguridad y salud en el trabajo como la cobertura de Seguridad Social es muy baja, tanto en salud como en pensiones. Por tanto, los trabajadores de la construcci&oacute;n son vulnerables ante las adversidades de corto y largo plazo.</p>', 'VIDEO', 'https://www.youtube.com/watch?v=C7Jt_n6lt1M', '', null, 'video', 'OIT', '', 'https://img.youtube.com/vi/C7Jt_n6lt1M/0.jpg', 'noticia_default_thumb.jpg', '4', '2', '2', '0', '2017-03-07 13:45:00', '1', '2017-03-07 13:46:10', '1', '2017-03-07 13:46:10', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('57', 'Datos Relevantes sobre Género en el Sector de la Construcción', '<p><span style=\"font-size:18px;\"><strong>Datos extra&iacute;dos de la encuesta de hogares 2014.</strong></span></p>', '<ul>\r\n	<li style=\"text-align: justify;\"><strong>95,5% del total de los trabajadores de la construcci&oacute;n son varones, frente a solamente 4,5% que son mujeres.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>La mayor parte de las trabajadoras de la construcci&oacute;n son asalariadas, pero no cuentan con cobertura de Seguridad Social por las condiciones de informalidad en las que trabajan.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Del total de los trabajadores en construcci&oacute;n asalariados el 5,6% son mujeres y el 94,4% son hombres.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Entre los hombres 26,4% son trabajadores por cuenta propia mientras que entre las mujeres la presencia de trabajadoras por cuenta propia es de solamente 1,3%.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Del total de los trabajadores sin remuneraci&oacute;n dentro del sector de la construcci&oacute;n 62% son mujeres y 38% son hombres.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Del total de los trabajadores sin remuneraci&oacute;n que son familiares o aprendices dentro del sector de la construcci&oacute;n las mujeres representan un 24,7% y los hombres solamente un 0,8%.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Si bien se acelera la incorporaci&oacute;n de las mujeres en la industria de la construcci&oacute;n y esta mano de obra es apreciada por los empleadores, no se refleja en el nivel de ingresos.</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Las mujeres generalmente se vinculan a la actividad de la construcci&oacute;n como ayudantes o peones. Por esta raz&oacute;n las mujeres reciben por lo menos un 20% menos de la paga que se realiza a un var&oacute;n, independientemente de la actividad o la responsabilidad (Peri&oacute;dico P&aacute;gina Siete, domingo 10 de noviembre de 2013).</strong></li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Del total de trabajadores de la construcci&oacute;n 58,9% de los hombres ejercen como alba&ntilde;iles y solamente el 15,5% coo ayudantes, en tanto que en el caso de las mujeres , 15,8% trabaja como alba&ntilde;il y 28,6% como ayudantes.</strong></li>\r\n</ul>', 'NOTICIA', '', '', null, 'texto', '', '', 'Untitled6.png', 'Untitled6_thumb.png', '3', '1', '2', '0', '2017-03-07 09:29:08', '1', '2017-03-07 10:24:52', '1', '2017-03-07 10:24:52', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('58', 'Estereotipos y preconceptos del sector de la construcción', '<p><span style=\"font-size:18px;\"><b>Estereotipos y preconceptos presentes en la gesti&oacute;n del empleo dentro del sector de la construcci&oacute;n</b></span></p>', '<p><strong>EL TEMA:</strong> La fuerza y resistencia f&iacute;sica</p>\r\n\r\n<p><strong>ESTEREOTIPOS:</strong> &ldquo;Las mujeres no tienen suficiente fuerza para trabajar en la construcci&oacute;n&rdquo;</p>\r\n\r\n<p><strong>REFLEXIONEMOS:</strong></p>\r\n\r\n<p>&bull; La fuerza f&iacute;sica depende no solo del sexo: tambi&eacute;n depende del entrenamiento y la experiencia previa. Muchas ocupaciones tradicionalmente femeninas requieren gran fuerza y resistencia. Ejemplos: Comadrona y trabajadora dom&eacute;stica.</p>\r\n\r\n<p>&bull; Cada vez m&aacute;s la tecnolog&iacute;a suple la fuerza f&iacute;sica en el trabajo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><u>La segmentaci&oacute;n laboral por sexo en el sector de la construcci&oacute;n es un problema porque:</u></strong></p>\r\n\r\n<p>&nbsp;&bull; Limita las posibilidades de mujeres y hombres de optar a empleos diversos; y por tanto, limita las posibilidades de las empresas de aprovechar la diversidad del talento.</p>\r\n\r\n<p>&bull; Los sectores donde se genera m&aacute;s empleo (por ejemplo, la construcci&oacute;n con fondos p&uacute;blicos) benefician fundamentalmente a los hombres.</p>\r\n\r\n<p>&bull; Los empleos ocupados por mujeres son normalmente m&aacute;s precarios, con menor remuneraci&oacute;n y prestaciones sociales.</p>\r\n\r\n<p>&bull; Limita las posibilidades de las mujeres de acceder a puestos de decisi&oacute;n</p>\r\n\r\n<p>&nbsp;</p>', 'NOTICIA', '', '', null, 'texto', '', '', 'images.jpg', 'images_thumb.jpg', '1', '1', '0', '0', '2017-03-07 10:19:22', '1', '2017-05-21 20:46:58', null, '2017-03-07 10:19:22', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('59', 'Estereotipos y preconceptos presentes dentro del sector de la construcción', '<p><span style=\"font-size:18px;\"><strong>Estereotipos y preconceptos presentes en la gesti&oacute;n del empleo dentro del sector de la construcci&oacute;n</strong></span></p>', '<p style=\"text-align: justify;\"><strong>EL TEMA:</strong> La fuerza y resistencia f&iacute;sica</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>ESTEREOTIPOS:</strong> &ldquo;Las mujeres no tienen suficiente fuerza para trabajar en la construcci&oacute;n&rdquo;</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>REFLEXIONEMOS:</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">La fuerza f&iacute;sica depende no solo del sexo: tambi&eacute;n depende del entrenamiento y la experiencia previa. Muchas ocupaciones tradicionalmente femeninas requieren gran fuerza y resistencia. Ejemplos: Comadrona y trabajadora dom&eacute;stica.</li>\r\n	<li style=\"text-align: justify;\">Cada vez m&aacute;s la tecnolog&iacute;a suple la fuerza f&iacute;sica en el trabajo.</li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\"><strong>La segmentaci&oacute;n laboral por sexo en el sector de la construcci&oacute;n es un problema porque:</strong></p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;&bull; Limita las posibilidades de mujeres y hombres de optar a empleos diversos; y por tanto, limita las posibilidades de las empresas de aprovechar la diversidad del talento.</p>\r\n\r\n<p style=\"text-align: justify;\">&bull; Los sectores donde se genera m&aacute;s empleo (por ejemplo, la construcci&oacute;n con fondos p&uacute;blicos) benefician fundamentalmente a los hombres.</p>\r\n\r\n<p style=\"text-align: justify;\">&bull; Los empleos ocupados por mujeres son normalmente m&aacute;s precarios, con menor remuneraci&oacute;n y prestaciones sociales.</p>\r\n\r\n<p style=\"text-align: justify;\">&bull; Limita las posibilidades de las mujeres de acceder a puestos de decisi&oacute;n</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'NOTICIA', '', '', null, 'texto', '', '', 'images4.jpg', 'images4_thumb.jpg', '3', '3', '3', '0', '2017-03-07 10:20:00', '1', '2017-03-07 10:23:57', '1', '2017-03-07 10:23:57', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('60', '\"Si me dejaba manosear me pagaban más\": La albañil boliviana que lucha contra el acoso sexual', '<p><span style=\"font-size:18px;\">V&iacute;deo BBC MUNDO</span></p>', '<p><span style=\"font-size:18px;\">V&iacute;deo sobre la lucha contra el acoso sexual en el sector de la construcci&oacute;n</span></p>', 'VIDEO', 'http://vid.io/xqOx', '', null, 'video', 'BBC MUNDO', 'http://vid.io/xqOx', 'https://img.youtube.com/vi/p://vid.io/xqOx/0.jpg', 'noticia_default_thumb.jpg', '2', '3', '3', '0', '2017-03-07 10:27:44', '1', '2017-05-21 12:36:34', null, '2017-03-07 10:27:44', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('61', '\"Si me dejaba manosear me pagaban más\": La albañil boliviana que lucha contra el acoso sexual', '<p><span style=\"font-size:18px;\">V&iacute;deo sobre la lucha contra el acoso sexual en el sector de la construcci&oacute;n</span></p>', '<p>Video BBC Mundo</p>', 'VIDEO', 'https://www.youtube.com/watch?v=5O_OqwUQOII&t=115s', '', null, 'video', 'BBC MUNDO', '', 'https://img.youtube.com/vi/5O_OqwUQOII&t=115s/0.jpg', 'noticia_default_thumb.jpg', '3', '1', '4', '0', '2017-03-07 10:28:04', '1', '2017-05-20 11:15:00', '1', '2017-03-07 12:17:12', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('62', 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', null, 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'gggg.png', 'gggg_thumb.png', '3', '3', '3', '0', '2017-03-07 12:01:12', '1', '2017-03-07 12:01:12', null, '2017-03-07 12:01:12', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('63', 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', null, 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'gggg1.png', 'gggg1_thumb.png', '3', '1', '3', '0', '2017-03-07 12:01:40', '1', '2017-03-07 12:01:40', null, '2017-03-07 12:01:40', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('64', 'Mujeres constructoras de Bolivia fortalecieron sus capacidades para la emancipación y empoderamiento', '<p>A trav&eacute;s del curso de Construcci&oacute;n B&aacute;sica, mujeres de este sector de la ciudad de El Alto recibieron capacitaci&oacute;n t&eacute;cnica y de seguridad y salud en el trabajo.</p>', '<p>El Alto - Cincuenta mujeres constructoras dependientes del Gobierno Aut&oacute;nomo Municipal de El Alto, Bolivia, participaron del 16 de enero al 7 de febrero en el curso de Construcci&oacute;n B&aacute;sica, cuyo contenido comprende las siguientes &aacute;reas: replanteo de la obra, cimientos, obra gruesa, obra fina, instalaciones sanitarias, instalaciones el&eacute;ctricas, pintura y acabados. El curso incluy&oacute; la capacitaci&oacute;n en seguridad y salud en el trabajo para la industria de la construcci&oacute;n, basada en la metodolog&iacute;a de la Organizaci&oacute;n Internacional del Trabajo (OIT).<br />\r\n<br />\r\nEsta iniciativa formar parte de los alcances del proyecto &ldquo;Mujeres en la Construcci&oacute;n &ndash; Hacia su empoderamiento Econ&oacute;mico y Pol&iacute;tico&rdquo; que la ONG &ldquo;Red H&aacute;bitat&rdquo; ejecuta con apoyo del Fondo de Igualdad de g&eacute;nero de ONU Mujeres y que coordina con el Proyecto &ldquo;Construyendo Igualdad&rdquo; ejecutado por la OIT con apoyo de la Cooperaci&oacute;n Sueca en Bolivia, ambos proyectos tienen como poblaci&oacute;n beneficiarias a las mujeres constructoras de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>Este primer curso realizado en dicha ciudad recibi&oacute; el apoyo de las autoridades municipales en todos los niveles, desde los directores de las unidades que tienen bajo su dependencia a mujeres constructoras hasta la propia Alcaldesa Soledad Chapet&oacute;n, qui&eacute;n reiter&oacute; su compromiso de dar continuidad con el apoyo del municipio para el fortalecimiento de las mujeres en este sector.<br />\r\n<br />\r\nEstas 50 mujeres constructoras alte&ntilde;as se suman a las m&aacute;s de 360 mujeres de La Paz que ya participaron en eventos de capacitaci&oacute;n t&eacute;cnica y de fortalecimiento en derechos laborales, liderazgo y participaci&oacute;n pol&iacute;tica que apuestan a una formaci&oacute;n integral de estas valientes mujeres que se atrevieron a irrumpir un mercado de trabajo masculinizado, la mayor&iacute;a originarias de poblaci&oacute;n ind&iacute;gena.&nbsp;<br />\r\n<br />\r\nPrecisamente esta combinaci&oacute;n de la formaci&oacute;n t&eacute;cnica y personal en ciudadan&iacute;a es la que ha determinado resultados importantes hacia el empoderamiento de las mujeres y en muchos casos hacia su emancipaci&oacute;n econ&oacute;mica y tambi&eacute;n al enfrentamiento contra una historia de violencias que marcaba sus vidas.<br />\r\n<br />\r\nLos testimonios son muchos, un com&uacute;n denominador es que la gran mayor&iacute;a de estas mujeres nunca antes pas&oacute; por procesos de capacitaci&oacute;n de ning&uacute;n tipo, es decir, todo lo aprendido en materia de construcci&oacute;n fue de forma emp&iacute;rica. Varias de ellas, que ten&iacute;an dificultades de lectura y escritura o que eran analfabetas, encontraron el est&iacute;mulo para alfabetizarse, ya que su paso por el proceso de capacitaci&oacute;n les trasform&oacute; la vida y sus ganas de seguir adelante.&nbsp;<br />\r\n<br />\r\nOtro de los cambios logrados se refiere a los horarios de capacitaci&oacute;n, los primeros cursos fueron realizados en horarios nocturnos, esto implicaba para las mujeres la extensi&oacute;n de su jornada diaria. Los &uacute;ltimos cursos se ejecutaron en horario laboral, lo que plasma una voluntad real de beneficiar a las mujeres constructoras con una capacitaci&oacute;n que no afecte su calidad de vida.&nbsp;<br />\r\n<br />\r\nEste &uacute;ltimo logro implica un avance significativo en la compresi&oacute;n de que estos procesos no solo son de beneficio para las mujeres capacitadas sino para los propios gobiernos municipales al hacer practica de un discurso de equidad e igualdad hacia las mujeres.</p>', 'NOTICIA', '', '', '', 'texto', '', 'http://www.ilo.org/lima/sala-de-prensa/WCMS_544299/lang--es/index.htm', 'noticia_default.png', 'noticia_default_thumb.jpg', '1', '1', '0', '0', '2017-03-07 12:02:36', '1', '2017-05-21 12:33:56', '1', '2017-05-20 04:31:44', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('85', 'asdf', '<p>asdf</p>', '<p>asdf</p>', 'NOTICIA', '', '', null, 'texto', '', '', 'noticia_default.png', 'noticia_default_thumb.jpg', '4', '1', '3', '0', '2017-05-21 15:03:58', '4', '2017-05-21 15:04:39', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('86', 'Prueba Infocal', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu lectus luctus, dapibus magna aliquam, hendrerit lacus. Fusce venenatis, est non scelerisque lobortis, magna purus interdum tortor, at bibendum est neque id mauris. Praesent hendrerit dictum est vitae rhoncus. Curabitur pretium imperdiet nibh sit amet convallis. Vestibulum placerat ex eget est suscipit, nec pulvinar lectus eleifend. Donec vitae tempor tortor. Duis eget efficitur augue. Nulla tincidunt molestie lorem at efficitur. Cras non facilisis nibh, luctus tempus felis.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu lectus luctus, dapibus magna aliquam, hendrerit lacus. Fusce venenatis, est non scelerisque lobortis, magna purus interdum tortor, at bibendum est neque id mauris. Praesent hendrerit dictum est vitae rhoncus. Curabitur pretium imperdiet nibh sit amet convallis. Vestibulum placerat ex eget est suscipit, nec pulvinar lectus eleifend. Donec vitae tempor tortor. Duis eget efficitur augue. Nulla tincidunt molestie lorem at efficitur. Cras non facilisis nibh, luctus tempus felis.</p>', 'NOTICIA', '', '', null, 'texto', '', '', 'noticia_default.png', 'noticia_default_thumb.jpg', '1', '2', '2', '0', '2017-05-27 10:43:59', '3', '2017-05-27 10:45:36', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `noticia` VALUES ('95', 'TEST CAPACITACION RED HAB 01', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dapibus metus lorem, eu tincidunt odio accumsan eu. Mauris et diam tortor. Nunc at augue a elit aliquet varius. Pellentesque non sapien urna. Proin ultrices ut mi quis pharetra. Proin rutrum odio justo, ut pharetra lacus pharetra et. Donec consectetur porta leo sed maximus. Nam justo risus, imperdiet in pharetra in, pretium sit amet dolor. Donec finibus ipsum ac felis sodales, a vestibulum ex pellentesque.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dapibus metus lorem, eu tincidunt odio accumsan eu. Mauris et diam tortor. Nunc at augue a elit aliquet varius. Pellentesque non sapien urna. Proin ultrices ut mi quis pharetra. Proin rutrum odio justo, ut pharetra lacus pharetra et. Donec consectetur porta leo sed maximus. Nam justo risus, imperdiet in pharetra in, pretium sit amet dolor. Donec finibus ipsum ac felis sodales, a vestibulum ex pellentesque.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dapibus metus lorem, eu tincidunt odio accumsan eu. Mauris et diam tortor. Nunc at augue a elit aliquet varius. Pellentesque non sapien urna. Proin ultrices ut mi quis pharetra. Proin rutrum odio justo, ut pharetra lacus pharetra et. Donec consectetur porta leo sed maximus. Nam justo risus, imperdiet in pharetra in, pretium sit amet dolor. Donec finibus ipsum ac felis sodales, a vestibulum ex pellentesque.</p>', 'NOTICIA', '', '', '', 'texto', '', '', 'noticia_default.png', 'noticia_default_thumb.jpg', '2', '3', '3', '0', '2017-06-04 18:57:43', '4', '2017-06-04 18:57:43', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pagina
-- ----------------------------
INSERT INTO `pagina` VALUES ('2', 'Información estadistica', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>\r\n\r\n<p>Sed imperdiet augue eget nulla porttitor aliquet. Nulla eget felis eget lectus vestibulum ornare sed a neque. Maecenas arcu dolor, luctus ut est ac, consequat vulputate erat. Vivamus id consequat justo. Mauris augue turpis, aliquet a massa vel, rutrum convallis arcu. Phasellus sed sollicitudin neque. Aliquam sit amet elit placerat, pellentesque neque sed, convallis lacus.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/estadistica.jpg\" style=\"width: 300px; height: 225px;\" /></p>', '1', '0', '33', 'informacion-estadistica', 'Resultados de maestras constructuras', 'estadisticas, maestras constructoras, caboco', '2016-09-23 18:36:07', '1', '2017-02-10 08:11:41', '1', '2017-01-14 12:46:33', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('3', 'Salud y seguridad en el trabajo', '<p style=\"text-align: center; max-width: 853px; max-height: 480px; margin: 0 auto;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"480\" src=\"https://www.youtube.com/embed/C7Jt_n6lt1M?rel=0\" width=\"853\"></iframe></p>', '1', '0', '70', 'salud-seguridad-trabajo', 'Salud y seguridad en el trabajo', 'salud, seguridad, trabajo, maestras constructoras', '2016-09-24 09:36:45', '1', '2017-02-28 07:20:18', '1', '2017-01-26 15:02:53', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('4', 'Norma Vigente', '<p style=\"text-align: center;\"><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/norma.png\" style=\"width: 266px; height: 84px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta turpis et tincidunt tincidunt. Integer vel interdum nibh, id tincidunt lectus. Nunc non justo dui. Nulla auctor porta libero ac aliquet. Ut egestas arcu erat, non bibendum lectus sodales sit amet. Donec lectus massa, pellentesque a posuere ac, pellentesque eu neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam congue velit in mollis egestas. Sed non quam efficitur, commodo augue vel, hendrerit quam.</p>\r\n\r\n<p>Aliquam erat volutpat. Pellentesque fermentum consectetur nisi, suscipit iaculis elit gravida vel. Curabitur ante diam, finibus id rutrum sed, vestibulum vel purus. Integer justo nibh, imperdiet porttitor tristique eu, rutrum nec est. Donec at consequat tortor, nec pellentesque dolor. In id venenatis dolor. Donec neque mi, consectetur sit amet nibh id, faucibus auctor tortor. Donec id bibendum ante, ut lacinia urna.</p>\r\n\r\n<p>Ut faucibus quis velit ut malesuada. Pellentesque eleifend mi quis turpis rhoncus, sit amet interdum tellus porta. Donec tristique finibus nulla, tempor tristique tortor mattis eget. Donec sit amet ante dui. Phasellus iaculis et sem vitae gravida. Aenean consequat tortor a consequat venenatis. Ut at congue dolor. Sed vel nisl vehicula tellus tempus pretium. Aliquam non laoreet nulla, eget pulvinar lacus. Vivamus facilisis in est at ullamcorper. Vivamus aliquam gravida condimentum. Suspendisse sit amet lectus purus. Aenean gravida eget justo imperdiet consequat.</p>\r\n\r\n<p>Quisque eu auctor sapien. Praesent tempus faucibus feugiat. Ut vitae augue massa. Proin dapibus, tellus vel hendrerit pellentesque, lacus erat blandit nibh, quis luctus nunc nunc id purus. Aenean purus massa, commodo ut viverra quis, congue non nisl. Suspendisse eleifend, diam et aliquam accumsan, neque magna placerat dui, at venenatis dolor ligula sed leo. Aenean id tempus nunc. Aenean venenatis, massa vel hendrerit sollicitudin, tortor dolor maximus risus, eu condimentum tortor arcu nec elit. Mauris hendrerit quam eu suscipit tempus. Cras lorem sapien, scelerisque et rhoncus at, venenatis id odio. In ultricies pulvinar porta. Quisque pellentesque enim nec accumsan sagittis. Curabitur venenatis vitae nisi eleifend luctus. Aliquam erat volutpat. In ornare rhoncus condimentum. Curabitur mattis enim vitae commodo pellentesque.</p>', '1', '0', '88', 'norma-vigente', 'Norma vigente, maestras trabajadoras', 'maestras trabajadoras, CABOCO', '2016-09-24 10:12:25', '1', '2017-02-26 04:56:43', '1', '2017-01-14 12:12:54', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('5', 'Pagina de Prueba', '<p><span style=\"font-size:24px;\">Ingresar contenido....</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '1', '0', '72', 'pagina-de-prueba', '', '', '2016-11-29 13:37:50', '1', '2017-01-18 14:26:06', '1', '2016-11-29 13:49:29', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('6', 'Equidad de género en el sector', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', '1', '0', '20', 'equidad-de-genero-en-el-sector', 'Equidad de género en el sector', 'equidad, genero, sector', '2017-02-07 14:14:28', '1', '2017-02-26 12:31:26', '0', '2017-02-07 14:14:28', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('7', 'Quiénes somos', '<p>&nbsp;</p>\r\n\r\n<p>La plataforma virtual&nbsp; MAESTRAS CONSTRUCTORAS alberga una base de datos de trabajadoras capacitadas y certificadas en diferentes especialidades del rubro de la construcci&oacute;n. Estas certificaciones son otorgadas por diversos centros de formaci&oacute;n t&eacute;cnica de las ciudades de La Paz y El Alto.</p>\r\n\r\n<p>El objetivo de la plataforma es promover v&iacute;nculos laborales entre empleadores y mujeres trabajadoras en la construcci&oacute;n, con el fin de facilitar la b&uacute;squeda y contrataci&oacute;n de trabajadoras capacitadas y as&iacute; promover la visibilizaci&oacute;n de la mano de obra fina que poseen, cuya fama destaca dentro del rubro de la construcci&oacute;n en nuestro pa&iacute;s.</p>\r\n\r\n<p>La Administraci&oacute;n de la Plataforma est&aacute; a cargo de la C&aacute;mara Boliviana de la Construcci&oacute;n (CABOCO), quienes junto con Instituciones de Formaci&oacute;n T&eacute;cnica y con otros actores importantes del sector de la construcci&oacute;n en Bolivia, impulsan el proyecto &ldquo;Construyendo Igualdad&rdquo; iniciado por la Organizaci&oacute;n Internacional de Trabajo (OIT) a principios de 2015 para la promoci&oacute;n de mejores condiciones laborales para las mujeres del sector de la construcci&oacute;n en Bolivia. Este proyecto fue financiado por la Agencia Sueca de Desarrollo Internacional (ASDI).</p>\r\n\r\n<hr />\r\n<div class=\"content-auspiciantes\"><!-- Start Big Heading -->\r\n<div class=\"big-title text-center\">\r\n<h1>Instituciones de <strong>Formaci&oacute;n T&eacute;cnica</strong></h1>\r\n</div>\r\n<!-- End Big Heading -->\r\n\r\n<div class=\"content-auspiciantes\">\r\n<section class=\"auspiciantes slider\" style=\"margin: 60px auto;\">\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/Logo_INFOCAL.jpg\" style=\"height: 70px; width: 195px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/LOGO_V3_blanco2.jpg\" style=\"width: 162px; height: 90px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/logo_Desarrollo_Economico2.png\" style=\"width: 222px; height: 70px;\" /></div>\r\n\r\n<div><img alt=\"\" src=\"/si_maestras/assets/filemanager/userfiles/escuelas/RED_HABITAT.png\" style=\"height: 90px; width: 81px;\" /></div>\r\n</section>\r\n</div>\r\n</div>', '1', '0', '95', 'quienes-somos', 'quiénes somos', 'quienes somos', '2017-02-07 14:24:13', '1', '2017-05-20 10:23:45', '1', '2017-03-18 12:14:01', '0000-00-00 00:00:00');
INSERT INTO `pagina` VALUES ('8', 'Cómo funciona', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan, elit quis posuere vestibulum, sem quam rhoncus turpis, laoreet volutpat ligula odio in neque. Cras diam mi, egestas ut laoreet vitae, fermentum imperdiet nunc. Integer non sem sodales, semper metus non, molestie lorem. Vivamus id varius enim. In eu fringilla lectus. Fusce eros enim, molestie ac dignissim a, tempor et augue. Suspendisse facilisis ultrices tristique. Praesent bibendum et tortor luctus maximus. Ut nec porta nisi. Proin cursus nibh velit, a convallis lectus convallis eget.</p>\r\n\r\n<p>Donec lectus odio, porta ac nibh et, pellentesque euismod mauris. Ut porta justo at purus feugiat vestibulum. Praesent elit enim, porttitor nec diam quis, egestas mollis justo. Aliquam vel diam iaculis, faucibus dolor nec, faucibus dolor. Vivamus at ex eget dui feugiat suscipit. Nam rhoncus lorem orci, vel rhoncus massa mollis eu. Fusce et nunc vehicula, luctus sapien in, feugiat lacus. Donec auctor vel tellus ut suscipit. Quisque eget auctor arcu. Etiam ullamcorper feugiat scelerisque. Vestibulum ac laoreet purus. Morbi sagittis accumsan lacinia. Nam a scelerisque tellus. Nulla ornare nunc id quam placerat porta.</p>\r\n\r\n<p>Donec fermentum, risus in iaculis euismod, neque ligula vulputate augue, id posuere ipsum dui vitae purus. Fusce tincidunt lacinia nunc, vitae euismod ex dignissim at. Etiam imperdiet metus at purus bibendum cursus. Aenean mi quam, tempus id diam at, maximus maximus ante. Praesent ut turpis et libero convallis vestibulum. Phasellus nibh leo, bibendum eu porttitor ut, fermentum eu tortor. Vivamus eget leo eleifend, vulputate massa eu, tincidunt massa. Nunc quis vulputate massa. Aliquam ultrices metus erat, eget molestie massa facilisis eget. In convallis dolor orci, non condimentum metus accumsan vulputate. Vivamus vehicula vehicula magna vel lacinia.</p>\r\n\r\n<p>Proin convallis pellentesque leo, vitae efficitur metus euismod et. Nam aliquet diam vel urna vestibulum lobortis. Quisque elementum quis quam suscipit interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ante nisi, fermentum nec turpis quis, dignissim dapibus diam. Ut nulla nunc, aliquam id dapibus a, blandit et augue. Phasellus auctor erat non lobortis consequat. Quisque ultricies lectus eu ex porttitor tincidunt. Vivamus nec eros scelerisque, blandit lorem quis, placerat mauris. Vivamus tristique velit sem, et sollicitudin erat consectetur non. Aliquam erat volutpat. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Praesent et diam tempus, blandit dolor sed, mattis purus. Praesent placerat interdum dolor sit amet euismod. Nam nec nulla metus. Sed ullamcorper ligula erat, at varius massa vehicula ut. Praesent sollicitudin arcu leo, a porta ante porta suscipit. Vivamus viverra bibendum lacus, vitae sagittis nisl pellentesque et. Praesent id urna sed lorem egestas ornare et sed magna. Vestibulum vitae dictum lorem, non varius mauris. Suspendisse mi lacus, porttitor in volutpat vel, suscipit nec enim. Duis ut magna hendrerit, pulvinar mi at, pulvinar neque. Pellentesque libero lectus, ultricies sit amet tincidunt eu, facilisis eu ligula. Integer eu congue diam. Nulla neque leo, semper et neque efficitur, consequat tincidunt nibh. Nullam aliquam venenatis semper.</p>', '1', '0', '29', 'como-funciona', 'cómo funciona', 'cómo funciona', '2017-02-07 14:24:58', '1', '2017-03-07 15:03:26', '0', '2017-02-07 14:24:58', '0000-00-00 00:00:00');

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
INSERT INTO `pagina_predisenada` VALUES ('3', 'Página de inicio', null, '', 'SCORE de la OIT es un programa mundial de formación y asistencia técnica para pequeñas y medianas empresas', 'Maestras Constructoras, CABOCO', '1', '0', '8348', '2016-09-14 15:01:08', '0', '2017-06-21 13:04:07', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('4', 'Publicaciones', null, 'publicaciones-score-bolivia', 'Publicaciones SCORE Bolivia', 'Maestras Constructoras, CABOCO', '1', '0', '231', '2016-09-24 18:26:46', '0', '2016-11-14 12:50:17', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('5', 'Contacto', null, 'contacto-maestras-constructoras', 'Contacto Maestras Constructoras', 'Maestras Constructoras, CABOCO', '1', '0', '422', '2016-09-28 11:09:41', '0', '2017-06-21 13:05:07', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('9', 'Caja de herramientas Modulo I', null, 'biblioteca/1', 'Caja de herramientas Modulo I', 'Maestras Constructoras, CABOCO', '0', '0', '8', '2016-10-16 19:53:21', '1', '2016-11-29 13:50:52', '1', '2016-10-18 11:04:28', '2016-10-18 11:04:05');
INSERT INTO `pagina_predisenada` VALUES ('12', 'Noticias generales', null, 'noticias/1', 'Noticias generales', 'Maestras Constructoras, CABOCO', '1', '0', '710', '0000-00-00 00:00:00', '0', '2017-06-04 19:04:27', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('13', 'Noticias capacitacion', null, 'noticias/2', 'Noticias capacitacion', 'Maestras Constructoras, CABOCO', '1', '0', '237', '0000-00-00 00:00:00', '0', '2017-06-04 16:39:20', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('14', 'Información equidad de género', '', 'informacion/3', 'Informacion equidad de género', 'Maestras Constructoras, CABOCO', '1', '0', '131', '0000-00-00 00:00:00', '0', '2017-05-20 11:57:04', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('15', 'Información derechos laborales', null, 'informacion/4', 'Derechos laborales', 'Maestras Constructoras, CABOCO', '1', '0', '138', '0000-00-00 00:00:00', '0', '2017-05-20 11:57:36', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pagina_predisenada` VALUES ('16', 'Información salud y seguridad en el trabajo', null, 'informacion/5', 'Salud y seguridad en el trabajo', 'Maestras Constructoras, CABOCO', '1', '0', '56', '0000-00-00 00:00:00', '0', '2017-05-20 11:56:59', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
INSERT INTO `sesion` VALUES ('0d3dbece6152eda5f91e4a2b76cf498fab9adf03', '::1', '1498068581', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036383439363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('da9ad820af3ea4190ca8698f24456926e0dd5f9d', '::1', '1498068359', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036383134353B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('10e57feb4b313c3aeb2fb05c59d8a6d01083f04a', '::1', '1498067115', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036363935363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('23133e6b5f290be5e36a26b0a2f1fdafd6019218', '::1', '1498066816', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036363532383B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('c9fb05fcd9f42a88ce9198e64143bdb827ca6826', '::1', '1498066205', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036363033333B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('71cd5ea61169132eb0c024831fdf85338230678a', '::1', '1498064752', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036343532393B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('fde17c3cd5cec8818c0ddd536e0b0095bdbfdbf3', '::1', '1498064466', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036343136393B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('b78a000c02405736be7fe5ff1a2cc127c9226ba1', '::1', '1498063726', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036333530333B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('12dc73191bc8c8561fa50c642d14cfefa3678f43', '::1', '1498063419', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036333132303B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('bf1f8cc68f7daca24e0e0f4014f2f61eb9781af1', '::1', '1498062983', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036323739383B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('8e6b4037d5d4c0399079a1b70a95addd4b5d78c0', '::1', '1498062683', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036323436343B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('829cc2b2b82de61e69acb114ba355f1aa7078cc8', '::1', '1498062073', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036313832343B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('8c8ee28f5756637eb592772b71d5ff5113446510', '::1', '1498061795', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036313439373B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('c2c1f57d49f0d885eff07888c5b28940198589ba', '::1', '1498061318', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383036313136363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('9996fa94019d745d266e3d889c988dd2714c76fc', '::1', '1498059872', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383035393734313B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('0936d2c03f61756af6958541dd01dfb8be736360', '::1', '1498059268', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383035393031353B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('4ec69e5d646223414ea320ad7fb7a0985671ada3', '::1', '1498057059', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383035363832393B);
INSERT INTO `sesion` VALUES ('cca8824e3f7c89577337f3c96f2a49d1e8896754', '::1', '1498057420', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383035373432303B);
INSERT INTO `sesion` VALUES ('9bd1f3e90635ea550de7b816307d94169b21e648', '::1', '1497723733', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373732333733333B);
INSERT INTO `sesion` VALUES ('956692a73cfab6b9a5c4687916ece6f77805fbf5', '::1', '1498055544', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383035353432313B);
INSERT INTO `sesion` VALUES ('edd4927b1123ef8a7072e22cbc5fb7d254223ba2', '::1', '1498055467', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383035353436373B);
INSERT INTO `sesion` VALUES ('ebc0c91f141f73f3611873c9a42aa812ee51e2fc', '::1', '1498056736', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383035363731393B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('fa3d99810ca5ebf21c8f726cc7ede58454f22dea', '::1', '1497716783', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373731363539363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('74e4b4d8be6c89cc74652886a00c8a88bd0c8482', '::1', '1497717214', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373731363935323B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('13d3e830fd235fdd5e773367898eb978737dca06', '::1', '1497717633', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373731373335353B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('e4df4f646224f25d2331903770869fb80e43843f', '::1', '1497718333', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373731383134363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('24130a1429e7fc3c93008c54a46ae53c620a0be4', '::1', '1497718746', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373731383630363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B5F5F63695F766172737C613A313A7B733A353A226572726F72223B733A333A226E6577223B7D);
INSERT INTO `sesion` VALUES ('64adb7680b2d1af42a5792157d5ff3f763cbd8a2', '::1', '1497719235', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373731393031333B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B5F5F63695F766172737C613A313A7B733A373A226D656E73616A65223B733A333A226F6C64223B7D);
INSERT INTO `sesion` VALUES ('e07556316a17c1bbf5a5d5908f507316359f1bfc', '::1', '1497719319', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373731393331393B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('33450082e5744063803b165def7098f1ca2b8093', '::1', '1497721727', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373732313531393B7573756172696F7C613A31313A7B733A323A226964223B733A313A2234223B733A373A227573756172696F223B733A373A226D617269616E6F223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A373A226D617269616E6F223B733A393A226170656C6C69646F73223B733A353A227065726573223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A30353A3135223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2233223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A31313A225245442048414249544154223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A31323A227265645F686162697461742F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('ee713228489e91cd63a8132dee510688abd80c2c', '::1', '1497722624', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373732323331363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2237223B733A373A227573756172696F223B733A333A22616E61223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A333A22416E61223B733A393A226170656C6C69646F73223B733A373A2250657265697261223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A34363A3034223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2234223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A34343A2253454352455441524941204D554E49434950414C204445204445534152524F4C4C4F2045434F4E4F4D49434F223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A34353A22736563726574617269615F6D756E69636970616C5F64655F6465736172726F6C6C6F5F65636F6E6F6D69636F2F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('64b34359607bd6db8cb1d5e5e1c77c368db3c521', '::1', '1497722926', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373732323633363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2237223B733A373A227573756172696F223B733A333A22616E61223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A333A22416E61223B733A393A226170656C6C69646F73223B733A373A2250657265697261223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A34363A3034223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2234223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A34343A2253454352455441524941204D554E49434950414C204445204445534152524F4C4C4F2045434F4E4F4D49434F223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A34353A22736563726574617269615F6D756E69636970616C5F64655F6465736172726F6C6C6F5F65636F6E6F6D69636F2F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('61836ae952f83e8b25018c567b2257fc51c8da2d', '::1', '1497723546', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439373732333235353B7573756172696F7C613A31313A7B733A323A226964223B733A313A2237223B733A373A227573756172696F223B733A333A22616E61223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A333A22416E61223B733A393A226170656C6C69646F73223B733A373A2250657265697261223B733A363A2263726561646F223B733A31393A22323031372D30342D30382031313A34363A3034223B733A393A2270657266696C5F6964223B733A313A2232223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2234223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A34343A2253454352455441524941204D554E49434950414C204445204445534152524F4C4C4F2045434F4E4F4D49434F223B733A363A2270657266696C223B733A32303A2243656E74726F20646520466F726D616369C3B36E223B733A31323A226469725F696D6167656E6573223B733A34353A22736563726574617269615F6D756E69636970616C5F64655F6465736172726F6C6C6F5F65636F6E6F6D69636F2F223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('9fcaf08046e53cc1b3c5afa3b9e85af2192da70e', '::1', '1498361141', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336303838353B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('9a1fb4fee1e36ca387d4a1c5d1c5628b5a8cbe5a', '::1', '1498361607', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336313238373B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('f87d2e37e11382fb95dd682739e9e0a3b7f3563a', '::1', '1498361886', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336313638373B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('9375e5b2c8a8802539d8c9ca50a29a4c434fbca8', '::1', '1498362172', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336313939303B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('bd951264b04c0aaf07375fc99f586d1042e89fb4', '::1', '1498362348', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336323334383B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('49bf24453f1f531b316ffa980f9fa07e72626000', '::1', '1498362871', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336323836343B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('8fa6be10e8798ca76c4a4b341b21ca5b5bd66032', '::1', '1498363337', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336333332363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('ba572b9eed6eaf6f902459eefab97e39451a11e7', '::1', '1498363837', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336333832383B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('973527c2cb813df9ffbaca265ed03a7a8e7df4df', '::1', '1498364791', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336343538363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('a804332fa4068f9374f71a5f33eceb35b72e392a', '::1', '1498365204', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336353132313B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('2c88e6b6fcc956c43f1b0ddc508764b1be99877a', '::1', '1498366052', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336353736383B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('e9a93536861f45eddd4fa586f2648e2f366c4eb8', '::1', '1498366388', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336363037363B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('98f508fcab8b7a1fa623bd5cb25c5469f5be7b9f', '::1', '1498366821', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383336363537313B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('4222a65484205d8781cb4eeaeaf4201eb4748730', '::1', '1498391807', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339313631353B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('ff2a67859039b59697b0c9ee079ef6370cb42883', '::1', '1498392153', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339313931393B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('d644b6f27b293e21651b5b0bced47712978108af', '::1', '1498392528', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339323233333B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B);
INSERT INTO `sesion` VALUES ('e1a292fdd2cb5fdc96cef7808eeb47d51e1143b4', '::1', '1498392762', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339323533383B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('b2bc8ab356107b3331d6047f9302de364909d618', '::1', '1498393345', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339333037393B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('dac917433b4f10566ec253ed0855925b4c25c0e9', '::1', '1498393739', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339333630353B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('989944d9feb2429a0438761323b9615fceb08a82', '::1', '1498394235', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339333938353B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B5F5F63695F766172737C613A313A7B733A373A226D656E73616A65223B733A333A226F6C64223B7D);
INSERT INTO `sesion` VALUES ('00e10731e11ec746eaf0f3b1fd87c8eb046a2539', '::1', '1498394905', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339343739303B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('c3a6510ff004e55c9be384d9f2b7059fe91c44bc', '::1', '1498395804', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339353536343B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('f50673ca5cf216e292228b667a9740d8a7b1c7ab', '::1', '1498396027', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339353931313B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('d4b50e858dca60d5324138ba21d03bbaa62e991a', '::1', '1498396434', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339363235333B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('0bd4607e487f865e2bb19085e3d1ea40a2d0f4f3', '::1', '1498396920', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339363635333B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('6c6ea9e6f342bbccaec175e270fd14b68d8fb74e', '::1', '1498397043', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339373030323B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);
INSERT INTO `sesion` VALUES ('eb58f5df967e847c69dd631433277fa7a5da8cb5', '::1', '1498397387', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439383339373336383B7573756172696F7C613A31313A7B733A323A226964223B733A313A2231223B733A373A227573756172696F223B733A31343A2261646D61657374726173636F6E73223B733A31303A22666F746F677261666961223B733A36363A22687474703A2F2F6C6F63616C686F73742F73695F6D616573747261732F6173736574732F696D672F7573756172696F732F7468756D622F64656661756C742E6A7067223B733A373A226E6F6D62726573223B733A31333A2241646D696E6973747261646F72223B733A393A226170656C6C69646F73223B733A393A225072696E636970616C223B733A363A2263726561646F223B733A31393A22323031362D30392D32362031353A34363A3538223B733A393A2270657266696C5F6964223B733A313A2231223B733A31363A2263656E74726F5F666F726D6163696F6E223B733A313A2230223B733A32303A227478745F63656E74726F5F666F726D6163696F6E223B733A303A22223B733A363A2270657266696C223B733A31333A225375706572205573756172696F223B733A31323A226469725F696D6167656E6573223B733A303A22223B7D6578697374655F736573696F6E7C623A313B677275706F5F6E6F74696369617C733A313A2231223B);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES ('1', '<h2 class=\"animated2\">Maestras&nbsp;<strong>Constructoras</strong></h2>\r\n\r\n<h3 class=\"animated3\">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class=\"animated4\"><a class=\"slider btn btn-system btn-large\" href=\"#\">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'mconstructora0.png', 'mconstructora0_thumb.png', '1', '0', '2016-10-03 14:43:56', '1', '2017-01-10 13:42:04', '1', '2017-01-10 13:42:04', '0000-00-00 00:00:00');
INSERT INTO `slide` VALUES ('2', '<h2 class=\"animated2\">Noticias y&nbsp;<strong>Capacitaci&oacute;n</strong></h2>\r\n\r\n<h3 class=\"animated3\">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class=\"animated6\"><a class=\"slider btn btn-system btn-large\" href=\"#\">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=sfDW53ddGsY', 'mconstructora1.png', 'mconstructora1_thumb.png', '1', '0', '2016-10-03 14:45:27', '1', '2017-01-10 13:42:29', '1', '2017-01-10 13:42:29', '0000-00-00 00:00:00');
INSERT INTO `slide` VALUES ('3', '<h2 class=\"animated2\">Informaci&oacute;n y&nbsp;<strong>Estad&iacute;stica</strong></h2>\r\n\r\n<h3 class=\"animated3\">Lorem ipsum dolor sit amet, consectetur.</h3>\r\n\r\n<p class=\"animated5\"><a class=\"slider btn btn-system btn-large\" href=\"#\">Ver Ahora</a></p>', 'https://www.youtube.com/watch?v=WlA1ETzm2dA', 'mconstructora2.png', 'mconstructora2_thumb.png', '1', '0', '2016-10-03 14:46:29', '1', '2017-01-10 13:42:58', '1', '2017-01-10 13:42:58', '0000-00-00 00:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'Administrador', 'Principal', 'admaestrascons', 'info@maestrasconstructoras.org', 'qY8ByUNhjFJ0zs6', '1', '0', '', '', '1', null, '2017-06-25 07:24:30', '2016-09-26 15:46:58', '0', '2017-06-25 07:24:30', '1', '2017-04-08 11:50:42', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('2', 'Hugo', 'Montes', 'hugo', 'hugomontes.formaempresas@gmail.com', '123456789', '1', '0', '', '', '1', null, '2017-02-04 12:31:21', '2017-02-01 13:45:55', '1', '2017-05-21 17:19:30', '1', '2017-05-21 17:19:30', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('3', 'juan', 'perez', 'juan', 'juan@gmail.com', '123456789', '2', '2', '', '', '1', null, '2017-05-27 10:28:51', '2017-02-01 15:22:21', '1', '2017-05-27 10:28:51', null, '2017-02-01 15:22:21', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('4', 'mariano', 'peres', 'mariano', 'mariano@gmail.com', '?MOa\"WA3.L;<', '2', '3', '', '', '1', null, '2017-06-24 22:51:01', '2017-04-08 11:05:15', '1', '2017-06-24 22:51:01', '4', '2017-04-08 11:46:52', '2017-05-21 17:20:37');
INSERT INTO `usuario` VALUES ('5', 'julio', 'loayza', 'julio', 'julio@gmail.com', 'qY8ByUNhjFJ0zs6', '2', '1', '', '', '1', null, '2017-05-23 20:52:37', '2017-04-08 11:06:08', '1', '2017-05-23 20:52:37', null, '2017-04-08 11:06:08', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('6', 'Jesus', 'Gonzales', 'jesus', 'jesus@gmail.com', 'qY8ByUNhjFJ0zs6', '2', '0', '', '', '1', null, '0000-00-00 00:00:00', '2017-04-08 11:06:51', '1', '2017-04-08 11:40:58', '1', '2017-04-08 11:40:58', '0000-00-00 00:00:00');
INSERT INTO `usuario` VALUES ('7', 'Ana', 'Pereira', 'ana', 'ana@gmail.com', 'qY8ByUNhjFJ0zs6', '2', '4', '', '', '1', null, '2017-06-17 13:59:00', '2017-04-08 11:46:04', '1', '2017-06-17 13:59:00', null, '2017-04-08 11:46:04', '0000-00-00 00:00:00');
SET FOREIGN_KEY_CHECKS=1;
