/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.5.21 : Database - users_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`users_database` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `users_database`;

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `courses` */

insert  into `courses`(`id`,`subject`) values 
(34,'mathematics'),
(64,'mathe'),
(66,'biology');

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(67);

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` bigint(20) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `students` */

insert  into `students`(`id`,`email_address`,`first_name`,`last_name`) values 
(29,'azm@yahoo.com','Majid','Azwan'),
(33,'jw@gmail.com','Johnny','Way'),
(34,'lwh@yahoo.com','Lee','Wang Hong'),
(64,'rm@yahoo.com','Raju','Muthu'),
(66,'mhm23@yahoo.com','Masli','Hanifah');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
