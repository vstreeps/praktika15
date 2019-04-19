-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.1.32-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных pr
CREATE DATABASE IF NOT EXISTS `pr` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pr`;

-- Дамп структуры для таблица pr.uchenik
CREATE TABLE IF NOT EXISTS `uchenik` (
  `id Пропуска` int(11) DEFAULT NULL,
  `Фамилия` varchar(50) DEFAULT NULL,
  `Имя` varchar(50) DEFAULT NULL,
  `Год рождения` date DEFAULT NULL,
  `Номер договора` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы pr.uchenik: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `uchenik` DISABLE KEYS */;
INSERT INTO `uchenik` (`id Пропуска`, `Фамилия`, `Имя`, `Год рождения`, `Номер договора`) VALUES
	(2, 'Иванов', 'Денис', '2001-08-20', 185235421),
	(1, 'Иванов', 'Иван', '2003-04-17', 179523510),
	(3, 'Сидоров', 'Николай', '2004-01-12', 174963789),
	(4, 'Петров', 'Дмитрий', '2003-02-27', 189635148),
	(5, 'Иванова', 'Дарья', '2005-07-21', 185478123),
	(6, 'Булдаков', 'Артём', '2004-01-05', 189658985);
/*!40000 ALTER TABLE `uchenik` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
