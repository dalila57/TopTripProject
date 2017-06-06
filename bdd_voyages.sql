CREATE DATABASE  IF NOT EXISTS `bdd_voyages` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bdd_voyages`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bdd_voyages
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `countryID` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(45) NOT NULL,
  `emergencyNumber` int(11) NOT NULL,
  `money` varchar(45) NOT NULL,
  `timeZone` varchar(45) NOT NULL,
  `suitcaseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`countryID`),
  UNIQUE KEY `countryID_UNIQUE` (`countryID`),
  KEY `COUNTRY_SUITCASE_FK_idx` (`suitcaseID`),
  CONSTRAINT `COUNTRY_SUITCASE_FK` FOREIGN KEY (`suitcaseID`) REFERENCES `suitcase` (`suitcaseID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `documentID` int(11) NOT NULL AUTO_INCREMENT,
  `documentName` varchar(45) NOT NULL,
  `suitcaseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`documentID`),
  UNIQUE KEY `documentsID_UNIQUE` (`documentID`),
  KEY `DOCUMENTS_SUITCASE_FK_idx` (`suitcaseID`),
  CONSTRAINT `DOCUMENTS_SUITCASE_FK` FOREIGN KEY (`suitcaseID`) REFERENCES `suitcase` (`suitcaseID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'carte d\'identité',NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hygieneobjects`
--

DROP TABLE IF EXISTS `hygieneobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hygieneobjects` (
  `hygieneObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `hygieneObjectName` varchar(45) NOT NULL,
  `suitcaseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`hygieneObjectID`),
  UNIQUE KEY `hygieneObjectID_UNIQUE` (`hygieneObjectID`),
  KEY `HYGIENEOBJECTS_SUITCASE_FK_idx` (`suitcaseID`),
  CONSTRAINT `HYGIENEOBJECTS_SUITCASE_FK` FOREIGN KEY (`suitcaseID`) REFERENCES `suitcase` (`suitcaseID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hygieneobjects`
--

LOCK TABLES `hygieneobjects` WRITE;
/*!40000 ALTER TABLE `hygieneobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `hygieneobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medecine`
--

DROP TABLE IF EXISTS `medecine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medecine` (
  `medecineID` int(11) NOT NULL AUTO_INCREMENT,
  `medecineName` varchar(45) NOT NULL,
  `suitcaseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`medecineID`),
  UNIQUE KEY `medecineID_UNIQUE` (`medecineID`),
  KEY `MEDECINE_SUITCASE_FK_idx` (`suitcaseID`),
  CONSTRAINT `MEDECINE_SUITCASE_FK` FOREIGN KEY (`suitcaseID`) REFERENCES `suitcase` (`suitcaseID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medecine`
--

LOCK TABLES `medecine` WRITE;
/*!40000 ALTER TABLE `medecine` DISABLE KEYS */;
INSERT INTO `medecine` VALUES (1,'doliprane',NULL);
/*!40000 ALTER TABLE `medecine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multimedia`
--

DROP TABLE IF EXISTS `multimedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multimedia` (
  `multimediaID` int(11) NOT NULL AUTO_INCREMENT,
  `multimediaName` varchar(45) NOT NULL,
  `suitcaseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`multimediaID`),
  UNIQUE KEY `multimediaID_UNIQUE` (`multimediaID`),
  KEY `MULTIMEDIA_SUITCASE_FK_idx` (`suitcaseID`),
  CONSTRAINT `MULTIMEDIA_SUITCASE_FK` FOREIGN KEY (`suitcaseID`) REFERENCES `suitcase` (`suitcaseID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multimedia`
--

LOCK TABLES `multimedia` WRITE;
/*!40000 ALTER TABLE `multimedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `multimedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suitcase`
--

DROP TABLE IF EXISTS `suitcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suitcase` (
  `suitcaseID` int(11) NOT NULL AUTO_INCREMENT,
  `countryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`suitcaseID`),
  KEY `SUITCASE_COUNTRY_FK_idx` (`countryID`),
  CONSTRAINT `SUITCASE_COUNTRY_FK` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suitcase`
--

LOCK TABLES `suitcase` WRITE;
/*!40000 ALTER TABLE `suitcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `suitcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabulary` (
  `vocabularyID` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `phrase` tinytext NOT NULL,
  `countryID` int(11) DEFAULT NULL,
  `vocabularyCategoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`vocabularyID`),
  UNIQUE KEY `idvocabularyID_UNIQUE` (`vocabularyID`),
  KEY `VOCABULARY_COUNTRY_FK_idx` (`countryID`),
  KEY `VOCABULARY_VOCABULARYCATEGORY_FK_idx` (`vocabularyCategoryID`),
  CONSTRAINT `VOCABULARY_COUNTRY_FK` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `VOCABULARY_VOCABULARYCATEGORY_FK` FOREIGN KEY (`vocabularyCategoryID`) REFERENCES `vocabularycategory` (`vocabularyCategoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary`
--

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularycategory`
--

DROP TABLE IF EXISTS `vocabularycategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabularycategory` (
  `vocabularyCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `vocabularyCategoryName` varchar(45) NOT NULL,
  PRIMARY KEY (`vocabularyCategoryID`),
  UNIQUE KEY `vocabularyCategoryID_UNIQUE` (`vocabularyCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularycategory`
--

LOCK TABLES `vocabularycategory` WRITE;
/*!40000 ALTER TABLE `vocabularycategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocabularycategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-06 22:22:20
