-- MySQL dump 10.13  Distrib 5.7.27-30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: papoochaDB6
-- ------------------------------------------------------
-- Server version	5.7.27-30-log

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` tinytext NOT NULL,
  `admin_country` tinytext NOT NULL,
  `admin_about` tinytext NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'trafo','tired@trafo.com','password','trafo.jpg','Trafonia','Lorem ipsum trafum','1234560','transformator'),(2,'papucovy','pa@poocha.com','admin','','','','','');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxes_section`
--

DROP TABLE IF EXISTS `boxes_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL AUTO_INCREMENT,
  `box_title` tinytext NOT NULL,
  `box_desc` text NOT NULL,
  PRIMARY KEY (`box_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxes_section`
--

LOCK TABLES `boxes_section` WRITE;
/*!40000 ALTER TABLE `boxes_section` DISABLE KEYS */;
INSERT INTO `boxes_section` VALUES (1,' NajteplejÅ¡ie papuÄe','ZahrejÃº vÃ¡s a nemusÃ­te chodiÅ¥ po chladnej dlÃ¡Å¾ke, neÅ¡mÃ½kajÃº sa a sÃº jednoducho jedineÄnÃ©. '),(3,'  VÃ½chovnÃ© ','PapuÄe z kvalitnÃ©ho materiÃ¡lu vydrÅ¾ia, moÅ¾no pouÅ¾iÅ¥ ako vÃ½chovnÃ½ prostriedok na Älenov domÃ¡cnosti, susedov a hmyz. '),(4,'100% spokojnosÅ¥ ','V naÅ¡ich papuÄiach chodia len spokojnÃ­ Ä¾udia, dlho vydrÅ¾ia, nerozpadnÃº sa a sÃº maximÃ¡lne pohodlnÃ©.');
/*!40000 ALTER TABLE `boxes_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (4,'::1',1,'',''),(7,'109.230.33.195',1,'49','43'),(10,'127.0.0.1',1,'29','28'),(12,'92.52.48.185',1,'59','30');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `cat_top` tinytext NOT NULL,
  `cat_image` tinytext NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (7,'detskÃ©','no','he2.png'),(8,'pÃ¡nske','no','he1.png'),(9,'dÃ¡mske','no','she1.png'),(10,'univerzÃ¡lne','yes','');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,7,'Coupon For High Heels','10','34565770',3,0),(2,17,'Sample price','5','150',1,1);
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_orders`
--

LOCK TABLES `customer_orders` WRITE;
/*!40000 ALTER TABLE `customer_orders` DISABLE KEYS */;
INSERT INTO `customer_orders` VALUES (1,6,49,61252807,1,'32','2020-12-01','paid paypall'),(2,6,59,61252807,1,'34','2020-12-01','paid paypall'),(3,6,49,637124466,1,'29','2020-12-01','paid paypall'),(4,6,19,637124466,1,'30','2020-12-01','paid paypall'),(5,6,29,1894114461,1,'29','2020-12-01','pending'),(6,6,19,1844711404,1,'28','2020-12-01','paid paypall'),(7,6,19,1461588410,1,'30','2020-12-01','paid paypall'),(8,6,49,1615595321,1,'31','2020-12-01','paid paypall'),(9,6,118,2047435734,2,'31','2020-12-01','paid paypall');
/*!40000 ALTER TABLE `customer_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (4,'Pizza Cat','pizzacat@yahoo.uk','Anypassword','Pizzanesia','Catville','0817-2837-9292','Cat avenue, Anchovii 27','pizzacat.jpeg','::1'),(5,'Test Without Buying','NoBuy@gmail.uk','koiwakskskd','England','Hyde Park','83728190','Benington','h-man.jpg','::1'),(6,'Holly Sheit','holly@sheit.com','multipass','Mars','City on Mars','123456789','Block D','',''),(7,'Ignac petofi','45firebird45@gmail.com','mojepapuce3000','Feldvidek','Epischdorf','Ano','Nie','55E49FCA-1073-4E08-B33E-EC921BCB2AB2.png','95.105.253.200'),(8,'Kamil StratenÃ½','ducar.igor@gmail.com','sexsex123.','Slovakia','Most Pri Bratislave','0902659486','Kokotovce 5','126137261_10222280458274537_7161876762985473624_n.jpg','95.102.187.116');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT,
  `manufacturer_title` tinytext NOT NULL,
  `manufacturer_top` tinytext NOT NULL,
  `manufacturer_image` tinytext NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (7,'EcoFlops','yes','ecoflops1.jpg'),(8,'Wolly','yes','comfymen1.jpg'),(9,'KidWorld','no','kids1.jpg'),(10,'Basics','no','comfy2.jpg'),(11,'Tradition','no','leather2.jpg'),(12,'Common Brand','no','flop1.jpg');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` tinytext NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` tinytext NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,2051256671,1200,'Back Code',1234,231,'10/10/2020'),(2,1615595321,1,'paypall',1712507862,1452208184,''),(3,2047435734,2,'paypall',849304780,1592081490,'');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_orders`
--

LOCK TABLES `pending_orders` WRITE;
/*!40000 ALTER TABLE `pending_orders` DISABLE KEYS */;
INSERT INTO `pending_orders` VALUES (1,6,61252807,'5',1,'32','paid paypall'),(2,6,61252807,'12',1,'34','paid paypall'),(3,6,637124466,'7',1,'29','paid paypall'),(4,6,637124466,'11',1,'30','paid paypall'),(5,6,1894114461,'10',1,'29','pending'),(6,6,1844711404,'8',1,'28','paid paypall'),(7,6,1461588410,'11',1,'30','paid paypall'),(8,6,1615595321,'7',1,'31','paid paypall');
/*!40000 ALTER TABLE `pending_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_title` text NOT NULL,
  `p_cat_top` tinytext NOT NULL,
  `p_cat_image` tinytext NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (9,'vlnenÃ©','yes','vlnenedetske1.jpg'),(10,'obyÄajnÃ©','no','obycajne.jpg'),(11,'prezuvky','no','kids1.jpg'),(12,'koÅ¾enÃ©','yes','leather3.jpg'),(13,'hotelovÃ©','no','comfy1.jpg'),(14,'flops','no','blackflops1.jpg');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` tinytext NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_label` tinytext NOT NULL,
  `product_sale` int(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,9,8,8,'2020-11-29 20:55:39','Comfy Wolly','comfy-wolly','comfy1.jpg','comfy2.jpg','comfy1.jpg',39,'vlnene papuce, vlna','<p>Vlnen&eacute; papuÄe na doma</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu scelerisque purus, et semper libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris pretium turpis at risus interdum posuere. Nulla eget consequat leo. In hac habitasse platea dictumst. Proin hendrerit leo eu orci aliquam, vel auctor metus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>','<p>&lt;iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L_LUpnjgPso\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen&gt;&lt;/iframe&gt;</p>','new',0),(5,14,10,7,'2020-11-29 20:22:13','Beach Bamboo','beach-bamboo','ecoflops1.jpg','ecoflops2.jpg','',59,'ecoflops, bambus, eko','<p>Super eko bio bambusov&eacute; flip flopy!</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu scelerisque purus, et semper libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris pretium turpis at risus interdum posuere. Nulla eget consequat leo. In hac habitasse platea dictumst. Proin hendrerit leo eu orci aliquam, vel auctor metus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>','<p>&lt;iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gUnK_xeUPgg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen&gt;&lt;/iframe&gt;</p>','sale',49),(6,9,7,8,'2020-11-29 20:24:55','Blu Heart Kid','blu-heart-kid','d1.jpg','d2.jpg','',29,'vlnene papuce, vlna','<p>Super vlnen&eacute; tepl&eacute; papuÄky pre deti od Wolly z ovÄej vlny</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu scelerisque purus, et semper libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris pretium turpis at risus interdum posuere. Nulla eget consequat leo. In hac habitasse platea dictumst. Proin hendrerit leo eu orci aliquam, vel auctor metus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>','<p>&lt;iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L_LUpnjgPso\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen&gt;&lt;/iframe&gt;</p>','sale',19),(7,12,8,11,'2020-12-01 23:40:16','Leather Dad','leather-dad','leather2.jpg','leather3.jpg','leather1.jpg',49,'kozene papuce, slapky','<p>KoÅ¾en&eacute; papuÄe, v ktor&yacute;ch m&ocirc;Å¾ete &iacute;sÅ¥ vyniesÅ¥ smeti</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu scelerisque purus, et semper libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris pretium turpis at risus interdum posuere. Nulla eget consequat leo. In hac habitasse platea dictumst. Proin hendrerit leo eu orci aliquam, vel auctor metus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc malesuada in dolor vitae scelerisque. Aenean accumsan convallis lectus, in feugiat ligula fermentum sit amet. Morbi pulvinar tempor turpis ut consequat. Mauris mauris mauris, ultricies sit amet leo ac, pulvinar fermentum magna. Vestibulum sed mi auctor, pharetra urna pharetra, aliquam massa.</p>','                                                                                                                                                                                                            ','new',0),(8,13,10,10,'2020-11-29 20:30:46','Hotelovky','hotelovky','hotel.jpg','hotel2.jpg','hotel3.jpg',19,'hotelovky, hotelove papuce','<p>Pohodln&eacute; hotelov&eacute; papuÄe</p>','<p>100% &scaron;anca, Å¾e ich hotelov&iacute; hostia ukradn&uacute;</p>','<p>&lt;iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QwaoqKPupsE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen&gt;&lt;/iframe&gt;</p>','',0),(9,9,9,8,'2020-12-02 19:52:21','Pinky Wolly','pinky-wolly','z1.jpg','z2.jpg','z3.jpg',39,'vlnene papuce, vlna, ruzove, damske','<p>VeÄ¾mi pekn&eacute; vlnen&eacute; papuÄe pre d&aacute;my.</p>','<p>RuÅ¾ov&aacute;! RuÅ¾ovej&scaron;ia nebola.</p>','','sale',29),(10,11,7,9,'2020-11-29 20:34:42','Super Kid','super-kid','kids3.jpg','kids1.jpg','kids2.jpg',29,'detske papuce, papuce pre deti','<p>Hrav&eacute; farebn&eacute; papuÄe pre deti v Äervenej farbe. Vhodn&eacute; ako prez&uacute;vky.</p>','<p>Ale Å¾e top prez&uacute;vky, v ktor&yacute;ch sa bude lietaÅ¥ po chodb&aacute;ch ako nikdy predt&yacute;m.</p>','<p>&lt;iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PKM5wlHHgRQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen&gt;&lt;/iframe&gt;</p>','',0),(11,14,10,12,'2020-12-01 23:38:25','Flip Flops Surf','flip-flops-surf','flop1.jpg','flop2.jpg','flop3.jpg',19,'flops, flip','<p>Gumenn&eacute; flip flops k moru.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu scelerisque purus, et semper libero. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>','                                    <p><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gUnK_xeUPgg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ','new',0),(12,10,9,11,'2020-11-29 20:42:46','Å½ltÃ© papuÄe','zlte-papuce','pa1.jpg','pa2.jpg','pa3.jpg',69,'papuce damske','<p>Komfortn&eacute; papuÄe na doma</p>','<p>Tu uÅ¾ copywriter odi&scaron;iel sk&ocirc;r domov a nenap&iacute;sal.</p>','','sale',59);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (2,'jarna','jarna.png','shop.php'),(3,'ecoflops','ecoflops.png','shop.php'),(5,'100% vlna','wolly.png','shop.php');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL AUTO_INCREMENT,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms`
