-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lugares_en_el_mundo
DROP DATABASE IF EXISTS `lugares_en_el_mundo`;
CREATE DATABASE IF NOT EXISTS `lugares_en_el_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_en_el_mundo`;

-- Volcando estructura para tabla lugares_en_el_mundo.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.cities: ~11 rows (aproximadamente)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `nombre`) VALUES
	(1, 'medellín '),
	(2, 'yarumal'),
	(3, 'leticia'),
	(4, 'buenos aires '),
	(5, 'ciudad de mexico'),
	(6, 'chicago'),
	(7, 'el cairo'),
	(8, 'moscu'),
	(9, 'madrid'),
	(10, 'Uster'),
	(27, 'tokyo');

-- Volcando estructura para tabla lugares_en_el_mundo.cities_countries_continents
DROP TABLE IF EXISTS `cities_countries_continents`;
CREATE TABLE IF NOT EXISTS `cities_countries_continents` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `continente_id` tinyint(4) NOT NULL,
  `paises_id` tinyint(4) NOT NULL,
  `ciudades_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.cities_countries_continents: ~9 rows (aproximadamente)
DELETE FROM `cities_countries_continents`;
INSERT INTO `cities_countries_continents` (`id`, `continente_id`, `paises_id`, `ciudades_id`) VALUES
	(1, 1, 1, 1),
	(2, 1, 1, 2),
	(3, 1, 1, 3),
	(4, 1, 2, 4),
	(5, 1, 3, 5),
	(6, 2, 6, 7),
	(7, 3, 7, 8),
	(8, 3, 8, 9),
	(9, 3, 9, 10),
	(10, 4, 10, 27);

-- Volcando estructura para tabla lugares_en_el_mundo.continents
DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.continents: ~4 rows (aproximadamente)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `nombre`) VALUES
	(1, 'america'),
	(2, 'africa'),
	(3, 'europa'),
	(4, 'asia'),
	(5, 'Oceanía');

-- Volcando estructura para tabla lugares_en_el_mundo.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.countries: ~9 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(1, 'colombia '),
	(2, 'argentina'),
	(3, 'mexico '),
	(5, 'estados unidos'),
	(6, 'egipto'),
	(7, 'rusia '),
	(8, 'españa'),
	(9, 'suiza'),
	(10, 'japon');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
