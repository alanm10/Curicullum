-- --------------------------------------------------------
-- Host:                         167.114.86.211
-- Versión del servidor:         10.1.48-MariaDB-0+deb9u2 - Debian 9.13
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para burgers_042021
CREATE DATABASE IF NOT EXISTS `burgers_042021` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `burgers_042021`;

-- Volcando estructura para tabla burgers_042021.carritos
CREATE TABLE IF NOT EXISTS `carritos` (
  `idcarrito` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_idproducto` int(11) unsigned NOT NULL DEFAULT '0',
  `cantidad` int(11) unsigned NOT NULL,
  `fk_idcliente` int(11) unsigned NOT NULL,
  `comentarios` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcarrito`),
  KEY `FK_carritos_productos` (`fk_idproducto`),
  KEY `FK_carritos_clientes` (`fk_idcliente`),
  CONSTRAINT `FK_carritos_clientes` FOREIGN KEY (`fk_idcliente`) REFERENCES `clientes` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_carritos_productos` FOREIGN KEY (`fk_idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.carritos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `carritos` DISABLE KEYS */;
INSERT INTO `carritos` (`idcarrito`, `fk_idproducto`, `cantidad`, `fk_idcliente`, `comentarios`) VALUES
	(27, 4, 3, 110, NULL),
	(28, 8, 3, 110, NULL),
	(65, 1, 1, 113, NULL),
	(66, 5, 1, 113, NULL);
/*!40000 ALTER TABLE `carritos` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `idcliente` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.clientes: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`idcliente`, `nombre`, `apellido`, `telefono`, `correo`, `clave`) VALUES
	(3, 'Jose Luis', 'Peralta', '66666666', 'velez@yahoo.com', NULL),
	(84, 'Juan', 'Sanchez', 'dsd', 'sdsdsadas64dsadasd', NULL),
	(85, 'Sara', 'Connor', '45560000', 'sara@connor.com', NULL),
	(86, 'Lucas Agustin', 'Spagnoli Berzobohaty', '2000000', 'lucas.spagnoli@gmail.com', '12345'),
	(87, 'Marx', 'Chillavert', '200450211', 'marx@gmail.com', NULL),
	(88, 'Simon', 'Zio', '00245451', 'simon@mail', NULL),
	(93, 'Seal', 'Connor', '44550044', 'seal@mail.com', NULL),
	(94, 'John', 'Connor', '45100015', 'AFD@GMAIL.COM', NULL),
	(95, 'Aanatoliy', 'Stryzhekozin', '+541171658941', 'astryzhekozi@gmail.com', NULL),
	(96, 'Richar', 'Lopez', '111111111', 'richar14000@gmail.com', NULL),
	(97, 'Rock', 'Kid', '11111', 'ss@mail', NULL),
	(98, 'Lar', 'hoo', '4425121454', 'lara@gmail.com', NULL),
	(102, 'Prueba', 'UsuarioApellido', '123412341234', '', '$2y$10$iNnPVZoiwIRoagBF83h8Ru.z3RtJ0IoqgVaooh8YWwoJXiM9c7e7y'),
	(103, 'Matias', 'PRobando', '123414124', '', '$2y$10$uerlw3i3GEUrFUicDp/FgONZNWwKC8Ra4VYv5A1A1CdYp4jWDPXeO'),
	(104, 'Probando', 'Probando', '123123123', 'probando@correo.com', '$2y$10$8ZZ6s8wrvpRVWxU7S0XV5eS7QcWoGzMO0fQ9Ug47HOVLlailK1P12'),
	(106, 'martin', 'Perez', '1154548795', 'martin@mail.com', '$2y$10$GEnASlSl2ansWvp5skdmeOTXcBSEcAi2h1BD5agVvDYhrYhAsSnre'),
	(107, 'Omar', 'Busquet', '11551518488', 'prueba@correo.com', '$2y$10$N08HAlNnF2LT4C/iScy50.axSiqqod3GRZf2.Fggnwf.yq/mB4nkm'),
	(108, 'Carlos', 'Sanchez', '1515516165', 'prueba3@correo.com', '$2y$10$RY.bH69ZYtgsj4VnIhHs8OGwv.TDPDT.qKB7jMzQXVpEjEuW2uilO'),
	(109, 'Estela', 'Martinez', '1561560656', 'prueba4@correo.com', '$2y$10$JG2z0Lo3IxieamyAlUSmVu1m.v4hNzlYVOT2Cuj8Ht5aH0N9y182O'),
	(110, 'Carla', 'Diaz', '1561988165', 'prueba5@correo.com', '$2y$10$gVgc5Ar6ECVKnyt6XKLHCuxJx5OhMTONctYoat792/uRw.akKjHkK'),
	(111, 'Ernesto', 'Panto', '115824882', 'correo4@prueba.com', '$2y$10$.kVY5BHtw71wWoGAiZhf/uWCGEZtck6fOVPW7V73Faf4/3/45gNj.'),
	(112, 'Jose', 'Lopez', '454215451245', 'jose@gmail.com', '1234'),
	(113, 'jos', 'jimenez', '1150504321', 'jose@mail.com', '$2y$10$nTm49yjMTcHnSvmrT0lTy.LBvOk.jaX6Qs71TA1lCRYjE.5aBbdlm'),
	(114, 'Daniel', 'Blanco', '01124099365', 'danieloropeza98sc@gmail.com', '$2y$10$UqUVWnihROiSXDn1FVfHNOMviLkWmr6HMKlf1Xmm.lGD5pmxnc9nu'),
	(115, 'NELSON', 'TARCHE', '01162423341', 'nelson@correo.com', '5678'),
	(116, 'Juan', 'Perez', '1124588569', 'correo@correo.com', '$2y$10$hOdCiLIvKYCbmDsKulVHru.et5PPWVdziMIXNmq5I8iFDplJqgglO');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.estados
CREATE TABLE IF NOT EXISTS `estados` (
  `idestado` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.estados: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` (`idestado`, `nombre`) VALUES
	(1, 'En preparación'),
	(2, 'Recibido'),
	(3, 'Entregado'),
	(4, 'Pendiente'),
	(5, 'Cancelado');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.estado_pagos
CREATE TABLE IF NOT EXISTS `estado_pagos` (
  `idestadopago` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idestadopago`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.estado_pagos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `estado_pagos` DISABLE KEYS */;
