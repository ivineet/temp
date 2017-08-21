-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: database_test
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
-- Table structure for table `bankholidays`
--

DROP TABLE IF EXISTS `bankholidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankholidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `companyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_holidays_company_id` (`companyId`),
  CONSTRAINT `bankholidays_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankholidays`
--

LOCK TABLES `bankholidays` WRITE;
/*!40000 ALTER TABLE `bankholidays` DISABLE KEYS */;
INSERT INTO `bankholidays` VALUES (1,'New Year Day','2016-01-01 00:00:00','2017-08-18 22:48:17','2017-08-18 22:48:17',1),(2,'Martin Luther King Day','2016-01-18 00:00:00','2017-08-18 22:48:17','2017-08-18 22:48:17',1),(3,'Memorial Day','2016-05-30 00:00:00','2017-08-18 22:48:17','2017-08-18 22:48:17',1),(4,'Independence Day','2016-07-04 00:00:00','2017-08-18 22:48:17','2017-08-18 22:48:17',1),(5,'Labor Day','2016-09-05 00:00:00','2017-08-18 22:48:17','2017-08-18 22:48:17',1),(6,'Veterans Day','2016-11-11 00:00:00','2017-08-18 22:48:17','2017-08-18 22:48:17',1),(7,'Thanksgiving','2016-11-24 00:00:00','2017-08-18 22:48:17','2017-08-18 22:48:17',1),(8,'Christmas Day','2016-12-26 00:00:00','2017-08-18 22:48:17','2017-08-18 22:48:17',1),(9,'New Year Day','2016-01-01 00:00:00','2017-08-18 22:49:34','2017-08-18 22:49:34',2),(10,'Martin Luther King Day','2016-01-18 00:00:00','2017-08-18 22:49:34','2017-08-18 22:49:34',2),(11,'Memorial Day','2016-05-30 00:00:00','2017-08-18 22:49:34','2017-08-18 22:49:34',2),(12,'Independence Day','2016-07-04 00:00:00','2017-08-18 22:49:34','2017-08-18 22:49:34',2),(13,'Labor Day','2016-09-05 00:00:00','2017-08-18 22:49:34','2017-08-18 22:49:34',2),(14,'Veterans Day','2016-11-11 00:00:00','2017-08-18 22:49:34','2017-08-18 22:49:34',2),(15,'Thanksgiving','2016-11-24 00:00:00','2017-08-18 22:49:34','2017-08-18 22:49:34',2),(16,'Christmas Day','2016-12-26 00:00:00','2017-08-18 22:49:34','2017-08-18 22:49:34',2),(17,'New Year Day','2016-01-01 00:00:00','2017-08-18 23:10:46','2017-08-18 23:10:46',3),(18,'Martin Luther King Day','2016-01-18 00:00:00','2017-08-18 23:10:46','2017-08-18 23:10:46',3),(19,'Memorial Day','2016-05-30 00:00:00','2017-08-18 23:10:46','2017-08-18 23:10:46',3),(20,'Independence Day','2016-07-04 00:00:00','2017-08-18 23:10:46','2017-08-18 23:10:46',3),(21,'Labor Day','2016-09-05 00:00:00','2017-08-18 23:10:46','2017-08-18 23:10:46',3),(22,'Veterans Day','2016-11-11 00:00:00','2017-08-18 23:10:46','2017-08-18 23:10:46',3),(23,'Thanksgiving','2016-11-24 00:00:00','2017-08-18 23:10:46','2017-08-18 23:10:46',3),(24,'Christmas Day','2016-12-26 00:00:00','2017-08-18 23:10:46','2017-08-18 23:10:46',3);
/*!40000 ALTER TABLE `bankholidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `start_of_new_year` int(11) NOT NULL,
  `share_all_absences` tinyint(1) NOT NULL DEFAULT '0',
  `ldap_auth_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `ldap_auth_config` varchar(255) DEFAULT NULL,
  `date_format` varchar(255) NOT NULL DEFAULT 'YYYY-MM-DD',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'test','IN',1,0,0,NULL,'YYYY-MM-DD','2017-08-18 22:48:17','2017-08-18 22:48:17'),(2,'LG','IN',1,0,0,NULL,'YYYY-MM-DD','2017-08-18 22:49:34','2017-08-18 22:49:34'),(3,'euler','IN',1,0,0,NULL,'YYYY-MM-DD','2017-08-18 23:10:46','2017-08-18 23:10:46');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `allowance` int(11) NOT NULL DEFAULT '20',
  `include_public_holidays` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `companyId` int(11) DEFAULT NULL,
  `bossId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departments_company_id` (`companyId`),
  KEY `departments_id` (`id`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Sales',20,1,'2017-08-18 22:48:17','2017-08-18 22:48:18',1,1),(2,'Sales',20,1,'2017-08-18 22:49:34','2017-08-18 22:49:34',2,2),(3,'Sales',20,1,'2017-08-18 23:10:46','2017-08-18 23:10:47',3,3);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailaudit`
