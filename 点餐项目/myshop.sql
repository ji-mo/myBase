/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-06-13 11:21:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbcooker`
-- ----------------------------
DROP TABLE IF EXISTS `tbcooker`;
CREATE TABLE `tbcooker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cookername` varchar(255) DEFAULT NULL,
  `cookernews` text,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcooker
-- ----------------------------
INSERT INTO `tbcooker` VALUES ('2', '周润发', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。', '20200610171313.png');
INSERT INTO `tbcooker` VALUES ('3', '周润发2', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。', '20200611154323.png');
INSERT INTO `tbcooker` VALUES ('4', '周润发3', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。', '20200611154332.png');
INSERT INTO `tbcooker` VALUES ('5', '周润发4', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。', '20200611154340.png');
INSERT INTO `tbcooker` VALUES ('9', '5555', '', '');

-- ----------------------------
-- Table structure for `tbcooker_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbcooker_copy`;
CREATE TABLE `tbcooker_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cookername` varchar(255) DEFAULT NULL,
  `cookernews` text,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcooker_copy
-- ----------------------------
INSERT INTO `tbcooker_copy` VALUES ('2', '周润发', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。', '20200610171313.png');
INSERT INTO `tbcooker_copy` VALUES ('3', '周润发2', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。', '20200611154323.png');
INSERT INTO `tbcooker_copy` VALUES ('4', '周润发3', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。', '20200611154332.png');
INSERT INTO `tbcooker_copy` VALUES ('5', '周润发4', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。', '20200611154340.png');

-- ----------------------------
-- Table structure for `tbguestbook`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbguestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `tbmember`
-- ----------------------------
DROP TABLE IF EXISTS `tbmember`;
CREATE TABLE `tbmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmember
-- ----------------------------
INSERT INTO `tbmember` VALUES ('4', 'user5', '123456', '伍思凯', '15900000001', '成都市高新区XX路3-3-2');
INSERT INTO `tbmember` VALUES ('6', 'user100', '123456', '徐XX', '15112345678', '成都市温江区海科东路');

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(100) DEFAULT NULL,
  `contents` text,
  `createtime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------
INSERT INTO `tbnews` VALUES ('1', 'admin', '1212', '121212');
INSERT INTO `tbnews` VALUES ('2', 'admin', '1212', '121212');

-- ----------------------------
-- Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderhead
-- ----------------------------
INSERT INTO `tborderhead` VALUES ('19', '20200610091829876000', '汤燕', '15397600032', '11栋', '78', '2', '2020-06-10 09:18:29', '2020-06-10', 'aaaa');

-- ----------------------------
-- Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order` (`orderid`),
  KEY `fk_proid` (`proid`),
  CONSTRAINT `fk_order` FOREIGN KEY (`orderid`) REFERENCES `tborderhead` (`orderid`),
  CONSTRAINT `fk_proid` FOREIGN KEY (`proid`) REFERENCES `tbproduct` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitems
-- ----------------------------
INSERT INTO `tborderitems` VALUES ('34', '20200610091829876000', '18', '鱼香肉丝', '28', '2', 'http://localhost:8000/static/uploadimg/20200526150104.jpg');
INSERT INTO `tborderitems` VALUES ('35', '20200610091829876000', '17', '回锅肉', '22', '1', 'http://localhost:8000/static/uploadimg/20200526145801.jpg');

-- ----------------------------
-- Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `address` varchar(255) DEFAULT NULL,
  `istop` int(11) DEFAULT '0',
  `isstar` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct
