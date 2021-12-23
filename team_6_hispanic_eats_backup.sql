CREATE DATABASE  IF NOT EXISTS `hispanic_eats` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hispanic_eats`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: hispanic_eats
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Address` (
  `address_id` int NOT NULL,
  `street` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `zipcode` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (123,'6209 Georgia Ave NW','Washington, DC','20011'),(124,'1823 L Street Northwest','Washington, DC','20036'),(125,'3903-3905 14th Street Northwest','Washington, DC','20011'),(126,'401 7th St NW','Washington, DC','20004'),(127,'401 7th St NW','Washington, DC','20023'),(128,'1280 4th Street NE','Washington, DC','20002'),(129,'1227 11th Street NW','Washington, DC','20001'),(130,'2314 4th Street NE','Washington, DC','20002'),(131,'418 7th Street NW','Washington, DC','20004'),(132,'3910 14th St NW','Washington, DC','20011'),(133,'401 7th Street NW','Washington, DC','20004'),(134,'3612 14th St NW #1488','Washington, DC','20010'),(135,'1300 I St NW','Washington, DC','20005'),(136,'1834 Columbia Rd NW','Washington, DC','20009'),(137,'4515 Wisconsin Ave NW','Washington, DC','20016'),(138,'3500 Connecticut Ave NW','Washington, DC','20008'),(139,'827 Kennedy St NW','Washington, DC','20011'),(140,'1100 8th St SE','Washington, DC','20003');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Area`
--

DROP TABLE IF EXISTS `Area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Area` (
  `area_id` int NOT NULL,
  `neighborhood` varchar(250) DEFAULT NULL,
  `landmarks` varchar(250) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Area`
--

LOCK TABLES `Area` WRITE;
/*!40000 ALTER TABLE `Area` DISABLE KEYS */;
INSERT INTO `Area` VALUES (1221,'Downtown','Near Farragut North Metro','Situated in the bustling and vibrant Dupont Circle neighborhood.'),(1222,'Downtown','Near the National Bureau of Asian Research','Situated near M&T Bank, Poki DC, the Quincy and RL hotels and the National Bureau of Asian Research.'),(1223,'Brightwood Park','Petworth, Washington DC','3903-3905 14th St NW, Washington, DC.'),(1224,'Federal Triangle','National Gallery of Art','Near FBI HQ, adjacent to D St NW.'),(1225,'Noma','Near NEIGHBORS DC(market)','1280 4th St NE.'),(1226,'Mt Vernon Square','Galluadet University','Near Logan Circle and Thomas Circle.'),(1227,'Edgewood','Rhode Island Ave-Brentwood Metro','Located at 2314 4th St NE. Washington, DC.'),(1228,'Penn Quarter','National Gallery of Art','Near the US Navy Memorial Plaza and National Gallery of Art.'),(1229,'Columbia Heights','Columbia Heights Metro','Near Columbia Heights Civic Plaza. 1424 Park Rd NW.'),(1230,'Crestwood','Upshur Park','Around Upshur Park, located in 3910 14th St NW DC.'),(1231,'Brightwood Park','Fort Slocum Park','El Pulgarcito Restaurant and Bar is a family-owned Latin restaurant and sports bar located in Washington, DC. 5313 Georgia Ave NW.'),(1232,'Mt.Pleasant','Piney Branch Park','14th Street in Columbia Heights DC.'),(1233,'Downtown','The White House','1300 I ST NW, Washington DC. NEAR FRANKLIN PARK and THE WHITE HOUSE.'),(1234,'Adams Morgan','Kalorama Park','THE ADAMS MORGAN NEIGHBORHOOD.'),(1235,'Foggy Bottom','Georgetown Waterfront Park','Near Washington National Cathedral.'),(1236,'Cleveland Park','Washington National Cathedral','3500 Connecticut Ave NW.'),(1237,'Brightwood Park','Fort Slocum Park','827 Kennedy St NW, Washington, DC 20011.'),(1238,'Navy Yard','US Navy Museum','1100 8th St SE, Washington, DC.');
/*!40000 ALTER TABLE `Area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `area_restaurants`
--

DROP TABLE IF EXISTS `area_restaurants`;
/*!50001 DROP VIEW IF EXISTS `area_restaurants`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `area_restaurants` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `street`,
 1 AS `city`,
 1 AS `zipcode`,
 1 AS `neighborhood`,
 1 AS `landmarks`,
 1 AS `description`,
 1 AS `avg_star_rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cuban_salvadorian`
--

DROP TABLE IF EXISTS `cuban_salvadorian`;
/*!50001 DROP VIEW IF EXISTS `cuban_salvadorian`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cuban_salvadorian` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `type_id`,
 1 AS `cuisine`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cuisine_ratings`
--

DROP TABLE IF EXISTS `cuisine_ratings`;
/*!50001 DROP VIEW IF EXISTS `cuisine_ratings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cuisine_ratings` AS SELECT 
 1 AS `type_id`,
 1 AS `cuisine`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `downtown_restaurants`
--

DROP TABLE IF EXISTS `downtown_restaurants`;
/*!50001 DROP VIEW IF EXISTS `downtown_restaurants`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `downtown_restaurants` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `neighborhood`,
 1 AS `street`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employee_list`
--

DROP TABLE IF EXISTS `employee_list`;
/*!50001 DROP VIEW IF EXISTS `employee_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_list` AS SELECT 
 1 AS `badge_number`,
 1 AS `employee`,
 1 AS `position`,
 1 AS `restaurant_id`,
 1 AS `restaurant_name`,
 1 AS `owner`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Food`
--

DROP TABLE IF EXISTS `Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Food` (
  `type_id` int NOT NULL,
  `country_of_origin` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food`
--

LOCK TABLES `Food` WRITE;
/*!40000 ALTER TABLE `Food` DISABLE KEYS */;
INSERT INTO `Food` VALUES (828,'Mexican'),(829,'Peruvian'),(830,'Latin American'),(831,'Cuban'),(832,'Tex-Mex'),(833,'Salvadorian');
/*!40000 ALTER TABLE `Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `hispanic_restaurant_count`
--

DROP TABLE IF EXISTS `hispanic_restaurant_count`;
/*!50001 DROP VIEW IF EXISTS `hispanic_restaurant_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hispanic_restaurant_count` AS SELECT 
 1 AS `cuisine`,
 1 AS `origin count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latin_mexican`
--

DROP TABLE IF EXISTS `latin_mexican`;
/*!50001 DROP VIEW IF EXISTS `latin_mexican`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latin_mexican` AS SELECT 
 1 AS `restaurant_id`,
 1 AS `restaurant_name`,
 1 AS `phone_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Manager_Supervisor`
--

DROP TABLE IF EXISTS `Manager_Supervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manager_Supervisor` (
  `employee_id` int NOT NULL,
  `fname` varchar(250) DEFAULT NULL,
  `lname` varchar(250) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `restaurant_id` int NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `restaurant_id_idx` (`restaurant_id`),
  CONSTRAINT `restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manager_Supervisor`
--

LOCK TABLES `Manager_Supervisor` WRITE;
/*!40000 ALTER TABLE `Manager_Supervisor` DISABLE KEYS */;
INSERT INTO `Manager_Supervisor` VALUES (510,'Josiah','Grant','Cashier',1),(511,'Deshawn','Cyrpess','Waiter',2),(512,'Kevin ','Brown','Cashier',3),(513,'Corey','Shell','Waiter',4),(514,'Keith','Williams','Cashier',5),(515,'Von','Devuaghn','Waiter',6),(516,'Dyshawn','Payne','Cashier',7),(517,'Charles','Pitt','Waiter',8),(518,'Devin','Beckford','Cashier',9),(519,'Kearie','Holliday','Waiter',10),(520,'Camrin','Holloman','Cashier',11),(521,'Terry','Jones','Waiter',12),(522,'Deontae','Solice','Cashier',13),(523,'Diego','Richardo','Waiter',14),(524,'Cleveland ','Gordon','Cashier',15),(525,'Dalon','Harris','Waiter',16),(526,'Joshua','Williams','Cashier',17),(527,'Eryk','Goode','Waiter',18),(528,'Niya','Jackson','Waiter',1),(529,'Keasia','Smith','Cashier',2),(530,'Tenae','Minor','Waiter',3),(531,'Kaelyn ','Woodrum','Cashier',4),(532,'Christine','Taylor','Waiter',5),(533,'Auhjile','Hillard','Cashier',6),(534,'Taylor','Wright','Waiter',7),(535,'Kishona','Steele','Cashier',8),(536,'Alexis','Barnes','Waiter',9),(537,'Destinee','Mcloud','Cashier',10),(538,'Taylor ','Skinner','Waiter',11),(539,'Juliane','Cherry','Cashier',12),(540,'Thalia ','Summervile','Waiter',13),(541,'Kaelyn ','Carter','Cashier',14),(542,'Nikeita','Williams','Waiter',15),(543,'Yacenta','Nelson','Cashier',16),(544,'Keona ','Jones','Waiter',17),(545,'Chanell','Devuaghn','Cashier',18);
/*!40000 ALTER TABLE `Manager_Supervisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Owner`
--

DROP TABLE IF EXISTS `Owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Owner` (
  `owner_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(250) DEFAULT NULL,
  `lname` varchar(250) DEFAULT NULL,
  `office_number` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Owner`
--

LOCK TABLES `Owner` WRITE;
/*!40000 ALTER TABLE `Owner` DISABLE KEYS */;
INSERT INTO `Owner` VALUES (321,'Armando','Chef','202-722-1440','contact@eldoradobread.com'),(322,'Jose','Martin','202-559-3726','jmartin@piscoynazca.com '),(323,'Josefina','Darui','202-481-0511.','josdarui@dccorazon.com'),(324,'Jose','Andres','202-638-2381','jandres@thinkfoodgroup.com'),(325,'Ernesto','Delgado','202-722-0983','ernesto.delgado@lacosecha.com'),(326,'Alfredo','Solis','771-831-7962','asolis@elsolrestaurante.com'),(327,'Jorge ','Perez','202-931-8421','jorgeperez@huacatay.com'),(328,'Jose','Andres','202-638-1910','jandres@joseandres.com'),(329,'Jacqueline','Castro-Lopez','202-555-0461','jcastrolopez@micubacafe.com'),(330,'Jamie','Surprenant','202-506-7383','jsurprenant@anejogrill.com'),(331,'Marvin A ','Segovia','240-492-9522','msergovia@elamigo.com'),(332,'Don','Juan','704-938-1111','info@elamigomexicanrestaurant.com'),(333,'Richard ','Sandoval','646-285-0796','rsandoval@richardsandoval.com'),(334,'Pepe ','Lujan','202-975-1928','info@habanavillage.com'),(335,'Hector','Rincon','703-330-5382','Rincons@gmail.com'),(336,'Shane','Laredo','202-966-2530','slaredo1@yahoo.com'),(337,'Josef','Centeno','202-882-1919','chefjosefcenteno@gmail.com'),(338,'Jose ','Amaya','202-543-3700','jamya@yahoo.com');
/*!40000 ALTER TABLE `Owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurant`
--

DROP TABLE IF EXISTS `Restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(250) DEFAULT NULL,
  `area_id` int NOT NULL,
  `phone_number` varchar(250) DEFAULT NULL,
  `address_id` int NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`),
  KEY `area_id_idx` (`area_id`),
  KEY `fk_Restaurant_Address1_idx` (`address_id`),
  CONSTRAINT `area_id` FOREIGN KEY (`area_id`) REFERENCES `Area` (`area_id`),
  CONSTRAINT `fk_Restaurant_Address1` FOREIGN KEY (`address_id`) REFERENCES `Address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurant`
--

LOCK TABLES `Restaurant` WRITE;
/*!40000 ALTER TABLE `Restaurant` DISABLE KEYS */;
INSERT INTO `Restaurant` VALUES (1,'El Dorado Bread',1221,'202-722-1440',123,'Grilled meats.'),(2,'Pisco y Nazca Ceviche Gastrobar DC',1222,'202-559-3726',124,'Pisco y Nazca Ceviche Gastrobar adds a modern twist to Peruvian cuisine. Inspired by Peru’s top eateries, the new DC outpost serves up bold-flavored dishes, unique cocktails and a vast selection of local and international beers.'),(3,'DC Corazon Fonda & Tequileria',1223,'202-481-0511',125,'DC Corazon serves authentic Mexican food in Petworth, Washington,DC.'),(4,'Oyamel Cocina Mexicana',1224,'202-628-1005',126,'Oyamel\'s menus explore the rich regional diversity of Mexican cuisine, featuring antojitos—Mexican small plates—ceviches and tacos.'),(5,'La Cosecha',1225,'202-444-4590',127,'La Cosecha is a contemporary market celebrating Latin American culture and conversation. Together, we engage through authentic flavors, art and heritage.'),(6,'El Sol Restaurante & Tequileria',1226,'202-815-4789',128,'El Sol Restaurante & Tequileria in Washington, DC serves authentic Mexican cuisine inspired by the heritage of chef Alfredo Solis and his sister, Jessica.'),(7,'Huacatay Peruvian Chicken',1227,'202-795-9940',129,'Peruvian spices are used in the roast chicken dishes on the menu of this relaxed cafe.'),(8,'China Chilcano',1228,'202-783-0941',130,'At China Chilcano, the union of Peruvian Criollo, Chinese Chifa and Japanese Nikkei is an exciting journey into a world of exciting culinary juxtapositions.'),(9,'Mi Cuba Café',1229,'202-566-0013',131,'Mi Cuba Café has the diverse and deep aromas and flavors of Cuba that will keep you coming back for more. Some of the delicious options at Mi Cuba Café include churrasco, an entrée made with skirt steak, masas de cerdo fritas which is fried pork with onion, and of course the restaurant has the traditional Cuban sandwich, complete with the ‘proper’ Cuban bread.'),(10,'Anejo Bar and Grill',1230,'202-506-7383',132,'Great TEX-MEX style cooking! Mexican restaurant.'),(11,'El Pulgarcito Restaurant and Bar',1231,'202-846-2591',133,'Latin restaurant and sports bar located in Washington,DC that specializes in Latin cuisine. We provide a cozy, family restaurant atmosphere and delicious Mexican and Salvadoran dishes you are sure to love.'),(12,'El Amigo',1232,'202-722-5084',134,'A DC hidden spot overlooked by all the new restaurants and bar, but with one of the most authentic Salvadoran food in DC. You’ll find pupusas, tamales de elote, tamales de pollo and more.'),(13,'Toro Toro',1233,'202-682-9500',135,'Toro Toro offers a twist on the contemporary tapas experience, blending Pan Latin flavors and creative sharing plates.'),(14,'Habana Village',1234,'202-975-1927',136,'In addition to serving traditional cuban dishes, Habana Village offers iconic dishes from various Latin American countries.'),(15,'\'Guapo\'s Restaurant\'',1235,'202-686-3588',137,'From colorful sombreros to our authentic mesquite grill, Guapos will supply you with everything needed to create a memorable and delicious fiesta.\"'),(16,'Laredo DC Restaurant',1236,'202-966-2530',138,'Our recipes are authentic and time-tested. The ingredients are always fresh. The result? A menu that bursts with Mexican flavor.'),(17,'\'Centeno\'s Restaurant\'',1237,'202-882-1919',139,'Fajitas de beef, a chicken quesadilla, horchata.'),(18,'Las Placitas',1238,'202-543-3700',140,'Salvadoran seafood & pupusas, plus basic Mexican fare & margaritas, served in a relaxing space.');
/*!40000 ALTER TABLE `Restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurant_Food`
--

DROP TABLE IF EXISTS `Restaurant_Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Restaurant_Food` (
  `type_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  PRIMARY KEY (`type_id`,`restaurant_id`),
  KEY `fk_Food_has_Restaurant_Restaurant1_idx` (`restaurant_id`),
  KEY `fk_Food_has_Restaurant_Food1_idx` (`type_id`),
  CONSTRAINT `fk_Food_has_Restaurant_Food1` FOREIGN KEY (`type_id`) REFERENCES `Food` (`type_id`),
  CONSTRAINT `fk_Food_has_Restaurant_Restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurant_Food`
--

LOCK TABLES `Restaurant_Food` WRITE;
/*!40000 ALTER TABLE `Restaurant_Food` DISABLE KEYS */;
INSERT INTO `Restaurant_Food` VALUES (828,1),(829,2),(828,3),(828,4),(830,5),(828,6),(829,7),(829,8),(831,9),(832,10),(833,11),(833,12),(830,13),(831,14),(832,15),(832,16),(830,17),(830,18);
/*!40000 ALTER TABLE `Restaurant_Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurant_Owner`
--

DROP TABLE IF EXISTS `Restaurant_Owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Restaurant_Owner` (
  `restaurant_id` int NOT NULL,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`restaurant_id`,`owner_id`),
  KEY `fk_Restaurant_has_Owner_Owner1_idx` (`owner_id`),
  KEY `fk_Restaurant_has_Owner_Restaurant1_idx` (`restaurant_id`),
  CONSTRAINT `fk_Restaurant_has_Owner_Owner1` FOREIGN KEY (`owner_id`) REFERENCES `Owner` (`owner_id`),
  CONSTRAINT `fk_Restaurant_has_Owner_Restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurant_Owner`
--

LOCK TABLES `Restaurant_Owner` WRITE;
/*!40000 ALTER TABLE `Restaurant_Owner` DISABLE KEYS */;
INSERT INTO `Restaurant_Owner` VALUES (1,321),(2,322),(3,323),(4,324),(5,325),(6,326),(7,327),(8,328),(9,329),(10,330),(11,331),(12,332),(13,333),(14,334),(15,335),(16,336),(17,337),(18,338);
/*!40000 ALTER TABLE `Restaurant_Owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `restaurant_rating`
--

DROP TABLE IF EXISTS `restaurant_rating`;
/*!50001 DROP VIEW IF EXISTS `restaurant_rating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `restaurant_rating` AS SELECT 
 1 AS `avg_star_rating`,
 1 AS `restaurant_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Review` (
  `review_id` int NOT NULL,
  `review_desc` varchar(1000) DEFAULT NULL,
  `avg_star_rating` varchar(250) DEFAULT NULL,
  `restaurant_id` int NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `fk_Review_Restaurant1_idx` (`restaurant_id`),
  CONSTRAINT `fk_Review_Restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (770,'\'I like their food if you\'re willing to eat heavy food once in a while. Their food tastes great. Don\'t go if you\'re vegetarian or like to eat salads. And their chicken sandwiches are so good, a little bit pricey but good. But they are not what you expect from a traditional sandwich.\'','5',1),(771,'We made reservations for a Friday night, glad we did- as the place was packed! It was busy for good reason, the food and drinks were delicious. We ordered a pisco sour flight and were then offered a tasting menu. The amount of food was surprisingly abundant given the cost. It was a fun experience and highly recommend.','4.5',2),(772,'\'If you want 100% authentic Mexican food, this is the place to go! The food is amazing, the service is great, and the environment feels like you were in Mexico. I ordered enchiladas verdes and my husband had tacos and we both were very pleased with the flavor and the presentation of the plates. We love this place so much that we\'ll be back next week with family. 100% recommended.\'','4.6',3),(773,'Oyamel never disappoints! I have eaten here several times now: the service is excellent and the food is very good. They have some very creative Mexican dishes; the tortillas are wonderful, as is the guacamole. There is a great selection of small dishes, so you get a chance to try a lot of different food. Our service has always been attentive and friendly. Make a reservation; it is a popular place!','4',4),(774,'I loved this place. It was something that I will continue to come back to and the food was amazing! Great community space.','4.6',5),(775,'Best Mexican place in DC so far and that alone can grant a 5-star rating. Worth noting that outdoor sitting has a nice view but indoors could use some music to create a more pleasant experience. Other than that, food and drinks are good and authentic!','4.4',6),(776,'Stopped here for lunch after seeing Google reviews. It was ah-maz-ing! The staff were so nice and helpful to me and my kids and the food was just phenomenal. Try it‚ you wont be disappointed.','4.6',7),(777,'Great service, cocktails, and overall menu. A pisco sour and the yucca fries are a must when stopping by here. Tuna donburi and the very creative ponderaciones de kiwicha will make you leave with a happy belly.','4.4',8),(778,'First time here and couldnt have enjoyed my experience better! From the service, the music and the amazing food!! Totally recommend this place!','4.6',9),(779,'I loved this place! Yesterday was my first time going back out since the pandemic started, not only that they have HAPPY HOUR UNTIL 9 the food tastes so good and they have a very friendly environment. The waitresses are so nice and funny. My waitress made me feel so comfortable, she suggested a few of their best dishes and drinks and she did not disappointed me. Looking forward to go back real soon!','4.4',10),(780,'Nice food. Crazy and wild patrons/customers.','3.8',11),(781,'Good food but need to be a little more cleaner and too many dirty people in the front of the place.','4.2',12),(782,'\'Solid brunch spot. They do offer a bottomless brunch special. The food was really good. Our waiter was nice, this place gets packed for brunch, they do have lots of seating though. It\'s well decorated and gives off very chill vibes.\'','4.2',13),(783,'\'Love the place, the owners are there greeting you and making sure you\'re having a good time. Music is terrific. Salsa lessons and ladies night are the best.\'','4.3',14),(784,'Great Mexican food!  They have a large menu with many good options. Classics like tacos, enchiladas and fajitas are sure to please. I found that they are very fast bringing the food out too which is really nice.  Plenty of indoor and some outdoor seating as well. Excellent service rounds it all out!','4.4',15),(785,'Excellent customer service,very good food. I visited this place many times. Fresh food.','4',16),(786,'Great food and great service! Tilapia was amazing, cooked and seasoned to perfection, also large portions!','4.4',17),(787,'It a quaint little hole in the wall with fantastic food quality service and very reasonable prices. From the outside you would ride right pass it but as the old saying says ‚dont ever judge a book by its cover. My family and I will definitely be returning soon.','4.3',18);
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `area_restaurants`
--

/*!50001 DROP VIEW IF EXISTS `area_restaurants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `area_restaurants` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`address`.`street` AS `street`,`address`.`city` AS `city`,`address`.`zipcode` AS `zipcode`,`area`.`neighborhood` AS `neighborhood`,`area`.`landmarks` AS `landmarks`,`area`.`description` AS `description`,`review`.`avg_star_rating` AS `avg_star_rating` from (((`area` join `restaurant` on((`area`.`area_id` = `restaurant`.`area_id`))) join `address` on((`restaurant`.`address_id` = `address`.`address_id`))) join `review` on((`restaurant`.`restaurant_id` = `review`.`restaurant_id`))) where (`address`.`zipcode` >= 20011) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cuban_salvadorian`
--

/*!50001 DROP VIEW IF EXISTS `cuban_salvadorian`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cuban_salvadorian` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`food`.`type_id` AS `type_id`,`food`.`country_of_origin` AS `cuisine`,`restaurant`.`description` AS `description` from ((`restaurant` join `restaurant_food` on((`restaurant`.`restaurant_id` = `restaurant_food`.`restaurant_id`))) join `food` on((`restaurant_food`.`type_id` = `food`.`type_id`))) where ((`food`.`country_of_origin` = 'Cuban') or (`food`.`country_of_origin` = 'Salvadorian')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cuisine_ratings`
--

/*!50001 DROP VIEW IF EXISTS `cuisine_ratings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cuisine_ratings` AS select `food`.`type_id` AS `type_id`,`food`.`country_of_origin` AS `cuisine`,round(avg(`review`.`avg_star_rating`),2) AS `rating` from (((`food` join `restaurant_food` on((`food`.`type_id` = `restaurant_food`.`type_id`))) join `restaurant` on((`restaurant_food`.`restaurant_id` = `restaurant`.`restaurant_id`))) join `review` on((`restaurant_food`.`restaurant_id` = `review`.`restaurant_id`))) group by `food`.`type_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `downtown_restaurants`
--

/*!50001 DROP VIEW IF EXISTS `downtown_restaurants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `downtown_restaurants` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`area`.`neighborhood` AS `neighborhood`,`address`.`street` AS `street` from ((`restaurant` join `area` on((`restaurant`.`area_id` = `area`.`area_id`))) join `address` on((`restaurant`.`address_id` = `address`.`address_id`))) where (`area`.`neighborhood` = 'Downtown') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_list`
--

/*!50001 DROP VIEW IF EXISTS `employee_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_list` AS select `manager_supervisor`.`employee_id` AS `badge_number`,concat(`manager_supervisor`.`fname`,' ',`manager_supervisor`.`lname`) AS `employee`,`manager_supervisor`.`position` AS `position`,`manager_supervisor`.`restaurant_id` AS `restaurant_id`,`restaurant`.`restaurant_name` AS `restaurant_name`,concat(`owner`.`fname`,' ',`owner`.`lname`) AS `owner` from (((`manager_supervisor` join `restaurant` on((`manager_supervisor`.`restaurant_id` = `restaurant`.`restaurant_id`))) join `restaurant_owner` on((`manager_supervisor`.`restaurant_id` = `restaurant_owner`.`restaurant_id`))) join `owner` on((`restaurant_owner`.`owner_id` = `owner`.`owner_id`))) order by `manager_supervisor`.`position` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hispanic_restaurant_count`
--

/*!50001 DROP VIEW IF EXISTS `hispanic_restaurant_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hispanic_restaurant_count` AS select `food`.`country_of_origin` AS `cuisine`,count(0) AS `origin count` from ((`restaurant` join `restaurant_food` on((`restaurant`.`restaurant_id` = `restaurant_food`.`restaurant_id`))) join `food` on((`restaurant_food`.`type_id` = `food`.`type_id`))) group by `food`.`country_of_origin` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latin_mexican`
--

/*!50001 DROP VIEW IF EXISTS `latin_mexican`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `latin_mexican` AS select `restaurant`.`restaurant_id` AS `restaurant_id`,`restaurant`.`restaurant_name` AS `restaurant_name`,`restaurant`.`phone_number` AS `phone_number` from (`restaurant` join `restaurant_food` on((`restaurant`.`restaurant_id` = `restaurant_food`.`restaurant_id`))) where `restaurant_food`.`type_id` in (select `food`.`type_id` from `food` where ((`food`.`country_of_origin` = 'Mexican') or (`food`.`country_of_origin` = 'Latin American'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `restaurant_rating`
--

/*!50001 DROP VIEW IF EXISTS `restaurant_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `restaurant_rating` AS select `review`.`avg_star_rating` AS `avg_star_rating`,`restaurant`.`restaurant_name` AS `restaurant_name` from (`review` join `restaurant` on((`review`.`restaurant_id` = `restaurant`.`restaurant_id`))) order by `review`.`avg_star_rating` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15 23:44:17
