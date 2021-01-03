/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : distribute_order

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2020-02-19 23:12:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for platoon
-- ----------------------------
DROP TABLE IF EXISTS `platoon`;
CREATE TABLE `platoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of platoon
-- ----------------------------
INSERT INTO `platoon` VALUES ('87', null, '123456');

-- ----------------------------
-- Table structure for t_logger
-- ----------------------------
DROP TABLE IF EXISTS `t_logger`;
CREATE TABLE `t_logger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(64) NOT NULL,
  `unit_id` varchar(32) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `create_time` varchar(30) NOT NULL,
  `app_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_logger
-- ----------------------------
INSERT INTO `t_logger` VALUES ('1', 'non', 'non', '7a14966e95537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-15 18:46:37 519', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('2', 'non', 'non', '7a14d1e245537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-15 18:51:53 814', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('3', 'non', 'non', '7a150019f5537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-15 18:54:26 009', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('4', 'non', 'non', '7a1fd9ac617537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-15 22:04:58 326', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('5', 'non', 'non', '7a2007e6e17537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-15 22:15:20 878', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('6', 'non', 'non', '7a23066f6e537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-15 23:06:04 929', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('7', 'non', 'non', '7a23d044ae537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-15 23:28:13 006', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('8', 'non', 'non', '7a29e525d10537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 01:00:59 241', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('9', 'non', 'non', '7a580bf2910537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 14:36:52 500', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('10', 'non', 'non', '7a599dd3310537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 14:52:46 524', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('11', 'non', 'non', '7a59a8b1f10537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 14:57:22 109', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('12', 'non', 'non', 'SimpleDTXChecking', 'lcn clean transaction error.', '2020-02-16 15:00:18 048', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('13', 'non', 'non', '7a5a2a4ea10537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:02:27 228', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('14', 'non', 'non', '7a5a306e110537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:02:27 236', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('15', 'non', 'non', '7a5a2c5c610537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:02:27 238', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('16', 'non', 'non', '7a5a4ab5c10537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:04:54 808', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('17', 'non', 'non', '7a5a4652e10537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:04:54 808', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('18', 'non', 'non', '7a5a7695810537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:07:26 457', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('19', 'non', 'non', '7a5a6547610537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:07:26 457', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('20', 'non', 'non', '7a5aa1b7f15537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:03 253', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('21', 'non', 'non', '7a5a9c17715537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:03 253', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('22', 'non', 'non', '7a5ab8c4515537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:58 757', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('23', 'non', 'non', '7a5abc95e15537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:58 760', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('24', 'non', 'non', '7a5abd7cd15537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:58 770', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('25', 'non', 'non', '7a5abd75c15537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:58 770', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('26', 'non', 'non', '7a5abd4f515537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:58 772', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('27', 'non', 'non', '7a5abce3515537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:58 777', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('28', 'non', 'non', '7a5abe92315537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:11:58 778', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('29', 'non', 'non', '7a5acee0515537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:13:09 859', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('30', 'non', 'non', '7a5b0512d1e537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:16:55 940', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('31', 'non', 'non', '7a5b08ab21e537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:17:21 657', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('32', 'non', 'non', '7a5b118eb1e537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:17:38 696', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('33', 'non', 'non', '7a5bb81901e537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 15:29:30 239', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('34', 'non', 'non', '7a5fc7c4f22537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 16:56:40 423', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('35', 'non', 'non', '7a60c170e21537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 16:58:40 151', 'meitemayikt-distribute:8030');
INSERT INTO `t_logger` VALUES ('36', 'non', 'non', '7a610a6f521537', 'ca8bc00b3fa03491bfbf28abec92300a', '2020-02-16 17:11:06 568', 'meitemayikt-distribute:8030');

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of undo_log
-- ----------------------------
