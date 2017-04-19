/*
SQLyog Enterprise v10.42 
MySQL - 5.5.5-10.1.21-MariaDB : Database - taskdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`taskdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `taskdb`;

/*Table structure for table `tb_task` */

DROP TABLE IF EXISTS `tb_task`;

CREATE TABLE `tb_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `finished` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tb_task` */

insert  into `tb_task`(`id`,`name`,`description`,`date_created`,`finished`) values (3,'Name From Get 1 wwww','Description From Get 1 wwww','2017-04-19 14:38:37','0'),(4,'Name From Get 2','Description From Get 2','2017-04-19 12:59:40','0'),(5,'Pebri','Desc Pebs','2017-04-19 14:26:37','0'),(6,'Pebri','Desc Pebs','2017-04-19 14:27:04','0'),(7,'Pebri 22','Desc Pebs 22','2017-04-19 14:34:28','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
