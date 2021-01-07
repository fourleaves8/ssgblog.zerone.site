/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.17-MariaDB : Database - textBoard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`textBoard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `textBoard`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) NOT NULL,
  `body` text NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`regDate`,`updateDate`,`title`,`body`,`memberId`,`boardId`) values 
(1,'2021-01-08 01:19:13','2021-01-08 01:19:13','블로그 운영 시작합니다!','## 안녕하세요! 웹과 앱 개발을 공부하고 있는 초보 개발자 지망생 MilkPotato입니다\r\n\r\n## 이 블로그는 제 개인 블로그이며, 제가 개발자가 필요한 다양한 지식들을 쌓아올리는 창고가 될거에요!\r\n\r\n## 사이트의 이름 Zero + One, \"ZerOne\"은 두가지 의미가 있답니다!\r\n\r\n### 첫째는, \r\n    컴퓨터의 연산체계를 이루는 이진수, 0과1에 대해 알아가고 싶다는 의미,\r\n### 둘째는,  \r\n    0에서 시작한 개발자가 되기위한 제 도전이 1이 되어가는 과정을 보여줄거란 의미!\r\n\r\n## 힘든 여정이 되겠지만, 용기를 가지로 열심히 해볼게요~~!!\r\n\r\n# 방문해 주셔서 정말 감사합니다!',1,1);

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(30) NOT NULL,
  `code` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

insert  into `board`(`id`,`regDate`,`updateDate`,`name`,`code`) values 
(1,'2021-01-08 01:10:45','2021-01-08 01:10:45','공지사항','notice'),
(2,'2021-01-08 01:10:45','2021-01-08 01:10:45','자유','free'),
(3,'2021-01-08 01:10:45','2021-01-08 01:10:45','Java','it');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `accountName` char(30) NOT NULL,
  `accountPw` varchar(50) NOT NULL,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `member` */

insert  into `member`(`id`,`regDate`,`updateDate`,`accountName`,`accountPw`,`name`) values 
(1,'2021-01-08 01:10:45','2021-01-08 01:10:45','fourleaves8','admin','천승우');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
