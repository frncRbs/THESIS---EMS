/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.27-MariaDB : Database - db_employ
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_employ` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_employ`;

/*Table structure for table `curriculum_result` */

DROP TABLE IF EXISTS `curriculum_result`;

CREATE TABLE `curriculum_result` (
  `curriculum_id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculum_year` varchar(150) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`curriculum_id`),
  UNIQUE KEY `curriculum_year` (`curriculum_year`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `curriculum_result` */

insert  into `curriculum_result`(`curriculum_id`,`curriculum_year`,`created_by`,`date_created`) values (1,'2007 - 2008','CCSadmin01','2023-01-08 10:43:08'),(3,'2016 - 2018','CCSadmin01','2023-01-08 10:44:40'),(4,'2019 - 2020','CCSadmin01','2023-01-08 10:44:58'),(5,'2023 - 2025','CCSadmin01','2023-01-08 10:45:11');

/*Table structure for table `prediction_result` */

DROP TABLE IF EXISTS `prediction_result`;

CREATE TABLE `prediction_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `desired_job` varchar(150) DEFAULT NULL,
  `top_rank` varchar(150) DEFAULT NULL,
  `main_rank` varchar(255) NOT NULL,
  `sub_rank1` varchar(255) NOT NULL,
  `sub_rank2` varchar(255) NOT NULL,
  `sub_rank3` varchar(15) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `prediction_result_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `prediction_result` */

insert  into `prediction_result`(`result_id`,`desired_job`,`top_rank`,`main_rank`,`sub_rank1`,`sub_rank2`,`sub_rank3`,`user_id`,`date_created`) values (185,'Technical Support Specialist','Technical Support Specialist','Technical Support Specialist : 100%','Academician : 33%','Administrative Assistant : 67%','No Result',43,'2023-01-07 22:53:19'),(190,'Technical Support Specialist','Technical Support Specialist','Technical Support Specialist : 100%','Academician : 50%','Administrative Assistant : 50%','No Result',41,'2023-01-07 23:01:45'),(207,'Technical Support Specialist','Technical Support Specialist','Technical Support Specialist : 50%','Academician : 50%','Administrative Assistant : 50%','No Result',41,'2023-01-08 00:56:28'),(208,'Software Engineer / Programmer','Technical Support Specialist','Technical Support Specialist : 67%','No Result','Administrative Assistant : 33%','No Result',43,'2023-01-08 01:02:53'),(211,'Software Engineer / Programmer','Software Engineer / Programmer','Software Engineer / Programmer : 67%','Academician : 33%','Administrative Assistant : 67%','No Result',42,'2023-01-08 01:52:01'),(212,'Software Engineer / Programmer','Software Engineer / Programmer','Software Engineer / Programmer : 50%','Academician : 50%','Administrative Assistant : 50%','No Result',42,'2023-01-01 01:53:20'),(213,'Software Engineer / Programmer','Software Engineer / Programmer','Software Engineer / Programmer : 50%','Academician : 50%','Administrative Assistant : 50%','No Result',40,'2023-01-09 01:37:09'),(317,'Academician','Technical Support Specialist','Technical Support Specialist : 67%','Academician : 33%','Administrative Assistant : 67%','No Result',40,'2023-01-18 23:34:57'),(318,'Technical Support Specialist','Technical Support Specialist','Technical Support Specialist : 67%','Academician : 33%','Administrative Assistant : 67%','No Result',41,'2023-01-20 22:28:29'),(319,'Administrative Assistant','Technical Support Specialist','Technical Support Specialist : 50%','No Result','Administrative Assistant : 50%','No Result',41,'2023-01-20 22:29:54'),(322,'Technical Support Specialist','Software Engineer / Programmer','Software Engineer / Programmer : 67%','No Result','Administrative Assistant : 33%','No Result',45,'2023-01-24 20:13:24'),(347,'Software Engineer / Programmer','Software Engineer / Programmer','Software Engineer / Programmer : 100%','No Result','No Result','No Result',44,'2023-01-26 15:18:13'),(348,'Software Engineer / Programmer','Software Engineer / Programmer','Software Engineer / Programmer : 100%','Academician : 50%','Administrative Assistant : 50%','No Result',44,'2023-01-26 15:20:03'),(351,'Academician','Software Engineer / Programmer','Software Engineer / Programmer : 67%','No Result','Administrative Assistant : 33%','No Result',64,'2023-01-27 20:51:38'),(352,'Academician','Technical Support Specialist','Technical Support Specialist : 50%','Academician : 50%','Administrative Assistant : 50%','No Result',64,'2023-01-27 20:53:55'),(353,'Academician','Software Engineer / Programmer','Software Engineer / Programmer : 67%','No Result','Administrative Assistant : 33%','No Result',64,'2023-01-27 20:55:21'),(354,'Software Engineer / Programmer','Technical Support Specialist','Technical Support Specialist : 67%','Academician : 33%','Administrative Assistant : 33%','No Result',64,'2023-01-27 21:04:10'),(357,'Academician','Technical Support Specialist','Technical Support Specialist : 100%','Academician : 50%','Administrative Assistant : 50%','No Result',65,'2023-01-27 22:52:49'),(358,'Academician','Academician','Academician : 100%','No Result','Administrative Assistant : 100%','No Result',65,'2023-01-27 22:56:14'),(359,'Technical Support Specialist','Technical Support Specialist','Technical Support Specialist : 50%','No Result','Administrative Assistant : 50%','No Result',42,'2023-01-29 22:31:38'),(360,'Software Engineer / Programmer','Technical Support Specialist','Technical Support Specialist : 67%','Academician : 33%','Administrative Assistant : 33%','No Result',42,'2023-01-30 07:41:56');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL DEFAULT 'default.png',
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `sex` varchar(150) NOT NULL,
  `curriculum_year` varchar(150) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `desired_career` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `program` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_approve` tinyint(1) NOT NULL,
  `predict_no` smallint(6) NOT NULL,
  `user_type` smallint(6) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`img`,`first_name`,`middle_name`,`last_name`,`sex`,`curriculum_year`,`contact_number`,`email`,`desired_career`,`department`,`program`,`password`,`is_approve`,`predict_no`,`user_type`,`date_created`) values (2,'default.png','CCSadmin01','','WMSU','Male','Not Applicable','09661573159','CCSadmin01@wmsu.com.ph','Not Applicable','Faculty','Not Applicable','sha256$DDcBg7jj8OePABEK$dc73e090ea582e2991807abc0629fd1ec53bc3d0d607b88edad720b4f0ba3b83',1,0,-1,'2022-12-24 13:21:46'),(3,'default.png','CCSadmin02','','WMSU','Male','Not Applicable','09661573158','CCSadmin02@wmsu.com.ph','Not Applicable','Faculty','Not Applicable','sha256$PYBXIJNGK8uTlze9$c5bc5377d5fd73aecff5e1b01618d808e0fd3f09758e5a87b26b6a4296a56b75',1,0,-1,'2022-12-24 13:23:01'),(4,'default.png','CCSadmin03','','WMSU','Female','Not Applicable','09661573157','CCSadmin03@wmsu.com.ph','Not Applicable','Faculty','Not Applicable','sha256$PsP5XFfRtlNtAOj1$11a7a6b9137adbdef2b2c8f5ae78c08b70e5c5e1e32e3b12a54314dc2777a325',1,0,-1,'2022-12-24 13:24:18'),(6,'default.png','CCSfaculty01','','WMSU','Female','Not Applicable','09661573151','CCSfaculty01@wmsu.com.ph','Not Applicable','Faculty','Not Applicable','sha256$aoiKBo5K6E5gp2zP$f3b800ee93007ea039d7730b1c6a9e76976113b0d756fcb15a36c6f2553df051',1,0,0,'2022-12-24 13:32:22'),(7,'default.png','CCSfaculty02','','WMSU','Female','Not Applicable','09661573152','CCSfaculty02@wmsu.com.ph','Not Applicable','Faculty','Not Applicable','sha256$zVTzCozVC0ncWRjq$a80cf09ebcbb5e49b4d60257b69704817f822722c1f9e97e828750fad0abe340',1,0,0,'2022-12-24 13:33:57'),(40,'default.png','Tanisha','Iris Lester','Bray','Male','2007 - 2008','09778467387','hojax@wmsu.edu.ph','Academician','Computer Science','Shiftee','sha256$W3lFQZ0SvFVSvSJo$9199cf468d028d21ff6ffe7e907b30efb808809fa1d437133153dc856f5db0ff',1,2,1,'2023-01-07 22:37:57'),(41,'default.png','Nerea','April Jenkins','Hunt','Male','2007 - 2008','09774863748','wyxyfolohi@wmsu.edu.ph','Administrative Assistant','Computer Science','Regular','sha256$EgYy0YxflXWO1jMe$55b90f083416c9ca1bdfba86a220783f61bc9c02c6227272e7965c0999da8abd',1,2,1,'2023-01-07 22:42:33'),(42,'Momoring.jpg','Cole','Larissa Rivera','Ballard','Female','2016 - 2018','09884673567','zywuqafoz@wmsu.edu.ph','Software Engineer / Programmer','Computer Science','Transferee','sha256$SNsXFlANU38o5fxu$a7c0fba248f6644d1731c9df2c45fd359a492bc129482f981992ddc368b5aed3',1,2,1,'2023-01-07 22:43:32'),(43,'default.png','Lars','Salvador Valdez','Harrison','Female','2022 - 2025','09774563876','vihuroq@wmsu.edu.ph','Technical Support Specialist','Information Technology','Regular','sha256$aKIujgLsQbNiEvYg$8076342eb2b44f97bbdf40353cafe02da1f18cd24529a4e5f05fce436a074118',1,2,1,'2023-01-07 22:44:16'),(44,'Momoring.jpg','Adria','Carla Roman','Berry','Female','2019 - 2020','09774863458','xugivek@wmsu.edu.ph','Software Engineer / Programmer','Information Technology','Regular','sha256$adIB8emUlrcKpjaB$f6b89ccefe84e68764bd80b41a455a9a8f5d9ac2e9507454e7dc38475d4bc202',1,2,1,'2023-01-07 22:44:56'),(45,'default.png','Josephine','Dorothy Willis','Velazquez','Female','2019 - 2020','09664758356','keguci@wmsu.edu.ph','Technical Support Specialist','Information Technology','Regular','sha256$SAdvz1km2SdxHSMd$2ace633137e5730feb1da55ea1ee15e1ef23f743d82e5f7ac7d5cfe83bd611e9',1,0,1,'2023-01-07 22:45:49'),(64,'Momoring.jpg','Magee','Herrod George','Landry','Male','2016 - 2018','09667483458','qudyba@wmsu.edu.ph','Software Engineer / Programmer','Information Technology','Regular','sha256$7e09h1AgCh4girdD$0b35699c707bb5ea49afcbd7246721ac31eb27bfe51a3409a995794d61c8fcdf',1,2,1,'2023-01-27 16:57:06'),(65,'Momoring.jpg','Carly','Eric Adkins','Mullins','Male','2019 - 2020','09661573159','kehukoc@wmsu.edu.ph','Academician','Computer Science','Transferee','sha256$EAEC4e5kbcEduRyz$2ba06d93d0f814be7402db0d1525414f73ba7636b34c0d68b4fd2099be22e5a9',1,2,1,'2023-01-27 22:16:21'),(70,'default.png','Carson','Kitra Kennedy','Campbell','Female','2019 - 2020','240','sibiwih@wmsu.edu.ph','Technical Support Specialist','Computer Science','Shiftee','sha256$GQxHTM14zVMseK0E$9a16cd0f143781798a3dc4b4a48fc310781de34a223b9e05b62bc390549643aa',1,0,1,'2023-01-31 20:09:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