INSERT INTO `estado_pagos` (`idestadopago`, `nombre`) VALUES
	(1, 'Pagado'),
	(2, 'Rechazado'),
	(3, 'Pendiente');
/*!40000 ALTER TABLE `estado_pagos` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `idpedido` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `total` decimal(10,2) unsigned NOT NULL,
  `fk_idsucursal` int(11) unsigned NOT NULL,
  `fk_idcliente` int(11) unsigned NOT NULL,
  `fk_idestado` int(11) unsigned NOT NULL,
  `fk_idestadopago` int(11) unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  `comentarios` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `FK_pedidos_sucursales` (`fk_idsucursal`),
  KEY `FK_pedidos_clientes` (`fk_idcliente`),
  KEY `FK_pedidos_estados` (`fk_idestado`),
  KEY `FK_pedidos_estado_pagos` (`fk_idestadopago`),
  CONSTRAINT `FK_pedidos_clientes` FOREIGN KEY (`fk_idcliente`) REFERENCES `clientes` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_estado_pagos` FOREIGN KEY (`fk_idestadopago`) REFERENCES `estado_pagos` (`idestadopago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_estados` FOREIGN KEY (`fk_idestado`) REFERENCES `estados` (`idestado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_sucursales` FOREIGN KEY (`fk_idsucursal`) REFERENCES `sucursales` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.pedidos: ~29 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` (`idpedido`, `total`, `fk_idsucursal`, `fk_idcliente`, `fk_idestado`, `fk_idestadopago`, `fecha`, `comentarios`) VALUES
	(45, 500.00, 4, 110, 1, 3, '2021-09-03 18:00:04', NULL),
	(46, 400.00, 5, 110, 1, 3, '2021-09-03 18:19:28', 'Sin comentarios'),
	(47, 499.00, 5, 107, 1, 3, '2021-09-04 13:07:23', 'Sin comentarios'),
	(48, 499.00, 1, 107, 1, 3, '2021-09-04 13:09:27', 'Sin comentarios'),
	(49, 499.00, 4, 107, 1, 3, '2021-09-04 13:14:43', 'Sin comentarios'),
	(50, 400.00, 8, 107, 1, 3, '2021-09-04 14:29:22', 'Sin bacon'),
	(51, 50085.00, 1, 107, 1, 3, '2021-09-04 15:00:32', 'Sin comentarios'),
	(52, 2400.00, 8, 107, 1, 3, '2021-09-04 15:18:24', 'Sin comentarios'),
	(53, 5280.00, 5, 107, 1, 3, '2021-09-04 15:30:32', 'Incluir servilletas'),
	(54, 3560.00, 4, 107, 1, 3, '2021-09-06 12:17:46', 'Agregar ketchup'),
	(55, 1400.00, 4, 107, 1, 3, '2021-09-06 14:56:43', 'Sin comentarios'),
	(56, 1380.00, 1, 114, 1, 3, '2021-09-06 15:55:42', 'Sin comentarios'),
	(57, 930.00, 1, 114, 1, 3, '2021-09-06 00:00:00', ''),
	(58, 3100.00, 1, 115, 3, 1, '2021-09-06 00:00:00', ''),
	(59, 0.00, 1, 115, 1, 3, '2021-09-06 19:10:52', 'Sin comentarios'),
	(60, 0.00, 1, 115, 1, 3, '2021-09-06 19:11:13', 'Sin comentarios'),
	(61, 2100.00, 1, 115, 1, 3, '2021-09-06 19:14:33', 'Sin comentarios'),
	(62, 0.00, 1, 115, 1, 3, '2021-09-06 19:14:55', 'Sin comentarios'),
	(63, 0.00, 1, 115, 1, 3, '2021-09-06 19:15:46', 'Sin comentarios'),
	(64, 0.00, 1, 115, 1, 3, '2021-09-06 19:19:58', 'Sin comentarios'),
	(65, 0.00, 1, 115, 1, 3, '2021-09-06 19:20:29', 'Sin comentarios'),
	(66, 0.00, 1, 115, 1, 3, '2021-09-06 19:20:40', 'Sin comentarios'),
	(67, 0.00, 1, 115, 1, 3, '2021-09-06 19:21:14', 'Sin comentarios'),
	(68, 0.00, 1, 115, 1, 3, '2021-09-06 19:21:45', 'Sin comentarios'),
	(69, 0.00, 1, 115, 1, 3, '2021-09-06 19:25:37', 'Sin comentarios'),
	(70, 0.00, 1, 115, 1, 3, '2021-09-06 19:27:15', 'Sin comentarios'),
	(71, 0.00, 1, 115, 1, 3, '2021-09-06 19:29:24', 'Sin comentarios'),
	(72, 0.00, 1, 115, 1, 3, '2021-09-06 19:30:22', 'Sin comentarios'),
	(73, 0.00, 1, 115, 1, 1, '2021-09-06 19:30:35', 'Sin comentarios');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.pedido_detalles
CREATE TABLE IF NOT EXISTS `pedido_detalles` (
  `iddetalle` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_idpedido` int(11) unsigned NOT NULL,
  `fk_idproducto` int(11) unsigned NOT NULL,
  `precio_unitario` smallint(6) DEFAULT NULL,
  `cantidad` smallint(6) DEFAULT NULL,
  `subtotal` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`iddetalle`),
  KEY `FK_pedido_detalles_productos` (`fk_idproducto`),
  KEY `FK_pedido_detalles_pedidos` (`fk_idpedido`),
  CONSTRAINT `FK_pedido_detalles_pedidos` FOREIGN KEY (`fk_idpedido`) REFERENCES `pedidos` (`idpedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedido_detalles_productos` FOREIGN KEY (`fk_idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.pedido_detalles: ~32 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_detalles` DISABLE KEYS */;
