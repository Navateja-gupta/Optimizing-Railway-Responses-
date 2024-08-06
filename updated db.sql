/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - railway
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`railway` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `railway`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `algo` */

DROP TABLE IF EXISTS `algo`;

CREATE TABLE `algo` (
  `name` varchar(100) DEFAULT NULL,
  `accuracy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `algo` */

insert  into `algo`(`name`,`accuracy`) values ('adhgjkdbg',NULL),('b',NULL),('c',NULL);

/*Table structure for table `analyst` */

DROP TABLE IF EXISTS `analyst`;

CREATE TABLE `analyst` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `analyst` */

insert  into `analyst`(`username`,`password`) values ('analyst','analyst');

/*Table structure for table `comp` */

DROP TABLE IF EXISTS `comp`;

CREATE TABLE `comp` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comp` */

insert  into `comp`(`username`,`password`,`type`) values ('security','security','security'),('food','food','food'),('ticket','ticket','ticket');

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `name` varchar(100) DEFAULT NULL,
  `post` varchar(1000) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaints` */

insert  into `complaints`(`name`,`post`,`category`,`comment`,`type`) values ('chotu','i have food problem','food','solved','will replace'),('chotu','i have ticket issue','ticket','pending','Feedback');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `name` varchar(100) DEFAULT NULL,
  `post` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT 'pending',
  `type` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`name`,`post`,`comment`,`type`) values ('railway enquiry ','If you have any query of railway comment on this post','pending','positive'),('moulali','railway journey good for me','pending','positive'),('moulali','please train need to stop in next station','pending','positive'),('chotu','i have food problem','pending','Emergency'),('chotu','i have ticket issue','pending','Emergency');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `name` varchar(100) DEFAULT NULL,
  `x1` varchar(100) DEFAULT NULL,
  `x2` varchar(100) DEFAULT NULL,
  `x3` varchar(100) DEFAULT NULL,
  `x4` varchar(100) DEFAULT NULL,
  `x5` varchar(100) DEFAULT NULL,
  `x6` varchar(100) DEFAULT NULL,
  `x7` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`name`,`x1`,`x2`,`x3`,`x4`,`x5`,`x6`,`x7`) values ('X21.V1.791','135','190','229','223','192','125','55'),('X15.V1.924','386','382','356','331','320','315','307'),('X8.V1.1','-32','-39','-47','-37','-32','-36','-57'),('X16.V1.60','-105','-101','-96','-92','-89','-95','-102'),('X20.V1.54','-9','-65','-98','-102','-78','-48','-16'),('X14.V1.56','55','28','18','16','16','19','25'),('X3.V1.191','-55','-9','52','111','135','129','103'),('X11.V1.273','1','-2','-8','-11','-12','-17','-15'),('X19.V1.874','-278','-246','-215','-191','-177','-167','-157'),('X3.V1.491','8','15','13','3','-6','-8','-5'),('X3.V1.6','-5','15','28','28','9','-29','-41'),('X21.V1.724','-167','-230','-280','-315','-338','-369','-405'),('X7.V1.162','92','49','0','-32','-51','-65','-37'),('X1.V1.211','15','12','0','-17','-28','-31','-39'),('X1.V1.615','-24','-15','-5','-1','4','3','6'),('X22.V1.242','-135','-133','-125','-118','-111','-105','-102'),('X1.V1.863','39','41','41','42','43','43','46'),('X9.V1.302','9','4','-5','-10','-22','-30','-33'),('X7.V1.541','-21','-5','1','7','19','20','13');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`mail`,`gender`,`dob`,`mobile`,`address`,`status`) values (15,'raj','raj','raj@gmail.com','Male','1984-12-13','7777777777','Hyderabad','pending'),(20,'chotu','123','moulalicce225@gmail.com','MALE','2021-11-08','+918639966858','15-8-424','pending');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
