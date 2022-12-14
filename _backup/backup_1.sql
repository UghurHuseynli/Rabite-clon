-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: rabite
-- ------------------------------------------------------
-- Server version	5.7.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Campaigns`
--

DROP TABLE IF EXISTS `Campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `more_url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_category_card` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaigns`
--

LOCK TABLES `Campaigns` WRITE;
/*!40000 ALTER TABLE `Campaigns` DISABLE KEYS */;
INSERT INTO `Campaigns` VALUES (1,'banner.webp','https://www.rabitabank.com/bahar-kampaniyasi','Na─ƒd pul krediti ├╝zr╔Ö kampaniya','Ferdi','kredit'),(2,'lombard_kampaniya.webp','https://www.rabitabank.com/lombard-krediti-uzre-kampaniya','Lombard krediti ├╝zr╔Ö Kampaniya','Ferdi','kredit'),(3,'esas.webp','https://www.rabitabank.com/faizsiz-avans','Faizsiz Avans','Ferdi','kart');
/*!40000 ALTER TABLE `Campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_currency`
--

DROP TABLE IF EXISTS `Card_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_currency`
--

LOCK TABLES `Card_currency` WRITE;
/*!40000 ALTER TABLE `Card_currency` DISABLE KEYS */;
INSERT INTO `Card_currency` VALUES (1,'AZN'),(2,'USD'),(3,'EURO');
/*!40000 ALTER TABLE `Card_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_name`
--

DROP TABLE IF EXISTS `Card_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_name`
--

LOCK TABLES `Card_name` WRITE;
/*!40000 ALTER TABLE `Card_name` DISABLE KEYS */;
INSERT INTO `Card_name` VALUES (1,'Kartmane Debet');
/*!40000 ALTER TABLE `Card_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_offer`
--

DROP TABLE IF EXISTS `Card_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card_use_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card_office` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `front_img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `back_img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_offer`
--