INSERT INTO `pedido_detalles` (`iddetalle`, `fk_idpedido`, `fk_idproducto`, `precio_unitario`, `cantidad`, `subtotal`) VALUES
	(2, 45, 4, 890, 4, 3560),
	(3, 45, 3, 680, 2, 1360),
	(4, 45, 2, 680, 3, 2040),
	(5, 46, 2, 680, 4, 2720),
	(6, 46, 5, 250, 3, 750),
	(7, 46, 8, 320, 2, 640),
	(8, 47, 2, 680, 3, 2040),
	(9, 47, 5, 250, 2, 500),
	(10, 48, 2, 680, 3, 2040),
	(11, 49, 7, 100, 7, 700),
	(12, 50, 1, 700, 3, 2100),
	(13, 50, 2, 680, 1, 680),
	(14, 51, 1, 700, 1, 700),
	(15, 51, 5, 250, 3, 750),
	(16, 51, 8, 320, 2, 640),
	(17, 52, 1, 700, 3, 2100),
	(18, 52, 7, 100, 3, 300),
	(19, 53, 1, 700, 2, 1400),
	(20, 53, 2, 680, 1, 680),
	(21, 53, 7, 100, 2, 200),
	(22, 53, 8, 320, 5, 1600),
	(23, 53, 6, 350, 4, 1400),
	(24, 54, 4, 890, 4, 3560),
	(25, 55, 1, 700, 2, 1400),
	(26, 56, 1, 700, 1, 700),
	(27, 56, 2, 680, 1, 680),
	(28, 57, 5, 250, 1, 250),
	(29, 57, 2, 680, 1, 680),
	(30, 58, 3, 680, 3, 2040),
	(31, 58, 7, 100, 1, 100),
	(32, 58, 8, 320, 3, 960),
	(33, 61, 1, 700, 3, 2100);
/*!40000 ALTER TABLE `pedido_detalles` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.postulaciones
CREATE TABLE IF NOT EXISTS `postulaciones` (
  `idpostulacion` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `localidad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `documento` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `archivo_cv` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idpostulacion`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.postulaciones: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `postulaciones` DISABLE KEYS */;
INSERT INTO `postulaciones` (`idpostulacion`, `nombre`, `apellido`, `localidad`, `documento`, `correo`, `telefono`, `archivo_cv`) VALUES
	(10, 'Anaa', 'Valle', 'CABA', '87478541', 'ana@correo.com', '1125478541', ''),
	(14, 'Sofia', 'Rodriguez', 'CABA', '98874458', 'sofia@correo.com', '1125478965', NULL),
	(15, 'Maria', 'Perez', 'CABA', '95874746', 'maria@correo.com', '1125478541', '2021082507083343.pdf'),
	(16, 'agustin', 'dsfdf', 'capital federal', '54545', 'dsjdh@gkjg', '323232', NULL),
	(17, 'NELSON', 'TARCHE', 'Ciudad Autónoma de Buenos Aires', '', 'nelson.tarche@gmail.com', '01162423341', ''),
	(18, 'Pedro Goyena', 'Perez', 'Rio Ancho', '', 'sabrina@mail.com', '1154548795', NULL),
	(19, 'martin', 'Solano', 'General Campos', '41917715', 'luis@mail.com', '1125366258', NULL),
	(20, 'Macricio', 'Perez', 'Rio Ancho', '18665237', 'sabrina@mail.com', '122546846', NULL),
	(21, 'Macricio', 'Solano', 'Sagastume', '40990153', 'mlopez@mail.com', '122546846', 'upload_archivo/0vqHensDCD5ULjojLVQLt1xrShfMxp63yoXjqNZJ.docx'),
	(22, 'asg', 'ags', 'asg', '894', 'asdg@correo.com', '15648', 'upload_archivo/wZSdtsSgRR89uvjJoHilNkbeN6NtRusn3d7DYnX3.docx'),
	(23, 'Pedro', 'Solano', 'Rawson', '8479', 'ricardomatas@mail.es', '1125366258', 'upload_archivo/5ljyrsS1pccQtskYCUhVoCiVHK84hAHSo7mGnPiz.docx'),
	(24, 'Javier', 'Milei', 'CABA', '22348871', 'javi@mail.es', '1124875462', 'upload_archivo/R0OhZTYr68ErfcoicTGxURsQWvaZ01Livj8FEI1G.docx');