--

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
INSERT INTO `terms` VALUES (1,'Terms & Conditions','termLink','Vivamus lorem sed eros tristique, eu bibendum tellus consequat. Suspendisse quis convallis neque. Sed faucibus ac nulla ac viverra. Cras in sapien sed est mattis egestas ac at quam. Nullam condimentum urna in justo volutpat tristique sed eleifend eros. Praesent consectetur interdum euismod. '),(2,'Refund Policty','refundLink','Cras in sapien sed est mattis egestas ac at quam. Nullam condimentum urna in justo volutpat tristique sed eleifend eros. Praesent consectetur interdum euismod. '),(8,'Other term','otherterm','Ut accumsan tincidunt viverra. Etiam vulputate maximus metus, at sodales eros mollis nec. Maecenas scelerisque auctor purus sit amet luctus. Nulla facilisi. Quisque ac venenatis leo. Suspendisse aliquet, felis at pharetra sollicitudin, nunc magna fringilla elit, eleifend fermentum sapien libero at metus. Phasellus efficitur fermentum feugiat. Maecenas id enim in risus finibus congue vel et nisl. Duis rhoncus vulputate purus, quis vulputate diam sodales sit amet. Nulla sodales blandit diam, hendrerit varius metus dictum nec. Suspendisse vestibulum, ligula eu hendrerit porttitor, nulla tortor dapibus ex, vel volutpat urna ex et urna. Quisque efficitur ipsum ac neque dictum hendrerit. Aliquam consectetur, sem mollis imperdiet semper, dui risus sodales elit, ut congue diam turpis vitae dui.');
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'papoochaDB6'
--

--
-- Dumping routines for database 'papoochaDB6'
--
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 16:53:30
