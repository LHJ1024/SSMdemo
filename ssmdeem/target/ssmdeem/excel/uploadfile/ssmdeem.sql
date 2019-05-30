/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : ssmdeem

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2019-04-30 14:57:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a625
-- ----------------------------
DROP TABLE IF EXISTS `a625`;
CREATE TABLE `a625` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placename` varchar(255) DEFAULT NULL,
  `bigclass` varchar(255) DEFAULT NULL,
  `smallclass` varchar(255) DEFAULT NULL,
  `number_type` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `city_village` varchar(255) DEFAULT NULL,
  `internetbundle` varchar(255) DEFAULT NULL,
  `usernumber` int(11) DEFAULT NULL,
  `znumber` int(11) DEFAULT NULL,
  `costtime` varchar(255) DEFAULT NULL,
  `befor_fee` double DEFAULT NULL,
  `after_fee` double DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a625
-- ----------------------------
INSERT INTO `a625` VALUES ('18', '重庆', '多方通信', '9966电台', '22', '1', '农村', '1', '11111', '1', '11', '1', null, '11', '2019-04-27 00:00:00');

-- ----------------------------
-- Table structure for a627
-- ----------------------------
DROP TABLE IF EXISTS `a627`;
CREATE TABLE `a627` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placename` varchar(255) DEFAULT NULL,
  `bigclass` varchar(255) DEFAULT NULL,
  `smallclass` varchar(255) DEFAULT NULL,
  `number_name` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `city_village` varchar(255) DEFAULT NULL,
  `internetbundle` varchar(255) DEFAULT NULL,
  `usernumber` varchar(255) DEFAULT NULL,
  `yfee` varchar(255) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a627
-- ----------------------------
INSERT INTO `a627` VALUES ('1', '东京', '声讯业务', '9966电台', '11', '11', '城市', 'male', '11111', '1111', null, null);
INSERT INTO `a627` VALUES ('2', '1', '1', '1', '1', '1', '城市', 'true', '11111', '1', null, null);
INSERT INTO `a627` VALUES ('5', '1', '声讯业务', '9966电台', '1', '11', '城市', 'true', '11111', '1', null, '2019-04-14');
INSERT INTO `a627` VALUES ('6', 'cq', '声讯业务', '9966电台', '11', '1', '城市', 'true', '11111', '1', null, '2019-04-14');
INSERT INTO `a627` VALUES ('7', '重庆', '声讯', '1', '1', '1', '城市', '是', '11111', '1', '1', '2019-04-20');
INSERT INTO `a627` VALUES ('8', '重庆', '声讯', '9966电台', '声音收费', '不太懂', '城市', '是', '11111', '111', '1', '2019-04-27');

-- ----------------------------
-- Table structure for telephonecontract
-- ----------------------------
DROP TABLE IF EXISTS `telephonecontract`;
CREATE TABLE `telephonecontract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` int(255) DEFAULT NULL,
  `contract_number` varchar(255) DEFAULT NULL,
  `access_number` int(255) DEFAULT NULL,
  `distribution_ratio` varchar(255) DEFAULT NULL,
  `sp` varchar(255) DEFAULT NULL,
  `collection_type` varchar(255) DEFAULT NULL,
  `divided_instructions` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of telephonecontract
-- ----------------------------
INSERT INTO `telephonecontract` VALUES ('3', '1', '1', '1', '50%', '1', '先列收后分成', 'sadada', null, null);
INSERT INTO `telephonecontract` VALUES ('4', '1', '1', '1', '50%', '1', '先列收后分成', '11', null, '2019-04-26 00:00:00');
INSERT INTO `telephonecontract` VALUES ('5', '1', '1', '1', '50%', '1', '先列收后分成', '1111', null, '2019-04-26 00:00:00');
INSERT INTO `telephonecontract` VALUES ('6', null, '1', null, '', '1', '先分成后列收', '', null, '2019-04-26 00:00:00');
INSERT INTO `telephonecontract` VALUES ('7', '1', '1', '1', '50%', '1', '先列收后分成', '', null, null);
INSERT INTO `telephonecontract` VALUES ('8', '1', '1', '1', '50%', '111', '先列收后分成', '', null, null);
INSERT INTO `telephonecontract` VALUES ('9', '1', '1', '1', '50%', '1', '先列收后分成', '', null, null);
INSERT INTO `telephonecontract` VALUES ('10', '1', '1', '1', '50%', 'cqzzz', '先列收后分成', '', null, null);
INSERT INTO `telephonecontract` VALUES ('11', '1', '1', '1', '50%', 'cqzzz', '先列收后分成', '123', null, null);
INSERT INTO `telephonecontract` VALUES ('12', '1', '1', '1', '50%', '1', '先分成后列收', '111', null, '2019-04-28 00:00:00');
INSERT INTO `telephonecontract` VALUES ('13', '1', '1', '1', '50%', '1', '先列收后分成', 'zzz', null, '2019-04-21 00:00:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'LHJ', null);
INSERT INTO `users` VALUES ('2', '2', 'c81e728d9d4c2f636f067f89cc14862c', 'lhj', null);
INSERT INTO `users` VALUES ('3', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'zz', null);
