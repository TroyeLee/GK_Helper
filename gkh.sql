-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: gkh
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `addressID` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(64) DEFAULT NULL,
  `username` varchar(8) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `addressInfo` varchar(50) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`addressID`),
  KEY `userID` (`userID`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `h_user` (`userid`),
  CONSTRAINT `address_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `h_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (15,'opxE-5TdaSLx0zVUcIBE3tYsGNrA','李朝伟','13750111679','广东科技学院：南苑2-714',57),(16,'opxE-5TdaSLx0zVUcIBE3tYsGNrA','崔小欣','13085717536','广东科技学院：雅苑6栋',57),(37,NULL,'陈爽好','12345678999','广东科技学院：南苑2-716',58),(49,NULL,'黄菊了','12345687888','广东科技学院：南苑2-716',58),(56,NULL,'陈双号','13567898769','广东科技学院：南苑2栋716',58);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_helper`
--

DROP TABLE IF EXISTS `h_helper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `h_helper` (
  `userID` int(11) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `grade` varchar(4) DEFAULT NULL,
  `ID` varchar(18) DEFAULT NULL,
  `studentID` varchar(11) DEFAULT NULL,
  `dormitory` varchar(20) DEFAULT NULL,
  `studentCard` varchar(300) DEFAULT NULL,
  `orders_count` int(11) DEFAULT NULL,
  `reputation` int(11) DEFAULT NULL,
  `openid` varchar(64) NOT NULL,
  `realName` varchar(12) DEFAULT NULL,
  `h_password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_helper`
--

LOCK TABLES `h_helper` WRITE;
/*!40000 ALTER TABLE `h_helper` DISABLE KEYS */;
INSERT INTO `h_helper` VALUES (58,'13750111777','2016','456456789789456456','2016111111','南苑二栋714','/studentCard/58_eeed9263-ea6a-4a10-ab8d-82b57691ef17_????1.png',NULL,NULL,'58','陈述好','123'),(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'61',NULL,'iou13145201314'),(57,'123','123','123','123','123',NULL,NULL,NULL,'opxE-5TdaSLx0zVUcIBE3tYsGNrA','1234',NULL);
/*!40000 ALTER TABLE `h_helper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_user`
--

DROP TABLE IF EXISTS `h_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `h_user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(64) DEFAULT NULL,
  `weChatName` varchar(32) DEFAULT NULL,
  `realName` varchar(8) DEFAULT NULL,
  `head` varchar(200) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `userType` varchar(8) DEFAULT '普通用户',
  `gender` varchar(2) DEFAULT NULL,
  `h_password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_user`
--

LOCK TABLES `h_user` WRITE;
/*!40000 ALTER TABLE `h_user` DISABLE KEYS */;
INSERT INTO `h_user` VALUES (57,'opxE-5TdaSLx0zVUcIBE3tYsGNrA','李朝伟',NULL,'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKNAouyESZ399nM3iaHbWco00WYibiawd5Fic61dNz1iciby3nuQSzScwro2a9TdltSvuZjcpiaMpbZaHwUw/132','13750111679','跑腿员','1','1234'),(58,NULL,'123','123',NULL,'131','跑腿员','男','123'),(59,NULL,'昵称','姓名',NULL,'13752011675','普通用户','男','iou13145201314'),(60,NULL,'你抄为','李朝伟',NULL,'13751555649','普通用户','男','iou13145201314'),(61,NULL,'李小伟','李朝伟',NULL,'13750111678','跑腿员','男','iou13145201314');
/*!40000 ALTER TABLE `h_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_type`
--

DROP TABLE IF EXISTS `order_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_type` (
  `orderID` int(11) NOT NULL,
  `orderType` varchar(10) DEFAULT NULL,
  `type_info` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  CONSTRAINT `order_type_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders_info` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_type`
--

LOCK TABLES `order_type` WRITE;
/*!40000 ALTER TABLE `order_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_info`
--

DROP TABLE IF EXISTS `orders_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders_info` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `user_openid` varchar(64) DEFAULT NULL,
  `orderType` varchar(10) DEFAULT NULL,
  `orderStatus` varchar(6) DEFAULT '待接单',
  `takeAddress` varchar(50) DEFAULT NULL,
  `putAddress` varchar(50) DEFAULT NULL,
  `users_phone` varchar(11) DEFAULT NULL,
  `evidence1` varchar(300) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `orderTime` varchar(10) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `helper_openid` varchar(64) DEFAULT NULL,
  `settingTime` datetime DEFAULT NULL,
  `user_name` varchar(12) DEFAULT NULL,
  `evidence2` varchar(300) DEFAULT NULL,
  `evidence3` varchar(300) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `type_info` varchar(10) DEFAULT NULL,
  `helper_userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_info`
--

LOCK TABLES `orders_info` WRITE;
/*!40000 ALTER TABLE `orders_info` DISABLE KEYS */;
INSERT INTO `orders_info` VALUES (37,NULL,'帮买','待确定','1323','广东科技学院：南苑2-716','12345687888',NULL,1,NULL,'1',12,'13',NULL,NULL,'黄菊了',NULL,NULL,58,NULL,57),(38,NULL,'帮拿','进行中','南门菜鸟驿站','广东科技学院：南苑2-714','13750111679','/evidence/123123_d833e00b-cfe6-4450-aec1-214bad78a154_个人中心1.png',1,NULL,'1',10,'123123',NULL,'2018-12-21 06:02:48','李朝伟',NULL,NULL,57,'取快递',58),(39,NULL,'帮排','待接单','广东科技学院图书馆',NULL,'13750111679',NULL,0,NULL,'2',10,'等我来',NULL,'2018-12-21 06:05:36','李朝伟',NULL,NULL,57,'图书馆占座',NULL),(40,NULL,'帮拿','进行中','111','广东科技学院：南苑2-716','12345678999','/evidence/13123_ad4a372f-0dc9-4368-8317-dee81acf2931_个人中心1.png',1,NULL,'1',13,'13123',NULL,'2018-12-21 08:45:05','陈爽好',NULL,NULL,58,'取快递',57),(41,NULL,'帮拿','待接单','东门韵达','广东科技学院：南苑2-716','12345687888','/evidence/尽快_67f92065-f8bb-4b58-b8a7-058e71d81f7b_个人中心2.png',1,NULL,'1',3,'尽快',NULL,'2018-12-21 11:58:51','黄菊了',NULL,NULL,57,'取快递',NULL),(42,NULL,'帮排','待接单','台心医院',NULL,'12345687888',NULL,0,NULL,'1',10,'慢慢来',NULL,'2018-12-21 11:59:51','黄菊了',NULL,NULL,57,'医院排队',NULL),(43,NULL,'帮拿','待确定','东门韵达','南苑二栋714','13750111679','/evidence/尽快_112160a4-283f-4a9a-b0ef-8a5b17c32ded_个人中心2.png',1,NULL,'1',10,'尽快',NULL,'2018-12-21 18:05:15','李朝伟',NULL,NULL,61,'取快递',57),(44,NULL,'帮拿','待确定','东门韵达','广东科技学院：南苑2-714','13750111679','/evidence/尽快，轻拿轻放_22076c60-5f0f-4226-a91a-f86d6e8409e3_个人中心2.png',1,NULL,'1',10,'尽快，轻拿轻放',NULL,'2018-12-23 16:46:55','李朝伟',NULL,NULL,57,'取快递',58),(45,NULL,'帮买','待接单','广科学生服务部','广东科技学院：南苑2栋716','13567898769',NULL,0.5,NULL,'3',2,'薯片，牛奶',NULL,'2018-12-23 16:48:52','陈双号',NULL,NULL,58,NULL,NULL);
/*!40000 ALTER TABLE `orders_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gkh'
--

--
-- Dumping routines for database 'gkh'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 15:12:21
