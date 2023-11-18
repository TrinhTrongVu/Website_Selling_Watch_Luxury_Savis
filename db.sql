create database watch;
use watch;

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rdxh7tq2xs66r485cc8dkxt77` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'2021-08-22 13:49:38.447000',NULL,NULL,'Rolex',1,'/media/static/6f1de8cc-84cd-4da8-9e73-1b27bbf0058d.jpg'),(2,'2021-08-22 13:49:47.368000',NULL,NULL,'Patek Philippe',1,'/media/static/988dd7b0-5e8b-4707-a910-b9877970c071.png'),(3,'2021-08-22 13:49:56.351000',NULL,NULL,'Hublot',1,'/media/static/282930fb-ef57-407e-89b7-2cfdb5cf43a0.jpg'),(4,'2021-08-22 13:50:05.440000',NULL,NULL,'Franck Muller',1,'/media/static/b915dbe3-1aaa-4d3f-b14f-f716a3bad457.png');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:57

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `orders` int DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2021-08-22 13:48:57.568000','2023-10-31 14:45:41.148000','Đồng hồ nam',0,'dong-ho-nam',1),(2,'2021-08-22 13:49:02.889000','2023-10-31 14:46:01.535000','Đồng hồ nữ',0,'dong-ho-nu',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text,
  `created_at` datetime(6) DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  KEY `FKm1rmnfcvq5mk26li4lit88pc5` (`product_id`),
  KEY `FKqm52p1v3o13hy268he0wcngr5` (`user_id`),
  CONSTRAINT `FKm1rmnfcvq5mk26li4lit88pc5` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKqm52p1v3o13hy268he0wcngr5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Sản phẩm chất lượng, sẽ ủng hộ shop dài dài','2021-08-22 14:10:18.348000',NULL,'u2aJZe',2);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4mgw71qgyeud96uf8kgiu9fsw` (`link`),
  KEY `FKp1m9f9rm7xy8nk7a820dvh6c4` (`created_by`),
  CONSTRAINT `FKp1m9f9rm7xy8nk7a820dvh6c4` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES ('023a3e13-30da-4957-8766-dcf701afc4d9','2023-10-31 15:42:59.916000','/media/static/023a3e13-30da-4957-8766-dcf701afc4d9.jpg','file',1229662,'jpg',1),('04d503ff-8104-414e-9189-64a3006b5dd4','2023-10-31 15:49:43.489000','/media/static/04d503ff-8104-414e-9189-64a3006b5dd4.jpg','file',220391,'jpg',1),('08cbe71a-fa1b-4934-9340-f4e3d6a93208','2023-10-31 15:46:03.906000','/media/static/08cbe71a-fa1b-4934-9340-f4e3d6a93208.jpg','file',961082,'jpg',1),('149dc9b1-a46a-4523-873c-4961e9e2eff8','2023-10-31 15:27:02.313000','/media/static/149dc9b1-a46a-4523-873c-4961e9e2eff8.jpg','file',610308,'jpg',1),('1aedae91-e2fb-43f4-8839-3516eab566fd','2023-10-31 15:52:03.380000','/media/static/1aedae91-e2fb-43f4-8839-3516eab566fd.png','file',667570,'png',1),('1f39ff45-4f40-4082-9af0-a48a7222c62b','2023-10-31 15:57:17.280000','/media/static/1f39ff45-4f40-4082-9af0-a48a7222c62b.jpg','file',84823,'jpg',1),('247e91ae-692d-4b64-a104-76c5cf1c14c1','2023-10-31 15:56:58.541000','/media/static/247e91ae-692d-4b64-a104-76c5cf1c14c1.png','file',398135,'png',1),('282930fb-ef57-407e-89b7-2cfdb5cf43a0','2021-08-22 13:49:34.935000','/media/static/282930fb-ef57-407e-89b7-2cfdb5cf43a0.jpg','file',37903,'jpg',1),('2e963fec-830c-4a7d-8f7d-661c1a28aa2a','2023-10-31 15:39:28.843000','/media/static/2e963fec-830c-4a7d-8f7d-661c1a28aa2a.jpg','file',103536,'jpg',1),('2eed5cbc-eb9c-4ea2-b90e-6b0e4eee3dde','2023-10-31 15:33:02.146000','/media/static/2eed5cbc-eb9c-4ea2-b90e-6b0e4eee3dde.png','file',300627,'png',1),('4033863d-3688-4bab-9528-06cc8934a54e','2023-10-31 15:59:59.554000','/media/static/4033863d-3688-4bab-9528-06cc8934a54e.jpg','file',1351540,'jpg',1),('47545964-ad04-4c82-b684-39171ec5c6d0','2023-10-31 15:33:16.080000','/media/static/47545964-ad04-4c82-b684-39171ec5c6d0.png','file',1667894,'png',1),('5f89462c-894c-4d48-ab05-a277f9fa9a9f','2023-10-31 15:03:51.431000','/media/static/5f89462c-894c-4d48-ab05-a277f9fa9a9f.png','file',1254909,'png',1),('6982274e-1b58-46e9-8a17-bfdca05e8962','2023-10-31 15:57:10.896000','/media/static/6982274e-1b58-46e9-8a17-bfdca05e8962.jpg','file',58044,'jpg',1),('6f1de8cc-84cd-4da8-9e73-1b27bbf0058d','2021-08-22 13:49:26.663000','/media/static/6f1de8cc-84cd-4da8-9e73-1b27bbf0058d.jpg','file',40297,'jpg',1),('71608de1-86b5-4b46-aba5-edaa9434e47a','2023-10-31 15:42:52.289000','/media/static/71608de1-86b5-4b46-aba5-edaa9434e47a.png','file',943837,'png',1),('7dd27f80-fb21-4fd2-b19c-a133cc929b17','2023-10-31 15:45:45.322000','/media/static/7dd27f80-fb21-4fd2-b19c-a133cc929b17.png','file',331269,'png',1),('8512e0ef-7abe-4faf-8e72-8ed596ad9230','2023-10-31 15:33:09.451000','/media/static/8512e0ef-7abe-4faf-8e72-8ed596ad9230.png','file',1069087,'png',1),('8589e69c-361b-490a-b1f6-3d4f9a8ceb28','2023-10-31 15:29:35.368000','/media/static/8589e69c-361b-490a-b1f6-3d4f9a8ceb28.jpg','file',159378,'jpg',1),('8c279180-d1c8-4992-a61e-dc2d73215cd2','2023-10-31 15:59:47.473000','/media/static/8c279180-d1c8-4992-a61e-dc2d73215cd2.png','file',749416,'png',1),('9009de32-d700-4f9c-a85d-bf5acf9a63e3','2023-10-31 15:39:22.420000','/media/static/9009de32-d700-4f9c-a85d-bf5acf9a63e3.png','file',1187975,'png',1),('979e08be-29e6-4e9a-bb57-ac539caed425','2023-10-31 15:29:28.784000','/media/static/979e08be-29e6-4e9a-bb57-ac539caed425.jpg','file',192648,'jpg',1),('988dd7b0-5e8b-4707-a910-b9877970c071','2021-08-22 13:49:29.829000','/media/static/988dd7b0-5e8b-4707-a910-b9877970c071.png','file',87469,'png',1),('9a1b57e4-9d83-4540-b761-f911d266b2bb','2023-10-31 15:49:33.257000','/media/static/9a1b57e4-9d83-4540-b761-f911d266b2bb.jpg','file',377049,'jpg',1),('9cc498c4-9d1f-4afe-929d-2468450468b6','2023-10-31 15:54:08.182000','/media/static/9cc498c4-9d1f-4afe-929d-2468450468b6.png','file',338927,'png',1),('a265cfd0-5bb9-4a7c-976a-9bd65a858f59','2023-10-31 15:52:19.161000','/media/static/a265cfd0-5bb9-4a7c-976a-9bd65a858f59.jpg','file',277602,'jpg',1),('a275bc40-2b31-4fa9-b875-de9ec6b8cf49','2023-10-31 15:52:10.343000','/media/static/a275bc40-2b31-4fa9-b875-de9ec6b8cf49.jpg','file',321473,'jpg',1),('a57d1c26-d87e-4908-96a2-2cfe6c891613','2023-10-31 15:03:57.648000','/media/static/a57d1c26-d87e-4908-96a2-2cfe6c891613.jpg','file',417423,'jpg',1),('a61378d1-6981-4896-803a-6c16c2263917','2023-10-31 15:45:52.526000','/media/static/a61378d1-6981-4896-803a-6c16c2263917.jpg','file',961015,'jpg',1),('aa8d3b89-dcc1-4c8c-87fc-5d723f13f5d9','2023-10-31 15:43:07.101000','/media/static/aa8d3b89-dcc1-4c8c-87fc-5d723f13f5d9.jpg','file',1050650,'jpg',1),('b06395f2-0069-4efd-8695-91649e7511e3','2023-10-31 15:48:53.694000','/media/static/b06395f2-0069-4efd-8695-91649e7511e3.png','file',1058381,'png',1),('b1a04744-9ed9-49f8-b70c-b19026a5a204','2023-10-31 15:35:50.106000','/media/static/b1a04744-9ed9-49f8-b70c-b19026a5a204.png','file',538268,'png',1),('b915dbe3-1aaa-4d3f-b14f-f716a3bad457','2021-08-22 13:49:32.293000','/media/static/b915dbe3-1aaa-4d3f-b14f-f716a3bad457.png','file',3690,'png',1),('bf31f65d-fa6c-403a-a9fe-9836ccced8f3','2023-10-31 15:54:32.053000','/media/static/bf31f65d-fa6c-403a-a9fe-9836ccced8f3.jpg','file',938135,'jpg',1),('cb9b7d91-ebcb-45f2-8d51-5ccbb0014c66','2023-10-31 15:35:56.806000','/media/static/cb9b7d91-ebcb-45f2-8d51-5ccbb0014c66.jpg','file',974475,'jpg',1),('cc71e00a-baab-4682-a28d-12cb162e1a5a','2023-10-31 15:39:34.123000','/media/static/cc71e00a-baab-4682-a28d-12cb162e1a5a.jpg','file',104810,'jpg',1),('d17340ea-d338-4161-830b-bedb1be80269','2023-10-31 15:36:14.440000','/media/static/d17340ea-d338-4161-830b-bedb1be80269.jpg','file',686487,'jpg',1),('d569e368-cc9a-45f3-8e1d-ed97cd43e7bf','2023-10-31 16:02:36.383000','/media/static/d569e368-cc9a-45f3-8e1d-ed97cd43e7bf.jpg','file',102754,'jpg',1),('d6de2c43-a6b1-42ab-a830-70912895d789','2023-10-31 15:29:21.487000','/media/static/d6de2c43-a6b1-42ab-a830-70912895d789.png','file',555804,'png',1),('ddc47d92-d2c7-4af9-928f-fa8a740604e5','2023-10-31 16:02:42.118000','/media/static/ddc47d92-d2c7-4af9-928f-fa8a740604e5.jpg','file',65252,'jpg',1),('e0d7fe88-d94d-4678-a886-2af23e38bf26','2023-10-31 15:26:08.872000','/media/static/e0d7fe88-d94d-4678-a886-2af23e38bf26.jpg','file',475416,'jpg',1),('e2818f1e-51a5-4f62-b242-7fc11c6e4c04','2023-10-31 16:02:29.417000','/media/static/e2818f1e-51a5-4f62-b242-7fc11c6e4c04.png','file',361722,'png',1),('e7396d27-a2fb-4031-8450-8c169fa39817','2023-10-31 15:21:42.095000','/media/static/e7396d27-a2fb-4031-8450-8c169fa39817.png','file',1580439,'png',1),('f4126957-a5d1-42c6-b1ff-ed45a02cd4c0','2023-10-31 15:27:08.126000','/media/static/f4126957-a5d1-42c6-b1ff-ed45a02cd4c0.jpg','file',659467,'jpg',1),('f587f7e5-610d-4e46-8963-fcf68f2eea65','2023-10-31 15:59:53.258000','/media/static/f587f7e5-610d-4e46-8963-fcf68f2eea65.jpg','file',1363044,'jpg',1),('fed3216c-ddfe-4dd7-9a3a-70027ce39598','2023-10-31 15:54:22.384000','/media/static/fed3216c-ddfe-4dd7-9a3a-70027ce39598.jpg','file',1103749,'jpg',1);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `promotion` json DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `total_price` bigint DEFAULT NULL,
  `buyer` bigint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKljvc97l19m7cnlopv8535hijx` (`buyer`),
  KEY `FKtjwuphstqm46uffgc7l1r27a9` (`created_by`),
  KEY `FKe0abpy849bl2ynw3468ksavvl` (`modified_by`),
  KEY `FK787ibr3guwp6xobrpbofnv7le` (`product_id`),
  CONSTRAINT `FK787ibr3guwp6xobrpbofnv7le` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKe0abpy849bl2ynw3468ksavvl` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FKljvc97l19m7cnlopv8535hijx` FOREIGN KEY (`buyer`) REFERENCES `users` (`id`),
  CONSTRAINT `FKtjwuphstqm46uffgc7l1r27a9` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2021-08-22 14:05:06.764000','2021-08-22 14:17:17.498000','Giao hàng trong giờ hành chính',1750000,NULL,1,'Vĩnh Hưng Hoàng Mai Hà Nội','user','0969708715',35,5,1600000,2,2,1,'u2aJZe'),(2,'2021-08-22 14:14:17.135000','2023-11-12 13:46:11.941000','',1450000,NULL,1,'Hải Dương','Thảo Trang','0378246453',39,3,1300000,3,3,1,'Eq1H5L'),(3,'2021-08-22 14:15:06.950000',NULL,'',1750000,NULL,1,'Hd','Phương','0378246453',40,1,1600000,4,4,NULL,'u2aJZe'),(4,'2021-08-22 14:15:57.784000','2021-08-22 14:16:48.662000','',1450000,NULL,1,'HN','Linh','0378246453',39,3,1300000,5,5,1,'Eq1H5L'),(5,'2021-08-22 14:18:04.242000','2021-08-22 14:18:43.548000','',1750000,NULL,1,'HN','admin','0969708715',35,4,1600000,1,1,1,'u2aJZe'),(6,'2023-10-31 16:37:26.516000',NULL,'abc',1000000,NULL,1,'hà nội','admin','0969708715',36,1,1000000,1,1,NULL,'dxbVt4'),(7,'2023-10-31 16:41:32.064000',NULL,'adf',1000000,NULL,1,'Vĩnh Hưng Hoàng Mai Hà Nội','user','0969708715',35,5,1000000,2,2,NULL,'dxbVt4'),(8,'2023-10-31 16:45:15.677000','2023-11-12 13:45:51.106000','',1000000,NULL,1,'Vĩnh Hưng Hoàng Mai Hà Nội','user','0969708715',35,3,1000000,2,2,1,'dxbVt4'),(9,'2023-11-08 15:44:09.344000',NULL,'',1000000,NULL,1,'quảng bị chương mỹ hà nội','Trịnh Trọng Vũ','0375111058',41,1,1000000,6,6,NULL,'C8TOaA');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `modified_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `slug` varchar(600) NOT NULL,
  `status` int DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(300) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3b6cq7u0x3fdxeh4sq95mia29` (`created_by`),
  KEY `FKl2q2idcap1gt3qhh87ebirpnc` (`modified_by`),
  CONSTRAINT `FK3b6cq7u0x3fdxeh4sq95mia29` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FKl2q2idcap1gt3qhh87ebirpnc` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (3,'<p>5+TOP ĐỒNG HỒ ROLEX DATEJUST ĐÁNG MUA NHẤT 2023</p><p><br></p>','2023-11-01 02:56:55.824000','<p>Mặc dù đã có mặt trên thị trường từ lâu nhưng đồng hồ Rolex Datejust vẫn dành được sự quan tâm đặc biệt của khách hàng. Trong bài viết này, EU LUXURY sẽ chia sẻ cho bạn về top 5 phiên bản đáng mua nhất 2023, hãy cùng tham khảo.</p><p>Đồng hồ Rolex Datejust – Đơn giản, sang trọng, đẳng cấp</p><p>Lần đầu tiên xuất hiện trên thị trường vào năm 1945 với số hiệu 4467, Rolex Datejust đã gây ấn tượng mạnh mẽ với khách hàng. Đặc biệt với chi tiết thiết kế cửa sổ ngày tại vị trí 3 giờ chính là bước ngoặt trong ngành chế tác đồng hồ.</p><p>Vào thời điểm ra mắt có thể nói thiết kế của đồng hồ phiên bản Datejust chính là nhà tiên phong. Thậm chí, thật không quá khi nói rằng sự ra đời của phiên bản Datejust hãng Rolex chính là cột mốc đáng nhớ của giới đồng hồ.</p><p>Thêm vào đó, sản phẩm còn được thiết kế với những chất liệu chọn lọc hàng đầu. Nhờ đó đã tạo ra những cỗ máy thời gian thực thụ, đồng hành cùng khách hàng trong mọi cuộc vui.</p><p>Ngoài ra, dòng đồng hồ Rolex Datejust còn được ưu ái trang bị bộ máy Calibre 710. Sau đó, để nâng cấp thì nhà sản xuất đang thay đổi thành bộ máy Calibre 730 với 17 chân kính. Từ đó đem đến khả năng hoạt động chính xác trong mọi điều kiện.</p><p>Giá đồng hồ Rolex Datejust là bao nhiêu?</p><p>Đồng hồ phiên bản Datejust của thương hiệu Rolex là bộ sưu tập đắt giá của hãng. Cũng vì thế mà mức giá thành của các sản phẩm không hề rẻ. Nhưng không vì thế mà khiến khách hàng lăn tăn khi quyết định sở hữu.</p><p>Hiện tại trên thị trường các sản phẩm phiên bản Datejust có mức giá cực kỳ đắt đỏ. Sản phẩm có giá thành rẻ nhất cũng đã lên đến 175 triệu đồng. Còn với các phiên bản đặc biệt thì mức giá hoàn toàn có thể lên đến hàng tỷ đồng.</p><p>Dù cho giá thành đắt đỏ nhưng Rolex Datejust vẫn luôn là tâm điểm chú ý của khách hàng. Trong nhiều năm, các mẫu trong bộ sưu tập Datejust của Rolex vẫn luôn thuộc top sản phẩm bán chạy nhất.</p><p>Top 5 đồng hồ Rolex Datejust đáng mua nhất 2023</p><p>Như đã đề cập thì các mẫu đồng hồ Rolex phiên bản Datejust vẫn luôn có sức hút đặc biệt. Dưới đây là top 5 mẫu đáng mua nhất 2023 mà bạn có thể tham khảo.</p><p>Rolex Datejust Oyster Perpetual mã 126333-0014</p><p>Thiết kế kích thước 41mm, đồng hồ Rolex phiên bản Oyster Perpetual mã 126333-0014 là niềm ao ước của mọi quý ông. Nổi bật với mặt đồng hồ màu đen với vành Bezel bằng chất liệu vàng Roselor trộn thép Oyster cao cấp, chiếc đồng hồ toát lên vẻ đẹp mạnh mẽ, đầy nam tính.</p><p>Bạn có thể tham khảo mức giá để sở hữu sản phẩm với mức giá 240 triệu đồng.</p><p>Rolex Oyster Datejust Perpetual mã 126333-0020</p><p>Cùng với phiên bản Datejust max 12333-0014 thì phiên bản mã 126333-0020 cũng được quan tâm không kém. Trong nhiều năm, phiên bản này vẫn luôn nằm trong top sản phẩm bán chạy nhất của thương hiệu.</p><p>Chiếc đồng hồ được thiết kế đơn giản với vỏ bằng chất liệu vàng Roselor kết hợp thép Oyster trứ danh. Thêm nữa đó là mặt số thiết kế với tông màu xám với cọc số màu đen viền xanh ấn tượng.</p><p>Hiện tại sản phẩm được bày bán tại EU LUXURY với mức giá 340 triệu đồng.</p><p>Rolex Datejust Steel &amp; Everose Gold Chocolate Dial mã 126331</p><p>Sở hữu mặt số với tông màu chocolate nổi bật, chiếc đồng hồ tỏa sáng trong bộ sưu tập. Toàn bộ các chi tiết được bảo vệ bởi một tấm ngọc bích trong suốt mang lại vẻ đẹp độc nhất, có một không hai.</p><p>Cửa sổ ngày được thiết kế tại vị trí 3 giờ quen thuộc với thiết kế kính Cyclops hỗ trợ quan sát thuận tiện. Các bạn có thể tham khảo sở hữu sản phẩm với mức giá 370 triệu đồng tại EU LUXURY.</p><p>Rolex 126334 Datejust White Gold Steel Black Diamond Dial Fluted</p><p>Khác biệt so với các phiên bản đồng hồ Rolex phổ biến, phiên bản Datejust White Gold Steel Black Diamond Dial Fluted mang vẻ đẹp mới mẻ. Điểm nhấn của sản phẩm đó là mặt đồng hồ tông màu đen với các cọc số kim cương đắt đỏ.</p><p>Thêm vào đó là thiết kế phần vỏ với chất liệu thép Oyster kết hợp vàng trắng cao cấp. Dù là chi tiết thiết kế nhỏ nhưng lại tạo hiệu ứng thẩm mỹ cực kỳ tuyệt vời nâng tầm sản phẩm lên một tầm cao mới.</p><p>Mức giá tham khảo cho sản phẩm tại EU LUXURY là 315 triệu đồng.</p><p>Rolex Datejust 126331 mặt đá xà cừ trắng nạm kim cương</p><p>Siêu phẩm Datejust mã số 126331 mặt đá xà cừ trắng nạm kim cương là sự lựa chọn hàng đầu trong năm 2023. Sản phẩm nằm trong phân khúc tầm trung của bộ sưu tập đồng hồ phiên bản Datejust.</p><p>Chiếc đồng hồ nổi bật với thiết kế chế tạo bằng mặt đá xà cừ trắng. Đi kèm với đó là 10 viên kim cương tự nhiên cao cấp đính tại các cọc số tạo hiệu ứng ánh sáng bắt mắt.</p><p>Logo biểu tượng của thương hiệu Rolex và cửa sổ ngày được thiết kế tại vị trí 12 giờ và 3 giờ quen thuộc. Trái tim vận hành sản phẩm là cỗ máy Calibre 3235 hỗ trợ vận hành chính xác, chống nước ở độ sâu 100m.</p><p>Mức giá tham khảo của sản phẩm tại EU LUXURY là 459 triệu đồng.</p><p>Tổng kết</p><p>Vừa rồi chúng tôi đã giới thiệu cho các bạn về những siêu phẩm Rolex Datejust đáng mua nhất 2023. Cùng chờ đợi EU LUXURY trong những bài viết kỳ tới để cập nhật sản phẩm mới nhất.</p><p>Tổng kết</p><p>Vừa rồi chúng tôi đã giới thiệu cho các bạn về những siêu phẩm Rolex Datejust đáng mua nhất 2023. Cùng chờ đợi EU LUXURY trong những bài viết kỳ tới để cập nhật sản phẩm mới nhất.</p>','2023-11-01 02:57:57.881000','2023-11-01 02:56:55.824000','5-top-ong-ho-rolex-datejust-ang-mua-nhat-2023',1,'/media/static/a57d1c26-d87e-4908-96a2-2cfe6c891613.jpg','5+TOP ĐỒNG HỒ ROLEX DATEJUST ĐÁNG MUA NHẤT 2023',1,1),(4,'<p>ĐỒNG HỒ ROLEX DAYDATE – BIỂU TƯỢNG CỦA SỰ HOÀN MỸ<br></p>','2023-11-01 03:01:48.394000','<p>ĐỒNG HỒ ROLEX DAYDATE – BIỂU TƯỢNG CỦA SỰ HOÀN MỸ</p><p><br></p><p>Ra đời từ năm 1956, những chiếc đồng hồ Rolex Daydate đã trải qua hành trình gần 70 năm chinh phục và đồng hành cùng giới mộ điệu. Hơn cả một cỗ máy đếm, Rolex Daydate cho thấy sự bền bỉ trong từng chi tiết, cùng thiết kế tỉ mỉ và tinh tế, tạo nên chất lượng và vẻ đẹp vượt thời gian. Đây chính là đáp án cho những ai đang tìm kiếm một mẫu đồng hồ không bao giờ bị bỏ quên theo năm tháng.</p><p><br></p><p>Thiết kế nam tính nổi bật khí chất phái mạnh</p><p>Dù là một chàng trai lịch lãm hay quý ông đã bước vào tuổi trung niên, Rolex Daydate cũng hoàn thành tốt vai trò của mình trong việc trở thành một món phụ kiện thời trang xa xỉ. Dòng đồng hồ này sở hữu dây đeo kim loại được làm từ chất liệu thép Oyster có độ bền cực lớn, khả năng chống ăn mòn và va đập tốt. Về góc độ thẩm mỹ, nó làm toát lên sự mạnh mẽ, nam tính, tạo nên vẻ ngoài đầy cuốn hút cho người dùng.</p><p><br></p><p>Mặt đồng hồ Rolex Daydate được thiết kế với hai đường kính là 36mm và 40mm, phù hợp với kích thước cổ tay của phần đông khách hàng. Các mốc số ở sản phẩm thường cách điệu bằng số La Mã hoặc đá quý, kim cương, tạo nên vẻ đẹp cổ điển mà không hề khoa trương, lỗi thời.</p><p><br></p><p>Chất liệu hiếm có và đắt đỏ</p><p>Chất liệu cao cấp vẫn là một trong những yếu tố hàng đầu quyết định nên mức giá thành xa xỉ của đồng hồ Rolex Daydate. Nhà sản xuất đã lựa chọn vàng 18k hoặc bạch kim, tinh thể sapphire chống trầy xước và phần vỏ Oyster chống thấm nước. Bên cạnh đó, công nghệ tiên tiến cùng với sự tỉ mỉ thủ công khi cần thiết là điều mà Rolex đã làm, để chắc chắn rằng mọi sản phẩm khi rời khỏi nhà máy đến tay người dùng đều đáp ứng được những tiêu chuẩn khắt khe nhất.</p><p><br></p><p>Bộ chuyển động calibre 3255 của đồng hồ Rolex Daydate được biết đến là một chuyển động cơ học tự lên dây cót mang lại hiệu suất cao vượt trội, cho độ chính xác cao và khả năng sai số cực thấp, gần như không có. Ngoài ra, bộ thoát Chronergy được cấp bằng sáng chế của Rolex cũng gây ấn tượng mạnh mẽ, có khả năng chống lại từ trường mạnh. Từ những chi tiết nhỏ nhất bên trong cho đến tính thẩm mỹ bên ngoài, Rolex Daydate đều cho thấy sự đầu tư công phu và kỹ lưỡng vô cùng.</p><p><br></p><p>Được mệnh danh là dòng “Đồng hồ Tổng thống”</p><p>Sở dĩ đồng hồ Rolex Daydate được mệnh danh là “Đồng hồ Tổng thống” vì được lựa chọn bởi các vị tổng thống Mỹ, các doanh nhân nổi tiếng, ngôi sao thể thao hay ngôi sao giải trí toàn cầu. Họ không lựa chọn đồng hồ thông minh bởi chúng tuy hiện đại nhưng không có giá trị lịch sử.</p><p><br></p><p>Sẽ thế nào nếu nhiều năm sau, những chiếc đồng hồ của họ được mang đi đấu giá hoặc trưng bày? Nếu là smartwatch, chúng sẽ chỉ còn là công cụ đếm thời gian lỗi thời, lạc hậu so với công nghệ tiên tiến của hiện tại. Nhưng nếu là đồng hồ Rolex, nó vẫn sẽ giữ nguyên được giá trị thẩm mỹ và tính lịch sử, trở thành nhân chứng ghi lại những thành tựu rực rỡ của họ. Đó chính là sự khác biệt giữa Rolex và phần còn lại của thế giới đồng hồ.</p><p><br></p><p>Đồng hồ Rolex Daydate có giá bao nhiêu?</p><p>Đến từ thương hiệu Rolex, đồng hồ Rolex Daydate cũng sở hữu mức giá cao từ vài trăm triệu đến hơn một tỷ đồng. Bởi vậy, chắc chắn nó không phải là sản phẩm&nbsp; thuộc về số đông. Sở hữu một chiếc đồng hồ Rolex Daydate, bạn sẽ nằm trong số ít những người có gu thẩm mỹ tinh tế và đủ khả năng để sẵn sàng chi trả cho nhu cầu thưởng thức cái đẹp cũng như khẳng định giá trị của mình.</p><p><br></p>',NULL,'2023-11-01 03:01:48.394000','ong-ho-rolex-daydate-bieu-tuong-cua-su-hoan-my',1,'/media/static/8589e69c-361b-490a-b1f6-3d4f9a8ceb28.jpg','ĐỒNG HỒ ROLEX DAYDATE – BIỂU TƯỢNG CỦA SỰ HOÀN MỸ',1,NULL),(5,'<p>NHỮNG ĐIỀU BẠN CẦN BIẾT VỀ ĐỒNG HỒ HUBLOT LIKE NEW<br></p>','2023-11-01 03:04:39.234000','<p>NHỮNG ĐIỀU BẠN CẦN BIẾT VỀ ĐỒNG HỒ HUBLOT LIKE NEW</p><p>Là xu thế mới trong thời gian gần đây, đồng hồ Hublot like new đang rất được ưa chuộng. Trong bài viết dưới đây, hãy cùng EU LUXURY tìm hiểu thêm về dòng sản phẩm này, đừng bỏ lỡ.</p><p><br></p><p>Đồng hồ Hublot like new là gì?</p><p><br></p><p>Có thể bạn chưa biết thì các mẫu Hublot like new chính là các sản phẩm đồng hồ Hublot siêu lướt. Trên thị trường đồng hồ cũ thì hàng like new chính là dòng sản phẩm có chất lượng tốt nhất.</p><p><br></p><p>Nhiều bạn lầm tưởng đồng hồ like new là đồng hồ fake nhưng điều này hoàn toàn sai. Những mẫu đồng hồ Hublot like new vẫn là đồng hồ chính hãng nhưng là sản phẩm đã qua sử dụng được thu mua lại.</p><p><br></p><p>Phần lớn các sản phẩm được thu mua lại đều có chất lượng cực kỳ tốt như mới. Thế nên khách hàng hoàn toàn có thể yên tâm về khả năng hoạt động của sản phẩm cũng như mức giá thành hợp lý.</p><p><br></p><p>Nên mua đồng hồ Hublot like new hay đồng hồ đập hộp?</p><p><br></p><p>Chắc hẳn không ít khách hàng phân vân không biết nên mua đồng hồ Hublot like new hay đồng hồ mới. Dưới đây là những tiêu chí so sánh giúp bạn dễ dàng hơn khi quyết định.</p><p><br></p><p>&nbsp;</p><p><br></p><p>Thiết kế sản phẩm</p><p><br></p><p>Yếu tố này thì cũng không có quá nhiều khác biệt quá rõ rệt. Các mẫu đồng hồ like new phần lớn không được sử dụng nhiều nên độ mới gần như tuyệt đối. Tuy nhiên, điểm khác biệt có lẽ là về phong cách thiết kế. Những mẫu sản phẩm mới sẽ được cập nhật thiết kế, thay đổi mang đậm tính thời đại.</p><p><br></p><p>Chất lượng đồng hồ</p><p><br></p><p>Bên cạnh đó, người dùng cũng hoàn toàn có thể tin tưởng vào các sản phẩm đồng hồ Hublot like new chính hãng. Những mẫu sản phẩm khi đến tay khách hàng đều đảm bảo hoạt động ổn định các chức năng không hề thua kém những mẫu đập hộp.</p><p><br></p><p>Hơn thế nữa, các sản phẩm chính hãng đều được làm từ nguyên liệu quý hiếm. Đồng thời, toàn bộ quy trình sản xuất, lắp ráp đều được thực hiện bởi nghệ nhân, chuyên gia hàng đầu giúp đảm bảo chất lượng tuyệt đối. Thế nên, dù qua sử dụng nhưng những mẫu đồng hồ Hublot like new vẫn sử dụng hoàn hảo.</p><p><br></p><p>Giá thành đồng hồ</p><p><br></p><p>Xét trên khía cạnh này thì rõ ràng đồng hồ like new sẽ có ưu điểm vượt trội so với mẫu đồng hồ bóc seal. Những mẫu đồng hồ đã qua sử dụng sẽ có mức giá rẻ hơn nhiều so với đồng hồ đập hộp.</p><p><br></p><p>Đồng thời, theo khảo sát thì đây cũng là một trong những nguyên nhân chính để khách hàng chọn lựa. Mọi người có thể dễ dàng sở hữu những mẫu đồng hồ cao cấp, chất lượng với mức giá vô cùng phải chăng, hợp lý.</p><p><br></p><p>Chính sách bảo hành</p><p><br></p><p>Xét trên khía cạnh những chế độ ưu đãi, bảo hành, chăm sóc khách hàng thì những mẫu đồng hồ like new không thể so sánh với Hublot mới. Là thương hiệu đồng hồ cao cấp, nổi tiếng thế giới nên Hublot có chế độ chăm sóc khách hàng cực kỳ tốt.</p><p><br></p><p>Thông thường những mẫu đồng hồ Hublot đập hộp sẽ được bảo hành khoảng từ 2 -5 năm. Vì thế, khách hàng có thể yên tâm sử dụng mà không cần lo lắng về lỗi của sản phẩm.</p><p><br></p><p>Tuy nhiên, khi mua đồng hồ Hublot like new cũng tiềm tàng nhiều rủi ro. Các bạn cần cẩn trọng khi giao dịch để hạn chế tối đa tình trạng mua phải hàng giả, hàng nhái, kém chất lượng.</p><p><br></p><p>Những điều cần lưu ý khi mua đồng hồ Hublot like new</p><p><br></p><p>Đồng hồ Hublot là những sản phẩm có giá trị cao nên nhiều đối tượng đã làm giả để chuộc lợi. Dưới đây là những điều mà bạn cần lưu ý khi mua đồng hồ Hublot 99%.</p><p><br></p><p>&nbsp;</p><p><br></p><p>Lựa chọn địa chỉ uy tín</p><p><br></p><p>Trước khi mua các sản phẩm đồng hồ Hublot đã qua sử dụng thì bạn cần lựa chọn kỹ lưỡng địa chỉ cung cấp. Bằng cách này có thể hạn chế tối đa khả năng mua phải hàng kém chất lượng.</p><p><br></p><p>Tiêu chí đánh giá cửa hàng có thể dựa trên mức độ nổi tiếng của cửa hàng cũng như kinh nghiệm làm việc. Ngoài ra, các bạn cũng có thể đánh giá thông qua đánh giá từ khách hàng cũ để tăng thêm sự khách quan.</p><p><br></p><p>Tham khảo giá cả</p><p><br></p><p>Đánh vào tâm lý khách hàng, những đối tượng phạm tội thường cung cấp mức giá vô cùng rẻ. Đồng thời kết hợp thêm nhiều thủ đoạn tinh vi khác sẽ lừa đảo và chiếm lấy khoản tiền lớn.</p><p><br></p><p>Do vậy, các bạn cần phải tham khảo thị trường kỹ lưỡng về mức giá. Từ đó có thể nhận diện thị trường và lựa chọn sản phẩm sao cho phù hợp nhất. Mặc dù các cửa hàng sẽ có chính sách về giá khác nhau nhưng sẽ không chênh lệch quá lớn.</p><p><br></p><p>&nbsp;</p><p><br></p><p>Kiểm tra chất lượng đồng hồ</p><p><br></p><p>Cùng với đó, khi giao dịch đồng hồ bạn cần kiểm tra kỹ lưỡng về các tính năng. Nhờ vậy có thể đảm bảo tất cả các bộ phận, linh kiện đều hoạt động ổn định, trong trạng thái tốt nhất. Ngoài ra, bạn cũng nên nhờ người có kinh nghiệm đi cùng để tăng độ tin cậy.</p><p><br></p><p>Còn nếu, bạn muốn tìm mua những mẫu đồng hồ Hublot đập hộp thì hãy đến với EU LUXURY. Chúng tôi hiện đang sở hữu rất nhiều mẫu đồng hồ Hublot ấn tượng bạn có thể thỏa thích chọn lựa.</p><p><br></p><p>Tổng kết</p><p><br></p><p>Qua bài viết trên, chúng tôi đã chia sẻ về sản phẩm đồng hồ Hublot like new. Cùng theo dõi EU LUXURY trong những bài viết ở kỳ sau để cập nhật liên tục thông tin mới nhấ</p>','2023-11-01 03:06:19.223000','2023-11-01 03:04:57.544000','nhung-ieu-ban-can-biet-ve-ong-ho-hublot-like-new',1,'/media/static/71608de1-86b5-4b46-aba5-edaa9434e47a.png','NHỮNG ĐIỀU BẠN CẦN BIẾT VỀ ĐỒNG HỒ HUBLOT LIKE NEW',1,1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `image_feedback` json DEFAULT NULL,
  `images` json DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `price` bigint DEFAULT NULL,
  `sale_price` bigint DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int DEFAULT NULL,
  `total_sold` bigint DEFAULT NULL,
  `product_view` int DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs6cydsualtsrprvlf2bb3lcam` (`brand_id`),
  CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('2B3Fpp',NULL,'<p>Patek Philippe Complications 5396R-014 Annual Calendar &amp; Moonphase sở hữu kích thước mặt 38,5mm, một kích thước phù hợp cho cả các quý ông và quý cô. Vẻ đẹp tuyệt vời của chiếc đồng hồ được định nghĩa bởi sắc xanh huyền ảo mà nhà sản xuất đã dày công đưa vào trong từng phiên bản giới hạn. Mặt kính của Patek Philippe Complications 5396R-014 Annual Calendar &amp; Moonphase được chế tác từ sapphire nguyên khối và cắt gọt tỉ mỉ. Chất liệu sapphire không những có độ bền cực lớn, chúng còn có khả năng xuyên thấu hoàn hảo làm tôn lên tất cả những chi tiết của mặt số bên trong.<br></p>',NULL,'[\"/media/static/1aedae91-e2fb-43f4-8839-3516eab566fd.png\", \"/media/static/a275bc40-2b31-4fa9-b875-de9ec6b8cf49.jpg\", \"/media/static/a265cfd0-5bb9-4a7c-976a-9bd65a858f59.jpg\"]','2023-11-01 01:12:56.440000','Đồng hồ Patek Philippe Complications 5396R-014 Annual Calendar & Moonphase',500000,1000000,'ong-ho-patek-philippe-complications-5396r-014-annual-calendar-moonphase',1,0,4,2),('2iGgJg','2023-10-31 15:54:36.844000','<p>Patek Philippe 5205G-013 mang thiết kế tinh xảo với mặt số xanh biển hơi hướng tự do, phóng khoáng. Chiếc đồng hồ là kết tinh của vẻ đẹp cổ điển đã làm nên tên tuổi của Patek Philippe, tuy nhiên trong đó lại ẩn chứa những tinh hoa công nghệ của thời đại mới. Chiếc đồng hồ là minh chứng cho giá trị cổ điển đã chinh phục giới siêu giàu trên thế giới từ năm 1851 đến nay. Với mặt số tròn kích cỡ 40mm, Patek Philippe 5205G-013 phù hợp với các quý ông lịch lãm. Mặt đồng hồ được chế tác từ tấm sapphire nguyên chất có độ cứng lớn. Đá quý sapphire là chất liệu huyền thoại làm nên tên tuổi của mỗi chiếc Patek Philippe, được áp dụng công nghệ cắt gọt tỉ mỉ để tạo ra độ trong suốt hoàn hảo cùng độ bền lớn giúp bảo vệ mặt đồng hồ.<br></p>',NULL,'[\"/media/static/9cc498c4-9d1f-4afe-929d-2468450468b6.png\", \"/media/static/fed3216c-ddfe-4dd7-9a3a-70027ce39598.jpg\", \"/media/static/bf31f65d-fa6c-403a-a9fe-9836ccced8f3.jpg\"]',NULL,'Đồng hồ Patek Philippe 5205G-013',500000,1000000,'ong-ho-patek-philippe-5205g-013',1,0,18,2),('4iKReQ',NULL,'<p style=\"margin-bottom: 10px; text-align: center;\"><font color=\"#898989\" face=\"Roboto Condensed, sans-serif\"><span style=\"font-size: 15px;\">Đồng Hồ Rolex Datejust 41mm 126331 Phiên bản mặt số đá xà cừ trắng nạm kim cương dây Jubilee là một mẫu đồng hồ vô cùng độc đáo mang thương hiệu Rolex bởi bạn sẽ không tìm thấy một chiếc đồng hồ thứ 2 nào giống nó y đúc.&nbsp;</span></font><span style=\"text-align: left; font-size: 15px;\"><font color=\"#898989\" face=\"Roboto Condensed, sans-serif\">Dây đeo của đồng hồ được sản xuất với thiết kế bản quyền của Rolex đó là dây đeo JUBILEE. Đặc trưng của kiểu dây đeo này gồm 5 mảnh kim loại bằng vàng và thép hình bán nguyệt kết nối với nhau, gồm 2 màu sắc là màu rose gold và màu kim loại đặc trưng vừa đảm bảo tính thẩm mỹ, vừa đem lại độ chắc chắn cao.</font></span><br></p>',NULL,'[\"/media/static/e7396d27-a2fb-4031-8450-8c169fa39817.png\", \"/media/static/149dc9b1-a46a-4523-873c-4961e9e2eff8.jpg\", \"/media/static/f4126957-a5d1-42c6-b1ff-ed45a02cd4c0.jpg\"]','2023-10-31 15:27:13.906000','Đồng Hồ Rolex Datejust 41mm 126331 Phiên bản mặt số đá xà cừ trắng nạm kim cương dây Jubilee',550000,1350000,'ong-ho-rolex-datejust-41mm-126331-phien-ban-mat-so-a-xa-cu-trang-nam-kim-cuong-day-jubilee',1,0,3,1),('AMm1UW','2023-10-31 15:46:11.768000','<p>Hublot Classic Fusion Automatic King Gold mang một vẻ bề ngoài tinh tế, sang trọng bắt mắt. Chiếc đồng hồ toát lên chất tối giản thượng lưu đã làm nên thương hiệu Classic Fusion của nhà Hublot. Mặt đồng hồ làm từ kính sapphire trong vắt với khả năng chống phản quang hoàn hảo và độ bền cực lớn. Phần vành đồng hồ được thiết kế từ vàng hồng 18k nguyên khối, được đánh bóng tỉ mỉ bằng Satin. Bên trên phần vành là 6 chiếc đinh vít được cách điệu theo chữ H trứ danh của nhà Hublot, tạo ra độ tương thích tuyệt đối giữa mặt đồng hồ và càng nối dây.<br></p>',NULL,'[\"/media/static/7dd27f80-fb21-4fd2-b19c-a133cc929b17.png\", \"/media/static/a61378d1-6981-4896-803a-6c16c2263917.jpg\", \"/media/static/08cbe71a-fa1b-4934-9340-f4e3d6a93208.jpg\"]',NULL,'Đồng Hồ Hublot Classic Fusion Automatic King Gold 42 mm',500000,1000000,'ong-ho-hublot-classic-fusion-automatic-king-gold-42-mm',1,0,1,3),('C8TOaA','2023-10-31 16:02:59.628000','<p>Đồng Hồ Franck Muller Vanguard Yachting V41 được chế tác tuyệt đẹp, gợi ta nhớ đến những hình ảnh về ngành hàng hải. Nhìn tổng thể, chiếc đồng hổ phủ một màu xanh biển bí ẩn như mặt đại dương. Cùng những chi tiết đắt giá được tạo ra từ kim cương, sản phẩm tạo ra một độ cân bằng màu sắc hoàn hảo. Đồng Hồ Franck Muller Vanguard Yachting V41 có phần vỏ làm từ chất liệu Stainless Steel đảm bảo một độ bền hoàn hảo. Phần vành đồng hồ được nạm hoàn toàn bởi vô số viên kim cương tự nhiên. Đây là chi tiết mang đến mức giá đắt đỏ của Đồng Hồ Franck Muller Vanguard Yachting V41, tạo cho người sở hữu chúng cảm giác sang trọng, xa hoa bậc nhất.<br></p>',NULL,'[\"/media/static/e2818f1e-51a5-4f62-b242-7fc11c6e4c04.png\", \"/media/static/d569e368-cc9a-45f3-8e1d-ed97cd43e7bf.jpg\", \"/media/static/ddc47d92-d2c7-4af9-928f-fa8a740604e5.jpg\"]',NULL,'Đồng Hồ Franck Muller V41 Yachting',500000,1000000,'ong-ho-franck-muller-v41-yachting',1,0,8,4),('dxbVt4','2023-10-31 16:00:15.649000','<p>Đồng hồ Franck Muller V32 Vanguard Lady Classic Full Diamond được thiết kế tinh xảo với phần mặt đồng hồ làm từ tinh thể sapphire nguyên chất. Chất liệu sapphire không những tạo ra một vẻ đẹp hoàn hảo cho bề mặt chiếc đồng hồ, nó còn bảo vệ tác phẩm nghệ thuật này khỏi những va đập cỡ vừa gây ảnh hương tới ngoại hình. Bền mặt đồng hồ có kích cỡ 32 mm x 42.3 mm phù hợp với các quý cô. Phần vành được làm bởi chất liệu thép không gỉ ánh bạc bền bỉ. Đây là chất liệu phổ biến để Franck Muller sử dụng trong chế tác các sản phẩm đồng hồ, với ưu điểm mang độ bền cao và cực kì sáng bóng. Dáng tonneau cổ điển trứ danh của dòng Vanguard khiến chiếc đồng hồ trông sang trọng và quyến rũ hơn rất nhiều.<br></p>',NULL,'[\"/media/static/8c279180-d1c8-4992-a61e-dc2d73215cd2.png\", \"/media/static/f587f7e5-610d-4e46-8963-fcf68f2eea65.jpg\", \"/media/static/4033863d-3688-4bab-9528-06cc8934a54e.jpg\"]',NULL,'Đồng Hồ Franck Muller V32 Vanguard Lady Classic Full Diamond',500000,1000000,'ong-ho-franck-muller-v32-vanguard-lady-classic-full-diamond',1,1,36,4),('Eq1H5L',NULL,'<b>Đồng hồ Rolex Oyster Perpetual Day-Date 36mm sở hữu đai kính rãnh đặc trưng riêng của Rolex. Ban đầu, đồng hồ được tạo ra để dễ dàng xoay vòng bezel và vỏ để đảm bảo khả năng chống nước tối đa nhất. Sau đó, thiết kế giống như một đường rãnh ở mặt sau được vặn chắc chắn vào vỏ giúp tăng cường độ chống thấm nước tuyệt vời nhất. Kể từ đó, thiết kế rãnh đã trở thành một chi tiết rất thẩm mỹ có giá trị nổi bật trong phong cách thương hiệu Rolex. Như vậy, mẫu đồng hồ này cũng được thừa hưởng giá trị thẩm mỹ cao đó và thu hút biết bao nhiêu ánh mắt phải trầm trồ muốn sở</b>',NULL,'[\"/media/static/5f89462c-894c-4d48-ab05-a277f9fa9a9f.png\", \"/media/static/e0d7fe88-d94d-4678-a886-2af23e38bf26.jpg\", \"/media/static/a57d1c26-d87e-4908-96a2-2cfe6c891613.jpg\"]','2023-10-31 15:26:39.517000','Đồng Hồ Rolex Oyster Perpetual Day-Date 36mm',550000,1450000,'ong-ho-rolex-oyster-perpetual-day-date-36mm',1,1,3,1),('eWtkD1',NULL,'<p style=\"text-align: center;\"><font color=\"#898989\" face=\"Roboto Condensed, sans-serif\"><span style=\"font-size: 15px;\">Cả chiếc đồng hồ Rolex Dateujust hiện lên với tông màu bạc của vỏ khung, dây đeo, cọc chỉ giờ kim cương, bộ kim, chỉ riêng mặt số có màu xanh sáng bắt mắt, biểu tượng cho sự nam tính, lịch lãm của phái mạnh. Ngoài ra, những họa tiết Jubilee trên mặt số, những chữ Rolex được xếp ngang và xếp xen kẽ tạo hiệu ứng nổi bật và bắt mắt. Các phần cọc số được làm bằng kim cương trừ góc 3h và góc 12h là vương miện - logo của Rolex kết hợp với bộ kim sáng bóng.</span></font><br></p>',NULL,'[\"/media/static/2eed5cbc-eb9c-4ea2-b90e-6b0e4eee3dde.png\", \"/media/static/8512e0ef-7abe-4faf-8e72-8ed596ad9230.png\", \"/media/static/47545964-ad04-4c82-b684-39171ec5c6d0.png\"]','2023-10-31 15:33:35.508000','Đồng Hồ Rolex Datejust 126234 Mặt Vi tính Xanh Navy',550000,1350000,'ong-ho-rolex-datejust-126234-mat-vi-tinh-xanh-navy',1,0,0,1),('FJWheJ',NULL,'<p style=\"margin-bottom: 10px; text-align: center;\"><font color=\"#898989\" face=\"Roboto Condensed, sans-serif\"><span style=\"font-size: 15px;\">Đồng hồ Rolex Oyster Perpetual Day-date là một trong các mẫu nổi bật của thương hiệu Rolex. Năm 1956, Rolex Oyster Perpetual Day-date lần đầu được biết đến với phiên bản hiển thị tên ngày đầy đủ với màn hình ngày cài đặt cho nhiều ngôn ngữ. Dây đeo làm bằng kim loại độc quyền, liên kết 3 mảnh bán nguyệt tạo nên phiên bản độc đáo và khác biệt. Khóa cài bằng Crownclasp hoặc cài ẩn thanh lịch Rolex.</span></font><br></p>',NULL,'[\"/media/static/d6de2c43-a6b1-42ab-a830-70912895d789.png\", \"/media/static/979e08be-29e6-4e9a-bb57-ac539caed425.jpg\", \"/media/static/8589e69c-361b-490a-b1f6-3d4f9a8ceb28.jpg\"]','2023-10-31 15:29:50.388000','Đồng hồ Rolex 228235 Day Date 40mm Chocolate Everose Gold',650000,1750000,'ong-ho-rolex-228235-day-date-40mm-chocolate-everose-gold',1,0,1,1),('hq4kAg',NULL,'<p>Tương tự như các dòng đồng hồ của nhà Franck Muller, đồng hồ Franck Muller V32 Custom Diamond có thiết kế theo dáng tonneau cổ điển, sang trọng. Cách đặt tên của hãng cũng rất thú vị khi con số V32 ám chỉ kích cỡ 32 theo form đồng hồ truyền thống, một kích cỡ mặt nhỏ phù hợp với cổ tay quý cô. Phần mặt đồng hồ được thiết kế từ một tinh thể sapphire nguyên chất trong vắt, được chế tác theo dạng mặt cong cực kì tinh xảo. Sapphire là chất liệu đá quý có khả năng quang học hoàn hảo và đảm bảo tối đa độ bền của mặt đồng hồ.<br></p>',NULL,'[\"/media/static/247e91ae-692d-4b64-a104-76c5cf1c14c1.png\", \"/media/static/6982274e-1b58-46e9-8a17-bfdca05e8962.jpg\", \"/media/static/1f39ff45-4f40-4082-9af0-a48a7222c62b.jpg\"]','2023-10-31 16:03:10.591000','Đồng Hồ Franck Muller V32 Custom Diamond',500000,1000000,'ong-ho-franck-muller-v32-custom-diamond',1,0,1,4),('u2aJZe',NULL,'<p style=\"text-align: center;\"><font color=\"#898989\" face=\"Roboto Condensed, sans-serif\"><span style=\"font-size: 15px;\">Đồng Hồ Rolex 18238 Day Date President cọc kim cương vàng khối 18k là một sản phẩm vô cùng độc đáo đến từ thương hiệu Rolex khi sử dụng chất liệu vàng để thiết kế gần như toàn bộ chiếc đồng hồ. Hãy cùng chúng tôi khám phá kỹ hơn về sản phẩm này trong bài viết dưới đây nhé. Chất liệu vàng nguyên khối Các sản phẩm đồng hồ Rolex khác thường sử dụng 2 loại chất liệu là vàng và théo 904L độc quyền của Rolex. Tuy nhiên, với sản phẩm này, các nhà chế tác đã sủ dụng chất liệu vàng nguyên khối 18K. Với chất liệu này, sản phẩm trở nên sang trọng và đẳng cấp hơn bao giờ hết. Chất liệu vàng được sử dụng từ vành đồng hồ, dây đeo đồng hồ, mặt đồng hồ đến núm vặn và các kim chỉ số trên bề mặt.</span></font><br></p>',NULL,'[\"/media/static/b1a04744-9ed9-49f8-b70c-b19026a5a204.png\", \"/media/static/cb9b7d91-ebcb-45f2-8d51-5ccbb0014c66.jpg\", \"/media/static/d17340ea-d338-4161-830b-bedb1be80269.jpg\"]','2023-10-31 15:40:17.831000','Đồng Hồ Rolex 18238 Day Date President cọc kim cương vàng khối 18k',650000,1750000,'ong-ho-rolex-18238-day-date-president-coc-kim-cuong-vang-khoi-18k',1,0,0,1),('vunc85','2023-10-31 15:43:35.218000','<p>Hublot Big Bang Gold Diamonds 41mm là một sản phẩm đồng hồ cơ học được chế tác vô cùng tinh xảo. Vành đồng hồ sử dụng chất liệu vàng 18K. Đây cũng là vị trí mà các viên kim xương được gắn lên, cùng 6 ốc vít nhỏ hình chữ H. Lớp vỏ được làm từ vàng nguyên khối, sau đó đánh bóng để khiến ngoại hình chiếc đồng hồ trở nên sang trọng hơn.Dây đeo của đồng hồ Hublot nam này màu xanh sang trọng với 2 phiên bản chất liệu khác nhau là cao su và da cá sấu. Khóa điều chỉnh của đồng hồ cũng được làm từ vàng 18K và thép không gỉ. Mặt kính được làm từ đá sapphire có khả năng chống phản chiếu.</p>',NULL,'[\"/media/static/71608de1-86b5-4b46-aba5-edaa9434e47a.png\", \"/media/static/023a3e13-30da-4957-8766-dcf701afc4d9.jpg\", \"/media/static/aa8d3b89-dcc1-4c8c-87fc-5d723f13f5d9.jpg\"]',NULL,'Đồng hồ Hublot Big Bang Gold Diamonds 41mm',500000,1000000,'ong-ho-hublot-big-bang-gold-diamonds-41mm',1,0,0,3),('YQyDeL','2023-10-31 15:50:04.982000','<p>Patek Philippe Complications 5905R 42mm sở hữu kích thước mặt lớn 42mm phù hợp với cổ tay của các quý ông. Phiên bản đồng hồ cao cấp này được chú ý bởi tấm nền tuyệt đẹp màu ánh đồng tạo nên cảm giác sang trọng và bí ẩn. Nhìn tổng thế, chiếc Patek Philippe như một món trang sức hơn là một vật phẩm chức năng, và điều đó khiến bất kì ai ngắm nhìn nó đủ lâu sẽ không thể rời mắt. Chiếc đồng hồ sở hữu bộ vỏ làm từ vàng hồng nguyên khối, với mặt lưng pha lê tuyệt đẹp. Vành đồng hồ tròn cũng được đúc từ chất liệu tương tự, mang đến một độ bền tuyệt đối và vẻ đẹp giữ nguyên sau hàng thập kỉ. Nhà sản xuất Thụy Sĩ trứ danh này luôn luôn cẩn trọng trong khâu lựa chọn chất liệu, vì vậy cũng sẽ chẳng bất ngờ gì khi Patek Philippe Complications 5905R 42mm tỏa ra ánh kim rực rỡ mỗi khi chủ nhân đeo nó lên tay.<br></p>',NULL,'[\"/media/static/b06395f2-0069-4efd-8695-91649e7511e3.png\", \"/media/static/9a1b57e4-9d83-4540-b761-f911d266b2bb.jpg\", \"/media/static/04d503ff-8104-414e-9189-64a3006b5dd4.jpg\"]',NULL,'Đồng hồ Patek Philippe Complications 5905R 42mm',500000,1000000,'ong-ho-patek-philippe-complications-5905r-42mm',1,0,0,2),('zqnB6k','2023-10-31 15:39:39.253000','<p>Thiết kế của đồng hồ Hublot Classic Fusion Chronograph Titanium Automatic Black Dial Hublot Classic Fusion Chronograph Titanium Automatic Black Dial chắc chắn sẽ thu hút sự chú ý của các quý ông lịch lãm với hệ thống mặt số phụ tạo nên một thiết kế cực kì khoa học. Phần vỏ của sản phẩm được làm từ hợp kim Stainless Steel với độ cứng cao, đảm bảo chống lại mọi va đập cỡ vừa ảnh hưởng tới phần cứng. Chất liệu này cũng khiến cho sản phẩm mang một ngoại hình sáng bóng, cứng rắn và năng động đặc trưng của phái mạnh. 6 chiếc đinh vít trứ danh của dòng Classic Fusion là điểm kết nối hoàn hảo giữa bề mặt đồng hồ và càng nối dây.<br></p>',NULL,'[\"/media/static/9009de32-d700-4f9c-a85d-bf5acf9a63e3.png\", \"/media/static/2e963fec-830c-4a7d-8f7d-661c1a28aa2a.jpg\", \"/media/static/cc71e00a-baab-4682-a28d-12cb162e1a5a.jpg\"]',NULL,'Đồng Hồ Hublot Classic Fusion Chronograph Titanium Automatic Black Dial Men\'s Watch',500000,1000000,'ong-ho-hublot-classic-fusion-chronograph-titanium-automatic-black-dial-men-s-watch',1,0,1,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_id` varchar(255) NOT NULL,
  `category_id` bigint NOT NULL,
  KEY `FKkud35ls1d40wpjb5htpp14q4e` (`category_id`),
  KEY `FK2k3smhbruedlcrvu6clued06x` (`product_id`),
  CONSTRAINT `FK2k3smhbruedlcrvu6clued06x` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKkud35ls1d40wpjb5htpp14q4e` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES ('Eq1H5L',1),('Eq1H5L',2),('4iKReQ',1),('4iKReQ',2),('FJWheJ',1),('FJWheJ',2),('eWtkD1',1),('zqnB6k',1),('zqnB6k',2),('u2aJZe',1),('u2aJZe',2),('vunc85',1),('vunc85',2),('AMm1UW',1),('AMm1UW',2),('YQyDeL',1),('YQyDeL',2),('2iGgJg',1),('2iGgJg',2),('dxbVt4',2),('C8TOaA',2),('hq4kAg',2),('2B3Fpp',1),('2B3Fpp',2);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `product_id` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`product_id`,`size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES ('2B3Fpp',17,10),('2iGgJg',17,5),('C8TOaA',41,10),('dxbVt4',17,5),('dxbVt4',35,9),('dxbVt4',36,10),('dxbVt4',38,10),('Eq1H5L',39,3),('Eq1H5L',40,15),('Eq1H5L',41,35),('u2aJZe',35,10),('u2aJZe',37,10),('u2aJZe',40,30),('u2aJZe',41,25);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:57
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `discount_type` int DEFAULT NULL,
  `discount_value` bigint DEFAULT NULL,
  `expired_at` datetime(6) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `maximum_discount_value` bigint DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_acld676f1gyc04nofpb7t2ecn` (`coupon_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'KH123','2021-08-22 13:57:01.646000',1,30,'2021-09-06 00:00:00.000000',1,1,150000,'2/9');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `statistic`