LOCK TABLES `Card_offer` WRITE;
/*!40000 ALTER TABLE `Card_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Card_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_office`
--

DROP TABLE IF EXISTS `Card_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_office` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_office`
--

LOCK TABLES `Card_office` WRITE;
/*!40000 ALTER TABLE `Card_office` DISABLE KEYS */;
INSERT INTO `Card_office` VALUES (1,'Ba┼ƒ Ofis (Piramida plazan─▒n 1-ci m╔Ört╔Öb╔Ösi)'),(2,'N╔Ösimi filial─▒ (Heyd╔Ör ╞Åliyev saray─▒n─▒n yan─▒)'),(3,'Buta filial─▒ (Amerika s╔Öfirliyinin yan─▒)'),(4,'Kaspian filial─▒ (Kaspian plazan─▒n 1-ci m╔Ört╔Öb╔Ösi)'),(5,'Masall─▒ filial─▒'),(6,'Qarada─ƒ filial─▒'),(7,'A─ƒsu filial─▒'),(8,'N╔Örimanov filial─▒ (Funda klinikas─▒n─▒n yan─▒)'),(9,'X╔Ötai filial─▒ (D╔Ömir├ºi plazan─▒n 1-ci m╔Ört╔Öb╔Ösi)'),(10,'A─ƒcab╔Ödi filial─▒'),(11,'┼₧irvan filial─▒'),(12,'┼₧╔Ömkir filial─▒'),(13,'M╔Örk╔Öz filial─▒ (─░ran s╔Öfirliyinin yan─▒)'),(14,'Xa├ºmaz filial─▒'),(15,'Qusar filial─▒'),(16,'S╔Öbail filial─▒ (3-c├╝ mkr dair╔Ösinin yan─▒)'),(17,'┼₧amax─▒ filial─▒'),(18,'G╔Önc╔Ö filial─▒'),(19,'Sahil filial─▒ (N╔Örimanov m-nun yan─▒)'),(20,'┼₧╔Öki filial─▒'),(21,'Quba filial─▒'),(22,'Quba filial─▒'),(23,'K├╝rd╔Ömir filial─▒'),(24,'Nizami filial─▒ (Bak─▒ kinoteatr─▒n─▒n yan─▒)'),(25,'L╔Önk╔Öran filial─▒'),(26,'Sumqay─▒t filial─▒'),(27,'Yasamal filial─▒ (Davin├ºi klinikas─▒n─▒n yan─▒)'),(28,'Nax├º─▒van ┼ƒ├╢b╔Ösi');
/*!40000 ALTER TABLE `Card_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_type`
--

DROP TABLE IF EXISTS `Card_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_type`
--

LOCK TABLES `Card_type` WRITE;
/*!40000 ALTER TABLE `Card_type` DISABLE KEYS */;
INSERT INTO `Card_type` VALUES (1,'Mastercard'),(2,'Visa');
/*!40000 ALTER TABLE `Card_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_use_time`
--

DROP TABLE IF EXISTS `Card_use_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_use_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_use_time`
--

LOCK TABLES `Card_use_time` WRITE;
/*!40000 ALTER TABLE `Card_use_time` DISABLE KEYS */;
INSERT INTO `Card_use_time` VALUES (1,'5 il');
/*!40000 ALTER TABLE `Card_use_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Credit_offer`
--

DROP TABLE IF EXISTS `Credit_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Credit_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `money` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `interest` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Credit_offer`
--

LOCK TABLES `Credit_offer` WRITE;
/*!40000 ALTER TABLE `Credit_offer` DISABLE KEYS */;
INSERT INTO `Credit_offer` VALUES (4,'36','300','30','windwalker');
/*!40000 ALTER TABLE `Credit_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_conditions`
--

DROP TABLE IF EXISTS `D_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conditions_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditions_answer` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `d_conditions_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_conditions`
--

LOCK TABLES `D_conditions` WRITE;
/*!40000 ALTER TABLE `D_conditions` DISABLE KEYS */;
INSERT INTO `D_conditions` VALUES (1,'╞Åman╔Ötin Valyutas─▒','AZN/USD/EUR',1),(2,'╞Åman╔Ötin Minimal M╔Öbl╔Ö─ƒi','200 AZN - USD/ 500 EUR',1),(3,'╞Åman╔Ötin Maksimal M╔Öbl╔Ö─ƒi','Yoxdur',1),(4,'Faizl╔Örin ├ûd╔Önilm╔Ösi','Ayl─▒q, R├╝bl├╝k, M├╝dd╔Ötin Sonunda',1),(5,'╞Åman╔Ötin Art─▒r─▒lmas─▒','M├╝mk├╝n Deyil',1),(6,'╞Åman╔Ötin Valyutas─▒','AZN/USD',2),(7,'╞Åman╔Ötin Minimal M╔Öbl╔Ö─ƒi','100 AZN / USD',2),(8,'╞Åman╔Ötin Maksimal M╔Öbl╔Ö─ƒi','100 000 AZN v╔Ö ya onun ekvivalenti',2),(9,'╞Åman╔Ötin Art─▒r─▒lmas─▒','M├╝mk├╝nd├╝r, ayda bir d╔Öf╔Ö minimum 100 AZN/USD maksimum 1 000 AZN/USD',2),(10,'╞Åman╔Ötin minimal m├╝dd╔Öti','1 il',2),(11,'╞Åman╔Ötin maksimal m├╝dd╔Öti','U┼ƒa─ƒ─▒n 18 ya┼ƒ─▒ tamam olanad╔Ök',2),(12,'Faizl╔Örin hesablanmas─▒','Hesablanm─▒┼ƒ faizl╔Ör ild╔Ö bir d╔Öf╔Ö╔Ösas m╔Öbl╔Ö─ƒin ├╝z╔Örin╔Ö ╔Ölav╔Ö edilir v╔Ö ╔Ölav╔Ö edilmi┼ƒ m╔Öbl╔Ö─ƒ╔Ö d╔Öfaiz hesablan─▒r',2),(13,'Faizl╔Örin ├╢d╔Önilm╔Ösi','M├╝dd╔Ötin sonunda',2),(14,'M├╝qavil╔Öy╔Ö vaxt─▒ndan ╔Övv╔Öl  xitam verildikd╔Ö faizl╔Örin hesablanmas─▒','Tamam olmu┼ƒ il ├╝├º├╝n hesablanm─▒┼ƒ faizl╔Ör c╔Örim╔Ö tutulmadan ├╢d╔Önilir,natamam il ├╝├º├╝n hesablanm─▒┼ƒ faizl╔Ör ├╢d╔Önilmir',2),(15,'M╔Öbl╔Ö─ƒin qism╔Ön ├º─▒xar─▒lmas─▒ zaman─▒ faizl╔Örin hesablanmas─▒','Faizl╔Örin t╔Ökrar hesablanmas─▒ m╔Öxaric edil╔Ön hiss╔Öy╔Ö aid edilir',2),(16,'╞Åman╔Ötin art─▒r─▒lmas─▒:','ayda bir d╔Öf╔Ö, minimum 100 AZN/USD, maksimum 1 000 AZN/USD  (Kassa  vasit╔Ösi il╔Ö (MXD v╔Ö Filial daxili))  say─▒ndan as─▒l─▒ olmayaraq, ayda maksimum 1 000 AZN/USD  (Terminal vasit╔Ösi il╔Ö)',2);
/*!40000 ALTER TABLE `D_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_menu`
--

DROP TABLE IF EXISTS `D_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_header` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_content` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `d_menu_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_menu`
--

LOCK TABLES `D_menu` WRITE;
/*!40000 ALTER TABLE `D_menu` DISABLE KEYS */;
INSERT INTO `D_menu` VALUES (1,'M╔Öhsul haqq─▒nda','ΓÇ£Universal ╔Öman╔ÖtΓÇ¥ Siz╔Ö ╔Öman╔Ötin ┼ƒ╔Örtl╔Örini s╔Örb╔Öst ┼ƒ╔Ökild╔Ö se├ºm╔Ök imkan─▒ verir.','Siz ╔Öman╔Ötin faizl╔Örini v╔Ö m├╝dd╔Ötini geni┼ƒ se├ºim imkanlar─▒ndan yararlanaraq m├╝╔Öyy╔Ön ed╔Ö bil╔Örsiniz.',1),(2,'╞Åman╔Ötl╔Örin S─▒─ƒortalanmas─▒','S─▒─ƒortalanm─▒┼ƒ ╔Öman╔Öt:','Qorunan ╔Öman╔Ötin (bank hesab─▒nda olan v╔Ösaitin) el╔Ö bir hiss╔Ösidir ki, ╔Öman╔Öt├ºiy╔Ö xidm╔Öt g├╢st╔Ör╔Ön i┼ƒtirak├º─▒ bankda s─▒─ƒorta hadis╔Ösi ba┼ƒ verdikd╔Ö ΓÇ£╞Åman╔Ötl╔Örin s─▒─ƒortalanmas─▒ haqq─▒ndaΓÇ¥ Qanunla m├╝╔Öyy╔Ön edilmi┼ƒ m╔Öbl╔Ö─ƒd╔Ö Fond t╔Ör╔Öfind╔Ön kompensasiya olunur.',1),(3,'M╔Öhsul haqq─▒nda',NULL,'├ûvlad─▒n─▒z─▒n g╔Öl╔Öc╔Öyini maddi bax─▒mdan s─▒─ƒortalamaq v╔Ö yeniyetm╔Ö h╔Öyata ba┼ƒlamas─▒ ├╝├º├╝n maddi d╔Öst╔Ök g├╢st╔Örm╔Ök ist╔Öyirsinizs╔Ö Rabit╔Öbank─▒n U┼ƒaq Y─▒─ƒ─▒m ╞Åman╔Öti m╔Öhsulundan faydalan─▒n.   ┼₧╔Örtl╔Örl╔Ö tan─▒┼ƒ olaraq depozit hesab─▒ a├ºmaq ├╝├º├╝n el╔Ö indi m├╝raci╔Öt edin, ╔Öm╔Ökda┼ƒlar─▒m─▒z sizinl╔Ö ╔Ölaq╔Ö saxlas─▒nlar! ',2),(4,'╞Åman╔Ötl╔Örin S─▒─ƒortalanmas─▒','S─▒─ƒortalanm─▒┼ƒ ╔Öman╔Öt:','Qorunan ╔Öman╔Ötin (bank hesab─▒nda olan v╔Ösaitin) el╔Ö bir hiss╔Ösidir ki, ╔Öman╔Öt├ºiy╔Ö xidm╔Öt g├╢st╔Ör╔Ön i┼ƒtirak├º─▒ bankda s─▒─ƒorta hadis╔Ösi ba┼ƒ verdikd╔Ö ΓÇ£╞Åman╔Ötl╔Örin s─▒─ƒortalanmas─▒ haqq─▒ndaΓÇ¥ Qanunla m├╝╔Öyy╔Ön edilmi┼ƒ m╔Öbl╔Ö─ƒd╔Ö Fond t╔Ör╔Öfind╔Ön kompensasiya olunur.',2),(5,'Qoyulan T╔Öl╔Öbl╔Ör','T╔Öl╔Öb olunan s╔Ön╔Ödl╔Ör',NULL,2);
/*!40000 ALTER TABLE `D_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_xitam`
--

DROP TABLE IF EXISTS `D_xitam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_xitam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `azn` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euro` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `d_xitam_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_xitam`
--

LOCK TABLES `D_xitam` WRITE;
/*!40000 ALTER TABLE `D_xitam` DISABLE KEYS */;
INSERT INTO `D_xitam` VALUES (1,'0 - 30 g├╝n','0','0','0',1),(2,'31 ΓÇô 180 g├╝n','10','10','10',1),(3,'181 ΓÇô 360 g├╝n','20','25','25',1),(4,'360 g├╝nd╔Ön sonra','30','50','50',1);
/*!40000 ALTER TABLE `D_xitam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deposit`
--

DROP TABLE IF EXISTS `Deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `interest` float DEFAULT NULL,
  `currency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_info` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deposit`
--

LOCK TABLES `Deposit` WRITE;
/*!40000 ALTER TABLE `Deposit` DISABLE KEYS */;
INSERT INTO `Deposit` VALUES (1,'Universal ╞Åman╔Öt',36,10.5,'AZN/EUR/USD','universal_emanet.webp','universal-emanet','individual','Universal ╞Åman╔Öt m╔Öhsulu il╔Ö pulunuz artmaqla yana┼ƒ─▒ h╔Öm d╔Ö qazan─▒lan faizl╔Örin g├╢t├╝r├╝lm╔Ösind╔Ö geni┼ƒ se├ºim imkan─▒n─▒z olacaq.'),(2,'U┼ƒaq y─▒─ƒ─▒m ╔Öman╔Öti',216,5,'AZN / USD','Usaq.webp','usaq-yigim-emaneti','individual','U┼ƒaq Y─▒─ƒ─▒m ╔Öman╔Öti il╔Ö faizl╔Öriniz╔Ö faiz qazand─▒r─▒n v╔Ö s├╝r╔Ötl╔Ö artan m╔Öbl╔Ö─ƒl╔Ö ├╢vlad─▒n─▒z─▒n g╔Öl╔Öc╔Öyini qurun. ╞Åman╔Öt yetkinlik ya┼ƒ─▒na ├ºatmam─▒┼ƒ u┼ƒaqlar ├╝├º├╝n n╔Öz╔Örd╔Ö tutulub.'),(3,'Saxlanc seyfl╔Öri',NULL,NULL,NULL,'seyf.webp','saxlanc-seyfleri','individual',NULL);
/*!40000 ALTER TABLE `Deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deposit_offer`
--

DROP TABLE IF EXISTS `Deposit_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Deposit_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `deposit_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deposit_offer`
--

LOCK TABLES `Deposit_offer` WRITE;
/*!40000 ALTER TABLE `Deposit_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Deposit_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interest_end`
--

DROP TABLE IF EXISTS `Interest_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interest_end` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `azn` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euro` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `interest_end_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interest_end`
--

LOCK TABLES `Interest_end` WRITE;
/*!40000 ALTER TABLE `Interest_end` DISABLE KEYS */;
INSERT INTO `Interest_end` VALUES (1,'T╔Öl╔Öb olunanad╔Ök','-','-','-',1),(2,'3 ay','3,00','-','-',1),(3,'6 ay','6,00','0,50','-',1),(4,'12 ay','10,00','0,50','0,50',1),(5,'24 ay','10,50','0,50','-',1),(6,'36 ay','10,50','-','-',1);
/*!40000 ALTER TABLE `Interest_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interest_monthly`
--

DROP TABLE IF EXISTS `Interest_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interest_monthly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `azn` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euro` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `interest_monthly_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interest_monthly`
--

LOCK TABLES `Interest_monthly` WRITE;
/*!40000 ALTER TABLE `Interest_monthly` DISABLE KEYS */;
INSERT INTO `Interest_monthly` VALUES (1,'T╔Öl╔Öb olunanad╔Ök','-','-','-',1),(2,'3 ay','-','-','-',1),(3,'6 ay','4,00','0,25','-',1),(4,'12 ay','9,25','0,25','-',1),(5,'24 ay','9,50','0,25','-',1),(6,'36 ay','9,50','-','-',1);
/*!40000 ALTER TABLE `Interest_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interest_quarterly`
--

DROP TABLE IF EXISTS `Interest_quarterly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interest_quarterly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `azn` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euro` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `interest_quarterly_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interest_quarterly`
--

LOCK TABLES `Interest_quarterly` WRITE;
/*!40000 ALTER TABLE `Interest_quarterly` DISABLE KEYS */;
INSERT INTO `Interest_quarterly` VALUES (1,'T╔Öl╔Öb olunanad╔Ök','1,00','0,10','0,05',1),(2,'3 ay','-','-','-',1),(3,'6 ay','5,00','0,35','-',1),(4,'12 ay','9,50','0,35','-',1),(5,'24 ay','9,75','0,35','-',1),(6,'36 ay','9,75','-','-',1);
/*!40000 ALTER TABLE `Interest_quarterly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Main_branch`
--

DROP TABLE IF EXISTS `Main_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Main_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_month` int(11) DEFAULT NULL,
  `payment_year` int(11) DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `main_branch_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Main_branch`
--

LOCK TABLES `Main_branch` WRITE;
/*!40000 ALTER TABLE `Main_branch` DISABLE KEYS */;
INSERT INTO `Main_branch` VALUES (1,'├ûl├º├╝s├╝ 70 sm x 60 sm x 70 sm olan qutu ├╝├º├╝n',80,800,3),(2,'├ûl├º├╝s├╝ 70 sm x 55 sm x 115 sm olan qutu ├╝├º├╝n',90,900,3),(3,'├ûl├º├╝s├╝ 42 sm x 57 sm x 140 sm olan qutu ├╝├º├╝n',100,1000,3);
/*!40000 ALTER TABLE `Main_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Main_office`
--

DROP TABLE IF EXISTS `Main_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Main_office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_month` int(11) DEFAULT NULL,
  `payment_year` int(11) DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `main_office_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Main_office`
--

LOCK TABLES `Main_office` WRITE;
/*!40000 ALTER TABLE `Main_office` DISABLE KEYS */;
INSERT INTO `Main_office` VALUES (1,'├ûl├º├╝s├╝ 9.7 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',20,200,3),(2,'├ûl├º├╝s├╝ 19.7 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',40,400,3),(3,'├ûl├º├╝s├╝ 29.7 sm x 32.8 sm.x 41.9 sm  olan qutu ├╝├º├╝n',50,500,3),(4,'├ûl├º├╝s├╝ 44.5 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',70,700,3),(5,'├ûl├º├╝s├╝ 59.5 sm x 32.8 sm x 41.9sm  olan qutu ├╝├º├╝n',80,800,3);
/*!40000 ALTER TABLE `Main_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nerimanov_branch`
--

DROP TABLE IF EXISTS `Nerimanov_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nerimanov_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_month` int(11) DEFAULT NULL,
  `payment_year` int(11) DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `nerimanov_branch_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nerimanov_branch`
--

LOCK TABLES `Nerimanov_branch` WRITE;
/*!40000 ALTER TABLE `Nerimanov_branch` DISABLE KEYS */;
INSERT INTO `Nerimanov_branch` VALUES (1,'├ûl├º├╝s├╝ 17 sm x 27 sm x 44 sm olan qutu ├╝├º├╝n',40,400,3),(2,'├ûl├º├╝s├╝ 30 sm x 27 sm x 44 sm olan qutu ├╝├º├╝n',50,500,3);
/*!40000 ALTER TABLE `Nerimanov_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nesimi_branch`
--

DROP TABLE IF EXISTS `Nesimi_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nesimi_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_month` int(11) DEFAULT NULL,
  `payment_year` int(11) DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `nesimi_branch_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nesimi_branch`
--

LOCK TABLES `Nesimi_branch` WRITE;
/*!40000 ALTER TABLE `Nesimi_branch` DISABLE KEYS */;
INSERT INTO `Nesimi_branch` VALUES (1,'├ûl├º├╝s├╝ 10 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',20,200,3),(2,'├ûl├º├╝s├╝ 15 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',30,300,3),(3,'├ûl├º├╝s├╝ 20 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',40,400,3),(4,'├ûl├º├╝s├╝ 25 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',45,450,3),(5,'├ûl├º├╝s├╝ 40 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',60,600,3),(6,'├ûl├º├╝s├╝ 50 sm x 32.8 sm x 41.9 sm olan qutu ├╝├º├╝n',70,700,3);
/*!40000 ALTER TABLE `Nesimi_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Requier`
--

DROP TABLE IF EXISTS `Requier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Requier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposit_id` (`deposit_id`),
  CONSTRAINT `requier_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `Deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Requier`
--

LOCK TABLES `Requier` WRITE;
/*!40000 ALTER TABLE `Requier` DISABLE KEYS */;
INSERT INTO `Requier` VALUES (1,'- ┼₧╔Öxsiyy╔Öti t╔Ösdiq ed╔Ön s╔Ön╔Öd',2),(2,'- U┼ƒa─ƒ─▒n do─ƒum haqq─▒nda ┼ƒ╔Öhad╔Ötnam╔Ösi',2);
/*!40000 ALTER TABLE `Requier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_superuser` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userque`
--

DROP TABLE IF EXISTS `userque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarix` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mobil_nomre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `xidmet_novu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filial` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userque`
--

LOCK TABLES `userque` WRITE;
/*!40000 ALTER TABLE `userque` DISABLE KEYS */;
/*!40000 ALTER TABLE `userque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xeberler`
--

DROP TABLE IF EXISTS `xeberler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xeberler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xeber_basliq` text COLLATE utf8_unicode_ci NOT NULL,
  `xeber_etrafli` text COLLATE utf8_unicode_ci NOT NULL,
  `xeber_sekil` text COLLATE utf8_unicode_ci NOT NULL,
  `xeber_tarix` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xeberler`
--

LOCK TABLES `xeberler` WRITE;
/*!40000 ALTER TABLE `xeberler` DISABLE KEYS */;
INSERT INTO `xeberler` VALUES (1,'Sahibkars─▒n─▒z? Biznesinizi daha rahat v╔Ö s├╝r╔Ötli b├╢y├╝d╔Ö bil╔Örsiniz!','Kredit n├╢vl╔Öri aras─▒nda ╔Ön ├ºox se├ºil╔Ön na─ƒd pul kreditl╔Örind╔Ön biri d╔Ö sahibkarlar─▒n biznes yolunda m├╝raci╔Öt etdiyi Mikrokreditdir. Bu yaz─▒m─▒zda Mikrokreditl╔Ö ba─ƒl─▒ sahibkarlara maraql─▒ olan suallar─▒ v╔Ö krediti ╔Öld╔Ö etm╔Ök ├╝├º├╝n ke├ºm╔Öli oldu─ƒunuz prosedurlar─▒ izah ed╔Öc╔Öyik.\r\n\r\nMikrokredit n╔Ödir, kiml╔Ör ╔Öld╔Ö ed╔Ö bil╔Ör?\r\n\r\nMikrokredit, mikro v╔Ö ki├ºik sahibkarl─▒q subyektl╔Örinin inki┼ƒaf─▒na d╔Öst╔Ök ├╝├º├╝n n╔Öz╔Örd╔Ö tutulmu┼ƒ kredit n├╢v├╝d├╝r. A┼ƒa─ƒ─▒ faiz d╔Ör╔Öc╔Öl╔Öri, komissiya faizinin olmamas─▒na, ╔Ölveri┼ƒli t╔Öminat ┼ƒ╔Örtl╔Öri v╔Ö operativliyin╔Ö g├╢r╔Ö sahibkarlar ├╝├º├╝n ├ºox uy─ƒundur.\r\n\r\nHal-haz─▒rda Rabit╔Öbank-da aktiv olan Mikrokreditl╔Ör ├╝zr╔Ö yaz kampaniyas─▒ndan K╔Önd T╔Ös╔Örr├╝fat─▒, Ticar╔Öt, ─░stehsalat, Xidm╔Öt v╔Ö N╔Öqliyyat sah╔Ösind╔Ö ├ºal─▒┼ƒan b├╝t├╝n sahibkarlar yararlana bil╔Örl╔Ör. N╔Öz╔Örd╔Ö tutulan kreditin m╔Öbl╔Ö─ƒi 50 000 AZN-d╔Ökdir.\r\n\r\nSahibkar 50 000 AZN mikrokrediti ╔Öld╔Ö etm╔Ök ├╝├º├╝n hans─▒ prosedurlardan ke├ºm╔Ölidir?\r\n\r\nRabit╔Öbankdan Mikrokredit ╔Öld╔Ö etm╔Ö proseduru da ├ºox asand─▒r. Sahibkar─▒n biznes f╔Öaliyy╔Ötin╔Ö dair s╔Ön╔Ödl╔Öri (┼₧╔Öxsiyy╔Öt v╔Ösiq╔Ösi, V├ûEN, borcalan─▒n biznesini t╔Ösdiq ed╔Ön s╔Ön╔Ödl╔Ör) varsa, banka t╔Öqdim etm╔Ölidir. Daha sonra biznes f╔Öaliyy╔Ötin╔Ö bax─▒┼ƒ ke├ºirilir v╔Ö m├╝┼ƒt╔Örinin ├╢d╔Öni┼ƒ qabiliyy╔Öti m├╝╔Öyy╔Ön edilir.\r\n\r\nMikrokreditin m├╝dd╔Öti v╔Ö ┼ƒ╔Örtl╔Öri n╔Öl╔Ördir?\r\n\r\nKreditin m├╝dd╔Öti 36 ayad╔Ökdir. H╔Öm├ºinin, m├╝sb╔Öt tarix├º╔Ösi olan m├╝┼ƒt╔Öril╔Ör╔Ö onlar─▒n h╔Ör bir il kredit tarix├º╔Ösin╔Ö 1% endirim t╔Ötbiq olunacaq.\r\n\r\nQeyd ed╔Ök ki, Rabit╔Öbankda aktiv olan Mikrokreditl╔Ör ├╝zr╔Ö yay kampaniyas─▒ 31 may tarixin╔Öd╔Ök ke├º╔Örlidir.\r\n\r\nMikrokrediti nec╔Ö ╔Öld╔Ö etm╔Ök olar?\r\n\r\nRabit╔Öbank─▒n t╔Öklif etdiyi mikrokredit kampaniyas─▒n─▒ onlayn https://rbt.az/micro sifari┼ƒl╔Ö, h╔Öm├ºinin siz╔Ö yax─▒n olan filiala yax─▒nla┼ƒaraq https://www.rabitabank.com/filiallar ╔Öld╔Ö etm╔Ök m├╝mk├╝nd├╝r.','https://www.rabitabank.com/uploads/posts/2022/05/mikrokredit%20banner%20press%20release%20copy.png','19/05/2022'),(2,'Rabit╔Öbank v╔Ö ΓÇ£Budapest Institute of BankingΓÇ¥in r╔Öhb╔Örl╔Öri aras─▒nda ├╢n╔Ömli g├╢r├╝┼ƒ!','\"Macar─▒standa r╔Ösmi s╔Öf╔Örd╔Ö olan Rabit╔Öbank-─▒n ─░dar╔Ö Hey╔Ötinin S╔Ödri Ayd─▒n H├╝seynov, s╔Öf╔Ör zaman─▒ Budape┼ƒt ┼ƒ╔Öh╔Örind╔Ö yerl╔Ö┼ƒ╔Ön ΓÇ£Budapest Institute of BankingΓÇ¥in (BIB) ─░cra├º─▒ Direktoru F├íbi├ín Gergely il╔Ö g├╢r├╝┼ƒ ke├ºirmi┼ƒdir. G├╢r├╝┼ƒd╔Ö Rabit╔Öbank il╔Ö ─░nstitut aras─▒nda ╔Öm╔Ökda┼ƒl─▒q imkanlar─▒n─▒n geni┼ƒl╔Öndirilm╔Ösi m├╢vzusunda m├╝zakir╔Öl╔Ör apar─▒lm┼ƒd─▒r. Rabit╔Öbank-─▒n i┼ƒ├ºi hey╔Ötinin bank├º─▒l─▒q sah╔Ösind╔Ö bilik v╔Ö bacar─▒qlar─▒n─▒n art─▒r─▒lmas─▒ il╔Ö ba─ƒl─▒ dan─▒┼ƒ─▒qlar ke├ºirilmi┼ƒ v╔Ö ╔Öm╔Ökda┼ƒl─▒q memorandumunun imzalanmas─▒ istiqam╔Ötind╔Ö m├╝zakir╔Öl╔Ör apar─▒lm─▒┼ƒd─▒r.\r\n\r\nQeyd ed╔Ök ki, BIB, bank i┼ƒi v╔Ö maliyy╔Ö ├╝zr╔Ö t╔Öliml╔Ör t╔Öklif ed╔Ön t╔Öhsil institutudur. T╔Ölim kurslar─▒ ├º╔Ör├ºiv╔Ösind╔Ö bazar t╔Öl╔Öbl╔Örin╔Ö uy─ƒunla┼ƒd─▒r─▒lm─▒┼ƒ m├╝asir, innovativ v╔Ö t╔Öcr├╝b╔Öy╔Ö ╔Ösaslanan ambisiyalara nail olunur.\r\n\r\nBundan ├╢nc╔Ö d╔Ö bank ╔Öm╔Ökda┼ƒlar─▒n─▒n maliyy╔Ö v╔Ö iqtisadiyyat sah╔Ösind╔Ö ╔Ön m├╝asir bilikl╔Ör╔Ö yiy╔Öl╔Önm╔Öl╔Öri ├╝├º├╝n bir ├ºox t╔Ödbirl╔Ör ke├ºir╔Ön Rabit╔Öbank-─▒n ╔Ösas m╔Öqs╔Ödl╔Örind╔Ön biri ╔Öm╔Ökda┼ƒlar─▒n─▒n ├ºal─▒┼ƒd─▒qlar─▒ sah╔Ö ├╝zr╔Ö t╔Öcr├╝b╔Öl╔Örin╔Ö beyn╔Ölxalq t╔Öcr├╝b╔Öl╔Ör qatmaqd─▒r.\r\n\r\nAyd─▒n H├╝seynov h╔Öm├ºinin bildirib ki, bank─▒n yeni strategiyas─▒na ╔Ösas╔Ön bank, daim i┼ƒ├ºi hey╔Ötinin pe┼ƒ╔Ökar inki┼ƒaf─▒na yat─▒r─▒mlar edir v╔Ö bu c├╝r beyn╔Ölxalq t╔Öcr├╝b╔Öl╔Ör qazanan ekspertl╔Örimiz m├╝asir bilikl╔Ör╔Ö yiy╔Öl╔Ön╔Ör╔Ök sektorda ciddi r╔Öqab╔Öt yaradacaqd─▒r. \r\n\r\n\"Rabit╔Öbank\" ASC, Az╔Örbaycan─▒n 16 regionu v╔Ö Bak─▒ ┼ƒ╔Öh╔Örind╔Ö 27 xidm╔Öt m╔Önt╔Öq╔Ösi v╔Ö 74 ATM-i, \"Rabita Mobile\" t╔Ötbiqi, ─░nternet Bank├º─▒l─▒q platformas─▒ v╔Ö \"RabitaBot\" ├ºatbotu, 133 n├╢mr╔Öli ├ça─ƒr─▒ M╔Örk╔Özi il╔Ö m├╝┼ƒt╔Öril╔Örin xidm╔Ötind╔Ödir.','https://www.rabitabank.com/uploads/posts/2022/05/BIB%20meeting%20photo.png','18/05/2022'),(3,'Rabit╔Öbank ┼ƒ╔Öhid ail╔Ösin╔Ö f╔Ördi sahibkarl─▒qla ba─ƒl─▒ d╔Öst╔Ök g├╢st╔Ördi','Rabit╔Öbank ┼ƒ╔Öhid ail╔Ösin╔Ö f╔Ördi sahibkarl─▒qla ba─ƒl─▒ d╔Öst╔Ök g├╢st╔Ördi\r\n\r\nRabit╔Öbank, ΓÇ£├ûz├╝n├╝m╔Ö┼ƒ─ƒulluq Layih╔ÖsiΓÇ¥ ├º╔Ör├ºiv╔Ösind╔Ö ┼ƒ╔Öhid atas─▒n─▒ f╔Ördi sahibkarl─▒qla m╔Ö┼ƒ─ƒul olmaq ├╝├º├╝n laz─▒m olan avadanl─▒qlarla t╔Ömin edib.\r\n\r\n22.04.22 tarixind╔Ö Rabit╔Öbank ╔Öm╔Ökda┼ƒlar─▒ ├ûz├╝n├╝m╔Ö┼ƒ─ƒulluq layih╔Ösi il╔Ö ba─ƒl─▒ siyah─▒da olan A─ƒcab╔Ödi rayon sakini, ┼ƒ╔Öhid atas─▒ H╔Öziyev Feyruz Nam╔Öt o─ƒlu il╔Ö g├╢r├╝┼ƒm├╝┼ƒ v╔Ö monitorinq zaman─▒ H╔Öziyev Feyruz Nam╔Öt o─ƒluna ΓÇ£D├╢┼ƒ╔Öm╔Ö v╔Ö Parket cilalanmas─▒ xidm╔Öti ├╝zr╔ÖΓÇ¥ avadanl─▒qlar─▒n v╔Ö l╔Övazimatlar─▒n ehtiyac oldu─ƒu a┼ƒkarlanaraq h╔Ömin avadanl─▒qlarla t╔Ömin olunmu┼ƒdur.\r\n\r\n├ûz├╝n├╝m╔Ö┼ƒ─ƒulluq layih╔Ösi ╞Åm╔Ök v╔Ö ╞Åhalinin Sosial M├╝dafi╔Ösi Nazirliyi, M╔Örk╔Özi Bank v╔Ö Az╔Örbaycan Banklar Assosiasiyas─▒ aras─▒nda imzalanan Memoranduma ╔Ösas╔Ön h╔Öyata ke├ºirilir.\r\n\r\nQeyd ed╔Ök ki, ┼ƒ╔Öhid H╔Öziyev X╔Öyal Feyruz o─ƒlu 15.10.2020-ci il tarixind╔Ö F├╝zuli istiqam╔Ötind╔Ö ged╔Ön d├╢y├╝┼ƒl╔Örd╔Ö k├╢n├╝ll├╝ olaraq i┼ƒtirak ed╔Ör╔Ök ┼ƒ╔Öhid olmu┼ƒdur. V╔Öt╔Ön u─ƒrunda can─▒ndan ke├º╔Ön ┼ƒ╔Öhidl╔Örimizi h├╢rm╔Ötl╔Ö an─▒r, ┼ƒ╔Öhid ail╔Öl╔Örinin qar┼ƒ─▒s─▒nda ba┼ƒ ╔Öyirik.\r\n\r\nRabit╔Öbank bundan sonra da ├ûz├╝n├╝m╔Ö┼ƒ─ƒulluq Layih╔Ösi ├º╔Ör├ºiv╔Ösind╔Ö daxil olan m├╝raci╔Ötl╔Ör╔Ö ╔Ösas╔Ön v╔Öt╔Önda┼ƒlar ├╝├º├╝n ╔Öv╔Özsiz olaraq m├╝asir standartlara cavab ver╔Ön avadanl─▒qlar─▒n t╔Ömin olunmas─▒nda d╔Öst╔Ök g├╢st╔Ör╔Öc╔Öyini vur─ƒulay─▒b.\r\n\r\n\"Rabit╔Öbank\" ASC, Az╔Örbaycan─▒n 16 regionu v╔Ö Bak─▒ ┼ƒ╔Öh╔Örind╔Ö 27 xidm╔Öt m╔Önt╔Öq╔Ösi v╔Ö 74 ATM-i, \"Rabita Mobile\" t╔Ötbiqi, ─░nternet Bank├º─▒l─▒q platformas─▒ v╔Ö \"RabitaBot\" ├ºatbotu, 133 n├╢mr╔Öli ├ça─ƒr─▒ M╔Örk╔Özi il╔Ö m├╝┼ƒt╔Öril╔Örin xidm╔Ötind╔Ödir.','https://www.rabitabank.com/uploads/posts/2022/04/fvfv.png','26/04/2022');
/*!40000 ALTER TABLE `xeberler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 19:25:06