/*!40000 ALTER TABLE `postulaciones` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `idproducto` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_idtipoproducto` int(11) unsigned NOT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `fk_idtipoproducto` (`fk_idtipoproducto`),
  CONSTRAINT `FK_productos_tipo_productos` FOREIGN KEY (`fk_idtipoproducto`) REFERENCES `tipo_productos` (`idtipoproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.productos: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`idproducto`, `nombre`, `precio`, `descripcion`, `imagen`, `fk_idtipoproducto`) VALUES
	(1, 'Hamburguesa con bacon', 700.00, 'Hamburguesa 160 gr con bacon', '2021082507080813.jpg', 1),
	(2, 'Hamburguesa con Queso', 680.00, 'Hamburguesa 160 gr con queso', '2021083011082016.jpg', 1),
	(3, 'Hamburguesa Completa', 680.00, 'Hamburguesa 160 gr completa', '2021082507083513.jpg', 1),
	(4, 'Hamburguesa doble', 890.00, 'Hamburguesa doble 320gr con queso', '2021082507081919.jpg', 1),
	(5, 'Papas fritas', 250.00, 'Papas fritas naturales', '2021082507083620.jpg', 1),
	(6, 'Papas fritas Premium', 350.00, 'Papas con cheddar y bacon', '2021082507080721.jpg', 1),
	(7, 'Coca Cola', 100.00, 'Vaso de Coca Cola 500ml', '2021082712083805.jpg', 1),
	(8, 'Cerveza Patagonia', 320.00, 'Cerveza rubia Patagonia', '2021082507081623.jpg', 1),
	(9, 'Promocion 1 (HD+G+Papas)', 900.00, 'Hamburguesa Doble + Gaseosa 300ml + Papas', 'promo1.jpg', 2);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.promos
CREATE TABLE IF NOT EXISTS `promos` (
  `idpromo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idpromo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.promos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `promos` DISABLE KEYS */;
INSERT INTO `promos` (`idpromo`, `nombre`, `precio`, `descripcion`, `imagen`) VALUES
	(1, 'Promo 1', 500.00, 'Hamburguesa Doble + Gaseosa 300ml + Papas', 'promo1.jpg'),
	(2, 'Promo 2', 900.00, '2 Hamburguesas Dobles + 2 Papas + 2 Gaseosas 300ml', 'promo2.jpg'),
	(3, 'Promo 3', 600.00, 'Hamburguesa de Cerdo Completa + Papas + Gaseosa 30', 'promo3.jpg');
/*!40000 ALTER TABLE `promos` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sistema_areas
CREATE TABLE IF NOT EXISTS `sistema_areas` (
  `idarea` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ncarea` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descarea` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `activo` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idarea`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla burgers_042021.sistema_areas: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `sistema_areas` DISABLE KEYS */;
INSERT INTO `sistema_areas` (`idarea`, `ncarea`, `descarea`, `activo`) VALUES
	(1, 'SISTEMAS', 'Sistemas', 1);
/*!40000 ALTER TABLE `sistema_areas` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sistema_familias
CREATE TABLE IF NOT EXISTS `sistema_familias` (
  `idfamilia` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idfamilia`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla burgers_042021.sistema_familias: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `sistema_familias` DISABLE KEYS */;
INSERT INTO `sistema_familias` (`idfamilia`, `nombre`, `descripcion`) VALUES
	(1, 'Administrador total', 'Administrador total'),
	(2, 'Cliente', 'Cliente'),
	(3, 'Administrador de la Empresa', 'Administrador de la Empresa'),
	(4, 'Administrativo', 'Administrador Parcial'),
	(5, 'Usuario', 'Usuario'),
	(9, 'Administrador', 'administrador total'),
	(10, 'admin', 'sdasd');
/*!40000 ALTER TABLE `sistema_familias` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sistema_menues
CREATE TABLE IF NOT EXISTS `sistema_menues` (
  `idmenu` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(250) COLLATE utf8_spanish_ci DEFAULT '',
  `orden` int(11) DEFAULT '0',
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `id_padre` int(11) DEFAULT '0',
  `fk_idpatente` int(11) DEFAULT NULL,
  `css` varchar(255) COLLATE utf8_spanish_ci DEFAULT '0',
  `activo` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idmenu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla burgers_042021.sistema_menues: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `sistema_menues` DISABLE KEYS */;
