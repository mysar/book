/*
Navicat MySQL Data Transfer

Source Server         : php
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : db_books

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-05-18 10:37:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) DEFAULT NULL,
  `bookprice` float(10,2) DEFAULT NULL,
  `bookauthor` varchar(255) DEFAULT NULL,
  `booknum` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `pubid` int(11) DEFAULT NULL,
  `bookpic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pubid` (`pubid`),
  KEY `type_id_id` (`typeid`),
  CONSTRAINT `type_id_id` FOREIGN KEY (`typeid`) REFERENCES `t_booktype` (`id`),
  CONSTRAINT `t_book_ibfk_1` FOREIGN KEY (`pubid`) REFERENCES `t_publisher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('1', '小王子', '12.00', 'wz', '120', '3', '2', '3');
INSERT INTO `t_book` VALUES ('3', '论语', '15.50', '孔子及弟子', '120', '1', '4', '');
INSERT INTO `t_book` VALUES ('5', '西游记', '15.50', 'xx', '130', '1', '4', '');
INSERT INTO `t_book` VALUES ('6', 'c++', '52.20', 'ccc', '10', '2', '3', '');
INSERT INTO `t_book` VALUES ('7', 'java设计模式', '125.45', 'ccc', '20', '2', '3', '');

-- ----------------------------
-- Table structure for t_booktype
-- ----------------------------
DROP TABLE IF EXISTS `t_booktype`;
CREATE TABLE `t_booktype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booktype` varchar(255) DEFAULT NULL COMMENT '书籍分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_booktype
-- ----------------------------
INSERT INTO `t_booktype` VALUES ('1', '经典著作');
INSERT INTO `t_booktype` VALUES ('2', '社会科学');
INSERT INTO `t_booktype` VALUES ('3', '进口图书 ');

-- ----------------------------
-- Table structure for t_publisher
-- ----------------------------
DROP TABLE IF EXISTS `t_publisher`;
CREATE TABLE `t_publisher` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pubname` varchar(200) DEFAULT NULL COMMENT '出版社名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_publisher
-- ----------------------------
INSERT INTO `t_publisher` VALUES ('1', '北京大学出版社');
INSERT INTO `t_publisher` VALUES ('2', '科学出版社');
INSERT INTO `t_publisher` VALUES ('3', '电子工业出版社');
INSERT INTO `t_publisher` VALUES ('4', '人民出版社');
