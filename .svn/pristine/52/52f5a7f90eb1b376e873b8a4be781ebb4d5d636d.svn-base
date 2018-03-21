/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : na_tigergame

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-09-26 17:34:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for na_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `na_admin_group`;
CREATE TABLE `na_admin_group` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of na_admin_group
-- ----------------------------
INSERT INTO `na_admin_group` VALUES ('1', '系统首页', '拥有系统首页模块', '31', '0', '1503288249');
INSERT INTO `na_admin_group` VALUES ('4', '商户管理', '拥有商户管理权限', '48,67,51,55,56,57,58,83,84,52', '0', '1506417971');
INSERT INTO `na_admin_group` VALUES ('5', '报表统计', '拥有报表统计模块查看', '49,53,59,60,61,62,54,63,64,65,66,69,70,72,73,74,75,71,76,77,78,68,79,80,81,82', '0', '1506417956');