INSERT INTO `sistema_menues` (`idmenu`, `url`, `orden`, `nombre`, `id_padre`, `fk_idpatente`, `css`, `activo`) VALUES
	(7, '', 100, 'Sistema', 0, NULL, 'fa fa-lock fa-fw', 1),
	(85, '/admin/sistema/menu', 1, 'Menú', 7, NULL, '', 1),
	(137, '/admin/patentes', 2, 'Patentes', 7, NULL, '', 1),
	(140, '/admin/cliente/nuevo', 2, 'Nuevo cliente', 219, NULL, '', 1),
	(158, '/admin', -1, 'Inicio', 0, NULL, 'fas fa-home', 1),
	(169, '/admin/clientes', 0, 'Listado de clientes', 219, NULL, '', 1),
	(198, '/admin/productos', 1, 'Listado de Productos', 200, NULL, 'fas fa-hamburger', 1),
	(200, '', 2, 'Productos', 0, NULL, 'fas fa-hamburger', 1),
	(201, '/admin/producto/nuevo', 2, 'Nuevo producto', 200, NULL, 'fas fa-hamburger', 1),
	(202, NULL, 3, 'Pedidos', 0, NULL, 'fas fa-shopping-cart', 1),
	(204, NULL, 4, 'Postulaciones', 0, NULL, 'fas fa-user-plus', 1),
	(206, '/admin/postulaciones', 1, 'Listado de postulaciones', 204, NULL, NULL, 1),
	(209, '/admin/sucursales', 5, 'Listado de Sucursales', 218, NULL, '', 1),
	(211, '/admin/pedido/nuevo', 2, 'Nuevo pedido', 202, NULL, '', 1),
	(215, '/admin/sucursal/nuevo', 1, 'Nueva Sucursal', 218, NULL, '', 1),
	(216, '/admin/pedidos', 1, 'Listado de Pedidos', 202, NULL, '', 1),
	(218, '', 5, 'Sucursales', NULL, NULL, 'fas fa-store', 1),
	(219, NULL, 1, 'Clientes', NULL, NULL, 'fas fa-users', 1),
	(220, NULL, 7, 'Sponsors', NULL, NULL, 'far fa-star', 1),
	(221, '/admin/sponsors', 0, 'Listado de Sponsors', 220, NULL, '', 1),
	(222, '/admin/sponsors/nuevo', 2, 'Nuevo sponsor', 220, NULL, '', 1);
/*!40000 ALTER TABLE `sistema_menues` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sistema_menu_area
CREATE TABLE IF NOT EXISTS `sistema_menu_area` (
  `fk_idmenu` int(11) unsigned NOT NULL,
  `fk_idarea` int(11) unsigned NOT NULL,
  KEY `fk_idmenu` (`fk_idmenu`) USING BTREE,
  KEY `fk_idarea` (`fk_idarea`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla burgers_042021.sistema_menu_area: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `sistema_menu_area` DISABLE KEYS */;
INSERT INTO `sistema_menu_area` (`fk_idmenu`, `fk_idarea`) VALUES
	(85, 1),
	(137, 1),
	(147, 1),
	(157, 1),
	(7, 1),
	(158, 1),
	(177, 1),
	(200, 1),
	(198, 1),
	(201, 1),
	(202, 1),
	(203, 1),
	(204, 1),
	(206, 1),
	(211, 1),
	(216, 1),
	(218, 1),
	(215, 1),
	(209, 1),
	(219, 1),
	(169, 1),
	(140, 1),
	(220, 1),
	(222, 1),
	(221, 1);
