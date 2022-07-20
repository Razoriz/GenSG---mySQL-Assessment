
CREATE DATABASE `assessment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `progress` (
  `user_id` varchar(45) NOT NULL,
  `learn_cpp` varchar(45) DEFAULT NULL,
  `learn_sql` varchar(45) DEFAULT NULL,
  `learn_html` varchar(45) DEFAULT NULL,
  `learn_javascript` varchar(45) DEFAULT NULL,
  `learn_java` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `user_id` varchar(45) NOT NULL,
  `email_domain` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `postal` varchar(10) DEFAULT NULL,
  `mobile_app` varchar(45) DEFAULT NULL,
  `sign_up_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



