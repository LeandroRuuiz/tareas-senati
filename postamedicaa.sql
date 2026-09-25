-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.4.3 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla postamedicaa.administrador
CREATE TABLE IF NOT EXISTS `administrador` (
  `idadmin` int NOT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `clave` char(5) DEFAULT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla postamedicaa.administrador: ~1 rows (aproximadamente)
INSERT INTO `administrador` (`idadmin`, `apellido`, `nombres`, `correo`, `clave`) VALUES
	(1, 'perez', 'luis', 'luis@senati.pe', '12345');

-- Volcando estructura para tabla postamedicaa.cita
CREATE TABLE IF NOT EXISTS `cita` (
  `numero` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  `hora` varchar(20) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `idespe` char(5) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `dni` (`dni`),
  KEY `idespe` (`idespe`),
  CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `paciente` (`dni`),
  CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`dni`) REFERENCES `paciente` (`dni`),
  CONSTRAINT `cita_ibfk_3` FOREIGN KEY (`dni`) REFERENCES `paciente` (`dni`),
  CONSTRAINT `cita_ibfk_4` FOREIGN KEY (`dni`) REFERENCES `paciente` (`dni`),
  CONSTRAINT `cita_ibfk_5` FOREIGN KEY (`idespe`) REFERENCES `especialidad` (`idespe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla postamedicaa.cita: ~1 rows (aproximadamente)
INSERT INTO `cita` (`numero`, `fecha`, `turno`, `hora`, `dni`, `idespe`) VALUES
	(1, '2026-09-25', 'MAÑANA', '8:00 AM', '12345678', 'E0001');

-- Volcando estructura para tabla postamedicaa.especialidad
CREATE TABLE IF NOT EXISTS `especialidad` (
  `idespe` char(5) NOT NULL,
  `nombre_espe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idespe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla postamedicaa.especialidad: ~1 rows (aproximadamente)
INSERT INTO `especialidad` (`idespe`, `nombre_espe`) VALUES
	('E0001', 'ONCOLOGIA');

-- Volcando estructura para tabla postamedicaa.paciente
CREATE TABLE IF NOT EXISTS `paciente` (
  `dni` char(8) NOT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `nombres` varchar(20) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla postamedicaa.paciente: ~1 rows (aproximadamente)
INSERT INTO `paciente` (`dni`, `apellidos`, `nombres`, `telefono`) VALUES
	('12345678', 'RAMOS MENDOZA', 'LUIS', '993455109');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