/*!40000 ALTER TABLE `sistema_menu_area` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sistema_patentes
CREATE TABLE IF NOT EXISTS `sistema_patentes` (
  `idpatente` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `submodulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `modulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `log_operacion` smallint(6) NOT NULL DEFAULT '0',
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idpatente`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla burgers_042021.sistema_patentes: ~70 rows (aproximadamente)
/*!40000 ALTER TABLE `sistema_patentes` DISABLE KEYS */;
INSERT INTO `sistema_patentes` (`idpatente`, `tipo`, `submodulo`, `nombre`, `modulo`, `log_operacion`, `descripcion`) VALUES
	(1, 'CONSULTA', 'Permisos', 'PERMISOSCONSULTA', 'Sistema', 1, 'Consulta de permisos'),
	(2, 'ALTA', 'Permisos', 'PERMISOSALTA', 'Sistema', 1, 'Alta de familia'),
	(3, 'EDITAR', 'Permisos', 'PERMISOSMODIFICACION', 'Sistema', 1, 'Modificación de familia de permisos'),
	(4, 'BAJA', 'Permisos', 'PERMISOSBAJA', 'Sistema', 1, 'Baja de familia de permisos'),
	(5, 'BAJA', 'Grupo de usuarios', 'GRUPOBAJA', 'Sistema', 1, 'Baja de grupo de usuarios'),
	(6, 'CONSULTA', 'Grupo de usuarios', 'GRUPOCONSULTA', 'Sistema', 1, 'Consulta de grupo de usuarios'),
	(7, 'EDITAR', 'Grupo de usuarios', 'GRUPOMODIFICACION', 'Sistema', 1, 'Modificación de grupos de usuarios'),
	(8, 'ALTA', 'Grupo de usuarios', 'GRUPOALTA', 'Sistema', 1, 'Alta de grupos de usuarios'),
	(9, 'EDITAR', 'Usuario', 'USUARIOASIGNARGRUPO', 'Sistema', 1, 'Agrega grupos a un usuario'),
	(10, 'ALTA', 'Usuario', 'USUARIOALTA', 'Sistema', 1, 'Nuevo usuario'),
	(11, 'BAJA', 'Usuario', 'USUARIOELIMINAR', 'Sistema', 1, 'Eliminar usuario'),
	(12, 'EDITAR', 'Usuario', 'USUARIOMODIFICAR', 'Sistema', 1, 'Modificar usuario'),
	(13, 'EDITAR', 'Usuario', 'USUARIOAGREGARPERMISO', 'Sistema', 1, 'Agrega permisos dentro de la pantalla del usuario'),
	(14, 'BAJA', 'Usuario', 'USUARIOELIMINARPERMISO', 'Sistema', 1, 'Eliminar un permiso del usuario'),
	(15, 'CONSULTA', 'Usuario', 'USUARIOGRUPOGRILLA', 'Sistema', 1, 'Muestra la grilla de grupos de un usuario'),
	(16, 'EDITAR', 'Usuario', 'USUARIOGRUPOAGREGAR', 'Sistema', 1, 'Agrega un grupo para el usuario'),
	(17, 'BAJA', 'Usuario', 'USUARIOGRUPOELIMINAR', 'Sistema', 1, 'Elimina un grupo del usuario'),
	(18, 'EDITAR', 'Permisos', 'PERMISOSAGREGARPATENTE', 'Sistema', 1, 'Agrega patente a un permiso'),
	(19, 'BAJA', 'Permisos', 'PERMISOSELIMINARPATENTE', 'Sistema', 1, 'Elimina patente a un permiso'),
	(20, 'CONSULTA', 'Usuaurio', 'USUARIOCONSULTA', 'Sistema', 1, 'Consulta la lista de usuarios'),
	(30, 'EDITAR', 'Persona', 'PERSONAMODIFICACION', 'Panel de control ', 1, 'Modificar  una persona'),
	(31, 'ALTA', 'Persona', 'PERSONAALTA', 'Panel de control', 1, 'Agrega una nueva persona'),
	(32, 'CONSULTA', 'Persona', 'PERSONACONSULTA', 'Panel de control', 1, 'Listado de Personas'),
	(70, 'CONSULTA', 'Menu', 'MENUCONSULTA', 'Sistema', 1, 'Listado del menu del sistema'),
	(71, 'ALTA', 'Menu', 'MENUALTA', 'Sistema', 1, 'Agrega un nuevo elemento de menu'),
	(72, 'EDITAR', 'Menu', 'MENUMODIFICACION', 'Sistema', 1, 'Modifica un elemento de menu'),
	(73, 'BAJA', 'Menu', 'MENUELIMINAR', 'SIstema', 1, 'Elimina un elemento de menu'),
	(74, 'CONSULTA', 'Sistema', 'SIMULARALUMNO', 'Sistema', 1, 'Permite al administrador simular el login como alu'),
	(77, 'EDITAR', 'Tipo de cliente', 'TIPOCLIENTEMODIFICACIONES', 'Cliente', 1, 'Modificaciones tipo cliente'),
	(78, 'CONSULTA', 'Tipo de cliente', 'TIPOCLIENTECONSULTA', 'Cliente', 1, 'Consulta tipo de cliente'),
	(79, 'ALTA', 'Tipo de cliente', 'TIPOCLIENTEALTA', 'Cliente', 1, 'Altas de tipos de clientes'),
	(82, 'BAJA', 'Tipo de cliente', 'BAJATIPODECLIENTE', 'Cliente', 1, 'Bajas de tipos de clientes'),
	(91, 'ALTA', 'Nuevo cliente', 'CLIENTEALTA', 'Clientes', 0, 'Alta de nuevos clientes'),
	(92, 'EDITAR', 'Nuevo cliente', 'CLIENTEEDITAR', 'Clientes', 0, 'Editar clientes'),
	(93, 'BAJA', 'Nuevo cliente', 'CLIENTEELIMINAR', 'Clientes', 0, 'Eliminar clientes'),
	(94, 'CONSULTA', 'Listado de Clientes', 'CLIENTECONSULTA', 'Clientes', 0, 'Consulta de listado de clientes'),
	(99, 'ALTA', 'Productos', 'PRODUCTOSALTA', 'Productos', 1, 'Alta de productos'),
	(100, 'BAJA', 'Productos', 'PRODUCTOELIMINAR', 'Productos', 1, 'Baja de productos'),
	(101, 'EDITAR', 'Productos', 'PRODUCTOEDITAR', 'Productos', 1, 'Editar productos'),
	(102, 'CONSULTA', 'Productos', 'PRODUCTOCONSULTA', 'Productos', 1, 'Consulta de productos'),
	(143, 'CONSULTA', 'sucursales', 'SUCURSALCONSULTA', 'sucursales', 0, 'Consulta de sucursales'),
	(144, 'ALTA', 'sucursales', 'SUCURSALALTA', 'sucursales', 0, 'Alta de sucursales'),
	(145, 'BAJA', 'sucursales ', 'SUCURSALBAJA', 'sucursales', 0, 'baja de sucursales'),
	(148, 'EDITAR', 'sucursales', 'SUCURSALEDITAR', 'sucursales', 1, 'Modificacion de sucursal'),
	(153, 'CONSULTA', 'Inscripcion', 'INSCRIPCIONCONSULTA', 'Inscripcion', 1, 'Consulta de inscripciones'),
	(154, 'ALTA', 'Inscripcion', 'INSCRIPCIONALTA', 'Inscripcion', 1, 'Alta de inscripciones'),
	(155, 'EDITAR', 'Inscripcion', 'INSCRIPCIONMODIFICACION', 'Inscripcion', 1, 'Modificacion de inscripciones'),
	(158, 'BAJA', 'Permisos', 'INSCRIPCIONBAJA', 'Sistema', 1, 'Baja de inscripciones'),
	(176, 'ALTA', 'Patentes', 'PATENTESALTA', 'Patentes', 0, 'Registra nuevas patentes'),
	(177, 'BAJA', 'Patentes', 'PATENTESBAJA', 'Patentes', 0, 'Da de baja patentes'),
	(178, 'EDITAR', 'Patentes', 'PATENTESMODIFICACION', 'Patentes', 0, 'Modifica patentes existentes'),
	(179, 'CONSULTA', 'Patentes', 'PATENTESCONSULTA', 'Patentes', 0, 'Consulta patentes'),
	(181, 'CONSULTA', 'Pedido', 'PEDIDOCONSULTA', 'Pedido', 1, 'Permite listar los pedidos'),
	(184, 'Eliminar', 'Listar categorias', 'CATEGORIAELIMINAR', 'Categorias', 0, 'Elimina una categoria'),
	(185, 'CONSULTA', 'Listar consultas', 'CONSULTACONSULTA', 'Consultas', 1, 'Consultar las consultas'),
	(186, 'ALTA', 'Nueva consulta', 'CONSULTAALTA', 'Consultas', 1, 'Alta de categorias'),
	(187, 'BAJA', 'Listar consultas', 'CONSULTAELIMINAR', 'Consultas', 1, 'Elimina una consulta'),
	(188, 'EDITAR', 'Listar consultas', 'CONSULTAMODIFICACION', 'Consultas', 1, 'Modifica una consulta'),
	(209, 'ALTA', 'Patentes', 'PATENTEALTA', 'Patentes', 0, 'Permite ingresar una nueva patente'),
	(210, 'BAJA', 'sistema', 'CLIENTEELIMINAR', 'clientes', 0, 'Eliminar cliente'),
	(211, 'CONSULTA', 'Cliente', 'CLIENTECONSULTA', 'Cliente', 1, 'Accede al listado de clientes'),
	(212, 'BAJA', 'Cliente', 'CLIENTEBAJA', 'Cliente', 1, 'PERMITE ELIMINAR UN CLIENTE'),
	(214, 'ALTA', 'Pedido', 'PEDIDOALTA', 'Pedido', 1, 'permite ingresar un nuevo pedido'),
	(215, 'EDITAR', 'Pedido', 'PEDIDOEDITAR', 'Pedido', 1, 'permite editar un pedido existente'),
	(216, 'BAJA', 'Pedido', 'PEDIDOBAJA', 'Pedido', 1, 'permite eliminar un pedido'),
	(221, 'ALTA', 'Postulacion', 'POSTULANTEALTA', 'Postulacion', 1, 'permite agregar un nuevo postulante'),
	(222, 'CONSULTA', 'Postulacion', 'POSTULANTECONSULTA', 'Postulacion', 1, 'permite modificar un nuevo postulante'),
	(223, 'EDITAR', 'Postulacion', 'POSTULANTEEDITAR', 'Postulacion', 1, 'permite modificar un nuevo postulante'),
	(224, 'BAJA', 'Postulacion', 'POSTULANTEBAJA', 'Postulacion', 1, 'permite dar de baja un postulante'),
	(225, 'CONSULTA', 'Pedido', 'PEDIDOVER', 'Pedido', 1, 'Permite ver por pedido');
