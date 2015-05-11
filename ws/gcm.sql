/*
Navicat MySQL Data Transfer

Source Server         : 61.19.22.195-บางกำ
Source Server Version : 50538
Source Host           : 61.19.22.195:3306
Source Database       : gcm

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-05-06 16:55:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `imei` varchar(255) NOT NULL,
  `dateadd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`,`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
