/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.5.62-log : Database - project_4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_4` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project_4`;

/*Table structure for table `st_college` */

DROP TABLE IF EXISTS `st_college`;

CREATE TABLE `st_college` (
  `ID` int(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `PHONE_NO` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE_TIME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_college` */

insert  into `st_college`(`ID`,`NAME`,`ADDRESS`,`STATE`,`CITY`,`PHONE_NO`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,'NIT','vijay nagar','MADHYA PRADESH','INDORE','9876789876','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:27:28','2020-11-24 21:27:28'),
(2,'Gujrati','141,Dheeraj nagar`','MADHYA PRADESH','INDORE','9876789876','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:27:53','2020-11-24 21:27:53'),
(3,'MGM','141,Dheeraj nagar','MADHYA PRADESH','INDORE','9989998985','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:28:26','2020-11-24 21:28:29'),
(4,'Acropolish','vijay nagar','MP','INDORE','9989998985','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:05','2020-11-24 21:29:05'),
(5,'SOFTVISION','vijay nagar','MP','INDORE','9989998985','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:05','2020-11-24 21:29:26'),
(6,'Prestige','141,Dheeraj nagar near yadav shree showroom','MADHYA PRADESH','INDORE','9989998987','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:59','2020-11-24 21:29:59'),
(7,'Aurbindo','141,Dheeraj nagar near yadav shree showroom','MADHYA PRADESH','INDORE','9989998987','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:59','2020-11-24 21:30:08'),
(9,'Davv','141,Dheeraj nagar near yadav shree showroom','MADHYA PRADESH','INDORE','9989998987','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:59','2020-11-24 21:30:31'),
(10,'Holkar','141,Dheeraj nagar near yadav shree showroom','MADHYA PRADESH','INDORE','9989998987','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:59','2020-11-24 21:30:38'),
(11,'SGSITS','141,Dheeraj nagar near yadav shree showroom','MADHYA PRADESH','INDORE','9989998987','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:59','2020-11-24 21:31:23'),
(12,'Medicaps','141,Dheeraj nagar near yadav shree showroom','MADHYA PRADESH','INDORE','9989998987','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:59','2020-11-24 21:31:52'),
(13,'XYZ','141,Dheeraj nagar near yadav shree showroom','MADHYA PRADESH','INDORE','9989998987','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:29:59','2020-11-24 21:32:21');

/*Table structure for table `st_course` */

DROP TABLE IF EXISTS `st_course`;

CREATE TABLE `st_course` (
  `ID` bigint(50) NOT NULL,
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `DURATION` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MODIFIED_DATE_TIME` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_course` */

insert  into `st_course`(`ID`,`COURSE_NAME`,`DESCRIPTION`,`DURATION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,'B.com','Bachelor','4 year',NULL,NULL,'2020-11-04 12:34:14','2020-11-04 12:34:14'),
(2,'BE','Bachelor','4 year',NULL,NULL,'2020-11-04 12:36:00','2020-11-04 12:36:00'),
(3,'CA','good','4Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-19 16:53:00','2020-11-19 16:53:00'),
(4,'B.tech','zz','4Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:35:08','2020-11-24 21:35:08'),
(5,'BSC','zz','3Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:35:08','2020-11-24 21:35:18'),
(6,'BCA','zz','3Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:35:08','2020-11-24 21:35:25'),
(7,'MCA','zz','2Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:35:08','2020-11-24 21:35:39'),
(8,'BBA','aa','3Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:36:05','2020-11-24 21:36:09'),
(9,'B.pharma','aa','4Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:36:05','2020-11-24 21:36:33'),
(10,'M.pharma','aa','2Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:36:05','2020-11-24 21:36:43'),
(11,'M.tech','aa','2Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:36:05','2020-11-24 21:36:51'),
(12,'PHD','aa','2Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:36:05','2020-11-24 21:37:07'),
(13,'MBA','aa','2Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:36:05','2020-11-24 21:37:13'),
(14,'MA','aa','2Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:36:05','2020-11-24 21:37:17'),
(15,'Mcom','hjhhhj','2Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-20 12:36:40','2020-12-20 12:36:40'),
(16,'LKG','jkjkjkj','1Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-20 12:37:01','2020-12-20 12:37:01'),
(17,'iio','jkkjkj','5Year','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-20 12:37:21','2020-12-20 12:37:21');

/*Table structure for table `st_faculty` */

DROP TABLE IF EXISTS `st_faculty`;

CREATE TABLE `st_faculty` (
  `ID` int(50) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `JOINING_DATE` date DEFAULT NULL,
  `QUALIFICATION` varchar(50) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `MOBILE_NO` varchar(50) DEFAULT NULL,
  `COLLEGE_ID` varchar(50) DEFAULT NULL,
  `COLLEGE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_ID` bigint(50) DEFAULT NULL,
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `SUBJECT_ID` bigint(50) DEFAULT NULL,
  `SUBJECT_NAME` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` timestamp NULL DEFAULT NULL,
  `MODIFIED_DATE_TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_faculty` */

insert  into `st_faculty`(`ID`,`FIRST_NAME`,`LAST_NAME`,`GENDER`,`JOINING_DATE`,`QUALIFICATION`,`EMAIL_ID`,`MOBILE_NO`,`COLLEGE_ID`,`COLLEGE_NAME`,`COURSE_ID`,`COURSE_NAME`,`SUBJECT_ID`,`SUBJECT_NAME`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,'Ankit','jain','Male','2017-05-11','Graduate','Ankit@gmail.com','9898989897','7','Aurbindo',3,'CA',8,'hindi','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:41:37','2020-11-24 21:41:37'),
(2,'Priya','jain','Male','2017-05-11','Graduate','Ankit@gmail.com','9898989897','7','Aurbindo',3,'CA',8,'hindi','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:41:46','2020-11-24 21:41:46'),
(3,'Sourabh','jain','Male','2017-05-11','Graduate','Ankit@gmail.com','9898989897','7','Aurbindo',3,'CA',8,'hindi','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:41:51','2020-11-24 21:41:51'),
(4,'Aryan','jain','Male','2017-05-11','Graduate','Ankit@gmail.com','9898989897','7','Aurbindo',3,'CA',8,'hindi','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:41:57','2020-11-24 21:41:57'),
(5,'Shyam','jain','Male','2017-05-11','Graduate','Ankit@gmail.com','9898989897','7','Aurbindo',3,'CA',8,'hindi','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:42:03','2020-11-24 21:42:03'),
(6,'Neelam','jain','Male','2017-05-11','Graduate','Ankit@gmail.com','9898989897','7','Aurbindo',3,'CA',8,'hindi','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:42:12','2020-11-24 21:42:12'),
(7,'Sandhya','jain','Male','2017-05-11','Graduate','Ankit@gmail.com','9898989897','7','Aurbindo',3,'CA',8,'hindi','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:42:19','2020-11-24 21:42:19'),
(8,'neeraj','jain','Male','2017-05-11','Graduate','Ankit@gmail.com','9898989897','7','Aurbindo',3,'CA',8,'hindi','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:42:25','2020-11-24 21:42:25'),
(9,'vipin','mishra','Male','2021-05-12','Graduate','ajju@gmail.com','9565656543','11','SGSITS',2,'BE',6,'Tocs','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:03:45','2020-12-19 01:03:45'),
(10,'cdcdscsd','sharmaassa','Female','2021-04-12','Graduate','wdwcdct@gmail.com','9898989897','1','NIT',13,'MBA',6,'Tocs','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:04:53','2020-12-19 01:04:53'),
(11,'ffdff','sharmwdw','Female','2021-04-12','Graduate','wdwcdct@gmail.com','9898989856','1','NIT',11,'M.tech',6,'Tocs','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:05:20','2020-12-19 01:05:20'),
(12,'Ankitsa','sharma','Male','2022-12-12','Graduate','akas3e3h@gmail.com','9399502158','6','Prestige',14,'MA',4,'Networking','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:06:29','2020-12-19 01:06:29'),
(13,'Ankitsad','sharma','Male','2022-12-12','Graduate','akas3e3h@gmail.com','9399502158','6','Prestige',14,'MA',4,'Networking','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:06:35','2020-12-19 01:06:35'),
(14,'kali','sharma','Male','2022-12-12','Graduate','akas3e3h@gmail.com','9399502159','6','Prestige',14,'MA',4,'Networking','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:07:06','2020-12-19 01:07:06'),
(15,'kajal','sharma','Male','2022-12-12','Graduate','akas3e3h@gmail.com','9399502159','6','Prestige',14,'MA',4,'Networking','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:07:17','2020-12-19 01:07:17');

/*Table structure for table `st_marksheet` */

DROP TABLE IF EXISTS `st_marksheet`;

CREATE TABLE `st_marksheet` (
  `ID` bigint(50) DEFAULT NULL,
  `ROLL_NO` varchar(50) DEFAULT NULL,
  `STUDENT_ID` bigint(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PHYSICS` int(50) DEFAULT NULL,
  `CHEMISTRY` int(50) DEFAULT NULL,
  `MATHS` int(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE_TIME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_marksheet` */

insert  into `st_marksheet`(`ID`,`ROLL_NO`,`STUDENT_ID`,`NAME`,`PHYSICS`,`CHEMISTRY`,`MATHS`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,'IT3048',1,'AjaySingh',98,98,98,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-04 14:09:22','2020-11-04 14:10:28'),
(2,'IT3049',1,'AjaySingh',98,98,98,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-04 23:19:25','2020-11-04 23:19:30'),
(3,'IT3046',2,'AnkitSingh',98,98,98,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-04 23:19:25','2020-11-04 23:19:38'),
(4,'IT3047',7,'parasmishra',98,98,98,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:15:33','2020-12-19 01:15:33'),
(5,'IT3045',4,'ajjaymishra',98,98,98,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:15:33','2020-12-19 01:15:47'),
(6,'IT3044',13,'Sonamjain',98,98,98,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:15:33','2020-12-19 01:15:54'),
(7,'IT3043',12,'Sonamjain',34,56,76,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:15:33','2020-12-19 01:16:13'),
(8,'IT3041',11,'Sonamjain',34,65,76,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:15:33','2020-12-19 01:16:26'),
(9,'IT3087',9,'ArpitDubey',65,56,77,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:17:21','2020-12-19 01:17:21'),
(10,'IT3079',8,'ShivamDubey',65,56,77,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:17:21','2020-12-19 01:17:30'),
(11,'IT2445',8,'ShivamDubey',56,54,77,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:17:21','2020-12-19 01:17:53'),
(12,'IT2464',6,'Shyams',56,54,77,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:17:21','2020-12-19 01:18:05'),
(13,'IT3076',2,'AnkitSingh',45,23,45,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:18:32','2020-12-19 01:18:32'),
(14,'IT3078',2,'AnkitSingh',45,23,45,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:18:32','2020-12-19 01:18:36'),
(15,'IT3064',2,'AnkitSingh',45,23,45,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:18:32','2020-12-19 01:18:42');

/*Table structure for table `st_role` */

DROP TABLE IF EXISTS `st_role`;

CREATE TABLE `st_role` (
  `ID` bigint(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_role` */

insert  into `st_role`(`ID`,`NAME`,`DESCRIPTION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,'admin','a','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-10-29 14:10:18','2020-10-29 14:10:18'),
(2,'staff','a','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-10-30 15:19:24','2020-10-30 15:19:24'),
(3,'student','a','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-10-30 15:18:53','2020-10-30 15:18:53'),
(12,'faculti','a','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-26 00:15:20','2020-11-26 00:15:20');

/*Table structure for table `st_student` */

DROP TABLE IF EXISTS `st_student`;

CREATE TABLE `st_student` (
  `ID` bigint(50) NOT NULL,
  `COLLEGE_ID` bigint(50) DEFAULT NULL,
  `COLLEGE_NAME` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `MOBILE_NO` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MODIFIED_DATE_TIME` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_student` */

insert  into `st_student`(`ID`,`COLLEGE_ID`,`COLLEGE_NAME`,`FIRST_NAME`,`LAST_NAME`,`DATE_OF_BIRTH`,`MOBILE_NO`,`EMAIL`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,1,'gacc','Ajay','Singh','2000-01-01','9087654567','ajay@gmail.com','admin','admin','2020-10-31 18:17:42','2020-10-31 18:17:42'),
(2,1,'gacc','Ankit','Singh','2000-01-01','9087654567','Ankit@gmail.com','admin','admin','2020-10-31 18:18:58','2020-10-31 18:18:58'),
(3,1,'gacc','Ankit','Singh','2000-01-01','9087654567','Ankit@gmail.com','admin','admin','2020-10-31 18:19:42','2020-10-31 18:19:42'),
(4,2,'Sgs','ajjay','mishra','1990-11-19','9898989890','mayankmishra661@gmail.com','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-04 14:17:59','2020-11-19 16:31:16'),
(6,5,'MGM','Shyam','s','2020-11-24','9989898989','mayankmishra666@gmail.com','mayankmishra666@gmail.com','mayankmishra666@gmail.com','2020-11-23 17:58:52','2020-11-23 17:58:57'),
(7,2,'Gujrati','paras','mishra','1994-11-09','9898989899','Paras@GMAIL.COM','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:50:27','2020-11-24 22:50:27'),
(8,2,'Gujrati','Shivam','Dubey','1994-11-09','9898989899','Shivam@GMAIL.COM','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:50:27','2020-11-24 22:50:54'),
(9,2,'Gujrati','Arpit','Dubey','1994-11-09','9898989899','Arpit@GMAIL.COM','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:50:27','2020-11-24 22:51:12'),
(10,2,'Gujrati','Shri','Dubey','1994-11-09','9898989899','Shri@GMAIL.COM','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:50:27','2020-11-24 22:51:26'),
(11,5,'SOFTVISION','Sonam','jain','1989-11-08','9898989899','deechavhan.098@gmail.com','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:51:50','2020-11-24 22:52:07'),
(12,5,'SOFTVISION','Sonam','jain','1989-11-08','9898989899','sxsx098@gmail.com','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:51:50','2020-11-24 22:52:16'),
(13,5,'SOFTVISION','Sonam','jain','1989-11-08','9898989899','sxsxWSWXS8@gmail.com','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:51:50','2020-11-24 22:52:21');

/*Table structure for table `st_subject` */

DROP TABLE IF EXISTS `st_subject`;

CREATE TABLE `st_subject` (
  `ID` bigint(50) NOT NULL,
  `SUBJECT_NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_ID` bigint(50) DEFAULT NULL,
  `SUBJECT_ID` bigint(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MODIFIED_DATE_TIME` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_subject` */

insert  into `st_subject`(`ID`,`SUBJECT_NAME`,`DESCRIPTION`,`COURSE_NAME`,`COURSE_ID`,`SUBJECT_ID`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,'Complier','sas','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:37:58'),
(2,'Micro','sas','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:38:04'),
(3,'DBMS','sas','M.tech',11,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-25 23:31:19'),
(4,'Networking','sasffe','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-27 15:53:04'),
(5,'CSO','sas','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:38:29'),
(6,'Tocs','sas','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:39:00'),
(7,'English','sas','BBA',8,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:39:09'),
(8,'hindi','sas','B.pharma',9,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:39:15'),
(9,'nursing','sas','B.pharma',9,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:39:20'),
(10,'maths','sas','B.pharma',9,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:39:24'),
(11,'sanskrit','sas','B.pharma',9,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:37:58','2020-11-24 21:39:31'),
(12,'urdu','dwqd','PHD',12,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:39:53','2020-11-24 21:39:55'),
(13,'c','dcdcdc','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:13:48','2020-12-19 01:13:48'),
(14,'c#','dcdcdc','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:13:48','2020-12-19 01:13:54'),
(15,'Python','dcdcdc','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:13:48','2020-12-19 01:14:10'),
(16,'iot','dcdcdc','B.tech',4,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:13:48','2020-12-19 01:14:34'),
(17,'cs0','jhjhjhjh','PHD',12,0,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-20 12:37:52','2020-12-20 12:37:52');

/*Table structure for table `st_timetable` */

DROP TABLE IF EXISTS `st_timetable`;

CREATE TABLE `st_timetable` (
  `ID` bigint(50) NOT NULL,
  `SUB_ID` bigint(50) DEFAULT NULL,
  `SUB_NAME` varchar(50) DEFAULT NULL,
  `COURSE_ID` bigint(50) DEFAULT NULL,
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `SEMESTER` varchar(50) DEFAULT NULL,
  `EXAM_DATE` date DEFAULT NULL,
  `EXAM_TIME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MODIFIED_DATE_TIME` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_timetable` */

insert  into `st_timetable`(`ID`,`SUB_ID`,`SUB_NAME`,`COURSE_ID`,`COURSE_NAME`,`SEMESTER`,`EXAM_DATE`,`EXAM_TIME`,`DESCRIPTION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,1,'Complier',1,'B.com','4','2022-02-11','08:00 AM to 11:00 AM','gyuy','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:43:15','2020-11-24 21:43:15'),
(2,2,'Maths2',8,'MSC9','5','2022-01-11','3:00PM to 6:00PM','xx','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:43:43','2020-11-24 21:43:43'),
(6,5,'CSO',9,'B.pharma','3','2022-05-12','08:00 AM to 11:00 AM','fvdvdf','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 00:59:47','2020-12-19 00:59:47'),
(7,4,'Networking',9,'B.pharma','2','2021-12-12','3:00PM to 6:00PM','fvvfvfv','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:00:48','2020-12-19 01:00:48'),
(8,7,'English',4,'B.tech','5','2021-10-12','3:00PM to 6:00PM','fvfvfv','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:01:06','2020-12-19 01:01:06'),
(9,3,'DBMS',6,'BCA','7','2022-02-12','12:00PM to 3:00PM','fvfvfvdedede','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:01:29','2020-12-19 01:01:29'),
(10,2,'Micro',5,'BSC','6','2022-04-12','08:00 AM to 11:00 AM','eewedwedw','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:01:47','2020-12-19 01:01:47'),
(11,8,'hindi',4,'B.tech','2','2022-05-12','12:00PM to 3:00PM','eded323e','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 01:02:08','2020-12-19 01:02:08'),
(12,16,'iot',4,'B.tech','2','2021-11-12','08:00 AM to 11:00 AM','cscsc','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 11:53:27','2020-12-19 11:53:27'),
(13,13,'c',3,'CA','6','2021-12-12','12:00PM to 3:00PM','dcsdcdsc','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 11:54:47','2020-12-19 11:54:47'),
(14,11,'sanskrit',2,'BE','7','2021-10-12','3:00PM to 6:00PM','ergergrger','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 11:55:40','2020-12-19 11:55:40'),
(15,12,'urdu',13,'MBA','8','2021-11-12','3:00PM to 6:00PM','mmmmm','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 21:39:59','2020-12-19 21:39:59'),
(16,9,'nursing',13,'MBA','9','2022-01-12','3:00PM to 6:00PM','jhjhjhj','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 21:40:20','2020-12-19 21:40:20'),
(17,10,'maths',2,'BE','6','2021-12-12','08:00 AM to 11:00 AM','iuiuiu','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 21:42:08','2020-12-19 21:42:08'),
(18,15,'Python',6,'BCA','5','2029-09-12','12:00PM to 3:00PM','mm','mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-19 21:42:49','2020-12-19 21:42:49');

/*Table structure for table `st_user` */

DROP TABLE IF EXISTS `st_user`;

CREATE TABLE `st_user` (
  `ID` bigint(50) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOGIN` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `MOBILE_NO` varchar(50) DEFAULT NULL,
  `ROLE_ID` bigint(50) DEFAULT NULL,
  `UNSUCCESSFULL_LOGIN` int(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `LAST_LOGIN` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_LOCK` varchar(50) DEFAULT NULL,
  `REGISTERED_IP` varchar(50) DEFAULT NULL,
  `LAST_LOGIN_IP` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `MODIFIED_DATE_TIME` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_user` */

insert  into `st_user`(`ID`,`FIRST_NAME`,`LAST_NAME`,`LOGIN`,`PASSWORD`,`DOB`,`MOBILE_NO`,`ROLE_ID`,`UNSUCCESSFULL_LOGIN`,`GENDER`,`LAST_LOGIN`,`USER_LOCK`,`REGISTERED_IP`,`LAST_LOGIN_IP`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATE_TIME`,`MODIFIED_DATE_TIME`) values 
(1,'mayank','mishra','mayankmishra661@gmail.com','May@12345','1992-11-11','9399502148',1,0,'Female',NULL,NULL,NULL,NULL,'root','root','2020-11-03 13:00:25','2020-11-03 13:00:25'),
(2,'Ajay','singh','Ajaysingh@gmail.com','Ajay@12345','1998-11-08','9898989898',3,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:22:16','2020-11-24 21:22:16'),
(3,'Anand','dubey','Anand@gmail.com','Anand@12345','1997-11-11','9898989897',2,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 21:23:31','2020-11-24 21:23:31'),
(4,'Vipin','sharma','vipin@gmail.com','Vip@12345','1994-11-22','9565656543',1,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-27 16:12:22','2020-11-27 16:12:22'),
(6,'Shyam','jain','Shyam@gmail.com','Shyam@12345','1999-11-09','9565656543',12,0,'Female',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-01 12:09:13','2020-12-01 12:09:13'),
(7,'neerajdfvd','sharmaassa','akash@gmail.com','aKASH@12345','1998-11-25','9898989894',2,0,'Female',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-30 14:50:54','2020-11-30 14:50:54'),
(9,'neeraj','sharma','EWFEWAF@gmail.com','aKASH@12345','1998-11-25','9898989894',2,0,'Female',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:54:28','2020-11-24 22:54:28'),
(10,'neeraj','sharma','EWFEFWQWAF@gmail.com','aKASH@12345','1998-11-25','9898989894',2,0,'Female',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:54:33','2020-11-24 22:54:33'),
(12,'neeraj','sharma','FWEFEF@gmail.com','aKASH@12345','1998-11-25','9898989894',2,0,'Female',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-24 22:54:40','2020-11-24 22:54:40'),
(13,'ewfwe','mishra','mayankmishra666@gmail.com','May@1234','1998-11-25','9399502149',12,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-25 14:34:30','2020-11-25 14:34:30'),
(14,'wqewqe','mishra','mayankmishra665@gmail.com','May@1234','1998-11-25','9399502149',12,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-25 14:34:36','2020-11-25 14:34:36'),
(15,'ergger','mishra','mayankmishra65@gmail.com','May@1234','1998-11-25','9399502149',12,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-11-25 14:34:44','2020-11-25 14:34:44'),
(16,'ajjayaa','aa','akash21@gmail.com','Ajay@123','1992-04-11','9399502147',2,0,'Male',NULL,NULL,NULL,NULL,'root','root','2020-11-30 12:47:37','2020-11-30 12:47:37'),
(17,'aa','aaa','akash24@gmail.com','May@1234','1985-01-11','9399502147',2,0,'Male',NULL,NULL,NULL,NULL,'root','root','2020-11-30 13:06:01','2020-11-30 13:06:01'),
(18,'kajal','shrivastava','sharmaneeraj41970@gmail.com','Kajal@12345','1992-03-12','9399502149',2,0,'Female',NULL,NULL,NULL,NULL,'root','root','2020-12-02 14:09:26','2020-12-02 14:09:26'),
(19,'mayankm','dfgfd','mayankmishra669@gmail.com','May@12345','1986-12-15','9898989898',12,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-15 15:37:30','2020-12-15 15:37:30'),
(20,'mayankm','dfgfd','mayankmishra668@gmail.com','May@12345','1986-12-15','9898989898',12,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-15 15:37:37','2020-12-15 15:37:37'),
(21,'mayankm','dfgfd','mayankmishra658@gmail.com','May@12345','1986-12-15','9898989898',12,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-15 15:37:43','2020-12-15 15:37:43'),
(22,'mayankm','dfgfd','mayankmishra458@gmail.com','May@12345','1986-12-15','9898989898',12,0,'Male',NULL,NULL,NULL,NULL,'mayankmishra661@gmail.com','mayankmishra661@gmail.com','2020-12-15 15:37:49','2020-12-15 15:37:49'),
(23,'ajjayyy','mishra','mayankmishra6661@gmail.com','May@123456','1991-07-12','9399502147',2,0,'Male',NULL,NULL,NULL,NULL,'root','root','2020-12-28 14:27:06','2020-12-28 14:27:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