/*!40000 ALTER TABLE `sistema_patentes` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sistema_patente_familia
CREATE TABLE IF NOT EXISTS `sistema_patente_familia` (
  `fk_idpatente` int(11) unsigned NOT NULL,
  `fk_idfamilia` int(11) unsigned NOT NULL,
  KEY `fk_idpatente` (`fk_idpatente`) USING BTREE,
  KEY `fk_idfamilia` (`fk_idfamilia`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla burgers_042021.sistema_patente_familia: ~100 rows (aproximadamente)
/*!40000 ALTER TABLE `sistema_patente_familia` DISABLE KEYS */;
INSERT INTO `sistema_patente_familia` (`fk_idpatente`, `fk_idfamilia`) VALUES
	(10, 5),
	(12, 5),
	(10, 3),
	(12, 3),
	(128, 7),
	(129, 7),
	(130, 7),
	(131, 7),
	(10, 4),
	(11, 4),
	(12, 4),
	(20, 4),
	(1, 9),
	(2, 9),
	(3, 9),
	(4, 9),
	(5, 9),
	(6, 9),
	(7, 9),
	(8, 9),
	(9, 9),
	(10, 9),
	(11, 9),
	(12, 9),
	(13, 9),
	(14, 9),
	(15, 9),
	(16, 9),
	(17, 9),
	(18, 9),
	(19, 9),
	(20, 9),
	(176, 9),
	(177, 9),
	(178, 9),
	(179, 9),
	(209, 9),
	(18, 10),
	(19, 10),
	(176, 10),
	(177, 10),
	(178, 10),
	(179, 10),
	(209, 10),
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(70, 1),
	(71, 1),
	(72, 1),
	(73, 1),
	(91, 1),
	(92, 1),
	(93, 1),
	(94, 1),
	(99, 1),
	(100, 1),
	(101, 1),
	(102, 1),
	(143, 1),
	(144, 1),
	(145, 1),
	(148, 1),
	(153, 1),
	(154, 1),
	(155, 1),
	(158, 1),
	(176, 1),
	(177, 1),
	(178, 1),
	(179, 1),
	(181, 1),
	(185, 1),
	(209, 1),
	(210, 1),
	(211, 1),
	(214, 1),
	(215, 1),
	(216, 1),
	(221, 1),
	(222, 1),
	(223, 1),
	(224, 1),
	(225, 1);
