/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : na_tigergame

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-09-23 23:36:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for na_users
-- ----------------------------
DROP TABLE IF EXISTS `na_users`;
CREATE TABLE `na_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) DEFAULT NULL COMMENT '管理员，线路商，商户，代理，的ID',
  `parent` varchar(36) DEFAULT NULL COMMENT '上级用户uid',
  `ancestor` varchar(36) DEFAULT NULL COMMENT '根用户uid',
  `username` varchar(50) DEFAULT NULL COMMENT '用户账号',
  `nickname` varchar(20) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL COMMENT '当前用户前缀',
  `msn` varchar(5) DEFAULT NULL COMMENT '当前用户线路号',
  `content` text COMMENT 'json格式数据',
  `createdAt` datetime DEFAULT NULL COMMENT '创建时间',
  `updatedAt` datetime DEFAULT NULL COMMENT '更新时间',
  `levelindex` varchar(1800) DEFAULT NULL COMMENT '层级关系所属',
  `wcr` decimal(20,2) DEFAULT NULL COMMENT '洗马比',
  `ptr` decimal(20,2) DEFAULT NULL COMMENT '成数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of na_users
-- ----------------------------
INSERT INTO `na_users` VALUES ('109', 'a5a6ef96-8ed3-4dca-badc-b15ab516b5c1', '01', '01', 'LZAgent4', null, 'NULL!', '0', null, '2017-09-20 17:20:38', '2017-09-20 17:20:38', '01', '0.90', '0.90');
INSERT INTO `na_users` VALUES ('110', '4e96b67f-f44f-4ce0-aa58-9847cf828bcc', '01', '01', 'LZAgent5', null, 'NULL!', '0', null, '2017-09-20 17:23:09', '2017-09-20 17:23:10', '01', '0.90', '0.90');
INSERT INTO `na_users` VALUES ('111', 'ea14aa62-32ab-4d5d-9802-2eb4d7b59736', '00', '00', 'Platform_Y12345', null, 'Platform', '-1', null, '2017-09-20 19:00:47', '2017-09-20 19:00:48', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('112', '242b5dac-5b60-49bf-b1fa-c3f1c16006ad', '00', '00', 'Platform_NAtest', null, 'Platform', '-1', null, '2017-09-21 09:56:25', '2017-09-21 09:56:25', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('113', '242b5dac-5b60-49bf-b1fa-c3f1c16006ad', '00', '00', 'Platform_NAtest', null, 'Platform', '-1', null, '2017-09-21 09:56:25', '2017-09-21 09:56:25', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('114', '2576d9c3-1ca6-4bfc-98e8-fa0187faf03f', '0295c1fc-5b5f-4def-a252-d056dc11a168', '0295c1fc-5b5f-4def-a252-d056dc11a168', 'NAshd2_NAshd2', null, 'NAshd2', '481', null, '2017-09-21 09:57:05', '2017-09-21 09:57:06', '01,3f7524b3-32ad-4912-aad4-f244b9b4225c,61cd158b-7aca-4c3f-8aaf-c9d712294e89,faf78b43-cf2a-4e3a-ac84-954374021999,0295c1fc-5b5f-4def-a252-d056dc11a168', '-1.00', '56.00');
INSERT INTO `na_users` VALUES ('115', '43e70fac-9441-4989-970e-ba505e7feab0', '0295c1fc-5b5f-4def-a252-d056dc11a168', '0295c1fc-5b5f-4def-a252-d056dc11a168', 'NAshd3_NAshd3', null, 'NAshd3', '427', null, '2017-09-21 10:24:03', '2017-09-21 10:24:03', '01,3f7524b3-32ad-4912-aad4-f244b9b4225c,61cd158b-7aca-4c3f-8aaf-c9d712294e89,faf78b43-cf2a-4e3a-ac84-954374021999,0295c1fc-5b5f-4def-a252-d056dc11a168', '-1.00', '56.00');
INSERT INTO `na_users` VALUES ('116', '7f7e4320-f2ad-415e-bfc4-2c470275cb37', '3f7524b3-32ad-4912-aad4-f244b9b4225c', '3f7524b3-32ad-4912-aad4-f244b9b4225c', 'NAshx1_NAshx1', null, 'NAshx1', '726', null, '2017-09-21 10:25:10', '2017-09-21 10:25:11', '01,3f7524b3-32ad-4912-aad4-f244b9b4225c', '-1.00', '85.00');
INSERT INTO `na_users` VALUES ('117', '35cf97d7-1016-42f7-99e5-bbf4f9ad2021', '00', '00', 'Platform_chenwendevadmin', null, 'Platform', '-1', null, '2017-09-21 10:33:23', '2017-09-21 10:33:23', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('118', '485a6ed0-4580-4367-b9d6-ab5fedc8fd92', '01', '01', 'SH01_XL001', null, 'SH01', '1', null, '2017-09-21 10:38:00', '2017-09-21 10:38:01', '01', '-1.00', '52.00');
INSERT INTO `na_users` VALUES ('119', '2309abc9-666d-46b2-9f98-eec8b538b85b', '01', '01', 'cet6_sadfsadfasd', null, 'cet6', '96', null, '2017-09-21 11:34:01', '2017-09-21 11:34:02', '01', '-1.00', '0.10');
INSERT INTO `na_users` VALUES ('120', 'e1c741de-87e0-4a97-939e-9e5ad20ed04b', '01', '01', 'CD001', null, 'NULL!', '0', null, '2017-09-21 11:40:51', '2017-09-21 11:40:52', '01', '0.10', '100.00');
INSERT INTO `na_users` VALUES ('121', '4232b87f-c8ef-4535-a61a-ed6243bca6a0', '00', '00', 'Platform_YYAdmin', null, 'Platform', '-1', null, '2017-09-21 11:56:33', '2017-09-21 11:56:33', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('122', '79dd79f1-0948-4fdb-abcf-961f241c6956', '19a6b619-94a1-415e-9c93-e0b2a20884ee', '19a6b619-94a1-415e-9c93-e0b2a20884ee', 'YYA01_waiwaish', null, 'YYA01', '98', null, '2017-09-21 15:00:07', '2017-09-21 15:00:07', '01,19a6b619-94a1-415e-9c93-e0b2a20884ee', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('123', '3d5b5535-a95f-4e5c-af57-e6ddb4ed8f20', '3f7524b3-32ad-4912-aad4-f244b9b4225c', '3f7524b3-32ad-4912-aad4-f244b9b4225c', 'NAshx3_NAshx3', null, 'NAshx3', '809', null, '2017-09-21 15:04:14', '2017-09-21 15:04:14', '01,3f7524b3-32ad-4912-aad4-f244b9b4225c', '-1.00', '80.00');
INSERT INTO `na_users` VALUES ('124', '687ae86d-27ce-4fc3-a106-2b3183053d79', '01', '01', 'XLS01_xianlu1', null, 'XLS01', '-1', null, '2017-09-21 15:34:49', '2017-09-21 15:34:50', '01', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('125', '19a6b619-94a1-415e-9c93-e0b2a20884ee', '01', '01', 'YY01_Yxls01', null, 'YY01', '-1', null, '2017-09-21 15:39:04', '2017-09-21 15:39:04', '01', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('126', '3f7524b3-32ad-4912-aad4-f244b9b4225c', '01', '01', 'NAtgx1_NAtgx1', null, 'NAtgx1', '-1', null, '2017-09-21 17:06:47', '2017-09-21 17:06:49', '01', '-1.00', '89.00');
INSERT INTO `na_users` VALUES ('127', '1b78317b-3c6e-4244-9487-61ba6fa44e3e', '00', '00', 'NAagent', null, 'Agent', '0', null, '2017-09-21 17:46:02', '2017-09-21 17:46:04', '0', '100.00', '100.00');
INSERT INTO `na_users` VALUES ('128', '3883d60f-9471-49a7-8f8e-01b5e22ad162', '00', '00', 'Platform_NAtest', null, 'Platform', '-1', null, '2017-09-21 18:09:40', '2017-09-21 18:09:42', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('129', '61a92341-86df-42d8-90de-692b223eeff0', '00', '00', 'NAagent', null, 'Agent', '0', null, '2017-09-21 18:10:52', '2017-09-21 18:10:52', '0', '100.00', '100.00');
INSERT INTO `na_users` VALUES ('130', 'd8b189ae-b707-4a11-a7da-ecacaa2ab225', '00', '00', 'Platform_NAadmin', null, 'Platform', '-1', null, '2017-09-21 18:13:15', '2017-09-21 18:13:16', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('131', '6e69ceea-c8ea-4387-a01a-96fc40f7ae6a', '01', '01', 'CZSY02_Admin02', null, 'CZSY02', '12', null, '2017-09-22 10:00:28', '2017-09-22 10:00:28', '01', '-1.00', '88.00');
INSERT INTO `na_users` VALUES ('132', 'e982a827-c2e5-4d76-9f41-f40d2f74ead6', '00', '00', 'Platform_YYAdmin', null, 'Platform', '-1', null, '2017-09-22 10:59:14', '2017-09-22 10:59:14', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('133', 'bf0ad9be-5eb2-40cb-963d-7c557cf60d8b', '00', '00', 'Platform_ZCadmin', null, 'Platform', '-1', null, '2017-09-22 11:00:23', '2017-09-22 11:00:24', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('134', '87141140-b644-430c-a12f-bc7b54b7c854', '00', '00', 'Platform_MKadmin', null, 'Platform', '-1', null, '2017-09-22 11:00:51', '2017-09-22 11:00:51', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('135', '2da9599f-5402-41fe-a640-00a52720a4d0', '00', '00', 'Platform_OPadmin', null, 'Platform', '-1', null, '2017-09-22 11:01:15', '2017-09-22 11:01:15', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('136', 'f7414ecd-915a-4592-a768-8608993d1c04', '00', '00', 'Platform_BYadmin', null, 'Platform', '-1', null, '2017-09-22 11:01:53', '2017-09-22 11:01:53', '0', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('137', 'e15adc7c-80f3-40bc-a473-e0d465214b71', '01', '01', 'YYXL01_YYmanager', null, 'YYXL01', '-1', null, '2017-09-22 11:52:03', '2017-09-22 11:52:03', '01', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('138', 'f7e2e060-0cab-44e6-9211-cc547ebfe201', 'e15adc7c-80f3-40bc-a473-e0d465214b71', 'e15adc7c-80f3-40bc-a473-e0d465214b71', 'YYXL02_YYmanger02', null, 'YYXL02', '-1', null, '2017-09-22 12:03:12', '2017-09-22 12:03:13', '01,e15adc7c-80f3-40bc-a473-e0d465214b71', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('139', 'b8d0381b-e19b-4833-ab01-1d9ca996d6c7', 'e15adc7c-80f3-40bc-a473-e0d465214b71', 'e15adc7c-80f3-40bc-a473-e0d465214b71', 'YYSH01_YYmerchant', null, 'YYSH01', '2', null, '2017-09-22 12:06:19', '2017-09-22 12:06:19', '01,e15adc7c-80f3-40bc-a473-e0d465214b71', '-1.00', '100.00');
INSERT INTO `na_users` VALUES ('140', '5d2a37e5-f1d1-4f22-9826-48d0217ddd6a', 'f7e2e060-0cab-44e6-9211-cc547ebfe201', 'f7e2e060-0cab-44e6-9211-cc547ebfe201', 'YYXL03_YYadmin03', null, 'YYXL03', '-1', null, '2017-09-22 12:16:09', '2017-09-22 12:16:09', '01,e15adc7c-80f3-40bc-a473-e0d465214b71,f7e2e060-0cab-44e6-9211-cc547ebfe201', '-1.00', '99.99');
INSERT INTO `na_users` VALUES ('141', '7173fcee-9a44-416c-a07d-9ff7a8c6e926', 'f7e2e060-0cab-44e6-9211-cc547ebfe201', 'f7e2e060-0cab-44e6-9211-cc547ebfe201', 'YYSH02_YYmerchant02', null, 'YYSH02', '15', null, '2017-09-22 12:27:57', '2017-09-22 12:27:57', '01,e15adc7c-80f3-40bc-a473-e0d465214b71,f7e2e060-0cab-44e6-9211-cc547ebfe201', '-1.00', '99.99');
INSERT INTO `na_users` VALUES ('142', '98ffccfd-7210-4221-a497-36b73c58619d', 'a6670a03-dad4-4646-a4c4-d96f397a0d4f', 'a6670a03-dad4-4646-a4c4-d96f397a0d4f', 'cet8_a123456789', null, 'cet8', '-1', null, '2017-09-22 14:36:28', '2017-09-22 14:36:28', '01,687ae86d-27ce-4fc3-a106-2b3183053d79,a6670a03-dad4-4646-a4c4-d96f397a0d4f', '-1.00', '0.50');
INSERT INTO `na_users` VALUES ('143', '23e07df1-472f-4b97-8ea7-6f3df0ee05e5', '01', '01', 'STATL1_StatLine1', null, 'STATL1', '-1', null, '2017-09-22 22:15:54', '2017-09-22 22:15:55', '01', '-1.00', '90.00');
INSERT INTO `na_users` VALUES ('144', 'b096ac0e-1916-4ff1-a08d-e60df6fce941', '23e07df1-472f-4b97-8ea7-6f3df0ee05e5', '23e07df1-472f-4b97-8ea7-6f3df0ee05e5', 'STATM1_StatMer1', null, 'STATM1', '878', null, '2017-09-22 22:20:16', '2017-09-22 23:04:47', '01,23e07df1-472f-4b97-8ea7-6f3df0ee05e5', '-1.00', '85.00');
INSERT INTO `na_users` VALUES ('145', '46c9f5b4-ea9a-43d4-984b-068c055fb848', '23e07df1-472f-4b97-8ea7-6f3df0ee05e5', '23e07df1-472f-4b97-8ea7-6f3df0ee05e5', 'STATM2_statMer2', null, 'STATM2', '557', null, '2017-09-22 22:29:17', '2017-09-22 22:29:17', '01,23e07df1-472f-4b97-8ea7-6f3df0ee05e5', '-1.00', '75.00');
INSERT INTO `na_users` VALUES ('146', '526666d2-43cf-4cc2-a7d2-30943c453593', '01', '01', 'testagent', null, 'NULL!', '0', null, '2017-09-23 05:59:49', '2017-09-23 07:00:30', '01', '0.99', '90.00');
INSERT INTO `na_users` VALUES ('147', '60bc4f61-353b-48bf-8fda-b533f0a69db4', '01', '01', 'XYC_EdenAdmin', null, 'XYC', '0', null, '2017-09-23 13:35:52', '2017-09-23 21:55:54', '01', '-1.00', '11.00');
