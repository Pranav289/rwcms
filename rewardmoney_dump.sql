-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: rewardmoney
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `action_type_master`
--

DROP TABLE IF EXISTS `action_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_type_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_type_master`
--

LOCK TABLES `action_type_master` WRITE;
/*!40000 ALTER TABLE `action_type_master` DISABLE KEYS */;
INSERT INTO `action_type_master` VALUES (1,'CPI'),(2,'CPL');
/*!40000 ALTER TABLE `action_type_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circlemaster`
--

DROP TABLE IF EXISTS `circlemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circlemaster` (
  `id` int(11) NOT NULL,
  `CircleName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circlemaster`
--

LOCK TABLES `circlemaster` WRITE;
/*!40000 ALTER TABLE `circlemaster` DISABLE KEYS */;
INSERT INTO `circlemaster` VALUES (1,'chennai'),(2,'delhi'),(3,'kolkata'),(4,'mumbai'),(26,'All');
/*!40000 ALTER TABLE `circlemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_master`
--

DROP TABLE IF EXISTS `login_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_ID` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `FLAG` varchar(25) NOT NULL DEFAULT 'test',
  PRIMARY KEY (`ID`),
  KEY `IDX_LOGIN_ID` (`LOGIN_ID`),
  KEY `IDX_PASSWORD` (`PASSWORD`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_master`
--

LOCK TABLES `login_master` WRITE;
/*!40000 ALTER TABLE `login_master` DISABLE KEYS */;
INSERT INTO `login_master` VALUES (1,'admin','admin','1');
/*!40000 ALTER TABLE `login_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operatormaster`
--

DROP TABLE IF EXISTS `operatormaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operatormaster` (
  `Id` int(11) NOT NULL,
  `OpName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operatormaster`
--

LOCK TABLES `operatormaster` WRITE;
/*!40000 ALTER TABLE `operatormaster` DISABLE KEYS */;
INSERT INTO `operatormaster` VALUES (1,'aircel'),(2,'airtel'),(3,'idea'),(4,'vodafone');
/*!40000 ALTER TABLE `operatormaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority_master`
--

DROP TABLE IF EXISTS `priority_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priority_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority_master`
--

LOCK TABLES `priority_master` WRITE;
/*!40000 ALTER TABLE `priority_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `priority_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_details`
--

DROP TABLE IF EXISTS `promotion_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROMOTION_ID` varchar(10) NOT NULL DEFAULT '',
  `APPID` varchar(10) NOT NULL,
  `APP_LINK` varchar(300) DEFAULT NULL,
  `BRAND` varchar(50) DEFAULT NULL,
  `OWNER` varchar(50) DEFAULT NULL,
  `REG_DATE` varchar(30) DEFAULT NULL,
  `APP_PRICE` varchar(10) DEFAULT NULL,
  `PROMOTION_PRICE` int(5) DEFAULT NULL,
  `VALIDITY` varchar(30) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `TRACKING_API` varchar(300) DEFAULT NULL,
  `LIMIT_COUNT` varchar(20) DEFAULT NULL,
  `owner_id` varchar(50) DEFAULT NULL,
  `RESERVE_FIELD1` varchar(100) DEFAULT NULL,
  `RESERVE_FIELD2` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(500) NOT NULL,
  `ACTION_TYPE` varchar(25) NOT NULL,
  `longdesc` varchar(800) DEFAULT NULL,
  `secondaryurl` varchar(15000) DEFAULT 'NA',
  `urlcount` varchar(10) DEFAULT '0',
  `urlflag` varchar(10) DEFAULT 'YES',
  `OFFER_DISPLAY_FLAG` varchar(10) DEFAULT 'YES',
  `TOTAL_PROMO_PRICE` varchar(10) DEFAULT '0',
  `PRICE_AFTER_TIME` varchar(10) DEFAULT '0',
  `MIDDLE_DESC` varchar(300) DEFAULT '',
  `POPUP_MSG` varchar(200) DEFAULT 'NA',
  `OPERATOR` varchar(300) DEFAULT NULL,
  `MORE_URL_FLAG` varchar(10) DEFAULT 'YES',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `APPID` (`APPID`),
  KEY `IDX_APP_PRICE` (`APP_PRICE`),
  KEY `IDX_BRAND` (`BRAND`),
  KEY `IDX_PROMOTION_ID` (`PROMOTION_ID`),
  KEY `IDX_APPID` (`APPID`),
  KEY `IDX_OWNER` (`OWNER`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_details`
--

LOCK TABLES `promotion_details` WRITE;
/*!40000 ALTER TABLE `promotion_details` DISABLE KEYS */;
INSERT INTO `promotion_details` VALUES (1,'0','1','http://track.appave.mobi/?aff_id=606750&offer_id=710308','Amazon','Admobly','2017-08-01 14:39:18','10',1,'2017-08-01','ON','http://43.254.42.237:8080/rewardmoney/trackapi','10','2','D:\\/amazon.jpg','26','Download Amazon','CPI','Open App atleast for 30 second.\r\nYou will get Reward Money if you never download this App from other sources.\r\nIt will take 5-10 Min. to update your RewardMoney Balance.','NA','0','YES','YES','10','9','Download Amazon','Download Amazon','ALL','YES'),(2,'1','2','http://mxpresso.go2cloud.org/aff_c?offer_id=7848&aff_id=1400','Flipkart','Icubes','2017-08-01 16:26:24','20',2,'2017-08-01','ON','http://43.254.42.237:8080/rewardmoney/trackapi','10','5','D:\\flipkart.GIF','26','Download Flipkart','CPL','Open App atleast for 30 second.\r\nYou will get Reward Money if you never download this App from other sources.\r\nIt will take 5-10 Min. to update your RewardMoney Balance.','NA','0','YES','YES','20','18','Download Flipkart','Download Flipkart','ALL','YES'),(3,'2','3','http://tracking.performancerevenues.com/aff_c?offer_id=255115&aff_id=10777','Myntra','Mxpresso','2017-08-01 16:34:15','15',2,'2017-08-01','ON','http://43.254.42.237:8080/rewardmoney/trackapi','10','1','D:\\myntra.jpg','26','Download Myntra','CPI','Open App atleast for 30 second.\r\nYou will get Reward Money if you never download this App from other sources.\r\nIt will take 5-10 Min. to update your RewardMoney Balance.','NA','0','YES','YES','15','13','Download Myntra','Download Myntra','ALL','YES'),(4,'3','4','https://ad.admitad.com/g/jnpj3gnt5t74e4c72dcf57c94811f3/?subid=%TRANSID%&type=CPL','PhonePe','Torqmo','2017-08-02 12:44:11','25',5,'2017-08-02','ON','http://43.254.42.237:8080/rewardmoney/trackapi','10','4','D:\\payzapp.png','26','Recharge Rs.50. immediately and Get','CPI','Open App atleast for 30 second.\r\nYou will get Reward Money if you never download this App from other sources.\r\nIt will take 5-10 Min. to update your RewardMoney Balance.','NA','0','YES','YES','20','15','Recharge Rs.50. immediately and Get','Recharge Rs.50. immediately and Get','ALL','YES');
/*!40000 ALTER TABLE `promotion_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_master`
--

DROP TABLE IF EXISTS `promotion_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_master` (
  `PROMOTION_ID` int(10) NOT NULL AUTO_INCREMENT,
  `APPID` varchar(10) NOT NULL,
  `BRAND` varchar(50) DEFAULT NULL,
  `PACKAGE_NAME` varchar(50) DEFAULT NULL,
  `APP_NAME` varchar(50) DEFAULT NULL,
  `APP_PRICE` varchar(10) DEFAULT NULL,
  `PROMOTION_PRICE` int(5) DEFAULT NULL,
  `PROMOTION_DATE` varchar(30) DEFAULT NULL,
  `PROMOTION_UPDATE` varchar(30) DEFAULT NULL,
  `PROMOTION_PUBLISH_DATE` varchar(30) DEFAULT NULL,
  `PROMOTION_UNPUBLISH_DATE` varchar(30) DEFAULT NULL,
  `FLAG` varchar(10) DEFAULT NULL,
  `PRIORITY` int(3) DEFAULT '0',
  `RESERVE_FIELD1` varchar(100) DEFAULT NULL,
  `RESERVE_FIELD2` varchar(100) DEFAULT NULL,
  `DEVICE_FLAG` varchar(5) DEFAULT 'OFF',
  `CITY` varchar(500) DEFAULT 'All',
  `DEVICE_NAME` varchar(50) DEFAULT 'All',
  PRIMARY KEY (`PROMOTION_ID`),
  UNIQUE KEY `APPID` (`APPID`),
  KEY `IDX_BRAND` (`BRAND`),
  KEY `IDX_APP_PRICE` (`APP_PRICE`),
  KEY `IDX_CIRCLE` (`RESERVE_FIELD2`),
  KEY `IDX_FLAG` (`FLAG`),
  KEY `IDX_APPID` (`APPID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_master`
--

LOCK TABLES `promotion_master` WRITE;
/*!40000 ALTER TABLE `promotion_master` DISABLE KEYS */;
INSERT INTO `promotion_master` VALUES (1,'1','Amazon','com.amazon','Amazon','10',1,'2017-08-01 14:39:12','','','','PUBLISH',1,'D:\\/amazon.jpg','26','OFF','All','All'),(2,'2','Flipkart','com.flipkart','Flipkart','20',2,'2017-08-01 16:26:24','','','','UNPUBLISH',2,'D:\\flipkart.GIF','26','OFF','All','All'),(3,'3','Myntra','com.myntra','Myntra','15',2,'2017-08-01 16:34:15','','','','UNPUBLISH',3,'D:\\myntra.jpg','26','OFF','All','All'),(4,'4','PhonePe','com.phonepe','PhonePe','25',5,'2017-08-02 12:44:10','','','','UNPUBLISH',5,'D:\\payzapp.png','26','OFF','All','All');
/*!40000 ALTER TABLE `promotion_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seriesmaster`
--

DROP TABLE IF EXISTS `seriesmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seriesmaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OpId` int(11) DEFAULT NULL,
  `CircleId` int(11) DEFAULT NULL,
  `Series` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Series` (`Series`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seriesmaster`
--

LOCK TABLES `seriesmaster` WRITE;
/*!40000 ALTER TABLE `seriesmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `seriesmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_detail_master`
--

DROP TABLE IF EXISTS `vendor_detail_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_detail_master` (
  `VENDOR_ID` int(11) NOT NULL,
  `VENDOR_NAME` varchar(100) NOT NULL,
  `VENDOR_STATUS` varchar(15) NOT NULL,
  `AFF_ID` varchar(25) NOT NULL,
  `RESERVE_FIELD` varchar(20) DEFAULT NULL,
  `RESERVE_FIELD1` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`VENDOR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_detail_master`
--

LOCK TABLES `vendor_detail_master` WRITE;
/*!40000 ALTER TABLE `vendor_detail_master` DISABLE KEYS */;
INSERT INTO `vendor_detail_master` VALUES (1,'Mxpresso','ACTIVE','1','2017-07-30 13:45:19','HasOffer'),(2,'Admobly','ACTIVE','2','2017-07-30 13:46:20','HasOffer'),(3,'Adatha','ACTIVE','3','2017-07-30 13:46:34','HasOffer'),(4,'Torqmo','ACTIVE','4','2017-07-30 13:46:48','Self'),(5,'Icubes','ACTIVE','5','2017-07-30 13:47:03','HasOffer');
/*!40000 ALTER TABLE `vendor_detail_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-02  7:40:31
