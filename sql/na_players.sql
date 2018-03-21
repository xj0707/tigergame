/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : na_tigergame

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-09-23 23:42:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for na_players
-- ----------------------------
DROP TABLE IF EXISTS `na_players`;
CREATE TABLE `na_players` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增长的ID',
  `uid` varchar(36) DEFAULT NULL COMMENT '玩家的uid',
  `parent` varchar(36) DEFAULT NULL COMMENT '所属商户的uid',
  `username` varchar(50) DEFAULT NULL COMMENT '玩家账户',
  `nickname` varchar(10) DEFAULT NULL COMMENT '玩家昵称',
  `suffix` varchar(20) DEFAULT NULL COMMENT '玩家前缀',
  `msn` varchar(5) DEFAULT NULL COMMENT '线路号',
  `createdAt` datetime DEFAULT NULL COMMENT '创建时间',
  `balance` decimal(20,2) DEFAULT NULL COMMENT '玩家余额',
  `waterflow` decimal(20,2) DEFAULT NULL COMMENT '玩家流水总额',
  `content` text COMMENT 'josn格式的数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of na_players
-- ----------------------------
INSERT INTO `na_players` VALUES ('50', '831693', '19a7bff5-c0a8-43a9-a65a-1a045a7b97d7', 'BWJ1100', 'SDFAF', null, '0', '2017-09-20 04:47:16', '26585.00', '26585.00', null);
INSERT INTO `na_players` VALUES ('51', '914037', '4e96b67f-f44f-4ce0-aa58-9847cf828bcc', 'LZ1005', 'gsy97', null, '0', '2017-09-20 18:36:20', '10215.00', '10215.00', null);
INSERT INTO `na_players` VALUES ('52', '742007', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1100', 'DSAFA', null, '0', '2017-09-21 20:36:31', '3974065.00', '3974065.00', null);
INSERT INTO `na_players` VALUES ('53', '348262', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1050', 'ms01', null, '0', '2017-09-22 15:14:13', '27769346.00', '27769346.00', null);
INSERT INTO `na_players` VALUES ('54', '738535', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1039', '1039', null, '0', '2017-09-21 16:34:46', '2112654.00', '2112654.00', null);
INSERT INTO `na_players` VALUES ('55', '956650', '485a6ed0-4580-4367-b9d6-ab5fedc8fd92', 'SH01_Play097', 'tgx097', null, '1', '2017-09-22 14:53:50', '4169428.00', '4169428.00', null);
INSERT INTO `na_players` VALUES ('56', '359340', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1045', 'YFY005', null, '0', '2017-09-22 15:30:41', '2258176.00', '2258176.00', null);
INSERT INTO `na_players` VALUES ('57', '818929', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1062', 't432t43t', null, '0', '2017-09-20 21:32:05', '114090.00', '114090.00', null);
INSERT INTO `na_players` VALUES ('58', '269641', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1090', '90', null, '0', '2017-09-23 14:33:34', '24610815.00', '24610815.00', null);
INSERT INTO `na_players` VALUES ('59', '112159', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1004', '我是诶大不留姐四', null, '0', '2017-09-22 15:46:23', '640827.00', '640827.00', null);
INSERT INTO `na_players` VALUES ('60', '805687', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1058', 'AWJ1058', null, '0', '2017-09-22 18:46:20', '8615.00', '8615.00', null);
INSERT INTO `na_players` VALUES ('61', '377412', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1047', 'YFY007', null, '0', '2017-09-21 11:01:34', '8455.00', '8455.00', null);
INSERT INTO `na_players` VALUES ('62', '778468', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1073', '73', null, '0', '2017-09-22 11:51:43', '155183.00', '155183.00', null);
INSERT INTO `na_players` VALUES ('63', '880262', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1097', 'gsy', null, '0', '2017-09-23 23:41:43', '29636.50', '29636.50', null);
INSERT INTO `na_players` VALUES ('64', '991350', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1074', '74', null, '0', '2017-09-23 12:51:37', '13335.00', '13335.00', null);
INSERT INTO `na_players` VALUES ('65', '922962', '485a6ed0-4580-4367-b9d6-ab5fedc8fd92', 'SH01_Play077', 'Play077', null, '1', '2017-09-21 12:19:20', '4835.00', '4835.00', null);
INSERT INTO `na_players` VALUES ('66', '339824', '485a6ed0-4580-4367-b9d6-ab5fedc8fd92', 'SH01_Play098', 'Tgx098', null, '1', '2017-09-22 18:35:53', '126124129.00', '126124129.00', null);
INSERT INTO `na_players` VALUES ('67', '340582', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1056', 'sfa', null, '0', '2017-09-23 12:45:03', '544205.00', '544205.00', null);
INSERT INTO `na_players` VALUES ('68', '890597', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1055', 'ggcx', null, '0', '2017-09-21 21:22:29', '11015928.00', '11015928.00', null);
INSERT INTO `na_players` VALUES ('69', '831998', '79dd79f1-0948-4fdb-abcf-961f241c6956', 'YYA01_day0010', '歪歪专用', null, '98', '2017-09-21 18:30:10', '3670.00', '3670.00', null);
INSERT INTO `na_players` VALUES ('70', '890873', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1011', 'wyy11', null, '0', '2017-09-22 16:04:42', '9955.00', '9955.00', null);
INSERT INTO `na_players` VALUES ('71', '482573', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1081', '1081', null, '0', '2017-09-21 21:20:09', '8592.00', '8592.00', null);
INSERT INTO `na_players` VALUES ('72', '990001', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1092', '92', null, '0', '2017-09-22 17:38:58', '30739.00', '30739.00', null);
INSERT INTO `na_players` VALUES ('73', '712112', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1057', 'SDSFAF', null, '0', '2017-09-23 12:24:32', '2819055.00', '2819055.00', null);
INSERT INTO `na_players` VALUES ('74', '425561', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1001', 'AWJ', null, '0', '2017-09-23 23:06:44', '19139525.50', '19139525.50', null);
INSERT INTO `na_players` VALUES ('75', '883351', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1041', 'YFY001', null, '0', '2017-09-22 17:20:21', '282.00', '282.00', null);
INSERT INTO `na_players` VALUES ('76', '845422', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1077', '77', null, '0', '2017-09-22 17:22:20', '11184.00', '11184.00', null);
INSERT INTO `na_players` VALUES ('77', '354172', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1023', '1023', null, '0', '2017-09-23 20:39:26', '8633.20', '8633.20', null);
INSERT INTO `na_players` VALUES ('78', '319364', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1088', '1088', null, '0', '2017-09-23 18:14:55', '5926.00', '5926.00', null);
INSERT INTO `na_players` VALUES ('79', '517083', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1089', '123', null, '0', '2017-09-22 02:40:38', '8714.00', '8714.00', null);
INSERT INTO `na_players` VALUES ('80', '276112', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1021', 'queen', null, '0', '2017-09-22 09:52:33', '9749.00', '9749.00', null);
INSERT INTO `na_players` VALUES ('81', '354317', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1048', 'grfj', null, '0', '2017-09-22 11:40:59', '9905.00', '9905.00', null);
INSERT INTO `na_players` VALUES ('82', '228093', '60bc4f61-353b-48bf-8fda-b533f0a69db4', 'XYC_AAA123456', 'OOK', null, '555', '2017-09-22 11:31:29', '0.00', '0.00', null);
INSERT INTO `na_players` VALUES ('83', '654545', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1075', 'wuwengti', null, '0', '2017-09-22 12:34:35', '9995.00', '9995.00', null);
INSERT INTO `na_players` VALUES ('84', '820424', '485a6ed0-4580-4367-b9d6-ab5fedc8fd92', 'SH01_Play100', 'tgx100', null, '1', '2017-09-22 12:23:05', '4587.00', '4587.00', null);
INSERT INTO `na_players` VALUES ('85', '271521', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1046', 'YFY006', null, '0', '2017-09-22 18:20:07', '365990.00', '365990.00', null);
INSERT INTO `na_players` VALUES ('86', '378228', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1086', 'chkjkjkl', null, '0', '2017-09-23 12:28:31', '21610.00', '21610.00', null);
INSERT INTO `na_players` VALUES ('87', '649712', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1020', 'kingdom', null, '0', '2017-09-22 16:33:00', '6929.00', '6929.00', null);
INSERT INTO `na_players` VALUES ('88', '134827', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1070', '70', null, '0', '2017-09-22 16:49:40', '9994.00', '9994.00', null);
INSERT INTO `na_players` VALUES ('89', '304279', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1040', 'YFY000', null, '0', '2017-09-23 21:09:15', '49591.00', '49591.00', null);
INSERT INTO `na_players` VALUES ('90', '479236', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1083', '1083', null, '0', '2017-09-22 18:01:13', '10000.00', '10000.00', null);
INSERT INTO `na_players` VALUES ('91', '668769', 'b096ac0e-1916-4ff1-a08d-e60df6fce941', 'STATM1_day001', 'day001', null, '878', '2017-09-22 23:21:56', '964.00', '964.00', null);
INSERT INTO `na_players` VALUES ('92', '358310', '60bc4f61-353b-48bf-8fda-b533f0a69db4', 'XYC_caa1002', '去去去', null, '555', '2017-09-23 10:51:32', '785.00', '785.00', null);
INSERT INTO `na_players` VALUES ('93', '442774', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1017', 'wyy17', null, '0', '2017-09-23 11:52:35', '9275.00', '9275.00', null);
INSERT INTO `na_players` VALUES ('94', '546525', '60bc4f61-353b-48bf-8fda-b533f0a69db4', 'XYC_caa1003', 'TUT', null, '555', '2017-09-23 21:58:51', '1000.00', '1000.00', null);
INSERT INTO `na_players` VALUES ('95', '510959', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1065', 'i76i76', null, '0', '2017-09-23 22:18:32', '9940.00', '9940.00', null);
INSERT INTO `na_players` VALUES ('96', '168740', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1002', '1002', null, '0', '2017-09-23 22:13:36', '6176.25', '6176.25', null);
INSERT INTO `na_players` VALUES ('97', '713211', '526666d2-43cf-4cc2-a7d2-30943c453593', 'AWJ1005', 'LYH', null, '0', '2017-09-23 23:42:17', '4005038.75', '4005038.75', null);