/*!40000 ALTER TABLE `sistema_patente_familia` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sistema_usuarios
CREATE TABLE IF NOT EXISTS `sistema_usuarios` (
  `idusuario` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `mail` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `ultimo_ingreso` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'current_timestamp()',
  `root` smallint(6) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `cantidad_bloqueo` int(11) DEFAULT NULL,
  `areapredeterminada` smallint(6) DEFAULT NULL,
  `activo` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`idusuario`) USING BTREE,
  UNIQUE KEY `usuario` (`usuario`) USING BTREE,
  UNIQUE KEY `email` (`mail`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla burgers_042021.sistema_usuarios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `sistema_usuarios` DISABLE KEYS */;
INSERT INTO `sistema_usuarios` (`idusuario`, `usuario`, `nombre`, `apellido`, `mail`, `clave`, `ultimo_ingreso`, `token`, `root`, `created_at`, `cantidad_bloqueo`, `areapredeterminada`, `activo`) VALUES
	(1, 'admin', 'Administrador', '', 'lalalejandrahc@gmail.com', '$2y$10$FeFXjlupKImULPF.aVRNueCALrpj55n.fotONLQ1QY3YvlYTelRP2', '2021-09-07 23:45:13', 'current_timestamp()', 1, '2019-09-17 16:05:57', 0, 1, 1),
	(2, 'cliente', 'Juan', 'Perez', 'juanperez@correo.com', '$2y$10$FeFXjlupKImULPF.aVRNueCALrpj55n.fotONLQ1QY3YvlYTelRP2', '2021-09-01 16:57:31', 'current_timestamp()', 0, '2021-09-01 16:57:14', 0, 1, 1),
	(47, '@Josefi', 'Josefina', 'Irala', 'josefinairala@gmail.com', '12345', '2021-09-01 16:57:48', 'current_timestamp()', 0, '2021-09-01 16:57:16', 0, 1, 1);
/*!40000 ALTER TABLE `sistema_usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sistema_usuario_familia
CREATE TABLE IF NOT EXISTS `sistema_usuario_familia` (
  `fk_idusuario` int(11) unsigned NOT NULL,
  `fk_idfamilia` int(11) unsigned NOT NULL,
  `fk_idarea` int(11) unsigned NOT NULL,
  KEY `fk_idusuario` (`fk_idusuario`) USING BTREE,
  KEY `fk_idfamilia` (`fk_idfamilia`) USING BTREE,
  KEY `fk_idarea` (`fk_idarea`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla burgers_042021.sistema_usuario_familia: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `sistema_usuario_familia` DISABLE KEYS */;
INSERT INTO `sistema_usuario_familia` (`fk_idusuario`, `fk_idfamilia`, `fk_idarea`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `sistema_usuario_familia` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sponsors
CREATE TABLE IF NOT EXISTS `sponsors` (
  `idsponsor` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_producto` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad_producto` int(11) NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `foto_producto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idsponsor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.sponsors: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
INSERT INTO `sponsors` (`idsponsor`, `nombre_empresa`, `nombre_producto`, `descripcion`, `cantidad_producto`, `telefono`, `email`, `foto_producto`) VALUES
	(8, 'Manaos', 'coca', 'bebida con azucar simil coca-cola', 4343, '4232-4878', 'manaos@gmail.com', '2021090601094200.jpg'),
	(10, 'Pepsi', 'bebidas', 'bebidas de varios sabores', 323232, '4789-5236', 'pepsi@gmail.com', '2021090601093601.jpg'),
	(11, 'Not Co', 'hamburguesas', 'hamburguesas veganas', 200, '4789-5555', 'notco@gmail.com', '2021090601091902.jpg'),
	(12, 'Berlina', 'cerveza artesanal', 'barriles por litro', 1000, '4789-7777', 'berlina@gmail.com', '2021090601094003.jpg'),
	(13, 'Mc Cain', 'papas fritas', 'bolsas de papas', 1000, '323232-555', 'mccain@gmail.com', '2021090607090046.jpg');
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.sucursales
CREATE TABLE IF NOT EXISTS `sucursales` (
  `idsucursal` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `telefono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idsucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.sucursales: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` (`idsucursal`, `direccion`, `nombre`, `telefono`) VALUES
	(1, 'Av. Álvarez Jonte 5250', 'Floresta', '+54 11-6632-8742'),
	(4, 'Av. Meliá 1532', 'Avellaneda', '+54 11-6632-8743'),
	(5, 'Tucuman 4982', 'Florida', '+54 11-2258-4115'),
	(8, 'Av. Pedro Goyena 1253', 'Pedro Goyena', '+54 11-5454-8795');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;

-- Volcando estructura para tabla burgers_042021.tipo_productos
CREATE TABLE IF NOT EXISTS `tipo_productos` (
  `idtipoproducto` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`idtipoproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla burgers_042021.tipo_productos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_productos` DISABLE KEYS */;
INSERT INTO `tipo_productos` (`idtipoproducto`, `nombre`) VALUES
	(1, 'Producto Individual'),
	(2, 'Promoción');
/*!40000 ALTER TABLE `tipo_productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