--

DROP TABLE IF EXISTS `statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `profit` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sales` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKok7jp7mh6y9tghumc2do51ieq` (`order_id`),
  CONSTRAINT `FKok7jp7mh6y9tghumc2do51ieq` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistic`
--

LOCK TABLES `statistic` WRITE;
/*!40000 ALTER TABLE `statistic` DISABLE KEYS */;
INSERT INTO `statistic` VALUES (1,'2021-08-22 14:16:48.648000',650000,1,1300000,5),(2,'2023-11-12 13:45:51.072000',1200000,2,2300000,2);
/*!40000 ALTER TABLE `statistic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 22:52:58
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: watch
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roles` json NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,'2021-08-22 13:43:08.676000','admin@gmail.com','admin',NULL,'$2a$12$Va7qknM9plTF3S2g52akDuPHh01X4BFTqfTX.F63TY5QWkEHlGKHC','0969708715','[\"ADMIN\", \"USER\"]',1),(2,'Hà Nội',NULL,'2021-08-22 13:44:11.392000','user@gmail.com','user',NULL,'$2a$12$mfkqPz9UVtbEMHCs0GFe8eMcnKv0sms2FIOjXPAQF.CkodCIFiVmm','0969708715','[\"USER\"]',1),(3,NULL,NULL,'2021-08-22 14:13:47.852000','thaotrang@gmail.com','Thảo Trang',NULL,'$2a$12$xAgcACYzUTMsT2q4v93MUeHTWI1DN13i9.tN6kpK.CiazKhsRsb0y','0378246453','[\"USER\"]',1),(4,NULL,NULL,'2021-08-22 14:14:40.837000','phuong@gmail.com','Phương',NULL,'$2a$12$.bH4k6xySdmmPDJYkXbQjOKqig4VpCl08uHY11WQRe/fIkno83cXm','0378246453','[\"USER\"]',1),(5,NULL,NULL,'2021-08-22 14:15:37.844000','linh@gmail.com','Linh',NULL,'$2a$12$mtLAES4vlQ5vXFpLtADAI.aqvVjzNMeCuc8cRnr8FbWxY1vmJZDyy','0378246453','[\"USER\"]',1),(6,NULL,NULL,'2023-11-08 15:43:09.451000','vuttph25379@fpt.edu.vn','Trịnh Trọng Vũ',NULL,'$2a$12$sRdQKlpuGEFlAiuBBGukNu4FWmFHe1q0EYdQxd1aY05yLWyTbp5YS','0375111058','[\"USER\"]',1);
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

-- Dump completed on 2023-11-18 22:52:58