-- ----------------------------
INSERT INTO `tbproduct` VALUES ('17', '回锅肉', '22', '33', '回锅肉起源四川农村地区 [2]  。古代时期称作油爆锅，四川地区大部分家庭都会制作。回锅肉一直被认为是川菜之首，川菜之化身，提到川菜必然想到回锅肉。回锅肉色香味俱全，是下饭菜中大部分人会选的菜。配料各有不同，也是赋予了回锅肉这道菜独特的魅力。', '重庆', '0', '0', '20200526145801.jpg', '1');
INSERT INTO `tbproduct` VALUES ('18', '鱼香肉丝', '28', '333', '444', '重庆', '0', '0', '20200526150104.jpg', '1');
INSERT INTO `tbproduct` VALUES ('19', '11', '22', '33', '444', '重庆', '0', '0', '20200527081814.jpg', '1');
INSERT INTO `tbproduct` VALUES ('20', '1111', '2222', '333', '4444', '重庆', '0', '0', '20200527083133.jpg', '1');
INSERT INTO `tbproduct` VALUES ('21', '111', '22', '333', '444', '重庆', '0', '0', '20200527091357.jpg', '1');
INSERT INTO `tbproduct` VALUES ('22', '番茄鸡蛋', '56', '一道家常菜', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。2003年移居到中国开始创立他自己的餐饮事业。在2000年，梁子庚先生荣获美国餐饮管理学院颁发的 “五星钻石国际大奖 ”，并以自己的名字创立了“梁子庚餐饮概念工作室”。2013年，担任东方卫视第二季《顶级厨师》美食评委。', '重庆', '0', '0', '20200610163118.png', '1');
INSERT INTO `tbproduct` VALUES ('23', '番茄鸡蛋', '32', '一道家常菜', '1971年生于香港，13岁随父母移民到新加坡', '重庆', '0', '0', '20200610165538.png', '1');
INSERT INTO `tbproduct` VALUES ('24', '番茄鸡蛋', '32', '一道家常菜', '梁子庚，1971年生于香港，13岁随父母移民到新加坡，现为新加坡籍中餐名厨，被誉为全亚洲最年轻的创意型厨师。2003年移居到中国开始创立他自己的餐饮事业。在2000年，梁子庚先生荣获美国餐饮管理学院颁发的 “五星钻石国际大奖 ”，并以自己的名字创立了“梁子庚餐饮概念工作室”。2013年，担任东方卫视第二季《顶级厨师》美食评委。', '重庆', '0', '0', '20200610170125.png', '1');
INSERT INTO `tbproduct` VALUES ('29', '鸡蛋汤', '25', '家常菜', '', '重庆', '0', '0', '20200613100706.png', '1');

-- ----------------------------
-- Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcar
-- ----------------------------
INSERT INTO `tbshoppingcar` VALUES ('67', '1', '鱼香肉丝', '18', '1', '2020-06-10 15:53:23', 'http://localhost:8000/static/uploadimg/20200526150104.jpg', '28');
INSERT INTO `tbshoppingcar` VALUES ('68', '1', '111', '21', '1', '2020-06-11 14:49:18', 'http://localhost:8000/static/uploadimg/20200527091357.jpg', '222');

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('1', 'admin', '123456', '管理员1', '15397600032', '北京复兴门外大街10086号');
INSERT INTO `tbusers` VALUES ('2', 'user', '123456', '张三', '15397600032', '北京复兴门外大街10086号');
INSERT INTO `tbusers` VALUES ('7', 'feifei', '123456', '郭靖', '15397600032', '北京复兴门外大街10086号');
INSERT INTO `tbusers` VALUES ('8', 'xiangyang', '123456', '刘湘', '15397600032', '襄阳XX号');
INSERT INTO `tbusers` VALUES ('9', 'mr', '123456', '蓉兔子', '15397600032', '北京ZXXX号');

-- ----------------------------
-- Table structure for `viewpager`
-- ----------------------------
DROP TABLE IF EXISTS `viewpager`;
CREATE TABLE `viewpager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of viewpager
-- ----------------------------
INSERT INTO `viewpager` VALUES ('1', '20200612090746.png');
INSERT INTO `viewpager` VALUES ('2', '20200612091412.png');
INSERT INTO `viewpager` VALUES ('3', '20200612093645.png');

-- ----------------------------
-- View structure for `v_order`
-- ----------------------------
DROP VIEW IF EXISTS `v_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order` AS select `tborderhead`.`sname` AS `sname`,`tborderhead`.`id` AS `id`,`tborderhead`.`orderid` AS `orderid`,`tborderhead`.`stel` AS `stel`,`tborderhead`.`saddress` AS `saddress`,`tborderhead`.`sumprice` AS `sumprice`,`tborderhead`.`memberid` AS `memberid`,`tborderhead`.`ctime` AS `ctime`,`tborderhead`.`ptime` AS `ptime`,`tborderhead`.`memo` AS `memo`,`tborderitems`.`procount` AS `procount`,`tborderitems`.`price` AS `price`,`tborderitems`.`proname` AS `proname`,`tborderitems`.`proid` AS `proid`,`tborderitems`.`imgurl` AS `imgurl` from (`tborderhead` join `tborderitems` on((`tborderhead`.`orderid` = `tborderitems`.`orderid`))) ;
