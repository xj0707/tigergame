/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : na_tigergame

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-09-23 23:42:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for na_player_reports_b
-- ----------------------------
DROP TABLE IF EXISTS `na_player_reports_b`;
CREATE TABLE `na_player_reports_b` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` varchar(36) DEFAULT NULL COMMENT '玩家ID',
  `username` varchar(50) DEFAULT NULL COMMENT '玩家账户',
  `totalBetCount` int(11) DEFAULT NULL COMMENT '投注次数',
  `avgRTP` decimal(20,2) DEFAULT NULL,
  `totalPays` decimal(20,2) DEFAULT NULL COMMENT '中奖金额',
  `totalBets` decimal(20,2) DEFAULT NULL COMMENT '投注金额',
  `balance` decimal(20,2) DEFAULT NULL COMMENT '玩家余额',
  `waterflow` decimal(20,2) DEFAULT NULL COMMENT '流水总额',
  `msn` varchar(5) DEFAULT NULL,
  `parent` varchar(36) DEFAULT NULL COMMENT '对应商户的uid',
  `wct` decimal(20,2) DEFAULT NULL COMMENT '洗马量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of na_player_reports_b
-- ----------------------------
INSERT INTO `na_player_reports_b` VALUES ('1', '880262', 'AWJ1097', '1097', '1.42', '37875.00', '26675.00', '29259.00', '29259.00', '0', '526666d2-43cf-4cc2-a7d2-30943c453593', '0.00');
INSERT INTO `na_player_reports_b` VALUES ('2', '269641', 'AWJ1090', '120', '476.73', '18664130.00', '39150.00', '24610815.00', '24610815.00', '0', '526666d2-43cf-4cc2-a7d2-30943c453593', '0.00');
INSERT INTO `na_player_reports_b` VALUES ('3', '319364', 'AWJ1088', '33', '0.48', '395.00', '825.00', '5926.00', '5926.00', '0', '526666d2-43cf-4cc2-a7d2-30943c453593', '0.00');
INSERT INTO `na_player_reports_b` VALUES ('4', '425561', 'AWJ1001', '29', '0.07', '435.00', '5800.00', '19138143.00', '19138143.00', '0', '526666d2-43cf-4cc2-a7d2-30943c453593', '0.00');
INSERT INTO `na_player_reports_b` VALUES ('5', '168740', 'AWJ1002', '1', '1.40', '35.00', '25.00', '6170.00', '6170.00', '0', '526666d2-43cf-4cc2-a7d2-30943c453593', '0.00');
INSERT INTO `na_player_reports_b` VALUES ('6', '354172', 'AWJ1023', '11', '0.65', '50.20', '77.00', '8633.20', '8633.20', '0', '526666d2-43cf-4cc2-a7d2-30943c453593', '0.00');
INSERT INTO `na_player_reports_b` VALUES ('7', '546525', 'XYC_caa1003', '7', '0.51', '90.00', '175.00', '1000.00', '1000.00', '555', '60bc4f61-353b-48bf-8fda-b533f0a69db4', '0.00');
INSERT INTO `na_player_reports_b` VALUES ('8', '713211', 'AWJ1005', '12', '68.18', '5113.75', '75.00', '15038.75', '15038.75', '0', '526666d2-43cf-4cc2-a7d2-30943c453593', '0.00');
