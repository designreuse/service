# Host: localhost  (Version: 5.0.22-community-nt)
# Date: 2014-03-28 14:58:01
# Generator: MySQL-Front 5.3  (Build 4.81)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "power"
#

DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `power_name` VARCHAR(255) DEFAULT NULL,
  `resource_ids` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#
# Data for table "power"
#

INSERT INTO `power` VALUES (1,'�鿴����','1,2,'),(2,'����ϵͳ','3,4,');

#
# Structure for table "resource"
#

DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `resource_name` VARCHAR(255) DEFAULT NULL,
  `resource_url` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#
# Data for table "resource"
#

INSERT INTO `resource` VALUES (1,'�鿴�������','/jsp/getinput.do'),(2,'�鿴���֧��','/jsp/geoutput.do'),(3,'��ӱ������Ա','/jsp/addreport_admin.do'),(4,'ɾ���������Ա','/jsp/deletereport_admin.do');

#
# Structure for table "role"
#

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(255) DEFAULT NULL,
  `role_type` VARCHAR(255) DEFAULT NULL,
  `power_ids` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#
# Data for table "role"
#

INSERT INTO `role` VALUES (1,'ϵͳ����Ա','ROLE_ADMIN','1,2,'),(2,'�������Ա','ROLE_USER','1,');

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `logname` VARCHAR(255) DEFAULT NULL,
  `password` VARCHAR(255) DEFAULT NULL,
  `role_ids` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

SELECT * FROM USER;
#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'admin','123456','ROLE_USER,ROLE_ADMIN'),(3,'zhang','123','ROLE_USER');

COMMIT;