--

DROP TABLE IF EXISTS `emailaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailaudit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `email_audit_created_at` (`created_at`),
  KEY `email_audit_user_id` (`user_id`),
  CONSTRAINT `emailaudit_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `emailaudit_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailaudit`
--

LOCK TABLES `emailaudit` WRITE;
/*!40000 ALTER TABLE `emailaudit` DISABLE KEYS */;
INSERT INTO `emailaudit` VALUES (1,'test@gmail.com','Registration completed','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\r\n  <title>Registration completed</title>\r\n  <style type=\"text/css\">\r\n    #outlook a {padding:0;}\r\n    body{width:100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0;}\r\n    .ExternalClass {width:100%;}\r\n    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}\r\n    #backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important;}\r\n    img {outline:none; text-decoration:none; -ms-interpolation-mode: bicubic;}\r\n    a img {border:none;}\r\n    .image_fix {display:block;}\r\n    p {color: #61686b; font-family: sans-serif; font-size: 15px; font-weight: normal; line-height: 1.5em; margin: 0; padding: 0 0 1.5em 0; }\r\n    h1, h2, h3, h4, h5, h6 {color: black !important;}\r\n    h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {color: blue !important;}\r\n    h1 a:active, h2 a:active,  h3 a:active, h4 a:active, h5 a:active, h6 a:active {\r\n      color: red !important;\r\n     }\r\n\r\n    h1 a:visited, h2 a:visited,  h3 a:visited, h4 a:visited, h5 a:visited, h6 a:visited {\r\n      color: purple !important;\r\n    }\r\n    table td {border-collapse: collapse;}\r\n    table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }\r\n    a {color: orange;}\r\n    @media only screen and (max-device-width: 480px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: black; /* or whatever your want */\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important; /* or whatever your want */\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: blue;\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important;\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\r\n      /* Put your iPhone 4g styles in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:.75){\r\n      /* Put CSS for low density (ldpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1){\r\n      /* Put CSS for medium density (mdpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1.5){\r\n      /* Put CSS for high density (hdpi) Android layouts in here */\r\n    }\r\n  </style>\r\n  <!--[if IEMobile 7]>\r\n  <style type=\"text/css\">\r\n    /* Targeting Windows Mobile */\r\n  </style>\r\n  <![endif]-->\r\n  <!--[if gte mso 9]>\r\n  <style>\r\n    /* Target Outlook 2007 and 2010 */\r\n  </style>\r\n  <![endif]-->\r\n</head>\r\n<body>\r\n  <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" id=\"backgroundTable\">\r\n  <tr>\r\n    <td>\r\n      <div style=\"-moz-border-radius: 3px; -webkit-border-radius: 3px; border: #e5e3d8 1px solid; border-radius: 3px; margin: 2%; padding: 5% 8%;\">\r\n      <p>Hello <strong>test</strong>,</p>\r\n\r\n<p>Thank you for registering new account on <a href=\"http://icm.lge.com\" style=\"color: #5ba4e5;\">TimeOff.Management</a>\r\n</p>\r\n\r\n<p>Thanks</p>\r\n\r\n      </div>\r\n\r\n      <div style=\"padding: 0 4%;\">\r\n        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td align=\"right\" style=\"color: #888888; font-family: sans-serif; font-size: 11px; line-height: 1.3; padding: 0 0 20px 0;\">\r\n              Sent by <a href=\"http://\" style=\"color: #5ba4e5;\">TimeOff.Management</a>\r\n\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </div>\r\n\r\n    </td>\r\n  </tr>\r\n  </table>\r\n</body>\r\n</html>\r\n','2017-08-18 22:48:18',1,1),(2,'vineet15.yadav@lge.com','Registration completed','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\r\n  <title>Registration completed</title>\r\n  <style type=\"text/css\">\r\n    #outlook a {padding:0;}\r\n    body{width:100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0;}\r\n    .ExternalClass {width:100%;}\r\n    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}\r\n    #backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important;}\r\n    img {outline:none; text-decoration:none; -ms-interpolation-mode: bicubic;}\r\n    a img {border:none;}\r\n    .image_fix {display:block;}\r\n    p {color: #61686b; font-family: sans-serif; font-size: 15px; font-weight: normal; line-height: 1.5em; margin: 0; padding: 0 0 1.5em 0; }\r\n    h1, h2, h3, h4, h5, h6 {color: black !important;}\r\n    h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {color: blue !important;}\r\n    h1 a:active, h2 a:active,  h3 a:active, h4 a:active, h5 a:active, h6 a:active {\r\n      color: red !important;\r\n     }\r\n\r\n    h1 a:visited, h2 a:visited,  h3 a:visited, h4 a:visited, h5 a:visited, h6 a:visited {\r\n      color: purple !important;\r\n    }\r\n    table td {border-collapse: collapse;}\r\n    table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }\r\n    a {color: orange;}\r\n    @media only screen and (max-device-width: 480px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: black; /* or whatever your want */\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important; /* or whatever your want */\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: blue;\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important;\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\r\n      /* Put your iPhone 4g styles in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:.75){\r\n      /* Put CSS for low density (ldpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1){\r\n      /* Put CSS for medium density (mdpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1.5){\r\n      /* Put CSS for high density (hdpi) Android layouts in here */\r\n    }\r\n  </style>\r\n  <!--[if IEMobile 7]>\r\n  <style type=\"text/css\">\r\n    /* Targeting Windows Mobile */\r\n  </style>\r\n  <![endif]-->\r\n  <!--[if gte mso 9]>\r\n  <style>\r\n    /* Target Outlook 2007 and 2010 */\r\n  </style>\r\n  <![endif]-->\r\n</head>\r\n<body>\r\n  <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" id=\"backgroundTable\">\r\n  <tr>\r\n    <td>\r\n      <div style=\"-moz-border-radius: 3px; -webkit-border-radius: 3px; border: #e5e3d8 1px solid; border-radius: 3px; margin: 2%; padding: 5% 8%;\">\r\n      <p>Hello <strong>vineet</strong>,</p>\r\n\r\n<p>Thank you for registering new account on <a href=\"http://icm.lge.com\" style=\"color: #5ba4e5;\">TimeOff.Management</a>\r\n</p>\r\n\r\n<p>Thanks</p>\r\n\r\n      </div>\r\n\r\n      <div style=\"padding: 0 4%;\">\r\n        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td align=\"right\" style=\"color: #888888; font-family: sans-serif; font-size: 11px; line-height: 1.3; padding: 0 0 20px 0;\">\r\n              Sent by <a href=\"http://\" style=\"color: #5ba4e5;\">TimeOff.Management</a>\r\n\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </div>\r\n\r\n    </td>\r\n  </tr>\r\n  </table>\r\n</body>\r\n</html>\r\n','2017-08-18 22:49:34',2,2),(3,'vineet15.yadav@lge.com','Leave request is waiting decision','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\r\n  <title>Leave request is waiting decision</title>\r\n  <style type=\"text/css\">\r\n    #outlook a {padding:0;}\r\n    body{width:100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0;}\r\n    .ExternalClass {width:100%;}\r\n    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}\r\n    #backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important;}\r\n    img {outline:none; text-decoration:none; -ms-interpolation-mode: bicubic;}\r\n    a img {border:none;}\r\n    .image_fix {display:block;}\r\n    p {color: #61686b; font-family: sans-serif; font-size: 15px; font-weight: normal; line-height: 1.5em; margin: 0; padding: 0 0 1.5em 0; }\r\n    h1, h2, h3, h4, h5, h6 {color: black !important;}\r\n    h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {color: blue !important;}\r\n    h1 a:active, h2 a:active,  h3 a:active, h4 a:active, h5 a:active, h6 a:active {\r\n      color: red !important;\r\n     }\r\n\r\n    h1 a:visited, h2 a:visited,  h3 a:visited, h4 a:visited, h5 a:visited, h6 a:visited {\r\n      color: purple !important;\r\n    }\r\n    table td {border-collapse: collapse;}\r\n    table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }\r\n    a {color: orange;}\r\n    @media only screen and (max-device-width: 480px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: black; /* or whatever your want */\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important; /* or whatever your want */\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: blue;\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important;\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\r\n      /* Put your iPhone 4g styles in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:.75){\r\n      /* Put CSS for low density (ldpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1){\r\n      /* Put CSS for medium density (mdpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1.5){\r\n      /* Put CSS for high density (hdpi) Android layouts in here */\r\n    }\r\n  </style>\r\n  <!--[if IEMobile 7]>\r\n  <style type=\"text/css\">\r\n    /* Targeting Windows Mobile */\r\n  </style>\r\n  <![endif]-->\r\n  <!--[if gte mso 9]>\r\n  <style>\r\n    /* Target Outlook 2007 and 2010 */\r\n  </style>\r\n  <![endif]-->\r\n</head>\r\n<body>\r\n  <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" id=\"backgroundTable\">\r\n  <tr>\r\n    <td>\r\n      <div style=\"-moz-border-radius: 3px; -webkit-border-radius: 3px; border: #e5e3d8 1px solid; border-radius: 3px; margin: 2%; padding: 5% 8%;\">\r\n      <p>Hello <strong>vineet vineet,</strong></p>\r\n\r\n<p>Your leave request <strong>Holiday from 2017-08-19 to 2017-08-19 was sent</strong> to vineet vineet.</p>\r\n\r\n<p>There will be another email upon decision.</p>\r\n\r\n<p>Thanks</p>\r\n\r\n      </div>\r\n\r\n      <div style=\"padding: 0 4%;\">\r\n        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td align=\"right\" style=\"color: #888888; font-family: sans-serif; font-size: 11px; line-height: 1.3; padding: 0 0 20px 0;\">\r\n              Sent by <a href=\"http://\" style=\"color: #5ba4e5;\">TimeOff.Management</a>\r\n\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </div>\r\n\r\n    </td>\r\n  </tr>\r\n  </table>\r\n</body>\r\n</html>\r\n','2017-08-18 23:00:53',2,2),(4,'vineet15.yadav@lge.com','New leave request','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\r\n  <title>New leave request</title>\r\n  <style type=\"text/css\">\r\n    #outlook a {padding:0;}\r\n    body{width:100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0;}\r\n    .ExternalClass {width:100%;}\r\n    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}\r\n    #backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important;}\r\n    img {outline:none; text-decoration:none; -ms-interpolation-mode: bicubic;}\r\n    a img {border:none;}\r\n    .image_fix {display:block;}\r\n    p {color: #61686b; font-family: sans-serif; font-size: 15px; font-weight: normal; line-height: 1.5em; margin: 0; padding: 0 0 1.5em 0; }\r\n    h1, h2, h3, h4, h5, h6 {color: black !important;}\r\n    h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {color: blue !important;}\r\n    h1 a:active, h2 a:active,  h3 a:active, h4 a:active, h5 a:active, h6 a:active {\r\n      color: red !important;\r\n     }\r\n\r\n    h1 a:visited, h2 a:visited,  h3 a:visited, h4 a:visited, h5 a:visited, h6 a:visited {\r\n      color: purple !important;\r\n    }\r\n    table td {border-collapse: collapse;}\r\n    table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }\r\n    a {color: orange;}\r\n    @media only screen and (max-device-width: 480px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: black; /* or whatever your want */\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important; /* or whatever your want */\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: blue;\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important;\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\r\n      /* Put your iPhone 4g styles in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:.75){\r\n      /* Put CSS for low density (ldpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1){\r\n      /* Put CSS for medium density (mdpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1.5){\r\n      /* Put CSS for high density (hdpi) Android layouts in here */\r\n    }\r\n  </style>\r\n  <!--[if IEMobile 7]>\r\n  <style type=\"text/css\">\r\n    /* Targeting Windows Mobile */\r\n  </style>\r\n  <![endif]-->\r\n  <!--[if gte mso 9]>\r\n  <style>\r\n    /* Target Outlook 2007 and 2010 */\r\n  </style>\r\n  <![endif]-->\r\n</head>\r\n<body>\r\n  <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" id=\"backgroundTable\">\r\n  <tr>\r\n    <td>\r\n      <div style=\"-moz-border-radius: 3px; -webkit-border-radius: 3px; border: #e5e3d8 1px solid; border-radius: 3px; margin: 2%; padding: 5% 8%;\">\r\n      <p>Hello <strong>vineet vineet</strong>,</p>\r\n\r\n<p><strong>vineet vineet</strong> sent new leave request <strong>Holiday from 2017-08-19 to 2017-08-19</strong>.</p>\r\n\r\n<p>Please visit <a href=\"http://icm.lge.com/requests/\" style=\"color: #5ba4e5;\">Pending requests</a>\r\n page to approve or reject outstanding requests.</p>\r\n\r\n<p>Thanks</p>\r\n\r\n      </div>\r\n\r\n      <div style=\"padding: 0 4%;\">\r\n        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td align=\"right\" style=\"color: #888888; font-family: sans-serif; font-size: 11px; line-height: 1.3; padding: 0 0 20px 0;\">\r\n              Sent by <a href=\"http://\" style=\"color: #5ba4e5;\">TimeOff.Management</a>\r\n\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </div>\r\n\r\n    </td>\r\n  </tr>\r\n  </table>\r\n</body>\r\n</html>\r\n','2017-08-18 23:00:53',2,2),(5,'euler@ldap.forumsys.com','Registration completed','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\r\n  <title>Registration completed</title>\r\n  <style type=\"text/css\">\r\n    #outlook a {padding:0;}\r\n    body{width:100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0;}\r\n    .ExternalClass {width:100%;}\r\n    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}\r\n    #backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important;}\r\n    img {outline:none; text-decoration:none; -ms-interpolation-mode: bicubic;}\r\n    a img {border:none;}\r\n    .image_fix {display:block;}\r\n    p {color: #61686b; font-family: sans-serif; font-size: 15px; font-weight: normal; line-height: 1.5em; margin: 0; padding: 0 0 1.5em 0; }\r\n    h1, h2, h3, h4, h5, h6 {color: black !important;}\r\n    h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {color: blue !important;}\r\n    h1 a:active, h2 a:active,  h3 a:active, h4 a:active, h5 a:active, h6 a:active {\r\n      color: red !important;\r\n     }\r\n\r\n    h1 a:visited, h2 a:visited,  h3 a:visited, h4 a:visited, h5 a:visited, h6 a:visited {\r\n      color: purple !important;\r\n    }\r\n    table td {border-collapse: collapse;}\r\n    table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }\r\n    a {color: orange;}\r\n    @media only screen and (max-device-width: 480px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: black; /* or whatever your want */\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important; /* or whatever your want */\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {\r\n      a[href^=\"tel\"], a[href^=\"sms\"] {\r\n            text-decoration: none;\r\n            color: blue;\r\n            pointer-events: none;\r\n            cursor: default;\r\n          }\r\n\r\n      .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\r\n            text-decoration: default;\r\n            color: orange !important;\r\n            pointer-events: auto;\r\n            cursor: default;\r\n          }\r\n    }\r\n\r\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\r\n      /* Put your iPhone 4g styles in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:.75){\r\n      /* Put CSS for low density (ldpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1){\r\n      /* Put CSS for medium density (mdpi) Android layouts in here */\r\n    }\r\n    @media only screen and (-webkit-device-pixel-ratio:1.5){\r\n      /* Put CSS for high density (hdpi) Android layouts in here */\r\n    }\r\n  </style>\r\n  <!--[if IEMobile 7]>\r\n  <style type=\"text/css\">\r\n    /* Targeting Windows Mobile */\r\n  </style>\r\n  <![endif]-->\r\n  <!--[if gte mso 9]>\r\n  <style>\r\n    /* Target Outlook 2007 and 2010 */\r\n  </style>\r\n  <![endif]-->\r\n</head>\r\n<body>\r\n  <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" id=\"backgroundTable\">\r\n  <tr>\r\n    <td>\r\n      <div style=\"-moz-border-radius: 3px; -webkit-border-radius: 3px; border: #e5e3d8 1px solid; border-radius: 3px; margin: 2%; padding: 5% 8%;\">\r\n      <p>Hello <strong>euler</strong>,</p>\r\n\r\n<p>Thank you for registering new account on <a href=\"http://icm.lge.com\" style=\"color: #5ba4e5;\">TimeOff.Management</a>\r\n</p>\r\n\r\n<p>Thanks</p>\r\n\r\n      </div>\r\n\r\n      <div style=\"padding: 0 4%;\">\r\n        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td align=\"right\" style=\"color: #888888; font-family: sans-serif; font-size: 11px; line-height: 1.3; padding: 0 0 20px 0;\">\r\n              Sent by <a href=\"http://\" style=\"color: #5ba4e5;\">TimeOff.Management</a>\r\n\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </div>\r\n\r\n    </td>\r\n  </tr>\r\n  </table>\r\n</body>\r\n</html>\r\n','2017-08-18 23:10:47',3,3);
/*!40000 ALTER TABLE `emailaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `employee_comment` varchar(255) DEFAULT NULL,
  `approver_comment` varchar(255) DEFAULT NULL,
  `decided_at` datetime DEFAULT NULL,
  `date_start` datetime NOT NULL,
  `day_part_start` int(11) NOT NULL DEFAULT '1',
  `date_end` datetime NOT NULL,
  `day_part_end` int(11) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `approverId` int(11) DEFAULT NULL,
  `leaveTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leaves_user_id` (`userId`),
  KEY `leaves_leave_type_id` (`leaveTypeId`),
  KEY `leaves_approver_id` (`approverId`),
  CONSTRAINT `leaves_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `leaves_ibfk_2` FOREIGN KEY (`approverId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `leaves_ibfk_3` FOREIGN KEY (`leaveTypeId`) REFERENCES `leavetypes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` VALUES (1,1,'',NULL,NULL,'2017-08-19 00:00:00',1,'2017-08-19 00:00:00',1,'2017-08-18 23:00:52','2017-08-18 23:00:52',2,2,3);
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavetypes`
--

DROP TABLE IF EXISTS `leavetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leavetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `use_allowance` tinyint(1) NOT NULL DEFAULT '1',
  `limit` int(11) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `companyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companyId` (`companyId`),
  CONSTRAINT `leavetypes_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavetypes`
--

LOCK TABLES `leavetypes` WRITE;
/*!40000 ALTER TABLE `leavetypes` DISABLE KEYS */;
INSERT INTO `leavetypes` VALUES (1,'Holiday','#22AA66',1,0,'2017-08-18 22:48:17','2017-08-18 22:48:17',1),(2,'Sick Leave','#459FF3',1,10,'2017-08-18 22:48:17','2017-08-18 22:48:17',1),(3,'Holiday','#22AA66',1,0,'2017-08-18 22:49:34','2017-08-18 22:49:34',2),(4,'Sick Leave','#459FF3',1,10,'2017-08-18 22:49:34','2017-08-18 22:49:34',2),(5,'Holiday','#22AA66',1,0,'2017-08-18 23:10:46','2017-08-18 23:10:46',3),(6,'Sick Leave','#459FF3',1,10,'2017-08-18 23:10:46','2017-08-18 23:10:46',3);
/*!40000 ALTER TABLE `leavetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monday` int(11) NOT NULL DEFAULT '1',
  `tuesday` int(11) NOT NULL DEFAULT '1',
  `wednesday` int(11) NOT NULL DEFAULT '1',
  `thursday` int(11) NOT NULL DEFAULT '1',
  `friday` int(11) NOT NULL DEFAULT '1',
  `saturday` int(11) NOT NULL DEFAULT '2',
  `sunday` int(11) NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_user_id` (`user_id`),
  KEY `schedule_company_id` (`company_id`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sid` varchar(255) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('3_UE1bY2HuxJXu1l2FyNi8VjqiR5qvHD','2017-08-21 16:12:20','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}','2017-08-20 16:12:20','2017-08-20 16:12:20'),('4TfuaAylcqzcAmpM-Ids0dlh9ZTCgfDZ','2017-08-21 16:12:17','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}','2017-08-20 16:12:18','2017-08-20 16:12:18'),('uXhkhMjWZsaaLk_r1Xq_3WFZ-RG66jAx','2017-08-21 16:12:20','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}','2017-08-20 16:12:20','2017-08-20 16:12:20'),('uZtN7T06prwFQfMNrVN-S9E_4SsHuy_f','2017-08-21 16:24:06','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":2}}','2017-08-20 16:12:35','2017-08-20 16:24:06'),('VJ2CliMuRKSYon6KfDyo9DhjxFemh21s','2017-08-19 22:50:36','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}','2017-08-18 22:50:36','2017-08-18 22:50:36'),('w8Qac-O69eMy-87FdeKL-IERtqZ4EZkZ','2017-08-19 23:34:55','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":2}}','2017-08-18 22:50:45','2017-08-18 23:34:55'),('zFSTtQWlS5as7xkGGRupU13R110Xpdbd','2017-08-19 22:50:36','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}','2017-08-18 22:50:36','2017-08-18 22:50:36');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userfeeds`
--

DROP TABLE IF EXISTS `userfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `feed_token` varchar(255) NOT NULL,
  `type` enum('calendar','wallchart','teamview','company') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `userfeeds_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfeeds`
--

LOCK TABLES `userfeeds` WRITE;
/*!40000 ALTER TABLE `userfeeds` DISABLE KEYS */;
INSERT INTO `userfeeds` VALUES (1,'Calendar Feed','05f10a7f-48cd-4477-9cf8-8686da572baa','company','2017-08-18 23:19:29','2017-08-18 23:19:29',2),(2,'Calendar Feed','9dc05a9c-b022-44dd-ac24-05d3e311d187','teamview','2017-08-18 23:19:29','2017-08-18 23:19:29',2),(3,'Calendar Feed','46df10b0-9b7e-418c-9cda-06a7aa58a548','calendar','2017-08-18 23:19:29','2017-08-18 23:19:29',2);
/*!40000 ALTER TABLE `userfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `auto_approve` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `adjustment` int(11) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `companyId` int(11) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `DepartmentId` (`DepartmentId`),
  KEY `users_company_id` (`companyId`),
  KEY `users_lastname` (`lastname`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`DepartmentId`) REFERENCES `departments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test@gmail.com','a34c6b2df7312c6ac66cfde4bba8586b','test','test',0,1,0,'2017-08-18 22:48:18',NULL,0,'2017-08-18 22:48:18','2017-08-18 22:48:18',1,1),(2,'vineet15.yadav@lge.com','a34c6b2df7312c6ac66cfde4bba8586b','vineet','vineet',1,1,0,'2017-08-18 22:49:34',NULL,0,'2017-08-18 22:49:34','2017-08-18 22:49:57',2,2),(3,'euler@ldap.forumsys.com','4707beb82934ca46865404284cadac03','euler','leonhard',0,1,0,'2017-08-18 23:10:46',NULL,0,'2017-08-18 23:10:46','2017-08-18 23:10:46',3,3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-20 22:24:27
