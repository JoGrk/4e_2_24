-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: 4e_1_miejscow
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dom`
--

DROP TABLE IF EXISTS `dom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dom` (
  `NRTEL` varchar(9) DEFAULT NULL,
  `NRMIEJSCOW` int(1) DEFAULT NULL,
  `ADRES` varchar(14) DEFAULT NULL,
  `OPLATY` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dom`
--

LOCK TABLES `dom` WRITE;
/*!40000 ALTER TABLE `dom` DISABLE KEYS */;
INSERT INTO `dom` VALUES ('842-53-11',1,'Dworcowa 3/2','80'),('846-51-51',1,'Legnicka 2/5','50'),('842-56-74',2,'Wiejska 5 x','19,5'),('833-33-33',2,'Legnicka 12/4','22'),('844-44-44',1,'Szpakowa 2a/6','48'),('844-44-40',1,'Le?na 14','106'),('844-55-55',2,'Legnicka 11/2','78,6'),('844-55-66',2,'Krucza 6a/8','82'),('844-44-41',1,'Polna 2/21','65'),('855-55-55',2,'Jasna 4/5','49'),('842-53-10',1,'Dworcowa 4/8','38'),('846-56-47',1,'Legnicka 17/4','56,8'),('846-56-74',1,'Wiejska 12/2','113,7'),('847-56-74',1,'Gwark?w 4 x','29'),('357-68-68',2,'Podzamcze 6','82'),('845-33-33',3,'Polna 41/7','30'),('847-13-13',1,'Z?ota 31/2x','48'),('842-12-42',1,'Pawia 2/4','80,7'),('842-16-23',1,'Orla 7b/14','155,55'),('846-24-15',1,'Sokola 7/35','35'),('846-37-23',1,'Ptasia 9/10','56'),('846-37-26',1,'Wrzosowa 6','123'),('846-76-86',1,'Tuwima 4/4','74'),('847-29-57',1,'Ksi?cia 8/1','48'),('811-11-11',2,'Legnicka 18/4','27'),('814-51-35',1,'Zielona 54/12','45,3'),('823-53-53',5,'Cicha 5/5','103,4'),('844-44-42',1,'Bia?a 15/3','78'),('844-44-43',1,'Krakowska 17/6','42,3');
/*!40000 ALTER TABLE `dom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miejscow`
--

DROP TABLE IF EXISTS `miejscow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miejscow` (
  `NRMIEJSCOW` int(1) DEFAULT NULL,
  `NAZWA` varchar(9) DEFAULT NULL,
  `NRKIERUN` varchar(4) DEFAULT NULL,
  `SERWIS` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miejscow`
--

LOCK TABLES `miejscow` WRITE;
/*!40000 ALTER TABLE `miejscow` DISABLE KEYS */;
INSERT INTO `miejscow` VALUES (1,'Lubin','076','Dialog'),(2,'Legnica','076','Dialog'),(3,'Polkowice','076','TPSA'),(4,'G?og?w	07','TPSA',NULL),(5,'Wroclaw','071','Era'),(6,'Leszno','068','Era');
/*!40000 ALTER TABLE `miejscow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osoba`
--

DROP TABLE IF EXISTS `osoba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osoba` (
  `ID_OSOBY` int(2) DEFAULT NULL,
  `NRTEL` varchar(9) DEFAULT NULL,
  `NAZWISKO` varchar(12) DEFAULT NULL,
  `IMIE` varchar(9) DEFAULT NULL,
  `ROKUR` int(4) DEFAULT NULL,
  `CZY_GLOWNY` varchar(6) DEFAULT NULL,
  `SYMBZATR` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osoba`
--

LOCK TABLES `osoba` WRITE;
/*!40000 ALTER TABLE `osoba` DISABLE KEYS */;
INSERT INTO `osoba` VALUES (52,'811-11-11','Soda','Jan',1976,'PRAWDA','ZG'),(53,'811-11-11','Nowak','Ewa',1978,'FA?SZ','UM'),(54,'814-51-35','Babacki','Jan',1977,'FA?SZ','KG'),(55,'814-51-35','Babacka','Ewa',1952,'PRAWDA','UM'),(56,'823-53-53','Wodna','Anna',1963,'FA?SZ','US'),(57,'823-53-53','Wodny','Adam',1960,'PRAWDA','EL'),(58,'842-53-11','Morski','Edward',1970,'PRAWDA','KG'),(59,'844-55-55','Dabacki','Jan',1950,'PRAWDA','ZG'),(60,'844-55-55','Dabacki','Adam',1979,'FA?SZ',''),(61,'844-55-55','Dabacka','Ewelina',1955,'FA?SZ','SK'),(62,'846-56-47','Fabacki','Stefan',1969,'PRAWDA','ZG'),(63,'846-51-51','Habacki','Jan',1974,'PRAWDA','ZG'),(1,'844-44-40','Nowak','Grzegorz',1957,'PRAWDA','EL'),(2,'844-55-66','Kowalska','Ewa',1962,'FA?SZ','KG'),(3,'842-53-10','Cabacki','?ukasz',1973,'FA?SZ','KG'),(4,'846-56-74','Cyga','Maria',1970,'FA?SZ','KG'),(5,'845-33-33','Osi?ski','Stefan',1943,'FA?SZ','KG'),(6,'847-29-57','Bobrek','Tomasz',1978,'FA?SZ','KG'),(7,'833-33-33','Brz?czyszczy','Grze?',1974,'FA?SZ','SK'),(8,'844-55-66','Kowalski','Jan',1957,'PRAWDA','SK'),(9,'844-44-44','Kowalska','Janina',1966,'FA?SZ','SK'),(10,'846-76-86','Waryniak','Agnieszka',1980,'FA?SZ','UM'),(11,'846-76-86','Waryniak','Ewa',1970,'FA?SZ','UM'),(12,'847-29-57','Bobrek','Ewelina',1969,'FA?SZ','UM'),(13,'855-55-55','Nowak','Pawe?',1976,'FA?SZ','UM'),(14,'846-76-86','Waryniak','Teresa',1979,'FA?SZ','UM'),(15,'842-16-23','God?owski','Kazimierz',1975,'PRAWDA','UP'),(16,'846-24-15','Kazimierczak','Adam',1978,'FA?SZ','UR'),(17,'855-55-55','Nowak','Ewa',1948,'FA?SZ','US'),(18,'844-44-42','Kowalski','Adam',1977,'FA?SZ','ZG'),(19,'844-44-43','Nowak','Andrzej',1944,'PRAWDA','ZG'),(20,'846-37-26','Obajowski','Jan',1955,'FA?SZ','ZG'),(21,'855-55-55','Nowak','Karolina',1978,'FA?SZ','ZG'),(22,'846-56-74','Cyga','Piotr',1964,'PRAWDA','ZG'),(23,'357-68-68','Kwa?ny','Sta?',1967,'PRAWDA','ZG'),(24,'844-44-41','Konon','Adam',1988,'FA?SZ',''),(25,'844-44-44','Kowalska','Anna',1991,'FA?SZ',''),(26,'844-44-44','Kowalski','Filip',1989,'FA?SZ',''),(27,'844-44-43','Nowak','Franek',1988,'FA?SZ',''),(28,'844-55-66','Kowalski','Henryk',1986,'FA?SZ',''),(29,'833-33-33','Brz?czyszczy','Janusz',1970,'PRAWDA',''),(30,'844-44-41','Konon','J?zef',1989,'FA?SZ',''),(31,'844-44-42','Kowalski','Tadeusz',1990,'FA?SZ',''),(32,'846-56-74','Cyga','Leon',1995,'FA?SZ',''),(33,'844-44-40','Nowak','Lidia',1985,'FA?SZ',''),(34,'844-44-40','Nowak','Ludwik',1985,'FA?SZ',''),(35,'842-53-10','Cabacki','Marek',1989,'FA?SZ',''),(36,'846-56-74','Cyga','Marek',1982,'FA?SZ',''),(37,'844-55-66','Kowalski','Stefan',1991,'FA?SZ',''),(38,'846-37-26','Obajowski','Wojciech',1978,'FA?SZ',''),(39,'847-29-57','Bobrek','Adam',1964,'PRAWDA','EL'),(40,'846-76-86','Waryniak','J?zef',1958,'PRAWDA','EL'),(41,'844-44-41','Konon','Stefan',1967,'PRAWDA','EL'),(42,'844-44-40','Nowak','Katarzyna',1960,'FA?SZ','KG'),(43,'844-55-66','Kowalski','Tadeusz',1960,'FA?SZ','KG'),(44,'844-44-44','Kowalski','Jan',1965,'PRAWDA','SK'),(45,'855-55-55','Nowak','Benek',1945,'PRAWDA','UM'),(46,'844-44-43','Nowak','Ewa',1966,'FA?SZ','UM'),(47,'842-12-42','Soko?owski','Grzegorz',1978,'FA?SZ','UM'),(48,'846-37-23','Anacki','Kaziu',1965,'FA?SZ','US'),(49,'844-44-42','Kowalski','Edmund',1966,'PRAWDA','ZG'),(50,'846-56-74','Cyga','?ukasz',1969,'FA?SZ','ZG'),(51,'842-53-10','Cabacki','Piotr',1965,'PRAWDA','');
/*!40000 ALTER TABLE `osoba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `praca`
--

DROP TABLE IF EXISTS `praca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `praca` (
  `SYMBZATR` varchar(2) DEFAULT NULL,
  `TYTUL` varchar(14) DEFAULT NULL,
  `ZAWOD` varchar(11) DEFAULT NULL,
  `SYMB_ST` varchar(3) DEFAULT NULL,
  `NULL` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `praca`
--

LOCK TABLES `praca` WRITE;
/*!40000 ALTER TABLE `praca` DISABLE KEYS */;
INSERT INTO `praca` VALUES ('UM','Urzad Miasta','Ksiegowosc','bur',''),('US','Urzad Skarbowy','Finanse','',NULL),('UP','Urzad Pracy','Portier','',NULL),('UR','Urzad Rejonowy','Wojsko','gen',NULL),('ZG','Zak?ady G?rnic','Dolnik','szt',NULL),('KG','KGHM','Dyrektor','mgr',NULL),('N','nie pracuje','','',NULL),('EL','elektrownia','Konstruktor','in?',NULL),('SK','sklep','Sprzedawca','',NULL);
/*!40000 ALTER TABLE `praca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-01 10:05:47
