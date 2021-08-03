-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: admin
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `mod_invoicedata`
--

DROP TABLE IF EXISTS `mod_invoicedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_invoicedata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(10) NOT NULL,
  `clientsdetails` text COLLATE utf8_unicode_ci NOT NULL,
  `customfields` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_invoicedata`
--

LOCK TABLES `mod_invoicedata` WRITE;
/*!40000 ALTER TABLE `mod_invoicedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_invoicedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaccounts`
--

DROP TABLE IF EXISTS `tblaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaccounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `currency` int(10) NOT NULL,
  `gateway` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amountin` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fees` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amountout` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `transid` text COLLATE utf8_unicode_ci NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `refundid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `userid` (`userid`),
  KEY `date` (`date`),
  KEY `transid` (`transid`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaccounts`
--

LOCK TABLES `tblaccounts` WRITE;
/*!40000 ALTER TABLE `tblaccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblactivitylog`
--

DROP TABLE IF EXISTS `tblactivitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblactivitylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(10) NOT NULL,
  `ipaddr` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblactivitylog`
--

LOCK TABLES `tblactivitylog` WRITE;
/*!40000 ALTER TABLE `tblactivitylog` DISABLE KEYS */;
INSERT INTO `tblactivitylog` VALUES (1,'2021-08-03 10:49:25','Updated WHMCS Rewrite Rules: new rules applied.','System',0,''),(2,'2021-08-03 10:49:25','URI Path Management Setting \"Rewrite Auto Management\" Enabled','System',0,'');
/*!40000 ALTER TABLE `tblactivitylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladdonmodules`
--

DROP TABLE IF EXISTS `tbladdonmodules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladdonmodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` text COLLATE utf8_unicode_ci NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladdonmodules`
--

LOCK TABLES `tbladdonmodules` WRITE;
/*!40000 ALTER TABLE `tbladdonmodules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladdonmodules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladdons`
--

DROP TABLE IF EXISTS `tbladdons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladdons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `packages` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `billingcycle` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` tinyint(1) NOT NULL,
  `showorder` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `retired` tinyint(1) NOT NULL DEFAULT '0',
  `downloads` text COLLATE utf8_unicode_ci NOT NULL,
  `autoactivate` text COLLATE utf8_unicode_ci NOT NULL,
  `suspendproduct` tinyint(1) NOT NULL,
  `welcomeemail` int(10) NOT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `server_group_id` int(10) NOT NULL DEFAULT '0',
  `weight` int(2) NOT NULL DEFAULT '0',
  `autolinkby` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladdons`
--

LOCK TABLES `tbladdons` WRITE;
/*!40000 ALTER TABLE `tbladdons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladdons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladminlog`
--

DROP TABLE IF EXISTS `tbladminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `adminusername` text COLLATE utf8_unicode_ci NOT NULL,
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logouttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddress` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionid` text COLLATE utf8_unicode_ci NOT NULL,
  `lastvisit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `logouttime` (`logouttime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminlog`
--

LOCK TABLES `tbladminlog` WRITE;
/*!40000 ALTER TABLE `tbladminlog` DISABLE KEYS */;
INSERT INTO `tbladminlog` VALUES (1,'mind','2021-08-03 10:52:05','0000-00-00 00:00:00','172.25.0.1','4h25s8cs5s5kfpuh5vee44gqmq','2021-08-03 10:52:10');
/*!40000 ALTER TABLE `tbladminlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladminperms`
--

DROP TABLE IF EXISTS `tbladminperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminperms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `roleid` int(1) NOT NULL,
  `permid` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid_permid` (`roleid`,`permid`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminperms`
--

LOCK TABLES `tbladminperms` WRITE;
/*!40000 ALTER TABLE `tbladminperms` DISABLE KEYS */;
INSERT INTO `tbladminperms` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,49),(49,1,50),(50,1,51),(51,1,52),(52,1,53),(53,1,54),(54,1,55),(55,1,56),(56,1,57),(57,1,58),(58,1,59),(59,1,60),(60,1,61),(61,1,62),(62,1,63),(63,1,64),(64,1,65),(65,1,66),(66,1,67),(67,1,68),(68,1,69),(69,1,70),(70,1,71),(71,1,72),(72,1,73),(73,1,74),(74,1,75),(75,1,76),(76,1,77),(77,1,78),(78,1,79),(79,1,80),(80,1,81),(81,1,82),(82,1,83),(83,1,84),(84,1,85),(85,1,86),(86,1,87),(87,1,88),(88,1,89),(89,1,90),(90,1,91),(91,1,92),(92,1,93),(93,1,94),(94,1,95),(95,1,96),(96,1,97),(97,1,98),(98,1,99),(99,1,100),(100,1,101),(101,1,102),(102,1,103),(103,1,104),(104,1,105),(105,1,106),(106,1,107),(107,1,108),(108,1,109),(109,1,110),(110,1,111),(111,1,112),(112,1,113),(113,1,114),(114,1,115),(115,1,116),(116,1,117),(117,1,118),(118,1,119),(119,1,120),(120,1,122),(121,1,123),(122,1,124),(123,1,125),(124,1,125),(125,1,126),(126,1,126),(127,1,127),(128,1,128),(129,1,129),(130,1,131),(131,1,132),(132,1,133),(133,1,134),(134,1,135),(135,1,136),(136,1,137),(137,1,138),(138,1,139),(139,1,139),(140,1,140),(141,1,141),(142,1,142),(143,1,143),(144,1,144),(145,1,145),(146,1,146),(231,1,147),(233,1,147),(232,1,148),(147,2,1),(148,2,2),(149,2,3),(150,2,4),(151,2,5),(152,2,6),(153,2,7),(154,2,8),(155,2,9),(156,2,10),(157,2,11),(158,2,12),(159,2,13),(160,2,14),(161,2,15),(162,2,16),(163,2,17),(164,2,18),(165,2,19),(166,2,20),(167,2,21),(168,2,22),(169,2,23),(170,2,24),(171,2,25),(172,2,26),(173,2,27),(174,2,28),(175,2,29),(176,2,30),(177,2,31),(178,2,32),(179,2,33),(180,2,34),(181,2,35),(182,2,36),(183,2,37),(184,2,38),(185,2,39),(186,2,40),(187,2,41),(188,2,42),(189,2,43),(190,2,44),(191,2,45),(192,2,46),(193,2,47),(194,2,49),(195,2,50),(196,2,51),(197,2,52),(198,2,71),(199,2,73),(200,2,85),(201,2,98),(202,2,99),(203,2,101),(204,2,104),(205,2,105),(206,2,110),(207,2,120),(208,2,123),(209,2,124),(210,2,125),(211,2,125),(212,2,126),(213,2,126),(214,2,128),(215,2,129),(216,2,145),(217,3,3),(218,3,38),(219,3,39),(220,3,40),(221,3,41),(222,3,42),(223,3,43),(224,3,44),(225,3,50),(226,3,105),(227,3,125),(228,3,125),(229,3,126),(230,3,128);
/*!40000 ALTER TABLE `tbladminperms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladminroles`
--

DROP TABLE IF EXISTS `tbladminroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminroles` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `widgets` text COLLATE utf8_unicode_ci NOT NULL,
  `reports` text COLLATE utf8_unicode_ci NOT NULL,
  `systememails` int(1) NOT NULL,
  `accountemails` int(1) NOT NULL,
  `supportemails` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminroles`
--

LOCK TABLES `tbladminroles` WRITE;
/*!40000 ALTER TABLE `tbladminroles` DISABLE KEYS */;
INSERT INTO `tbladminroles` VALUES (1,'Full Administrator','activity_log,getting_started,income_forecast,income_overview,my_notes,network_status,open_invoices,orders_overview,paypal_addon,admin_activity,client_activity,system_overview,todo_list,whmcs_news,supporttickets_overview,calendar','',1,1,1),(2,'Sales Operator','activity_log,getting_started,income_forecast,income_overview,my_notes,network_status,open_invoices,orders_overview,paypal_addon,client_activity,todo_list,whmcs_news,supporttickets_overview,calendar','',0,1,1),(3,'Support Operator','activity_log,getting_started,my_notes,todo_list,whmcs_news,supporttickets_overview,calendar','',0,0,1);
/*!40000 ALTER TABLE `tbladminroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladmins`
--

DROP TABLE IF EXISTS `tbladmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladmins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `roleid` int(1) NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `passwordhash` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `authmodule` text COLLATE utf8_unicode_ci NOT NULL,
  `authdata` text COLLATE utf8_unicode_ci NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `signature` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `template` text COLLATE utf8_unicode_ci NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `disabled` int(1) NOT NULL,
  `loginattempts` int(1) NOT NULL,
  `supportdepts` text COLLATE utf8_unicode_ci NOT NULL,
  `ticketnotifications` text COLLATE utf8_unicode_ci NOT NULL,
  `homewidgets` text COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_reset_data` text COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_expiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hidden_widgets` text COLLATE utf8_unicode_ci NOT NULL,
  `widget_order` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmins`
--

LOCK TABLES `tbladmins` WRITE;
/*!40000 ALTER TABLE `tbladmins` DISABLE KEYS */;
INSERT INTO `tbladmins` VALUES (1,'9f1c9019-3496-457f-a482-a63cfc5647d1',1,'mind','$2y$10$34YmyAh1a26aj32ilJbwuuZJnYuIjFOiPvyipzFNIikUDBW0teW.C','$2y$10$R9z1407PXkf2b7PIrykXdu3kvm1s4gBoRhsM6yh7BSU9nz3ySmfja','','','mind','mind','mind@mind.mind','','Welcome to WHMCS!  Please ensure you have setup the cron job to automate tasks','blend','',0,0,',','','getting_started:true,orders_overview:true,supporttickets_overview:true,my_notes:true,client_activity:true,open_invoices:true,activity_log:true|income_overview:true,system_overview:true,whmcs_news:true,sysinfo:true,admin_activity:true,todo_list:true,network_status:true,income_forecast:true|','','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tbladmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladminsecurityquestions`
--

DROP TABLE IF EXISTS `tbladminsecurityquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminsecurityquestions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminsecurityquestions`
--

LOCK TABLES `tbladminsecurityquestions` WRITE;
/*!40000 ALTER TABLE `tbladminsecurityquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladminsecurityquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliates`
--

DROP TABLE IF EXISTS `tblaffiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `clientid` int(10) NOT NULL,
  `visitors` int(1) NOT NULL,
  `paytype` text COLLATE utf8_unicode_ci NOT NULL,
  `payamount` decimal(10,2) NOT NULL,
  `onetime` int(1) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `withdrawn` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliates`
--

LOCK TABLES `tblaffiliates` WRITE;
/*!40000 ALTER TABLE `tblaffiliates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliates_hits`
--

DROP TABLE IF EXISTS `tblaffiliates_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliates_hits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `affiliate_id` (`affiliate_id`,`referrer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliates_hits`
--

LOCK TABLES `tblaffiliates_hits` WRITE;
/*!40000 ALTER TABLE `tblaffiliates_hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliates_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliates_referrers`
--

DROP TABLE IF EXISTS `tblaffiliates_referrers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliates_referrers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `affiliate_id` (`affiliate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliates_referrers`
--

LOCK TABLES `tblaffiliates_referrers` WRITE;
/*!40000 ALTER TABLE `tblaffiliates_referrers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliates_referrers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliatesaccounts`
--

DROP TABLE IF EXISTS `tblaffiliatesaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliatesaccounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `lastpaid` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliatesaccounts`
--

LOCK TABLES `tblaffiliatesaccounts` WRITE;
/*!40000 ALTER TABLE `tblaffiliatesaccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliatesaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliateshistory`
--

DROP TABLE IF EXISTS `tblaffiliateshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliateshistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `date` date NOT NULL,
  `affaccid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliateshistory`
--

LOCK TABLES `tblaffiliateshistory` WRITE;
/*!40000 ALTER TABLE `tblaffiliateshistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliateshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliatespending`
--

DROP TABLE IF EXISTS `tblaffiliatespending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliatespending` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affaccid` int(10) NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `clearingdate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clearingdate` (`clearingdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliatespending`
--

LOCK TABLES `tblaffiliatespending` WRITE;
/*!40000 ALTER TABLE `tblaffiliatespending` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliatespending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliateswithdrawals`
--

DROP TABLE IF EXISTS `tblaffiliateswithdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliateswithdrawals` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliateswithdrawals`
--

LOCK TABLES `tblaffiliateswithdrawals` WRITE;
/*!40000 ALTER TABLE `tblaffiliateswithdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliateswithdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblannouncements`
--

DROP TABLE IF EXISTS `tblannouncements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblannouncements` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `announcement` text COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `parentid` int(10) NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblannouncements`
--

LOCK TABLES `tblannouncements` WRITE;
/*!40000 ALTER TABLE `tblannouncements` DISABLE KEYS */;
INSERT INTO `tblannouncements` VALUES (1,'2021-08-03 10:49:25','Thank you for choosing WHMCS!','<p>Welcome to <a title=\"WHMCS\" href=\"http://whmcs.com\" target=\"_blank\">WHMCS</a>!\n You have made a great choice and we want to help you get up and running as\n quickly as possible.</p>\n<p>This is a sample announcement. Announcements are a great way to keep your\n customers informed about news and special offers. You can edit or delete this\n announcement by logging into the admin area and navigating to <em>Support &gt; \n Announcements</em>.</p>\n<p>If at any point you get stuck, our support team is available 24x7 to\n assist you. Simply visit <a title=\"www.whmcs.com/support\" \n href=\"https://www.whmcs.com/support\" target=\"_blank\">www.whmcs.com/support</a>\n to request assistance.</p>',1,0,'','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tblannouncements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapi_roles`
--

DROP TABLE IF EXISTS `tblapi_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapi_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `permissions` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapi_roles`
--

LOCK TABLES `tblapi_roles` WRITE;
/*!40000 ALTER TABLE `tblapi_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapi_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapilog`
--

DROP TABLE IF EXISTS `tblapilog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapilog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request` text COLLATE utf8_unicode_ci NOT NULL,
  `response` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `headers` text COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapilog`
--

LOCK TABLES `tblapilog` WRITE;
/*!40000 ALTER TABLE `tblapilog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapilog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapplinks`
--

DROP TABLE IF EXISTS `tblapplinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapplinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapplinks`
--

LOCK TABLES `tblapplinks` WRITE;
/*!40000 ALTER TABLE `tblapplinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapplinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapplinks_links`
--

DROP TABLE IF EXISTS `tblapplinks_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapplinks_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `applink_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_label` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapplinks_links`
--

LOCK TABLES `tblapplinks_links` WRITE;
/*!40000 ALTER TABLE `tblapplinks_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapplinks_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapplinks_log`
--

DROP TABLE IF EXISTS `tblapplinks_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapplinks_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `applink_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapplinks_log`
--

LOCK TABLES `tblapplinks_log` WRITE;
/*!40000 ALTER TABLE `tblapplinks_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapplinks_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblauthn_account_links`
--

DROP TABLE IF EXISTS `tblauthn_account_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblauthn_account_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `remote_user_id` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `metadata` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblauthn_account_links_provider_remote_user_id_unique` (`provider`,`remote_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblauthn_account_links`
--

LOCK TABLES `tblauthn_account_links` WRITE;
/*!40000 ALTER TABLE `tblauthn_account_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblauthn_account_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblauthn_config`
--

DROP TABLE IF EXISTS `tblauthn_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblauthn_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `setting` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblauthn_config_provider_setting_unique` (`provider`,`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblauthn_config`
--

LOCK TABLES `tblauthn_config` WRITE;
/*!40000 ALTER TABLE `tblauthn_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblauthn_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbankaccts`
--

DROP TABLE IF EXISTS `tblbankaccts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbankaccts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_method_id` int(11) NOT NULL DEFAULT '0',
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `acct_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_data` blob NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tblbankaccts_pay_method_id` (`pay_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbankaccts`
--

LOCK TABLES `tblbankaccts` WRITE;
/*!40000 ALTER TABLE `tblbankaccts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbankaccts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbannedemails`
--

DROP TABLE IF EXISTS `tblbannedemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbannedemails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbannedemails`
--

LOCK TABLES `tblbannedemails` WRITE;
/*!40000 ALTER TABLE `tblbannedemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbannedemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbannedips`
--

DROP TABLE IF EXISTS `tblbannedips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbannedips` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbannedips`
--

LOCK TABLES `tblbannedips` WRITE;
/*!40000 ALTER TABLE `tblbannedips` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbannedips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbillableitems`
--

DROP TABLE IF EXISTS `tblbillableitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbillableitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hours` decimal(5,1) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `recur` int(5) NOT NULL DEFAULT '0',
  `recurcycle` text COLLATE utf8_unicode_ci NOT NULL,
  `recurfor` int(5) NOT NULL DEFAULT '0',
  `invoiceaction` int(1) NOT NULL,
  `duedate` date NOT NULL,
  `invoicecount` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbillableitems`
--

LOCK TABLES `tblbillableitems` WRITE;
/*!40000 ALTER TABLE `tblbillableitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbillableitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbundles`
--

DROP TABLE IF EXISTS `tblbundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbundles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `validfrom` date NOT NULL,
  `validuntil` date NOT NULL,
  `uses` int(4) NOT NULL,
  `maxuses` int(4) NOT NULL,
  `itemdata` text COLLATE utf8_unicode_ci NOT NULL,
  `allowpromo` int(1) NOT NULL,
  `showgroup` int(1) NOT NULL,
  `gid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `displayprice` decimal(10,2) NOT NULL,
  `sortorder` int(3) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbundles`
--

LOCK TABLES `tblbundles` WRITE;
/*!40000 ALTER TABLE `tblbundles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcalendar`
--

DROP TABLE IF EXISTS `tblcalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcalendar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `start` int(10) NOT NULL,
  `end` int(10) NOT NULL,
  `allday` int(1) NOT NULL,
  `adminid` int(10) NOT NULL,
  `recurid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcalendar`
--

LOCK TABLES `tblcalendar` WRITE;
/*!40000 ALTER TABLE `tblcalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcancelrequests`
--

DROP TABLE IF EXISTS `tblcancelrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcancelrequests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `relid` int(10) NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcancelrequests`
--

LOCK TABLES `tblcancelrequests` WRITE;
/*!40000 ALTER TABLE `tblcancelrequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcancelrequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientgroups`
--

DROP TABLE IF EXISTS `tblclientgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `groupcolour` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discountpercent` decimal(10,2) unsigned DEFAULT '0.00',
  `susptermexempt` text COLLATE utf8_unicode_ci,
  `separateinvoices` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientgroups`
--

LOCK TABLES `tblclientgroups` WRITE;
/*!40000 ALTER TABLE `tblclientgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclientgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclients`
--

DROP TABLE IF EXISTS `tblclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclients` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `companyname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci NOT NULL,
  `address2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `state` text COLLATE utf8_unicode_ci NOT NULL,
  `postcode` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` text COLLATE utf8_unicode_ci NOT NULL,
  `tax_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `authmodule` text COLLATE utf8_unicode_ci NOT NULL,
  `authdata` text COLLATE utf8_unicode_ci NOT NULL,
  `currency` int(10) NOT NULL,
  `defaultgateway` text COLLATE utf8_unicode_ci NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `taxexempt` tinyint(1) NOT NULL,
  `latefeeoveride` tinyint(1) NOT NULL,
  `overideduenotices` tinyint(1) NOT NULL,
  `separateinvoices` tinyint(1) NOT NULL,
  `disableautocc` tinyint(1) NOT NULL,
  `datecreated` date NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `billingcid` int(10) NOT NULL,
  `securityqid` int(10) NOT NULL,
  `securityqans` text COLLATE utf8_unicode_ci NOT NULL,
  `groupid` int(10) NOT NULL,
  `cardtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cardlastfour` text COLLATE utf8_unicode_ci NOT NULL,
  `cardnum` blob NOT NULL,
  `startdate` blob NOT NULL,
  `expdate` blob NOT NULL,
  `issuenumber` blob NOT NULL,
  `bankname` text COLLATE utf8_unicode_ci NOT NULL,
  `banktype` text COLLATE utf8_unicode_ci NOT NULL,
  `bankcode` blob NOT NULL,
  `bankacct` blob NOT NULL,
  `gatewayid` text COLLATE utf8_unicode_ci NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `host` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive','Closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `pwresetkey` text COLLATE utf8_unicode_ci NOT NULL,
  `emailoptout` int(1) NOT NULL,
  `marketing_emails_opt_in` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overrideautoclose` int(1) NOT NULL,
  `allow_sso` tinyint(1) NOT NULL DEFAULT '1',
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pwresetexpiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `firstname_lastname` (`firstname`(32),`lastname`(32)),
  KEY `email` (`email`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclients`
--

LOCK TABLES `tblclients` WRITE;
/*!40000 ALTER TABLE `tblclients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientsfiles`
--

DROP TABLE IF EXISTS `tblclientsfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientsfiles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `adminonly` int(1) NOT NULL,
  `dateadded` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientsfiles`
--

LOCK TABLES `tblclientsfiles` WRITE;
/*!40000 ALTER TABLE `tblclientsfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclientsfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblconfiguration`
--

DROP TABLE IF EXISTS `tblconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblconfiguration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `setting` (`setting`(32))
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblconfiguration`
--

LOCK TABLES `tblconfiguration` WRITE;
/*!40000 ALTER TABLE `tblconfiguration` DISABLE KEYS */;
INSERT INTO `tblconfiguration` VALUES (1,'Language','English','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'CompanyName','Company Name','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Email','changeme@changeme.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Domain','http://www.yourdomain.com/','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'LogoURL','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'AutoSuspension','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'AutoSuspensionDays','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'CreateInvoiceDaysBefore','14','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'AffiliateEnabled','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'AffiliateEarningPercent','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'AffiliateBonusDeposit','0.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'AffiliatePayout','25.00','0000-00-00 00:00:00','2018-04-18 09:21:37'),(13,'AffiliateLinks','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'ActivityLimit','10000','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'DateFormat','DD/MM/YYYY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'PreSalesQuestions','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Template','six','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'AllowRegister','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'AllowTransfer','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'AllowOwnDomain','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'EnableTOSAccept','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'TermsOfService','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'AllowLanguageChange','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'CutUtf8Mb4','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'AllowCustomerChangeInvoiceGateway','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'DefaultNameserver1','ns1.yourdomain.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'DefaultNameserver2','ns2.yourdomain.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'SendInvoiceReminderDays','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'SendReminder','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'NumRecordstoDisplay','50','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'BCCMessages','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'MailType','mail','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'SMTPHost','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'SMTPUsername','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'SMTPPassword','zAUN4WdG8mWRlZCQZwk2Z2ippXU=','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'SMTPPort','25','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'ShowCancellationButton','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'UpdateStatsAuto','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'InvoicePayTo','Address goes here...','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'SendAffiliateReportMonthly','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'InvalidLoginBanLength','15','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Signature','Signature goes here...','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'DomainOnlyOrderEnabled','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'TicketBannedAddresses','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'SendEmailNotificationonUserDetailsChange','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'TicketAllowedFileTypes','.jpg,.gif,.jpeg,.png,.txt,.pdf','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'CloseInactiveTickets','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'InvoiceLateFeeAmount','10.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'AutoTermination','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'AutoTerminationDays','30','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'RegistrarAdminFirstName','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'RegistrarAdminLastName','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'RegistrarAdminCompanyName','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'RegistrarAdminAddress1','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'RegistrarAdminAddress2','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'RegistrarAdminCity','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'RegistrarAdminStateProvince','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'RegistrarAdminCountry','US','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'RegistrarAdminPostalCode','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'RegistrarAdminPhone','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'RegistrarAdminFax','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'RegistrarAdminEmailAddress','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'RegistrarAdminUseClientDetails','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Charset','utf-8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'AutoUnsuspend','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'RunScriptonCheckOut','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'License','MzI3NzdkODRiOTFiZTJlYTljNTBiMDBlYmMzNzA4ZTdmMmNkYzZkYkhaMGhYWnVKQ0xpNDJia1JXUWdR\nbmJsMVdabkZtYmgxRUkwTldacTltY1FKaU9pVVdiaDVtSTd4U2ZpVW1kcFIzWUJKaU9pTVhkMEZHZHpK\nQ0xpRXpNdElUTXRrVE93SWpJNklTWjBGR1psVkhaMGhYWnVKQ0xpTVhaMEZHWndWRklrNVdZZ1FuY3ZC\nSGMxTmxJNklTWnRGbWJpc0hMOUpTWjJsR2RqRmtJNkl5YzFSWFkwTm5Jc0lTTXowaU14MFNPNUFqTWlv\naklsUlhZa1ZXZGtSSGVsNW1Jc0lDYmhaM2J0Vm1VZ2NtYnBSbWJoSm5RaW9qSWwxV1l1SnllYnBqSXo1\nMmJrUldZaXdpSXhNVEx5RVRMNWtETXlJaU9pVUdkaFJXWjFSR2Q0Vm1iaXdpSXgwQ090Z1RNd0lqSTZJ\nU1owRkdablZtY2l3aUl6NENPdWNqSTZJaWJ2bDJjeVZtZGl3aUl6QVRMNEFUTHhJRE15SWlPaVVHZGhS\nMmFqVkdhakpDTGl3V2IwaDJMY2QzZDM5Q1h5Rm1kdndsSTZJeWN5bEdaa2xHYmhabklzSXlNdUFqTDFJ\nakx5Y1RNaW9qSXpCWGFrbEdiaFpuSXNJU011QWpMdzR5TnlFakk2SXljdWxXWXQ5R1prbEdiaFpuSXNJ\nU1p0bEdWZ1VtYlBKaU9pVUdiamwzWW41V2FzeFdhaUpDTGlVakk2SUNacFIzWTFSMmJ5Qm5Jc0l5TXVn\nakwzQXlVRDFFU1hKaU9pVVdiaDVHZGpWSFp2SkhjaXdpSTFKbkx5Vm1ZaVYyVnZKSFVpb2pJbDFXWXVS\nV1p5VkdkemwyWmxKbklzSWlicDFHWmhKaU9pa1hackpDTGlVbWRwUjNZQkppT2lNWGQwRkdkekp5ZTY1\nYzVjNjY3MTVmZGQyMTJiYTA5M2RhYjUzYmY0MGNhZmM2Mjc5Mzg9MG5JMlVHT21CRE56Y1ROMmtUWmtW\nVE9sVkdPNVlqTW1Gak16VVRNNFVHTXhRbU1rSm1Od1VUTnhJaU9pZzJjaGhtSXMwVmZpVW1kcFIzWUJK\naU9pTVhkMEZHZHpKQ0xpRXpNdElUTXRrVE93SWpJNklTWjBGR1psVkhaMGhYWnVKQ0xpY21icFJtYmhK\nblFnOG1UZ2tIYm9SbmJ2MUVJMEZHYURCU1oybEdUaW9qSWwxV1l1SnllczBuSWxaWGEwTldRaW9qSXpW\nSGRoUjNjaXdpSXhNVEx5RVRMNWtETXlJaU9pVUdkaFJXWjFSR2Q0Vm1iaXdpSXU5R1prRkVJbGRXWXJO\nV1lRQlNac0pXWXlWM1pwWm1idk5rSTZJU1p0Rm1iaXNITDlKU1oybEdkakZrSTZJeWMxUlhZME5uSXNJ\nU016MGlNeDBTTzVBak1pb2pJbFJYWWtWV2RrUkhlbDVtSXNJQ2N3RkVJa2wyYnlSbWJCSmlPaVVXYmg1\nbUk3eFNmaVVtZHBSM1lCSmlPaU1YZDBGR2R6SkNMaUV6TXRJVE10a1RPd0lqSTZJU1owRkdabFZIWjBo\nWFp1SkNMaUFIY0JCU1p1OUdhUWxtSTZJU1p0Rm1iaXNITDlKU1oybEdkakZrSTZJeWMxUlhZME5uSXNJ\nU016MGlNeDBTTzVBak1pb2pJbFJYWWtWV2RrUkhlbDVtSXNJaWJ2bEdkcFJXUmdVR2JwSjJiTkppT2lV\nV2JoNW1JN3hTZmlVbWRwUjNZQkppT2lNWGQwRkdkekpDTGlFek10SVRNdGtUT3dJakk2SVNaMEZHWmxW\nSFowaFhadUpDTGk0MmJrUldRZ2NtYnBObmJsTldhTUppT2lVV2JoNW1JN3hTZmlVbWRwUjNZQkppT2lN\nWGQwRkdkekpDTGlFek10SVRNdGtUT3dJakk2SVNaMEZHWmxWY2IyN2IzYThiOGFkMjgyYjIwNGIwNDM3\nMjc5ZjFkZDk3NzA3YjI4ZQ==','0000-00-00 00:00:00','2021-08-03 09:51:59'),(68,'OrderFormTemplate','standard_cart','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'AllowDomainsTwice','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'AddLateFeeDays','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'TaxEnabled','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'DefaultCountry','US','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'AutoRedirectoInvoice','gateway','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'EnablePDFInvoices','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'CaptchaSetting','offloggedin','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'SupportTicketOrder','ASC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'SendFirstOverdueInvoiceReminder','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'TaxType','Exclusive','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'DomainDNSManagement','5.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'DomainEmailForwarding','5.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'InvoiceIncrement','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'ContinuousInvoiceGeneration','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'AutoCancellationRequests','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'SystemEmailsFromName','WHMCompleteSolution','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'SystemEmailsFromEmail','noreply@yourdomain.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'AllowClientRegister','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'BulkCheckTLDs','.com,.net','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'CreditOnDowngrade','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'TaxDomains','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'TaxLateFee','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'MarketingEmailConvert','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'ProductMonthlyPricingBreakdown','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'LateFeeType','Percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'SendSecondOverdueInvoiceReminder','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'SendThirdOverdueInvoiceReminder','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'DomainIDProtection','5.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'DomainRenewalNotices','30,7,-3,0,0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'SequentialInvoiceNumbering','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'SequentialInvoiceNumberFormat','{NUMBER}','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'SequentialInvoiceNumberValue','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'DefaultNameserver3','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'DefaultNameserver4','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'AffiliatesDelayCommission','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'SupportModule','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'AddFundsEnabled','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'AddFundsMinimum','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'AddFundsMaximum','100','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'AddFundsMaximumBalance','300','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'CCProcessDaysBefore','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'CCAttemptOnlyOnce','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'CCDaySendExpiryNotices','25','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'BulkDomainSearchEnabled','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'AutoRenewDomainsonPayment','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'DomainAutoRenewDefault','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'CCRetryEveryWeekFor','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'SupportTicketKBSuggestions','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'DailyEmailBackup','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'FTPBackupHostname','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'FTPBackupUsername','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'FTPBackupPassword','xJaC9nq52zpTRP0k4VUxzZwYZQE=','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'FTPBackupDestination','/','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'TaxL2Compound','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'SEOFriendlyUrls','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'ShowCCIssueStart','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'TicketRatingEnabled','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'NetworkIssuesRequireLogin','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'ShowNotesFieldonCheckout','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'RequireLoginforClientTickets','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'EmailCSS','.ExternalClass,.ExternalClass div,.ExternalClass font,.ExternalClass p,.ExternalClass span,.ExternalClass td,h1,img{line-height:100%}h1,h2{display:block;font-family:Helvetica;font-style:normal;font-weight:700}#outlook a{padding:0}.ExternalClass,.ReadMsgBody{width:100%}a,blockquote,body,li,p,table,td{-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%}table,td{mso-table-lspace:0;mso-table-rspace:0}img{-ms-interpolation-mode:bicubic;border:0;height:auto;outline:0;text-decoration:none}table{border-collapse:collapse!important}#bodyCell,#bodyTable,body{height:100%!important;margin:0;padding:0;width:100%!important}#bodyCell{padding:20px;}#templateContainer{width:600px;border:1px solid #ddd;background-color:#fff}#bodyTable,body{background-color:#FAFAFA}h1{color:#202020!important;font-size:26px;letter-spacing:normal;text-align:left;margin:0 0 10px}h2{color:#404040!important;font-size:20px;line-height:100%;letter-spacing:normal;text-align:left;margin:0 0 10px}h3,h4{display:block;font-style:italic;font-weight:400;letter-spacing:normal;text-align:left;margin:0 0 10px;font-family:Helvetica;line-height:100%}h3{color:#606060!important;font-size:16px}h4{color:grey!important;font-size:14px}.headerContent{background-color:#f8f8f8;border-bottom:1px solid #ddd;color:#505050;font-family:Helvetica;font-size:20px;font-weight:700;line-height:100%;text-align:left;vertical-align:middle;padding:0}.bodyContent,.footerContent{font-family:Helvetica;line-height:150%;text-align:left;}.footerContent{text-align:center}.bodyContent pre{padding:15px;background-color:#444;color:#f8f8f8;border:0}.bodyContent pre code{white-space:pre;word-break:normal;word-wrap:normal}.bodyContent table{margin:10px 0;background-color:#fff;border:1px solid #ddd}.bodyContent table th{padding:4px 10px;background-color:#f8f8f8;border:1px solid #ddd;font-weight:700;text-align:center}.bodyContent table td{padding:3px 8px;border:1px solid #ddd}.table-responsive{border:0}.bodyContent a{word-break:break-all}.headerContent a .yshortcuts,.headerContent a:link,.headerContent a:visited{color:#1f5d8c;font-weight:400;text-decoration:underline}#headerImage{height:auto;max-width:600px;padding:20px}#templateBody{background-color:#fff}.bodyContent{color:#505050;font-size:14px;padding:20px}.bodyContent a .yshortcuts,.bodyContent a:link,.bodyContent a:visited{color:#1f5d8c;font-weight:400;text-decoration:underline}.bodyContent a:hover{text-decoration:none}.bodyContent img{display:inline;height:auto;max-width:560px}.footerContent{color:grey;font-size:12px;padding:20px}.footerContent a .yshortcuts,.footerContent a span,.footerContent a:link,.footerContent a:visited{color:#606060;font-weight:400;text-decoration:underline}@media only screen and (max-width:640px){h1,h2,h3,h4{line-height:100%!important}#templateContainer{max-width:600px!important;width:100%!important}#templateContainer,body{width:100%!important}a,blockquote,body,li,p,table,td{-webkit-text-size-adjust:none!important}body{min-width:100%!important}#bodyCell{padding:10px!important}h1{font-size:24px!important}h2{font-size:20px!important}h3{font-size:18px!important}h4{font-size:16px!important}#templatePreheader{display:none!important}.headerContent{font-size:20px!important;line-height:125%!important}.footerContent{font-size:14px!important;line-height:115%!important}.footerContent a{display:block!important}.hide-mobile{display:none;}}','0000-00-00 00:00:00','2018-04-18 09:21:38'),(131,'CurrencyAutoUpdateExchangeRates','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'CurrencyAutoUpdateProductPrices','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'RequiredPWStrength','50','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'MaintenanceMode','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'MaintenanceModeMessage','We are currently performing maintenance and will be back shortly.','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'SkipFraudForExisting','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'SMTPSSL','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'ContactFormDept','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'ContactFormTo','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'TicketEscalationLastRun','2009-01-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'APIAllowedIPs','a:1:{i:0;a:2:{s:2:\"ip\";s:0:\"\";s:4:\"note\";s:0:\"\";}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'NOMD5','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'DisableSessionIPCheck','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'DisableSupportTicketReplyEmailsLogging','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'OverageBillingMethod','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'CCAllowCustomerDelete','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'CreateDomainInvoiceDaysBefore','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'NoInvoiceEmailOnOrder','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'TaxInclusiveDeduct','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'LateFeeMinimum','0.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'AutoProvisionExistingOnly','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'EnableDomainRenewalOrders','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'EnableMassPay','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'NoAutoApplyCredit','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'CreateInvoiceDaysBeforeMonthly','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'CreateInvoiceDaysBeforeQuarterly','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'CreateInvoiceDaysBeforeSemiAnnually','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'CreateInvoiceDaysBeforeAnnually','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'CreateInvoiceDaysBeforeBiennially','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'CreateInvoiceDaysBeforeTriennially','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'ClientsProfileUneditableFields','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'ClientDisplayFormat','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'CCDoNotRemoveOnExpiry','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,'GenerateRandomUsername','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,'AddFundsRequireOrder','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,'GroupSimilarLineItems','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,'ProrataClientsAnniversaryDate','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,'TCPDFFont','helvetica','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,'CancelInvoiceOnCancellation','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,'AttachmentThumbnails','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,'EmailGlobalHeader','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset={$charset}\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\">\n        <style type=\"text/css\">\n            [EmailCSS]\n        </style>\n    </head>\n    <body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\n        <center>\n            <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" id=\"bodyTable\">\n                <tr>\n                    <td align=\"center\" valign=\"top\" id=\"bodyCell\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"templateContainer\">\n                            <tr>\n                                <td align=\"center\" valign=\"top\">\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"templateHeader\">\n                                        <tr>\n                                            <td valign=\"top\" class=\"headerContent\">\n                                                <a href=\"{$company_domain}\">\n                                                    <img src=\"{$company_logo_url}\" style=\"max-width:600px;padding:20px 20px 0 20px\" id=\"headerImage\" alt=\"{$company_name}\" />\n                                            </td>\n                                        </tr>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td align=\"center\" valign=\"top\">\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"templateBody\">\n                                        <tr>\n                                            <td valign=\"top\" class=\"bodyContent\">','0000-00-00 00:00:00','2018-04-18 09:21:38'),(173,'EmailGlobalFooter','</td>\n                                        </tr>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td align=\"center\" valign=\"top\">\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"templateFooter\">\n                                        <tr>\n                                            <td valign=\"top\" class=\"footerContent\">\n                                                &nbsp;<a href=\"{$company_domain}\">visit our website</a>\n                                                <span class=\"hide-mobile\"> | </span>\n                                                <a href=\"{$whmcs_url}\">log in to your account</a>\n                                                <span class=\"hide-mobile\"> | </span>\n                                                <a href=\"{$whmcs_url}submitticket.php\">get support</a>&nbsp;<br />\n                                                Copyright &copy; {$company_name}, All rights reserved.\n                                            </td>\n                                        </tr>\n                                    </table>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </center>\n    </body>\n</html>','0000-00-00 00:00:00','2018-04-18 09:21:38'),(174,'DomainSyncEnabled','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,'DomainSyncNextDueDate','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,'DomainSyncNextDueDateDays','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,'TicketMask','%n%n%n%n%n%n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,'AutoClientStatusChange','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,'AllowClientsEmailOptOut','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,'BannedSubdomainPrefixes','mail,mx,gapps,gmail,webmail,cpanel,whm,ftp,clients,billing,members,login,accounts,access','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,'FreeDomainAutoRenewRequiresProduct','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,'DomainToDoListEntries','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,'Version','7.8.3-release.1','0000-00-00 00:00:00','2021-08-03 09:49:21'),(184,'OrderDaysGrace','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,'OrderFormSidebarToggle','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,'CutUtf8Mb4','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,'UpdaterLatestVersion','7.5.1-release.1','2018-04-18 09:21:38','2018-04-18 09:21:38'),(188,'UpdaterLatestBetaVersion','7.5.1-release.1','2018-04-18 09:21:38','2018-04-18 09:21:38'),(189,'UpdaterLatestStableVersion','7.5.1-release.1','2018-04-18 09:21:38','2018-04-18 09:21:38'),(190,'UpdaterLatestSupportAndUpdatesVersion','7.5.1-release.1','2018-04-18 09:21:39','2018-04-18 09:21:39'),(191,'DailyCronExecutionHour','09','2018-04-18 09:21:39','2018-04-18 09:21:39'),(192,'PremiumDomains','0','2018-04-18 14:21:39','2018-04-18 14:21:39'),(193,'UriRewriteAutoManage','1','2018-04-18 09:21:40','2021-08-03 09:49:25'),(194,'InstanceID','y551iLvnhYt7','2018-04-18 09:21:41','2018-04-18 09:21:41'),(195,'token_namespaces','a:3:{s:13:\"WHMCS.default\";b:1;s:19:\"WHMCS.admin.default\";b:1;s:19:\"WHMCS.domainchecker\";b:0;}','2018-04-18 09:21:41','2018-04-18 09:21:41'),(196,'RouteUriPathMode','basic','2018-04-18 09:21:42','2018-04-18 09:21:42'),(197,'ReversalChangeInvoiceStatus','1','2018-04-18 09:21:42','2018-04-18 09:21:42'),(198,'ReversalChangeDueDates','1','2018-04-18 09:21:42','2018-04-18 09:21:42'),(199,'ActiveBackupSystems','','2018-04-18 09:21:42','2018-04-18 09:21:42'),(200,'PhoneNumberDropdown','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,'EmailMarketingOptInMessage','We would like to send you occasional news, information and special offers by email. To join our mailing list, simply tick the box below. You can unsubscribe at any time.','2018-04-18 14:21:43','2018-04-18 14:21:43'),(202,'DomainExpirationFeeHandling','existing','2018-04-18 14:21:43','2018-04-18 14:21:43'),(203,'TaxPerLineItem','1','2018-04-18 14:21:43','2018-04-18 14:21:43'),(204,'AdminUserNamesWithSpaces','0','2018-04-18 09:21:43','2018-04-18 09:21:43'),(205,'EnableSafeInclude','1','2018-04-18 14:21:43','2018-04-18 14:21:43'),(206,'ModuleHooks','','2018-04-18 09:21:43','2018-04-18 09:21:43'),(207,'AddonModulesHooks','','2018-04-18 09:21:43','2018-04-18 09:21:43'),(208,'WHMCSUpdatePinVersion','stable','2018-04-18 09:21:43','2018-04-18 09:21:43'),(209,'MemberPubKey','+br5lw02EqZUeHdqfcG5jJcEpvJ2RgsXVrKoJT1mnlhrewSRI3arCqJRn82Kd3QYWvLncC4KMYxsgMgDATjMxzXf7ckxfV8ZcRIACRv9Yw9ikOCha7m5FVFXI/wh3fPfLtHpDQAqcBgPcz6uHi2wuZNuStIcTIrjs6qq8HhnzhnIGdMeMLcCKRUsKtqu0vZbm1VIA+4pbjFF36BSEFRIMD3YAq+hX04ndcX6seX0jgLf2azZLJy4Js3nVTwYqUHN4CZSWtRvwtchG14xGyT4yImxNSqe+XuGn/NmARrPa/BgzQXA5ghdqTYxhcCym0rxy0W3HVOrbTnVFlRb0krJN7R9pPC09uuQwKhFe0BMci8PxnAqGaRCwEkt0gqlVNzytVs6VA273danddbRxOg/7XQ39Mv6RLa8zxegn9RkJGLYg3xt5ALK5dSb7x7pnDsC+B6zy8ifA9lGfZU8D5OJEUe0PlC70xYBoVtEgf3XL/ZFEvOprVOxVGI4A0MctGsmO7YbWETlX9CjZvDGjh4ZLZWf4UUCz8xpgLIyvGiIfG8RCglvCYRB/P2eayhd/tfhppakPRbcTn5YxAJ6SjIuVWlaHWmpaEtShsimfkvWIQgx27zjMXPr85dLNhpG/zYWGOuxE6bx/VrGEUxlxCBbltnPj80DEPLi5VZL4yqQq2FjJVS89TCMI7H8J5yq29bchDoTrkz3rgwfnr+pgt+xahklPiOUC2yhMP1oJaD3F3pDb/OAIABfTTTTBMsAKY7fXt5UtMCV06Lbjp1B+57p7kudrTvyl64a/4qOL2wGcZpdgwSzuSsgvl8RkTW+cWmMv57oEgyWm2mIlelhrzo6JxCdwlnmPwvdTWEeH2RMZRG9pwJBFDwwLw6PqtT1e4AIifmmd9T/nqKlqH96/jprnl5bsgCfJmYPMlm3F4HF/S3PSeP0MaFAvi81lbfusMvZGOx68ag9p1htAXt4ozcgZ3zMRJwRGs49upn2i22pXMLIteK5ZYfaI3blyCplpPC9lfuapAl9PIIaa5Pv7jjg9FcYlMsENkRSAFPYZlHysSc5RM0hXDM=','2018-04-23 16:19:29','2018-04-23 16:19:29'),(210,'domainLookupProvider','WhmcsDomains','2018-06-19 15:29:29','2018-06-19 15:29:29'),(211,'ReCAPTCHAForms','{\"checkoutCompletion\":false}','2018-07-26 11:10:09','2018-07-26 11:10:09'),(212,'TaxEUTaxValidation','0','2018-08-09 08:00:00','2018-08-09 08:00:00'),(213,'TaxVatCustomFieldId','0','2018-08-09 08:00:00','2018-08-09 08:00:00'),(214,'TaxEUHomeCountry','','2018-08-09 08:00:00','2018-08-09 08:00:00'),(215,'TaxEUTaxExempt','0','2018-08-09 08:00:00','2018-08-09 08:00:00'),(216,'TaxEUHomeCountryNoExempt','0','2018-08-09 08:00:00','2018-08-09 08:00:00'),(217,'TaxCustomInvoiceNumbering','0','2018-08-09 08:00:00','2018-08-09 08:00:00'),(218,'TaxNextCustomInvoiceNumber','1','2018-08-09 08:00:00','2018-08-09 08:00:00'),(219,'TaxSetInvoiceDateOnPayment','0','2018-08-09 08:00:00','2018-08-09 08:00:00'),(220,'TaxAutoResetNumbering','never','2018-08-09 08:00:00','2018-08-09 08:00:00'),(221,'TaxAutoResetPaidNumbering','never','2018-08-09 08:00:00','2018-08-09 08:00:00'),(222,'TaxCustomInvoiceNumberFormat','{NUMBER}','2018-08-09 08:00:00','2018-08-09 08:00:00'),(223,'PruneTicketAttachmentsMonths','0','2019-04-01 08:00:00','2019-04-01 08:00:00'),(224,'2fasettings','a:3:{s:7:\"modules\";a:1:{s:4:\"totp\";a:2:{s:13:\"clientenabled\";i:1;s:12:\"adminenabled\";i:1;}}s:11:\"forceclient\";i:0;s:10:\"forceadmin\";i:0;}','2019-07-10 10:46:00','2019-07-10 10:46:00'),(225,'TicketAddCarbonCopyRecipients','1','2018-08-02 10:00:00','2018-08-02 10:00:00'),(228,'AcceptedCardTypes','Visa,MasterCard,Discover,American Express,JCB,Diners Club','2019-08-08 16:00:00','2019-08-08 16:00:00'),(229,'MDEFromTime','2021-08-03 10:49:25','2021-08-03 09:49:25','2021-08-03 09:49:25'),(230,'EulaAgreementAccepted','{\"hash\":\"c0ac9edca53ea8940bc7d9f26034acf9\",\"date\":\"2021-08-03\",\"admin\":\"1:mind\"}','2021-08-03 09:49:25','2021-08-03 09:49:25');
/*!40000 ALTER TABLE `tblconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontacts`
--

DROP TABLE IF EXISTS `tblcontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontacts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `companyname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci NOT NULL,
  `address2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `state` text COLLATE utf8_unicode_ci NOT NULL,
  `postcode` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` text COLLATE utf8_unicode_ci NOT NULL,
  `tax_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subaccount` int(1) NOT NULL DEFAULT '0',
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci NOT NULL,
  `domainemails` int(1) NOT NULL,
  `generalemails` int(1) NOT NULL,
  `invoiceemails` int(1) NOT NULL,
  `productemails` int(1) NOT NULL,
  `supportemails` int(1) NOT NULL,
  `affiliateemails` int(1) NOT NULL,
  `pwresetkey` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pwresetexpiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid_firstname_lastname` (`userid`,`firstname`(32),`lastname`(32)),
  KEY `email` (`email`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontacts`
--

LOCK TABLES `tblcontacts` WRITE;
/*!40000 ALTER TABLE `tblcontacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcredit`
--

DROP TABLE IF EXISTS `tblcredit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcredit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `clientid` int(10) NOT NULL,
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `relid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcredit`
--

LOCK TABLES `tblcredit` WRITE;
/*!40000 ALTER TABLE `tblcredit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcredit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcreditcards`
--

DROP TABLE IF EXISTS `tblcreditcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcreditcards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_method_id` int(11) NOT NULL DEFAULT '0',
  `card_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expiry_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `card_data` blob NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tblcreditcards_pay_method_id` (`pay_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcreditcards`
--

LOCK TABLES `tblcreditcards` WRITE;
/*!40000 ALTER TABLE `tblcreditcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcreditcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcurrencies`
--

DROP TABLE IF EXISTS `tblcurrencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcurrencies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `prefix` text COLLATE utf8_unicode_ci NOT NULL,
  `suffix` text COLLATE utf8_unicode_ci NOT NULL,
  `format` int(1) NOT NULL,
  `rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `default` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcurrencies`
--

LOCK TABLES `tblcurrencies` WRITE;
/*!40000 ALTER TABLE `tblcurrencies` DISABLE KEYS */;
INSERT INTO `tblcurrencies` VALUES (1,'USD','$',' USD',1,1.00000,1);
/*!40000 ALTER TABLE `tblcurrencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomfields`
--

DROP TABLE IF EXISTS `tblcustomfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `relid` int(10) NOT NULL DEFAULT '0',
  `fieldname` text COLLATE utf8_unicode_ci NOT NULL,
  `fieldtype` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `fieldoptions` text COLLATE utf8_unicode_ci NOT NULL,
  `regexpr` text COLLATE utf8_unicode_ci NOT NULL,
  `adminonly` text COLLATE utf8_unicode_ci NOT NULL,
  `required` text COLLATE utf8_unicode_ci NOT NULL,
  `showorder` text COLLATE utf8_unicode_ci NOT NULL,
  `showinvoice` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomfields`
--

LOCK TABLES `tblcustomfields` WRITE;
/*!40000 ALTER TABLE `tblcustomfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomfieldsvalues`
--

DROP TABLE IF EXISTS `tblcustomfieldsvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `fieldid_relid` (`fieldid`,`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomfieldsvalues`
--

LOCK TABLES `tblcustomfieldsvalues` WRITE;
/*!40000 ALTER TABLE `tblcustomfieldsvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomfieldsvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldeviceauth`
--

DROP TABLE IF EXISTS `tbldeviceauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldeviceauth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `compat_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_access` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbldeviceauth_identifier_unique` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldeviceauth`
--

LOCK TABLES `tbldeviceauth` WRITE;
/*!40000 ALTER TABLE `tbldeviceauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldeviceauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomain_lookup_configuration`
--

DROP TABLE IF EXISTS `tbldomain_lookup_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomain_lookup_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registrar` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `setting` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `registrar_setting_index` (`registrar`,`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomain_lookup_configuration`
--

LOCK TABLES `tbldomain_lookup_configuration` WRITE;
/*!40000 ALTER TABLE `tbldomain_lookup_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomain_lookup_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomainpricing`
--

DROP TABLE IF EXISTS `tbldomainpricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomainpricing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `extension` text COLLATE utf8_unicode_ci NOT NULL,
  `dnsmanagement` tinyint(1) NOT NULL,
  `emailforwarding` tinyint(1) NOT NULL,
  `idprotection` tinyint(1) NOT NULL,
  `eppcode` tinyint(1) NOT NULL,
  `autoreg` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `group` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `grace_period` int(1) NOT NULL DEFAULT '-1',
  `grace_period_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `redemption_grace_period` int(1) NOT NULL DEFAULT '-1',
  `redemption_grace_period_fee` decimal(10,2) NOT NULL DEFAULT '-1.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `extension_registrationperiod` (`extension`(32)),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomainpricing`
--

LOCK TABLES `tbldomainpricing` WRITE;
/*!40000 ALTER TABLE `tbldomainpricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomainpricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomainpricing_premium`
--

DROP TABLE IF EXISTS `tbldomainpricing_premium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomainpricing_premium` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `to_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `markup` decimal(8,5) NOT NULL DEFAULT '0.00000',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbldomain_pricing_premium_to_amount_unique` (`to_amount`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomainpricing_premium`
--

LOCK TABLES `tbldomainpricing_premium` WRITE;
/*!40000 ALTER TABLE `tbldomainpricing_premium` DISABLE KEYS */;
INSERT INTO `tbldomainpricing_premium` VALUES (1,200.00,20.00000,'2018-04-18 14:21:39','2018-04-18 14:21:39'),(2,500.00,25.00000,'2018-04-18 14:21:39','2018-04-18 14:21:39'),(3,1000.00,30.00000,'2018-04-18 14:21:39','2018-04-18 14:21:39'),(4,-1.00,20.00000,'2018-04-18 14:21:39','2018-04-18 14:21:39');
/*!40000 ALTER TABLE `tbldomainpricing_premium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomainreminders`
--

DROP TABLE IF EXISTS `tbldomainreminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomainreminders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `recipients` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `days_before_expiry` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomainreminders`
--

LOCK TABLES `tbldomainreminders` WRITE;
/*!40000 ALTER TABLE `tbldomainreminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomainreminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomains`
--

DROP TABLE IF EXISTS `tbldomains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomains` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderid` int(1) NOT NULL,
  `type` enum('Register','Transfer') COLLATE utf8_unicode_ci NOT NULL,
  `registrationdate` date NOT NULL,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `firstpaymentamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `recurringamount` decimal(10,2) NOT NULL,
  `registrar` text COLLATE utf8_unicode_ci NOT NULL,
  `registrationperiod` int(1) NOT NULL DEFAULT '1',
  `expirydate` date DEFAULT NULL,
  `subscriptionid` text COLLATE utf8_unicode_ci NOT NULL,
  `promoid` int(10) NOT NULL,
  `status` enum('Pending','Pending Registration','Pending Transfer','Active','Grace','Redemption','Expired','Cancelled','Fraud','Transferred Away') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `nextduedate` date NOT NULL DEFAULT '0000-00-00',
  `nextinvoicedate` date NOT NULL,
  `additionalnotes` text COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `dnsmanagement` tinyint(1) NOT NULL,
  `emailforwarding` tinyint(1) NOT NULL,
  `idprotection` tinyint(1) NOT NULL,
  `is_premium` tinyint(1) DEFAULT NULL,
  `donotrenew` tinyint(1) NOT NULL,
  `reminders` text COLLATE utf8_unicode_ci NOT NULL,
  `synced` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `orderid` (`orderid`),
  KEY `domain` (`domain`(64)),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomains`
--

LOCK TABLES `tbldomains` WRITE;
/*!40000 ALTER TABLE `tbldomains` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomains_extra`
--

DROP TABLE IF EXISTS `tbldomains_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomains_extra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbldomains_extra_domain_id_type_unique` (`domain_id`,`name`),
  KEY `tbldomains_extra_type_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomains_extra`
--

LOCK TABLES `tbldomains_extra` WRITE;
/*!40000 ALTER TABLE `tbldomains_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomains_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomainsadditionalfields`
--

DROP TABLE IF EXISTS `tbldomainsadditionalfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomainsadditionalfields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domainid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `domainid` (`domainid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomainsadditionalfields`
--

LOCK TABLES `tbldomainsadditionalfields` WRITE;
/*!40000 ALTER TABLE `tbldomainsadditionalfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomainsadditionalfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldownloadcats`
--

DROP TABLE IF EXISTS `tbldownloadcats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldownloadcats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldownloadcats`
--

LOCK TABLES `tbldownloadcats` WRITE;
/*!40000 ALTER TABLE `tbldownloadcats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldownloadcats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldownloads`
--

DROP TABLE IF EXISTS `tbldownloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldownloads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` int(10) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `downloads` int(10) NOT NULL DEFAULT '0',
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `clientsonly` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `productdownload` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `title` (`title`(32)),
  KEY `downloads` (`downloads`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldownloads`
--

LOCK TABLES `tbldownloads` WRITE;
/*!40000 ALTER TABLE `tbldownloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldownloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldynamic_translations`
--

DROP TABLE IF EXISTS `tbldynamic_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldynamic_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `related_type` enum('configurable_option.{id}.name','configurable_option_option.{id}.name','custom_field.{id}.description','custom_field.{id}.name','download.{id}.description','download.{id}.title','product.{id}.description','product.{id}.name','product_addon.{id}.description','product_addon.{id}.name','product_bundle.{id}.description','product_bundle.{id}.name','product_group.{id}.headline','product_group.{id}.name','product_group.{id}.tagline','product_group_features.{id}.feature','ticket_department.{id}.description','ticket_department.{id}.name') COLLATE utf8_unicode_ci NOT NULL,
  `related_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `translation` text COLLATE utf8_unicode_ci NOT NULL,
  `input_type` enum('text','textarea') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tbldynamic_translations_id` (`related_id`),
  KEY `tbldynamic_translations_type` (`related_type`),
  KEY `tbldynamic_translations_id_type` (`related_id`,`related_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldynamic_translations`
--

LOCK TABLES `tbldynamic_translations` WRITE;
/*!40000 ALTER TABLE `tbldynamic_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldynamic_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemailmarketer`
--

DROP TABLE IF EXISTS `tblemailmarketer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailmarketer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `disable` int(1) NOT NULL,
  `marketing` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemailmarketer`
--

LOCK TABLES `tblemailmarketer` WRITE;
/*!40000 ALTER TABLE `tblemailmarketer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblemailmarketer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemails`
--

DROP TABLE IF EXISTS `tblemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `to` text COLLATE utf8_unicode_ci,
  `cc` text COLLATE utf8_unicode_ci,
  `bcc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemails`
--

LOCK TABLES `tblemails` WRITE;
/*!40000 ALTER TABLE `tblemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemailtemplates`
--

DROP TABLE IF EXISTS `tblemailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailtemplates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8_unicode_ci NOT NULL,
  `fromname` text COLLATE utf8_unicode_ci NOT NULL,
  `fromemail` text COLLATE utf8_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `custom` tinyint(1) NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `copyto` text COLLATE utf8_unicode_ci NOT NULL,
  `blind_copy_to` text COLLATE utf8_unicode_ci NOT NULL,
  `plaintext` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `type` (`type`(32)),
  KEY `name` (`name`(64))
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemailtemplates`
--

LOCK TABLES `tblemailtemplates` WRITE;
/*!40000 ALTER TABLE `tblemailtemplates` DISABLE KEYS */;
INSERT INTO `tblemailtemplates` VALUES (1,'product','Hosting Account Welcome Email','New Account Information','<p>Dear {$client_name},</p><p align=\"center\"><strong>PLEASE READ THIS EMAIL IN FULL AND PRINT IT FOR YOUR RECORDS</strong></p><p>Thank you for your order from us! Your hosting account has now been setup and this email contains all the information you will need in order to begin using your account.</p><p>If you have requested a domain name during sign up, please keep in mind that your domain name will not be visible on the internet instantly. This process is called propagation and can take up to 48 hours. Until your domain has propagated, your website and email will not function, we have provided a temporary url which you may use to view your website and upload files in the meantime.</p><p><strong>New Account Information</strong></p><p>Hosting Package: {$service_product_name}<br />Domain: {$service_domain}<br />First Payment Amount: {$service_first_payment_amount}<br />Recurring Amount: {$service_recurring_amount}<br />Billing Cycle: {$service_billing_cycle}<br />Next Due Date: {$service_next_due_date}</p><p><strong>Login Details</strong></p><p>Username: {$service_username}<br />Password: {$service_password}</p><p>Control Panel URL: <a href=\"http://{$service_server_ip}:2082/\">http://{$service_server_ip}:2082/</a><br />Once your domain has propagated, you may also use <a href=\"http://www.{$service_domain}:2082/\">http://www.{$service_domain}:2082/</a></p><p><strong>Server Information</strong></p><p>Server Name: {$service_server_name}<br />Server IP: {$service_server_ip}</p><p>If you are using an existing domain with your new hosting account, you will need to update the nameservers to point to the nameservers listed below.</p><p>Nameserver 1: {$service_ns1} ({$service_ns1_ip})<br />Nameserver 2: {$service_ns2} ({$service_ns2_ip}){if $service_ns3}<br />Nameserver 3: {$service_ns3} ({$service_ns3_ip}){/if}{if $service_ns4}<br />Nameserver 4: {$service_ns4} ({$service_ns4_ip}){/if}</p><p><strong>Uploading Your Website</strong></p><p>Temporarily you may use one of the addresses given below to manage your web site:</p><p>Temporary FTP Hostname: {$service_server_ip}<br />Temporary Webpage URL: <a href=\"http://{$service_server_ip}/~{$service_username}/\">http://{$service_server_ip}/~{$service_username}/</a></p><p>And once your domain has propagated you may use the details below:</p><p>FTP Hostname: {$service_domain}<br />Webpage URL: <a href=\"http://www.{$service_domain}\">http://www.{$service_domain}</a></p><p><strong>Email Settings</strong></p><p>For email accounts that you setup, you should use the following connection details in your email program:</p><p>POP3 Host Address: mail.{$service_domain}<br />SMTP Host Address: mail.{$service_domain}<br />Username: The email address you are checking email for<br />Password: As specified in your control panel</p><p>Thank you for choosing us.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'domain','Domain Registration Confirmation','Domain Registration Confirmation','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis message is to confirm that your domain purchase has been successful. The details of the domain purchase are below: \r\n</p>\r\n<p>\r\nRegistration Date: {$domain_reg_date}<br />\r\nDomain: {$domain_name}<br />\r\nRegistration Period: {$domain_reg_period}<br />\r\nAmount: {$domain_first_payment_amount}<br />\r\nNext Due Date: {$domain_next_due_date} \r\n</p>\r\n<p>\r\nYou may login to your client area at <a href=\"{$whmcs_url}\">{$whmcs_url}</a> to manage your new domain. \r\n</p>\r\n<p>\r\n{$signature} \r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'product','Reseller Account Welcome Email','Reseller Account Information','<p align=\"center\">\r\n<strong>PLEASE PRINT THIS MESSAGE FOR YOUR RECORDS - PLEASE READ THIS EMAIL IN FULL.</strong>\r\n</p>\r\n<p>\r\nIf you have requested a domain name during sign up then this will not be visible on the internet for between 24 and 72 hours. This process is called Propagation. Until your domain has Propagated your website and email will not function, we have provided a temporary url which you may use to view your website and upload files in the meantime.\r\n</p>\r\n<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nThe reseller hosting account for {$service_domain} has been set up. The username and password below are for both cPanel to manage the website at {$service_domain} and WebHostManager to manage your Reseller Account.\r\n</p>\r\n<p>\r\n<strong>New Account Info</strong>\r\n</p>\r\n<p>\r\nDomain: {$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password}<br />\r\nHosting Package: {$service_product_name}\r\n</p>\r\n<p>\r\nControl Panel: <a href=\"http://{$service_server_ip}:2082/\">http://{$service_server_ip}:2082/</a><br />\r\nWeb Host Manager: <a href=\"http://{$service_server_ip}:2086/\">http://{$service_server_ip}:2086/</a>\r\n</p>\r\n<p>\r\n-------------------------------------------------------------------------------------------- <br />\r\n<strong>Web Host Manager Quick Start</strong> <br />\r\n-------------------------------------------------------------------------------------------- <br />\r\n<br />\r\nTo access your Web Host Manager, use the following address:<br />\r\n<br />\r\n<a href=\"http://{$service_server_ip}:2086/\">http://{$service_server_ip}:2086/</a><br />\r\n<br />\r\nThe <strong>http://</strong> must be in the address line to connect to port :2086 <br />\r\nPlease use the username/password given above. <br />\r\n<br />\r\n<strong><em>To Create a New Account <br />\r\n</em></strong><br />\r\nThe first thing you need to do is scroll down on the left and click on &#39Add Package&#39 so that you can create your own hosting packages. You cannot install a domain onto your account without first creating packages.<br />\r\n<br />\r\n1. Click on &#39Create a New Account&#39 from the left hand side menu <br />\r\n2. Put the domain in the &#39Domain&#39 box (no www or http or spaces ? just domainname.com). After putting in the domain, hit TAB and it will automatically create a username. Also, enter a password for the account.<br />\r\n3. Your package selection should be one that you created earlier <br />\r\n4. Then press the create button <br />\r\n<br />\r\nThis will give you a confirmation page (you should print this for your records)\r\n</p>\r\n<p>\r\nPlease do not click on anything that you are not sure what it does. Please do not try to alter the WHM Theme from the selection box - fatal errors may occur. \r\n</p>\r\n<p>\r\n-------------------------------------------------------------------------------------------- \r\n</p>\r\n<p>\r\nTemporarily you may use one of the addresses given below manage your web site\r\n</p>\r\n<p>\r\nTemporary FTP Hostname: {$service_server_ip}<br />\r\nTemporary Webpage URL: <a href=\"http://{$service_server_ip}/~{$service_username}/\">http://{$service_server_ip}/~{$service_username}/</a><br />\r\nTemporary Control Panel: <a href=\"http://{$service_server_ip}/cpanel\">http://{$service_server_ip}/cpanel</a>\r\n</p>\r\n<p>\r\nOnce your domain has Propagated\r\n</p>\r\n<p>\r\nFTP Hostname: www.{$service_domain}<br />\r\nWebpage URL: <a href=\"http://www.{$service_domain}\">http://www.{$service_domain}</a><br />\r\nControl Panel: <a href=\"http://www.{$service_domain}/cpanel\">http://www.{$service_domain}/cpanel</a><br />\r\nWeb Host Manager: <a href=\"http://www.{$service_domain}/whm\">http://www.{$service_domain}/whm</a>\r\n</p>\r\n<p>\r\n<strong>Mail settings</strong>\r\n</p>\r\n<p>\r\nCatch all email with your default email account\r\n</p>\r\n<p>\r\nPOP3 Host Address : mail.{$service_domain}<br />\r\nSMTP Host Address: mail.{$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password}\r\n</p>\r\n<p>\r\nAdditional mail accounts that you add\r\n</p>\r\n<p>\r\nPOP3 Host Address : mail.{$service_domain}<br />\r\nSMTP Host Address: mail.{$service_domain}<br />\r\nUsername : The FULL email address that you are picking up from (e.g. info@yourdomain.com). <br />\r\nIf your email client cannot accept a @ symbol, then you may replace this with a backslash .<br />\r\nPassword : As specified in your control panel \r\n</p>\r\n<p>\r\nThank you for choosing us.\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'support','Support Ticket Opened','New Support Ticket Opened','<p>\r\n{$client_name},\r\n</p>\r\n<p>\r\nThank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email. The details of your ticket are shown below.\r\n</p>\r\n<p>\r\nSubject: {$ticket_subject}<br />\r\nPriority: {$ticket_priority}<br />\r\nStatus: {$ticket_status}\r\n</p>\r\n<p>\r\nYou can view the ticket at any time at {$ticket_link}\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'support','Support Ticket Reply','Support Ticket Response','<p>\r\n{$ticket_message}\r\n</p>\r\n<p>\r\n----------------------------------------------<br />\r\nTicket ID: #{$ticket_id}<br />\r\nSubject: {$ticket_subject}<br />\r\nStatus: {$ticket_status}<br />\r\nTicket URL: {$ticket_link}<br />\r\n----------------------------------------------\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'general','Client Signup Email','Welcome','<p>Dear {$client_first_name},</p>\r\n<p>Thank you for creating a {$companyname} account. Please review this email in its entirety as it contains important information.</p>\r\n<p><strong>Logging In</strong></p>\r\n<p>You can access our client area at {$whmcs_link}</p>\r\n<p>You will need your email address and the password you chose during signup to login.</p>\r\n<p>If you created an account as part of placing a new order with us, you will shortly receive an order confirmation email.</p>\r\n<p><strong>Getting Support</strong></p>\r\n<p>If you need any help or assistance, you can access our support resources below.</p>\r\n<ul>\r\n<li><a href=\"{$whmcs_url}/knowledgebase.php\">Knowledgebase</a></li>\r\n<li><a href=\"{$whmcs_url}/submitticket.php\">Submit a Ticket</a></li>\r\n</ul>\r\n<p>{$signature}</p>\r\n<p><small>You are receiving this email because you recently created an account. If you did not do this, please contact us.</small></p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'product','Service Suspension Notification','Service Suspension Notification','<p>Dear {$client_name},</p><p>This is a notification that your service has now been suspended.  The details of this suspension are below:</p><p>Product/Service: {$service_product_name}<br />{if $service_domain}Domain: {$service_domain}<br />{/if}Amount: {$service_recurring_amount}<br />Due Date: {$service_next_due_date}<br />Suspension Reason: <strong>{$service_suspension_reason}</strong></p><p>Please contact us as soon as possible to get your service reactivated.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'invoice','Invoice Payment Confirmation','Invoice Payment Confirmation','<p>Dear {$client_name},</p>\r\n<p>This is a payment receipt for Invoice {$invoice_num} sent on {$invoice_date_created}</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount: {$invoice_last_payment_amount}<br />Transaction #: {$invoice_last_payment_transid}<br />Total Paid: {$invoice_amount_paid}<br />Remaining Balance: {$invoice_balance}<br />Status: {$invoice_status}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>Note: This email will serve as an official receipt for this payment.</p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'invoice','Invoice Created','Customer Invoice','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a notice that an invoice has been generated on {$invoice_date_created}. \r\n</p>\r\n<p>\r\nYour payment method is: {$invoice_payment_method} \r\n</p>\r\n<p>\r\nInvoice #{$invoice_num}<br />\r\nAmount Due: {$invoice_total}<br />\r\nDue Date: {$invoice_date_due} \r\n</p>\r\n<p>\r\n<strong>Invoice Items</strong> \r\n</p>\r\n<p>\r\n{$invoice_html_contents} <br />\r\n------------------------------------------------------ \r\n</p>\r\n<p>\r\nYou can login to your client area to view and pay the invoice at {$invoice_link} \r\n</p>\r\n<p>\r\n{$signature} \r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'invoice','Invoice Payment Reminder','Invoice Payment Reminder','<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nThis is a billing reminder that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is due on {$invoice_date_due}.\r\n</p>\r\n<p>\r\nYour payment method is: {$invoice_payment_method}\r\n</p>\r\n<p>\r\nInvoice: {$invoice_num}<br />\r\nBalance Due: {$invoice_balance}<br />\r\nDue Date: {$invoice_date_due}\r\n</p>\r\n<p>\r\nYou can login to your client area to view and pay the invoice at {$invoice_link}\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'general','Order Confirmation','Order Confirmation','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nWe have received your order and will be processing it shortly. The details of the order are below: \r\n</p>\r\n<p>\r\nOrder Number: <b>{$order_number}</b></p>\r\n<p>\r\n{$order_details} \r\n</p>\r\n<p>\r\nYou will receive an email from us shortly once your account has been setup. Please quote your order reference number if you wish to contact us about this order. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'product','Dedicated/VPS Server Welcome Email','New Dedicated Server Information','<p>\r\nDear {$client_name},<br />\r\n<br />\r\n<strong>PLEASE PRINT THIS MESSAGE FOR YOUR RECORDS - PLEASE READ THIS EMAIL IN FULL.</strong>\r\n</p>\r\n<p>\r\nWe are pleased to tell you that the server you ordered has now been set up and is operational.\r\n</p>\r\n<p>\r\n<strong>Server Details<br />\r\n</strong>=============================\r\n</p>\r\n<p>\r\n{$service_product_name}\r\n</p>\r\n<p>\r\nMain IP: {$service_dedicated_ip}<br />\r\nRoot pass: {$service_password}\r\n</p>\r\n<p>\r\nIP address allocation: <br />\r\n{$service_assigned_ips}\r\n</p>\r\n<p>\r\nServerName: {$service_domain}\r\n</p>\r\n<p>\r\n<strong>WHM Access<br />\r\n</strong>=============================<br />\r\n<a href=\"http://xxxxx:2086/\">http://xxxxx:2086</a><br />\r\nUsername: root<br />\r\nPassword: {$service_password}\r\n</p>\r\n<p>\r\n<strong>Custom DNS Server Addresses</strong><br />\r\n=============================<br />\r\nThe custom DNS addresses you should set for your domain to use are: <br />\r\nPrimary DNS: {$service_ns1}<br />\r\nSecondary DNS: {$service_ns2}\r\n</p>\r\n<p>\r\nYou will have to login to your registrar and find the area where you can specify both of your custom name server addresses.\r\n</p>\r\n<p>\r\nAfter adding these custom nameservers to your domain registrar control panel, it will take 24 to 48 hours for your domain to delegate authority to your DNS server. Once this has taken effect, your DNS server has control over the DNS records for the domains which use your custom name server addresses. \r\n</p>\r\n<p>\r\n<strong>SSH Access Information<br />\r\n</strong>=============================<br />\r\nMain IP Address: xxxxxxxx<br />\r\nServer Name: {$service_domain}<br />\r\nRoot Password: xxxxxxxx\r\n</p>\r\n<p>\r\nYou can access your server using a free simple SSH client program called Putty located at:<br />\r\n<a href=\"http://www.securitytools.net/mirrors/putty/\">http://www.securitytools.net/mirrors/putty/</a>\r\n</p>\r\n<p>\r\n<strong>Support</strong><br />\r\n=============================<br />\r\nFor any support needs, please open a ticket at <a href=\"{$whmcs_url}\">{$whmcs_url}</a>\r\n</p>\r\n<p>\r\nPlease include any necessary information to provide you with faster service, such as root password, domain names, and a description of the problem / or assistance needed. This will speed up the support time by allowing our administrators to immediately begin diagnosing the problem.\r\n</p>\r\n<p>\r\nThe manual for cPanel can be found here: <a href=\"http://www.cpanel.net/docs/cp/\">http://www.cpanel.net/docs/cp/</a> <br />\r\nFor documentation on using WHM please see the following link: <a href=\"http://www.cpanel.net/docs/whm/index.html\">http://www.cpanel.net/docs/whm/index.html</a>\r\n</p>\r\n<p>\r\n=============================\r\n</p>\r\n<p>\r\nIf you need to move accounts to the server use: Transfers Copy an account from another server with account password\r\n</p>\r\n<p>\r\n<a href=\"http://xxxxxxx:2086/scripts2/norootcopy\">http://xxxxxxx:2086/scripts2/norootcopy</a>\r\n</p>\r\n<p>\r\nNote the other server must use cpanel to move it.\r\n</p>\r\n<p>\r\n=============================\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'product','Other Product/Service Welcome Email','New Product Information','<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nYour order for {$service_product_name} has now been activated. Please keep this message for your records.\r\n</p>\r\n<p>\r\nProduct/Service: {$service_product_name}<br />\r\nPayment Method: {$service_payment_method}<br />\r\nAmount: {$service_recurring_amount}<br />\r\nBilling Cycle: {$service_billing_cycle}<br />\r\nNext Due Date: {$service_next_due_date}\r\n</p>\r\n<p>\r\nThank you for choosing us.\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'invoice','Credit Card Payment Confirmation','Credit Card Payment Confirmation','<p>Dear {$client_name},</p>\r\n<p>This is a payment receipt for Invoice {$invoice_num} sent on {$invoice_date_created}</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount: {$invoice_last_payment_amount}<br />Transaction #: {$invoice_last_payment_transid}<br />Total Paid: {$invoice_amount_paid}<br />Remaining Balance: {$invoice_balance}<br />Status: {$invoice_status}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>Note: This email will serve as an official receipt for this payment.</p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'invoice','Credit Card Payment Failed','Credit Card Payment Failed','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a notice that a recent credit card payment we attempted on the card we have registered for you failed. \r\n</p>\r\n<p>\r\nInvoice Date: {$invoice_date_created}<br />\r\nInvoice No: {$invoice_num}<br />\r\nAmount: {$invoice_total}<br />\r\nStatus: {$invoice_status} \r\n</p>\r\n<p>\r\nYou now need to login to your client area to pay the invoice manually. During the payment process you will be given the opportunity to change the card on record with us.<br />\r\n{$invoice_link} \r\n</p>\r\n<p>\r\nNote: This email will serve as an official receipt for this payment. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'invoice','Credit Card Invoice Created','Customer Invoice','<p> Dear {$client_name}, </p> <p> This is a notice that an invoice has been generated on {$invoice_date_created}. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice #{$invoice_num}<br /> Amount Due: {$invoice_total}<br /> Due Date: {$invoice_date_due} </p> <p> <strong>Invoice Items</strong> </p> <p> {$invoice_html_contents} <br /> ------------------------------------------------------ </p> <p> {if $invoice_auto_capture_available}\r\n    Payment will be taken automatically from the {if $invoice_pay_method_type == \"bankaccount\"}bank account{else}credit card{/if} {$invoice_pay_method_display_name} on {$invoice_next_payment_attempt_date}. To change or pay with a different payment method, please login at {$invoice_link} and click Pay Now, then follow the instructions on screen.\r\n{else}\r\n    Payment will not be taken automatically. To pay your invoice, please login at {$invoice_link} and click Pay Now, then follow the instructions on screen.\r\n{/if}\r\n </p> <p> {$signature} </p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'affiliate','Affiliate Monthly Referrals Report','Affiliate Monthly Referrals Report','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is your monthly affiliate referrals report. You can view your referral statistics at any time by logging in to the client area. \r\n</p>\r\n<p>\r\nTotal Visitors Referred: {$affiliate_total_visits}<br />\r\nCurrent Earnings: {$affiliate_balance}<br />\r\nAmount Withdrawn: {$affiliate_withdrawn} \r\n</p>\r\n<p>\r\n<strong>Your New Signups this Month</strong> \r\n</p>\r\n<p>\r\n{$affiliate_referrals_table} \r\n</p>\r\n<p>\r\nRemember, you can refer new customers using your unique affiliate link: {$affiliate_referral_url} \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'support','Support Ticket Opened by Admin','{$ticket_subject}','{$ticket_message}','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'invoice','First Invoice Overdue Notice','First Invoice Overdue Notice','<p> Dear {$client_name}, </p> <p> This is a billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'product','SHOUTcast Welcome Email','SHOUTcast New Account Information','<p align=\"center\">\r\n<strong>PLEASE READ THIS EMAIL IN FULL AND PRINT IT FOR YOUR RECORDS</strong> \r\n</p>\r\n<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThank you for your order from us! Your shoutcast account has now been setup and this email contains all the information you will need in order to begin using your account. \r\n</p>\r\n<p>\r\n<strong>New Account Information</strong> \r\n</p>\r\n<p>\r\nDomain: {$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password} \r\n</p>\r\n<p>\r\n<strong>Server Information</strong> \r\n</p>\r\n<p>\r\nServer Name: {$service_server_name}<br />\r\nServer IP: {$service_server_ip}<br />\r\nNameserver 1: {$service_ns1}<br />\r\nNameserver 1 IP: {$service_ns1_ip}<br />\r\nNameserver 2: {$service_ns2} <br />\r\nNameserver 2 IP: {$service_ns2_ip} \r\n</p>\r\n<p>\r\nThank you for choosing us. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'invoice','Second Invoice Overdue Notice','Second Invoice Overdue Notice','<p> Dear {$client_name}, </p> <p> This is the second billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'invoice','Third Invoice Overdue Notice','Third Invoice Overdue Notice','<p> Dear {$client_name}, </p> <p> This is the third and final billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. Failure to make payment will result in account suspension.</p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'domain','Domain Transfer Initiated','Domain Transfer Initiated','<p>Dear {$client_name}, </p><p>Thank you for your domain transfer order. Your order has been received and we have now initiated the transfer process. The details of the domain purchase are below: </p><p>Domain: {$domain_name}<br />Registration Length: {$domain_reg_period}<br />Transfer Price: {$domain_first_payment_amount}<br />Renewal Price: {$domain_recurring_amount}<br />Next Due Date: {$domain_next_due_date} </p><p>You may login to your client area at <a href=\"{$whmcs_url}\">{$whmcs_url}</a> to manage your domain. </p><p>{$signature} </p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'domain','Domain Renewal Confirmation','Domain Renewal Confirmation','<p>Dear {$client_name}, </p><p>Thank you for your domain renewal order. Your domain renewal request for the domain listed below has now been completed.</p><p>Domain: {$domain_name}<br />Renewal Length: {$domain_reg_period}<br />Renewal Price: {$domain_recurring_amount}<br />Next Due Date: {$domain_next_due_date} </p><p>You may login to your client area at <a href=\"{$whmcs_url}\">{$whmcs_url}</a> to manage your domain. </p><p>{$signature} </p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'domain','Upcoming Domain Renewal Notice','Upcoming Domain Renewal Notice','<p>Dear {$client_name},</p>\r\n<p>This is a reminder that the domain listed below is scheduled to expire soon.</p>\r\n<p>Domain Name - Expiry Date - Description</p>\r\n<p>--------------------------------------------------------------</p> \r\n<p>{$domain_name} - {$domain_next_due_date} - Expires in {$domain_days_until_nextdue} Days</p>\r\n<p>Please be aware that if your domain name expires, any web site or email services associated with it will stop working.</p>\r\n<p>Renew it now to avoid interruption in service.</p>\r\n<p>To renew your domain, <a href=\"{$domain_renewal_url}\">click here</a>.</p>\r\n<p>To view and manage your domains, you can login to our client area here: <a href=\"{$domains_manage_url}\">Client Area</a></p>\r\n<p>If you have any questions, please reply to this email. Thank you for using our domain name services.</p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'support','Clients Only Bounce Message','Support Ticket Not Opened','<p>{$client_name},</p><p>Your email to our support system could not be accepted because it was not recognized as coming from an email address belonging to one of our customers.  If you need assistance, please email from the address you registered with us that you use to login to our client area.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'general','Credit Card Expiring Soon','Credit Card Expiring Soon','<p>Dear {$client_name}, </p><p>This is a notice to inform you that your {$client_cc_type} credit card ending with {$client_cc_number} will be expiring next month on {$client_cc_expiry}. Please login to update your credit card information as soon as possible and prevent any interuptions in service at <a href=\"{$whmcs_url}\">{$whmcs_url}</a><br /><br />If you have any questions regarding your account, please open a support ticket from the client area.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'support','Support Ticket Auto Close Notification','Support Ticket Resolved','<p>{$client_name},</p><p>This is a notification to let you know that we are changing the status of your ticket #{$ticket_id} to Closed as we have not received a response from you in over {$ticket_auto_close_time} hours.</p><p>Subject: {$ticket_subject}<br>Department: {$ticket_department}<br>Priority: {$ticket_priority}<br>Status: {$ticket_status}</p><p>If you have any further questions then please just reply to re-open the ticket.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'invoice','Credit Card Payment Due','Credit Card Payment Due','<p>Dear {$client_name},</p><p>This is a notice to remind you that you have an invoice due on {$invoice_date_due}. We tried to bill you automatically but were unable to because we don\'t have your credit card details on file.</p><p>Invoice Date: {$invoice_date_created}<br>Invoice #{$invoice_num}<br>Amount Due: {$invoice_total}<br>Due Date: {$invoice_date_due}</p><p>Please login to our client area at the link below to submit your card details or make payment using a different method.</p><p>{$invoice_link}</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'product','Cancellation Request Confirmation','Cancellation Request Confirmation','<p>Dear {$client_name},</p><p>This email is to confirm that we have received your cancellation request for the service listed below.</p><p>Product/Service: {$service_product_name}<br />Domain: {$service_domain}</p><p>{if $service_cancellation_type==\"Immediate\"}The service will be terminated within the next 24 hours.{else}The service will be cancelled at the end of your current billing period on {$service_next_due_date}.{/if}</p><p>Thank you for using {$company_name} and we hope to see you again in the future.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'general','Quote Delivery with PDF','Quote #{$quote_number} - {$quote_subject}','<p>Dear {$client_name},</p><p>Here is the quote you requested for {$quote_subject}. The quote is valid until {$quote_valid_until}. You may {if $client_id}view the quote at any time at {$quote_link} and {/if}simply reply to this email with any further questions or requirement.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'general','Password Reset Validation','Your login details for {$company_name}','<p>Dear {$client_name},</p><p>Recently a request was submitted to reset your password for our client area. If you did not request this, please ignore this email. It will expire and become useless in 2 hours time.</p><p>To reset your password, please visit the url below:<br /><a href=\"{$pw_reset_url}\">{$pw_reset_url}</a></p><p>When you visit the link above, you will have the opportunity to choose a new password.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'general','Automated Password Reset','Your new password for {$company_name}','<p>Dear {$client_name},</p><p>As you requested, your password for our client area has now been reset.  Your new login details are as follows:</p><p>{$whmcs_link}<br />Email: {$client_email}<br />Password: {$client_password}</p><p>To change your password to something more memorable, after logging in go to My Details > Change Password.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'admin','Automatic Setup Failed','WHMCS Automatic Setup Failed','<p>An order has received its first payment but the automatic provisioning has failed and requires you to manually check & resolve.</p>\r\n<p>Client ID: {$client_id}<br />{if $service_id}Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}{else}Domain ID: {$domain_id}<br />Registration Type: {$domain_type}<br />Domain: {$domain_name}{/if}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'admin','Automatic Setup Successful','WHMCS Automatic Setup Successful','<p>An order has received its first payment and the product/service has been automatically provisioned successfully.</p>\r\n<p>Client ID: {$client_id}<br />{if $service_id}Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}{else}Domain ID: {$domain_id}<br />Registration Type: {$domain_type}<br />Domain: {$domain_name}{/if}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'admin','Domain Renewal Failed','WHMCS Automatic Domain Renewal Failed','<p>An invoice for the renewal of a domain has been paid but the renewal request submitted to the registrar failed.</p>\r\n<p>Client ID: {$client_id}<br />Domain ID: {$domain_id}<br />Domain Name: {$domain_name}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'admin','Domain Renewal Successful','WHMCS Automatic Domain Renewal Successful','<p>An invoice for the renewal of a domain has been paid and the renewal request was submitted to the registrar successfully.</p>\r\n<p>Client ID: {$client_id}<br />Domain ID: {$domain_id}<br />Domain Name: {$domain_name}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'admin','New Order Notification','WHMCS New Order Notification','<p><strong>Order Information</strong></p>\r\n<p>Order ID: {$order_id}<br />\r\nOrder Number: {$order_number}<br />\r\nDate/Time: {$order_date}<br />\r\nInvoice Number: {$invoice_id}<br />\r\nPayment Method: {$order_payment_method}</p>\r\n<p><strong>Customer Information</strong></p>\r\n<p>Customer ID: {$client_id}<br />\r\nName: {$client_first_name} {$client_last_name}<br />\r\nEmail: {$client_email}<br />\r\nCompany: {$client_company_name}<br />\r\nAddress 1: {$client_address1}<br />\r\nAddress 2: {$client_address2}<br />\r\nCity: {$client_city}<br />\r\nState: {$client_state}<br />\r\nPostcode: {$client_postcode}<br />\r\nCountry: {$client_country}<br />\r\nPhone Number: {$client_phonenumber}</p>\r\n<p><strong>Order Items</strong></p>\r\n<p>{$order_items}</p>\r\n{if $order_notes}<p><strong>Order Notes</strong></p>\r\n<p>{$order_notes}</p>{/if}\r\n<p><strong>ISP Information</strong></p>\r\n<p>IP: {$client_ip}<br />\r\nHost: {$client_hostname}</p><p><a href=\"{$whmcs_admin_url}orders.php?action=view&id={$order_id}\">{$whmcs_admin_url}orders.php?action=view&id={$order_id}</a></p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'admin','Service Unsuspension Failed','WHMCS Service Unsuspension Failed','<p>This product/service has received its next payment but the automatic reactivation has failed.</p>\r\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'admin','Service Unsuspension Successful','WHMCS Service Unsuspension Successful','<p>This product/service has received its next payment and has been reactivated successfully.</p>\r\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'admin','Escalation Rule Notification','[Ticket ID: {$ticket_tid}] Escalation Rule Notification','<p>The escalation rule {$rule_name} has just been applied to this ticket.</p><p>Client: {$client_name}{if $client_id} #{$client_id}{/if} <br />Department: {$ticket_department} <br />Subject: {$ticket_subject} <br />Priority: {$ticket_priority}</p><p>---<br />{$ticket_message}<br />---</p><p>You can respond to this ticket by simply replying to this email or through the admin area at the url below.</p><p><a href=\"{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\">{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}</a></p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'invoice','Invoice Refund Confirmation','Invoice Refund Confirmation','<p>Dear {$client_name},</p>\r\n<p>This is confirmation that a {if $invoice_status eq \"Refunded\"}full{else}partial{/if} refund has been processed for Invoice #{$invoice_num}</p>\r\n<p>The refund has been {if $invoice_refund_type eq \"credit\"}credited to your account balance with us{else}returned via the payment method you originally paid with{/if}.</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount Refunded: {$invoice_last_payment_amount}{if $invoice_last_payment_transid}<br />Transaction #: {$invoice_last_payment_transid}{/if}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'admin','New Cancellation Request','New Cancellation Request','<p>A new cancellation request has been submitted.</p><p>Client ID: {$client_id}<br>Client Name: {$clientname}<br>Service ID: {$service_id}<br>Product Name: {$product_name}<br>Cancellation Type: {$service_cancellation_type}<br>Cancellation Reason: {$service_cancellation_reason}</p><p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'domain','Domain Transfer Failed','Domain Transfer Failed: {$domain_name}','<p>Dear {$client_name},</p><p>Recently you placed a domain transfer order with us but unfortunately it has failed. The reason for the failure if available is shown below so once this has been resolved, please contact us to re-attempt the transfer.</p><p>Domain: {$domain_name}<br>Failure Reason: {$domain_transfer_failure_reason}</p><p>If you have any questions, please open a support ticket from our client area @ {$whmcs_link}</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'general','Quote Accepted','Quote #{$quote_number} Accepted - {$quote_subject}','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a confirmation that quote generated on {$quote_date_created} has been accepted by you and invoice # {$invoice_num} is generated.\r\n<p>\r\n{$signature} \r\n</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'admin','Quote Accepted Notification','Quote #{$quote_number} Accepted - {$quote_subject}','<p>A quote has been accepted by the following customer.</p><p><strong>Customer Information</strong></p>\r\n<p>Customer ID: {$client_id}<br />\r\nName: {$clientname}<br />\r\nEmail: {$client_email}<br />\r\nCompany: {$client_company_name}<br />\r\nAddress 1: {$client_address1}<br />\r\nAddress 2: {$client_address2}<br />\r\nCity: {$client_city}<br />\r\nState: {$client_state}<br />\r\nPostcode: {$client_postcode}<br />\r\nCountry: {$client_country}<br />\r\nPhone Number: {$client_phonenumber}</p>\r\n<p><strong>Quote Information</strong></p>\r\n<p>Quote #: {$quote_number}<br />\r\nQuote Subject: {$quote_subject}</p><p><a href=\"{$whmcs_admin_url}quotes.php?action=manage&id={$quote_number}\">{$whmcs_admin_url}quotes.php?action=manage&id={$quote_number}</a></p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'general','Password Reset Confirmation','Your password has been reset for {$company_name}','<p>Dear {$client_name},</p><p>As you requested, your password for our client area has now been reset. </p><p>If it was not at your request, then please contact support immediately.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'support','Support Ticket Feedback Request','Your Feedback is Requested for Ticket #{$ticket_id}','<p>This support request has been marked as completed.</p><p>We would really appreciate it if you would just take a moment to let us know about the quality of your experience.</p><p><a href=\"{$ticket_url}&feedback=1\">{$ticket_url}&feedback=1</a></p><p>Your feedback is very important to us.</p><p>Thank you for your business.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'support','Replies Only Bounce Message','Online Submission Required','<p>{$client_name},</p><p>Your email to our support system could not be accepted because we require you to submit all tickets via our online client support portal. You can do this at the URL below.</p><p><a href=\"{$whmcs_url}/submitticket.php\">{$whmcs_url}/submitticket.php</a></p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'general','Unsubscribe Confirmation','Unsubscribe Confirmation','Dear {$client_name},<br /><br />We have now removed your email address from our mailing list.<br /><br />If this was a mistake or you change your mind, you can re-subscribe at any time from the My Details section of our client area.<br /><br /><a href=\"{$whmcs_url}/clientarea.php?action=details\">{$whmcs_url}/clientarea.php?action=details</a><br /><br />{$signature}','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'support','Closed Ticket Bounce Message','Closed Ticket Bounce Message','<p>{$client_name},</p>\n<p>Your email to our ticket system could not be accepted because the ticket being responded to has already been closed.</p>\n<p>{if $client_id}If you wish to reopen this ticket, you can do so from our client area:\n{$ticket_link}{else}To open a new ticket, please visit:</p>\n<p><a href=\"{$whmcs_url}/submitticket.php\">{$whmcs_url}/submitticket.php</a>{/if}</p>\n<p>This is an automated response from our support system.</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'domain','Expired Domain Notice','Expired Domain Notice','<p>Dear {$client_name},</p>\n<p>The domain name listed below expired {$domain_days_after_expiry} days ago.</p>\n<p>{$domain_name}</p>\n<p>To ensure that the domain isn\'t registered by someone else, you should renew it now. To renew the domain, please visit the following page and follow the steps shown: <a title=\"{$whmcs_url}/cart.php?gid=renewals\" href=\"{$whmcs_url}/cart.php?gid=renewals\">{$whmcs_url}/cart.php?gid=renewals</a></p>\n<p>Due to the domain expiring, the domain will not be accessible so any web site or email services associated with it will stop working. You may be able to renew it for up to 30 days after the renewal date.</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'product','Service Unsuspension Notification','Service Unsuspension Notification','<p>Dear {$client_name},</p>\n<p>This is a notification that your service has now been unsuspended. The details of this unsuspension are below:</p>\n<p>Product/Service: {$service_product_name}<br />{if $service_domain}Domain: {$service_domain}<br />{/if}Amount: {$service_recurring_amount}<br />Due Date: {$service_next_due_date}</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'2016-02-24 14:27:00','2016-02-24 14:27:00'),(63,'admin','Manual Upgrade Required','Manual Upgrade Required','<p>An upgrade order has received its payment, but does not support automatic upgrades and requires manually processing.</p>\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Order ID: {$order_id}</p>\n<p>{if $upgrade_type eq \'package\'}New Package ID: {$new_package_id}<br />Existing Billing Cycle: {$billing_cycle}<br />New Billing Cycle: {$new_billing_cycle}{else}Configurable Option: {$config_id}<br />Option Type: {$option_type}<br />Current Value: {$current_value}<br />New Value: {$new_value}{/if}</p>\n<p><a href=\"{$whmcs_admin_url}orders.php?action=view&id={$order_id}\">\n{$whmcs_admin_url}orders.php?action=view&id={$order_id}</a></p>','','','',0,0,'','','',0,'2016-02-24 14:27:00','2016-02-24 14:27:00'),(64,'general','Client Email Address Verification','Confirm Your Registration','<p>Dear {$client_name},</p><p>Thank you for creating a {$companyname} account.</p><p>Please visit the link below and sign into your account to verify your email address and complete your registration.</p><p>{$client_email_verification_link}</p><p>You are receiving this email because you recently created an account or changed your email address. If you did not do this, please contact us.</p><p>{$signature}</p>','','','',0,0,'','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'admin','Support Ticket Change Notification','[Ticket ID: {$ticket_tid}] {$ticket_subject}','{if $newTicket}\r\n    <p>Ticket #<a href=\"{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\"><strong>{$ticket_tid}</strong></a> has been opened by <strong>{$changer}</strong>.</p>\r\n    <p>\r\n        Client: {$client_name}{if $client_id} #{$client_id}{/if}<br />\r\n        Department: {$ticket_department}<br />\r\n        Subject: {$ticket_subject}<br />\r\n        Priority: {$ticket_priority}\r\n    </p>\r\n    <div class=\"quoted-content\">\r\n        {$newTicket}\r\n    </div>\r\n{else}\r\n    <p>Ticket #<a href=\"{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\"><strong>{$ticket_tid}</strong></a> {if $newReply || $newNote}has had a new {if $newReply}reply{else}note{/if} posted by{else}has been updated by{/if} <strong>{$changer}</strong>.</p>\r\n\r\n    {if $changes}\r\n        <table class=\"keyvalue-table\" style=\"border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;\">\r\n            <tbody>\r\n                {foreach $changes as $change}\r\n                    <tr>\r\n                        <td>{$change@key}:</td>\r\n                        <td>\r\n                            <span style=\"background-color:#ffe7e7;text-decoration:line-through;\">{$change.old}</span>\r\n                            &nbsp;\r\n                            <span style=\"background-color:#ddfade;\">{$change.new}</span>\r\n                        </td>\r\n                    </tr>\r\n                {/foreach}\r\n            </tbody>\r\n        </table>\r\n    {/if}\r\n\r\n    {if $newReply}\r\n        <div class=\"quoted-content\">\r\n            {$newReply}\r\n        </div>\r\n    {/if}\r\n\r\n    {if $newNote}\r\n        <div class=\"quoted-content\">\r\n            {$newNote}\r\n        </div>\r\n    {/if}\r\n\r\n    {if $newAttachments}{$newAttachments}{/if}\r\n{/if}\r\n<p>\r\n    You can respond to this ticket by simply replying to this email or through the admin area at the url below.\r\n</p>\r\n<p>\r\n    <a href=\"{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\">\r\n        {$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\r\n    </a>\r\n</p>','','','',0,0,'','','',0,'2016-02-24 14:27:04','2016-02-24 14:27:04'),(66,'admin','Admin Password Reset Validation','WHMCS Password Reset','<p>Hi {$firstname},</p>\r\n<p>Recently a request was submitted to reset your admin password. Follow the link below to reset it.</p>\r\n<p><a href=\"{$pw_reset_url}\">{$pw_reset_url}</a></p>\r\n<p>If you did not request a password reset, please ignore this email. The password reset link will expire in 2 hours.</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'2016-09-07 14:57:57','2016-09-07 14:57:57'),(67,'admin','Admin Password Reset Confirmation','WHMCS Password Reset Confirmation','<p>Hi {$firstname},</p>\r\n<p>This is a confirmation that your admin password has now been reset.</p>\r\n<p>If you did not initiate this password reset, please notify your system administrator immediately.</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'2016-09-07 14:57:57','2016-09-07 14:57:57'),(68,'product','SpamExperts Welcome Email','Welcome to Spam Free Email','<p>Congratulations!</p>\r\n<p>Your service has been setup and is ready for you to begin using.</p>\r\n{if $configuration_required}\r\n<p><strong>Required Action</strong></p>\r\n<p>To begin using SpamExperts mail services, you must modify the MX records for your domain to the following:</p>\r\n<p>\r\n{foreach from=$required_mx_records key=mx_host item=mx_priority}\r\n    {$mx_host} with a recommended priority of {$mx_priority}<br />\r\n{/foreach}\r\n</p>\r\n<p>We have guides available for this at <a href=\"https://documentation.solarwindsmsp.com/spamexperts/documentation/Content/B_Admin%20Level/domains/mx-records.htm\" target=\"_blank\">https://documentation.solarwindsmsp.com/spamexperts/documentation/Content/B_Admin%20Level/domains/mx-records.htm</a></p>\r\n{/if}\r\n{if $outgoing_service}\r\n<p><strong>Outgoing Email Filtering</strong></p>\r\n<p>Outgoing Email Filtering protects your reputation by preventing spam & viruses from leaving \r\nyour network and working to ensure your IPs are protected from being blacklisted.<br>\r\nTo begin using it, you will need to login to the SpamExperts Control Panel to create \r\nthe outgoing user accounts you will use to send email.<br>\r\nOnce the user accounts are created, you will need to update your email clients to use \r\nthe new hostname and credentials provided via the SpamExperts Control Panel.<br>\r\nMore information on how to do this can be found at <a href=\"https://kb.spamexperts.com/36678-getting-started/227750-getting-started-with-outbound\" target=\"_blank\">https://kb.spamexperts.com/36678-getting-started/227750-getting-started-with-outbound</a>\r\n</p>\r\n{/if}\r\n{if $archiving_service}\r\n<p><strong>Email Archiving</strong></p>\r\n<p>Your purchase included Email Archiving which helps to ensure you will never lose an email again.<br>\r\nEmail archiving has been automatically enabled and you can review and access your email archives \r\nvia the SpamExperts Control Panel at any time.\r\n</p>\r\n{/if}\r\n<p><strong>Managing your Service</strong></p>\r\n<p>You can access and manage your email filtering at any time from our client area at {$whmcs_link}</p>\r\n<p>Simply login and look for the SpamExperts Manage link on the homepage.</p>\r\n<p>If you need any further assistance, please contact our <a href=\"{$whmcs_url}submitticket.php\">support team</a></p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'2018-04-18 09:21:40','2018-04-18 09:21:40'),(69,'product','Weebly Welcome Email','Welcome to your Beautiful Website','<p>Dear {$client_name},</p>\r\n<p>Congratulations!</p>\r\n<p>Your account has been setup and you are ready to begin building your site with Weebly.</p>\r\n{if $configuration_required}\n<p>To allow automatic publishing of your site, Weebly require an FTP account to be created and provided to them in their settings.</p>\r\n{/if}\n<p>Guides for how to get started with Weebly can be found at <a href=\"https://www.weebly.com/app/help/us/en/topics/first-steps\">https://www.weebly.com/app/help/us/en/topics/first-steps</a></p>\r\n<p>To access the Weebly site builder and begin building your website, please <a href=\"{$whmcs_url}clientarea.php?action=productdetails&id={$service_id}\">click here</a></p>\r\n<p>If you need any further assistance, please contact our <a href=\"{$whmcs_url}submitticket.php\">support team</a></p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'2018-04-18 09:21:40','2018-04-18 09:21:40'),(70,'invoice','Direct Debit Payment Failed','Direct Debit Payment Failed','<p>Dear {$client_name},</p>\n<p>This is a notice that a recent direct debit payment for you failed.</p>\n<p>Invoice Date: {$invoice_date_created}<br />Invoice No: {$invoice_num}<br />Amount: {$invoice_total}<br />Status: {$invoice_status}</p>\n<p>You now need to login to your client area to pay the invoice manually.<br />{$invoice_link}</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'2017-02-21 08:48:41','2017-02-21 08:48:41'),(71,'invoice','Direct Debit Payment Confirmation','Direct Debit Payment Confirmation','<p>Dear {$client_name},</p>\n<p>This is a payment receipt for Invoice {$invoice_num} generated on {$invoice_date_created}. The payment has been taken automatically via direct debit.</p>\n<p>Amount: {$invoice_total}<br />Status: {$invoice_status}</p>\n<p>You may review your invoice history at any time by logging in to your client area.<br />{$invoice_link}</p>\n<p>Note: This email will serve as an official receipt for this payment.</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'2017-02-21 08:48:42','2017-02-21 08:48:42'),(72,'invoice','Direct Debit Payment Pending','Direct Debit Payment Pending','<p>Dear {$client_name},</p>\n<p>This is a notification that a payment has been requested for Invoice {$invoice_num}. The payment has been taken automatically via direct debit on or around {$invoice_date_due}.</p>\n<p>Amount: {$invoice_total}<br />Status: {$invoice_status}</p>\n<p>You may review your invoice history at any time by logging in to your client area.<br />{$invoice_link}</p>\n<p>Note: This email will serve as an official notification for this payment.</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'2017-02-21 08:48:42','2017-02-21 08:48:42'),(73,'invoice','Credit Card Payment Pending','Credit Card Payment Pending','<p>Dear {$client_name},</p>\n<p>This is a payment pending notification for Invoice {$invoice_num} generated on {$invoice_date_created}. The payment will be taken from your card on record with us automatically.</p>\n<p>Amount: {$invoice_total}<br />Status: {$invoice_status}</p>\n<p>You may review your invoice history at any time by logging in to your client area.<br />{$invoice_link}</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'2017-02-21 08:48:42','2017-02-21 08:48:42'),(74,'admin','Payment Reversed Notification','Payment Reversed Notification','<p>This is a notification that a transaction has been reversed and follow up may be required.</p>\n<p>\n    Transaction ID: {$transaction_id}<br />\n    Transaction Date: {$transaction_date}<br />\n    Transaction Amount: {$transaction_amount}<br />\n    Payment Method: {$payment_method}<br />\n    Invoice ID: {$invoice_id}<br />\n</p>\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','','',0,'2017-03-13 16:32:42','2017-03-13 16:32:42'),(75,'product','SSL Certificate Configuration Required','SSL Certificate Configuration Required','<p>Dear {$client_name},</p>\r\n<p>Thank you for your order for an SSL Certificate. Before you can use your certificate, it requires configuration which can be done at the URL below.</p>\r\n<p>{$ssl_configuration_link}</p>\r\n<p>Instructions are provided throughout the process but if you experience any problems or have any questions, please open a ticket for assistance.</p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'2017-04-01 08:00:00','2017-04-01 08:00:00'),(76,'product','Upgrade Order Cancelled','Pending Upgrade Order Cancelled','<p>Dear {$client_name},</p>\r\n<p>Re: {$service_product_name}{if $service_domain} ({$service_domain}){/if}</p>\r\n<p>\r\n    Recently you placed an upgrade order with us.<br>\r\n    Today your automated renewal invoice has been generated for the product/service listed above which has invalidated the upgrade quote and invoice.<br>\r\n    As a result, your upgrade order has now been cancelled.\r\n</p>\r\n<p>Should you wish to continue with the upgrade, we ask that you please first pay the renewal invoice, after which you will be able to order the upgrade again and simply pay the difference.</p>\r\n<p>We thank you for your business.</p>\r\n<p>{$signature}</p>\r\n','','','',0,0,'','','',0,'2017-07-21 08:00:00','2017-07-21 08:00:00'),(77,'notification','Default Notification Message','Notification Message','<h2><a href=\"{$notification_url}\">{$notification_title}</a></h2>\r\n<div>{$notification_message}</div>\r\n{foreach from=$notification_attributes item=$attribute}\r\n<div>\r\n<div>{$attribute.label}: {if $attribute.icon}<img src=\"{$attribute.icon}\" alt=\"\" />{/if}{if $attribute.style}<span class=\"{$attribute.style}\">{/if}{if $attribute.url}<a href=\"{$attribute.url}\">{$attribute.value}</a>\r\n{else}{$attribute.value}{/if}{if $attribute.style}</span>{/if}</div>\r\n</div>\r\n{/foreach}','','','',0,0,'','','',0,'2017-10-31 11:08:18','2017-10-31 11:08:18'),(78,'admin','Mention Notification','{$mention_admin_name} mentioned you in a {$mention_entity}','<p>{$mention_admin_name} mentioned you in {$mention_entity_description}:</p>\r\n<blockquote>\r\n{$message}\r\n</blockquote>\r\n<p><a href=\"{$mention_view_url}\" target=\"_blank\">{$mention_entity_action}</a></p>','','','',0,0,'','','',0,'2018-01-29 15:21:18','2018-01-29 15:21:18'),(79,'product','SiteLock Welcome Email','Getting Started with SiteLock','<p>Dear {$client_name},</p>\n<p>Thank you for purchasing the SiteLock service. You are just a few steps away from securing your website.</p>\n<p>Below are the details you will need to administer and use the SiteLock service.</p>\n{if ($sitelock_requires_ftp && !$sitelock_ftp_auto_provisioned) || ($sitelock_requires_dns && !$sitelock_dns_auto_provisioned)}\n    <p><b>Additional Setup Required</b></p>\n{/if}\n{if $sitelock_requires_ftp && !$sitelock_ftp_auto_provisioned}\n    <p>To allow SiteLock to automatically fix issues that are discovered with your website, SiteLock requires FTP access to your website.</p>\n    <p>Unfortunately we were unable to provision these automatically and so you must supply FTP credentials to SiteLock via the SiteLock Control Panel.</p>\n    <p>To do this, please login to our <a href=\"{$whmcs_url}\">client area</a> and click the Login button found under the SiteLock service. Then navigate to Sites > FTP Credentials within the SiteLock control panel.</p>\n{/if}\n{if $sitelock_requires_dns && !$sitelock_dns_auto_provisioned}\n    <p>To allow SiteLock to provide WAF and CDN services for your website, SiteLock requires some DNS changes.</p>\n    <p>Unfortunately we were unable to provision these automatically and so you must make these changes manually.</p>\n    <p>To do this, please modify your domain DNS host records as follows:</p>\n    <p>{$sitelock_dns_host_record_info}</p>\n{/if}\n<p><b>Using SiteLock</b></p>\n<p>To use the SiteLock service, login to our <a href=\"{$whmcs_url}\">client area</a> and click the Login button found under the SiteLock service.</p>\n<p>If you have any questions, please reply to this email. Thank you for choosing our services.</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'2018-02-15 15:07:49','2018-02-15 15:07:49'),(80,'invoice','Invoice Modified','Invoice #{$invoice_num} Updated','<p>Dear {$client_name},</p>\r\n<p>This is a notice that invoice #{$invoice_num} which was originally generated on {$invoice_date_created} has been updated.</p>\r\n<p>Your payment method is: {$invoice_payment_method}</p>\r\n<p>\r\n    Invoice #{$invoice_num}<br>\r\n    Amount Due: {$invoice_balance}<br>\r\n    Due Date: {$invoice_date_due}\r\n</p>\r\n<p>Invoice Items</p>\r\n<p>\r\n    {$invoice_html_contents}<br>\r\n    ------------------------------------------------------\r\n</p>\r\n<p>You can login to our client area to view and pay the invoice at {$invoice_link}</p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'2018-03-16 09:20:00','2018-03-16 09:20:00'),(81,'admin','Service Renewal Failed','WHMCS Service Renewal Failed','<p>\r\n    An automatic renewal attempt was triggered for this service but failed. The renewal will not be attempted again automatically. Please resolve the error and try again.\r\n</p>\r\n<p>\r\n    Client ID: {$client_id}<br />\r\n    Service ID: {$service_id}<br />\r\n    Product/Service: {$service_product}<br />\r\n    Domain: {$service_domain}<br />{if $addon_id}\r\n    Addon ID: {$addon_id}<br />\r\n    Addon: {$addon_name}<br />\r\n    {/if}Error: {$error_msg}\r\n</p>\r\n<p>\r\n    <a href=\"{$whmcs_admin_url}/clientsservices.php?userid={$client_id}&id={$service_id}{if $addon_id}&aid={$addon_id}\">\r\n        Go to {if $addon_id}addon{else}service{/if}\r\n    </a>\r\n</p>','','','',0,0,'','','',0,'2018-06-05 03:37:38','2018-06-05 03:37:38'),(82,'domain','Domain Transfer Completed','Transfer Completed for {$domain_name}','<p>Dear {$client_name},</p>\n<p>We are pleased to confirm that your recent domain transfer has now been completed.</p>\n<p>Order Date: {$domain_reg_date}<br />\nDomain: {$domain_name}<br />\nStatus: {$domain_status}</p>\n<p>You may now login to your client area at {$whmcs_link} to manage your domain.</p>\n<p>{$signature}</p>','','','',0,0,'','','',0,'2018-06-15 14:10:21','2018-06-15 14:10:21'),(83,'product','CodeGuard Welcome Email','Welcome to Website Protection','<p>Congratulations!</p>\r\n<p>Your CodeGuard website backup service has been provisioned successfully and is now ready for use!</p>\r\n{if $configuration_required}\r\n<p>To begin using the service, you will need to login and provide the SFTP or SSH credentials required to access your website. Our guide that demonstrates how to do this can be found at <a href=\"https://codeguard.zendesk.com/hc/en-us/articles/115000610543-How-do-I-back-up-my-website\" target=\"_blank\">https://codeguard.zendesk.com/hc/en-us/articles/115000610543-How-do-I-back-up-my-website</a></p>\r\n{else}\r\n<p>We have successfully configured daily backups for your website files and the first backup will be performed shortly. Once that has been performed, backups will be performed daily. If at any time a backup encounters problems, we will notify you by email.</p>\r\n<p>If you have databases that need to be backed up, CodeGuard will attempt to add them automatically after you have configured your website backup. Alternatively, database backups can be added manually. Our guide for how to do this can be found at <a href=\"https://codeguard.zendesk.com/hc/en-us/articles/115000604663-CodeGuard-Database-Backup-Walkthrough\" target=\"_blank\">https://codeguard.zendesk.com/hc/en-us/articles/115000604663-CodeGuard-Database-Backup-Walkthrough</a></p>\r\n{/if}\r\n<p>You can access and manage your website backups at any time from our <a href=\"{$whmcs_url}\">client area</a>. Simply login and look for the CodeGuard Manage link on the homepage.</p>\r\n<p>If you need any further assistance, you may contact our <a href=\"{$whmcs_url}submitticket.php\">support team</a> at any time.</p>\r\n<p>{$signature}</p>','','','',0,0,'','','',0,'2018-12-12 04:15:53','2018-12-12 04:15:53');
/*!40000 ALTER TABLE `tblemailtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfileassetmigrationprogress`
--

DROP TABLE IF EXISTS `tblfileassetmigrationprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfileassetmigrationprogress` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `migrated_objects` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `num_objects_migrated` int(10) unsigned DEFAULT '0',
  `num_objects_total` int(10) unsigned DEFAULT '0',
  `active` tinyint(1) unsigned DEFAULT '1',
  `num_failures` int(10) unsigned DEFAULT '0',
  `last_failure_reason` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_type` (`asset_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfileassetmigrationprogress`
--

LOCK TABLES `tblfileassetmigrationprogress` WRITE;
/*!40000 ALTER TABLE `tblfileassetmigrationprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfileassetmigrationprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfileassetsettings`
--

DROP TABLE IF EXISTS `tblfileassetsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfileassetsettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `storageconfiguration_id` int(10) unsigned NOT NULL,
  `migratetoconfiguration_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_type` (`asset_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfileassetsettings`
--

LOCK TABLES `tblfileassetsettings` WRITE;
/*!40000 ALTER TABLE `tblfileassetsettings` DISABLE KEYS */;
INSERT INTO `tblfileassetsettings` VALUES (1,'client_files',2,NULL,'2021-08-03 09:49:25','2021-08-03 09:49:25'),(2,'downloads',1,NULL,'2021-08-03 09:49:25','2021-08-03 09:49:25'),(3,'email_attachments',2,NULL,'2021-08-03 09:49:25','2021-08-03 09:49:25'),(4,'email_template_attachments',1,NULL,'2021-08-03 09:49:25','2021-08-03 09:49:25'),(5,'pm_files',3,NULL,'2021-08-03 09:49:25','2021-08-03 09:49:25'),(6,'ticket_attachments',2,NULL,'2021-08-03 09:49:25','2021-08-03 09:49:25');
/*!40000 ALTER TABLE `tblfileassetsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfraud`
--

DROP TABLE IF EXISTS `tblfraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfraud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fraud` text COLLATE utf8_unicode_ci NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fraud` (`fraud`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfraud`
--

LOCK TABLES `tblfraud` WRITE;
/*!40000 ALTER TABLE `tblfraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgatewaylog`
--

DROP TABLE IF EXISTS `tblgatewaylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgatewaylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gateway` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `transaction_history_id` int(10) unsigned NOT NULL DEFAULT '0',
  `result` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgatewaylog`
--

LOCK TABLES `tblgatewaylog` WRITE;
/*!40000 ALTER TABLE `tblgatewaylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgatewaylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhosting`
--

DROP TABLE IF EXISTS `tblhosting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhosting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderid` int(10) NOT NULL,
  `packageid` int(10) NOT NULL,
  `server` int(10) NOT NULL,
  `regdate` date NOT NULL,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `firstpaymentamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `billingcycle` text COLLATE utf8_unicode_ci NOT NULL,
  `nextduedate` date DEFAULT NULL,
  `nextinvoicedate` date NOT NULL,
  `termination_date` date NOT NULL DEFAULT '0000-00-00',
  `completed_date` date NOT NULL DEFAULT '0000-00-00',
  `domainstatus` enum('Pending','Active','Suspended','Terminated','Cancelled','Fraud','Completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `subscriptionid` text COLLATE utf8_unicode_ci NOT NULL,
  `promoid` int(10) NOT NULL,
  `suspendreason` text COLLATE utf8_unicode_ci NOT NULL,
  `overideautosuspend` tinyint(1) NOT NULL,
  `overidesuspenduntil` date NOT NULL,
  `dedicatedip` text COLLATE utf8_unicode_ci NOT NULL,
  `assignedips` text COLLATE utf8_unicode_ci NOT NULL,
  `ns1` text COLLATE utf8_unicode_ci NOT NULL,
  `ns2` text COLLATE utf8_unicode_ci NOT NULL,
  `diskusage` int(10) NOT NULL DEFAULT '0',
  `disklimit` int(10) NOT NULL DEFAULT '0',
  `bwusage` int(10) NOT NULL DEFAULT '0',
  `bwlimit` int(10) NOT NULL DEFAULT '0',
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`id`),
  KEY `userid` (`userid`),
  KEY `orderid` (`orderid`),
  KEY `productid` (`packageid`),
  KEY `serverid` (`server`),
  KEY `domain` (`domain`(64)),
  KEY `domainstatus` (`domainstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhosting`
--

LOCK TABLES `tblhosting` WRITE;
/*!40000 ALTER TABLE `tblhosting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhosting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhostingaddons`
--

DROP TABLE IF EXISTS `tblhostingaddons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhostingaddons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL,
  `hostingid` int(10) NOT NULL,
  `addonid` int(10) NOT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `server` int(10) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `setupfee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `recurring` decimal(10,2) NOT NULL DEFAULT '0.00',
  `billingcycle` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Pending','Active','Suspended','Terminated','Cancelled','Fraud','Completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `regdate` date NOT NULL DEFAULT '0000-00-00',
  `nextduedate` date DEFAULT NULL,
  `nextinvoicedate` date NOT NULL,
  `termination_date` date NOT NULL DEFAULT '0000-00-00',
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `serviceid` (`hostingid`),
  KEY `name` (`name`(32)),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhostingaddons`
--

LOCK TABLES `tblhostingaddons` WRITE;
/*!40000 ALTER TABLE `tblhostingaddons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhostingaddons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhostingconfigoptions`
--

DROP TABLE IF EXISTS `tblhostingconfigoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhostingconfigoptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `relid` int(10) NOT NULL,
  `configid` int(10) NOT NULL,
  `optionid` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid_configid` (`relid`,`configid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhostingconfigoptions`
--

LOCK TABLES `tblhostingconfigoptions` WRITE;
/*!40000 ALTER TABLE `tblhostingconfigoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhostingconfigoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoicedata`
--

DROP TABLE IF EXISTS `tblinvoicedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoicedata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblinvoicedata_invoice_id_unique` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoicedata`
--

LOCK TABLES `tblinvoicedata` WRITE;
/*!40000 ALTER TABLE `tblinvoicedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoicedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoiceitems`
--

DROP TABLE IF EXISTS `tblinvoiceitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoiceitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `relid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `userid` (`userid`,`type`,`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoiceitems`
--

LOCK TABLES `tblinvoiceitems` WRITE;
/*!40000 ALTER TABLE `tblinvoiceitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoiceitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoices`
--

DROP TABLE IF EXISTS `tblinvoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `invoicenum` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_capture_attempt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subtotal` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `paymethodid` int(10) unsigned DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`(3))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoices`
--

LOCK TABLES `tblinvoices` WRITE;
/*!40000 ALTER TABLE `tblinvoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblioncube_file_log`
--

DROP TABLE IF EXISTS `tblioncube_file_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblioncube_file_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `content_hash` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encoder_version` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bundled_php_versions` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `loaded_in_php` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target_php_version` char(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblioncube_file_log`
--

LOCK TABLES `tblioncube_file_log` WRITE;
/*!40000 ALTER TABLE `tblioncube_file_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblioncube_file_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbljobs_queue`
--

DROP TABLE IF EXISTS `tbljobs_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbljobs_queue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `class_name` varchar(255) NOT NULL DEFAULT '',
  `method_name` varchar(255) NOT NULL DEFAULT '',
  `input_parameters` text NOT NULL,
  `available_at` datetime NOT NULL,
  `digest_hash` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbljobs_queue`
--

LOCK TABLES `tbljobs_queue` WRITE;
/*!40000 ALTER TABLE `tbljobs_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbljobs_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebase`
--

DROP TABLE IF EXISTS `tblknowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebase` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `article` text COLLATE utf8_unicode_ci NOT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  `useful` int(10) NOT NULL DEFAULT '0',
  `votes` int(10) NOT NULL DEFAULT '0',
  `private` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(3) NOT NULL,
  `parentid` int(10) NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebase`
--

LOCK TABLES `tblknowledgebase` WRITE;
/*!40000 ALTER TABLE `tblknowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebasecats`
--

DROP TABLE IF EXISTS `tblknowledgebasecats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebasecats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` text COLLATE utf8_unicode_ci NOT NULL,
  `catid` int(10) NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `name` (`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebasecats`
--

LOCK TABLES `tblknowledgebasecats` WRITE;
/*!40000 ALTER TABLE `tblknowledgebasecats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebasecats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebaselinks`
--

DROP TABLE IF EXISTS `tblknowledgebaselinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebaselinks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `categoryid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebaselinks`
--

LOCK TABLES `tblknowledgebaselinks` WRITE;
/*!40000 ALTER TABLE `tblknowledgebaselinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebaselinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebasetags`
--

DROP TABLE IF EXISTS `tblknowledgebasetags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebasetags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `tag` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebasetags`
--

LOCK TABLES `tblknowledgebasetags` WRITE;
/*!40000 ALTER TABLE `tblknowledgebasetags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebasetags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllinks`
--

DROP TABLE IF EXISTS `tbllinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllinks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `clicks` int(10) NOT NULL,
  `conversions` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllinks`
--

LOCK TABLES `tbllinks` WRITE;
/*!40000 ALTER TABLE `tbllinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllog_register`
--

DROP TABLE IF EXISTS `tbllog_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllog_register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `namespace_id` int(10) unsigned DEFAULT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `namespace_value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllog_register`
--

LOCK TABLES `tbllog_register` WRITE;
/*!40000 ALTER TABLE `tbllog_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllog_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmarketconnect_services`
--

DROP TABLE IF EXISTS `tblmarketconnect_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmarketconnect_services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` text NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmarketconnect_services`
--

LOCK TABLES `tblmarketconnect_services` WRITE;
/*!40000 ALTER TABLE `tblmarketconnect_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmarketconnect_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmarketing_consent`
--

DROP TABLE IF EXISTS `tblmarketing_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmarketing_consent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `opt_in` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmarketing_consent`
--

LOCK TABLES `tblmarketing_consent` WRITE;
/*!40000 ALTER TABLE `tblmarketing_consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmarketing_consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmetric_usage`
--

DROP TABLE IF EXISTS `tblmetric_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmetric_usage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rel_id` int(10) NOT NULL DEFAULT '0',
  `module_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metric` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblmetric_usage_rel_type_id` (`rel_type`,`rel_id`),
  KEY `tblmetric_usage_module_type` (`module_type`),
  KEY `tblmetric_usage_module` (`module`),
  KEY `tblmetric_usage_metric` (`metric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmetric_usage`
--

LOCK TABLES `tblmetric_usage` WRITE;
/*!40000 ALTER TABLE `tblmetric_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmetric_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmodule_configuration`
--

DROP TABLE IF EXISTS `tblmodule_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmodule_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `setting_name` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `friendly_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_constraint` (`entity_type`,`entity_id`,`setting_name`),
  KEY `tblmodule_configuration_entity_type_index` (`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmodule_configuration`
--

LOCK TABLES `tblmodule_configuration` WRITE;
/*!40000 ALTER TABLE `tblmodule_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmodule_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmodulelog`
--

DROP TABLE IF EXISTS `tblmodulelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmodulelog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `module` text COLLATE utf8_unicode_ci NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  `request` text COLLATE utf8_unicode_ci NOT NULL,
  `response` text COLLATE utf8_unicode_ci NOT NULL,
  `arrdata` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmodulelog`
--

LOCK TABLES `tblmodulelog` WRITE;
/*!40000 ALTER TABLE `tblmodulelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmodulelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmodulequeue`
--

DROP TABLE IF EXISTS `tblmodulequeue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmodulequeue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `service_id` int(10) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module_action` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_attempt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_error` text COLLATE utf8_unicode_ci NOT NULL,
  `num_retries` smallint(5) unsigned NOT NULL DEFAULT '0',
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmodulequeue`
--

LOCK TABLES `tblmodulequeue` WRITE;
/*!40000 ALTER TABLE `tblmodulequeue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmodulequeue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnetworkissues`
--

DROP TABLE IF EXISTS `tblnetworkissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnetworkissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('Server','System','Other') COLLATE utf8_unicode_ci NOT NULL,
  `affecting` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` int(10) unsigned DEFAULT NULL,
  `priority` enum('Critical','Low','Medium','High') COLLATE utf8_unicode_ci NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `status` enum('Reported','Investigating','In Progress','Outage','Scheduled','Resolved') COLLATE utf8_unicode_ci NOT NULL,
  `lastupdate` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnetworkissues`
--

LOCK TABLES `tblnetworkissues` WRITE;
/*!40000 ALTER TABLE `tblnetworkissues` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnetworkissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnotes`
--

DROP TABLE IF EXISTS `tblnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `adminid` int(10) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `sticky` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotes`
--

LOCK TABLES `tblnotes` WRITE;
/*!40000 ALTER TABLE `tblnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnotificationproviders`
--

DROP TABLE IF EXISTS `tblnotificationproviders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnotificationproviders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotificationproviders`
--

LOCK TABLES `tblnotificationproviders` WRITE;
/*!40000 ALTER TABLE `tblnotificationproviders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnotificationproviders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnotificationrules`
--

DROP TABLE IF EXISTS `tblnotificationrules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnotificationrules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `events` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `conditions` text COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `provider_config` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `can_delete` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotificationrules`
--

LOCK TABLES `tblnotificationrules` WRITE;
/*!40000 ALTER TABLE `tblnotificationrules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnotificationrules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_access_token_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_access_token_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_access_token_scopes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `access_token_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tbloauthserver_access_token_scopes_scope_id_index` (`access_token_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_access_token_scopes`
--

LOCK TABLES `tbloauthserver_access_token_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_access_token_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_access_token_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_access_tokens`
--

DROP TABLE IF EXISTS `tbloauthserver_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_access_tokens_access_token_unique` (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_access_tokens`
--

LOCK TABLES `tbloauthserver_access_tokens` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_auth_codes`
--

DROP TABLE IF EXISTS `tbloauthserver_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_auth_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorization_code` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_token` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_auth_codes_authorization_code_unique` (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_auth_codes`
--

LOCK TABLES `tbloauthserver_auth_codes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_authcode_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_authcode_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_authcode_scopes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `authorization_code_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tbloauthserver_authcode_scopes_scope_id_index` (`authorization_code_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_authcode_scopes`
--

LOCK TABLES `tbloauthserver_authcode_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_authcode_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_authcode_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_client_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_client_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_client_scopes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tbloauthserver_client_scopes_scope_id_index` (`client_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_client_scopes`
--

LOCK TABLES `tbloauthserver_client_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_client_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_client_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_clients`
--

DROP TABLE IF EXISTS `tbloauthserver_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grant_types` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logo_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rsa_key_pair_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_clients_identifier_unique` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_clients`
--

LOCK TABLES `tbloauthserver_clients` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_scopes_scope_unique` (`scope`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_scopes`
--

LOCK TABLES `tbloauthserver_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_scopes` DISABLE KEYS */;
INSERT INTO `tbloauthserver_scopes` VALUES (1,'clientarea:sso','Single Sign-on for Client Area',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'clientarea:profile','Account Profile',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'clientarea:billing_info','Manage Billing Information',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'clientarea:emails','Email History',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'clientarea:announcements','Announcements',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'clientarea:downloads','Downloads',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'clientarea:knowledgebase','Knowledgebase',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'clientarea:network_status','Network Status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'clientarea:services','Products/Services',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'clientarea:product_details','Product Info/Details (requires associated serviceId)',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'clientarea:domains','Domains',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'clientarea:domain_details','Domain Info/Details (requires associated domainId)',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'clientarea:invoices','Invoices',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'clientarea:tickets','Support Tickets',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'clientarea:submit_ticket','Submit New Ticket',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'clientarea:shopping_cart','Shopping Cart Default Product Group',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'clientarea:shopping_cart_addons','Shopping Cart Product Addons',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'clientarea:shopping_cart_domain_register','Shopping Cart Register New Domain',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'clientarea:shopping_cart_domain_transfer','Shopping Cart Transfer Existing Domain',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'openid','Scope required for OpenID Connect ID tokens',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'email','Scope used for Email Claim',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'profile','Scope used for Profile Claim',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'clientarea:upgrade','Upgrade/Downgrade',0,'2018-04-18 09:21:42','2018-04-18 09:21:42');
/*!40000 ALTER TABLE `tbloauthserver_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_user_authz`
--

DROP TABLE IF EXISTS `tbloauthserver_user_authz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_user_authz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_user_authz`
--

LOCK TABLES `tbloauthserver_user_authz` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_user_authz` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_user_authz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_user_authz_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_user_authz_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_user_authz_scopes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_authz_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tbloauthserver_user_authz_scopes_scope_id_index` (`user_authz_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_user_authz_scopes`
--

LOCK TABLES `tbloauthserver_user_authz_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_user_authz_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_user_authz_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ordernum` bigint(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `nameservers` text COLLATE utf8_unicode_ci NOT NULL,
  `transfersecret` text COLLATE utf8_unicode_ci NOT NULL,
  `renewals` text COLLATE utf8_unicode_ci NOT NULL,
  `promocode` text COLLATE utf8_unicode_ci NOT NULL,
  `promotype` text COLLATE utf8_unicode_ci NOT NULL,
  `promovalue` text COLLATE utf8_unicode_ci NOT NULL,
  `orderdata` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `ipaddress` text COLLATE utf8_unicode_ci NOT NULL,
  `fraudmodule` text COLLATE utf8_unicode_ci NOT NULL,
  `fraudoutput` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ordernum` (`ordernum`),
  KEY `userid` (`userid`),
  KEY `contactid` (`contactid`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES `tblorders` WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorderstatuses`
--

DROP TABLE IF EXISTS `tblorderstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorderstatuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `color` text COLLATE utf8_unicode_ci NOT NULL,
  `showpending` int(1) NOT NULL,
  `showactive` int(1) NOT NULL,
  `showcancelled` int(1) NOT NULL,
  `sortorder` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorderstatuses`
--

LOCK TABLES `tblorderstatuses` WRITE;
/*!40000 ALTER TABLE `tblorderstatuses` DISABLE KEYS */;
INSERT INTO `tblorderstatuses` VALUES (1,'Pending','#cc0000',1,0,0,10),(2,'Active','#779500',0,1,0,20),(3,'Cancelled','#888888',0,0,1,30),(4,'Fraud','#000000',0,0,0,40);
/*!40000 ALTER TABLE `tblorderstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpaymentgateways`
--

DROP TABLE IF EXISTS `tblpaymentgateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpaymentgateways` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gateway` text COLLATE utf8_unicode_ci NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gateway_setting` (`gateway`(32),`setting`(32)),
  KEY `setting_value` (`setting`(32),`value`(32))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpaymentgateways`
--

LOCK TABLES `tblpaymentgateways` WRITE;
/*!40000 ALTER TABLE `tblpaymentgateways` DISABLE KEYS */;
INSERT INTO `tblpaymentgateways` VALUES (1,'paypal','forcesubscriptions','',0),(2,'paypal','forceonetime','',0);
/*!40000 ALTER TABLE `tblpaymentgateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpaymethods`
--

DROP TABLE IF EXISTS `tblpaymethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpaymethods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `contact_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `order_preference` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tblpaymethods_userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpaymethods`
--

LOCK TABLES `tblpaymethods` WRITE;
/*!40000 ALTER TABLE `tblpaymethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpaymethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpricing`
--

DROP TABLE IF EXISTS `tblpricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpricing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('product','addon','configoptions','domainregister','domaintransfer','domainrenew','domainaddons') COLLATE utf8_unicode_ci NOT NULL,
  `currency` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `msetupfee` decimal(10,2) NOT NULL,
  `qsetupfee` decimal(10,2) NOT NULL,
  `ssetupfee` decimal(10,2) NOT NULL,
  `asetupfee` decimal(10,2) NOT NULL,
  `bsetupfee` decimal(10,2) NOT NULL,
  `tsetupfee` decimal(10,2) NOT NULL,
  `monthly` decimal(10,2) NOT NULL,
  `quarterly` decimal(10,2) NOT NULL,
  `semiannually` decimal(10,2) NOT NULL,
  `annually` decimal(10,2) NOT NULL,
  `biennially` decimal(10,2) NOT NULL,
  `triennially` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpricing`
--

LOCK TABLES `tblpricing` WRITE;
/*!40000 ALTER TABLE `tblpricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct_downloads`
--

DROP TABLE IF EXISTS `tblproduct_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `download_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_downloads_product_id_index` (`product_id`),
  KEY `tblproduct_downloads_download_id_index` (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct_downloads`
--

LOCK TABLES `tblproduct_downloads` WRITE;
/*!40000 ALTER TABLE `tblproduct_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproduct_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct_group_features`
--

DROP TABLE IF EXISTS `tblproduct_group_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct_group_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_group_id` int(10) NOT NULL,
  `feature` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_group_features_product_group_id_index` (`product_group_id`),
  KEY `tblproduct_group_features_id_product_group_id_index` (`id`,`product_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct_group_features`
--

LOCK TABLES `tblproduct_group_features` WRITE;
/*!40000 ALTER TABLE `tblproduct_group_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproduct_group_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct_upgrade_products`
--

DROP TABLE IF EXISTS `tblproduct_upgrade_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct_upgrade_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `upgrade_product_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_upgrade_products_product_id_index` (`product_id`),
  KEY `tblproduct_upgrade_products_upgrade_product_id_index` (`upgrade_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct_upgrade_products`
--

LOCK TABLES `tblproduct_upgrade_products` WRITE;
/*!40000 ALTER TABLE `tblproduct_upgrade_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproduct_upgrade_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductconfiggroups`
--

DROP TABLE IF EXISTS `tblproductconfiggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductconfiggroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductconfiggroups`
--

LOCK TABLES `tblproductconfiggroups` WRITE;
/*!40000 ALTER TABLE `tblproductconfiggroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductconfiggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductconfiglinks`
--

DROP TABLE IF EXISTS `tblproductconfiglinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductconfiglinks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductconfiglinks`
--

LOCK TABLES `tblproductconfiglinks` WRITE;
/*!40000 ALTER TABLE `tblproductconfiglinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductconfiglinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductconfigoptions`
--

DROP TABLE IF EXISTS `tblproductconfigoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductconfigoptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL DEFAULT '0',
  `optionname` text COLLATE utf8_unicode_ci NOT NULL,
  `optiontype` text COLLATE utf8_unicode_ci NOT NULL,
  `qtyminimum` int(10) NOT NULL,
  `qtymaximum` int(10) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductconfigoptions`
--

LOCK TABLES `tblproductconfigoptions` WRITE;
/*!40000 ALTER TABLE `tblproductconfigoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductconfigoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductconfigoptionssub`
--

DROP TABLE IF EXISTS `tblproductconfigoptionssub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductconfigoptionssub` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `configid` int(10) NOT NULL,
  `optionname` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configid` (`configid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductconfigoptionssub`
--

LOCK TABLES `tblproductconfigoptionssub` WRITE;
/*!40000 ALTER TABLE `tblproductconfigoptionssub` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductconfigoptionssub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductgroups`
--

DROP TABLE IF EXISTS `tblproductgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductgroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `headline` text COLLATE utf8_unicode_ci,
  `tagline` text COLLATE utf8_unicode_ci,
  `orderfrmtpl` text COLLATE utf8_unicode_ci NOT NULL,
  `disabledgateways` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductgroups`
--

LOCK TABLES `tblproductgroups` WRITE;
/*!40000 ALTER TABLE `tblproductgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproducts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `gid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `showdomainoptions` tinyint(1) NOT NULL,
  `welcomeemail` int(10) NOT NULL DEFAULT '0',
  `stockcontrol` tinyint(1) NOT NULL,
  `qty` int(10) NOT NULL DEFAULT '0',
  `proratabilling` tinyint(1) NOT NULL,
  `proratadate` int(2) NOT NULL,
  `proratachargenextmonth` int(2) NOT NULL,
  `paytype` text COLLATE utf8_unicode_ci NOT NULL,
  `allowqty` int(1) NOT NULL,
  `subdomain` text COLLATE utf8_unicode_ci NOT NULL,
  `autosetup` text COLLATE utf8_unicode_ci NOT NULL,
  `servertype` text COLLATE utf8_unicode_ci NOT NULL,
  `servergroup` int(10) NOT NULL,
  `configoption1` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption2` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption3` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption4` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption5` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption6` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption7` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption8` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption9` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption10` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption11` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption12` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption13` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption14` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption15` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption16` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption17` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption18` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption19` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption20` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption21` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption22` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption23` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption24` text COLLATE utf8_unicode_ci NOT NULL,
  `freedomain` text COLLATE utf8_unicode_ci NOT NULL,
  `freedomainpaymentterms` text COLLATE utf8_unicode_ci NOT NULL,
  `freedomaintlds` text COLLATE utf8_unicode_ci NOT NULL,
  `recurringcycles` int(2) NOT NULL,
  `autoterminatedays` int(4) NOT NULL,
  `autoterminateemail` int(10) NOT NULL DEFAULT '0',
  `configoptionsupgrade` tinyint(1) NOT NULL,
  `billingcycleupgrade` text COLLATE utf8_unicode_ci NOT NULL,
  `upgradeemail` int(10) NOT NULL DEFAULT '0',
  `overagesenabled` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `overagesdisklimit` int(10) NOT NULL,
  `overagesbwlimit` int(10) NOT NULL,
  `overagesdiskprice` decimal(6,4) NOT NULL,
  `overagesbwprice` decimal(6,4) NOT NULL,
  `tax` tinyint(1) NOT NULL,
  `affiliateonetime` tinyint(1) NOT NULL,
  `affiliatepaytype` text COLLATE utf8_unicode_ci NOT NULL,
  `affiliatepayamount` decimal(10,2) NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0',
  `retired` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `name` (`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproducts`
--

LOCK TABLES `tblproducts` WRITE;
/*!40000 ALTER TABLE `tblproducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpromotions`
--

DROP TABLE IF EXISTS `tblpromotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpromotions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `recurring` int(1) DEFAULT NULL,
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cycles` text COLLATE utf8_unicode_ci NOT NULL,
  `appliesto` text COLLATE utf8_unicode_ci NOT NULL,
  `requires` text COLLATE utf8_unicode_ci NOT NULL,
  `requiresexisting` int(1) NOT NULL,
  `startdate` date NOT NULL,
  `expirationdate` date DEFAULT NULL,
  `maxuses` int(10) NOT NULL DEFAULT '0',
  `uses` int(10) NOT NULL DEFAULT '0',
  `lifetimepromo` int(1) NOT NULL,
  `applyonce` int(1) NOT NULL,
  `newsignups` int(1) NOT NULL,
  `existingclient` int(11) NOT NULL,
  `onceperclient` int(11) NOT NULL,
  `recurfor` int(3) NOT NULL,
  `upgrades` int(1) NOT NULL,
  `upgradeconfig` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpromotions`
--

LOCK TABLES `tblpromotions` WRITE;
/*!40000 ALTER TABLE `tblpromotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquoteitems`
--

DROP TABLE IF EXISTS `tblquoteitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblquoteitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `quoteid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` text COLLATE utf8_unicode_ci NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxable` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquoteitems`
--

LOCK TABLES `tblquoteitems` WRITE;
/*!40000 ALTER TABLE `tblquoteitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblquoteitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquotes`
--

DROP TABLE IF EXISTS `tblquotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblquotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') COLLATE utf8_unicode_ci NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `companyname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci NOT NULL,
  `address2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `state` text COLLATE utf8_unicode_ci NOT NULL,
  `postcode` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` text COLLATE utf8_unicode_ci NOT NULL,
  `tax_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` int(10) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `proposal` text COLLATE utf8_unicode_ci NOT NULL,
  `customernotes` text COLLATE utf8_unicode_ci NOT NULL,
  `adminnotes` text COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquotes`
--

LOCK TABLES `tblquotes` WRITE;
/*!40000 ALTER TABLE `tblquotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblquotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblregistrars`
--

DROP TABLE IF EXISTS `tblregistrars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblregistrars` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `registrar` text COLLATE utf8_unicode_ci NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registrar_setting` (`registrar`(32),`setting`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblregistrars`
--

LOCK TABLES `tblregistrars` WRITE;
/*!40000 ALTER TABLE `tblregistrars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblregistrars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrsakeypairs`
--

DROP TABLE IF EXISTS `tblrsakeypairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrsakeypairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(96) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `private_key` text COLLATE utf8_unicode_ci NOT NULL,
  `public_key` text COLLATE utf8_unicode_ci NOT NULL,
  `algorithm` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'RS256',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrsakeypairs`
--

LOCK TABLES `tblrsakeypairs` WRITE;
/*!40000 ALTER TABLE `tblrsakeypairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrsakeypairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservergroups`
--

DROP TABLE IF EXISTS `tblservergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservergroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `filltype` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservergroups`
--

LOCK TABLES `tblservergroups` WRITE;
/*!40000 ALTER TABLE `tblservergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservergroupsrel`
--

DROP TABLE IF EXISTS `tblservergroupsrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservergroupsrel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `serverid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservergroupsrel`
--

LOCK TABLES `tblservergroupsrel` WRITE;
/*!40000 ALTER TABLE `tblservergroupsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservergroupsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservers`
--

DROP TABLE IF EXISTS `tblservers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `ipaddress` text COLLATE utf8_unicode_ci NOT NULL,
  `assignedips` text COLLATE utf8_unicode_ci NOT NULL,
  `hostname` text COLLATE utf8_unicode_ci NOT NULL,
  `monthlycost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `noc` text COLLATE utf8_unicode_ci NOT NULL,
  `statusaddress` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver1` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver1ip` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver2` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver2ip` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver3` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver3ip` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver4` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver4ip` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver5` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver5ip` text COLLATE utf8_unicode_ci NOT NULL,
  `maxaccounts` int(10) NOT NULL DEFAULT '0',
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `accesshash` text COLLATE utf8_unicode_ci NOT NULL,
  `secure` text COLLATE utf8_unicode_ci NOT NULL,
  `port` int(8) DEFAULT NULL,
  `active` int(1) NOT NULL,
  `disabled` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservers`
--

LOCK TABLES `tblservers` WRITE;
/*!40000 ALTER TABLE `tblservers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservers_remote`
--

DROP TABLE IF EXISTS `tblservers_remote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservers_remote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(10) NOT NULL DEFAULT '0',
  `num_accounts` int(10) NOT NULL DEFAULT '0',
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblservers_remote_server_id` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservers_remote`
--

LOCK TABLES `tblservers_remote` WRITE;
/*!40000 ALTER TABLE `tblservers_remote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservers_remote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblserversssoperms`
--

DROP TABLE IF EXISTS `tblserversssoperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblserversssoperms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblserversssoperms`
--

LOCK TABLES `tblserversssoperms` WRITE;
/*!40000 ALTER TABLE `tblserversssoperms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblserversssoperms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsessions`
--

DROP TABLE IF EXISTS `tblsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessions_id_unique` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsessions`
--

LOCK TABLES `tblsessions` WRITE;
/*!40000 ALTER TABLE `tblsessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsslorders`
--

DROP TABLE IF EXISTS `tblsslorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsslorders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `serviceid` int(10) NOT NULL,
  `addon_id` int(10) NOT NULL DEFAULT '0',
  `remoteid` text COLLATE utf8_unicode_ci NOT NULL,
  `module` text COLLATE utf8_unicode_ci NOT NULL,
  `certtype` text COLLATE utf8_unicode_ci NOT NULL,
  `configdata` text COLLATE utf8_unicode_ci NOT NULL,
  `completiondate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsslorders`
--

LOCK TABLES `tblsslorders` WRITE;
/*!40000 ALTER TABLE `tblsslorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsslorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsslstatus`
--

DROP TABLE IF EXISTS `tblsslstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsslstatus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `domain_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `subject_org` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `issuer_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `issuer_org` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `last_synced_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `domain_name` (`domain_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsslstatus`
--

LOCK TABLES `tblsslstatus` WRITE;
/*!40000 ALTER TABLE `tblsslstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsslstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstorageconfigurations`
--

DROP TABLE IF EXISTS `tblstorageconfigurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstorageconfigurations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `last_error` text COLLATE utf8_unicode_ci,
  `is_local` tinyint(1) unsigned NOT NULL,
  `sort_order` int(1) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstorageconfigurations`
--

LOCK TABLES `tblstorageconfigurations` WRITE;
/*!40000 ALTER TABLE `tblstorageconfigurations` DISABLE KEYS */;
INSERT INTO `tblstorageconfigurations` VALUES (1,'Local Storage: /var/www/html/downloads','WHMCS\\File\\Provider\\LocalStorageProvider','{\"local_path\":\"\\/var\\/www\\/html\\/downloads\"}',NULL,1,1,'2021-08-03 09:49:25','2021-08-03 09:49:25'),(2,'Local Storage: /var/www/html/attachments','WHMCS\\File\\Provider\\LocalStorageProvider','{\"local_path\":\"\\/var\\/www\\/html\\/attachments\"}',NULL,1,2,'2021-08-03 09:49:25','2021-08-03 09:49:25'),(3,'Local Storage: /var/www/html/attachments/projects','WHMCS\\File\\Provider\\LocalStorageProvider','{\"local_path\":\"\\/var\\/www\\/html\\/attachments\\/projects\"}',NULL,1,3,'2021-08-03 09:49:25','2021-08-03 09:49:25');
/*!40000 ALTER TABLE `tblstorageconfigurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltask`
--

DROP TABLE IF EXISTS `tbltask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltask` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL DEFAULT '0',
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `is_periodic` tinyint(4) NOT NULL DEFAULT '1',
  `frequency` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltask`
--

LOCK TABLES `tbltask` WRITE;
/*!40000 ALTER TABLE `tbltask` DISABLE KEYS */;
INSERT INTO `tbltask` VALUES (1,1530,'WHMCS\\Cron\\Task\\AddLateFees',1,1,1440,'Late Fees','Apply Late Fees','2016-11-02 15:59:20','2016-11-02 15:59:20'),(2,1620,'WHMCS\\Cron\\Task\\AffiliateCommissions',1,1,1440,'Delayed Affiliate Commissions','Process Delayed Affiliate Commissions','2016-11-02 15:59:20','2016-11-02 15:59:20'),(3,1630,'WHMCS\\Cron\\Task\\AffiliateReports',1,1,43200,'Affiliate Reports','Send Monthly Affiliate Reports','2016-11-02 15:59:20','2016-11-02 15:59:20'),(4,1680,'WHMCS\\Cron\\Task\\AutoClientStatusSync',1,1,1440,'Client Status Update','Synchronise Client Status','2016-11-02 15:59:20','2016-11-02 15:59:20'),(5,1590,'WHMCS\\Cron\\Task\\AutoTerminations',1,1,1440,'Overdue Terminations','Process Overdue Terminations','2016-11-02 15:59:20','2016-11-02 15:59:20'),(6,1570,'WHMCS\\Cron\\Task\\CancellationRequests',1,1,1440,'Cancellation Requests','Process Cancellation Requests','2016-11-02 15:59:20','2016-11-02 15:59:20'),(7,2000,'WHMCS\\Cron\\Task\\CheckForWhmcsUpdate',1,1,480,'WHMCS Updates','Check for WHMCS Software Updates','2016-11-02 15:59:20','2016-11-02 15:59:20'),(8,1610,'WHMCS\\Cron\\Task\\CloseInactiveTickets',1,1,1440,'Inactive Tickets','Auto Close Inactive Tickets','2016-11-02 15:59:20','2016-11-02 15:59:20'),(9,1520,'WHMCS\\Cron\\Task\\CreateInvoices',1,1,1440,'Invoices','Generate Invoices','2016-11-02 15:59:20','2016-11-02 15:59:20'),(10,1650,'WHMCS\\Cron\\Task\\CreditCardExpiryNotices',1,1,43200,'Credit Card Expiry Notices','Sending Credit Card Expiry Reminders','2016-11-02 15:59:20','2016-11-02 15:59:20'),(11,1500,'WHMCS\\Cron\\Task\\CurrencyUpdateExchangeRates',1,1,1440,'Currency Exchange Rates','Update Currency Exchange Rates','2016-11-02 15:59:20','2016-11-02 15:59:20'),(12,1510,'WHMCS\\Cron\\Task\\CurrencyUpdateProductPricing',1,1,1440,'Product Pricing Updates','Update Product Prices for Current Rates','2016-11-02 15:59:20','2016-11-02 15:59:20'),(13,1560,'WHMCS\\Cron\\Task\\DomainRenewalNotices',1,1,1440,'Domain Renewal Notices','Processing Domain Renewal Notices','2016-11-02 15:59:20','2016-11-02 15:59:20'),(14,1640,'WHMCS\\Cron\\Task\\EmailMarketer',1,1,1440,'Email Marketer Rules','Process Email Marketer Rules','2016-11-02 15:59:20','2016-11-02 15:59:20'),(15,1600,'WHMCS\\Cron\\Task\\FixedTermTerminations',1,1,1440,'Fixed Term Terminations','Process Fixed Term Terminations','2016-11-02 15:59:20','2016-11-02 15:59:20'),(16,1550,'WHMCS\\Cron\\Task\\InvoiceReminders',1,1,1440,'Invoice & Overdue Reminders','Generate daily reminders for unpaid and overdue invoice','2016-11-02 15:59:20','2016-11-02 15:59:20'),(17,1670,'WHMCS\\Cron\\Task\\OverageBilling',1,1,43200,'Overage Billing Charges','Process Overage Billing Charges','2016-11-02 15:59:20','2016-11-02 15:59:20'),(18,1540,'WHMCS\\Cron\\Task\\ProcessCreditCardPayments',1,1,1440,'Credit Card Charges','Process Credit Card Charges','2016-11-02 15:59:20','2016-11-02 15:59:20'),(19,1580,'WHMCS\\Cron\\Task\\AutoSuspensions',1,1,1440,'Overdue Suspensions','Process Overdue Suspensions','2016-11-02 15:59:21','2016-11-02 15:59:21'),(20,1700,'WHMCS\\Cron\\Task\\TicketEscalations',1,1,3,'Ticket Escalation Rules','Process and escalate tickets per any Escalation Rules','2016-11-02 15:59:21','2016-11-02 15:59:21'),(21,1690,'WHMCS\\Cron\\Task\\UpdateDomainExpiryStatus',1,1,1440,'Domain Expiry','Update Domain Expiry Status','2016-11-02 15:59:21','2016-11-02 15:59:21'),(22,1660,'WHMCS\\Cron\\Task\\UpdateServerUsage',1,1,1440,'Server Usage Stats','Updating Disk & Bandwidth Usage Stats','2016-11-02 15:59:21','2016-11-02 15:59:21'),(23,2000,'WHMCS\\Cron\\Task\\RunJobsQueue',1,1,5,'Run Jobs Queue','Execute queued jobs that are due for execution.','2018-04-18 09:21:42','2018-04-18 09:21:42'),(24,1800,'WHMCS\\Cron\\Task\\DataRetentionPruning',1,1,1440,'Data Retention Pruning','Perform data retention pruning operations.','2018-04-18 09:21:43','2018-04-18 09:21:43'),(25,2100,'WHMCS\\Cron\\Task\\DomainTransferSync',1,1,240,'Domain Transfer Status Synchronisation','Syncing Domain Pending Transfer Status','2018-04-18 09:21:43','2018-04-18 09:21:43'),(26,2150,'WHMCS\\Cron\\Task\\DomainStatusSync',1,1,240,'Domain Status Synchronisation','Domain Status Syncing','2018-04-18 09:21:43','2018-04-18 09:21:43'),(27,1650,'WHMCS\\Cron\\Task\\SslStatusSync',1,1,1440,' SSL Sync','SSL Status Sync','2019-01-01 14:49:13','2019-01-01 14:49:13'),(28,1615,'WHMCS\\Cron\\Task\\AutoPruneTicketAttachments',1,1,60,'Prune Ticket Attachments','Auto Remove Inactive Ticket Attachments','2019-04-01 08:00:00','2019-04-01 08:00:00'),(29,1900,'WHMCS\\Cron\\Task\\ServerUsageCount',1,1,60,'Update Server Usage','Auto Update Server Usage Count','2019-07-29 08:00:00','2019-07-29 08:00:00'),(30,1910,'WHMCS\\Cron\\Task\\ServerRemoteMetaData',1,1,60,'Update Server Meta Data','Auto Update Server Meta Data','2019-07-29 08:00:00','2019-07-29 08:00:00');
/*!40000 ALTER TABLE `tbltask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltask_status`
--

DROP TABLE IF EXISTS `tbltask_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltask_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(10) unsigned NOT NULL,
  `in_progress` tinyint(4) NOT NULL DEFAULT '0',
  `last_run` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_due` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltask_status`
--

LOCK TABLES `tbltask_status` WRITE;
/*!40000 ALTER TABLE `tbltask_status` DISABLE KEYS */;
INSERT INTO `tbltask_status` VALUES (1,1,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(2,2,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(3,3,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(4,4,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(5,5,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(6,6,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(7,7,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(8,8,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(9,9,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(10,10,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(11,11,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(12,12,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(13,13,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(14,14,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(15,15,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(16,16,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(17,17,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(18,18,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:20','2018-04-18 09:21:39'),(19,19,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:21','2018-04-18 09:21:39'),(20,20,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:21','2018-04-18 09:21:39'),(21,21,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:21','2018-04-18 09:21:39'),(22,22,0,'2018-04-18 09:21:39','2016-11-02 15:59:23','2016-11-02 15:59:21','2018-04-18 09:21:39'),(23,23,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-04-18 09:21:42','2018-04-18 09:21:42'),(24,24,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-04-18 09:21:43','2018-04-18 09:21:43'),(25,25,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-04-18 09:21:43','2018-04-18 09:21:43'),(26,26,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-04-18 09:21:43','2018-04-18 09:21:43'),(27,27,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2019-01-01 14:49:13','2019-01-01 14:49:13'),(28,28,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2019-04-01 08:00:00','2019-04-01 08:00:00');
/*!40000 ALTER TABLE `tbltask_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltax`
--

DROP TABLE IF EXISTS `tbltax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `level` int(1) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `state` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_country` (`state`(32),`country`(2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltax`
--

LOCK TABLES `tbltax` WRITE;
/*!40000 ALTER TABLE `tbltax` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticket_watchers`
--

DROP TABLE IF EXISTS `tblticket_watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticket_watchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_ticket_unique` (`ticket_id`,`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticket_watchers`
--

LOCK TABLES `tblticket_watchers` WRITE;
/*!40000 ALTER TABLE `tblticket_watchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticket_watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketbreaklines`
--

DROP TABLE IF EXISTS `tblticketbreaklines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketbreaklines` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `breakline` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketbreaklines`
--

LOCK TABLES `tblticketbreaklines` WRITE;
/*!40000 ALTER TABLE `tblticketbreaklines` DISABLE KEYS */;
INSERT INTO `tblticketbreaklines` VALUES (1,'> -----Original Message-----'),(2,'----- Original Message -----'),(3,'-----Original Message-----'),(4,'<!-- Break Line -->'),(5,'====== Please reply above this line ======'),(6,'_____');
/*!40000 ALTER TABLE `tblticketbreaklines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketdepartments`
--

DROP TABLE IF EXISTS `tblticketdepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketdepartments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `clientsonly` text COLLATE utf8_unicode_ci NOT NULL,
  `piperepliesonly` text COLLATE utf8_unicode_ci NOT NULL,
  `noautoresponder` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(1) NOT NULL,
  `host` text COLLATE utf8_unicode_ci NOT NULL,
  `port` text COLLATE utf8_unicode_ci NOT NULL,
  `login` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `feedback_request` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketdepartments`
--

LOCK TABLES `tblticketdepartments` WRITE;
/*!40000 ALTER TABLE `tblticketdepartments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketdepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketescalations`
--

DROP TABLE IF EXISTS `tblticketescalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketescalations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `departments` text COLLATE utf8_unicode_ci NOT NULL,
  `statuses` text COLLATE utf8_unicode_ci NOT NULL,
  `priorities` text COLLATE utf8_unicode_ci NOT NULL,
  `timeelapsed` int(5) NOT NULL,
  `newdepartment` text COLLATE utf8_unicode_ci NOT NULL,
  `newpriority` text COLLATE utf8_unicode_ci NOT NULL,
  `newstatus` text COLLATE utf8_unicode_ci NOT NULL,
  `flagto` text COLLATE utf8_unicode_ci NOT NULL,
  `notify` text COLLATE utf8_unicode_ci NOT NULL,
  `addreply` text COLLATE utf8_unicode_ci NOT NULL,
  `editor` enum('plain','markdown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketescalations`
--

LOCK TABLES `tblticketescalations` WRITE;
/*!40000 ALTER TABLE `tblticketescalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketescalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketfeedback`
--

DROP TABLE IF EXISTS `tblticketfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketfeedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `adminid` int(10) NOT NULL,
  `rating` int(2) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketfeedback`
--

LOCK TABLES `tblticketfeedback` WRITE;
/*!40000 ALTER TABLE `tblticketfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketlog`
--

DROP TABLE IF EXISTS `tblticketlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `tid` int(10) NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketlog`
--

LOCK TABLES `tblticketlog` WRITE;
/*!40000 ALTER TABLE `tblticketlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketmaillog`
--

DROP TABLE IF EXISTS `tblticketmaillog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketmaillog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `to` text COLLATE utf8_unicode_ci NOT NULL,
  `cc` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketmaillog`
--

LOCK TABLES `tblticketmaillog` WRITE;
/*!40000 ALTER TABLE `tblticketmaillog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketmaillog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketnotes`
--

DROP TABLE IF EXISTS `tblticketnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketnotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `admin` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments_removed` tinyint(1) NOT NULL DEFAULT '0',
  `editor` enum('plain','markdown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  PRIMARY KEY (`id`),
  KEY `ticketid_date` (`ticketid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketnotes`
--

LOCK TABLES `tblticketnotes` WRITE;
/*!40000 ALTER TABLE `tblticketnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketpredefinedcats`
--

DROP TABLE IF EXISTS `tblticketpredefinedcats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketpredefinedcats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid_name` (`parentid`,`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketpredefinedcats`
--

LOCK TABLES `tblticketpredefinedcats` WRITE;
/*!40000 ALTER TABLE `tblticketpredefinedcats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketpredefinedcats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketpredefinedreplies`
--

DROP TABLE IF EXISTS `tblticketpredefinedreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketpredefinedreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `reply` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketpredefinedreplies`
--

LOCK TABLES `tblticketpredefinedreplies` WRITE;
/*!40000 ALTER TABLE `tblticketpredefinedreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketpredefinedreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketreplies`
--

DROP TABLE IF EXISTS `tblticketreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `admin` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments_removed` tinyint(1) NOT NULL DEFAULT '0',
  `rating` int(5) NOT NULL,
  `editor` enum('plain','markdown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  PRIMARY KEY (`id`),
  KEY `tid_date` (`tid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketreplies`
--

LOCK TABLES `tblticketreplies` WRITE;
/*!40000 ALTER TABLE `tblticketreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltickets`
--

DROP TABLE IF EXISTS `tbltickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltickets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `did` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `cc` text COLLATE utf8_unicode_ci NOT NULL,
  `c` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `urgency` text COLLATE utf8_unicode_ci NOT NULL,
  `admin` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments_removed` tinyint(1) NOT NULL DEFAULT '0',
  `lastreply` datetime NOT NULL,
  `flag` int(1) NOT NULL,
  `clientunread` int(1) NOT NULL,
  `adminunread` text COLLATE utf8_unicode_ci NOT NULL,
  `replyingadmin` int(1) NOT NULL,
  `replyingtime` datetime NOT NULL,
  `service` text COLLATE utf8_unicode_ci NOT NULL,
  `merged_ticket_id` int(11) NOT NULL DEFAULT '0',
  `editor` enum('plain','markdown','bbcode') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tid_c` (`tid`,`c`(64)),
  KEY `userid` (`userid`),
  KEY `date` (`date`),
  KEY `did` (`did`),
  KEY `merged_ticket_id` (`merged_ticket_id`,`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltickets`
--

LOCK TABLES `tbltickets` WRITE;
/*!40000 ALTER TABLE `tbltickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketspamfilters`
--

DROP TABLE IF EXISTS `tblticketspamfilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketspamfilters` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('sender','subject','phrase') COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketspamfilters`
--

LOCK TABLES `tblticketspamfilters` WRITE;
/*!40000 ALTER TABLE `tblticketspamfilters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketspamfilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketstatuses`
--

DROP TABLE IF EXISTS `tblticketstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketstatuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `color` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(2) NOT NULL,
  `showactive` int(1) NOT NULL,
  `showawaiting` int(1) NOT NULL,
  `autoclose` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketstatuses`
--

LOCK TABLES `tblticketstatuses` WRITE;
/*!40000 ALTER TABLE `tblticketstatuses` DISABLE KEYS */;
INSERT INTO `tblticketstatuses` VALUES (1,'Open','#779500',1,1,1,0),(2,'Answered','#000000',2,1,0,1),(3,'Customer-Reply','#ff6600',3,1,1,1),(4,'Closed','#888888',10,0,0,0),(5,'On Hold','#224488',5,1,0,0),(6,'In Progress','#cc0000',6,1,0,0);
/*!40000 ALTER TABLE `tblticketstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltickettags`
--

DROP TABLE IF EXISTS `tbltickettags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltickettags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltickettags`
--

LOCK TABLES `tbltickettags` WRITE;
/*!40000 ALTER TABLE `tbltickettags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltickettags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltld_categories`
--

DROP TABLE IF EXISTS `tbltld_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltld_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltld_categories`
--

LOCK TABLES `tbltld_categories` WRITE;
/*!40000 ALTER TABLE `tbltld_categories` DISABLE KEYS */;
INSERT INTO `tbltld_categories` VALUES (1,'gTLD',1,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(2,'Specialty',1,3,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(3,'Sponsored',1,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(4,'ccTLD',1,2,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(5,'Services',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(6,'Geographic',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(7,'Geography',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(8,'Education',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(9,'Popular',1,0,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(10,'Money and Finance',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(11,'Featured',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(12,'Community',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(13,'Identity and Lifestyle',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(14,'Arts and Entertainment',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(15,'Business',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(16,'Adult',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(17,'Novelty',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(18,'Real Estate',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(19,'Technology',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(20,'Other',1,7,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(21,'Shopping',0,NULL,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(22,'Interest',0,NULL,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(23,'Food and Drink',0,NULL,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(24,'Sports',0,NULL,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(25,'Leisure and Recreation',0,NULL,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(26,'WatchList',1,6,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(27,'IDN',1,5,'2018-04-18 09:21:36','2018-04-18 09:21:36');
/*!40000 ALTER TABLE `tbltld_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltld_category_pivot`
--

DROP TABLE IF EXISTS `tbltld_category_pivot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltld_category_pivot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tld_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tbltld_category_pivot_tld_id_index` (`tld_id`),
  KEY `tbltld_category_pivot_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1948 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltld_category_pivot`
--

LOCK TABLES `tbltld_category_pivot` WRITE;
/*!40000 ALTER TABLE `tbltld_category_pivot` DISABLE KEYS */;
INSERT INTO `tbltld_category_pivot` VALUES (1,1,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(2,1,2,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(3,1,3,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(4,2,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(5,3,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(6,4,6,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(7,5,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(8,5,7,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(9,6,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(10,6,2,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(11,6,3,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(12,7,8,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(13,7,9,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(14,7,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(15,8,10,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(16,8,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(17,9,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(18,9,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(19,9,10,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(20,9,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(21,10,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(22,10,2,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(23,10,3,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(24,11,12,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(25,12,13,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(26,13,14,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(27,13,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(28,13,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(29,13,13,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(30,14,12,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(31,15,15,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(32,16,16,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(33,17,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(34,18,6,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(35,19,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(36,20,15,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(37,20,9,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(38,20,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(39,21,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(40,22,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(41,22,13,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(42,23,6,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(43,24,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(44,24,7,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(45,24,2,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(46,25,6,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(47,26,15,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(48,27,17,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(49,28,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(50,28,18,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(51,28,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(52,29,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(53,29,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(54,29,19,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(55,30,6,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(56,31,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(57,31,20,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(58,32,13,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(59,33,9,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(60,33,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(61,33,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(62,34,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(63,34,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(64,35,17,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(65,36,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(66,36,13,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(67,37,14,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(68,37,12,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(69,37,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(70,38,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(71,38,9,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(72,38,7,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(73,38,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(74,39,15,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(75,39,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(76,39,9,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(77,39,1,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(78,40,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(79,40,7,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(80,41,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(81,41,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(82,42,4,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(83,43,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(84,43,21,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(85,44,12,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(86,45,14,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(87,46,14,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(88,46,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(89,46,21,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(90,47,11,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(91,47,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(92,47,21,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(93,48,5,'2018-04-18 09:21:24','2018-04-18 09:21:24'),(94,48,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(95,49,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(96,49,2,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(97,49,3,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(98,50,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(99,50,13,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(100,51,14,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(101,51,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(102,51,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(103,52,12,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(104,52,10,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(105,52,5,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(106,53,10,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(107,53,5,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(108,54,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(109,54,23,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(110,54,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(111,54,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(112,54,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(113,55,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(114,55,2,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(115,55,3,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(116,56,12,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(117,56,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(118,57,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(119,57,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(120,57,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(121,58,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(122,58,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(123,58,24,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(124,59,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(125,59,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(126,59,24,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(127,60,15,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(128,61,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(129,62,12,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(130,63,4,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(131,64,4,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(132,64,7,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(133,65,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(134,65,13,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(135,66,23,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(136,67,17,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(137,68,12,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(138,68,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(139,69,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(140,69,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(141,69,17,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(142,70,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(143,70,25,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(144,71,13,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(145,72,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(146,72,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(147,72,25,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(148,72,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(149,73,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(150,73,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(151,73,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(152,74,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(153,74,25,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(154,75,13,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(155,76,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(156,76,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(157,77,4,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(158,78,13,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(159,78,17,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(160,79,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(161,79,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(162,79,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(163,80,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(164,80,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(165,80,19,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(166,81,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(167,81,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(168,81,17,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(169,82,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(170,82,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(171,83,10,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(172,84,17,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(173,85,14,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(174,85,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(175,85,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(176,86,15,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(177,87,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(178,88,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(179,88,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(180,88,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(181,89,17,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(182,90,4,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(183,90,7,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(184,91,14,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(185,91,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(186,91,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(187,91,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(188,92,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(189,92,10,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(190,92,5,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(191,93,13,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(192,94,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(193,95,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(194,96,12,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(195,97,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(196,97,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(197,97,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(198,97,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(199,98,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(200,98,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(201,98,18,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(202,98,5,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(203,99,15,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(204,99,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(205,100,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(206,100,21,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(207,101,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(208,101,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(209,101,13,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(210,102,14,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(211,103,4,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(212,103,7,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(213,104,12,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(214,104,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(215,105,4,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(216,105,7,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(217,106,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(218,106,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(219,106,5,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(220,107,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(221,107,23,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(222,108,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(223,108,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(224,109,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(225,109,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(226,109,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(227,110,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(228,110,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(229,110,22,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(230,110,25,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(231,111,6,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(232,112,11,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(233,112,9,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(234,112,1,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(235,112,10,'2018-04-18 09:21:25','2018-04-18 09:21:25'),(236,113,22,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(237,114,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(238,114,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(239,114,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(240,114,22,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(241,115,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(242,115,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(243,115,22,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(244,116,15,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(245,116,5,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(246,117,15,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(247,117,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(248,117,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(249,117,5,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(250,118,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(251,118,21,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(252,119,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(253,119,18,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(254,120,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(255,120,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(256,120,10,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(257,121,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(258,121,25,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(259,122,6,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(260,123,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(261,123,23,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(262,123,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(263,123,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(264,123,5,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(265,124,12,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(266,125,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(267,125,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(268,125,2,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(269,126,15,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(270,126,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(271,126,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(272,127,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(273,127,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(274,127,13,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(275,128,10,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(276,129,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(277,129,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(278,130,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(279,130,22,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(280,131,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(281,131,19,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(282,132,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(283,132,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(284,132,21,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(285,133,6,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(286,134,17,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(287,135,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(288,135,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(289,135,22,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(290,136,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(291,136,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(292,136,13,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(293,137,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(294,137,6,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(295,138,23,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(296,138,5,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(297,139,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(298,139,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(299,139,5,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(300,140,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(301,140,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(302,140,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(303,140,5,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(304,141,19,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(305,142,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(306,142,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(307,142,5,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(308,143,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(309,143,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(310,143,21,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(311,144,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(312,144,19,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(313,145,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(314,145,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(315,145,13,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(316,146,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(317,146,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(318,146,2,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(319,147,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(320,147,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(321,148,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(322,148,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(323,149,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(324,149,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(325,149,2,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(326,150,15,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(327,150,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(328,150,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(329,151,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(330,152,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(331,152,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(332,153,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(333,153,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(334,154,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(335,154,24,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(336,155,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(337,155,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(338,155,19,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(339,156,23,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(340,156,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(341,156,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(342,157,8,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(343,157,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(344,158,6,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(345,159,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(346,159,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(347,160,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(348,161,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(349,161,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(350,162,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(351,162,20,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(352,163,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(353,163,20,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(354,164,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(355,164,20,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(356,165,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(357,165,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(358,166,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(359,166,20,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(360,167,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(361,167,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(362,168,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(363,169,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(364,170,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(365,170,7,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(366,170,20,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(367,171,4,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(368,171,20,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(369,172,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(370,172,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(371,172,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(372,172,13,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(373,173,15,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(374,173,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(375,173,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(376,174,21,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(377,175,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(378,175,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(379,175,21,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(380,175,19,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(381,176,19,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(382,177,11,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(383,177,9,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(384,177,1,'2018-04-18 09:21:26','2018-04-18 09:21:26'),(385,177,18,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(386,178,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(387,178,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(388,178,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(389,179,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(390,179,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(391,179,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(392,180,13,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(393,181,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(394,181,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(395,181,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(396,182,23,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(397,182,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(398,182,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(399,182,22,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(400,183,13,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(401,184,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(402,184,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(403,184,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(404,184,17,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(405,185,15,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(406,185,12,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(407,185,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(408,186,12,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(409,187,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(410,187,6,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(411,187,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(412,188,21,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(413,189,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(414,189,21,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(415,190,8,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(416,191,12,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(417,191,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(418,191,10,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(419,191,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(420,192,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(421,192,2,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(422,192,3,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(423,193,4,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(424,194,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(425,194,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(426,194,10,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(427,195,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(428,195,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(429,195,10,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(430,196,10,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(431,196,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(432,197,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(433,197,22,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(434,197,24,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(435,198,25,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(436,199,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(437,199,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(438,199,25,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(439,200,6,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(440,201,17,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(441,202,13,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(442,203,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(443,203,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(444,203,25,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(445,204,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(446,204,19,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(447,205,13,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(448,206,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(449,206,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(450,206,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(451,206,13,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(452,207,17,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(453,208,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(454,209,4,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(455,209,7,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(456,210,4,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(457,210,20,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(458,211,21,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(459,212,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(460,212,21,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(461,213,8,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(462,213,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(463,214,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(464,214,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(465,215,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(466,215,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(467,215,13,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(468,216,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(469,216,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(470,216,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(471,217,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(472,217,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(473,218,6,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(474,219,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(475,219,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(476,220,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(477,220,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(478,220,21,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(479,221,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(480,221,13,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(481,222,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(482,222,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(483,222,19,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(484,223,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(485,223,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(486,223,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(487,224,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(488,224,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(489,224,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(490,225,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(491,225,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(492,225,21,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(493,226,22,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(494,227,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(495,227,19,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(496,228,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(497,228,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(498,229,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(499,229,22,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(500,230,6,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(501,231,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(502,231,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(503,231,19,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(504,232,19,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(505,233,6,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(506,234,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(507,234,19,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(508,235,6,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(509,236,6,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(510,237,19,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(511,238,6,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(512,239,23,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(513,239,22,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(514,240,12,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(515,240,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(516,240,22,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(517,241,15,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(518,241,21,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(519,242,12,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(520,243,8,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(521,243,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(522,243,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(523,244,9,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(524,244,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(525,244,5,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(526,244,19,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(527,245,11,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(528,245,1,'2018-04-18 09:21:27','2018-04-18 09:21:27'),(529,245,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(530,246,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(531,246,2,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(532,246,3,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(533,247,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(534,247,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(535,248,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(536,248,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(537,248,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(538,248,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(539,249,15,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(540,249,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(541,249,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(542,250,19,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(543,251,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(544,251,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(545,251,21,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(546,252,4,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(547,252,7,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(548,253,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(549,254,17,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(550,255,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(551,255,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(552,255,10,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(553,256,4,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(554,256,7,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(555,257,4,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(556,257,7,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(557,258,12,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(558,258,6,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(559,259,14,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(560,259,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(561,259,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(562,259,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(563,259,25,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(564,260,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(565,260,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(566,260,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(567,260,10,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(568,260,21,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(569,261,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(570,261,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(571,261,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(572,261,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(573,262,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(574,262,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(575,262,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(576,263,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(577,263,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(578,263,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(579,264,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(580,264,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(581,264,17,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(582,265,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(583,266,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(584,266,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(585,267,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(586,267,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(587,267,24,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(588,268,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(589,268,24,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(590,269,15,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(591,269,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(592,269,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(593,269,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(594,269,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(595,270,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(596,270,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(597,270,21,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(598,271,17,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(599,272,14,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(600,272,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(601,273,17,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(602,274,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(603,274,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(604,274,10,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(605,274,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(606,275,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(607,275,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(608,275,10,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(609,275,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(610,276,10,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(611,276,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(612,277,4,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(613,278,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(614,278,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(615,278,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(616,278,25,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(617,279,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(618,279,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(619,279,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(620,279,25,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(621,280,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(622,280,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(623,281,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(624,281,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(625,281,13,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(626,281,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(627,282,4,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(628,283,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(629,283,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(630,283,25,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(631,283,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(632,284,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(633,284,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(634,284,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(635,285,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(636,285,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(637,286,25,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(638,286,5,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(639,287,4,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(640,287,7,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(641,287,2,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(642,288,17,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(643,289,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(644,289,23,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(645,289,22,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(646,290,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(647,290,22,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(648,290,24,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(649,291,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(650,291,18,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(651,291,21,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(652,292,15,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(653,292,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(654,292,22,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(655,293,15,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(656,293,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(657,293,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(658,294,4,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(659,294,7,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(660,295,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(661,295,17,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(662,295,21,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(663,296,6,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(664,297,17,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(665,298,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(666,298,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(667,298,10,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(668,299,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(669,299,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(670,299,21,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(671,300,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(672,300,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(673,300,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(674,300,22,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(675,300,24,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(676,301,11,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(677,301,17,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(678,302,12,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(679,302,6,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(680,303,14,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(681,303,9,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(682,303,1,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(683,304,25,'2018-04-18 09:21:28','2018-04-18 09:21:28'),(684,305,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(685,305,25,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(686,306,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(687,306,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(688,307,12,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(689,307,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(690,307,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(691,308,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(692,309,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(693,310,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(694,311,12,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(695,312,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(696,313,6,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(697,313,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(698,314,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(699,314,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(700,314,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(701,314,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(702,315,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(703,315,21,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(704,316,15,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(705,316,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(706,316,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(707,317,15,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(708,317,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(709,318,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(710,318,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(711,318,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(712,319,17,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(713,320,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(714,320,6,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(715,321,15,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(716,321,12,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(717,321,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(718,322,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(719,322,10,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(720,323,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(721,323,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(722,323,24,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(723,324,17,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(724,325,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(725,326,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(726,326,7,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(727,327,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(728,327,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(729,327,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(730,327,19,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(731,328,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(732,328,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(733,328,17,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(734,329,12,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(735,330,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(736,330,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(737,331,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(738,331,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(739,331,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(740,331,17,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(741,332,23,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(742,332,21,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(743,333,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(744,333,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(745,333,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(746,334,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(747,334,7,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(748,335,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(749,336,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(750,336,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(751,336,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(752,337,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(753,337,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(754,337,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(755,337,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(756,338,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(757,338,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(758,338,21,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(759,339,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(760,340,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(761,341,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(762,342,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(763,343,12,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(764,343,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(765,344,12,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(766,344,6,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(767,345,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(768,345,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(769,345,18,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(770,346,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(771,347,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(772,348,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(773,348,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(774,348,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(775,349,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(776,349,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(777,350,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(778,351,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(779,351,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(780,352,6,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(781,353,17,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(782,354,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(783,355,14,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(784,356,13,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(785,357,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(786,358,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(787,359,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(788,360,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(789,361,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(790,361,22,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(791,361,24,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(792,362,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(793,362,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(794,362,21,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(795,363,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(796,363,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(797,363,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(798,363,25,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(799,364,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(800,364,18,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(801,365,18,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(802,366,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(803,366,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(804,366,25,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(805,367,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(806,367,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(807,368,19,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(808,369,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(809,369,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(810,369,19,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(811,370,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(812,370,17,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(813,371,12,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(814,371,11,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(815,371,25,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(816,371,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(817,372,25,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(818,372,5,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(819,373,9,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(820,373,1,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(821,373,18,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(822,374,17,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(823,375,4,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(824,375,7,'2018-04-18 09:21:29','2018-04-18 09:21:29'),(825,376,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(826,377,19,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(827,378,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(828,378,20,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(829,378,2,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(830,379,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(831,380,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(832,381,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(833,381,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(834,381,18,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(835,382,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(836,382,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(837,382,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(838,382,18,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(839,383,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(840,383,7,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(841,384,15,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(842,384,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(843,384,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(844,385,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(845,386,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(846,387,15,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(847,387,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(848,387,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(849,387,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(850,388,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(851,388,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(852,389,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(853,390,17,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(854,391,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(855,391,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(856,391,22,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(857,392,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(858,392,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(859,392,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(860,393,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(861,393,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(862,393,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(863,394,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(864,394,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(865,394,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(866,395,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(867,395,6,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(868,395,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(869,396,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(870,396,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(871,396,10,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(872,396,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(873,397,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(874,397,7,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(875,398,10,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(876,399,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(877,400,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(878,400,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(879,401,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(880,402,6,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(881,403,6,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(882,404,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(883,404,7,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(884,405,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(885,406,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(886,406,21,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(887,407,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(888,407,3,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(889,408,6,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(890,409,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(891,409,7,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(892,410,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(893,410,20,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(894,411,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(895,412,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(896,412,22,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(897,413,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(898,413,2,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(899,413,3,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(900,414,17,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(901,415,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(902,416,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(903,416,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(904,416,21,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(905,417,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(906,418,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(907,418,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(908,419,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(909,420,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(910,420,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(911,420,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(912,420,17,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(913,421,23,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(914,421,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(915,421,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(916,422,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(917,422,6,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(918,422,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(919,422,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(920,423,6,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(921,424,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(922,425,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(923,426,6,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(924,427,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(925,427,7,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(926,427,2,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(927,428,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(928,429,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(929,429,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(930,429,18,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(931,430,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(932,431,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(933,432,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(934,432,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(935,433,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(936,433,2,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(937,433,3,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(938,434,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(939,434,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(940,435,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(941,435,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(942,436,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(943,436,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(944,436,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(945,436,18,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(946,437,12,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(947,438,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(948,438,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(949,439,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(950,440,4,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(951,440,7,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(952,441,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(953,441,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(954,441,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(955,442,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(956,443,13,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(957,444,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(958,444,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(959,444,21,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(960,445,15,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(961,445,11,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(962,445,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(963,446,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(964,446,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(965,446,5,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(966,447,9,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(967,447,1,'2018-04-18 09:21:30','2018-04-18 09:21:30'),(968,447,22,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(969,447,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(970,448,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(971,448,13,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(972,449,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(973,449,13,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(974,450,15,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(975,450,12,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(976,450,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(977,451,15,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(978,451,12,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(979,452,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(980,453,10,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(981,453,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(982,454,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(983,454,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(984,454,10,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(985,454,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(986,455,17,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(987,456,6,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(988,456,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(989,457,25,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(990,458,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(991,458,13,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(992,459,15,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(993,459,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(994,460,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(995,461,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(996,462,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(997,462,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(998,462,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(999,463,12,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1000,463,6,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1001,464,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1002,464,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1003,464,19,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1004,465,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1005,465,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1006,465,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1007,465,18,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1008,466,15,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1009,466,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1010,466,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1011,466,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1012,467,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1013,467,19,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1014,468,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1015,468,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1016,469,15,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1017,469,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1018,469,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1019,469,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1020,469,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1021,470,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1022,471,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1023,472,8,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1024,472,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1025,472,13,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1026,473,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1027,473,7,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1028,473,2,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1029,474,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1030,474,7,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1031,475,12,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1032,475,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1033,476,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1034,476,2,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1035,476,3,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1036,477,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1037,477,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1038,477,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1039,477,19,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1040,478,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1041,478,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1042,479,22,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1043,479,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1044,480,6,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1045,481,17,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1046,482,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1047,482,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1048,483,17,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1049,484,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1050,484,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1051,484,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1052,485,12,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1053,486,6,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1054,487,12,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1055,487,18,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1056,487,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1057,488,12,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1058,489,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1059,490,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1060,491,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1061,491,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1062,491,2,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1063,491,3,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1064,492,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1065,492,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1066,492,19,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1067,493,19,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1068,494,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1069,494,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1070,494,22,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1071,494,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1072,495,17,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1073,496,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1074,496,13,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1075,497,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1076,497,10,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1077,497,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1078,498,13,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1079,499,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1080,499,10,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1081,499,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1082,500,6,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1083,501,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1084,501,22,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1085,501,24,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1086,502,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1087,503,19,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1088,504,14,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1089,504,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1090,504,22,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1091,504,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1092,505,19,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1093,506,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1094,506,7,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1095,507,19,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1096,508,14,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1097,508,12,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1098,508,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1099,508,22,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1100,508,21,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1101,509,10,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1102,510,10,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1103,510,5,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1104,511,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1105,511,6,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1106,511,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1107,512,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1108,512,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1109,512,2,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1110,512,3,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1111,513,11,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1112,513,13,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1113,514,4,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1114,515,22,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1115,515,24,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1116,516,9,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1117,516,1,'2018-04-18 09:21:31','2018-04-18 09:21:31'),(1118,517,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1119,518,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1120,518,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1121,519,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1122,519,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1123,520,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1124,520,20,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1125,521,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1126,522,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1127,522,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1128,523,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1129,523,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1130,524,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1131,525,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1132,526,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1133,526,19,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1134,527,17,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1135,528,14,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1136,528,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1137,528,5,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1138,529,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1139,530,15,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1140,530,12,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1141,531,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1142,531,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1143,531,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1144,531,25,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1145,531,17,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1146,532,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1147,532,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1148,533,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1149,534,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1150,535,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1151,535,20,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1152,536,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1153,536,20,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1154,537,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1155,537,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1156,538,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1157,538,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1158,539,26,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1159,540,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1160,540,17,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1161,541,13,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1162,542,6,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1163,543,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1164,544,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1165,545,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1166,545,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1167,546,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1168,547,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1169,548,6,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1170,548,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1171,549,6,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1172,550,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1173,551,17,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1174,552,15,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1175,552,12,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1176,553,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1177,553,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1178,554,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1179,554,19,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1180,555,17,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1181,556,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1182,556,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1183,557,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1184,558,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1185,558,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1186,559,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1187,559,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1188,560,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1189,560,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1190,561,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1191,562,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1192,562,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1193,563,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1194,563,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1195,564,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1196,565,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1197,566,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1198,566,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1199,567,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1200,567,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1201,568,13,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1202,568,22,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1203,569,13,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1204,570,12,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1205,570,6,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1206,571,12,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1207,572,12,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1208,572,6,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1209,573,12,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1210,573,13,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1211,574,15,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1212,574,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1213,574,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1214,574,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1215,575,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1216,575,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1217,575,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1218,575,21,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1219,576,25,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1220,577,6,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1221,578,10,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1222,579,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1223,579,7,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1224,580,4,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1225,581,6,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1226,581,13,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1227,582,22,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1228,583,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1229,583,22,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1230,584,12,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1231,584,5,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1232,585,8,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1233,585,13,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1234,586,11,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1235,586,19,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1236,587,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1237,587,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1238,587,22,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1239,587,5,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1240,588,14,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1241,588,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1242,588,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1243,588,22,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1244,588,5,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1245,589,14,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1246,589,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1247,589,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1248,590,5,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1249,591,9,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1250,591,1,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1251,591,22,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1252,591,5,'2018-04-18 09:21:32','2018-04-18 09:21:32'),(1253,592,14,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1254,592,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1255,592,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1256,592,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1257,593,17,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1258,594,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1259,594,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1260,594,17,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1261,595,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1262,595,23,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1263,596,4,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1264,596,7,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1265,597,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1266,597,6,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1267,597,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1268,598,25,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1269,599,4,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1270,600,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1271,600,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1272,600,21,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1273,601,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1274,601,17,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1275,602,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1276,602,25,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1277,603,16,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1278,604,15,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1279,605,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1280,605,2,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1281,605,3,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1282,606,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1283,606,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1284,606,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1285,606,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1286,607,8,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1287,608,21,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1288,609,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1289,609,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1290,609,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1291,609,18,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1292,610,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1293,610,18,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1294,611,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1295,611,23,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1296,611,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1297,611,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1298,611,25,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1299,612,15,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1300,612,4,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1301,612,2,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1302,613,4,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1303,614,4,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1304,614,7,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1305,615,4,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1306,616,21,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1307,617,12,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1308,617,6,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1309,618,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1310,618,22,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1311,618,24,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1312,619,14,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1313,619,12,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1314,619,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1315,620,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1316,620,18,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1317,621,18,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1318,621,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1319,622,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1320,622,18,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1321,623,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1322,623,2,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1323,623,3,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1324,624,23,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1325,624,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1326,624,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1327,625,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1328,625,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1329,625,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1330,625,17,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1331,626,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1332,626,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1333,627,25,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1334,628,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1335,628,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1336,628,25,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1337,629,12,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1338,629,10,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1339,630,13,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1340,631,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1341,631,18,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1342,632,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1343,632,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1344,632,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1345,633,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1346,633,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1347,633,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1348,634,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1349,634,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1350,634,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1351,634,22,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1352,635,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1353,635,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1354,635,13,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1355,636,23,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1356,636,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1357,636,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1358,636,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1359,637,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1360,637,23,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1361,638,22,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1362,639,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1363,639,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1364,639,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1365,639,22,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1366,640,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1367,640,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1368,640,10,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1369,641,6,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1370,642,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1371,642,17,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1372,643,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1373,643,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1374,643,17,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1375,644,9,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1376,644,1,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1377,644,22,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1378,644,24,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1379,645,6,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1380,646,17,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1381,647,4,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1382,647,20,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1383,648,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1384,648,22,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1385,648,24,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1386,649,6,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1387,650,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1388,650,22,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1389,650,24,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1390,651,6,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1391,652,4,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1392,652,20,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1393,653,6,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1394,654,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1395,655,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1396,656,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1397,656,21,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1398,657,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1399,657,5,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1400,658,15,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1401,658,11,'2018-04-18 09:21:33','2018-04-18 09:21:33'),(1402,659,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1403,660,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1404,661,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1405,662,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1406,663,8,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1407,664,8,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1408,664,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1409,665,8,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1410,665,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1411,665,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1412,666,8,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1413,666,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1414,667,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1415,667,6,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1416,667,13,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1417,668,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1418,669,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1419,669,20,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1420,670,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1421,670,20,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1422,671,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1423,671,19,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1424,672,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1425,673,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1426,673,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1427,674,19,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1428,675,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1429,675,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1430,675,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1431,675,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1432,676,16,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1433,677,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1434,677,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1435,677,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1436,677,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1437,678,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1438,678,7,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1439,679,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1440,679,7,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1441,680,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1442,681,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1443,681,13,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1444,682,8,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1445,682,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1446,682,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1447,683,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1448,683,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1449,683,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1450,684,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1451,684,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1452,684,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1453,685,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1454,685,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1455,686,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1456,687,14,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1457,687,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1458,688,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1459,688,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1460,688,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1461,689,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1462,689,19,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1463,690,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1464,691,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1465,691,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1466,691,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1467,691,24,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1468,692,13,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1469,693,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1470,694,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1471,694,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1472,694,24,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1473,695,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1474,695,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1475,695,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1476,695,25,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1477,696,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1478,696,19,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1479,697,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1480,697,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1481,697,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1482,698,15,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1483,698,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1484,698,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1485,699,13,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1486,699,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1487,700,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1488,700,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1489,700,25,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1490,701,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1491,702,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1492,702,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1493,702,24,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1494,703,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1495,703,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1496,703,24,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1497,704,17,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1498,705,25,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1499,706,15,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1500,707,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1501,708,6,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1502,709,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1503,709,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1504,710,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1505,710,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1506,711,13,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1507,712,15,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1508,712,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1509,712,18,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1510,713,8,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1511,714,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1512,714,13,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1513,715,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1514,715,17,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1515,716,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1516,716,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1517,716,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1518,716,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1519,717,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1520,717,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1521,717,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1522,717,21,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1523,718,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1524,718,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1525,718,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1526,719,25,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1527,720,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1528,720,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1529,720,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1530,721,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1531,721,6,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1532,722,4,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1533,723,6,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1534,724,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1535,724,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1536,724,19,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1537,725,6,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1538,726,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1539,726,6,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1540,727,9,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1541,727,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1542,727,22,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1543,727,5,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1544,728,11,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1545,728,1,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1546,728,10,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1547,729,12,'2018-04-18 09:21:34','2018-04-18 09:21:34'),(1548,729,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1549,729,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1550,730,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1551,730,7,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1552,731,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1553,731,22,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1554,731,24,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1555,732,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1556,732,19,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1557,733,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1558,733,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1559,733,19,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1560,734,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1561,734,2,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1562,734,3,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1563,735,12,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1564,735,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1565,735,22,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1566,735,24,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1567,736,12,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1568,736,6,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1569,737,14,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1570,737,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1571,737,22,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1572,738,14,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1573,738,22,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1574,739,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1575,739,21,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1576,740,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1577,740,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1578,740,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1579,740,21,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1580,741,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1581,741,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1582,741,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1583,742,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1584,742,21,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1585,743,12,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1586,743,6,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1587,744,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1588,745,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1589,746,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1590,746,7,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1591,746,2,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1592,747,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1593,747,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1594,747,17,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1595,748,6,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1596,748,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1597,749,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1598,749,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1599,749,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1600,749,21,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1601,750,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1602,751,25,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1603,752,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1604,752,25,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1605,752,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1606,753,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1607,753,6,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1608,753,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1609,754,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1610,754,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1611,754,21,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1612,755,15,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1613,755,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1614,755,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1615,756,15,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1616,756,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1617,757,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1618,757,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1619,757,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1620,758,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1621,759,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1622,760,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1623,760,19,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1624,761,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1625,761,7,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1626,761,2,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1627,762,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1628,762,7,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1629,763,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1630,764,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1631,764,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1632,764,6,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1633,765,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1634,765,20,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1635,766,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1636,766,20,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1637,767,8,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1638,767,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1639,767,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1640,768,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1641,768,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1642,768,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1643,769,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1644,769,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1645,769,7,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1646,770,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1647,770,20,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1648,771,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1649,771,20,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1650,772,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1651,772,7,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1652,773,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1653,773,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1654,773,25,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1655,774,25,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1656,775,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1657,776,6,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1658,776,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1659,776,25,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1660,777,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1661,777,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1662,777,21,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1663,778,12,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1664,778,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1665,779,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1666,779,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1667,779,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1668,780,4,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1669,780,7,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1670,781,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1671,781,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1672,781,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1673,781,19,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1674,782,14,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1675,782,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1676,783,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1677,783,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1678,783,18,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1679,784,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1680,784,5,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1681,785,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1682,785,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1683,786,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1684,786,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1685,786,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1686,786,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1687,787,6,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1688,788,23,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1689,788,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1690,788,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1691,789,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1692,789,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1693,790,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1694,790,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1695,791,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1696,792,9,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1697,792,1,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1698,792,25,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1699,793,6,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1700,794,13,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1701,795,11,'2018-04-18 09:21:35','2018-04-18 09:21:35'),(1702,795,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1703,795,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1704,795,21,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1705,796,21,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1706,797,22,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1707,797,5,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1708,798,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1709,798,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1710,799,4,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1711,800,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1712,800,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1713,800,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1714,801,12,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1715,802,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1716,802,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1717,803,5,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1718,804,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1719,804,13,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1720,805,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1721,806,13,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1722,807,12,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1723,807,6,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1724,808,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1725,808,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1726,808,22,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1727,809,17,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1728,810,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1729,810,23,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1730,811,17,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1731,812,5,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1732,813,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1733,813,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1734,813,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1735,813,5,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1736,814,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1737,814,6,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1738,815,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1739,815,17,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1740,816,4,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1741,816,2,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1742,817,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1743,817,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1744,817,17,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1745,818,15,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1746,819,4,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1747,820,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1748,821,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1749,822,6,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1750,822,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1751,823,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1752,824,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1753,825,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1754,825,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1755,825,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1756,825,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1757,826,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1758,827,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1759,828,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1760,828,22,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1761,829,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1762,829,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1763,830,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1764,831,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1765,832,15,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1766,832,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1767,833,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1768,833,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1769,834,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1770,834,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1771,834,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1772,834,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1773,835,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1774,835,17,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1775,836,6,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1776,836,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1777,837,6,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1778,837,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1779,838,12,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1780,838,13,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1781,838,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1782,839,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1783,839,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1784,839,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1785,839,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1786,840,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1787,840,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1788,840,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1789,840,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1790,841,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1791,842,13,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1792,842,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1793,842,21,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1794,843,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1795,843,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1796,844,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1797,845,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1798,845,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1799,845,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1800,846,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1801,847,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1802,848,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1803,849,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1804,850,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1805,851,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1806,852,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1807,852,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1808,852,21,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1809,853,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1810,853,21,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1811,854,13,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1812,854,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1813,855,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1814,856,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1815,857,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1816,857,5,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1817,858,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1818,858,10,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1819,859,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1820,860,6,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1821,860,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1822,861,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1823,862,9,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1824,862,1,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1825,862,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1826,862,19,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1827,863,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1828,864,14,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1829,864,11,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1830,864,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1831,865,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1832,866,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1833,866,21,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1834,867,27,'2018-04-18 09:21:36','2018-04-18 09:21:36'),(1835,868,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1836,869,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1837,870,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1838,870,21,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1839,871,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1840,872,23,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1841,872,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1842,873,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1843,873,19,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1844,874,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1845,875,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1846,876,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1847,877,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1848,878,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1849,879,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1850,879,19,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1851,880,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1852,881,15,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1853,881,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1854,881,19,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1855,882,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1856,882,5,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1857,882,21,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1858,883,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1859,884,6,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1860,884,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1861,885,12,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1862,885,13,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1863,885,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1864,886,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1865,887,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1866,888,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1867,889,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1868,890,9,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1869,890,1,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1870,890,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1871,890,17,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1872,891,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1873,892,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1874,893,9,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1875,893,1,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1876,893,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1877,894,13,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1878,894,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1879,895,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1880,895,5,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1881,896,12,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1882,896,13,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1883,896,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1884,897,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1885,897,21,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1886,898,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1887,899,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1888,900,9,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1889,900,1,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1890,900,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1891,900,17,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1892,901,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1893,902,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1894,903,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1895,904,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1896,904,19,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1897,905,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1898,906,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1899,907,12,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1900,907,13,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1901,907,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1902,908,11,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1903,908,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1904,908,25,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1905,909,15,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1906,909,11,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1907,909,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1908,910,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1909,911,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1910,912,12,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1911,912,6,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1912,912,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1913,913,12,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1914,913,27,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1915,914,1,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1916,914,2,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1917,914,3,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1918,915,9,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1919,915,1,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1920,915,17,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1921,916,4,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1922,917,25,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1923,918,4,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1924,919,11,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1925,919,22,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1926,919,24,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1927,920,6,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1928,921,17,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1929,922,4,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1930,922,20,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1931,923,19,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1932,924,9,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1933,924,1,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1934,924,17,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1935,925,6,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1936,926,13,'2018-04-18 09:21:37','2018-04-18 09:21:37'),(1937,927,4,'2018-04-18 09:21:42','2018-04-18 09:21:42'),(1938,928,4,'2018-04-18 09:21:42','2018-04-18 09:21:42'),(1939,929,4,'2018-04-18 09:21:42','2018-04-18 09:21:42'),(1940,930,4,'2018-04-18 09:21:42','2018-04-18 09:21:42'),(1941,931,4,'2018-04-18 09:21:42','2018-04-18 09:21:42'),(1942,932,4,'2018-04-18 09:21:42','2018-04-18 09:21:42'),(1943,933,4,'2018-04-18 09:21:42','2018-04-18 09:21:42'),(1944,934,4,'2018-04-18 09:21:42','2018-04-18 09:21:42'),(1945,935,4,'2018-04-18 09:21:43','2018-04-18 09:21:43'),(1946,936,4,'2018-04-18 09:21:43','2018-04-18 09:21:43'),(1947,937,4,'2018-04-18 09:21:43','2018-04-18 09:21:43');
/*!40000 ALTER TABLE `tbltld_category_pivot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltlds`
--

DROP TABLE IF EXISTS `tbltlds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltlds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tld` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=938 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltlds`
--

LOCK TABLES `tbltlds` WRITE;
/*!40000 ALTER TABLE `tbltlds` DISABLE KEYS */;
INSERT INTO `tbltlds` VALUES (1,'aaa.pro','2018-04-18 09:21:24','2018-04-18 09:21:24'),(2,'ab.ca','2018-04-18 09:21:24','2018-04-18 09:21:24'),(3,'abogado','2018-04-18 09:21:24','2018-04-18 09:21:24'),(4,'abudhabi','2018-04-18 09:21:24','2018-04-18 09:21:24'),(5,'ac','2018-04-18 09:21:24','2018-04-18 09:21:24'),(6,'aca.pro','2018-04-18 09:21:24','2018-04-18 09:21:24'),(7,'academy','2018-04-18 09:21:24','2018-04-18 09:21:24'),(8,'accountant','2018-04-18 09:21:24','2018-04-18 09:21:24'),(9,'accountants','2018-04-18 09:21:24','2018-04-18 09:21:24'),(10,'acct.pro','2018-04-18 09:21:24','2018-04-18 09:21:24'),(11,'aco','2018-04-18 09:21:24','2018-04-18 09:21:24'),(12,'active','2018-04-18 09:21:24','2018-04-18 09:21:24'),(13,'actor','2018-04-18 09:21:24','2018-04-18 09:21:24'),(14,'adac','2018-04-18 09:21:24','2018-04-18 09:21:24'),(15,'ads','2018-04-18 09:21:24','2018-04-18 09:21:24'),(16,'adult','2018-04-18 09:21:24','2018-04-18 09:21:24'),(17,'ae.org','2018-04-18 09:21:24','2018-04-18 09:21:24'),(18,'africa','2018-04-18 09:21:24','2018-04-18 09:21:24'),(19,'ag','2018-04-18 09:21:24','2018-04-18 09:21:24'),(20,'agency','2018-04-18 09:21:24','2018-04-18 09:21:24'),(21,'ah.cn','2018-04-18 09:21:24','2018-04-18 09:21:24'),(22,'airforce','2018-04-18 09:21:24','2018-04-18 09:21:24'),(23,'alsace','2018-04-18 09:21:24','2018-04-18 09:21:24'),(24,'am','2018-04-18 09:21:24','2018-04-18 09:21:24'),(25,'amsterdam','2018-04-18 09:21:24','2018-04-18 09:21:24'),(26,'analytics','2018-04-18 09:21:24','2018-04-18 09:21:24'),(27,'and','2018-04-18 09:21:24','2018-04-18 09:21:24'),(28,'apartments','2018-04-18 09:21:24','2018-04-18 09:21:24'),(29,'app','2018-04-18 09:21:24','2018-04-18 09:21:24'),(30,'aquitaine','2018-04-18 09:21:24','2018-04-18 09:21:24'),(31,'ar.com','2018-04-18 09:21:24','2018-04-18 09:21:24'),(32,'arab','2018-04-18 09:21:24','2018-04-18 09:21:24'),(33,'archi','2018-04-18 09:21:24','2018-04-18 09:21:24'),(34,'architect','2018-04-18 09:21:24','2018-04-18 09:21:24'),(35,'are','2018-04-18 09:21:24','2018-04-18 09:21:24'),(36,'army','2018-04-18 09:21:24','2018-04-18 09:21:24'),(37,'art','2018-04-18 09:21:24','2018-04-18 09:21:24'),(38,'asia','2018-04-18 09:21:24','2018-04-18 09:21:24'),(39,'associates','2018-04-18 09:21:24','2018-04-18 09:21:24'),(40,'at','2018-04-18 09:21:24','2018-04-18 09:21:24'),(41,'attorney','2018-04-18 09:21:24','2018-04-18 09:21:24'),(42,'au','2018-04-18 09:21:24','2018-04-18 09:21:24'),(43,'auction','2018-04-18 09:21:24','2018-04-18 09:21:24'),(44,'audi','2018-04-18 09:21:24','2018-04-18 09:21:24'),(45,'audible','2018-04-18 09:21:24','2018-04-18 09:21:24'),(46,'audio','2018-04-18 09:21:24','2018-04-18 09:21:24'),(47,'auto','2018-04-18 09:21:24','2018-04-18 09:21:24'),(48,'autos','2018-04-18 09:21:24','2018-04-18 09:21:24'),(49,'avocat.pro','2018-04-18 09:21:25','2018-04-18 09:21:25'),(50,'baby','2018-04-18 09:21:25','2018-04-18 09:21:25'),(51,'band','2018-04-18 09:21:25','2018-04-18 09:21:25'),(52,'bank','2018-04-18 09:21:25','2018-04-18 09:21:25'),(53,'banque','2018-04-18 09:21:25','2018-04-18 09:21:25'),(54,'bar','2018-04-18 09:21:25','2018-04-18 09:21:25'),(55,'bar.pro','2018-04-18 09:21:25','2018-04-18 09:21:25'),(56,'barcelona','2018-04-18 09:21:25','2018-04-18 09:21:25'),(57,'bargains','2018-04-18 09:21:25','2018-04-18 09:21:25'),(58,'baseball','2018-04-18 09:21:25','2018-04-18 09:21:25'),(59,'basketball','2018-04-18 09:21:25','2018-04-18 09:21:25'),(60,'bauhaus','2018-04-18 09:21:25','2018-04-18 09:21:25'),(61,'bayern','2018-04-18 09:21:25','2018-04-18 09:21:25'),(62,'bbb','2018-04-18 09:21:25','2018-04-18 09:21:25'),(63,'bc.ca','2018-04-18 09:21:25','2018-04-18 09:21:25'),(64,'be','2018-04-18 09:21:25','2018-04-18 09:21:25'),(65,'beauty','2018-04-18 09:21:25','2018-04-18 09:21:25'),(66,'beer','2018-04-18 09:21:25','2018-04-18 09:21:25'),(67,'beknown','2018-04-18 09:21:25','2018-04-18 09:21:25'),(68,'berlin','2018-04-18 09:21:25','2018-04-18 09:21:25'),(69,'best','2018-04-18 09:21:25','2018-04-18 09:21:25'),(70,'bet','2018-04-18 09:21:25','2018-04-18 09:21:25'),(71,'bible','2018-04-18 09:21:25','2018-04-18 09:21:25'),(72,'bid','2018-04-18 09:21:25','2018-04-18 09:21:25'),(73,'bike','2018-04-18 09:21:25','2018-04-18 09:21:25'),(74,'bingo','2018-04-18 09:21:25','2018-04-18 09:21:25'),(75,'bio','2018-04-18 09:21:25','2018-04-18 09:21:25'),(76,'biz','2018-04-18 09:21:25','2018-04-18 09:21:25'),(77,'bj.cn','2018-04-18 09:21:25','2018-04-18 09:21:25'),(78,'black','2018-04-18 09:21:25','2018-04-18 09:21:25'),(79,'blackfriday','2018-04-18 09:21:25','2018-04-18 09:21:25'),(80,'blog','2018-04-18 09:21:25','2018-04-18 09:21:25'),(81,'blue','2018-04-18 09:21:25','2018-04-18 09:21:25'),(82,'boats','2018-04-18 09:21:25','2018-04-18 09:21:25'),(83,'bond','2018-04-18 09:21:25','2018-04-18 09:21:25'),(84,'boo','2018-04-18 09:21:25','2018-04-18 09:21:25'),(85,'book','2018-04-18 09:21:25','2018-04-18 09:21:25'),(86,'booking','2018-04-18 09:21:25','2018-04-18 09:21:25'),(87,'boston','2018-04-18 09:21:25','2018-04-18 09:21:25'),(88,'boutique','2018-04-18 09:21:25','2018-04-18 09:21:25'),(89,'box','2018-04-18 09:21:25','2018-04-18 09:21:25'),(90,'br.com','2018-04-18 09:21:25','2018-04-18 09:21:25'),(91,'broadway','2018-04-18 09:21:25','2018-04-18 09:21:25'),(92,'broker','2018-04-18 09:21:25','2018-04-18 09:21:25'),(93,'brother','2018-04-18 09:21:25','2018-04-18 09:21:25'),(94,'brussels','2018-04-18 09:21:25','2018-04-18 09:21:25'),(95,'budapest','2018-04-18 09:21:25','2018-04-18 09:21:25'),(96,'bugatti','2018-04-18 09:21:25','2018-04-18 09:21:25'),(97,'build','2018-04-18 09:21:25','2018-04-18 09:21:25'),(98,'builders','2018-04-18 09:21:25','2018-04-18 09:21:25'),(99,'business','2018-04-18 09:21:25','2018-04-18 09:21:25'),(100,'buy','2018-04-18 09:21:25','2018-04-18 09:21:25'),(101,'buzz','2018-04-18 09:21:25','2018-04-18 09:21:25'),(102,'bway','2018-04-18 09:21:25','2018-04-18 09:21:25'),(103,'bz','2018-04-18 09:21:25','2018-04-18 09:21:25'),(104,'bzh','2018-04-18 09:21:25','2018-04-18 09:21:25'),(105,'ca','2018-04-18 09:21:25','2018-04-18 09:21:25'),(106,'cab','2018-04-18 09:21:25','2018-04-18 09:21:25'),(107,'cafe','2018-04-18 09:21:25','2018-04-18 09:21:25'),(108,'cam','2018-04-18 09:21:25','2018-04-18 09:21:25'),(109,'camera','2018-04-18 09:21:25','2018-04-18 09:21:25'),(110,'camp','2018-04-18 09:21:25','2018-04-18 09:21:25'),(111,'capetown','2018-04-18 09:21:25','2018-04-18 09:21:25'),(112,'capital','2018-04-18 09:21:25','2018-04-18 09:21:25'),(113,'car','2018-04-18 09:21:26','2018-04-18 09:21:26'),(114,'cards','2018-04-18 09:21:26','2018-04-18 09:21:26'),(115,'care','2018-04-18 09:21:26','2018-04-18 09:21:26'),(116,'career','2018-04-18 09:21:26','2018-04-18 09:21:26'),(117,'careers','2018-04-18 09:21:26','2018-04-18 09:21:26'),(118,'cars','2018-04-18 09:21:26','2018-04-18 09:21:26'),(119,'casa','2018-04-18 09:21:26','2018-04-18 09:21:26'),(120,'cash','2018-04-18 09:21:26','2018-04-18 09:21:26'),(121,'casino','2018-04-18 09:21:26','2018-04-18 09:21:26'),(122,'catalonia','2018-04-18 09:21:26','2018-04-18 09:21:26'),(123,'catering','2018-04-18 09:21:26','2018-04-18 09:21:26'),(124,'catholic','2018-04-18 09:21:26','2018-04-18 09:21:26'),(125,'cc','2018-04-18 09:21:26','2018-04-18 09:21:26'),(126,'center','2018-04-18 09:21:26','2018-04-18 09:21:26'),(127,'ceo','2018-04-18 09:21:26','2018-04-18 09:21:26'),(128,'cfd','2018-04-18 09:21:26','2018-04-18 09:21:26'),(129,'ch','2018-04-18 09:21:26','2018-04-18 09:21:26'),(130,'charity','2018-04-18 09:21:26','2018-04-18 09:21:26'),(131,'chat','2018-04-18 09:21:26','2018-04-18 09:21:26'),(132,'cheap','2018-04-18 09:21:26','2018-04-18 09:21:26'),(133,'chesapeake','2018-04-18 09:21:26','2018-04-18 09:21:26'),(134,'chk','2018-04-18 09:21:26','2018-04-18 09:21:26'),(135,'christmas','2018-04-18 09:21:26','2018-04-18 09:21:26'),(136,'church','2018-04-18 09:21:26','2018-04-18 09:21:26'),(137,'city','2018-04-18 09:21:26','2018-04-18 09:21:26'),(138,'cityeats','2018-04-18 09:21:26','2018-04-18 09:21:26'),(139,'claims','2018-04-18 09:21:26','2018-04-18 09:21:26'),(140,'cleaning','2018-04-18 09:21:26','2018-04-18 09:21:26'),(141,'click','2018-04-18 09:21:26','2018-04-18 09:21:26'),(142,'clinic','2018-04-18 09:21:26','2018-04-18 09:21:26'),(143,'clothing','2018-04-18 09:21:26','2018-04-18 09:21:26'),(144,'cloud','2018-04-18 09:21:26','2018-04-18 09:21:26'),(145,'club','2018-04-18 09:21:26','2018-04-18 09:21:26'),(146,'cm','2018-04-18 09:21:26','2018-04-18 09:21:26'),(147,'cn','2018-04-18 09:21:26','2018-04-18 09:21:26'),(148,'cn.com','2018-04-18 09:21:26','2018-04-18 09:21:26'),(149,'co','2018-04-18 09:21:26','2018-04-18 09:21:26'),(150,'co.com','2018-04-18 09:21:26','2018-04-18 09:21:26'),(151,'co.in','2018-04-18 09:21:26','2018-04-18 09:21:26'),(152,'co.nz','2018-04-18 09:21:26','2018-04-18 09:21:26'),(153,'co.uk','2018-04-18 09:21:26','2018-04-18 09:21:26'),(154,'coach','2018-04-18 09:21:26','2018-04-18 09:21:26'),(155,'codes','2018-04-18 09:21:26','2018-04-18 09:21:26'),(156,'coffee','2018-04-18 09:21:26','2018-04-18 09:21:26'),(157,'college','2018-04-18 09:21:26','2018-04-18 09:21:26'),(158,'cologne','2018-04-18 09:21:26','2018-04-18 09:21:26'),(159,'com','2018-04-18 09:21:26','2018-04-18 09:21:26'),(160,'com.ag','2018-04-18 09:21:26','2018-04-18 09:21:26'),(161,'com.au','2018-04-18 09:21:26','2018-04-18 09:21:26'),(162,'com.cn','2018-04-18 09:21:26','2018-04-18 09:21:26'),(163,'com.co','2018-04-18 09:21:26','2018-04-18 09:21:26'),(164,'com.de','2018-04-18 09:21:26','2018-04-18 09:21:26'),(165,'com.es','2018-04-18 09:21:26','2018-04-18 09:21:26'),(166,'com.mx','2018-04-18 09:21:26','2018-04-18 09:21:26'),(167,'com.pe','2018-04-18 09:21:26','2018-04-18 09:21:26'),(168,'com.pl','2018-04-18 09:21:26','2018-04-18 09:21:26'),(169,'com.sc','2018-04-18 09:21:26','2018-04-18 09:21:26'),(170,'com.sg','2018-04-18 09:21:26','2018-04-18 09:21:26'),(171,'com.tw','2018-04-18 09:21:26','2018-04-18 09:21:26'),(172,'community','2018-04-18 09:21:26','2018-04-18 09:21:26'),(173,'company','2018-04-18 09:21:26','2018-04-18 09:21:26'),(174,'compare','2018-04-18 09:21:26','2018-04-18 09:21:26'),(175,'computer','2018-04-18 09:21:26','2018-04-18 09:21:26'),(176,'comsec','2018-04-18 09:21:26','2018-04-18 09:21:26'),(177,'condos','2018-04-18 09:21:26','2018-04-18 09:21:26'),(178,'construction','2018-04-18 09:21:27','2018-04-18 09:21:27'),(179,'consulting','2018-04-18 09:21:27','2018-04-18 09:21:27'),(180,'contact','2018-04-18 09:21:27','2018-04-18 09:21:27'),(181,'contractors','2018-04-18 09:21:27','2018-04-18 09:21:27'),(182,'cooking','2018-04-18 09:21:27','2018-04-18 09:21:27'),(183,'cookingchannel','2018-04-18 09:21:27','2018-04-18 09:21:27'),(184,'cool','2018-04-18 09:21:27','2018-04-18 09:21:27'),(185,'corp','2018-04-18 09:21:27','2018-04-18 09:21:27'),(186,'corsica','2018-04-18 09:21:27','2018-04-18 09:21:27'),(187,'country','2018-04-18 09:21:27','2018-04-18 09:21:27'),(188,'coupon','2018-04-18 09:21:27','2018-04-18 09:21:27'),(189,'coupons','2018-04-18 09:21:27','2018-04-18 09:21:27'),(190,'courses','2018-04-18 09:21:27','2018-04-18 09:21:27'),(191,'cpa','2018-04-18 09:21:27','2018-04-18 09:21:27'),(192,'cpa.pro','2018-04-18 09:21:27','2018-04-18 09:21:27'),(193,'cq.cn','2018-04-18 09:21:27','2018-04-18 09:21:27'),(194,'credit','2018-04-18 09:21:27','2018-04-18 09:21:27'),(195,'creditcard','2018-04-18 09:21:27','2018-04-18 09:21:27'),(196,'creditunion','2018-04-18 09:21:27','2018-04-18 09:21:27'),(197,'cricket','2018-04-18 09:21:27','2018-04-18 09:21:27'),(198,'cruise','2018-04-18 09:21:27','2018-04-18 09:21:27'),(199,'cruises','2018-04-18 09:21:27','2018-04-18 09:21:27'),(200,'cymru','2018-04-18 09:21:27','2018-04-18 09:21:27'),(201,'cyou','2018-04-18 09:21:27','2018-04-18 09:21:27'),(202,'dad','2018-04-18 09:21:27','2018-04-18 09:21:27'),(203,'dance','2018-04-18 09:21:27','2018-04-18 09:21:27'),(204,'data','2018-04-18 09:21:27','2018-04-18 09:21:27'),(205,'date','2018-04-18 09:21:27','2018-04-18 09:21:27'),(206,'dating','2018-04-18 09:21:27','2018-04-18 09:21:27'),(207,'day','2018-04-18 09:21:27','2018-04-18 09:21:27'),(208,'dds','2018-04-18 09:21:27','2018-04-18 09:21:27'),(209,'de','2018-04-18 09:21:27','2018-04-18 09:21:27'),(210,'de.com','2018-04-18 09:21:27','2018-04-18 09:21:27'),(211,'deal','2018-04-18 09:21:27','2018-04-18 09:21:27'),(212,'deals','2018-04-18 09:21:27','2018-04-18 09:21:27'),(213,'degree','2018-04-18 09:21:27','2018-04-18 09:21:27'),(214,'delivery','2018-04-18 09:21:27','2018-04-18 09:21:27'),(215,'democrat','2018-04-18 09:21:27','2018-04-18 09:21:27'),(216,'dental','2018-04-18 09:21:27','2018-04-18 09:21:27'),(217,'dentist','2018-04-18 09:21:27','2018-04-18 09:21:27'),(218,'desi','2018-04-18 09:21:27','2018-04-18 09:21:27'),(219,'design','2018-04-18 09:21:27','2018-04-18 09:21:27'),(220,'diamonds','2018-04-18 09:21:27','2018-04-18 09:21:27'),(221,'diet','2018-04-18 09:21:27','2018-04-18 09:21:27'),(222,'digital','2018-04-18 09:21:27','2018-04-18 09:21:27'),(223,'direct','2018-04-18 09:21:27','2018-04-18 09:21:27'),(224,'directory','2018-04-18 09:21:27','2018-04-18 09:21:27'),(225,'discount','2018-04-18 09:21:27','2018-04-18 09:21:27'),(226,'diy','2018-04-18 09:21:27','2018-04-18 09:21:27'),(227,'docs','2018-04-18 09:21:27','2018-04-18 09:21:27'),(228,'doctor','2018-04-18 09:21:27','2018-04-18 09:21:27'),(229,'dog','2018-04-18 09:21:27','2018-04-18 09:21:27'),(230,'doha','2018-04-18 09:21:27','2018-04-18 09:21:27'),(231,'domains','2018-04-18 09:21:27','2018-04-18 09:21:27'),(232,'dot','2018-04-18 09:21:27','2018-04-18 09:21:27'),(233,'dotafrica','2018-04-18 09:21:27','2018-04-18 09:21:27'),(234,'download','2018-04-18 09:21:27','2018-04-18 09:21:27'),(235,'dubai','2018-04-18 09:21:27','2018-04-18 09:21:27'),(236,'durban','2018-04-18 09:21:27','2018-04-18 09:21:27'),(237,'dvr','2018-04-18 09:21:27','2018-04-18 09:21:27'),(238,'earth','2018-04-18 09:21:27','2018-04-18 09:21:27'),(239,'eat','2018-04-18 09:21:27','2018-04-18 09:21:27'),(240,'eco','2018-04-18 09:21:27','2018-04-18 09:21:27'),(241,'ecom','2018-04-18 09:21:27','2018-04-18 09:21:27'),(242,'edeka','2018-04-18 09:21:27','2018-04-18 09:21:27'),(243,'education','2018-04-18 09:21:27','2018-04-18 09:21:27'),(244,'email','2018-04-18 09:21:27','2018-04-18 09:21:27'),(245,'energy','2018-04-18 09:21:27','2018-04-18 09:21:27'),(246,'eng.pro','2018-04-18 09:21:28','2018-04-18 09:21:28'),(247,'engineer','2018-04-18 09:21:28','2018-04-18 09:21:28'),(248,'engineering','2018-04-18 09:21:28','2018-04-18 09:21:28'),(249,'enterprises','2018-04-18 09:21:28','2018-04-18 09:21:28'),(250,'epost','2018-04-18 09:21:28','2018-04-18 09:21:28'),(251,'equipment','2018-04-18 09:21:28','2018-04-18 09:21:28'),(252,'es','2018-04-18 09:21:28','2018-04-18 09:21:28'),(253,'esq','2018-04-18 09:21:28','2018-04-18 09:21:28'),(254,'est','2018-04-18 09:21:28','2018-04-18 09:21:28'),(255,'estate','2018-04-18 09:21:28','2018-04-18 09:21:28'),(256,'eu','2018-04-18 09:21:28','2018-04-18 09:21:28'),(257,'eu.com','2018-04-18 09:21:28','2018-04-18 09:21:28'),(258,'eus','2018-04-18 09:21:28','2018-04-18 09:21:28'),(259,'events','2018-04-18 09:21:28','2018-04-18 09:21:28'),(260,'exchange','2018-04-18 09:21:28','2018-04-18 09:21:28'),(261,'expert','2018-04-18 09:21:28','2018-04-18 09:21:28'),(262,'exposed','2018-04-18 09:21:28','2018-04-18 09:21:28'),(263,'express','2018-04-18 09:21:28','2018-04-18 09:21:28'),(264,'fail','2018-04-18 09:21:28','2018-04-18 09:21:28'),(265,'faith','2018-04-18 09:21:28','2018-04-18 09:21:28'),(266,'family','2018-04-18 09:21:28','2018-04-18 09:21:28'),(267,'fan','2018-04-18 09:21:28','2018-04-18 09:21:28'),(268,'fans','2018-04-18 09:21:28','2018-04-18 09:21:28'),(269,'farm','2018-04-18 09:21:28','2018-04-18 09:21:28'),(270,'fashion','2018-04-18 09:21:28','2018-04-18 09:21:28'),(271,'feedback','2018-04-18 09:21:28','2018-04-18 09:21:28'),(272,'film','2018-04-18 09:21:28','2018-04-18 09:21:28'),(273,'final','2018-04-18 09:21:28','2018-04-18 09:21:28'),(274,'finance','2018-04-18 09:21:28','2018-04-18 09:21:28'),(275,'financial','2018-04-18 09:21:28','2018-04-18 09:21:28'),(276,'financialaid','2018-04-18 09:21:28','2018-04-18 09:21:28'),(277,'firm.in','2018-04-18 09:21:28','2018-04-18 09:21:28'),(278,'fish','2018-04-18 09:21:28','2018-04-18 09:21:28'),(279,'fishing','2018-04-18 09:21:28','2018-04-18 09:21:28'),(280,'fit','2018-04-18 09:21:28','2018-04-18 09:21:28'),(281,'fitness','2018-04-18 09:21:28','2018-04-18 09:21:28'),(282,'fj.cn','2018-04-18 09:21:28','2018-04-18 09:21:28'),(283,'flights','2018-04-18 09:21:28','2018-04-18 09:21:28'),(284,'florist','2018-04-18 09:21:28','2018-04-18 09:21:28'),(285,'flowers','2018-04-18 09:21:28','2018-04-18 09:21:28'),(286,'fly','2018-04-18 09:21:28','2018-04-18 09:21:28'),(287,'fm','2018-04-18 09:21:28','2018-04-18 09:21:28'),(288,'foo','2018-04-18 09:21:28','2018-04-18 09:21:28'),(289,'food','2018-04-18 09:21:28','2018-04-18 09:21:28'),(290,'football','2018-04-18 09:21:28','2018-04-18 09:21:28'),(291,'forsale','2018-04-18 09:21:28','2018-04-18 09:21:28'),(292,'forum','2018-04-18 09:21:28','2018-04-18 09:21:28'),(293,'foundation','2018-04-18 09:21:28','2018-04-18 09:21:28'),(294,'fr','2018-04-18 09:21:28','2018-04-18 09:21:28'),(295,'free','2018-04-18 09:21:28','2018-04-18 09:21:28'),(296,'frl','2018-04-18 09:21:28','2018-04-18 09:21:28'),(297,'fun','2018-04-18 09:21:28','2018-04-18 09:21:28'),(298,'fund','2018-04-18 09:21:28','2018-04-18 09:21:28'),(299,'furniture','2018-04-18 09:21:28','2018-04-18 09:21:28'),(300,'futbol','2018-04-18 09:21:28','2018-04-18 09:21:28'),(301,'fyi','2018-04-18 09:21:28','2018-04-18 09:21:28'),(302,'gal','2018-04-18 09:21:28','2018-04-18 09:21:28'),(303,'gallery','2018-04-18 09:21:28','2018-04-18 09:21:28'),(304,'game','2018-04-18 09:21:28','2018-04-18 09:21:28'),(305,'games','2018-04-18 09:21:28','2018-04-18 09:21:28'),(306,'garden','2018-04-18 09:21:29','2018-04-18 09:21:29'),(307,'gay','2018-04-18 09:21:29','2018-04-18 09:21:29'),(308,'gb.com','2018-04-18 09:21:29','2018-04-18 09:21:29'),(309,'gb.net','2018-04-18 09:21:29','2018-04-18 09:21:29'),(310,'gd.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(311,'gea','2018-04-18 09:21:29','2018-04-18 09:21:29'),(312,'gen.in','2018-04-18 09:21:29','2018-04-18 09:21:29'),(313,'gent','2018-04-18 09:21:29','2018-04-18 09:21:29'),(314,'gift','2018-04-18 09:21:29','2018-04-18 09:21:29'),(315,'gifts','2018-04-18 09:21:29','2018-04-18 09:21:29'),(316,'gives','2018-04-18 09:21:29','2018-04-18 09:21:29'),(317,'giving','2018-04-18 09:21:29','2018-04-18 09:21:29'),(318,'glass','2018-04-18 09:21:29','2018-04-18 09:21:29'),(319,'glean','2018-04-18 09:21:29','2018-04-18 09:21:29'),(320,'global','2018-04-18 09:21:29','2018-04-18 09:21:29'),(321,'gmbh','2018-04-18 09:21:29','2018-04-18 09:21:29'),(322,'gold','2018-04-18 09:21:29','2018-04-18 09:21:29'),(323,'golf','2018-04-18 09:21:29','2018-04-18 09:21:29'),(324,'goo','2018-04-18 09:21:29','2018-04-18 09:21:29'),(325,'gop','2018-04-18 09:21:29','2018-04-18 09:21:29'),(326,'gr.com','2018-04-18 09:21:29','2018-04-18 09:21:29'),(327,'graphics','2018-04-18 09:21:29','2018-04-18 09:21:29'),(328,'gratis','2018-04-18 09:21:29','2018-04-18 09:21:29'),(329,'gree','2018-04-18 09:21:29','2018-04-18 09:21:29'),(330,'green','2018-04-18 09:21:29','2018-04-18 09:21:29'),(331,'gripe','2018-04-18 09:21:29','2018-04-18 09:21:29'),(332,'grocery','2018-04-18 09:21:29','2018-04-18 09:21:29'),(333,'group','2018-04-18 09:21:29','2018-04-18 09:21:29'),(334,'gs','2018-04-18 09:21:29','2018-04-18 09:21:29'),(335,'gs.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(336,'guide','2018-04-18 09:21:29','2018-04-18 09:21:29'),(337,'guitars','2018-04-18 09:21:29','2018-04-18 09:21:29'),(338,'guru','2018-04-18 09:21:29','2018-04-18 09:21:29'),(339,'gx.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(340,'gz.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(341,'ha.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(342,'hair','2018-04-18 09:21:29','2018-04-18 09:21:29'),(343,'halal','2018-04-18 09:21:29','2018-04-18 09:21:29'),(344,'hamburg','2018-04-18 09:21:29','2018-04-18 09:21:29'),(345,'haus','2018-04-18 09:21:29','2018-04-18 09:21:29'),(346,'hb.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(347,'he.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(348,'health','2018-04-18 09:21:29','2018-04-18 09:21:29'),(349,'healthcare','2018-04-18 09:21:29','2018-04-18 09:21:29'),(350,'heart','2018-04-18 09:21:29','2018-04-18 09:21:29'),(351,'help','2018-04-18 09:21:29','2018-04-18 09:21:29'),(352,'helsinki','2018-04-18 09:21:29','2018-04-18 09:21:29'),(353,'here','2018-04-18 09:21:29','2018-04-18 09:21:29'),(354,'hi.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(355,'hiphop','2018-04-18 09:21:29','2018-04-18 09:21:29'),(356,'hiv','2018-04-18 09:21:29','2018-04-18 09:21:29'),(357,'hk.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(358,'hl.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(359,'hn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(360,'hn.cn','2018-04-18 09:21:29','2018-04-18 09:21:29'),(361,'hockey','2018-04-18 09:21:29','2018-04-18 09:21:29'),(362,'holdings','2018-04-18 09:21:29','2018-04-18 09:21:29'),(363,'holiday','2018-04-18 09:21:29','2018-04-18 09:21:29'),(364,'home','2018-04-18 09:21:29','2018-04-18 09:21:29'),(365,'homes','2018-04-18 09:21:29','2018-04-18 09:21:29'),(366,'horse','2018-04-18 09:21:29','2018-04-18 09:21:29'),(367,'hospital','2018-04-18 09:21:29','2018-04-18 09:21:29'),(368,'host','2018-04-18 09:21:29','2018-04-18 09:21:29'),(369,'hosting','2018-04-18 09:21:29','2018-04-18 09:21:29'),(370,'hot','2018-04-18 09:21:29','2018-04-18 09:21:29'),(371,'hotel','2018-04-18 09:21:29','2018-04-18 09:21:29'),(372,'hotels','2018-04-18 09:21:29','2018-04-18 09:21:29'),(373,'house','2018-04-18 09:21:29','2018-04-18 09:21:29'),(374,'how','2018-04-18 09:21:29','2018-04-18 09:21:29'),(375,'hu.com','2018-04-18 09:21:29','2018-04-18 09:21:29'),(376,'icu','2018-04-18 09:21:29','2018-04-18 09:21:29'),(377,'idn','2018-04-18 09:21:30','2018-04-18 09:21:30'),(378,'idv.tw','2018-04-18 09:21:30','2018-04-18 09:21:30'),(379,'ieee','2018-04-18 09:21:30','2018-04-18 09:21:30'),(380,'ikano','2018-04-18 09:21:30','2018-04-18 09:21:30'),(381,'immo','2018-04-18 09:21:30','2018-04-18 09:21:30'),(382,'immobilien','2018-04-18 09:21:30','2018-04-18 09:21:30'),(383,'in','2018-04-18 09:21:30','2018-04-18 09:21:30'),(384,'inc','2018-04-18 09:21:30','2018-04-18 09:21:30'),(385,'ind.in','2018-04-18 09:21:30','2018-04-18 09:21:30'),(386,'indians','2018-04-18 09:21:30','2018-04-18 09:21:30'),(387,'industries','2018-04-18 09:21:30','2018-04-18 09:21:30'),(388,'info','2018-04-18 09:21:30','2018-04-18 09:21:30'),(389,'info.pl','2018-04-18 09:21:30','2018-04-18 09:21:30'),(390,'ing','2018-04-18 09:21:30','2018-04-18 09:21:30'),(391,'ink','2018-04-18 09:21:30','2018-04-18 09:21:30'),(392,'institute','2018-04-18 09:21:30','2018-04-18 09:21:30'),(393,'insurance','2018-04-18 09:21:30','2018-04-18 09:21:30'),(394,'insure','2018-04-18 09:21:30','2018-04-18 09:21:30'),(395,'international','2018-04-18 09:21:30','2018-04-18 09:21:30'),(396,'investments','2018-04-18 09:21:30','2018-04-18 09:21:30'),(397,'io','2018-04-18 09:21:30','2018-04-18 09:21:30'),(398,'ira','2018-04-18 09:21:30','2018-04-18 09:21:30'),(399,'irish','2018-04-18 09:21:30','2018-04-18 09:21:30'),(400,'islam','2018-04-18 09:21:30','2018-04-18 09:21:30'),(401,'ismaili','2018-04-18 09:21:30','2018-04-18 09:21:30'),(402,'ist','2018-04-18 09:21:30','2018-04-18 09:21:30'),(403,'istanbul','2018-04-18 09:21:30','2018-04-18 09:21:30'),(404,'it','2018-04-18 09:21:30','2018-04-18 09:21:30'),(405,'jetzt','2018-04-18 09:21:30','2018-04-18 09:21:30'),(406,'jewelry','2018-04-18 09:21:30','2018-04-18 09:21:30'),(407,'jobs','2018-04-18 09:21:30','2018-04-18 09:21:30'),(408,'joburg','2018-04-18 09:21:30','2018-04-18 09:21:30'),(409,'jp','2018-04-18 09:21:30','2018-04-18 09:21:30'),(410,'jpn.com','2018-04-18 09:21:30','2018-04-18 09:21:30'),(411,'js.cn','2018-04-18 09:21:30','2018-04-18 09:21:30'),(412,'juegos','2018-04-18 09:21:30','2018-04-18 09:21:30'),(413,'jur.pro','2018-04-18 09:21:30','2018-04-18 09:21:30'),(414,'justforu','2018-04-18 09:21:30','2018-04-18 09:21:30'),(415,'jx.cn','2018-04-18 09:21:30','2018-04-18 09:21:30'),(416,'kaufen','2018-04-18 09:21:30','2018-04-18 09:21:30'),(417,'kid','2018-04-18 09:21:30','2018-04-18 09:21:30'),(418,'kids','2018-04-18 09:21:30','2018-04-18 09:21:30'),(419,'kids.us','2018-04-18 09:21:30','2018-04-18 09:21:30'),(420,'kim','2018-04-18 09:21:30','2018-04-18 09:21:30'),(421,'kitchen','2018-04-18 09:21:30','2018-04-18 09:21:30'),(422,'kiwi','2018-04-18 09:21:30','2018-04-18 09:21:30'),(423,'koeln','2018-04-18 09:21:30','2018-04-18 09:21:30'),(424,'kosher','2018-04-18 09:21:30','2018-04-18 09:21:30'),(425,'kr.com','2018-04-18 09:21:30','2018-04-18 09:21:30'),(426,'kyoto','2018-04-18 09:21:30','2018-04-18 09:21:30'),(427,'la','2018-04-18 09:21:30','2018-04-18 09:21:30'),(428,'lamborghini','2018-04-18 09:21:30','2018-04-18 09:21:30'),(429,'land','2018-04-18 09:21:30','2018-04-18 09:21:30'),(430,'lat','2018-04-18 09:21:30','2018-04-18 09:21:30'),(431,'latino','2018-04-18 09:21:30','2018-04-18 09:21:30'),(432,'law','2018-04-18 09:21:30','2018-04-18 09:21:30'),(433,'law.pro','2018-04-18 09:21:30','2018-04-18 09:21:30'),(434,'lawyer','2018-04-18 09:21:30','2018-04-18 09:21:30'),(435,'lds','2018-04-18 09:21:30','2018-04-18 09:21:30'),(436,'lease','2018-04-18 09:21:30','2018-04-18 09:21:30'),(437,'leclerc','2018-04-18 09:21:30','2018-04-18 09:21:30'),(438,'legal','2018-04-18 09:21:30','2018-04-18 09:21:30'),(439,'lgbt','2018-04-18 09:21:30','2018-04-18 09:21:30'),(440,'li','2018-04-18 09:21:30','2018-04-18 09:21:30'),(441,'life','2018-04-18 09:21:30','2018-04-18 09:21:30'),(442,'lifeinsurance','2018-04-18 09:21:30','2018-04-18 09:21:30'),(443,'lifestyle','2018-04-18 09:21:30','2018-04-18 09:21:30'),(444,'lighting','2018-04-18 09:21:30','2018-04-18 09:21:30'),(445,'limited','2018-04-18 09:21:30','2018-04-18 09:21:30'),(446,'limo','2018-04-18 09:21:30','2018-04-18 09:21:30'),(447,'link','2018-04-18 09:21:30','2018-04-18 09:21:30'),(448,'live','2018-04-18 09:21:31','2018-04-18 09:21:31'),(449,'living','2018-04-18 09:21:31','2018-04-18 09:21:31'),(450,'llc','2018-04-18 09:21:31','2018-04-18 09:21:31'),(451,'llp','2018-04-18 09:21:31','2018-04-18 09:21:31'),(452,'ln.cn','2018-04-18 09:21:31','2018-04-18 09:21:31'),(453,'loan','2018-04-18 09:21:31','2018-04-18 09:21:31'),(454,'loans','2018-04-18 09:21:31','2018-04-18 09:21:31'),(455,'lol','2018-04-18 09:21:31','2018-04-18 09:21:31'),(456,'london','2018-04-18 09:21:31','2018-04-18 09:21:31'),(457,'lotto','2018-04-18 09:21:31','2018-04-18 09:21:31'),(458,'love','2018-04-18 09:21:31','2018-04-18 09:21:31'),(459,'ltd','2018-04-18 09:21:31','2018-04-18 09:21:31'),(460,'ltd.uk','2018-04-18 09:21:31','2018-04-18 09:21:31'),(461,'luxe','2018-04-18 09:21:31','2018-04-18 09:21:31'),(462,'luxury','2018-04-18 09:21:31','2018-04-18 09:21:31'),(463,'madrid','2018-04-18 09:21:31','2018-04-18 09:21:31'),(464,'mail','2018-04-18 09:21:31','2018-04-18 09:21:31'),(465,'maison','2018-04-18 09:21:31','2018-04-18 09:21:31'),(466,'management','2018-04-18 09:21:31','2018-04-18 09:21:31'),(467,'map','2018-04-18 09:21:31','2018-04-18 09:21:31'),(468,'market','2018-04-18 09:21:31','2018-04-18 09:21:31'),(469,'marketing','2018-04-18 09:21:31','2018-04-18 09:21:31'),(470,'markets','2018-04-18 09:21:31','2018-04-18 09:21:31'),(471,'mb.ca','2018-04-18 09:21:31','2018-04-18 09:21:31'),(472,'mba','2018-04-18 09:21:31','2018-04-18 09:21:31'),(473,'me','2018-04-18 09:21:31','2018-04-18 09:21:31'),(474,'me.uk','2018-04-18 09:21:31','2018-04-18 09:21:31'),(475,'med','2018-04-18 09:21:31','2018-04-18 09:21:31'),(476,'med.pro','2018-04-18 09:21:31','2018-04-18 09:21:31'),(477,'media','2018-04-18 09:21:31','2018-04-18 09:21:31'),(478,'medical','2018-04-18 09:21:31','2018-04-18 09:21:31'),(479,'meet','2018-04-18 09:21:31','2018-04-18 09:21:31'),(480,'melbourne','2018-04-18 09:21:31','2018-04-18 09:21:31'),(481,'meme','2018-04-18 09:21:31','2018-04-18 09:21:31'),(482,'memorial','2018-04-18 09:21:31','2018-04-18 09:21:31'),(483,'men','2018-04-18 09:21:31','2018-04-18 09:21:31'),(484,'menu','2018-04-18 09:21:31','2018-04-18 09:21:31'),(485,'merck','2018-04-18 09:21:31','2018-04-18 09:21:31'),(486,'miami','2018-04-18 09:21:31','2018-04-18 09:21:31'),(487,'mls','2018-04-18 09:21:31','2018-04-18 09:21:31'),(488,'mma','2018-04-18 09:21:31','2018-04-18 09:21:31'),(489,'mn','2018-04-18 09:21:31','2018-04-18 09:21:31'),(490,'mo.cn','2018-04-18 09:21:31','2018-04-18 09:21:31'),(491,'mobi','2018-04-18 09:21:31','2018-04-18 09:21:31'),(492,'mobile','2018-04-18 09:21:31','2018-04-18 09:21:31'),(493,'mobily','2018-04-18 09:21:31','2018-04-18 09:21:31'),(494,'moda','2018-04-18 09:21:31','2018-04-18 09:21:31'),(495,'moe','2018-04-18 09:21:31','2018-04-18 09:21:31'),(496,'mom','2018-04-18 09:21:31','2018-04-18 09:21:31'),(497,'money','2018-04-18 09:21:31','2018-04-18 09:21:31'),(498,'mormon','2018-04-18 09:21:31','2018-04-18 09:21:31'),(499,'mortgage','2018-04-18 09:21:31','2018-04-18 09:21:31'),(500,'moscow','2018-04-18 09:21:31','2018-04-18 09:21:31'),(501,'moto','2018-04-18 09:21:31','2018-04-18 09:21:31'),(502,'motorcycles','2018-04-18 09:21:31','2018-04-18 09:21:31'),(503,'mov','2018-04-18 09:21:31','2018-04-18 09:21:31'),(504,'movie','2018-04-18 09:21:31','2018-04-18 09:21:31'),(505,'mozaic','2018-04-18 09:21:31','2018-04-18 09:21:31'),(506,'ms','2018-04-18 09:21:31','2018-04-18 09:21:31'),(507,'msd','2018-04-18 09:21:31','2018-04-18 09:21:31'),(508,'music','2018-04-18 09:21:31','2018-04-18 09:21:31'),(509,'mutual','2018-04-18 09:21:31','2018-04-18 09:21:31'),(510,'mutualfunds','2018-04-18 09:21:31','2018-04-18 09:21:31'),(511,'nagoya','2018-04-18 09:21:31','2018-04-18 09:21:31'),(512,'name','2018-04-18 09:21:31','2018-04-18 09:21:31'),(513,'navy','2018-04-18 09:21:31','2018-04-18 09:21:31'),(514,'nb.ca','2018-04-18 09:21:31','2018-04-18 09:21:31'),(515,'nba','2018-04-18 09:21:31','2018-04-18 09:21:31'),(516,'net','2018-04-18 09:21:31','2018-04-18 09:21:31'),(517,'net.ag','2018-04-18 09:21:31','2018-04-18 09:21:31'),(518,'net.au','2018-04-18 09:21:32','2018-04-18 09:21:32'),(519,'net.cn','2018-04-18 09:21:32','2018-04-18 09:21:32'),(520,'net.co','2018-04-18 09:21:32','2018-04-18 09:21:32'),(521,'net.in','2018-04-18 09:21:32','2018-04-18 09:21:32'),(522,'net.nz','2018-04-18 09:21:32','2018-04-18 09:21:32'),(523,'net.pe','2018-04-18 09:21:32','2018-04-18 09:21:32'),(524,'net.pl','2018-04-18 09:21:32','2018-04-18 09:21:32'),(525,'net.sc','2018-04-18 09:21:32','2018-04-18 09:21:32'),(526,'network','2018-04-18 09:21:32','2018-04-18 09:21:32'),(527,'new','2018-04-18 09:21:32','2018-04-18 09:21:32'),(528,'news','2018-04-18 09:21:32','2018-04-18 09:21:32'),(529,'nf.ca','2018-04-18 09:21:32','2018-04-18 09:21:32'),(530,'ngo','2018-04-18 09:21:32','2018-04-18 09:21:32'),(531,'ninja','2018-04-18 09:21:32','2018-04-18 09:21:32'),(532,'nl','2018-04-18 09:21:32','2018-04-18 09:21:32'),(533,'nl.ca','2018-04-18 09:21:32','2018-04-18 09:21:32'),(534,'nm.cn','2018-04-18 09:21:32','2018-04-18 09:21:32'),(535,'no.com','2018-04-18 09:21:32','2018-04-18 09:21:32'),(536,'nom.co','2018-04-18 09:21:32','2018-04-18 09:21:32'),(537,'nom.es','2018-04-18 09:21:32','2018-04-18 09:21:32'),(538,'nom.pe','2018-04-18 09:21:32','2018-04-18 09:21:32'),(539,'notes:','2018-04-18 09:21:32','2018-04-18 09:21:32'),(540,'now','2018-04-18 09:21:32','2018-04-18 09:21:32'),(541,'nowruz','2018-04-18 09:21:32','2018-04-18 09:21:32'),(542,'nrw','2018-04-18 09:21:32','2018-04-18 09:21:32'),(543,'ns.ca','2018-04-18 09:21:32','2018-04-18 09:21:32'),(544,'nt.ca','2018-04-18 09:21:32','2018-04-18 09:21:32'),(545,'nu','2018-04-18 09:21:32','2018-04-18 09:21:32'),(546,'nu.ca','2018-04-18 09:21:32','2018-04-18 09:21:32'),(547,'nx.cn','2018-04-18 09:21:32','2018-04-18 09:21:32'),(548,'nyc','2018-04-18 09:21:32','2018-04-18 09:21:32'),(549,'okinawa','2018-04-18 09:21:32','2018-04-18 09:21:32'),(550,'on.ca','2018-04-18 09:21:32','2018-04-18 09:21:32'),(551,'one','2018-04-18 09:21:32','2018-04-18 09:21:32'),(552,'ong','2018-04-18 09:21:32','2018-04-18 09:21:32'),(553,'onl','2018-04-18 09:21:32','2018-04-18 09:21:32'),(554,'online','2018-04-18 09:21:32','2018-04-18 09:21:32'),(555,'ooo','2018-04-18 09:21:32','2018-04-18 09:21:32'),(556,'org','2018-04-18 09:21:32','2018-04-18 09:21:32'),(557,'org.ag','2018-04-18 09:21:32','2018-04-18 09:21:32'),(558,'org.au','2018-04-18 09:21:32','2018-04-18 09:21:32'),(559,'org.cn','2018-04-18 09:21:32','2018-04-18 09:21:32'),(560,'org.es','2018-04-18 09:21:32','2018-04-18 09:21:32'),(561,'org.in','2018-04-18 09:21:32','2018-04-18 09:21:32'),(562,'org.nz','2018-04-18 09:21:32','2018-04-18 09:21:32'),(563,'org.pe','2018-04-18 09:21:32','2018-04-18 09:21:32'),(564,'org.pl','2018-04-18 09:21:32','2018-04-18 09:21:32'),(565,'org.sc','2018-04-18 09:21:32','2018-04-18 09:21:32'),(566,'org.tw','2018-04-18 09:21:32','2018-04-18 09:21:32'),(567,'org.uk','2018-04-18 09:21:32','2018-04-18 09:21:32'),(568,'organic','2018-04-18 09:21:32','2018-04-18 09:21:32'),(569,'origins','2018-04-18 09:21:32','2018-04-18 09:21:32'),(570,'osaka','2018-04-18 09:21:32','2018-04-18 09:21:32'),(571,'ovh','2018-04-18 09:21:32','2018-04-18 09:21:32'),(572,'paris','2018-04-18 09:21:32','2018-04-18 09:21:32'),(573,'pars','2018-04-18 09:21:32','2018-04-18 09:21:32'),(574,'partners','2018-04-18 09:21:32','2018-04-18 09:21:32'),(575,'parts','2018-04-18 09:21:32','2018-04-18 09:21:32'),(576,'party','2018-04-18 09:21:32','2018-04-18 09:21:32'),(577,'patagonia','2018-04-18 09:21:32','2018-04-18 09:21:32'),(578,'pay','2018-04-18 09:21:32','2018-04-18 09:21:32'),(579,'pe','2018-04-18 09:21:32','2018-04-18 09:21:32'),(580,'pe.ca','2018-04-18 09:21:32','2018-04-18 09:21:32'),(581,'persiangulf','2018-04-18 09:21:32','2018-04-18 09:21:32'),(582,'pet','2018-04-18 09:21:32','2018-04-18 09:21:32'),(583,'pets','2018-04-18 09:21:32','2018-04-18 09:21:32'),(584,'pharmacy','2018-04-18 09:21:32','2018-04-18 09:21:32'),(585,'phd','2018-04-18 09:21:32','2018-04-18 09:21:32'),(586,'phone','2018-04-18 09:21:32','2018-04-18 09:21:32'),(587,'photo','2018-04-18 09:21:32','2018-04-18 09:21:32'),(588,'photography','2018-04-18 09:21:32','2018-04-18 09:21:32'),(589,'photos','2018-04-18 09:21:32','2018-04-18 09:21:32'),(590,'physio','2018-04-18 09:21:32','2018-04-18 09:21:32'),(591,'pics','2018-04-18 09:21:32','2018-04-18 09:21:32'),(592,'pictures','2018-04-18 09:21:32','2018-04-18 09:21:32'),(593,'pid','2018-04-18 09:21:33','2018-04-18 09:21:33'),(594,'pink','2018-04-18 09:21:33','2018-04-18 09:21:33'),(595,'pizza','2018-04-18 09:21:33','2018-04-18 09:21:33'),(596,'pl','2018-04-18 09:21:33','2018-04-18 09:21:33'),(597,'place','2018-04-18 09:21:33','2018-04-18 09:21:33'),(598,'play','2018-04-18 09:21:33','2018-04-18 09:21:33'),(599,'plc.uk','2018-04-18 09:21:33','2018-04-18 09:21:33'),(600,'plumbing','2018-04-18 09:21:33','2018-04-18 09:21:33'),(601,'plus','2018-04-18 09:21:33','2018-04-18 09:21:33'),(602,'poker','2018-04-18 09:21:33','2018-04-18 09:21:33'),(603,'porn','2018-04-18 09:21:33','2018-04-18 09:21:33'),(604,'press','2018-04-18 09:21:33','2018-04-18 09:21:33'),(605,'pro','2018-04-18 09:21:33','2018-04-18 09:21:33'),(606,'productions','2018-04-18 09:21:33','2018-04-18 09:21:33'),(607,'prof','2018-04-18 09:21:33','2018-04-18 09:21:33'),(608,'promo','2018-04-18 09:21:33','2018-04-18 09:21:33'),(609,'properties','2018-04-18 09:21:33','2018-04-18 09:21:33'),(610,'property','2018-04-18 09:21:33','2018-04-18 09:21:33'),(611,'pub','2018-04-18 09:21:33','2018-04-18 09:21:33'),(612,'pw','2018-04-18 09:21:33','2018-04-18 09:21:33'),(613,'qc.ca','2018-04-18 09:21:33','2018-04-18 09:21:33'),(614,'qc.com','2018-04-18 09:21:33','2018-04-18 09:21:33'),(615,'qh.cn','2018-04-18 09:21:33','2018-04-18 09:21:33'),(616,'qpon','2018-04-18 09:21:33','2018-04-18 09:21:33'),(617,'quebec','2018-04-18 09:21:33','2018-04-18 09:21:33'),(618,'racing','2018-04-18 09:21:33','2018-04-18 09:21:33'),(619,'radio','2018-04-18 09:21:33','2018-04-18 09:21:33'),(620,'realestate','2018-04-18 09:21:33','2018-04-18 09:21:33'),(621,'realtor','2018-04-18 09:21:33','2018-04-18 09:21:33'),(622,'realty','2018-04-18 09:21:33','2018-04-18 09:21:33'),(623,'recht.pro','2018-04-18 09:21:33','2018-04-18 09:21:33'),(624,'recipes','2018-04-18 09:21:33','2018-04-18 09:21:33'),(625,'red','2018-04-18 09:21:33','2018-04-18 09:21:33'),(626,'rehab','2018-04-18 09:21:33','2018-04-18 09:21:33'),(627,'reise','2018-04-18 09:21:33','2018-04-18 09:21:33'),(628,'reisen','2018-04-18 09:21:33','2018-04-18 09:21:33'),(629,'reit','2018-04-18 09:21:33','2018-04-18 09:21:33'),(630,'ren','2018-04-18 09:21:33','2018-04-18 09:21:33'),(631,'rent','2018-04-18 09:21:33','2018-04-18 09:21:33'),(632,'rentals','2018-04-18 09:21:33','2018-04-18 09:21:33'),(633,'repair','2018-04-18 09:21:33','2018-04-18 09:21:33'),(634,'report','2018-04-18 09:21:33','2018-04-18 09:21:33'),(635,'republican','2018-04-18 09:21:33','2018-04-18 09:21:33'),(636,'rest','2018-04-18 09:21:33','2018-04-18 09:21:33'),(637,'restaurant','2018-04-18 09:21:33','2018-04-18 09:21:33'),(638,'review','2018-04-18 09:21:33','2018-04-18 09:21:33'),(639,'reviews','2018-04-18 09:21:33','2018-04-18 09:21:33'),(640,'rich','2018-04-18 09:21:33','2018-04-18 09:21:33'),(641,'rio','2018-04-18 09:21:33','2018-04-18 09:21:33'),(642,'rip','2018-04-18 09:21:33','2018-04-18 09:21:33'),(643,'rocks','2018-04-18 09:21:33','2018-04-18 09:21:33'),(644,'rodeo','2018-04-18 09:21:33','2018-04-18 09:21:33'),(645,'roma','2018-04-18 09:21:33','2018-04-18 09:21:33'),(646,'rsvp','2018-04-18 09:21:33','2018-04-18 09:21:33'),(647,'ru.com','2018-04-18 09:21:33','2018-04-18 09:21:33'),(648,'rugby','2018-04-18 09:21:33','2018-04-18 09:21:33'),(649,'ruhr','2018-04-18 09:21:33','2018-04-18 09:21:33'),(650,'run','2018-04-18 09:21:33','2018-04-18 09:21:33'),(651,'ryukyu','2018-04-18 09:21:33','2018-04-18 09:21:33'),(652,'sa.com','2018-04-18 09:21:33','2018-04-18 09:21:33'),(653,'saarland','2018-04-18 09:21:33','2018-04-18 09:21:33'),(654,'safe','2018-04-18 09:21:33','2018-04-18 09:21:33'),(655,'safety','2018-04-18 09:21:33','2018-04-18 09:21:33'),(656,'sale','2018-04-18 09:21:33','2018-04-18 09:21:33'),(657,'salon','2018-04-18 09:21:33','2018-04-18 09:21:33'),(658,'sarl','2018-04-18 09:21:33','2018-04-18 09:21:33'),(659,'sas','2018-04-18 09:21:34','2018-04-18 09:21:34'),(660,'save','2018-04-18 09:21:34','2018-04-18 09:21:34'),(661,'sc','2018-04-18 09:21:34','2018-04-18 09:21:34'),(662,'sc.cn','2018-04-18 09:21:34','2018-04-18 09:21:34'),(663,'scholarships','2018-04-18 09:21:34','2018-04-18 09:21:34'),(664,'school','2018-04-18 09:21:34','2018-04-18 09:21:34'),(665,'schule','2018-04-18 09:21:34','2018-04-18 09:21:34'),(666,'science','2018-04-18 09:21:34','2018-04-18 09:21:34'),(667,'scot','2018-04-18 09:21:34','2018-04-18 09:21:34'),(668,'sd.cn','2018-04-18 09:21:34','2018-04-18 09:21:34'),(669,'se.com','2018-04-18 09:21:34','2018-04-18 09:21:34'),(670,'se.net','2018-04-18 09:21:34','2018-04-18 09:21:34'),(671,'search','2018-04-18 09:21:34','2018-04-18 09:21:34'),(672,'secure','2018-04-18 09:21:34','2018-04-18 09:21:34'),(673,'security','2018-04-18 09:21:34','2018-04-18 09:21:34'),(674,'seek','2018-04-18 09:21:34','2018-04-18 09:21:34'),(675,'services','2018-04-18 09:21:34','2018-04-18 09:21:34'),(676,'sex','2018-04-18 09:21:34','2018-04-18 09:21:34'),(677,'sexy','2018-04-18 09:21:34','2018-04-18 09:21:34'),(678,'sg','2018-04-18 09:21:34','2018-04-18 09:21:34'),(679,'sh','2018-04-18 09:21:34','2018-04-18 09:21:34'),(680,'sh.cn','2018-04-18 09:21:34','2018-04-18 09:21:34'),(681,'shia','2018-04-18 09:21:34','2018-04-18 09:21:34'),(682,'shiksha','2018-04-18 09:21:34','2018-04-18 09:21:34'),(683,'shoes','2018-04-18 09:21:34','2018-04-18 09:21:34'),(684,'shop','2018-04-18 09:21:34','2018-04-18 09:21:34'),(685,'shopping','2018-04-18 09:21:34','2018-04-18 09:21:34'),(686,'shopyourway','2018-04-18 09:21:34','2018-04-18 09:21:34'),(687,'show','2018-04-18 09:21:34','2018-04-18 09:21:34'),(688,'singles','2018-04-18 09:21:34','2018-04-18 09:21:34'),(689,'site','2018-04-18 09:21:34','2018-04-18 09:21:34'),(690,'sk.ca','2018-04-18 09:21:34','2018-04-18 09:21:34'),(691,'ski','2018-04-18 09:21:34','2018-04-18 09:21:34'),(692,'skin','2018-04-18 09:21:34','2018-04-18 09:21:34'),(693,'sn.cn','2018-04-18 09:21:34','2018-04-18 09:21:34'),(694,'soccer','2018-04-18 09:21:34','2018-04-18 09:21:34'),(695,'social','2018-04-18 09:21:34','2018-04-18 09:21:34'),(696,'software','2018-04-18 09:21:34','2018-04-18 09:21:34'),(697,'solar','2018-04-18 09:21:34','2018-04-18 09:21:34'),(698,'solutions','2018-04-18 09:21:34','2018-04-18 09:21:34'),(699,'soy','2018-04-18 09:21:34','2018-04-18 09:21:34'),(700,'spa','2018-04-18 09:21:34','2018-04-18 09:21:34'),(701,'space','2018-04-18 09:21:34','2018-04-18 09:21:34'),(702,'sport','2018-04-18 09:21:34','2018-04-18 09:21:34'),(703,'sports','2018-04-18 09:21:34','2018-04-18 09:21:34'),(704,'spot','2018-04-18 09:21:34','2018-04-18 09:21:34'),(705,'spreadbetting','2018-04-18 09:21:34','2018-04-18 09:21:34'),(706,'srl','2018-04-18 09:21:34','2018-04-18 09:21:34'),(707,'stada','2018-04-18 09:21:34','2018-04-18 09:21:34'),(708,'stockholm','2018-04-18 09:21:34','2018-04-18 09:21:34'),(709,'storage','2018-04-18 09:21:34','2018-04-18 09:21:34'),(710,'store','2018-04-18 09:21:34','2018-04-18 09:21:34'),(711,'stroke','2018-04-18 09:21:34','2018-04-18 09:21:34'),(712,'studio','2018-04-18 09:21:34','2018-04-18 09:21:34'),(713,'study','2018-04-18 09:21:34','2018-04-18 09:21:34'),(714,'style','2018-04-18 09:21:34','2018-04-18 09:21:34'),(715,'sucks','2018-04-18 09:21:34','2018-04-18 09:21:34'),(716,'supplies','2018-04-18 09:21:34','2018-04-18 09:21:34'),(717,'supply','2018-04-18 09:21:34','2018-04-18 09:21:34'),(718,'support','2018-04-18 09:21:34','2018-04-18 09:21:34'),(719,'surf','2018-04-18 09:21:34','2018-04-18 09:21:34'),(720,'surgery','2018-04-18 09:21:34','2018-04-18 09:21:34'),(721,'swiss','2018-04-18 09:21:34','2018-04-18 09:21:34'),(722,'sx.cn','2018-04-18 09:21:34','2018-04-18 09:21:34'),(723,'sydney','2018-04-18 09:21:34','2018-04-18 09:21:34'),(724,'systems','2018-04-18 09:21:34','2018-04-18 09:21:34'),(725,'taipei','2018-04-18 09:21:34','2018-04-18 09:21:34'),(726,'tatar','2018-04-18 09:21:34','2018-04-18 09:21:34'),(727,'tattoo','2018-04-18 09:21:34','2018-04-18 09:21:34'),(728,'tax','2018-04-18 09:21:34','2018-04-18 09:21:34'),(729,'taxi','2018-04-18 09:21:34','2018-04-18 09:21:34'),(730,'tc','2018-04-18 09:21:35','2018-04-18 09:21:35'),(731,'team','2018-04-18 09:21:35','2018-04-18 09:21:35'),(732,'tech','2018-04-18 09:21:35','2018-04-18 09:21:35'),(733,'technology','2018-04-18 09:21:35','2018-04-18 09:21:35'),(734,'tel','2018-04-18 09:21:35','2018-04-18 09:21:35'),(735,'tennis','2018-04-18 09:21:35','2018-04-18 09:21:35'),(736,'thai','2018-04-18 09:21:35','2018-04-18 09:21:35'),(737,'theater','2018-04-18 09:21:35','2018-04-18 09:21:35'),(738,'theatre','2018-04-18 09:21:35','2018-04-18 09:21:35'),(739,'tickets','2018-04-18 09:21:35','2018-04-18 09:21:35'),(740,'tienda','2018-04-18 09:21:35','2018-04-18 09:21:35'),(741,'tips','2018-04-18 09:21:35','2018-04-18 09:21:35'),(742,'tires','2018-04-18 09:21:35','2018-04-18 09:21:35'),(743,'tirol','2018-04-18 09:21:35','2018-04-18 09:21:35'),(744,'tj.cn','2018-04-18 09:21:35','2018-04-18 09:21:35'),(745,'tk','2018-04-18 09:21:35','2018-04-18 09:21:35'),(746,'tm','2018-04-18 09:21:35','2018-04-18 09:21:35'),(747,'today','2018-04-18 09:21:35','2018-04-18 09:21:35'),(748,'tokyo','2018-04-18 09:21:35','2018-04-18 09:21:35'),(749,'tools','2018-04-18 09:21:35','2018-04-18 09:21:35'),(750,'top','2018-04-18 09:21:35','2018-04-18 09:21:35'),(751,'tour','2018-04-18 09:21:35','2018-04-18 09:21:35'),(752,'tours','2018-04-18 09:21:35','2018-04-18 09:21:35'),(753,'town','2018-04-18 09:21:35','2018-04-18 09:21:35'),(754,'toys','2018-04-18 09:21:35','2018-04-18 09:21:35'),(755,'trade','2018-04-18 09:21:35','2018-04-18 09:21:35'),(756,'trading','2018-04-18 09:21:35','2018-04-18 09:21:35'),(757,'training','2018-04-18 09:21:35','2018-04-18 09:21:35'),(758,'translations','2018-04-18 09:21:35','2018-04-18 09:21:35'),(759,'trust','2018-04-18 09:21:35','2018-04-18 09:21:35'),(760,'tube','2018-04-18 09:21:35','2018-04-18 09:21:35'),(761,'tv','2018-04-18 09:21:35','2018-04-18 09:21:35'),(762,'tw','2018-04-18 09:21:35','2018-04-18 09:21:35'),(763,'tw.cn','2018-04-18 09:21:35','2018-04-18 09:21:35'),(764,'uk','2018-04-18 09:21:35','2018-04-18 09:21:35'),(765,'uk.com','2018-04-18 09:21:35','2018-04-18 09:21:35'),(766,'uk.net','2018-04-18 09:21:35','2018-04-18 09:21:35'),(767,'university','2018-04-18 09:21:35','2018-04-18 09:21:35'),(768,'uno','2018-04-18 09:21:35','2018-04-18 09:21:35'),(769,'us','2018-04-18 09:21:35','2018-04-18 09:21:35'),(770,'us.com','2018-04-18 09:21:35','2018-04-18 09:21:35'),(771,'us.org','2018-04-18 09:21:35','2018-04-18 09:21:35'),(772,'uy.com','2018-04-18 09:21:35','2018-04-18 09:21:35'),(773,'vacations','2018-04-18 09:21:35','2018-04-18 09:21:35'),(774,'vana','2018-04-18 09:21:35','2018-04-18 09:21:35'),(775,'vc','2018-04-18 09:21:35','2018-04-18 09:21:35'),(776,'vegas','2018-04-18 09:21:35','2018-04-18 09:21:35'),(777,'ventures','2018-04-18 09:21:35','2018-04-18 09:21:35'),(778,'versicherung','2018-04-18 09:21:35','2018-04-18 09:21:35'),(779,'vet','2018-04-18 09:21:35','2018-04-18 09:21:35'),(780,'vg','2018-04-18 09:21:35','2018-04-18 09:21:35'),(781,'viajes','2018-04-18 09:21:35','2018-04-18 09:21:35'),(782,'video','2018-04-18 09:21:35','2018-04-18 09:21:35'),(783,'villas','2018-04-18 09:21:35','2018-04-18 09:21:35'),(784,'vin','2018-04-18 09:21:35','2018-04-18 09:21:35'),(785,'vip','2018-04-18 09:21:35','2018-04-18 09:21:35'),(786,'vision','2018-04-18 09:21:35','2018-04-18 09:21:35'),(787,'vlaanderen','2018-04-18 09:21:35','2018-04-18 09:21:35'),(788,'vodka','2018-04-18 09:21:35','2018-04-18 09:21:35'),(789,'vote','2018-04-18 09:21:35','2018-04-18 09:21:35'),(790,'voting','2018-04-18 09:21:35','2018-04-18 09:21:35'),(791,'voto','2018-04-18 09:21:35','2018-04-18 09:21:35'),(792,'voyage','2018-04-18 09:21:35','2018-04-18 09:21:35'),(793,'wales','2018-04-18 09:21:35','2018-04-18 09:21:35'),(794,'wang','2018-04-18 09:21:35','2018-04-18 09:21:35'),(795,'watch','2018-04-18 09:21:35','2018-04-18 09:21:35'),(796,'watches','2018-04-18 09:21:36','2018-04-18 09:21:36'),(797,'weather','2018-04-18 09:21:36','2018-04-18 09:21:36'),(798,'web','2018-04-18 09:21:36','2018-04-18 09:21:36'),(799,'web.com','2018-04-18 09:21:36','2018-04-18 09:21:36'),(800,'webcam','2018-04-18 09:21:36','2018-04-18 09:21:36'),(801,'webs','2018-04-18 09:21:36','2018-04-18 09:21:36'),(802,'website','2018-04-18 09:21:36','2018-04-18 09:21:36'),(803,'wed','2018-04-18 09:21:36','2018-04-18 09:21:36'),(804,'wedding','2018-04-18 09:21:36','2018-04-18 09:21:36'),(805,'weibo','2018-04-18 09:21:36','2018-04-18 09:21:36'),(806,'whoswho','2018-04-18 09:21:36','2018-04-18 09:21:36'),(807,'wien','2018-04-18 09:21:36','2018-04-18 09:21:36'),(808,'wiki','2018-04-18 09:21:36','2018-04-18 09:21:36'),(809,'win','2018-04-18 09:21:36','2018-04-18 09:21:36'),(810,'wine','2018-04-18 09:21:36','2018-04-18 09:21:36'),(811,'winners','2018-04-18 09:21:36','2018-04-18 09:21:36'),(812,'work','2018-04-18 09:21:36','2018-04-18 09:21:36'),(813,'works','2018-04-18 09:21:36','2018-04-18 09:21:36'),(814,'world','2018-04-18 09:21:36','2018-04-18 09:21:36'),(815,'wow','2018-04-18 09:21:36','2018-04-18 09:21:36'),(816,'ws','2018-04-18 09:21:36','2018-04-18 09:21:36'),(817,'wtf','2018-04-18 09:21:36','2018-04-18 09:21:36'),(818,'xin','2018-04-18 09:21:36','2018-04-18 09:21:36'),(819,'xj.cn','2018-04-18 09:21:36','2018-04-18 09:21:36'),(820,'xn--11b4c3d','2018-04-18 09:21:36','2018-04-18 09:21:36'),(821,'xn--1ck2e1b','2018-04-18 09:21:36','2018-04-18 09:21:36'),(822,'xn--1qqw23a','2018-04-18 09:21:36','2018-04-18 09:21:36'),(823,'xn--30rr7y','2018-04-18 09:21:36','2018-04-18 09:21:36'),(824,'xn--3bst00m','2018-04-18 09:21:36','2018-04-18 09:21:36'),(825,'xn--3ds443g','2018-04-18 09:21:36','2018-04-18 09:21:36'),(826,'xn--3pxu8k','2018-04-18 09:21:36','2018-04-18 09:21:36'),(827,'xn--42c2d9a','2018-04-18 09:21:36','2018-04-18 09:21:36'),(828,'xn--45q11c','2018-04-18 09:21:36','2018-04-18 09:21:36'),(829,'xn--4gbrim','2018-04-18 09:21:36','2018-04-18 09:21:36'),(830,'xn--4gq48lf9j','2018-04-18 09:21:36','2018-04-18 09:21:36'),(831,'xn--55qw42g','2018-04-18 09:21:36','2018-04-18 09:21:36'),(832,'xn--55qx5d','2018-04-18 09:21:36','2018-04-18 09:21:36'),(833,'xn--5tzm5g','2018-04-18 09:21:36','2018-04-18 09:21:36'),(834,'xn--6frz82g','2018-04-18 09:21:36','2018-04-18 09:21:36'),(835,'xn--6qq986b3xl','2018-04-18 09:21:36','2018-04-18 09:21:36'),(836,'xn--6rtwn','2018-04-18 09:21:36','2018-04-18 09:21:36'),(837,'xn--80adxhks','2018-04-18 09:21:36','2018-04-18 09:21:36'),(838,'xn--80aqecdr1a','2018-04-18 09:21:36','2018-04-18 09:21:36'),(839,'xn--80asehdb','2018-04-18 09:21:36','2018-04-18 09:21:36'),(840,'xn--80aswg','2018-04-18 09:21:36','2018-04-18 09:21:36'),(841,'xn--8y0a063a','2018-04-18 09:21:36','2018-04-18 09:21:36'),(842,'xn--9et52u','2018-04-18 09:21:36','2018-04-18 09:21:36'),(843,'xn--9krt00a','2018-04-18 09:21:36','2018-04-18 09:21:36'),(844,'xn--b4w605ferd','2018-04-18 09:21:36','2018-04-18 09:21:36'),(845,'xn--c1avg','2018-04-18 09:21:36','2018-04-18 09:21:36'),(846,'xn--c1yn36f','2018-04-18 09:21:36','2018-04-18 09:21:36'),(847,'xn--c2br7g','2018-04-18 09:21:36','2018-04-18 09:21:36'),(848,'xn--cck2b3b','2018-04-18 09:21:36','2018-04-18 09:21:36'),(849,'xn--cckwcxetd','2018-04-18 09:21:36','2018-04-18 09:21:36'),(850,'xn--cg4bki','2018-04-18 09:21:36','2018-04-18 09:21:36'),(851,'xn--czr694b','2018-04-18 09:21:36','2018-04-18 09:21:36'),(852,'xn--czrs0t','2018-04-18 09:21:36','2018-04-18 09:21:36'),(853,'xn--czru2d','2018-04-18 09:21:36','2018-04-18 09:21:36'),(854,'xn--d1acj3b','2018-04-18 09:21:36','2018-04-18 09:21:36'),(855,'xn--dkwm73cwpn','2018-04-18 09:21:36','2018-04-18 09:21:36'),(856,'xn--eckvdtc9d','2018-04-18 09:21:36','2018-04-18 09:21:36'),(857,'xn--efvy88h','2018-04-18 09:21:36','2018-04-18 09:21:36'),(858,'xn--estv75g','2018-04-18 09:21:36','2018-04-18 09:21:36'),(859,'xn--fct429k','2018-04-18 09:21:36','2018-04-18 09:21:36'),(860,'xn--fes124c','2018-04-18 09:21:36','2018-04-18 09:21:36'),(861,'xn--fhbei','2018-04-18 09:21:36','2018-04-18 09:21:36'),(862,'xn--fiq228c5hs','2018-04-18 09:21:36','2018-04-18 09:21:36'),(863,'xn--fiq64b','2018-04-18 09:21:36','2018-04-18 09:21:36'),(864,'xn--fjq720a','2018-04-18 09:21:36','2018-04-18 09:21:36'),(865,'xn--flw351e','2018-04-18 09:21:36','2018-04-18 09:21:36'),(866,'xn--g2xx48c','2018-04-18 09:21:36','2018-04-18 09:21:36'),(867,'xn--gckr3f0f','2018-04-18 09:21:36','2018-04-18 09:21:36'),(868,'xn--gk3at1e','2018-04-18 09:21:37','2018-04-18 09:21:37'),(869,'xn--hdb9cza1b','2018-04-18 09:21:37','2018-04-18 09:21:37'),(870,'xn--hxt814e','2018-04-18 09:21:37','2018-04-18 09:21:37'),(871,'xn--i1b6b1a6a2e','2018-04-18 09:21:37','2018-04-18 09:21:37'),(872,'xn--imr513n','2018-04-18 09:21:37','2018-04-18 09:21:37'),(873,'xn--io0a7i','2018-04-18 09:21:37','2018-04-18 09:21:37'),(874,'xn--j1aef','2018-04-18 09:21:37','2018-04-18 09:21:37'),(875,'xn--jlq480n2rg','2018-04-18 09:21:37','2018-04-18 09:21:37'),(876,'xn--jlq61u9w7b','2018-04-18 09:21:37','2018-04-18 09:21:37'),(877,'xn--jvr189m','2018-04-18 09:21:37','2018-04-18 09:21:37'),(878,'xn--kpu716f','2018-04-18 09:21:37','2018-04-18 09:21:37'),(879,'xn--kput3i','2018-04-18 09:21:37','2018-04-18 09:21:37'),(880,'xn--mgba3a3ejt','2018-04-18 09:21:37','2018-04-18 09:21:37'),(881,'xn--mgbaakc7dvf','2018-04-18 09:21:37','2018-04-18 09:21:37'),(882,'xn--mgbab2bd','2018-04-18 09:21:37','2018-04-18 09:21:37'),(883,'xn--mgbb9fbpob','2018-04-18 09:21:37','2018-04-18 09:21:37'),(884,'xn--mgbca7dzdo','2018-04-18 09:21:37','2018-04-18 09:21:37'),(885,'xn--mgbi4ecexp','2018-04-18 09:21:37','2018-04-18 09:21:37'),(886,'xn--mgbt3dhd','2018-04-18 09:21:37','2018-04-18 09:21:37'),(887,'xn--mgbv6cfpo','2018-04-18 09:21:37','2018-04-18 09:21:37'),(888,'xn--mk1bu44c','2018-04-18 09:21:37','2018-04-18 09:21:37'),(889,'xn--mxtq1m','2018-04-18 09:21:37','2018-04-18 09:21:37'),(890,'xn--ngbc5azd','2018-04-18 09:21:37','2018-04-18 09:21:37'),(891,'xn--ngbe9e0a','2018-04-18 09:21:37','2018-04-18 09:21:37'),(892,'xn--ngbrx','2018-04-18 09:21:37','2018-04-18 09:21:37'),(893,'xn--nqv7f','2018-04-18 09:21:37','2018-04-18 09:21:37'),(894,'xn--nyqy26a','2018-04-18 09:21:37','2018-04-18 09:21:37'),(895,'xn--otu796d','2018-04-18 09:21:37','2018-04-18 09:21:37'),(896,'xn--p1acf','2018-04-18 09:21:37','2018-04-18 09:21:37'),(897,'xn--pbt977c','2018-04-18 09:21:37','2018-04-18 09:21:37'),(898,'xn--pgb3ceoj','2018-04-18 09:21:37','2018-04-18 09:21:37'),(899,'xn--pssy2u','2018-04-18 09:21:37','2018-04-18 09:21:37'),(900,'xn--q9jyb4c','2018-04-18 09:21:37','2018-04-18 09:21:37'),(901,'xn--qcka1pmc','2018-04-18 09:21:37','2018-04-18 09:21:37'),(902,'xn--rhqv96g','2018-04-18 09:21:37','2018-04-18 09:21:37'),(903,'xn--rovu88b','2018-04-18 09:21:37','2018-04-18 09:21:37'),(904,'xn--ses554g','2018-04-18 09:21:37','2018-04-18 09:21:37'),(905,'xn--t60b56a','2018-04-18 09:21:37','2018-04-18 09:21:37'),(906,'xn--tckwe','2018-04-18 09:21:37','2018-04-18 09:21:37'),(907,'xn--tiq49xqyj','2018-04-18 09:21:37','2018-04-18 09:21:37'),(908,'xn--unup4y','2018-04-18 09:21:37','2018-04-18 09:21:37'),(909,'xn--vhquv','2018-04-18 09:21:37','2018-04-18 09:21:37'),(910,'xn--vuq861b','2018-04-18 09:21:37','2018-04-18 09:21:37'),(911,'xn--w4rs40l','2018-04-18 09:21:37','2018-04-18 09:21:37'),(912,'xn--xhq521b','2018-04-18 09:21:37','2018-04-18 09:21:37'),(913,'xn--zfr164b','2018-04-18 09:21:37','2018-04-18 09:21:37'),(914,'xxx','2018-04-18 09:21:37','2018-04-18 09:21:37'),(915,'xyz','2018-04-18 09:21:37','2018-04-18 09:21:37'),(916,'xz.cn','2018-04-18 09:21:37','2018-04-18 09:21:37'),(917,'yachts','2018-04-18 09:21:37','2018-04-18 09:21:37'),(918,'yk.ca','2018-04-18 09:21:37','2018-04-18 09:21:37'),(919,'yoga','2018-04-18 09:21:37','2018-04-18 09:21:37'),(920,'yokohama','2018-04-18 09:21:37','2018-04-18 09:21:37'),(921,'you','2018-04-18 09:21:37','2018-04-18 09:21:37'),(922,'za.com','2018-04-18 09:21:37','2018-04-18 09:21:37'),(923,'zip','2018-04-18 09:21:37','2018-04-18 09:21:37'),(924,'zone','2018-04-18 09:21:37','2018-04-18 09:21:37'),(925,'zuerich','2018-04-18 09:21:37','2018-04-18 09:21:37'),(926,'zulu','2018-04-18 09:21:37','2018-04-18 09:21:37'),(927,'gr','2018-04-18 09:21:42','2018-04-18 09:21:42'),(928,'com.br','2018-04-18 09:21:42','2018-04-18 09:21:42'),(929,'net.br','2018-04-18 09:21:42','2018-04-18 09:21:42'),(930,'co.za','2018-04-18 09:21:42','2018-04-18 09:21:42'),(931,'org.za','2018-04-18 09:21:42','2018-04-18 09:21:42'),(932,'web.za','2018-04-18 09:21:42','2018-04-18 09:21:42'),(933,'alt.za','2018-04-18 09:21:42','2018-04-18 09:21:42'),(934,'net.za','2018-04-18 09:21:42','2018-04-18 09:21:42'),(935,'pt','2018-04-18 09:21:43','2018-04-18 09:21:43'),(936,'com.pt','2018-04-18 09:21:43','2018-04-18 09:21:43'),(937,'edu.pt','2018-04-18 09:21:43','2018-04-18 09:21:43');
/*!40000 ALTER TABLE `tbltlds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltodolist`
--

DROP TABLE IF EXISTS `tbltodolist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltodolist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(10) NOT NULL DEFAULT '0',
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `duedate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `duedate` (`duedate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltodolist`
--

LOCK TABLES `tbltodolist` WRITE;
/*!40000 ALTER TABLE `tbltodolist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltodolist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltransaction_history`
--

DROP TABLE IF EXISTS `tbltransaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltransaction_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `gateway` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remote_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `additional_information` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `currency_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltransaction_history`
--

LOCK TABLES `tbltransaction_history` WRITE;
/*!40000 ALTER TABLE `tbltransaction_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltransaction_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltransientdata`
--

DROP TABLE IF EXISTS `tbltransientdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltransientdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `expires` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(255))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltransientdata`
--

LOCK TABLES `tbltransientdata` WRITE;
/*!40000 ALTER TABLE `tbltransientdata` DISABLE KEYS */;
INSERT INTO `tbltransientdata` VALUES (1,'RewriteBackup','[{\"before\":[],\"whmcs\":[],\"after\":[]}]',1658742565),(2,'cronComplete','1',1628070565),(3,'WHMCS\\Language\\ClientLanguageLocales','{\"hash\":\"1a5852cff3a5895f4137334d4a3d1b93\",\"locales\":[{\"locale\":\"ar_AR\",\"language\":\"arabic\",\"languageCode\":\"ar\",\"countryCode\":\"AR\",\"localisedName\":\"\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629\"},{\"locale\":\"az_AZ\",\"language\":\"azerbaijani\",\"languageCode\":\"az\",\"countryCode\":\"AZ\",\"localisedName\":\"Azerbaijani\"},{\"locale\":\"ca_AD\",\"language\":\"catalan\",\"languageCode\":\"ca\",\"countryCode\":\"AD\",\"localisedName\":\"Catal\\u00e0\"},{\"locale\":\"zh_TW\",\"language\":\"chinese\",\"languageCode\":\"zh\",\"countryCode\":\"TW\",\"localisedName\":\"\\u4e2d\\u6587\"},{\"locale\":\"hr_HR\",\"language\":\"croatian\",\"languageCode\":\"hr\",\"countryCode\":\"HR\",\"localisedName\":\"Hrvatski\"},{\"locale\":\"cs_CZ\",\"language\":\"czech\",\"languageCode\":\"cs\",\"countryCode\":\"CZ\",\"localisedName\":\"\\u010ce\\u0161tina\"},{\"locale\":\"da_DK\",\"language\":\"danish\",\"languageCode\":\"da\",\"countryCode\":\"DK\",\"localisedName\":\"Dansk\"},{\"locale\":\"nl_NL\",\"language\":\"dutch\",\"languageCode\":\"nl\",\"countryCode\":\"NL\",\"localisedName\":\"Nederlands\"},{\"locale\":\"en_GB\",\"language\":\"english\",\"languageCode\":\"en\",\"countryCode\":\"GB\",\"localisedName\":\"English\"},{\"locale\":\"et_EE\",\"language\":\"estonian\",\"languageCode\":\"et\",\"countryCode\":\"EE\",\"localisedName\":\"Estonian\"},{\"locale\":\"fa_IR\",\"language\":\"farsi\",\"languageCode\":\"fa\",\"countryCode\":\"IR\",\"localisedName\":\"Persian\"},{\"locale\":\"fr_FR\",\"language\":\"french\",\"languageCode\":\"fr\",\"countryCode\":\"FR\",\"localisedName\":\"Fran\\u00e7ais\"},{\"locale\":\"de_DE\",\"language\":\"german\",\"languageCode\":\"de\",\"countryCode\":\"DE\",\"localisedName\":\"Deutsch\"},{\"locale\":\"he_IL\",\"language\":\"hebrew\",\"languageCode\":\"he\",\"countryCode\":\"IL\",\"localisedName\":\"\\u05e2\\u05d1\\u05e8\\u05d9\\u05ea\"},{\"locale\":\"hu_HU\",\"language\":\"hungarian\",\"languageCode\":\"hu\",\"countryCode\":\"HU\",\"localisedName\":\"Magyar\"},{\"locale\":\"it_IT\",\"language\":\"italian\",\"languageCode\":\"it\",\"countryCode\":\"IT\",\"localisedName\":\"Italiano\"},{\"locale\":\"mk_MK\",\"language\":\"macedonian\",\"languageCode\":\"mk\",\"countryCode\":\"MK\",\"localisedName\":\"Macedonian\"},{\"locale\":\"no_NO\",\"language\":\"norwegian\",\"languageCode\":\"no\",\"countryCode\":\"NO\",\"localisedName\":\"Norwegian\"},{\"locale\":\"pt_BR\",\"language\":\"portuguese-br\",\"languageCode\":\"pt\",\"countryCode\":\"BR\",\"localisedName\":\"Portugu\\u00eas\"},{\"locale\":\"pt_PT\",\"language\":\"portuguese-pt\",\"languageCode\":\"pt\",\"countryCode\":\"PT\",\"localisedName\":\"Portugu\\u00eas\"},{\"locale\":\"ro_RO\",\"language\":\"romanian\",\"languageCode\":\"ro\",\"countryCode\":\"RO\",\"localisedName\":\"Rom\\u00e2n\\u0103\"},{\"locale\":\"ru_RU\",\"language\":\"russian\",\"languageCode\":\"ru\",\"countryCode\":\"RU\",\"localisedName\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\"},{\"locale\":\"es_ES\",\"language\":\"spanish\",\"languageCode\":\"es\",\"countryCode\":\"ES\",\"localisedName\":\"Espa\\u00f1ol\"},{\"locale\":\"sv_SE\",\"language\":\"swedish\",\"languageCode\":\"sv\",\"countryCode\":\"SE\",\"localisedName\":\"Svenska\"},{\"locale\":\"tr_TR\",\"language\":\"turkish\",\"languageCode\":\"tr\",\"countryCode\":\"TR\",\"localisedName\":\"T\\u00fcrk\\u00e7e\"},{\"locale\":\"uk_UA\",\"language\":\"ukranian\",\"languageCode\":\"uk\",\"countryCode\":\"UA\",\"localisedName\":\"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430\"}]}',1628070705),(4,'WHMCS\\Language\\AdminLanguageLocales','{\"hash\":\"970fe64adcf9422b37d3349731b9c332\",\"locales\":[{\"locale\":\"ar_AR\",\"language\":\"arabic\",\"languageCode\":\"ar\",\"countryCode\":\"AR\",\"localisedName\":\"\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629\"},{\"locale\":\"cs_CZ\",\"language\":\"czech\",\"languageCode\":\"cs\",\"countryCode\":\"CZ\",\"localisedName\":\"\\u010ce\\u0161tina\"},{\"locale\":\"nl_NL\",\"language\":\"dutch\",\"languageCode\":\"nl\",\"countryCode\":\"NL\",\"localisedName\":\"Nederlands\"},{\"locale\":\"en_GB\",\"language\":\"english\",\"languageCode\":\"en\",\"countryCode\":\"GB\",\"localisedName\":\"English\"},{\"locale\":\"fa_IR\",\"language\":\"farsi\",\"languageCode\":\"fa\",\"countryCode\":\"IR\",\"localisedName\":\"Persian\"},{\"locale\":\"fr_FR\",\"language\":\"french\",\"languageCode\":\"fr\",\"countryCode\":\"FR\",\"localisedName\":\"Fran\\u00e7ais\"},{\"locale\":\"he_IL\",\"language\":\"hebrew\",\"languageCode\":\"he\",\"countryCode\":\"IL\",\"localisedName\":\"\\u05e2\\u05d1\\u05e8\\u05d9\\u05ea\"},{\"locale\":\"hu_HU\",\"language\":\"hungarian\",\"languageCode\":\"hu\",\"countryCode\":\"HU\",\"localisedName\":\"Magyar\"},{\"locale\":\"it_IT\",\"language\":\"italian\",\"languageCode\":\"it\",\"countryCode\":\"IT\",\"localisedName\":\"Italiano\"},{\"locale\":\"pt_BR\",\"language\":\"portugues-br\",\"languageCode\":\"pt\",\"countryCode\":\"BR\",\"localisedName\":\"Portugu\\u00eas\"},{\"locale\":\"pt_PT\",\"language\":\"portugues\",\"languageCode\":\"pt\",\"countryCode\":\"PT\",\"localisedName\":\"Portugu\\u00eas\"},{\"locale\":\"ru_RU\",\"language\":\"russian\",\"languageCode\":\"ru\",\"countryCode\":\"RU\",\"localisedName\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\"},{\"locale\":\"es_ES\",\"language\":\"spanish\",\"languageCode\":\"es\",\"countryCode\":\"ES\",\"localisedName\":\"Espa\\u00f1ol\"},{\"locale\":\"tr_TR\",\"language\":\"turkish\",\"languageCode\":\"tr\",\"countryCode\":\"TR\",\"localisedName\":\"T\\u00fcrk\\u00e7e\"}]}',1628070725),(5,'DatePickerVars_english','{\"today\":\"2021-08-03\",\"minYear\":2000,\"maxYear\":2060,\"dateRangeFormat\":\"DD\\/MM\\/YYYY\",\"dateTimeRangeFormat\":\"DD\\/MM\\/YYYY HH:mm\",\"dateRangePicker\":{\"months\":[\"January\",\"February\",\"March\",\"April\",\"May\",\"June\",\"July\",\"August\",\"September\",\"October\",\"November\",\"December\"],\"daysOfWeek\":[\"Su\",\"Mo\",\"Tu\",\"We\",\"Th\",\"Fr\",\"Sa\"],\"cancelLabel\":\"Clear\",\"applyLabel\":\"Apply\",\"customRangeLabel\":\"Custom\",\"defaultRanges\":{\"Today\":[\"03\\/08\\/2021 00:00\",\"03\\/08\\/2021 00:00\"],\"Yesterday\":[\"02\\/08\\/2021 00:00\",\"02\\/08\\/2021 00:00\"],\"Last 7 Days\":[\"28\\/07\\/2021 00:00\",\"03\\/08\\/2021 00:00\"],\"Last 30 Days\":[\"05\\/07\\/2021 00:00\",\"03\\/08\\/2021 00:00\"],\"This Month\":[\"01\\/08\\/2021 00:00\",\"31\\/08\\/2021 23:59\"],\"Last Month\":[\"01\\/07\\/2021 00:00\",\"31\\/07\\/2021 23:59\"],\"This Year\":[\"01\\/01\\/2021 00:00\",\"31\\/12\\/2021 23:59\"],\"Last Year\":[\"01\\/01\\/2020 00:00\",\"31\\/12\\/2020 23:59\"]},\"futureRanges\":{\"Today\":[\"03\\/08\\/2021 00:00\",\"03\\/08\\/2021 00:00\"],\"Tomorrow\":[\"04\\/08\\/2021 00:00\",\"04\\/08\\/2021 00:00\"],\"Next 7 Days\":[\"09\\/08\\/2021 00:00\",\"03\\/08\\/2021 00:00\"],\"Next 30 Days\":[\"01\\/09\\/2021 00:00\",\"03\\/08\\/2021 00:00\"],\"This Month\":[\"01\\/08\\/2021 00:00\",\"31\\/08\\/2021 23:59\"],\"Next Month\":[\"01\\/09\\/2021 00:00\",\"30\\/09\\/2021 23:59\"],\"This Year\":[\"01\\/01\\/2021 00:00\",\"31\\/12\\/2021 23:59\"]},\"futureRangesTime\":{\"Today\":[\"03\\/08\\/2021 00:00\",\"03\\/08\\/2021 23:59\"],\"Tomorrow\":[\"04\\/08\\/2021 00:00\",\"04\\/08\\/2021 23:59\"],\"Next 7 Days\":[\"09\\/08\\/2021 00:00\",\"03\\/08\\/2021 23:59\"],\"Next 30 Days\":[\"01\\/09\\/2021 00:00\",\"03\\/08\\/2021 23:59\"],\"This Month\":[\"01\\/08\\/2021 00:00\",\"31\\/08\\/2021 23:59\"],\"Next Month\":[\"01\\/09\\/2021 00:00\",\"30\\/09\\/2021 23:59\"],\"This Year\":[\"01\\/01\\/2021 00:00\",\"31\\/12\\/2021 23:59\"]},\"defaultSingleRanges\":{\"Today\":[\"03\\/08\\/2021 23:59\",\"03\\/08\\/2021 23:59\"],\"Yesterday\":[\"02\\/08\\/2021 23:59\",\"02\\/08\\/2021 23:59\"],\"7 Days Ago\":[\"27\\/07\\/2021 23:59\",\"27\\/07\\/2021 23:59\"],\"One Month Ago\":[\"03\\/07\\/2021 23:59\",\"03\\/07\\/2021 23:59\"],\"One Year Ago\":[\"03\\/08\\/2020 23:59\",\"03\\/08\\/2020 23:59\"]},\"futureSingleRanges\":{\"Today\":[\"03\\/08\\/2021 23:59\",\"03\\/08\\/2021 23:59\"],\"Tomorrow\":[\"04\\/08\\/2021 23:59\",\"04\\/08\\/2021 23:59\"],\"In 7 Days\":[\"10\\/08\\/2021 23:59\",\"10\\/08\\/2021 23:59\"],\"Next Month\":[\"03\\/09\\/2021 23:59\",\"03\\/09\\/2021 23:59\"],\"Next Year\":[\"03\\/08\\/2022 23:59\",\"03\\/08\\/2022 23:59\"]},\"futureTimeSingleRanges\":{\"Today\":[\"03\\/08\\/2021 00:00\",\"03\\/08\\/2021 00:00\"],\"Tomorrow\":[\"04\\/08\\/2021 00:00\",\"04\\/08\\/2021 00:00\"],\"In 7 Days\":[\"10\\/08\\/2021 00:00\",\"10\\/08\\/2021 00:00\"],\"Next Month\":[\"03\\/09\\/2021 00:00\",\"03\\/09\\/2021 00:00\"],\"Next Year\":[\"03\\/08\\/2022 00:00\",\"03\\/08\\/2022 00:00\"]}}}',1628070726),(6,'widget.Badges','{\"pendingOrders\":0,\"ticketsAwaitingReply\":0,\"cancellations\":0,\"moduleQueueCount\":0}',1627984445),(7,'widget.Automation','{\"result\":\"success\",\"currentDatetime\":\"2021-08-03 10:52:05\",\"lastDailyCronInvocationTime\":null,\"startdate\":\"2021-07-27 00:00:00\",\"enddate\":\"2021-08-03 23:59:59\",\"statistics\":[]}',1627987925),(8,'widget.Support:1','{\"tickets\":{\"counts\":{\"result\":\"success\",\"filteredDepartments\":[],\"allActive\":0,\"awaitingReply\":0,\"flaggedTickets\":0},\"recent\":[]}}',1627984445),(9,'widget.Billing','{\"income\":{\"today\":\"$0.00\",\"thismonth\":\"$0.00\",\"thisyear\":\"$0.00\",\"alltime\":\"$0.00\"}}',1627987925),(10,'widget.MarketConnect','{\"isConfigured\":false,\"activeServices\":[]}',1627984685),(11,'widget.Staff','[{\"id\":1,\"adminusername\":\"mind\",\"logintime\":\"2021-08-03 10:52:05\",\"logouttime\":\"0000-00-00 00:00:00\",\"ipaddress\":\"172.25.0.1\",\"sessionid\":\"4h25s8cs5s5kfpuh5vee44gqmq\",\"lastvisit\":\"2021-08-03 10:52:05\",\"admin\":{\"id\":1,\"uuid\":\"9f1c9019-3496-457f-a482-a63cfc5647d1\",\"roleid\":1,\"username\":\"mind\",\"authmodule\":\"\",\"firstname\":\"mind\",\"lastname\":\"mind\",\"email\":\"mind@mind.mind\",\"signature\":\"\",\"notes\":\"Welcome to WHMCS!  Please ensure you have setup the cron job to automate tasks\",\"template\":\"blend\",\"language\":\"\",\"disabled\":0,\"loginattempts\":0,\"supportdepts\":\",\",\"ticketnotifications\":\"\",\"homewidgets\":\"getting_started:true,orders_overview:true,supporttickets_overview:true,my_notes:true,client_activity:true,open_invoices:true,activity_log:true|income_overview:true,system_overview:true,whmcs_news:true,sysinfo:true,admin_activity:true,todo_list:true,network_status:true,income_forecast:true|\",\"hidden_widgets\":\"\",\"widget_order\":\"\",\"created_at\":\"0000-00-00 00:00:00\",\"updated_at\":\"0000-00-00 00:00:00\",\"fullName\":\"mind mind\",\"gravatarHash\":\"7d7572af40edcfa3a8cc6778e9de5c1a\"}}]',1627984385),(12,'widget.ClientActivity','{\"activeCount\":0,\"onlineCount\":0,\"recentActiveClients\":[]}',1627984625),(13,'widget.NetworkStatus','{\"result\":\"success\",\"servers\":[],\"fetchStatus\":\"\"}',1627987925),(14,'widget.Health','{\"result\":\"success\",\"checks\":{\"success\":[{\"name\":\"version\",\"type\":\"WHMCS\",\"severityLevel\":\"notice\",\"body\":\"You are up to date!\"},{\"name\":\"cron\",\"type\":\"WHMCS\",\"severityLevel\":\"notice\",\"body\":\"<p>The system cron has completed successfully within the last 24 hours.<\\/p>\"},{\"name\":\"errorDisplay\",\"type\":\"PHP\",\"severityLevel\":\"notice\",\"body\":\"Your system is not currently set to display errors.\"},{\"name\":\"errorLevels\",\"type\":\"PHP\",\"severityLevel\":\"notice\",\"body\":\"Your system is setup to not log unnecessary error levels.\"},{\"name\":\"requiredPhpExtensions\",\"type\":\"PHP\",\"severityLevel\":\"notice\",\"body\":\"<p>Your PHP installation has all extensions loaded and enabled required for WHMCS to operate.<\\/p>\"},{\"name\":\"phpMemoryLimit\",\"type\":\"PHP\",\"severityLevel\":\"notice\",\"body\":\"Your PHP memory_limit value <strong>512M<\\/strong> meets the recommended value of 128M.\"},{\"name\":\"sessionSupport\",\"type\":\"PHP\",\"severityLevel\":\"notice\",\"body\":\"<p>PHP session support is enabled.<\\/p><p>Session autostart is disabled.<\\/p><p>The PHP session save path <strong>\\/var\\/lib\\/php\\/sessions<\\/strong> is writable. <\\/p>\"},{\"name\":\"phpSettings\",\"type\":\"PHP\",\"severityLevel\":\"notice\",\"body\":\"Your PHP environment uses a valid timezone.\"},{\"name\":\"installedCurlVersion\",\"type\":\"PHP\",\"severityLevel\":\"notice\",\"body\":\"You currently have version <strong>7.58.0<\\/strong> of cURL installed. This version uses a secure cipher list.\"},{\"name\":\"curlSSL\",\"type\":\"WHMCS\",\"severityLevel\":\"notice\",\"body\":\"<p>cURL reports that it does support SSL<\\/p>\"},{\"name\":\"curlSecureTLS\",\"type\":\"WHMCS\",\"severityLevel\":\"notice\",\"body\":\"<p>cURL reports that it does support Secure TLS 1.1 and 1.2<\\/p>\"},{\"name\":\"dbVersion\",\"type\":\"DB\",\"severityLevel\":\"notice\",\"body\":\"You are running MySQL version 5.7.29. This version supports all features required for full compatibility with WHMCS.\"},{\"name\":\"requiredPhpFunctions\",\"type\":\"PHP\",\"severityLevel\":\"notice\",\"body\":\"<p>Your PHP installation has all required functions enabled for WHMCS to operate.<\\/p>\"}],\"warning\":[{\"name\":\"siteSslSupport\",\"type\":\"HTTP\",\"severityLevel\":\"warning\",\"body\":\"SSL is not configured for , which means that connections are not encrypted and passwords may be sent in plaintext.  This will prevent some features, such as OpenID Connect, from functioning.  This may also affect your ability to receive PCI or other accreditation. <a class=\\\"autoLinked\\\" href=\\\"https:\\/\\/go.whmcs.com\\/1341\\/get-ssl-certificate\\\">Purchase an SSL Certificate here.<\\/a>\"},{\"name\":\"recommendedPhpExtensions\",\"type\":\"PHP\",\"severityLevel\":\"warning\",\"body\":\"<p>The following PHP extensions are recommended for best performance and trouble free operation. While optional for core WHMCS functionality, certain modules and addons may require them to fully function as intended:<\\/p><ul><li><strong>xmlrpc<\\/strong><\\/li><\\/ul><p>Please review the current <a href=\\\"https:\\/\\/docs.whmcs.com\\/System_Requirements\\\">system recommendations<\\/a> and search our documentation for the specific modules you use to learn more.<\\/p>\"},{\"name\":\"CheckUpdaterRequirements\",\"type\":\"WHMCS\",\"severityLevel\":\"warning\",\"body\":\"<ul><li>Automatic Updates require a writeable directory for staging files during an update. You must provide a directory via the Updater Configuration before you can update.<\\/li><\\/ul>\"},{\"name\":\"checkCustomFields\",\"type\":\"WHMCS\",\"severityLevel\":\"warning\",\"body\":\"<p>Customising the default directory paths for some parts of WHMCS makes it more difficult for malicious users to find them. Your installation is currently using the following default paths:<\\/p><ul><li><strong>downloads<\\/strong><\\/li><li><strong>attachments<\\/strong><\\/li><\\/ul><p>Please refer to our <a href=\\\"https:\\/\\/docs.whmcs.com\\/Further_Security_Steps\\\">Further Security Steps<\\/a> for information on how to change these.<\\/p>\"},{\"name\":\"usingCustomTemplates\",\"type\":\"WHMCS\",\"severityLevel\":\"warning\",\"body\":\"<p>We have detected that your WHMCS installation is currently using the default template names for one or more of the active templates. If you have made any customisations, we strongly recommend creating a custom template directory to avoid losing your customisations the next time you upgrade.<br \\/><br \\/>You are currently using a default template in the following locations:<\\/p><ul><li><strong>Cart<\\/strong><\\/li><li><strong>Client Area<\\/strong><\\/li><\\/ul><p>Please review our <a href=\\\"https:\\/\\/docs.whmcs.com\\/Client_Area_Template_Files#Creating_a_Custom_Template\\\">documentation<\\/a> on making a custom theme for help doing this.<\\/p>\"}],\"danger\":[{\"name\":\"permissionCheck\",\"type\":\"WHMCS\",\"severityLevel\":\"error\",\"body\":\"<p>Your configuration file is writable. This can be a security risk. We recommend setting the permissions to read only.<\\/p><style> .trimmed-dir-list li { text-decoration: underline dashed; } <\\/style><p>The following directories are owned by a different user from that which is executing WHMCS. This indicates a potentially insecure configuration:<\\/p><ul class=\\\"trimmed-dir-list\\\"><li title=\\\"\\/var\\/www\\/html\\/templates_c\\\">templates_c<\\/li><li title=\\\"\\/var\\/www\\/html\\/crons\\\">crons<\\/li><li title=\\\"\\/var\\/www\\/html\\/downloads\\\">downloads<\\/li><li title=\\\"\\/var\\/www\\/html\\/attachments\\\">attachments<\\/li><\\/ul>You can learn more about this in our <a href=\\\"https:\\/\\/docs.whmcs.com\\/Further_Security_Steps#Secure_the_Writeable_Directories\\\">documentation<\\/a>.\"},{\"name\":\"phpVersion\",\"type\":\"PHP\",\"severityLevel\":\"error\",\"body\":\"<p>Your PHP version <strong>7.2.34-18+ubuntu18.04.1+deb.sury.org+1<\\/strong> is supported by WHMCS. <\\/p><p>The PHP 7.2 branch has reached end of life status and will not receive critical bug or security fixes. Please see <a href=\\\"https:\\/\\/docs.whmcs.com\\/System_Environment_Guide#PHP_Version\\\">our documentation<\\/a> for more information.<\\/p>\"}]}}',1627987926),(15,'widget.Activity','{\"result\":\"success\",\"totalresults\":2,\"startnumber\":0,\"activity\":{\"entry\":[{\"id\":2,\"userid\":0,\"date\":\"2021-08-03 10:49:25\",\"description\":\"URI Path Management Setting &quot;Rewrite Auto Management&quot; Enabled\",\"username\":\"System\",\"ipaddress\":\"\"},{\"id\":1,\"userid\":0,\"date\":\"2021-08-03 10:49:25\",\"description\":\"Updated WHMCS Rewrite Rules: new rules applied.\",\"username\":\"System\",\"ipaddress\":\"\"}]}}',1627987926);
/*!40000 ALTER TABLE `tbltransientdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblupdatehistory`
--

DROP TABLE IF EXISTS `tblupdatehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblupdatehistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `original_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` tinyint(1) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblupdatehistory`
--

LOCK TABLES `tblupdatehistory` WRITE;
/*!40000 ALTER TABLE `tblupdatehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblupdatehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblupdatelog`
--

DROP TABLE IF EXISTS `tblupdatelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblupdatelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(10) unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `extra` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblupdatelog`
--

LOCK TABLES `tblupdatelog` WRITE;
/*!40000 ALTER TABLE `tblupdatelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblupdatelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblupgrades`
--

DROP TABLE IF EXISTS `tblupgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblupgrades` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderid` int(10) NOT NULL,
  `type` enum('service','addon','package','configoptions') COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `relid` int(10) NOT NULL,
  `originalvalue` text COLLATE utf8_unicode_ci NOT NULL,
  `newvalue` text COLLATE utf8_unicode_ci NOT NULL,
  `new_cycle` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `credit_amount` decimal(10,2) NOT NULL,
  `days_remaining` int(4) NOT NULL,
  `total_days_in_cycle` int(4) NOT NULL,
  `new_recurring_amount` decimal(10,2) NOT NULL,
  `recurringchange` decimal(10,2) NOT NULL,
  `status` enum('Pending','Completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `paid` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `serviceid` (`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblupgrades`
--

LOCK TABLES `tblupgrades` WRITE;
/*!40000 ALTER TABLE `tblupgrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblupgrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblwhoislog`
--

DROP TABLE IF EXISTS `tblwhoislog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblwhoislog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblwhoislog`
--

LOCK TABLES `tblwhoislog` WRITE;
/*!40000 ALTER TABLE `tblwhoislog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwhoislog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-03 11:57:20
