/*
Navicat MySQL Data Transfer

Source Server         : 127-xampp
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : petclinic

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-12-04 10:36:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `owners`
-- ----------------------------
DROP TABLE IF EXISTS `owners`;
CREATE TABLE `owners` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of owners
-- ----------------------------
INSERT INTO `owners` VALUES ('127', '秦焜1', '5', '鼓楼2', '0', '13851450810');
INSERT INTO `owners` VALUES ('128', '秦焜1', '1', '鼓楼1', '0', '13851450810');
INSERT INTO `owners` VALUES ('129', '秦焜3', '1', '鼓楼3', '0', '13851450810');
INSERT INTO `owners` VALUES ('130', '秦焜1', '1', '鼓楼1', '0', '13851450810');
INSERT INTO `owners` VALUES ('131', '秦焜1', '5', '鼓楼2', '1', '138');
INSERT INTO `owners` VALUES ('132', '秦焜5', '1', '鼓楼5', '0', '13851450810');
INSERT INTO `owners` VALUES ('133', '12', '1', '21', '0', '12');
INSERT INTO `owners` VALUES ('134', '秦焜', '1', '收货人地址', '0', '13865123');
INSERT INTO `owners` VALUES ('135', '秦焜1', '1', '撒旦法', '0', '13');
INSERT INTO `owners` VALUES ('136', '秦焜', '1', '鼓楼', '0', '13213213');
INSERT INTO `owners` VALUES ('137', 'qinkun', '15', 'gulo', '0', '13851450810');
INSERT INTO `owners` VALUES ('138', '秦焜2', '1', '鼓楼22', '0', '13851450810');
INSERT INTO `owners` VALUES ('139', '秦焜3', '15', '鼓楼3', '0', '13851450810');
INSERT INTO `owners` VALUES ('140', '秦焜140', '1', '鼓楼140', '0', '13851450810');
INSERT INTO `owners` VALUES ('141', '秦焜5', '1', '鼓楼5', '0', '13851450810');
INSERT INTO `owners` VALUES ('142', '秦焜11', '30', '鼓楼11', '1', '13851450810');
