

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `department` WRITE;
INSERT INTO `department` VALUES (1,'Enterprise Architecture'),(2,'UI/UX'),(3,'HR'),(4,'Cloud Solutions');
UNLOCK TABLES;



DROP TABLE IF EXISTS `designation`;
CREATE TABLE `designation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `designation` WRITE;
INSERT INTO `designation` VALUES (1,'Manager'),(2,'Assocaite Manager'),(3,'Software Developer');

UNLOCK TABLES;



DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Designation_id` int DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Manager_id` int DEFAULT NULL,
  `Department_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`Department_id`),
  KEY `id_idx1` (`Designation_id`),
  CONSTRAINT `id` FOREIGN KEY (`Department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `employee` WRITE;
INSERT INTO `employee` VALUES (1,'Jane Doe',1,'jane@gmail.com',NULL,1),(2,'jane',1,'sdfsdf',2,2),(32,'jane',1,'sdfsdf',2,2),(33,'Johnasfasdasd1 Doe123',1,'johasdfsfsdfsdfsdn1@gmail.com',1,1),(34,'Jane Doe',1,'jane@gmail.com',1,1);
UNLOCK TABLES;
