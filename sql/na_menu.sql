/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : na_tigergame

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-09-26 17:34:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for na_menu
-- ----------------------------
DROP TABLE IF EXISTS `na_menu`;
CREATE TABLE `na_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) DEFAULT '0',
  `icon` varchar(20) NOT NULL DEFAULT '',
  `c` varchar(20) DEFAULT NULL,
  `a` varchar(20) DEFAULT NULL,
  `data` varchar(50) NOT NULL DEFAULT '',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '999',
  `display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示(1:显示,2:不显示)',
  `updatetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of na_menu
-- ----------------------------
INSERT INTO `na_menu` VALUES ('1', '管理设置', '0', 'fa-users', 'Admin', 'admin', '', '', '', '1', '1', '1505976440');
INSERT INTO `na_menu` VALUES ('2', '管理员管理', '1', '', 'Admin', 'index', '', '', '', '0', '1', '1505976440');
INSERT INTO `na_menu` VALUES ('3', '详情', '2', '', 'Admin', 'info', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('4', '添加', '2', '', 'Admin', 'add', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('5', '修改', '2', '', 'Admin', 'edit', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('6', '删除', '2', '', 'Admin', 'del', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('7', '权限管理', '1', '', 'Group', 'index', '', '', '', '0', '1', '1505976440');
INSERT INTO `na_menu` VALUES ('8', '详情', '7', '', 'Group', 'info', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('9', '添加', '7', '', 'Group', 'add', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('10', '修改', '7', '', 'Group', 'edit', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('11', '删除', '7', '', 'Group', 'del', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('12', '菜单管理', '18', '', 'Menu', 'index', '', '', '', '0', '1', '1505976440');
INSERT INTO `na_menu` VALUES ('13', '查看', '12', '', 'Menu', 'info', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('14', '添加', '12', '', 'Menu', 'add', '', '', '', '0', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('15', '修改', '12', '', 'Menu', 'edit', '', '', '', '0', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('16', '删除', '12', '', 'Menu', 'del', '', '', '', '0', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('18', '系统设置', '0', 'fa-cogs', 'Menu', 'index', '', '', '', '2', '1', '1505976440');
INSERT INTO `na_menu` VALUES ('22', '权限设置', '2', '', 'Group', 'rule', '', '', '', '999', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('23', '个人设置', '1', '', 'Admin', 'public_edit_info', '', '', '', '999', '2', '1505976440');
INSERT INTO `na_menu` VALUES ('27', '日志管理', '18', '', 'Log', 'index', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('31', '系统首页', '0', 'fa-bank', 'Index', 'index', '', '', '', '0', '1', '1505976440');
INSERT INTO `na_menu` VALUES ('48', '商户管理', '0', 'fa-user-plus', 'Merchant', 'userinfo', '', '', '', '3', '1', '1505976441');
INSERT INTO `na_menu` VALUES ('49', '塔罗之谜', '0', 'fa-area-chart', 'GameReports', 'index', '', '', '', '4', '1', '1505976441');
INSERT INTO `na_menu` VALUES ('51', '玩家信息', '48', '', 'Player', 'index', '', '', '', '999', '1', '1505976441');
INSERT INTO `na_menu` VALUES ('52', '额度记录', '48', '', 'Limit', 'index', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('53', '玩家报表', '49', '', 'PlayerReports', 'index', '', '', '', '999', '1', '1505976441');
INSERT INTO `na_menu` VALUES ('54', '游戏报表', '49', '', 'GameReports', 'index', '', '', '', '999', '1', '1505976441');
INSERT INTO `na_menu` VALUES ('55', '线路商查询', '51', '', 'Player', 'xl', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('56', '商户查询', '51', '', 'Player', 'sh', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('57', '玩家用户名查询', '51', '', 'Player', 'likeUsername', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('58', '代理商查询', '51', '', 'Player', 'dl', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('59', '线路商查询', '53', '', 'PlayerReports', 'xl', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('60', '商户查询', '53', '', 'PlayerReports', 'sh', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('61', '玩家用户名查询', '53', '', 'PlayerReports', 'likeUsername', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('62', '代理商查询', '53', '', 'PlayerReports', 'dl', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('63', '线路商查询', '54', '', 'GameReports', 'xl', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('64', '商户查询', '54', '', 'GameReports', 'sh', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('65', '代理商查询', '54', '', 'GameReports', 'dl', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('66', '游戏名称查询', '54', '', 'GameReports', 'likeGamename', '', '', '', '999', '2', '1505976441');
INSERT INTO `na_menu` VALUES ('67', '商户信息', '48', '', 'Merchant', 'userinfo', '', '', '', '888', '1', '1505976441');
INSERT INTO `na_menu` VALUES ('68', '游戏设置', '0', 'fa-gear', 'GameSet', 'index', '', '', '', '999', '1', '1505976441');
INSERT INTO `na_menu` VALUES ('69', '小厨娘', '0', 'fa-area-chart', 'GameReportsB', 'index', '', '', '', '5', '1', '1505976441');
INSERT INTO `na_menu` VALUES ('70', '玩家报表', '69', '', 'PlayerReportsB', 'index', '', '', '', '999', '1', null);
INSERT INTO `na_menu` VALUES ('71', '游戏报表', '69', '', 'GameReportsB', 'index', '', '', '', '999', '1', null);
INSERT INTO `na_menu` VALUES ('72', '线路商查询', '70', '', 'PlayerReportsB', 'xl', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('73', '商户查询', '70', '', 'PlayerReportsB', 'sh', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('74', '代理商查询', '70', '', 'PlayerReportsB', 'dl', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('75', '玩家用户名查询', '70', '', 'PlayerReportsB', 'likeUsername', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('76', '线路商查询', '71', '', 'GameReportsB', 'xl', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('77', '商户查询', '71', '', 'GameReportsB', 'sh', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('78', '代理商查询', '71', '', 'GameReportsB', 'dl', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('79', '线注线数设置', '68', '', 'GameSet', 'index', '', '', '', '999', '1', null);
INSERT INTO `na_menu` VALUES ('80', '线数线注页面', '79', '', 'GameSet', 'xsxz', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('81', '修改线数', '79', '', 'GameSet', 'doxs', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('82', '修改线注', '79', '', 'GameSet', 'doxz', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('83', '玩家流水查询', '51', '', 'Player', 'wlist', '', '', '', '999', '2', null);
INSERT INTO `na_menu` VALUES ('84', '玩家流水时间查询', '51', '', 'Player', 'search', '', '', '', '999', '2', null);
