/*
MySQL Backup
Source Server Version: 5.7.17
Source Database: studentxs
Date: 2018/10/31 16:07:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `creditapplication`
-- ----------------------------
DROP TABLE IF EXISTS `creditapplication`;
CREATE TABLE `creditapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `college` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `clas` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `inform`
-- ----------------------------
DROP TABLE IF EXISTS `inform`;
CREATE TABLE `inform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activityname` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `numpeople` varchar(255) DEFAULT NULL,
  `typeid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `activityname` varchar(255) DEFAULT NULL,
  `typeid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isshow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `creditapplication` VALUES ('6','融智学院','音乐大赛','201774110','张三','一班','2018-10-24 19:50:30','N'), ('7','融智学院','器乐大赛','201774111','李四','一班','2018-10-24 19:50:30','0'), ('8','融智学院','音乐大赛','201774112','王五','二班','2018-10-24 19:50:30','Y'), ('9','融智学院','音乐大赛','201774113','二六','四班','2018-10-24 19:50:30','Y'), ('10','会计学院','器乐大赛','201774114','赵马子','一班','2018-10-24 19:50:30','Y'), ('12','财富管理学院','小说绘','201775449','万秋月','一班','2018-10-31 16:00:39','N'), ('13','信息工程学院','辩论大赛','201878559','刘涵茜','17惠软一班','2018-10-31 16:01:17','Y'), ('14','物流工程学院','唱歌大赛','201885449','刘春筳','17惠软一班','2018-10-31 16:01:50','Y');
INSERT INTO `inform` VALUES ('9','街舞大赛','2018.1.1','信息工程学院','0.5','100',NULL), ('11','跆拳道','2017.08.09','信息工程学院','0.15','100',NULL), ('12','跑步比赛','2017.10.12','信工','0.15','100',NULL), ('13','饭桶大赛','2018.5.9','商务','0.2','100',NULL), ('14','跆拳道','2017.3.6','物流学院','0.15','100',NULL), ('15','跑步比赛','2018.9.6','信息工程学院','0.15','100',NULL), ('16','创业大赛','2017.5.6','信息工程学院','0.15','100',NULL), ('17','作文比赛','2018.10.11','商务学院','0.1','100',NULL), ('18','辩论大赛','2018.04.06','电子信息学院','0.5','100',NULL);
INSERT INTO `notice` VALUES ('1','2018.2.5','辩论大赛','0'), ('7','2018.2.6','唱歌大赛','0'), ('9','2018.2.9','运动会','1'), ('18','2018.09.10','跆拳道','1'), ('19','2018.1.9','辩论大赛','0'), ('20','2018.5.9','辩论大赛','1'), ('21','2018.5.9','饭桶大赛','0'), ('22','2018.2.18','跑步比赛','0'), ('23','2017.10.19','小说绘','0');
INSERT INTO `tbguestbook` VALUES ('1','张三','15895266532','我爱融智','2018-10-24 20:42:33','1'), ('2','张三','15895266532','我爱融智','2018-10-24 20:43:21','1'), ('3','李四','1845677895','我爱融智','2018-10-24 20:45:43','1'), ('4','王五','1547854995','我爱融智','2018-10-24 20:51:32','1'), ('5','王五','15895266532','我爱重庆','2018-10-24 20:51:57','1'), ('6','二六','1845677895',' 我爱重庆','2018-10-24 20:52:13','1'), ('7','赵琦','15478566495','  我爱重庆','2018-10-24 20:52:45','1'), ('8','雷文超','17671466232','我爱武汉','2018-10-24 21:01:56','1'), ('9','刘瓜皮','15785244656','我是中国人','2018-10-24 20:52:45','1'), ('10','万瓜皮','18486577959','我是火星人','2018-10-24 20:52:45','1'), ('11','苏某人','1547869548','我不是人','2018-10-24 20:52:45','1'), ('40','雷文超','17671466232','四组就是流弊                       ','2018-10-31 11:25:03','1'), ('41','雷文超','17671466232','四组就是流弊','2018-10-31 11:25:56','1'), ('42','雷文超','17671466232','四组流弊                                          ','2018-10-31 11:27:56','1'), ('43','苏某人','17671466232','欢迎联系我，我帅我骄傲                          ','2018-10-31 16:06:46','0');
INSERT INTO `tbusers` VALUES ('1','admin','123456','管理员3'), ('2','user','123456','张三'), ('3','test','123456','测试员'), ('4','test2','123456','测试员2'), ('6','456464','45645645','45645345'), ('9','123456','123456','管理员1');
