/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.58 : Database - test1
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test1`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `Aname` varchar(12) NOT NULL,
  `Apassword` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Aname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `admin` */

insert  into `admin`(`Aname`,`Apassword`) values ('admin','admin');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `Cid` char(4) NOT NULL DEFAULT '',
  `Cname` varchar(100) NOT NULL,
  `Cintroduction` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `belongcoll` varchar(100) DEFAULT NULL,
  `belongpro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `course` */

insert  into `course`(`Cid`,`Cname`,`Cintroduction`,`Type`,`belongcoll`,`belongpro`) values ('0011','java程序设计','主要课程','必修','计算机学院','软件工程'),('1000','大学英语2','大学英语','必修','外国语学院','英语'),('1003','Python','人工智能','选修','计算机学院','信息管理'),('1004','大学英语4','英语','选修','外国语学院','英语'),('1005','大学英语5','大学英语5','必修','外国语学院','外国语所有专业'),('2001','软件工程','详细介绍软件设计流程','必修','计算机学院','软件工程'),('2002','网络工程','网络安全、网络路由配置','必修','计算机学院','网络工程'),('2003','C语言基础','C语言介绍使用','必修','计算机学院','所有'),('2004','大学英语（1）','大学英语','必修','所有','所有'),('2005','c++基础','c++基础','必修','计算机学院','网络工程'),('2006','软件项目管理','','必修','计算机学院','软件工程'),('5002','javaEE','java相关框架','选修','计算机学院','软件工程');

/*Table structure for table `courseplan` */

DROP TABLE IF EXISTS `courseplan`;

CREATE TABLE `courseplan` (
  `Courseclass` varchar(12) NOT NULL,
  `coursetime` varchar(12) DEFAULT NULL,
  `courseweek` varchar(12) DEFAULT NULL,
  `cid` char(4) DEFAULT NULL,
  `tid` char(4) DEFAULT NULL,
  `classroom` varchar(6) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `Totalnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`Courseclass`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `tid` (`tid`) USING BTREE,
  CONSTRAINT `courseplan_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`Cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `courseplan_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `teacher` (`Tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `courseplan` */

insert  into `courseplan`(`Courseclass`,`coursetime`,`courseweek`,`cid`,`tid`,`classroom`,`credits`,`period`,`Totalnum`) values ('C++基础','12,34','2,3,5','2005','5010','10204',3,15,20),('C语言1班','12,34','2,3,4','2003','0002','30802',4,40,30),('javaE2','12,34','3','5002','0002','10105',5,25,30),('java设计','34,56','1,4,6','0011','0006','10105',6,60,30),('Python1班','12,34','1,3,5','1003','0002','20203',3,16,25),('大学英语','34,78','3,5,6','1000','0005','10232',5,18,30),('大英四','12,56','2,3,4','1004','0003','20231',4,5,20),('网络工程1班','34','5','2002','0002','10103',4,40,40),('软件项目管理1班','34,56','2,4,6','2006','0005','10205',5,18,35);

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` char(12) COLLATE utf8_bin NOT NULL,
  `cid` char(4) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(3) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `grade` */

insert  into `grade`(`id`,`sid`,`cid`,`grade`,`credits`) values (16,'201507021227','1003',77,3),(17,'201507023225','1003',60,3),(18,'201507023226','1003',89,3),(19,'201507023228','1003',44,NULL),(20,'201507021227','2003',88,4),(28,'201507023226','5002',67,5),(29,'201507021227','5002',45,NULL),(30,'201507021235','1004',89,4),(31,'201507021237','1004',56,NULL),(32,'201507021227','1000',77,5),(33,'201507021240','2006',77,5),(34,'201507021227','2006',88,5),(35,'201507023225','2006',89,5),(36,'201507021235','2006',76,5);

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` char(4) DEFAULT NULL,
  `sid` char(12) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  CONSTRAINT `sc_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`Cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sc_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`Sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `sc` */

insert  into `sc`(`id`,`cid`,`sid`) values (99,'0011','201507023225'),(100,'1003','201507023225'),(101,'2002','201507023225'),(102,'0011','201507023226'),(103,'1003','201507023226'),(104,'2002','201507023226'),(105,'5002','201507023226'),(106,'0011','201507023228'),(107,'1003','201507023228'),(108,'2002','201507023228'),(111,'1004','201507021235'),(112,'1004','201507021237'),(114,'2006','201507021240'),(116,'2006','201507023225'),(117,'2006','201507021235');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `Sid` char(12) NOT NULL DEFAULT '',
  `Sname` varchar(20) NOT NULL,
  `Sidcard` char(18) NOT NULL,
  `Ssex` varchar(18) DEFAULT NULL,
  `Spassword` varchar(50) NOT NULL,
  `Sage` char(2) NOT NULL,
  `Classr` varchar(50) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Sid`) USING BTREE,
  KEY `class` (`Classr`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `student` */

insert  into `student`(`Sid`,`Sname`,`Sidcard`,`Ssex`,`Spassword`,`Sage`,`Classr`,`profession`,`college`) values ('201507021235','徐玲玲','3342236742345672','女','111111','22','英语B151','英语','外国语学院'),('201507021237','李云飞','334523674234567','男','111111','23','英语B151','英语','外国语学院'),('201507021240','张飞','2345236742345673','男','111111','23','网络B151','网络工程','计算机学院'),('201507023225','苏通','1405819961012621','男','111111','23','软件B162','软件工程','计算机学院'),('201507023226','赵玉','1253333388877788','女','000000','23','软件B152','软件工程','计算机学院'),('201507023228','张亚','8885456456498512','女','000000','21','软件B152','软件工程','计算机学院'),('201507023229','王野','1525659875656223','男','000000','24','软件B152','软件工程','计算机学院'),('201507023230','欧阳离镜','7849656654641545','男','000000','22','软件B152','软件工程','计算机学院'),('201507024125','王泽','1405819961012621','男','000000','22','软件B162','软件工程','计算机学院'),('201507024128','李甜','8885456456498512','女','000000','21','网络B151','网络工程','计算机学院'),('201507024129','宋球','1525659875656223','男','000000','24','网络B151','网络工程','计算机学院'),('201507024130','张敏','7849656654641545','男','00000','22','网络B151','网络工程','计算机学院'),('201507024227','丁晨','5564778845551214','女','000000','23','软件B152','软件工程','计算机学院'),('88888888','wu','123456','男','123123','18','阿萨大','阿萨大大','阿瑟东撒的');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `Tid` char(4) NOT NULL DEFAULT '',
  `Tname` varchar(20) NOT NULL,
  `Tpassword` varchar(12) NOT NULL,
  `Tsex` varchar(10) DEFAULT NULL,
  `Introduction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Tid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `teacher` */

insert  into `teacher`(`Tid`,`Tname`,`Tpassword`,`Tsex`,`Introduction`) values ('0002','李浩','111111','男','key'),('0003','祝融','111111','男','火大'),('0005','李梅','123123','男','严厉！'),('0006','万维涛','111111','男','笑'),('0007','王密','111111','女','无'),('0022','鞠红军','111111','男','kingdy'),('1003','任雨','123456','女','随和！~'),('1010','苏弥','000000','女','教学有方'),('5010','冬玲','111111','女','和蔼可亲');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
