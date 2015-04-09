/*
Navicat MySQL Data Transfer

Source Server         : local-mariadb
Source Server Version : 50540
Source Host           : localhost:3309
Source Database       : dhdc_update

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-04-09 12:55:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cprename
-- ----------------------------
DROP TABLE IF EXISTS `cprename`;
CREATE TABLE `cprename` (
  `id_prename` varchar(3) NOT NULL,
  `prename` varchar(50) NOT NULL,
  `detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_prename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cprename
-- ----------------------------
INSERT INTO `cprename` VALUES ('001', 'ด.ช.', 'เด็กชาย');
INSERT INTO `cprename` VALUES ('002', 'ด.ญ.', 'เด็กหญิง');
INSERT INTO `cprename` VALUES ('003', 'นาย', 'นาย');
INSERT INTO `cprename` VALUES ('004', 'น.ส.', 'นางสาว');
INSERT INTO `cprename` VALUES ('005', 'นาง', 'นาง');
INSERT INTO `cprename` VALUES ('006', 'น.ช.ม.ล.', 'นักโทษชายหม่อมหลวง');
INSERT INTO `cprename` VALUES ('007', 'น.ช.', 'นักโทษชาย');
INSERT INTO `cprename` VALUES ('008', 'น.ญ.', 'นักโทษหญิง');
INSERT INTO `cprename` VALUES ('009', 'น.ช.จ.ส.อ.', 'นักโทษชายจ่าสิบเอก');
INSERT INTO `cprename` VALUES ('010', 'น.ช.จ.อ.', 'นักโทษชายจ่าเอก');
INSERT INTO `cprename` VALUES ('011', 'น.ช.พลฯ.', 'นักโทษชายพลทหาร');
INSERT INTO `cprename` VALUES ('012', 'น.ช.ร.ต.', 'นักโทษชายร้อยตรี');
INSERT INTO `cprename` VALUES ('099', 'พระเจ้าหลานเธอ พระองค์เจ้า', 'พระเจ้าหลานเธอ พระองค์เจ้า');
INSERT INTO `cprename` VALUES ('100', 'พระบาทสมเด็จพระเจ้าอยู่หัว', 'พระบาทสมเด็จพระเจ้าอยู่หัว');
INSERT INTO `cprename` VALUES ('101', 'สมเด็จพระนางเจ้า', 'สมเด็จพระนางเจ้า');
INSERT INTO `cprename` VALUES ('102', 'สมเด็จพระศรีนครินทราบรมราชชนนี', 'สมเด็จพระศรีนครินทราบรมราชชนนี');
INSERT INTO `cprename` VALUES ('103', 'พลโทสมเด็จพระบรมโอรสาธิราช', 'พลโทสมเด็จพระบรมโอรสาธิราช');
INSERT INTO `cprename` VALUES ('104', 'พลตรีสมเด็จพระเทพรัตนราชสุดา', 'พลตรีสมเด็จพระเทพรัตนราชสุดา');
INSERT INTO `cprename` VALUES ('105', 'พระเจ้าวรวงศ์เธอพระองค์หญิง', 'พระเจ้าวรวงศ์เธอพระองค์หญิง');
INSERT INTO `cprename` VALUES ('106', 'พระเจ้าวรวงศ์เธอ พระองค์เจ้า', 'พระเจ้าวรวงศ์เธอ พระองค์เจ้า');
INSERT INTO `cprename` VALUES ('107', 'สมเด็จพระราชชนนี', 'สมเด็จพระราชชนนี');
INSERT INTO `cprename` VALUES ('108', 'สมเด็จพระเจ้าพี่นางเธอเจ้าฟ้า', 'สมเด็จพระเจ้าพี่นางเธอเจ้าฟ้า');
INSERT INTO `cprename` VALUES ('109', 'สมเด็จพระ', 'สมเด็จพระ');
INSERT INTO `cprename` VALUES ('110', 'สมเด็จพระเจ้าลูกเธอ', 'สมเด็จพระเจ้าลูกเธอ');
INSERT INTO `cprename` VALUES ('111', 'สมเด็จพระเจ้าลูกยาเธอ', 'สมเด็จพระเจ้าลูกยาเธอ');
INSERT INTO `cprename` VALUES ('112', 'สมเด็จเจ้าฟ้า', 'สมเด็จเจ้าฟ้า');
INSERT INTO `cprename` VALUES ('113', 'พระเจ้าบรมวงศ์เธอ', 'พระเจ้าบรมวงศ์เธอ');
INSERT INTO `cprename` VALUES ('114', 'พระเจ้าวรวงศ์เธอ', 'พระเจ้าวรวงศ์เธอ');
INSERT INTO `cprename` VALUES ('115', 'พระเจ้าหลานเธอ', 'พระเจ้าหลานเธอ');
INSERT INTO `cprename` VALUES ('116', 'พระเจ้าหลานยาเธอ', 'พระเจ้าหลานยาเธอ');
INSERT INTO `cprename` VALUES ('117', 'พระวรวงศ์เธอ', 'พระวรวงศ์เธอ');
INSERT INTO `cprename` VALUES ('118', 'สมเด็จพระเจ้าภคินีเธอ', 'สมเด็จพระเจ้าภคินีเธอ');
INSERT INTO `cprename` VALUES ('119', 'พระองค์เจ้า', 'พระองค์เจ้า');
INSERT INTO `cprename` VALUES ('120', 'ม.จ.', 'หม่อมเจ้า');
INSERT INTO `cprename` VALUES ('121', 'ม.ร.ว.', 'หม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('122', 'ม.ล.', 'หม่อมหลวง');
INSERT INTO `cprename` VALUES ('123', 'พระยา', 'พระยา');
INSERT INTO `cprename` VALUES ('124', 'หลวง', 'หลวง');
INSERT INTO `cprename` VALUES ('125', 'ขุน', 'ขุน');
INSERT INTO `cprename` VALUES ('126', 'หมื่น', 'หมื่น');
INSERT INTO `cprename` VALUES ('127', 'เจ้าคุณ', 'เจ้าคุณ');
INSERT INTO `cprename` VALUES ('128', 'พระวรวงศ์เธอพระองค์เจ้า', 'พระวรวงศ์เธอพระองค์เจ้า');
INSERT INTO `cprename` VALUES ('129', 'คุณ', 'คุณ');
INSERT INTO `cprename` VALUES ('130', 'คุณหญิง', 'คุณหญิง');
INSERT INTO `cprename` VALUES ('131', 'ท่านผู้หญิง ม.ล.', 'ท่านผู้หญิงหม่อมหลวง');
INSERT INTO `cprename` VALUES ('132', 'ศจ.น.พ.', 'ศาสตราจารย์นายแพทย์');
INSERT INTO `cprename` VALUES ('133', 'พ.ญ.คุณหญิง', 'แพทย์หญิงคุณหญิง');
INSERT INTO `cprename` VALUES ('134', 'น.พ.', 'นายแพทย์');
INSERT INTO `cprename` VALUES ('135', 'พ.ญ.', 'แพทย์หญิง');
INSERT INTO `cprename` VALUES ('136', 'ท.พ.', 'ทัณตแพทย์');
INSERT INTO `cprename` VALUES ('137', 'ท.ญ.', 'ทัณตแพทย์หญิง');
INSERT INTO `cprename` VALUES ('138', 'สพ.', 'สัตวแพทย์');
INSERT INTO `cprename` VALUES ('139', 'สญ.', 'สัตวแพทย์หญิง');
INSERT INTO `cprename` VALUES ('140', 'ดร.', 'ดอกเตอร์');
INSERT INTO `cprename` VALUES ('141', 'ผศ.', 'ผู้ช่วยศาสตราจารย์');
INSERT INTO `cprename` VALUES ('142', 'รศ.', 'รองศาสตราจารย์');
INSERT INTO `cprename` VALUES ('143', 'ศจ.', 'ศาสตราจารย์');
INSERT INTO `cprename` VALUES ('144', 'ภก.', 'เภสัชกรชาย');
INSERT INTO `cprename` VALUES ('145', 'ภญ.', 'เภสัชกรหญิง');
INSERT INTO `cprename` VALUES ('146', 'หม่อม', 'หม่อม');
INSERT INTO `cprename` VALUES ('147', 'รองอำมาตย์เอก', 'รองอำมาตย์เอก');
INSERT INTO `cprename` VALUES ('148', 'ท้าว', 'ท้าว');
INSERT INTO `cprename` VALUES ('149', 'เจ้า', 'เจ้า');
INSERT INTO `cprename` VALUES ('150', 'ท่านผู้หญิง', 'ท่านผู้หญิง');
INSERT INTO `cprename` VALUES ('151', 'คุณพระ', 'คุณพระ');
INSERT INTO `cprename` VALUES ('152', 'ศจ.คุณหญิง', 'ศาสตราจารย์คุณหญิง');
INSERT INTO `cprename` VALUES ('153', 'ซิสเตอร์', 'ซิสเตอร์');
INSERT INTO `cprename` VALUES ('154', 'เจ้าชาย', 'เจ้าชาย');
INSERT INTO `cprename` VALUES ('155', 'เจ้าหญิง', 'เจ้าหญิง');
INSERT INTO `cprename` VALUES ('156', 'รองเสวกตรี', 'รองเสวกตรี');
INSERT INTO `cprename` VALUES ('157', 'เสด็จเจ้า', 'เสด็จเจ้า');
INSERT INTO `cprename` VALUES ('158', 'เอกอัครราชฑูต', 'เอกอัครราชฑูต');
INSERT INTO `cprename` VALUES ('159', 'พลสารวัตร', 'พลสารวัตร');
INSERT INTO `cprename` VALUES ('160', 'สมเด็จเจ้า', 'สมเด็จเจ้า');
INSERT INTO `cprename` VALUES ('161', 'เจ้าฟ้า', 'เจ้าฟ้า');
INSERT INTO `cprename` VALUES ('162', 'รองอำมาตย์ตรี', 'รองอำมาตย์ตรี');
INSERT INTO `cprename` VALUES ('163', 'ม.จ.หญิง', 'หม่อมเจ้าหญิง');
INSERT INTO `cprename` VALUES ('164', 'ทูลกระหม่อม', 'ทูลกระหม่อม');
INSERT INTO `cprename` VALUES ('165', 'ศ.ดร.', 'ศาสตราจารย์ดอกเตอร์');
INSERT INTO `cprename` VALUES ('166', 'เจ้านาง', 'เจ้านาง');
INSERT INTO `cprename` VALUES ('167', 'จ่าสำรอง', 'จ่าสำรอง');
INSERT INTO `cprename` VALUES ('200', 'พล.อ.', 'พลเอก');
INSERT INTO `cprename` VALUES ('201', 'ว่าที่ พล.อ.', 'ว่าที่พลเอก');
INSERT INTO `cprename` VALUES ('202', 'พล.ท.', 'พลโท');
INSERT INTO `cprename` VALUES ('204', 'พล.ต.', 'พลตรี');
INSERT INTO `cprename` VALUES ('205', 'ว่าที่ พล.ต.', 'ว่าที่พลตรี');
INSERT INTO `cprename` VALUES ('206', 'พ.อ.(พิเศษ)', 'พันเอกพิเศษ');
INSERT INTO `cprename` VALUES ('207', 'ว่าที่ พ.อ.(พิเศษ)', 'ว่าที่พันเอกพิเศษ');
INSERT INTO `cprename` VALUES ('208', 'พ.อ.', 'พันเอก');
INSERT INTO `cprename` VALUES ('209', 'ว่าที่ พ.อ.', 'ว่าที่พันเอก');
INSERT INTO `cprename` VALUES ('210', 'พ.ท.', 'พันโท');
INSERT INTO `cprename` VALUES ('211', 'ว่าที่ พ.ท.', 'ว่าที่พันโท');
INSERT INTO `cprename` VALUES ('212', 'พ.ต.', 'พันตรี');
INSERT INTO `cprename` VALUES ('213', 'ว่าที่ พ.ต.', 'ว่าที่พันตรี');
INSERT INTO `cprename` VALUES ('214', 'ร.อ.', 'ร้อยเอก');
INSERT INTO `cprename` VALUES ('215', 'ว่าที่ ร.อ.', 'ว่าที่ร้อยเอก');
INSERT INTO `cprename` VALUES ('216', 'ร.ท.', 'ร้อยโท');
INSERT INTO `cprename` VALUES ('217', 'ว่าที่ ร.ท.', 'ว่าที่ร้อยโท');
INSERT INTO `cprename` VALUES ('218', 'ร.ต.', 'ร้อยตรี');
INSERT INTO `cprename` VALUES ('219', 'ว่าที่ ร.ต.', 'ว่าที่ร้อยตรี');
INSERT INTO `cprename` VALUES ('220', 'จ.ส.อ.', 'จ่าสิบเอก');
INSERT INTO `cprename` VALUES ('221', 'จ.ส.ท.', 'จ่าสิบโท');
INSERT INTO `cprename` VALUES ('222', 'จ.ส.ต.', 'จ่าสิบตรี');
INSERT INTO `cprename` VALUES ('223', 'ส.อ.', 'สิบเอก');
INSERT INTO `cprename` VALUES ('224', 'ส.ท.', 'สิบโท');
INSERT INTO `cprename` VALUES ('225', 'ส.ต.', 'สิบตรี');
INSERT INTO `cprename` VALUES ('226', 'พลฯ', 'พลทหาร');
INSERT INTO `cprename` VALUES ('227', 'นนร.', 'นักเรียนนายร้อย');
INSERT INTO `cprename` VALUES ('228', 'นนส.', 'นักเรียนนายสิบ');
INSERT INTO `cprename` VALUES ('229', 'พล.จ.', 'พลจัตวา');
INSERT INTO `cprename` VALUES ('230', 'พลฯ อาสา', 'พลฯ อาสาสมัคร');
INSERT INTO `cprename` VALUES ('231', 'ร.อ.ม.จ.', 'ร้อยเอกหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('232', 'พล.ท.ม.จ.', 'พลโทหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('233', 'ร.ต.ม.จ.', 'ร้อยตรีหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('234', 'ร.ท.ม.จ.', 'ร้อยโทหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('235', 'พ.ท.ม.จ.', 'พันโทหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('236', 'พ.อ.ม.จ.', 'พันเอกหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('237', 'พ.ต.ม.ร.ว.', 'พันตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('238', 'พ.ท.ม.ร.ว.', 'พันโทหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('239', 'ส.ต.ม.ร.ว.', 'สิบตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('240', 'พ.อ.ม.ร.ว.', 'พันเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('241', 'จ.ส.อ.ม.ร.ว.', 'จ่าสิบเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('242', 'ร.อ.ม.ร.ว.', 'ร้อยเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('243', 'ร.ต.ม.ร.ว.', 'ร้อยตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('244', 'ส.อ.ม.ร.ว.', 'สิบเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('245', 'ร.ท.ม.ร.ว.', 'ร้อยโทหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('246', 'พ.อ.(พิเศษ)ม.ร.ว.', 'พันเอก(พิเศษ)หม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('247', 'พลฯม.ล.', 'พลฯหม่อมหลวง');
INSERT INTO `cprename` VALUES ('248', 'ร.อ.ม.ล.', 'ร้อยเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('249', 'ส.ท.ม.ล.', 'สิบโทหม่อมหลวง');
INSERT INTO `cprename` VALUES ('250', 'พล.ท.ม.ล.', 'พลโทหม่อมหลวง');
INSERT INTO `cprename` VALUES ('251', 'ร.ท.ม.ล.', 'ร้อยโทหม่อมหลวง');
INSERT INTO `cprename` VALUES ('252', 'ร.ต.ม.ล.', 'ร้อยตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('253', 'ส.อ.ม.ล.', 'สิบเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('254', 'พล.ต.ม.ล.', 'พลตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('255', 'พ.ต.ม.ล.', 'พันตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('256', 'พ.อ.ม.ล.', 'พันเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('257', 'พ.ท.ม.ล.', 'พันโทหม่อมหลวง');
INSERT INTO `cprename` VALUES ('258', 'จ.ส.ต.ม.ล.', 'จ่าสิบตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('259', 'นนร.ม.ล.', 'นักเรียนนายร้อยหม่อมหลวง');
INSERT INTO `cprename` VALUES ('260', 'ว่าที่ร.ต.ม.ล.', 'ว่าที่ร้อยตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('261', 'จ.ส.อ.ม.ล.', 'จ่าสิบเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('262', 'ร.อ.น.พ.', 'ร้อยเอกนายแพทย์');
INSERT INTO `cprename` VALUES ('263', 'ร.อ.พ.ญ.', 'ร้อยเอกแพทย์หญิง');
INSERT INTO `cprename` VALUES ('264', 'ร.ท.น.พ.', 'ร้อยโทนายแพทย์');
INSERT INTO `cprename` VALUES ('265', 'พ.ต.น.พ.', 'พันตรีนายแพทย์');
INSERT INTO `cprename` VALUES ('266', 'ว่าที่ ร.ท.น.พ.', 'ว่าที่ร้อยโทนายแพทย์');
INSERT INTO `cprename` VALUES ('267', 'พ.อ.น.พ.', 'พันเอกนายแพทย์');
INSERT INTO `cprename` VALUES ('268', 'ร.ต.น.พ.', 'ร้อยตรีนายแพทย์');
INSERT INTO `cprename` VALUES ('269', 'ร.ท.พ.ญ.', 'ร้อยโทแพทย์หญิง');
INSERT INTO `cprename` VALUES ('270', 'พล.ต.น.พ.', 'พลตรีนายแพทย์');
INSERT INTO `cprename` VALUES ('271', 'พ.ท.น.พ.', 'พันโทนายแพทย์');
INSERT INTO `cprename` VALUES ('272', 'จอมพล', 'จอมพล');
INSERT INTO `cprename` VALUES ('273', 'พ.ท.หลวง', 'พันโทหลวง');
INSERT INTO `cprename` VALUES ('274', 'พ.ต.พระเจ้าวรวงศ์เธอพระองค์เจ้า', 'พันตรีพระเจ้าวรวงศ์เธอพระองค์เจ้า');
INSERT INTO `cprename` VALUES ('275', 'ศจ.พ.อ.', 'ศาสตราจารย์พันเอก');
INSERT INTO `cprename` VALUES ('276', 'พ.ต.หลวง', 'พันตรีหลวง');
INSERT INTO `cprename` VALUES ('277', 'พล.ท.หลวง', 'พลโทหลวง');
INSERT INTO `cprename` VALUES ('278', 'ร.ท.ดร.', 'ร้อยโทดอกเตอร์');
INSERT INTO `cprename` VALUES ('279', 'ร.อ.ดร.', 'ร้อยเอกดอกเตอร์');
INSERT INTO `cprename` VALUES ('280', 'ส.ห.', 'สารวัตรทหาร');
INSERT INTO `cprename` VALUES ('281', 'ร.ต.ดร.', 'ร้อยตรีดอกเตอร์');
INSERT INTO `cprename` VALUES ('282', 'พ.ต.คุณหญิง', 'พันตรีคุณหญิง');
INSERT INTO `cprename` VALUES ('283', 'จ.ส.ต.ม.ร.ว.', 'จ่าสิบตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('284', 'พล.จ.หลวง', 'พลจัตวาหลวง');
INSERT INTO `cprename` VALUES ('285', 'พล.ต.ม.ร.ว.', 'พลตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('286', 'พ.ต.พระเจ้าวรวงศ์เธอพระองค์', 'พันตรีพระเจ้าวรวงศ์เธอพระองค์');
INSERT INTO `cprename` VALUES ('287', 'ท่านผู้หญิง ม.ร.ว.', 'ท่านผู้หญิงหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('288', 'ศจ.ร.อ.', 'ศาสตราจารย์ร้อยเอก');
INSERT INTO `cprename` VALUES ('289', 'พ.ท.คุณหญิง', 'พันโทคุณหญิง');
INSERT INTO `cprename` VALUES ('290', 'ร.ต.พ.ญ.', 'ร้อยตรีแพทย์หญิง');
INSERT INTO `cprename` VALUES ('291', 'พล.อ.มล.', 'พลเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('292', 'ว่าที่ ร.ต.ม.ร.ว.', 'ว่าที่ร้อยตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('293', 'พ.อ.หญิง คุณหญิง', 'พันเอกหญิงคุณหญิง');
INSERT INTO `cprename` VALUES ('294', 'จ.ส.อ.พิเศษ', 'จ่าสิบเอกพิเศษ');
INSERT INTO `cprename` VALUES ('351', 'พล.ร.อ.', 'พลเรือเอก');
INSERT INTO `cprename` VALUES ('352', 'ว่าที่ พล.ร.อ.', 'ว่าที่พลเรือเอก');
INSERT INTO `cprename` VALUES ('353', 'พล.ร.ท.', 'พลเรือโท');
INSERT INTO `cprename` VALUES ('354', 'ว่าที่ พล.ร.ท.', 'ว่าที่พลเรือโท');
INSERT INTO `cprename` VALUES ('355', 'พล.ร.ต.', 'พลเรือตรี');
INSERT INTO `cprename` VALUES ('356', 'ว่าที่ พล.ร.ต.', 'ว่าที่พลเรือตรี');
INSERT INTO `cprename` VALUES ('357', 'น.อ.พิเศษ', 'นาวาเอกพิเศษ');
INSERT INTO `cprename` VALUES ('358', 'ว่าที่ น.อ.พิเศษ', 'ว่าที่นาวาเอกพิเศษ');
INSERT INTO `cprename` VALUES ('359', 'น.อ.', 'นาวาเอก');
INSERT INTO `cprename` VALUES ('360', 'ว่าที่ น.อ.', 'ว่าที่นาวาเอก');
INSERT INTO `cprename` VALUES ('361', 'น.ท.', 'นาวาโท');
INSERT INTO `cprename` VALUES ('362', 'ว่าที่ น.ท.', 'ว่าที่นาวาโท');
INSERT INTO `cprename` VALUES ('363', 'น.ต.', 'นาวาตรี');
INSERT INTO `cprename` VALUES ('364', 'ว่าที่ น.ต.', 'ว่าที่นาวาตรี');
INSERT INTO `cprename` VALUES ('365', 'ร.อ.', 'เรือเอก');
INSERT INTO `cprename` VALUES ('366', 'ว่าที่ ร.อ.', 'ว่าที่เรือเอก');
INSERT INTO `cprename` VALUES ('367', 'ร.ท.', 'เรือโท');
INSERT INTO `cprename` VALUES ('368', 'ว่าที่ ร.ท.', 'ว่าที่เรือโท');
INSERT INTO `cprename` VALUES ('369', 'ร.ต.', 'เรือตรี');
INSERT INTO `cprename` VALUES ('370', 'ว่าที่ ร.ต.', 'ว่าที่เรือตรี');
INSERT INTO `cprename` VALUES ('371', 'พ.จ.อ.', 'พันจ่าเอก');
INSERT INTO `cprename` VALUES ('372', 'พ.จ.ท.', 'พันจ่าโท');
INSERT INTO `cprename` VALUES ('373', 'พ.จ.ต.', 'พันจ่าตรี');
INSERT INTO `cprename` VALUES ('374', 'จ.อ.', 'จ่าเอก');
INSERT INTO `cprename` VALUES ('375', 'จ.ท.', 'จ่าโท');
INSERT INTO `cprename` VALUES ('376', 'จ.ต.', 'จ่าตรี');
INSERT INTO `cprename` VALUES ('377', 'พลฯ', 'พลฯทหารเรือ');
INSERT INTO `cprename` VALUES ('378', 'นนร.', 'นักเรียนนายเรือ');
INSERT INTO `cprename` VALUES ('379', 'นรจ.', 'นักเรียนจ่าทหารเรือ');
INSERT INTO `cprename` VALUES ('380', 'พล.ร.จ.', 'พลเรือจัตวา');
INSERT INTO `cprename` VALUES ('381', 'น.ท.ม.จ.', 'นาวาโทหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('382', 'น.อ.ม.จ.', 'นาวาเอกหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('383', 'น.ต.ม.จ.', 'นาวาตรีหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('384', 'พล.ร.ต.ม.ร.ว.', 'พลเรือตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('385', 'น.อ.ม.ร.ว.', 'นาวาเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('386', 'น.ท.ม.ร.ว.', 'นาวาโทหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('387', 'น.ต.ม.ร.ว.', 'นาวาตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('388', 'น.ท.ม.ล.', 'นาวาโทหม่อมหลวง');
INSERT INTO `cprename` VALUES ('389', 'น.ต.ม.ล.', 'นาวาตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('390', 'พ.จ.อ.ม.ล.', 'พันจ่าเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('391', 'น.ต.พ.ญ.', 'นาวาตรีแพทย์หญิง');
INSERT INTO `cprename` VALUES ('392', 'น.อ.หลวง', 'นาวาอากาศเอกหลวง');
INSERT INTO `cprename` VALUES ('393', 'พล.ร.ต.ม.จ.', 'พลเรือตรีหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('395', 'น.ต.น.พ.', 'นาวาตรีนายแพทย์');
INSERT INTO `cprename` VALUES ('396', 'พล.ร.ต.ม.ล.', 'พลเรือตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('500', 'พล.อ.อ.', 'พลอากาศเอก');
INSERT INTO `cprename` VALUES ('501', 'ว่าที่ พล.อ.อ.', 'ว่าที่พลอากาศเอก');
INSERT INTO `cprename` VALUES ('502', 'พล.อ.ท.', 'พลอากาศโท');
INSERT INTO `cprename` VALUES ('503', 'ว่าที่ พล.อ.ท.', 'ว่าที่พลอากาศโท');
INSERT INTO `cprename` VALUES ('504', 'พล.อ.ต.', 'พลอากาศตรี');
INSERT INTO `cprename` VALUES ('505', 'ว่าที่ พล.อ.ต.', 'ว่าที่พลอากาศตรี');
INSERT INTO `cprename` VALUES ('506', 'น.อ.พิเศษ', 'นาวาอากาศเอกพิเศษ');
INSERT INTO `cprename` VALUES ('507', 'ว่าที่ น.อ.พิเศษ', 'ว่าที่นาวาอากาศเอกพิเศษ');
INSERT INTO `cprename` VALUES ('508', 'น.อ.', 'นาวาอากาศเอก');
INSERT INTO `cprename` VALUES ('509', 'ว่าที่ น.อ.', 'ว่าที่นาวาอากาศเอก');
INSERT INTO `cprename` VALUES ('510', 'น.ท.', 'นาวาอากาศโท');
INSERT INTO `cprename` VALUES ('511', 'ว่าที่ น.ท.', 'ว่าที่นาวาอากาศโท');
INSERT INTO `cprename` VALUES ('512', 'น.ต.', 'นาวาอากาศตรี');
INSERT INTO `cprename` VALUES ('513', 'ว่าที่ น.ต.', 'ว่าที่นาวาอากาศตรี');
INSERT INTO `cprename` VALUES ('514', 'ร.อ.', 'เรืออากาศเอก');
INSERT INTO `cprename` VALUES ('515', 'ว่าที่ ร.อ.', 'ว่าที่เรืออากาศเอก');
INSERT INTO `cprename` VALUES ('516', 'ร.ท.', 'เรืออากาศโท');
INSERT INTO `cprename` VALUES ('517', 'ว่าที่ ร.ท.', 'ว่าที่เรืออากาศโท');
INSERT INTO `cprename` VALUES ('518', 'ร.ต.', 'เรืออากาศตรี');
INSERT INTO `cprename` VALUES ('519', 'ว่าที่ ร.ต.', 'ว่าที่เรืออากาศตรี');
INSERT INTO `cprename` VALUES ('520', 'พ.อ.อ.', 'พันจ่าอากาศเอก');
INSERT INTO `cprename` VALUES ('521', 'พ.อ.ท.', 'พันจ่าอากาศโท');
INSERT INTO `cprename` VALUES ('522', 'พ.อ.ต.', 'พันจ่าอากาศตรี');
INSERT INTO `cprename` VALUES ('523', 'จ.อ.', 'จ่าอากาศเอก');
INSERT INTO `cprename` VALUES ('524', 'จ.ท.', 'จ่าอากาศโท');
INSERT INTO `cprename` VALUES ('525', 'จ.ต.', 'จ่าอากาศตรี');
INSERT INTO `cprename` VALUES ('526', 'พลฯ', 'พลฯทหารอากาศ');
INSERT INTO `cprename` VALUES ('527', 'นนอ.', 'นักเรียนนายเรืออากาศ');
INSERT INTO `cprename` VALUES ('528', 'นจอ.', 'นักเรียนจ่าอากาศ');
INSERT INTO `cprename` VALUES ('529', 'น.พ.อ.', 'นักเรียนพยาบาลทหารอากาศ');
INSERT INTO `cprename` VALUES ('530', 'พ.อ.อ.ม.ร.ว.', 'พันอากาศเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('531', 'พล.อ.ต.ม.ร.ว.', 'พลอากาศตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('532', 'พล.อ.ท.ม.ล.', 'พลอากาศโทหม่อมหลวง');
INSERT INTO `cprename` VALUES ('533', 'ร.ท.ขุน', 'เรืออากาศโทขุน');
INSERT INTO `cprename` VALUES ('534', 'พ.อ.อ.ม.ล.', 'พันจ่าอากาศเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('535', 'ร.อ.น.พ.', 'เรืออากาศเอกนายแพทย์');
INSERT INTO `cprename` VALUES ('536', 'พล.อ.อ.ม.ร.ว.', 'พลอากาศเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('537', 'พล.อ.ต.ม.ล.', 'พลอากาศตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('538', 'พล.อ.จ.', 'พลอากาศจัตวา');
INSERT INTO `cprename` VALUES ('539', 'พล.อ.ท.ม.ร.ว.', 'พลอากาศโทหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('540', 'น.อ.ม.ล.', 'นาวาอากาศเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('606', 'พระครูพิบูลสมณธรรม', 'พระครูพิบูลสมณธรรม');
INSERT INTO `cprename` VALUES ('651', 'พล.ต.อ.', 'พลตำรวจเอก');
INSERT INTO `cprename` VALUES ('652', 'ว่าที่ พล.ต.อ.', 'ว่าที่พลตำรวจเอก');
INSERT INTO `cprename` VALUES ('653', 'พล.ต.ท.', 'พลตำรวจโท');
INSERT INTO `cprename` VALUES ('654', 'ว่าที่ พล.ต.ท.', 'ว่าที่พลตำรวจโท');
INSERT INTO `cprename` VALUES ('655', 'พล.ต.ต.', 'พลตำรวจตรี');
INSERT INTO `cprename` VALUES ('656', 'ว่าที่ พล.ต.ต.', 'ว่าที่พลตำรวจตรี');
INSERT INTO `cprename` VALUES ('657', 'พล.ต.จ.', 'พลตำรวจจัตวา');
INSERT INTO `cprename` VALUES ('658', 'ว่าที่พล.ต.จ.', 'ว่าที่พลตำรวจจัตวา');
INSERT INTO `cprename` VALUES ('659', 'พ.ต.อ. (พิเศษ)', 'พันตำรวจเอก (พิเศษ)');
INSERT INTO `cprename` VALUES ('660', 'ว่าที่ พ.ต.อ.พิเศษ', 'ว่าที่พันตำรวจเอก(พิเศษ)');
INSERT INTO `cprename` VALUES ('661', 'พ.ต.อ.', 'พันตำรวจเอก');
INSERT INTO `cprename` VALUES ('662', 'ว่าที่ พ.ต.อ.', 'ว่าที่พันตำรวจเอก');
INSERT INTO `cprename` VALUES ('663', 'พ.ต.ท.', 'พันตำรวจโท');
INSERT INTO `cprename` VALUES ('664', 'ว่าที่ พ.ต.ท.', 'ว่าที่พันตำรวจโท');
INSERT INTO `cprename` VALUES ('665', 'พ.ต.ต.', 'พันตำรวจตรี');
INSERT INTO `cprename` VALUES ('666', 'ว่าที่ พ.ต.ต.', 'ว่าที่พันตำรวจตรี');
INSERT INTO `cprename` VALUES ('667', 'ร.ต.อ.', 'ร้อยตำรวจเอก');
INSERT INTO `cprename` VALUES ('668', 'ว่าที่ ร.ต.อ.', 'ว่าที่ร้อยตำรวจเอก');
INSERT INTO `cprename` VALUES ('669', 'ร.ต.ท.', 'ร้อยตำรวจโท');
INSERT INTO `cprename` VALUES ('670', 'ว่าที่ ร.ต.ท.', 'ว่าที่ร้อยตำรวจโท');
INSERT INTO `cprename` VALUES ('671', 'ร.ต.ต.', 'ร้อยตำรวจตรี');
INSERT INTO `cprename` VALUES ('672', 'ว่าที่ ร.ต.ต.', 'ว่าที่ร้อยตำรวจตรี');
INSERT INTO `cprename` VALUES ('673', 'ด.ต.', 'นายดาบตำรวจ');
INSERT INTO `cprename` VALUES ('674', 'จ.ส.ต.', 'จ่าสิบตำรวจ');
INSERT INTO `cprename` VALUES ('675', 'ส.ต.อ.', 'สิบตำรวจเอก');
INSERT INTO `cprename` VALUES ('676', 'ส.ต.ท.', 'สิบตำรวจโท');
INSERT INTO `cprename` VALUES ('677', 'ส.ต.ต.', 'สิบตำรวจตรี');
INSERT INTO `cprename` VALUES ('678', 'นรต.', 'นักเรียนนายร้อยตำรวจ');
INSERT INTO `cprename` VALUES ('679', 'นสต.', 'นักเรียนนายสิบตำรวจ');
INSERT INTO `cprename` VALUES ('680', 'นพต.', 'นักเรียนพลตำรวจ');
INSERT INTO `cprename` VALUES ('681', 'พลฯ', 'พลตำรวจ');
INSERT INTO `cprename` VALUES ('682', 'พลฯพิเศษ', 'พลตำรวจพิเศษ');
INSERT INTO `cprename` VALUES ('683', 'พลฯอาสา', 'พลตำรวจอาสาสมัคร');
INSERT INTO `cprename` VALUES ('684', 'พลฯสำรอง', 'พลตำรวจสำรอง');
INSERT INTO `cprename` VALUES ('685', 'พลฯสำรองพิเศษ', 'พลตำรวจสำรองพิเศษ');
INSERT INTO `cprename` VALUES ('686', 'พลฯสมัคร', 'พลตำรวจสมัคร');
INSERT INTO `cprename` VALUES ('687', 'อส.', 'สมาชิกอาสารักษาดินแดน');
INSERT INTO `cprename` VALUES ('688', 'ก.ญ.', 'นายกองใหญ่');
INSERT INTO `cprename` VALUES ('689', 'ก.อ.', 'นายกองเอก');
INSERT INTO `cprename` VALUES ('690', 'ก.ท.', 'นายกองโท');
INSERT INTO `cprename` VALUES ('691', 'ก.ต.', 'นายกองตรี');
INSERT INTO `cprename` VALUES ('692', 'มว.อ.', 'นายหมวดเอก');
INSERT INTO `cprename` VALUES ('693', 'มว.ท.', 'นายหมวดโท');
INSERT INTO `cprename` VALUES ('694', 'มว.ต.', 'นายหมวดตรี');
INSERT INTO `cprename` VALUES ('695', 'ม.ญ.', 'นายหมู่ใหญ่');
INSERT INTO `cprename` VALUES ('696', 'ม.อ.', 'นายหมู่เอก');
INSERT INTO `cprename` VALUES ('697', 'ม.ท.', 'นายหมู่โท');
INSERT INTO `cprename` VALUES ('698', 'ม.ต.', 'นายหมู่ตรี');
INSERT INTO `cprename` VALUES ('699', 'สมาชิกเอก', 'สมาชิกเอก');
INSERT INTO `cprename` VALUES ('700', 'สมาชิกโท', 'สมาชิกโท');
INSERT INTO `cprename` VALUES ('701', 'สมาชิกตรี', 'สมาชิกตรี');
INSERT INTO `cprename` VALUES ('702', 'อส.ทพ.', 'อาสาสมัครทหารพราน');
INSERT INTO `cprename` VALUES ('703', 'พ.ต.ท.ม.จ.', 'พันตำรวจโทหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('704', 'พ.ต.อ.ม.จ.', 'พันตำรวจเอกหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('705', 'นรต.ม.จ.', 'นักเรียนนายร้อยตำรวจหม่อมเจ้า');
INSERT INTO `cprename` VALUES ('706', 'พล.ต.ต.ม.ร.ว.', 'พลตำรวจตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('707', 'พ.ต.ต.ม.ร.ว.', 'พันตำรวจตรีหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('708', 'พ.ต.ท.ม.ร.ว.', 'พันตำรวจโทหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('709', 'พ.ต.อ.ม.ร.ว.', 'พันตำรวจเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('710', 'ร.ต.อ.ม.ร.ว.', 'ร้อยตำรวจเอกหม่อมราชวงศ์');
INSERT INTO `cprename` VALUES ('711', 'ส.ต.อ.ม.ล.', 'สิบตำรวจเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('712', 'พ.ต.อ.ม.ล.', 'พันตำรวจเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('713', 'พ.ต.ท.ม.ล.', 'พันตำรวจโทหม่อมหลวง');
INSERT INTO `cprename` VALUES ('714', 'นรต.ม.ล.', 'นักเรียนนายร้อยตำรวจหม่อมหลวง');
INSERT INTO `cprename` VALUES ('715', 'ร.ต.ท.ม.ล.', 'ร้อยตำรวจโทหม่อมหลวง');
INSERT INTO `cprename` VALUES ('716', 'ด.ต.ม.ล.', 'นายดาบตำรวจหม่อมหลวง');
INSERT INTO `cprename` VALUES ('717', 'พ.ต.ต.ม.ล.', 'พันตำรวจตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('718', 'ศจ.น.พ.พ.ต.อ.', 'ศาสตราจารย์นายแพทย์พันตำรวจเอก');
INSERT INTO `cprename` VALUES ('719', 'พ.ต.ท.น.พ.', 'พันตำรวจโทนายแพทย์');
INSERT INTO `cprename` VALUES ('720', 'ร.ต.ท.น.พ.', 'ร้อยตำรวจโทนายแพทย์');
INSERT INTO `cprename` VALUES ('721', 'ร.ต.อ.น.พ.', 'ร้อยตำรวจเอกนายแพทย์');
INSERT INTO `cprename` VALUES ('722', 'พ.ต.ต.นพ.', 'พันตำรวจตรีนายแพทย์');
INSERT INTO `cprename` VALUES ('723', 'พ.ต.อ.น.พ.', 'พันตำรวจเอกนายแพทย์');
INSERT INTO `cprename` VALUES ('724', 'พ.ต.ต.หลวง', 'พันตำรวจตรีหลวง');
INSERT INTO `cprename` VALUES ('725', 'ร.ต.ท.ดร.', 'ร้อยตำรวจโทดอกเตอร์');
INSERT INTO `cprename` VALUES ('726', 'พ.ต.อ.ดร.', 'พันตำรวจเอกดอกเตอร์');
INSERT INTO `cprename` VALUES ('727', 'ร.ต.อ.ม.ล.', 'ร้อยตำรวจเอกหม่อมหลวง');
INSERT INTO `cprename` VALUES ('729', 'พ.ต.อ.หญิง ท่านผู้หญิง', 'พันตำรวจเอกหญิง ท่านผู้หญิง');
INSERT INTO `cprename` VALUES ('730', 'พล.ต.ต.ม.ล.', 'พลตำรวจตรีหม่อมหลวง');
INSERT INTO `cprename` VALUES ('731', 'พล.ต.หญิง คุณหญิง', 'พลตรีหญิง คุณหญิง');
INSERT INTO `cprename` VALUES ('732', 'ว่าที่ ส.อ.', 'ว่าที่สิบเอก');
INSERT INTO `cprename` VALUES ('733', 'พล.ต.อ.ดร.', 'พลตำรวจเอกดอกเตอร์');
INSERT INTO `cprename` VALUES ('800', 'สมเด็จพระสังฆราชเจ้า', 'สมเด็จพระสังฆราชเจ้า');
INSERT INTO `cprename` VALUES ('801', 'สมเด็จพระสังฆราช', 'สมเด็จพระสังฆราช');
INSERT INTO `cprename` VALUES ('802', 'สมเด็จพระราชาคณะ', 'สมเด็จพระราชาคณะ');
INSERT INTO `cprename` VALUES ('803', 'รองสมเด็จพระราชาคณะ', 'รองสมเด็จพระราชาคณะ');
INSERT INTO `cprename` VALUES ('804', 'พระราชาคณะ', 'พระราชาคณะ');
INSERT INTO `cprename` VALUES ('805', 'พระเปรียญธรรม', 'พระเปรียญธรรม');
INSERT INTO `cprename` VALUES ('806', 'พระหิรัญยบัฏ', 'พระหิรัญยบัฏ');
INSERT INTO `cprename` VALUES ('807', 'พระสัญญาบัตร', 'พระสัญญาบัตร');
INSERT INTO `cprename` VALUES ('808', 'พระราช', 'พระราช');
INSERT INTO `cprename` VALUES ('809', 'พระเทพ', 'พระเทพ');
INSERT INTO `cprename` VALUES ('810', 'พระปลัดขวา', 'พระปลัดขวา');
INSERT INTO `cprename` VALUES ('811', 'พระปลัดซ้าย', 'พระปลัดซ้าย');
INSERT INTO `cprename` VALUES ('812', 'พระครูปลัด', 'พระครูปลัด');
INSERT INTO `cprename` VALUES ('813', 'พระครูปลัดสุวัฒนญาณคุณ', 'พระครูปลัดสุวัฒนญาณคุณ');
INSERT INTO `cprename` VALUES ('814', 'พระครูปลัดอาจารย์วัฒน์', 'พระครูปลัดอาจารย์วัฒน์');
INSERT INTO `cprename` VALUES ('815', 'พระครูปลัดวิมลสิริวัฒน์', 'พระครูวิมลสิริวัฒน์');
INSERT INTO `cprename` VALUES ('816', 'พระสมุห์', 'พระสมุห์');
INSERT INTO `cprename` VALUES ('817', 'พระครูสมุห์', 'พระครูสมุห์');
INSERT INTO `cprename` VALUES ('818', 'พระครู', 'พระครู');
INSERT INTO `cprename` VALUES ('819', 'พระครูใบฎีกา', 'พระครูใบฎีกา');
INSERT INTO `cprename` VALUES ('820', 'พระครูธรรมธร', 'พระครูธรรมธร');
INSERT INTO `cprename` VALUES ('821', 'พระครูวิมลภาณ', 'พระครูวิมลภาณ');
INSERT INTO `cprename` VALUES ('822', 'พระครูศัพทมงคล', 'พระครูศัพทมงคล');
INSERT INTO `cprename` VALUES ('823', 'พระครูสังฆภารวิชัย', 'พระครูสังฆภารวิชัย');
INSERT INTO `cprename` VALUES ('824', 'พระครูสังฆรักษ์', 'พระครูสังฆรักษ์');
INSERT INTO `cprename` VALUES ('825', 'พระครูสังฆวิชัย', 'พระครูสังฆวิชัย');
INSERT INTO `cprename` VALUES ('826', 'พระครูสังฆวิชิต', 'พระครูสังฆวิชิต');
INSERT INTO `cprename` VALUES ('827', 'พระปิฎก', 'พระปิฎก');
INSERT INTO `cprename` VALUES ('828', 'พระปริยัติ', 'พระปริยัติ');
INSERT INTO `cprename` VALUES ('829', 'เจ้าอธิการ', 'เจ้าอธิการ');
INSERT INTO `cprename` VALUES ('830', 'พระอธิการ', 'พระอธิการ');
INSERT INTO `cprename` VALUES ('831', 'พระ', 'พระ');
INSERT INTO `cprename` VALUES ('832', 'ส.ณ.', 'สามเณร');
INSERT INTO `cprename` VALUES ('833', 'พระปลัด', 'พระปลัด');
INSERT INTO `cprename` VALUES ('834', 'สมเด็จพระอริยวงศาคตญาณ', 'สมเด็จพระอริยวงศาคตญาณ');
INSERT INTO `cprename` VALUES ('835', 'พระคาร์ดินัล', 'พระคาร์ดินัล');
INSERT INTO `cprename` VALUES ('836', 'พระสังฆราช', 'พระสังฆราช');
INSERT INTO `cprename` VALUES ('837', 'พระคุณเจ้า', 'พระคุณเจ้า');
INSERT INTO `cprename` VALUES ('838', 'บาทหลวง', 'บาทหลวง');
INSERT INTO `cprename` VALUES ('839', 'พระมหา', 'พระมหา');
INSERT INTO `cprename` VALUES ('840', 'พระราชปัญญา', 'พระราชปัญญา');
INSERT INTO `cprename` VALUES ('841', 'ภาราดา', 'ภาราดา');
INSERT INTO `cprename` VALUES ('842', 'พระศรีปริยัติธาดา', 'พระศรีปริยัติธาดา');
INSERT INTO `cprename` VALUES ('843', 'พระญาณโศภณ', 'พระญาณโศภณ');
INSERT INTO `cprename` VALUES ('844', 'สมเด็จพระมหาวีรวงศ์', 'สมเด็จพระมหาวีรวงศ์');
INSERT INTO `cprename` VALUES ('845', 'พระโสภณธรรมาภรณ์', 'พระโสภณธรรมาภรณ์');
INSERT INTO `cprename` VALUES ('846', 'พระวิริวัฒน์วิสุทธิ์', 'พระวิริวัฒน์วิสุทธิ์');
INSERT INTO `cprename` VALUES ('847', 'พระญาณ', 'พระญาณ');
INSERT INTO `cprename` VALUES ('848', 'พระอัครสังฆราช', 'พระอัครสังฆราช');
INSERT INTO `cprename` VALUES ('849', 'พระธรรม', 'พระธรรม');
INSERT INTO `cprename` VALUES ('850', 'พระสาสนโสภณ', 'พระสาสนโสภณ');
INSERT INTO `cprename` VALUES ('851', 'พระธรรมโสภณ', 'พระธรรมโสภณ');
INSERT INTO `cprename` VALUES ('852', 'พระอุดมสารโสภณ', 'พระอุดมสารโสภณ');
INSERT INTO `cprename` VALUES ('853', 'พระครูวิมลญาณโสภณ', 'พระครูวิมลญาณโสภณ');
INSERT INTO `cprename` VALUES ('854', 'พระครูปัญญาภรณโสภณ', 'พระครูปัญญาภรณโสภณ');
INSERT INTO `cprename` VALUES ('855', 'พระครูโสภณปริยัติคุณ', 'พระครูโสภณปริยัติคุณ');
INSERT INTO `cprename` VALUES ('856', 'พระอธิธรรม', 'พระอธิธรรม');
INSERT INTO `cprename` VALUES ('857', 'พระราชญาณ', 'พระราชญาณ');
INSERT INTO `cprename` VALUES ('858', 'พระสุธีวัชโรดม', 'พระสุธีวัชโรดม');
INSERT INTO `cprename` VALUES ('859', 'รองเจ้าอธิการ', 'รองเจ้าอธิการ');
INSERT INTO `cprename` VALUES ('860', 'พระครูวินัยธร', 'พระครูวินัยธร');
INSERT INTO `cprename` VALUES ('861', 'พระศรีวชิราภรณ์', 'พระศรีวชิราภรณ์');
INSERT INTO `cprename` VALUES ('862', 'พระราชบัณฑิต', 'พระราชบัณฑิต');
INSERT INTO `cprename` VALUES ('863', 'แม่ชี', 'แม่ชี');
INSERT INTO `cprename` VALUES ('864', 'นักบวช', 'นักบวช');
INSERT INTO `cprename` VALUES ('865', 'พระรัตน', 'พระรัตน');
INSERT INTO `cprename` VALUES ('866', 'พระโสภณปริยัติธรรม', 'พระโสภณปริยัติธรรม');
INSERT INTO `cprename` VALUES ('867', 'พระครูวิศาลปัญญาคุณ', 'พระครูวิศาลปัญญาคุณ');
INSERT INTO `cprename` VALUES ('868', 'พระศรีปริยัติโมลี', 'พระศรีปริยัติโมลี');
INSERT INTO `cprename` VALUES ('869', 'พระครูวัชรสีลาภรณ์', 'พระครูวัชรสีลาภรณ์');
INSERT INTO `cprename` VALUES ('870', 'พระครูพิพัฒน์บรรณกิจ', 'พระครูพิพัฒน์บรรณกิจ');
INSERT INTO `cprename` VALUES ('871', 'พระครูวิบูลธรรมกิจ', 'พระครูวิบูลธรรมกิจ');
INSERT INTO `cprename` VALUES ('872', 'พระครูพัฒนสารคุณ', 'พระครูพัฒนสารคุณ');
INSERT INTO `cprename` VALUES ('873', 'พระครูสุวรรณพัฒนคุณ', 'พระครูสุวรรณพัฒนคุณ');
INSERT INTO `cprename` VALUES ('874', 'พระครูพรหมวีรสุนทร', 'พระครูพรหมวีรสุนทร');
INSERT INTO `cprename` VALUES ('875', 'พระครูอุปถัมภ์นันทกิจ', 'พระครูอุปถัมภ์นันทกิจ');
INSERT INTO `cprename` VALUES ('876', 'พระครูวิจารณ์สังฆกิจ', 'พระครูวิจารณ์สังฆกิจ');
INSERT INTO `cprename` VALUES ('877', 'พระครูวิมลสารวิสุทธิ์', 'พระครูวิมลสารวิสุทธิ์');
INSERT INTO `cprename` VALUES ('878', 'พระครูไพศาลศุภกิจ', 'พระครูไพศาลศุภกิจ');
INSERT INTO `cprename` VALUES ('879', 'พระครูโอภาสธรรมพิมล', 'พระครูโอภาสธรรมพิมล');
INSERT INTO `cprename` VALUES ('880', 'พระครูพิพิธวรคุณ', 'พระครูพิพิธวรคุณ');
INSERT INTO `cprename` VALUES ('881', 'พระครูสุนทรปภากร', 'พระครูสุนทรปภากร');
INSERT INTO `cprename` VALUES ('882', 'พระครูสิริชัยสถิต', 'พระครูสิริชัยสถิต');
INSERT INTO `cprename` VALUES ('883', 'พระครูเกษมธรรมานันท์', 'พระครูเกษมธรรมานันท์');
INSERT INTO `cprename` VALUES ('884', 'พระครูถาวรสันติคุณ', 'พระครูถาวรสันติคุณ');
INSERT INTO `cprename` VALUES ('885', 'พระครูวิสุทธาจารวิมล', 'พระครูวิสุทธาจารวิมล');
INSERT INTO `cprename` VALUES ('886', 'พระครูปภัสสราธิคุณ', 'พระครูปภัสสราธิคุณ');
INSERT INTO `cprename` VALUES ('887', 'พระครูวรสังฆกิจ', 'พระครูวรสังฆกิจ');
INSERT INTO `cprename` VALUES ('888', 'พระครูไพบูลชัยสิทธิ์', 'พระครูไพบูลชัยสิทธิ์');
INSERT INTO `cprename` VALUES ('889', 'พระครูโกวิทธรรมโสภณ', 'พระครูโกวิทธรรมโสภณ');
INSERT INTO `cprename` VALUES ('890', 'พระครูสุพจน์วราภรณ์', 'พระครูสุพจน์วราภรณ์');
INSERT INTO `cprename` VALUES ('891', 'พระครูไพโรจน์อริญชัย', 'พระครูไพโรจน์อริญชัย');
INSERT INTO `cprename` VALUES ('892', 'พระครูสุนทรคณาภิรักษ์', 'พระครูสุนทรคณาภิรักษ์');
INSERT INTO `cprename` VALUES ('893', 'พระสรภาณโกศล', 'พระสรภาณโกศล');
INSERT INTO `cprename` VALUES ('894', 'พระครูประโชติธรรมรัตน์', 'พระครูประโชติธรรมรัตน์');
INSERT INTO `cprename` VALUES ('895', 'พระครูจารุธรรมกิตติ์', 'พระครูจารุธรรมกิตติ์');
INSERT INTO `cprename` VALUES ('896', 'พระครูพิทักษ์พรหมรังษี', 'พระครูพิทักษ์พรหมรังษี');
INSERT INTO `cprename` VALUES ('897', 'พระศรีปริยัติบัณฑิต', 'พระศรีปริยัติบัณฑิต');
INSERT INTO `cprename` VALUES ('898', 'พระครูพุทธิธรรมานุศาสน์', 'พระครูพุทธิธรรมานุศาสน์');
INSERT INTO `cprename` VALUES ('899', 'พระธรรมเมธาจารย์', 'พระธรรมเมธาจารย์');
INSERT INTO `cprename` VALUES ('900', 'พระครูกิตติกาญจนวงศ์', 'พระครูกิตติกาญจนวงศ์');
INSERT INTO `cprename` VALUES ('901', 'พระครูปลัดสัมพิพัฒนวิริยาจารย์', 'พระครูปลัดสัมพิพัฒนวิริยาจารย์');
INSERT INTO `cprename` VALUES ('902', 'พระครูศีลกันตาภรณ์', 'พระครูศีลกันตาภรณ์');
INSERT INTO `cprename` VALUES ('903', 'พระครูประกาศพุทธพากย์', 'พระครูประกาศพุทธพากย์');
INSERT INTO `cprename` VALUES ('904', 'พระครูอมรวิสุทธิคุณ', 'พระครูอมรวิสุทธิคุณ');
INSERT INTO `cprename` VALUES ('905', 'พระครูสุทัศน์ธรรมาภิรม', 'พระครูสุทัศน์ธรรมาภิรม');
INSERT INTO `cprename` VALUES ('906', 'พระครูอุปถัมภ์วชิโรภาส', 'พระครูอุปถัมภ์วชิโรภาส');
INSERT INTO `cprename` VALUES ('907', 'พระครูสุนทรสมณคุณ', 'พระครูสุนทรสมณคุณ');
INSERT INTO `cprename` VALUES ('908', 'พระพรหมมุนี', 'พระพรหมมุนี');
INSERT INTO `cprename` VALUES ('909', 'พระครูสิริคุณารักษ์', 'พระครูสิริคุณารักษ์');
INSERT INTO `cprename` VALUES ('910', 'พระครูวิชิตพัฒนคุณ', 'พระครูวิชิตพัฒนคุณ');
INSERT INTO `cprename` VALUES ('911', 'พระครูพิบูลโชติธรรม', 'พระครูพิบูลโชติธรรม');
INSERT INTO `cprename` VALUES ('912', 'พระพิศาลสารคุณ', 'พระพิศาลสารคุณ');
INSERT INTO `cprename` VALUES ('913', 'พระรัตนมงคลวิสุทธ์', 'พระรัตนมงคลวิสุทธ์');
INSERT INTO `cprename` VALUES ('914', 'พระครูโสภณคุณานุกูล', 'พระครูโสภณคุณานุกูล');
INSERT INTO `cprename` VALUES ('915', 'พระครูผาสุกวิหารการ', 'พระครูผาสุกวิหารการ');
INSERT INTO `cprename` VALUES ('916', 'พระครูวชิรวุฒิกร', 'พระครูวชิรวุฒิกร');
INSERT INTO `cprename` VALUES ('917', 'พระครูกาญจนยติกิจ', 'พระครูกาญจนยติกิจ');
INSERT INTO `cprename` VALUES ('918', 'พระครูบวรรัตนวงศ์', 'พระครูบวรรัตนวงศ์');
INSERT INTO `cprename` VALUES ('919', 'พระราชพัชราภรณ์', 'พระราชพัชราภรณ์');
INSERT INTO `cprename` VALUES ('920', 'พระครูพิพิธอุดมคุณ', 'พระครูพิพิธอุดมคุณ');
INSERT INTO `cprename` VALUES ('921', 'องสุตบทบวร', 'องสุตบทบวร');
INSERT INTO `cprename` VALUES ('922', 'พระครูจันทเขมคุณ', 'พระครูจันทเขมคุณ');
INSERT INTO `cprename` VALUES ('923', 'พระครูศีลสารวิสุทธิ์', 'พระครูศีลสารวิสุทธิ์');
INSERT INTO `cprename` VALUES ('924', 'พระครูสุธรรมโสภิต', 'พระครูสุธรรมโสภิต');
INSERT INTO `cprename` VALUES ('925', 'พระครูอุเทศธรรมนิวิฐ', 'พระครูอุเทศธรรมนิวิฐ');
INSERT INTO `cprename` VALUES ('926', 'พระครูบรรณวัตร', 'พระครูบรรณวัตร');
INSERT INTO `cprename` VALUES ('927', 'พระครูวิสุทธาจาร', 'พระครูวิสุทธาจาร');
INSERT INTO `cprename` VALUES ('928', 'พระครูสุนทรวรวัฒน์', 'พระครูสุนทรวรวัฒน์');
INSERT INTO `cprename` VALUES ('929', 'พระเทพชลธารมุนี ศรีชลบุราจารย์', 'พระเทพชลธารมุนี ศรีชลบุราจารย์');
INSERT INTO `cprename` VALUES ('930', 'พระครูโสภณสมุทรคุณ', 'พระครูโสภณสมุทรคุณ');
INSERT INTO `cprename` VALUES ('931', 'พระราชเมธาภรณ์', 'พระราชเมธาภรณ์');
INSERT INTO `cprename` VALUES ('932', 'พระครูศรัทธาธรรมโสภณ', 'พระครูศรัทธาธรรมโสภณ');
INSERT INTO `cprename` VALUES ('933', 'พระครูสังฆบริรักษ์', 'พระครูสังฆบริรักษ์');
INSERT INTO `cprename` VALUES ('934', 'พระมหานายก', 'พระมหานายก');
INSERT INTO `cprename` VALUES ('935', 'พระครูโอภาสสมาจาร', 'พระครูโอภาสสมาจาร');
INSERT INTO `cprename` VALUES ('936', 'พระครูศรีธวัชคุณาภรณ์', 'พระครูศรีธวัชคุณาภรณ์');
INSERT INTO `cprename` VALUES ('937', 'พระครูโสภิตวัชรกิจ', 'พระครูโสภิตวัชรกิจ');
INSERT INTO `cprename` VALUES ('938', 'พระราชวชิราภรณ์', 'พระราชวชิราภรณ์');
INSERT INTO `cprename` VALUES ('939', 'พระครูสุนทรวรธัช', 'พระครูสุนทรวรธัช');
INSERT INTO `cprename` VALUES ('940', 'พระครูอาทรโพธิกิจ', 'พระครูอาทรโพธิกิจ');
INSERT INTO `cprename` VALUES ('941', 'พระครูวิบูลกาญจนกิจ', 'พระครูวิบูลกาญจนกิจ');
INSERT INTO `cprename` VALUES ('942', 'พระพรหมวชิรญาณ', 'พระพรหมวชิรญาณ');
INSERT INTO `cprename` VALUES ('943', 'พระครูสุพจน์วรคุณ', 'พระครูสุพจน์วรคุณ');
INSERT INTO `cprename` VALUES ('944', 'พระราชวิมลโมลี', 'พระราชาวิมลโมลี');
INSERT INTO `cprename` VALUES ('945', 'พระครูอมรธรรมนายก', 'พระครูอมรธรรมนายก');
INSERT INTO `cprename` VALUES ('946', 'พระครูพิศิษฎ์ศาสนการ', 'พระครูพิศิษฎ์ศาสนการ');
INSERT INTO `cprename` VALUES ('947', 'พระครูเมธีธรรมานุยุต', 'พระครูเมธีธรรมานุยุต');
INSERT INTO `cprename` VALUES ('948', 'พระครูปิยสีลสาร', 'พระครูปิยสีลสาร');
INSERT INTO `cprename` VALUES ('949', 'พระครูสถิตบุญวัฒน์', 'พระครูสถิตบุญวัฒน์');
INSERT INTO `cprename` VALUES ('950', 'พระครูนิเทศปิยธรรม', 'พระครูนิเทศปิยธรรม');
INSERT INTO `cprename` VALUES ('951', 'พระครูวิสุทธิ์กิจจานุกูล', 'พระครูวิสุทธิ์กิจจานุกูล');
INSERT INTO `cprename` VALUES ('952', 'พระครูสถิตย์บุญวัฒน์', 'พระครูสถิตย์บุญวัฒน์');
INSERT INTO `cprename` VALUES ('953', 'พระครูประโชติธรรมานุกูล', 'พระครูประโชติธรรมานุกูล');
INSERT INTO `cprename` VALUES ('954', 'พระเทพญาณกวี', 'พระเทพญาณกวี');
INSERT INTO `cprename` VALUES ('955', 'พระครูพิพัฒน์ชินวงศ์', 'พระครูพิพัฒน์ชินวงศ์');
INSERT INTO `cprename` VALUES ('956', 'พระครูสมุทรขันตยาภรณ์', 'พระครูสมุทรขันตยาภรณ์');
INSERT INTO `cprename` VALUES ('957', 'พระครูภาวนาวรกิจ', 'พระครูภาวนาวรกิจ');
INSERT INTO `cprename` VALUES ('958', 'พระครูศรีศาสนคุณ', 'พระครูศรีศาสนคุณ');
INSERT INTO `cprename` VALUES ('959', 'พระครูวิบูลย์ธรรมศาสก์', 'พระครูวิบูลย์ธรรมศาสก์');

-- ----------------------------
-- Table structure for newborn_care
-- ----------------------------
DROP TABLE IF EXISTS `newborn_care`;
CREATE TABLE `newborn_care` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `BDATE` date NOT NULL,
  `BCARE` date NOT NULL,
  `BCPLACE` varchar(5) DEFAULT NULL,
  `BCARERESULT` char(1) NOT NULL,
  `FOOD` char(1) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`BCARE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`BDATE`),
  KEY `idx4` (`BCARE`),
  KEY `idx5` (`BCPLACE`),
  KEY `idx6` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newborn_care
-- ----------------------------

-- ----------------------------
-- Table structure for rpt_breast_cancer_screening
-- ----------------------------
DROP TABLE IF EXISTS `rpt_breast_cancer_screening`;
CREATE TABLE `rpt_breast_cancer_screening` (
  `rep_year` int(4) NOT NULL DEFAULT '0',
  `hospcode` char(5) NOT NULL DEFAULT '',
  `hospname` varchar(255) DEFAULT NULL,
  `percentage` decimal(26,2) DEFAULT NULL,
  `target` bigint(21) DEFAULT NULL,
  `pt_all` bigint(21) DEFAULT '0',
  `pt_m10` bigint(21) DEFAULT '0',
  `pt_m11` bigint(21) DEFAULT '0',
  `pt_m12` bigint(21) DEFAULT '0',
  `pt_m01` bigint(21) DEFAULT '0',
  `pt_m02` bigint(21) DEFAULT '0',
  `pt_m03` bigint(21) DEFAULT '0',
  `pt_m04` bigint(21) DEFAULT '0',
  `pt_m05` bigint(21) DEFAULT '0',
  `pt_m06` bigint(21) DEFAULT '0',
  `pt_m07` bigint(21) DEFAULT '0',
  `pt_m08` bigint(21) DEFAULT '0',
  `pt_m09` bigint(21) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rpt_breast_cancer_screening
-- ----------------------------

-- ----------------------------
-- Table structure for rpt_cervical_cancer_screening
-- ----------------------------
DROP TABLE IF EXISTS `rpt_cervical_cancer_screening`;
CREATE TABLE `rpt_cervical_cancer_screening` (
  `rep_year` int(4) NOT NULL DEFAULT '0',
  `hospcode` char(5) NOT NULL DEFAULT '',
  `areacode` varchar(8) DEFAULT NULL,
  `hospname` varchar(255) DEFAULT NULL,
  `target` bigint(21) DEFAULT NULL,
  `pt_all` bigint(21) DEFAULT '0',
  `pt_m10` bigint(21) DEFAULT '0',
  `pt_m11` bigint(21) DEFAULT '0',
  `pt_m12` bigint(21) DEFAULT '0',
  `pt_m01` bigint(21) DEFAULT '0',
  `pt_m02` bigint(21) DEFAULT '0',
  `pt_m03` bigint(21) DEFAULT '0',
  `pt_m04` bigint(21) DEFAULT '0',
  `pt_m05` bigint(21) DEFAULT '0',
  `pt_m06` bigint(21) DEFAULT '0',
  `pt_m07` bigint(21) DEFAULT '0',
  `pt_m08` bigint(21) DEFAULT '0',
  `pt_m09` bigint(21) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rpt_cervical_cancer_screening
-- ----------------------------

-- ----------------------------
-- Table structure for rpt_panth_drug_value
-- ----------------------------
DROP TABLE IF EXISTS `rpt_panth_drug_value`;
CREATE TABLE `rpt_panth_drug_value` (
  `hoscode` varchar(5) NOT NULL,
  `year_rep` varchar(4) NOT NULL DEFAULT '0',
  `month` varchar(2) NOT NULL,
  `price_drug` decimal(44,2) DEFAULT NULL,
  `price_planthai_drug` decimal(44,2) DEFAULT NULL,
  PRIMARY KEY (`hoscode`,`year_rep`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rpt_panth_drug_value
-- ----------------------------

-- ----------------------------
-- Table structure for rpt_panth_visit_ratio
-- ----------------------------
DROP TABLE IF EXISTS `rpt_panth_visit_ratio`;
CREATE TABLE `rpt_panth_visit_ratio` (
  `pcucode` char(5) NOT NULL DEFAULT '',
  `quarterly` int(1) DEFAULT '0',
  `year_rep` bigint(20) DEFAULT NULL,
  `op_service_pt` bigint(21) NOT NULL DEFAULT '0',
  `op_service` bigint(21) NOT NULL DEFAULT '0',
  `tm_service_pt` bigint(21) NOT NULL DEFAULT '0',
  `tm_service` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rpt_panth_visit_ratio
-- ----------------------------

-- ----------------------------
-- Table structure for rpt_visit_oldman
-- ----------------------------
DROP TABLE IF EXISTS `rpt_visit_oldman`;
CREATE TABLE `rpt_visit_oldman` (
  `selyear` varchar(25) NOT NULL,
  `hoscode` varchar(25) NOT NULL DEFAULT '',
  `hosname` varchar(255) DEFAULT NULL,
  `target` bigint(21) DEFAULT NULL,
  `oct` bigint(21) DEFAULT NULL,
  `nov` bigint(21) DEFAULT NULL,
  `dec` bigint(21) DEFAULT NULL,
  `jan` bigint(21) DEFAULT NULL,
  `feb` bigint(21) DEFAULT NULL,
  `mar` bigint(21) DEFAULT NULL,
  `apr` bigint(21) DEFAULT NULL,
  `may` bigint(21) DEFAULT NULL,
  `jun` bigint(21) DEFAULT NULL,
  `jul` bigint(21) DEFAULT NULL,
  `aug` bigint(21) DEFAULT NULL,
  `sep` bigint(21) DEFAULT NULL,
  PRIMARY KEY (`selyear`,`hoscode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rpt_visit_oldman
-- ----------------------------

-- ----------------------------
-- Table structure for sqlscript
-- ----------------------------
DROP TABLE IF EXISTS `sqlscript`;
CREATE TABLE `sqlscript` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) DEFAULT NULL,
  `sql_script` text,
  `user` varchar(255) DEFAULT NULL,
  `d_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlscript
-- ----------------------------
INSERT INTO `sqlscript` VALUES ('5', 'check_แม่ลูก', 'select  h.hoscode as hospcode ,h.hosname as hospname,\r\n\r\n(select count(*)  from prenatal  \r\n           where (prenatal.edc BETWEEN \'2014-04-01\' and \'2015-03-31\' )  and hospcode = h.hoscode\r\n) as prenatal,\r\n(select count(*)  from labor\r\n           where (labor.bdate BETWEEN \'2014-04-01\' and \'2015-03-31\' ) and hospcode = h.hoscode\r\n) as labor,\r\n(select count(*)  from postnatal  \r\n           where (postnatal.bdate BETWEEN \'2014-04-01\' and \'2015-03-31\' ) and hospcode = h.hoscode\r\n) as postnatal,\r\n(select count(*)  from newborn  \r\n           where (newborn.bdate BETWEEN \'2014-04-01\' and \'2015-03-31\' ) and hospcode = h.hoscode\r\n) as newborn,\r\n(select count(*)  from newborncare  \r\n           where (newborncare.bdate BETWEEN \'2014-04-01\' and \'2015-03-31\' ) and hospcode = h.hoscode\r\n) as newborncare\r\nfrom chospital_amp h\r\n\r\norder by hoscode asc;', 'admin', '2015-03-31 09:55:07');
INSERT INTO `sqlscript` VALUES ('7', 'qof_5ครั้ง12สัปดาห์', 'select h.hoscode as hospcode ,h.hosname as hospname,\r\n(select total from\r\n(select anc.hospcode,count(distinct anc.pid) as total \r\nfrom labor \r\nINNER JOIN anc ON labor.hospcode = anc.hospcode AND labor.pid = anc.pid \r\nINNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid \r\nWHERE person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and person.sex = \'2\' \r\nand labor.bdate BETWEEN \'2014-04-01\' AND curdate()\r\nGROUP BY person.hospcode ) as t\r\nwhere t.hospcode =h.hoscode ) as LaborTarget,\r\n\r\n( select total from\r\n(\r\nselect labor.hospcode,count(*) as total \r\nfrom labor \r\nINNER JOIN \r\n(select anc1.hospcode,anc1.pid,anc1.gravida,count(distinct anc1.pid) as total \r\nfrom anc anc1\r\nWHERE anc1.ga <= 12 \r\nGROUP BY anc1.hospcode,anc1.pid ) as anc1\r\nON labor.hospcode = anc1.hospcode AND labor.pid = anc1.pid\r\ninner join \r\n(select anc2.hospcode,anc2.pid,anc2.gravida,count(distinct anc2.pid) as total \r\nfrom anc anc2\r\nWHERE anc2.ga BETWEEN 16 AND 20 \r\nGROUP BY anc2.hospcode,anc2.pid ) as anc2\r\non anc1.hospcode = anc2.hospcode and anc1.pid = anc2.pid and anc1.gravida = anc2.gravida\r\ninner join \r\n(select anc3.hospcode,anc3.pid,anc3.gravida,count(distinct anc3.pid) as total \r\nfrom anc anc3\r\nWHERE anc3.ga BETWEEN 24 AND 28\r\nGROUP BY anc3.hospcode,anc3.pid ) as anc3\r\non anc1.hospcode = anc3.hospcode and anc1.pid = anc3.pid and anc1.gravida = anc3.gravida\r\ninner join \r\n(select anc4.hospcode,anc4.pid,anc4.gravida,count(distinct anc4.pid) as total \r\nfrom anc anc4\r\nWHERE anc4.ga BETWEEN 30 AND 34\r\nGROUP BY anc4.hospcode,anc4.pid ) as anc4\r\non anc1.hospcode = anc4.hospcode and anc1.pid = anc4.pid and anc1.gravida = anc4.gravida\r\ninner join \r\n(select anc5.hospcode,anc5.pid,anc5.gravida,count(distinct anc5.pid) as total \r\nfrom anc anc5\r\nWHERE anc5.ga BETWEEN 36 AND 40 \r\nGROUP BY anc5.hospcode,anc5.pid ) as anc5\r\non anc1.hospcode = anc5.hospcode and anc1.pid = anc5.pid and anc1.gravida = anc5.gravida\r\n\r\nINNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid \r\nWHERE person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and person.sex = \'2\' \r\nand labor.bdate BETWEEN \'2014-04-01\' AND curdate()\r\nGROUP BY labor.hospcode\r\n) as a5\r\nwhere a5.hospcode = h.hoscode) as 5timesResult,\r\n( select total from\r\n(\r\nselect labor.hospcode,count(*) as total \r\nfrom labor \r\nINNER JOIN \r\n(select anc1.hospcode,anc1.pid,anc1.gravida,count(distinct anc1.pid) as total \r\nfrom anc anc1\r\nWHERE anc1.ga <= 12 \r\nGROUP BY anc1.hospcode,anc1.pid ) as anc1\r\nON labor.hospcode = anc1.hospcode AND labor.pid = anc1.pid\r\nINNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid \r\nWHERE person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and person.sex = \'2\' \r\nand labor.bdate BETWEEN \'2014-04-01\' AND \'2015-09-30\'\r\nGROUP BY labor.hospcode\r\n) as 12wks\r\nwhere 12wks.hospcode = h.hoscode) as 12wksResult\r\n\r\nfrom chospital_amp h\r\n\r\norder by distcode,hoscode asc;', 'admin', '2015-03-31 10:17:54');
INSERT INTO `sqlscript` VALUES ('8', 'กรุณาแก้ชื่อ script', 'select h.hoscode as hospcode ,h.hosname as hospname,\r\n(select total from\r\n(select anc.hospcode,count(distinct anc.pid) as total \r\nfrom labor \r\nINNER JOIN anc ON labor.hospcode = anc.hospcode AND labor.pid = anc.pid \r\nINNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid \r\nWHERE person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and person.sex = \'2\' \r\nand labor.bdate BETWEEN \'2014-04-01\' AND curdate()\r\nGROUP BY person.hospcode ) as t\r\nwhere t.hospcode =h.hoscode ) as LaborTarget,\r\n\r\n( select total from\r\n(\r\nselect labor.hospcode,count(*) as total \r\nfrom labor \r\nINNER JOIN \r\n(select anc1.hospcode,anc1.pid,anc1.gravida,count(distinct anc1.pid) as total \r\nfrom anc anc1\r\nWHERE anc1.ga <= 12 \r\nGROUP BY anc1.hospcode,anc1.pid ) as anc1\r\nON labor.hospcode = anc1.hospcode AND labor.pid = anc1.pid\r\ninner join \r\n(select anc2.hospcode,anc2.pid,anc2.gravida,count(distinct anc2.pid) as total \r\nfrom anc anc2\r\nWHERE anc2.ga BETWEEN 16 AND 20 \r\nGROUP BY anc2.hospcode,anc2.pid ) as anc2\r\non anc1.hospcode = anc2.hospcode and anc1.pid = anc2.pid and anc1.gravida = anc2.gravida\r\ninner join \r\n(select anc3.hospcode,anc3.pid,anc3.gravida,count(distinct anc3.pid) as total \r\nfrom anc anc3\r\nWHERE anc3.ga BETWEEN 24 AND 28\r\nGROUP BY anc3.hospcode,anc3.pid ) as anc3\r\non anc1.hospcode = anc3.hospcode and anc1.pid = anc3.pid and anc1.gravida = anc3.gravida\r\ninner join \r\n(select anc4.hospcode,anc4.pid,anc4.gravida,count(distinct anc4.pid) as total \r\nfrom anc anc4\r\nWHERE anc4.ga BETWEEN 30 AND 34\r\nGROUP BY anc4.hospcode,anc4.pid ) as anc4\r\non anc1.hospcode = anc4.hospcode and anc1.pid = anc4.pid and anc1.gravida = anc4.gravida\r\ninner join \r\n(select anc5.hospcode,anc5.pid,anc5.gravida,count(distinct anc5.pid) as total \r\nfrom anc anc5\r\nWHERE anc5.ga BETWEEN 36 AND 40 \r\nGROUP BY anc5.hospcode,anc5.pid ) as anc5\r\non anc1.hospcode = anc5.hospcode and anc1.pid = anc5.pid and anc1.gravida = anc5.gravida\r\n\r\nINNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid \r\nWHERE person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and person.sex = \'2\' \r\nand labor.bdate BETWEEN \'2014-04-01\' AND curdate()\r\nGROUP BY labor.hospcode\r\n) as a5\r\nwhere a5.hospcode = h.hoscode) as 5timesResult,\r\n( select total from\r\n(\r\nselect labor.hospcode,count(*) as total \r\nfrom labor \r\nINNER JOIN \r\n(select anc1.hospcode,anc1.pid,anc1.gravida,count(distinct anc1.pid) as total \r\nfrom anc anc1\r\nWHERE anc1.ga <= 12 \r\nGROUP BY anc1.hospcode,anc1.pid ) as anc1\r\nON labor.hospcode = anc1.hospcode AND labor.pid = anc1.pid\r\nINNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid \r\nWHERE person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and person.sex = \'2\' \r\nand labor.bdate BETWEEN \'2014-04-01\' AND \'2015-09-30\'\r\nGROUP BY labor.hospcode\r\n) as 12wks\r\nwhere 12wks.hospcode = h.hoscode) as 12wksResult\r\n\r\nfrom chospital_amp h\r\n\r\norder by distcode,hoscode asc;', 'U07593', '2015-03-31 10:22:02');
INSERT INTO `sqlscript` VALUES ('9', 'qof_รายชื่อ_preg', 'set @hospcode = \'25022\';\r\nselect DISTINCT anc.pid ,anc.hospcode ,person.`NAME` ,person.LNAME\r\nfrom labor \r\nINNER JOIN anc ON labor.hospcode = anc.hospcode AND labor.pid = anc.pid \r\nINNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid \r\nWHERE \r\nperson.discharge = \'9\' \r\nand person.typearea in (\'1\', \'3\') \r\nand person.nation =\'099\' and person.sex = \'2\' \r\nand labor.bdate BETWEEN \'2014-04-01\' AND curdate()\r\n\r\nand anc.HOSPCODE = @hospcode;', 'admin', '2015-03-31 10:40:26');
INSERT INTO `sqlscript` VALUES ('13', 'รายชื่อวัคซีน', 'set @start=\'2009-04-01\';\r\nset @end=\'2010-03-31\';\r\nset @vac=\'035\';\r\nset @hosp=\'07588\';\r\nselect distinct person.hospcode,person.pid,person.name,person.lname,\r\nif((select count(*) from epi e where e.vaccinetype=@vac and concat(e.pid,e.hospcode)=concat(person.pid,person.hospcode))>0,1,0) as vac_chk from person  \r\n          left join epi on epi.hospcode = person.hospcode and epi.pid = person.pid  \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\'  \r\n           and (person.birth BETWEEN @start and @end)  \r\n and person.hospcode = @hosp \r\ngroup by person.hospcode,person.pid\r\nhaving vac_chk = 0\r\norder by person.pid;', 'admin', '2015-03-31 11:35:55');
INSERT INTO `sqlscript` VALUES ('14', 'lab เบาหวาน', 'set @start=\'2014-04-01\';\r\nset @end=\'2015-03-31\';\r\nset @bdg_date = \'2014-09-30\';\r\n\r\nselect  h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,\r\n\r\n(SELECT  hos_chronic from \r\n          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid\r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'E10\' and \'E149\')  \r\n             group by person.hospcode) as c\r\nwhere c.hospcode  = h.hoscode\r\n) as DMtarget,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'E10\' and \'E149\')  \r\n           and labfu.labtest in (\'01\',\'02\',\'03\') and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as Fbs,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'E10\' and \'E149\')  \r\n           and labfu.labtest = \'05\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as Hba1c,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'E10\' and \'E149\')  \r\n           and labfu.labtest = \'06\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as TG,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'E10\' and \'E149\')  \r\n           and labfu.labtest = \'07\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as TC,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'E10\' and \'E149\')  \r\n           and labfu.labtest = \'08\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as HDL,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'E10\' and \'E149\')  \r\n           and labfu.labtest = \'09\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as LDL,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'E10\' and \'E149\')  \r\n           and labfu.labtest = \'12\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as MicroAlb \r\n\r\nfrom chospital_amp h\r\n\r\norder by distcode,hoscode asc;', 'admin', '2015-03-31 11:47:03');
INSERT INTO `sqlscript` VALUES ('15', 'lab ความดัน', 'set @start=\'2014-04-01\';\r\nset @end=\'2015-03-31\';\r\nset @bdg_date = \'2014-09-30\';\r\n\r\nselect  h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,\r\n\r\n(SELECT  hos_chronic from \r\n          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid\r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'I10\' and \'I159\')  \r\n             group by person.hospcode) as c\r\nwhere c.hospcode  = h.hoscode\r\n) as target,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'I10\' and \'I159\')  \r\n           and labfu.labtest in (\'01\',\'02\',\'03\') and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as Fbs,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'I10\' and \'I159\')  \r\n           and labfu.labtest = \'09\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as LDL,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'I10\' and \'I159\')  \r\n           and labfu.labtest = \'11\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as Creatinine,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' and  (chronic.chronic between \'I10\' and \'I159\')  \r\n           and labfu.labtest = \'14\' and (labfu.date_serv BETWEEN @start and @end ) \r\n             group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as Macroalbumine \r\n\r\nfrom chospital_amp h\r\n\r\norder by distcode,hoscode asc;', 'admin', '2015-03-31 11:48:57');
INSERT INTO `sqlscript` VALUES ('16', 'หญิงกลุ่มเป้าหมาย', 'set @h = \'07590\';\r\nset @bdg_date = \'2014-09-30\';\r\nset @start = \'2014-10-01\';\r\nset @end = \'2015-03-31\';\r\nselect person.hospcode ,person.cid,person.pid,person.name,person.lname,TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) as age  \r\nfrom person  \r\n           where \r\nperson.discharge = \'9\' \r\nand person.typearea in (\'1\', \'3\') \r\nand person.nation =\'099\' \r\nand  TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) between 30 and 60\r\nand sex = \'2\' \r\nand person.hospcode =  @h;', 'admin', '2015-03-31 14:19:51');
INSERT INTO `sqlscript` VALUES ('17', 'กรุณาแก้ชื่อ script', 'set @start=\'2014-10-01\';\r\nset @end=\'2015-03-31\';\r\nset @bdg_date = \'2014-09-30\';\r\n\r\nselect ncdscreen_all.*,format(ncdscreen_all.htresult*100/ncdscreen_all.httarget,2) as HTpercent from \r\n(select  h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,\r\n(SELECT hos_target from\r\n (select person.hospcode , count(distinct person.pid) as hos_target from person  \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' \r\n           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )\r\n            group by person.hospcode ) as t\r\nwhere  t.hospcode = h.hoscode\r\n) as Pop ,\r\n(SELECT  hos_chronic from \r\n          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  \r\n           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' \r\n           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and (chronic.chronic between \'I10\' and \'I159\') \r\n             group by person.hospcode) as c\r\nwhere c.hospcode  = h.hoscode\r\n) as HT,\r\n(SELECT hos_target from\r\n (select person.hospcode , count(*) as hos_target from person  \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' \r\n           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )\r\n           and concat(person.hospcode ,person.pid) not in  \r\n           ( select concat(hospcode,pid) from chronic c where c.chronic between \'I10\' and \'I159\' )\r\ngroup by person.hospcode ) as t\r\nwhere  t.hospcode = h.hoscode\r\n) as HTtarget ,\r\n(SELECT hos_doit from\r\n          (select person.hospcode,count(*) as hos_doit from ncdscreen  \r\n           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid \r\n           where person.discharge = \'9\' and person.typearea in (\'1\', \'3\') and person.nation =\'099\' \r\n           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and date_serv between @start and @end \r\n            \r\n           and concat(person.hospcode,person.pid) not in  \r\n           ( select concat(c.hospcode,c.pid) from chronic c where c.chronic between \'I10\' and \'I159\' ) group by person.hospcode) as r\r\nwhere r.hospcode = h.hoscode\r\n) as HTresult\r\n\r\nfrom chospital_amp h\r\norder by distcode,hoscode asc) as ncdscreen_all;', 'admin', '2015-03-31 15:20:50');
INSERT INTO `sqlscript` VALUES ('20', 'จิตเวช.txt', 'SELECT h.hoscode,h.hosname ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F00\' and \'F09\',1,0)) \'ความผิดปกติทางจิตและอาการทางจิตที่เกิดจากโรคทางกาย\',\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F10\' and \'F19\',1,0)) \'ความผิดปกติทางจิตและพฤติกรรมที่เกิดจากการใช้สารออกฤทธิ์ต่อจิตประสาท\' ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F20\' and \'F29\',1,0)) \'โรคจิตเภท พฤติกรรมแบบโรคจิตเภท และโรคหลงผิด\' ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F30\' and \'F39\',1,0)) \'ความผิดปกติทางอารมณ์\' ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F40\' and \'F49\',1,0)) \'โรคประสาท ความผิดปกติที่สัมพันธ์กับความเครียด และโรคโซมาโตฟอร์ม\' ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F50\' and \'F59\',1,0)) \'กลุ่มอาการทางพฤติกรรมที่พบร่วมกับความผิดปกติทางสรีรวิทยาและปัจจัยทางกายภาพ\',\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F60\' and \'F69\',1,0)) \'ความผิดปกติทางบุคลิกภาพและพฤติกรรมของผู้ใหญ่\' ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F70\' and \'F79\',1,0)) \'ภาวะปัญญาอ่อน\' ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F80\' and \'F89\',1,0)) \'ความผิดปกติของพัฒนาการทางจิต\' ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) between \'F90\' and \'F98\',1,0)) \'ความผิดปกติทางอารมณ์และพฤติกรรมที่มักเริ่มต้นในวัยเด็กและวัยรุ่น\' ,\r\nsum(if(substr(upper(d.DIAGCODE),1,3) = \'F99\',1,0)) \'ความผิดปกติทางจิตที่ไม่ระบุรายละเอียด\' \r\nfrom diagnosis_opd d INNER JOIN chospital_amp h on d.HOSPCODE=h.hoscode INNER JOIN campur on h.provcode = campur.changwatcode AND h.distcode = campur.ampurcode \r\nwhere d.DATE_SERV BETWEEN \'2014-10-01\' AND \'2015-09-30\' GROUP BY h.hoscode;', 'admin', '2015-04-07 20:01:48');
INSERT INTO `sqlscript` VALUES ('22', 'เด็ก 5 ปีได้รับ DTP5', 'SET @bdg_date = CURDATE();\r\nSELECT  h.hoscode,h.hosname\r\n,(\r\n	SELECT COUNT(DISTINCT  p.PID) FROM person p\r\n	WHERE p.HOSPCODE = h.hoscode\r\n	AND p.discharge = \'9\' and p.typearea in (\'1\', \'3\') and p.nation =\'099\'\r\n	AND TIMESTAMPDIFF(MONTH,p.BIRTH,@bdg_date) <= 71\r\n) as target\r\n,(\r\n	SELECT COUNT(DISTINCT e.PID) FROM epi e	\r\n	INNER JOIN person p on p.HOSPCODE = e.HOSPCODE AND p.PID = e.PID	\r\n	WHERE \r\n	e.HOSPCODE = h.hoscode\r\n	AND e.VACCINETYPE = \'035\'\r\n	AND p.discharge = \'9\' and p.typearea in (\'1\', \'3\') and p.nation =\'099\'\r\n	AND TIMESTAMPDIFF(MONTH,p.BIRTH,@bdg_date) <= 71\r\n\r\n) as result\r\n\r\n FROM chospital_amp h;', 'admin', '2015-04-07 20:22:35');

-- ----------------------------
-- Table structure for sys_chart_dial_7
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_dial_7`;
CREATE TABLE `sys_chart_dial_7` (
  `base` varchar(2) NOT NULL DEFAULT '',
  `result` varchar(101) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_chart_dial_7
-- ----------------------------
INSERT INTO `sys_chart_dial_7` VALUES ('90', '41.51');

-- ----------------------------
-- Table structure for sys_chart_dial_8
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_dial_8`;
CREATE TABLE `sys_chart_dial_8` (
  `base` varchar(2) NOT NULL DEFAULT '',
  `result` varchar(101) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_chart_dial_8
-- ----------------------------
INSERT INTO `sys_chart_dial_8` VALUES ('90', '41.81');

-- ----------------------------
-- Table structure for sys_chart_dial_9
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_dial_9`;
CREATE TABLE `sys_chart_dial_9` (
  `base` varchar(2) NOT NULL DEFAULT '',
  `result` varchar(101) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_chart_dial_9
-- ----------------------------
INSERT INTO `sys_chart_dial_9` VALUES ('90', '87.50');

-- ----------------------------
-- Table structure for sys_check_process
-- ----------------------------
DROP TABLE IF EXISTS `sys_check_process`;
CREATE TABLE `sys_check_process` (
  `fnc_name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_check_process
-- ----------------------------
INSERT INTO `sys_check_process` VALUES ('all_process_complete', '2015-04-09 09:25:53');

-- ----------------------------
-- Table structure for sys_process_running
-- ----------------------------
DROP TABLE IF EXISTS `sys_process_running`;
CREATE TABLE `sys_process_running` (
  `is_running` enum('true','false') NOT NULL,
  PRIMARY KEY (`is_running`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_process_running
-- ----------------------------
INSERT INTO `sys_process_running` VALUES ('false');

-- ----------------------------
-- Table structure for sys_version
-- ----------------------------
DROP TABLE IF EXISTS `sys_version`;
CREATE TABLE `sys_version` (
  `version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_version
-- ----------------------------
INSERT INTO `sys_version` VALUES ('20150409_alpha');

-- ----------------------------
-- Procedure structure for cal_chart_dial_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_1`(IN `bdg_date` varchar(10))
BEGIN	
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_1' , t.time = NOW();
	
	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_1 ;
CREATE TABLE sys_chart_dial_1 select * from (

select  h.hoscode as hospcode,h.hosname as hospname,


(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  ((chronic.chronic between 'E10' and 'E14') or (chronic.chronic between 'I10' and 'I15')) 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as chronic,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from ncdscreen  
           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and date_serv between @start and @end 
           and (TIMESTAMPDIFF(YEAR,person.birth,date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 



from chospital_amp h

order by hoscode asc

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_1' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_2
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_2`(IN `bdg_date`  varchar(10))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_2' , t.time = NOW();

	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_2 ;
CREATE TABLE sys_chart_dial_2 select * from (

select  h.hoscode as hospcode ,h.hosname as hospname,


(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E14')  
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid            
           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and labfu.labtest = '05' and (labfu.date_serv BETWEEN @start and @end ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,labfu.date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and labfu.labtest = '05' and labfu.LABRESULT < 7 and (labfu.date_serv BETWEEN @start and @end ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,labfu.date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as control


from chospital_amp h
order by hoscode asc



) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_2' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_3
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_3`(IN `bdg_date`  varchar(10))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_3' , t.time = NOW();
	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_3 ;
CREATE TABLE sys_chart_dial_3 select * from (


select  h.hoscode as hospcode ,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid          
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I15')  
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join chronicfu on person.hospcode = chronicfu.hospcode and person.pid = chronicfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I15')  
           and (chronicfu.sbp <140 and chronicfu.dbp < 90) and (chronicfu.date_serv BETWEEN @start and @end ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,chronicfu.date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

from chospital_amp h

order by distcode,hoscode asc

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_3' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_4
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_4`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_4`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_4', t.time = NOW();
set @start='2014-10-01';
set @end=CURDATE();

DROP TABLE IF EXISTS sys_chart_dial_4 ;
CREATE TABLE sys_chart_dial_4 select * from (

select h.hoscode as hospcode ,h.hosname as hospname,
(select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
la.LMP,la.BDATE,la.BTYPE,
(select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1,
(select ga_date 
from 
(select
a.HOSPCODE,a.PID,
a.DATE_SERV,a.ANCNO,a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '85' and '146'   and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no2,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '147' and '202'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no3,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '203' and '244'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no4,
(
select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '245' and '286'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no5
from
labor as la
,person as p 
where  la.PID = p.PID 
and p.HOSPCODE = la.HOSPCODE
and la.BDATE between @start and @end
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') and la.BTYPE<>'6'
order by p.HOSPCODE 
) as anc5t where anc5t.HOSPCODE=h.hoscode
) as target,
(
select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
la.LMP,la.BDATE,la.BTYPE,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1,
(select ga_date 
from 
(select
a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '85' and '146'   and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no2,
(select ga_date 
from  (select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '147' and '202'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no3,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from anc as a,labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '203' and '244'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no4,
(
select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '245' and '286'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no5
from
labor as la
,person as p 
where  la.PID = p.PID 
and p.HOSPCODE = la.HOSPCODE
and la.BDATE between @start and @end
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') and la.BTYPE<>'6'
order by p.HOSPCODE 
) as anc5t where anc5t.HOSPCODE=h.hoscode 
and anc_no1 is not null and anc_no2 is not null and anc_no3 is not null and anc_no4 is not null and anc_no5 is not null
) as result

from chospital_amp h

order by distcode,hoscode asc


) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_4', t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_5
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_5`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_5`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_5' , t.time = NOW();
set @start='2014-04-01';
set @end=CURDATE();

DROP TABLE IF EXISTS sys_chart_dial_5 ;
CREATE TABLE sys_chart_dial_5 select * from (

select h.hoscode as hospcode ,h.hosname as hospname,
(select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
pn.LMP,a.DATE_SERV,
(select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
pn.LMP,
datediff(a.DATE_SERV,pn.LMP) as ga_date
from
anc as a,
prenatal as pn
where a.HOSPCODE = pn.HOSPCODE 
and a.PID = pn.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1
from
prenatal as pn
,anc as a
,person as p 
where  pn.PID = p.PID and p.HOSPCODE = pn.HOSPCODE
and pn.PID = a.PID and pn.HOSPCODE = a.HOSPCODE
and a.DATE_SERV between @start and @end
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') 
order by p.HOSPCODE 
) as anc12wks where anc12wks.HOSPCODE=h.hoscode
) as target,
(
select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
a.DATE_SERV,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,pn.LMP,
datediff(a.DATE_SERV,pn.LMP) as ga_date
from
anc as a,
prenatal as pn
where a.HOSPCODE = pn.HOSPCODE 
and a.PID = pn.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1
from
anc as a
,person as p 
where  a.PID = p.PID 
and p.HOSPCODE = a.HOSPCODE
and a.DATE_SERV between @start and @end
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') 
order by p.HOSPCODE 
) as anc12wks where anc12wks.HOSPCODE=h.hoscode 
and anc_no1 is not null 
) as result

from chospital_amp h

order by distcode,hoscode asc

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_5' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_6
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_6`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_6`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_6', t.time = NOW();
	
set @start='2014-10-01';
set @end=CURDATE();

DROP TABLE IF EXISTS sys_chart_dial_6 ;
CREATE TABLE sys_chart_dial_6 select * from (

select  h.hoscode as hospcode ,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth BETWEEN DATE_ADD(@start,INTERVAL -71 month) and DATE_ADD(@end,INTERVAL -71 month)) group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from epi  inner join person on epi.hospcode = person.hospcode and epi.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN DATE_ADD(@start,INTERVAL -71 month) and DATE_ADD(@end,INTERVAL -71 month))  and epi.VACCINETYPE = '035'  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

from chospital_amp h

order by distcode,hoscode asc


) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_6', t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_7
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_7`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_7`(IN `bdg_date`  varchar(10))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_7' , t.time = NOW();
set @start='2014-10-01';
set @end=CURDATE();
set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_7 ;
CREATE TABLE sys_chart_dial_7 select * from (

select  '90' as base,format(sum(ncdscreen_all.htresult*100)/sum(ncdscreen_all.httarget),2) as result from 
(select  h.distcode as amphur,

(SELECT hos_target from
 (select person.hospcode , count(*) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )
           and concat(person.hospcode ,person.pid) not in  
           ( select concat(hospcode,pid) from chronic c where c.chronic between 'I10' and 'I159' )
group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as HTtarget ,
(SELECT hos_doit from
          (select person.hospcode,count(*) as hos_doit from ncdscreen  
           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and date_serv between @start and @end 
            
           and concat(person.hospcode,person.pid) not in  
           ( select concat(c.hospcode,c.pid) from chronic c where c.chronic between 'I10' and 'I159' ) group by person.hospcode) as r
where r.hospcode = h.hoscode
) as HTresult
from chospital_amp h
) as ncdscreen_all
GROUP BY amphur

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_7' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_8
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_8`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_8`(IN `bdg_date`  varchar(10))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_8' , t.time = NOW();
set @start='2014-10-01';
set @end=CURDATE();
set @bdg_date = bdg_date;

DROP TABLE IF EXISTS sys_chart_dial_8 ;
CREATE TABLE sys_chart_dial_8 select * from (

select  '90' as base,format(sum(ncdscreen_all.htresult*100)/sum(ncdscreen_all.httarget),2) as result from 
(select  h.distcode as amphur,

(SELECT hos_target from
 (select person.hospcode , count(*) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )
           and concat(person.hospcode ,person.pid) not in  
           ( select concat(hospcode,pid) from chronic c where c.chronic between 'E10' and 'E149' )
group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as HTtarget ,
(SELECT hos_doit from
          (select person.hospcode,count(*) as hos_doit from ncdscreen  
           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and date_serv between @start and @end 
            
           and concat(person.hospcode,person.pid) not in  
           ( select concat(c.hospcode,c.pid) from chronic c where c.chronic between 'E10' and 'E149' ) group by person.hospcode) as r
where r.hospcode = h.hoscode
) as HTresult
from chospital_amp h
) as ncdscreen_all
GROUP BY amphur

) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_8' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_chart_dial_9
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_9`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_9`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_chart_dial_9' , t.time = NOW();
set @start='2014-10-01';
set @end=CURDATE();

DROP TABLE IF EXISTS sys_chart_dial_9 ;
CREATE TABLE sys_chart_dial_9 select * from (

select  '90' as base,format(sum(anc12.result*100)/sum(anc12.target),2) as result from 
(select h.distcode as amphur,h.hoscode as hospcode,
(select total from
(select anc.hospcode,count(distinct anc.pid) as total 
from labor 
INNER JOIN anc ON labor.hospcode = anc.hospcode AND labor.pid = anc.pid 
INNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
      and labor.btype<>'6'   and labor.bdate BETWEEN  @start AND @end
GROUP BY person.hospcode  ) as t
where t.hospcode =h.hoscode ) as Target,

( select  total from
(
select labor.hospcode,count(*) as total  
from labor 
INNER JOIN 
(select anc1.hospcode,anc1.pid,anc1.gravida,count(distinct anc1.pid) as total 
from anc anc1
WHERE anc1.ga <= 12  
GROUP BY anc1.hospcode,anc1.pid  ) as anc1
ON labor.hospcode = anc1.hospcode AND labor.pid = anc1.pid
INNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
      and labor.btype<>'6'   and labor.bdate BETWEEN  @start AND @end
GROUP BY labor.hospcode
) as 12wks
where 12wks.hospcode = h.hoscode) as Result

from chospital_amp h

order by distcode,hoscode asc
) as anc12
GROUP BY amphur


) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_chart_dial_9' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_count_service
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_count_service`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_count_service`(IN `selyear` varchar(4))
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_count_service' , t.time = NOW();

set @selyear = selyear;
set @pyear = selyear-1;
replace into sys_count_service 
select SQL_BIG_RESULT  h.hoscode,h.hosname,selyear,
(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'10')) as oct,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'10')) as oct1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'11')) as nov,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'11')) as nov1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'12')) as 'dec',
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@pyear,'12')) as 'dec1',

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'01')) as jan,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'01')) as jan1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'02')) as feb,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'02')) as feb1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'03'))as mar,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'03'))as mar1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'04'))as apr,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'04'))as apr1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'05'))as may,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'05'))as may1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'06'))as jun,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'06'))as jun1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'07'))as jul,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'07'))as jul1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'08'))as aug,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'08'))as aug1,

(SELECT COUNT(DISTINCT s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'09'))as sep,
(SELECT COUNT(s.pid) FROM service s 
where s.HOSPCODE = h.hoscode and EXTRACT(YEAR_MONTH FROM s.DATE_SERV)= CONCAT(@selyear,'09'))as sep1

from chospital_amp h;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_count_service' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_ncd_cholesteral_colorchart
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_ncd_cholesteral_colorchart`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_ncd_cholesteral_colorchart`(IN `bdg_date` varchar(10))
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_ncd_cholesteral_colorchart' , t.time = NOW();
	
	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;

#DROP TABLE IF EXISTS `sys_ncd_cholesteral_colorchart` ;

CREATE TABLE IF NOT EXISTS  `sys_ncd_cholesteral_colorchart` (
  `hospcode` varchar(5) NOT NULL DEFAULT '',
  `pid` varchar(15) NOT NULL DEFAULT '',
  `sex` char(1) DEFAULT NULL,
  `smoke` char(1) DEFAULT NULL,
  `chronic` varchar(6) DEFAULT NULL,
  `labtest` char(2) DEFAULT NULL,
  `labresult` float DEFAULT NULL,
  `date_serv` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sbp` int(11) DEFAULT NULL,
  `chart` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`hospcode`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM sys_ncd_cholesteral_colorchart WHERE date_serv BETWEEN @start and @end;

INSERT IGNORE INTO sys_ncd_cholesteral_colorchart 
(
  hospcode,pid,sex,smoke,chronic,labtest,labresult,date_serv,age,sbp,chart
)

 (     select person.hospcode,person.pid,person.sex,'N',chronic.chronic,la.labtest,la.labresult,bp.date_serv,TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) as age,bp.sbp,
        CASE 
             when SEX ='1' THEN
               CASE  
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) < 50 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320) THEN '<10%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '20-<30%'
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                       END    /* 40*/

                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 50 and 59 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '<10%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320 ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '20-<30%'
                                WHEN  (labresult >=240  and labresult <280) THEN '20-<30%'
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                       END    /* 50*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 60 and 69 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '<10%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '20-<30%'
                                WHEN  (labresult >=200  and labresult <240) THEN '20-<30%'
                                WHEN  (labresult >=240  and labresult <280) THEN '30-<40%'
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                      END     /* 60*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) >=70 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '30-<40%'
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                    END  /* 70*/
           ELSE 'NA'
           END   /* sex =1*/  
             when SEX ='2' THEN
               CASE  
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) < 50 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '>=40%'  
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '20-<30%'
                                WHEN  (labresult >=240  and labresult <280) THEN '>=40%'   
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                       END    /* 40*/

                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 50 and 59 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN  '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '>=40%' 
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '20-<30%'
                                WHEN  (labresult >=200  and labresult <240) THEN '30-<40%'
                                WHEN  (labresult >=240  and labresult <280) THEN '>=40%'   
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                       END    /* 50*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 60 and 69 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '20-<30%'
                                WHEN  (labresult >=200  and labresult <240) THEN '30-<40%'
                                WHEN  (labresult >=240  and labresult <280) THEN '>=40%'   
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                      END     /* 60*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) >=70 THEN
                     CASE
                        WHEN   ( sbp <140) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '<10%'
                                WHEN  (labresult >=280  and labresult <320) THEN '<10%'
                                WHEN  (labresult >=320  ) THEN '10-<20%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=140 and sbp <160) THEN
                           CASE  
                                WHEN  labresult <200 THEN '<10%'
                                WHEN  (labresult >=200  and labresult <240) THEN '<10%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '10-<20%'
                                WHEN  (labresult >=320  ) THEN '20-<30%'
                           ELSE 'NA'
                           END  
                        WHEN   (sbp >=160 and sbp <180) THEN
                           CASE  
                                WHEN  labresult <200 THEN '10-<20%'
                                WHEN  (labresult >=200  and labresult <240) THEN '10-<20%'
                                WHEN  (labresult >=240  and labresult <280) THEN '10-<20%'
                                WHEN  (labresult >=280  and labresult <320) THEN '20-<30%'
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  
                        WHEN   sbp >=180  THEN
                           CASE  
                                WHEN  labresult <200 THEN '20-<30%'
                                WHEN  (labresult >=200  and labresult <240) THEN '30-<40%'
                                WHEN  (labresult >=240  and labresult <280) THEN '>=40%'   
                                WHEN  (labresult >=280  and labresult <320) THEN '>=40%'   
                                WHEN  (labresult >=320  ) THEN '>=40%'   
                           ELSE 'NA'
                           END  /* sbp*/ 
                    END  /* 70*/
           ELSE 'NA'
           END   /* sex =2*/     
        
        ELSE 'NA' 
        END  as chart
        from chronic,person,
        (select l.hospcode,l.pid,l.date_serv,l.labtest,l.labresult from labfu l
         WHERE l.labtest = '07'
         group by l.hospcode,l.pid 
         order by l.date_serv desc ) as la,

        (select c.hospcode,c.pid,c.date_serv,c.SBP from chronicfu c
         group by c.hospcode,c.pid 
         order by c.date_serv desc ) as bp 

        where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
         and (chronic.hospcode = person.hospcode and chronic.pid = person.pid) 
         and (la.hospcode= chronic.hospcode and la.pid = chronic.pid)
         and (la.date_serv between @start and @end)
         and (bp.hospcode= chronic.hospcode and bp.pid = chronic.pid)
         and (bp.date_serv between @start and @end)
         and  ((chronic.chronic between 'I10' and 'I15') or (chronic.chronic between 'E10' and 'E14'))
         and (timestampdiff(year,person.birth,bp.date_serv) >= 35  ) );




UPDATE sys_check_process t set t.fnc_name = 'end_cal_ncd_cholesteral_colorchart' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_ncd_nocholesteral_colorchart
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_ncd_nocholesteral_colorchart`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_ncd_nocholesteral_colorchart`(IN `bdg_date` varchar(10))
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_ncd_nocholesteral_colorchart' , t.time = NOW();	

	set @start='2014-10-01';
	set @end=CURDATE();
	set @bdg_date = bdg_date;


CREATE TABLE  IF NOT EXISTS `sys_ncd_nocholesteral_colorchart` (
  `hospcode` varchar(5) NOT NULL DEFAULT '',
  `pid` varchar(15) NOT NULL DEFAULT '',
  `sex` char(1) DEFAULT NULL,
  `smoke` char(1) DEFAULT NULL,
  `chronic` varchar(6) DEFAULT NULL,
  `date_serv` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sbp` int(11) DEFAULT NULL,
  `chart` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`hospcode`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DELETE FROM sys_ncd_nocholesteral_colorchart WHERE date_serv BETWEEN @start and @end;

INSERT IGNORE INTO sys_ncd_nocholesteral_colorchart 
(
  hospcode,pid,sex,smoke,chronic,date_serv,age,sbp,chart
)

 (      select person.hospcode,person.pid,person.sex,'N',chronic.chronic,bp.date_serv,TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) as age,bp.sbp,
        CASE 
             when SEX ='1' THEN
               CASE  
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) < 50 THEN
                     CASE
                        WHEN   ( sbp <140) THEN    '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '<10%'
                         WHEN   sbp >=180  THEN   '10-<20%'
                      END    /* 40*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 50 and 59 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '<10%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                     END    /* 50*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 60 and 69 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '10-<20%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                     END     /* 60*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) >=70 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN    '10-<20%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                    END  /* 70*/
           ELSE 'NA'
           END   /* sex =1*/  
             when SEX ='2' THEN
               CASE  
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) < 50 THEN
                     CASE
                        WHEN   ( sbp <140) THEN    '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '<10%'
                         WHEN   sbp >=180  THEN   '10-<20%'
                      END    /* 40*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 50 and 59 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '<10%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                     END    /* 50*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) BETWEEN 60 and 69 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN   '10-<20%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                     END     /* 60*/
                   WHEN   TIMESTAMPDIFF(YEAR,person.birth,bp.date_serv) >=70 THEN
                     CASE
                        WHEN   ( sbp <140) THEN   '<10%'
                        WHEN   (sbp >=140 and sbp <160) THEN   '<10%'
                        WHEN   (sbp >=160 and sbp <180) THEN    '10-<20%'
                        WHEN   sbp >=180  THEN   '20-<30%'
                    END  /* 70*/           ELSE 'NA'
           END   /* sex =2*/     
        
        ELSE 'NA' 
        END  as chart
        from chronic,person,

        (select c.hospcode,c.pid,c.date_serv,c.SBP from chronicfu c
         group by c.hospcode,c.pid 
         order by c.date_serv desc ) as bp 

        where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
         and (chronic.hospcode = person.hospcode and chronic.pid = person.pid) 
         and (bp.hospcode= chronic.hospcode and bp.pid = chronic.pid)
         and (bp.date_serv between @start and @end)
         and  ((chronic.chronic between 'I10' and 'I15') or (chronic.chronic between 'E10' and 'E14'))
         and (timestampdiff(year,person.birth,bp.date_serv) >= 35  ) );


UPDATE sys_check_process t set t.fnc_name = 'end_cal_ncd_nocholesteral_colorchart' , t.time = NOW();	


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_pyramid_level_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_pyramid_level_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_pyramid_level_1`(IN `bdg_date` varchar(15))
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_pyramid_level_1' , t.time = NOW();	
	
set @bdg_date=bdg_date;

DROP TABLE IF EXISTS sys_pyramid_level_1 ;
CREATE TABLE sys_pyramid_level_1 select * from (

select SQL_BIG_RESULT  dh.hoscode as hospcode,dh.hosname as hospname 
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '1' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as am00
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '1' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as af00  
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '2' year),interval '1' day) and date_sub(@bdg_date,interval '1' year),1,0)) as am01
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '2' year),interval '1' day) and date_sub(@bdg_date,interval '1' year),1,0)) as af01      
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '3' year),interval '1' day) and date_sub(@bdg_date,interval '2' year),1,0)) as am02
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '3' year),interval '1' day) and date_sub(@bdg_date,interval '2' year),1,0)) as af02  
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '4' year),interval '1' day) and date_sub(@bdg_date,interval '3' year),1,0)) as am03
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '4' year),interval '1' day) and date_sub(@bdg_date,interval '3' year),1,0)) as af03 
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '5' year),interval '1' day) and date_sub(@bdg_date,interval '4' year),1,0)) as am04
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '5' year),interval '1' day) and date_sub(@bdg_date,interval '4' year),1,0)) as af04   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '6' year),interval '1' day) and date_sub(@bdg_date,interval '5' year),1,0)) as am05,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '6' year),interval '1' day) and date_sub(@bdg_date,interval '5' year),1,0)) as af05  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '7' year),interval '1' day) and date_sub(@bdg_date,interval '6' year),1,0)) as am06,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '7' year),interval '1' day) and date_sub(@bdg_date,interval '6' year),1,0)) as af06  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '8' year),interval '1' day) and date_sub(@bdg_date,interval '7' year),1,0)) as am07
,sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '8' year),interval '1' day) and date_sub(@bdg_date,interval '7' year),1,0)) as af07  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '9' year),interval '1' day) and date_sub(@bdg_date,interval '8' year),1,0)) as am08, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '9' year),interval '1' day) and date_sub(@bdg_date,interval '8' year),1,0)) as af08  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '10' year),interval '1' day) and date_sub(@bdg_date,interval '9' year),1,0)) as am09,  sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '10' year),interval '1' day) and date_sub(@bdg_date,interval '9' year),1,0)) as af09  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '11' year),interval '1' day) and date_sub(@bdg_date,interval '10' year),1,0)) as am10, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '11' year),interval '1' day) and date_sub(@bdg_date,interval '10' year),1,0)) as af10  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '12' year),interval '1' day) and date_sub(@bdg_date,interval '11' year),1,0)) as am11, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '12' year),interval '1' day) and date_sub(@bdg_date,interval '11' year),1,0)) as af11  
,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '13' year),interval '1' day) and date_sub(@bdg_date,interval '12' year),1,0)) as am12,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '13' year),interval '1' day) and date_sub(@bdg_date,interval '12' year),1,0)) as af12  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '14' year),interval '1' day) and date_sub(@bdg_date,interval '13' year),1,0)) as am13,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '14' year),interval '1' day) and date_sub(@bdg_date,interval '13' year),1,0)) as af13  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '15' year),interval '1' day) and date_sub(@bdg_date,interval '14' year),1,0)) as am14,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '15' year),interval '1' day) and date_sub(@bdg_date,interval '14' year),1,0)) as af14  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '16' year),interval '1' day) and date_sub(@bdg_date,interval '15' year),1,0)) as am15, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '16' year),interval '1' day) and date_sub(@bdg_date,interval '15' year),1,0)) as af15  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '17' year),interval '1' day) and date_sub(@bdg_date,interval '16' year),1,0)) as am16, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '17' year),interval '1' day) and date_sub(@bdg_date,interval '16' year),1,0)) as af16  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '18' year),interval '1' day) and date_sub(@bdg_date,interval '17' year),1,0)) as am17, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '18' year),interval '1' day) and date_sub(@bdg_date,interval '17' year),1,0)) as af17 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '19' year),interval '1' day) and date_sub(@bdg_date,interval '18' year),1,0)) as am18, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '19' year),interval '1' day) and date_sub(@bdg_date,interval '18' year),1,0)) as af18  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '20' year),interval '1' day) and date_sub(@bdg_date,interval '19' year),1,0)) as am19, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '20' year),interval '1' day) and date_sub(@bdg_date,interval '19' year),1,0)) as af19 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '21' year),interval '1' day) and date_sub(@bdg_date,interval '20' year),1,0)) as am20,  sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '21' year),interval '1' day) and date_sub(@bdg_date,interval '20' year),1,0)) as af20  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '22' year),interval '1' day) and date_sub(@bdg_date,interval '21' year),1,0)) as am21, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '22' year),interval '1' day) and date_sub(@bdg_date,interval '21' year),1,0)) as af21  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '23' year),interval '1' day) and date_sub(@bdg_date,interval '22' year),1,0)) as am22, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '23' year),interval '1' day) and date_sub(@bdg_date,interval '22' year),1,0)) as af22  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '24' year),interval '1' day) and date_sub(@bdg_date,interval '23' year),1,0)) as am23,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '24' year),interval '1' day) and date_sub(@bdg_date,interval '23' year),1,0)) as af23  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '25' year),interval '1' day) and date_sub(@bdg_date,interval '24' year),1,0)) as am24, sum(if(p.sex=2  and p.birth   between date_add(date_sub(@bdg_date,interval '25' year),interval '1' day) and date_sub(@bdg_date,interval '24' year),1,0)) as af24  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '26' year),interval '1' day) and date_sub(@bdg_date,interval '25' year),1,0)) as am25,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '26' year),interval '1' day) and date_sub(@bdg_date,interval '25' year),1,0)) as af25  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '27' year),interval '1' day) and date_sub(@bdg_date,interval '26' year),1,0)) as am26,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '27' year),interval '1' day) and date_sub(@bdg_date,interval '26' year),1,0)) as af26  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '28' year),interval '1' day) and date_sub(@bdg_date,interval '27' year),1,0)) as am27,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '28' year),interval '1' day) and date_sub(@bdg_date,interval '27' year),1,0)) as af27  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '29' year),interval '1' day) and date_sub(@bdg_date,interval '28' year),1,0)) as am28,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '29' year),interval '1' day) and date_sub(@bdg_date,interval '28' year),1,0)) as af28  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '30' year),interval '1' day) and date_sub(@bdg_date,interval '29' year),1,0)) as am29,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '30' year),interval '1' day) and date_sub(@bdg_date,interval '29' year),1,0)) as af29  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '31' year),interval '1' day) and date_sub(@bdg_date,interval '30' year),1,0)) as am30,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '31' year),interval '1' day) and date_sub(@bdg_date,interval '30' year),1,0)) as af30  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '32' year),interval '1' day) and date_sub(@bdg_date,interval '31' year),1,0)) as am31,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '32' year),interval '1' day) and date_sub(@bdg_date,interval '31' year),1,0)) as af31  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '33' year),interval '1' day) and date_sub(@bdg_date,interval '32' year),1,0)) as am32,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '33' year),interval '1' day) and date_sub(@bdg_date,interval '32' year),1,0)) as af32  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '34' year),interval '1' day) and date_sub(@bdg_date,interval '33' year),1,0)) as am33,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '34' year),interval '1' day) and date_sub(@bdg_date,interval '33' year),1,0)) as af33  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '35' year),interval '1' day) and date_sub(@bdg_date,interval '34' year),1,0)) as am34,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '35' year),interval '1' day) and date_sub(@bdg_date,interval '34' year),1,0)) as af34  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '36' year),interval '1' day) and date_sub(@bdg_date,interval '35' year),1,0)) as am35,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '36' year),interval '1' day) and date_sub(@bdg_date,interval '35' year),1,0)) as af35  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '37' year),interval '1' day) and date_sub(@bdg_date,interval '36' year),1,0)) as am36,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '37' year),interval '1' day) and date_sub(@bdg_date,interval '36' year),1,0)) as af36  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '38' year),interval '1' day) and date_sub(@bdg_date,interval '37' year),1,0)) as am37,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '38' year),interval '1' day) and date_sub(@bdg_date,interval '37' year),1,0)) as af37  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '39' year),interval '1' day) and date_sub(@bdg_date,interval '38' year),1,0)) as am38,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '39' year),interval '1' day) and date_sub(@bdg_date,interval '38' year),1,0)) as af38  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '40' year),interval '1' day) and date_sub(@bdg_date,interval '39' year),1,0)) as am39,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '40' year),interval '1' day) and date_sub(@bdg_date,interval '39' year),1,0)) as af39  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '41' year),interval '1' day) and date_sub(@bdg_date,interval '40' year),1,0)) as am40,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '41' year),interval '1' day) and date_sub(@bdg_date,interval '40' year),1,0)) as af40  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '42' year),interval '1' day) and date_sub(@bdg_date,interval '41' year),1,0)) as am41,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '42' year),interval '1' day) and date_sub(@bdg_date,interval '41' year),1,0)) as af41   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '43' year),interval '1' day) and date_sub(@bdg_date,interval '42' year),1,0)) as am42,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '43' year),interval '1' day) and date_sub(@bdg_date,interval '42' year),1,0)) as af42  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '44' year),interval '1' day) and date_sub(@bdg_date,interval '43' year),1,0)) as am43,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '44' year),interval '1' day) and date_sub(@bdg_date,interval '43' year),1,0)) as af43  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '45' year),interval '1' day) and date_sub(@bdg_date,interval '44' year),1,0)) as am44,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '45' year),interval '1' day) and date_sub(@bdg_date,interval '44' year),1,0)) as af44   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '46' year),interval '1' day) and date_sub(@bdg_date,interval '45' year),1,0)) as am45,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '46' year),interval '1' day) and date_sub(@bdg_date,interval '45' year),1,0)) as af45  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '47' year),interval '1' day) and date_sub(@bdg_date,interval '46' year),1,0)) as am46,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '47' year),interval '1' day) and date_sub(@bdg_date,interval '46' year),1,0)) as af46  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '48' year),interval '1' day) and date_sub(@bdg_date,interval '47' year),1,0)) as am47,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '48' year),interval '1' day) and date_sub(@bdg_date,interval '47' year),1,0)) as af47  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '49' year),interval '1' day) and date_sub(@bdg_date,interval '48' year),1,0)) as am48,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '49' year),interval '1' day) and date_sub(@bdg_date,interval '48' year),1,0)) as af48 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '50' year),interval '1' day) and date_sub(@bdg_date,interval '49' year),1,0)) as am49,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '50' year),interval '1' day) and date_sub(@bdg_date,interval '49' year),1,0)) as af49   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '51' year),interval '1' day) and date_sub(@bdg_date,interval '50' year),1,0)) as am50,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '51' year),interval '1' day) and date_sub(@bdg_date,interval '50' year),1,0)) as af50  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '52' year),interval '1' day) and date_sub(@bdg_date,interval '51' year),1,0)) as am51,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '52' year),interval '1' day) and date_sub(@bdg_date,interval '51' year),1,0)) as af51   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '53' year),interval '1' day) and date_sub(@bdg_date,interval '52' year),1,0)) as am52,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '53' year),interval '1' day) and date_sub(@bdg_date,interval '52' year),1,0)) as af52  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '54' year),interval '1' day) and date_sub(@bdg_date,interval '53' year),1,0)) as am53,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '54' year),interval '1' day) and date_sub(@bdg_date,interval '53' year),1,0)) as af53  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '55' year),interval '1' day) and date_sub(@bdg_date,interval '54' year),1,0)) as am54,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '55' year),interval '1' day) and date_sub(@bdg_date,interval '54' year),1,0)) as af54  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '56' year),interval '1' day) and date_sub(@bdg_date,interval '55' year),1,0)) as am55,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '56' year),interval '1' day) and date_sub(@bdg_date,interval '55' year),1,0)) as af55   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '57' year),interval '1' day) and date_sub(@bdg_date,interval '56' year),1,0)) as am56,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '57' year),interval '1' day) and date_sub(@bdg_date,interval '56' year),1,0)) as af56  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '58' year),interval '1' day) and date_sub(@bdg_date,interval '57' year),1,0)) as am57,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '58' year),interval '1' day) and date_sub(@bdg_date,interval '57' year),1,0)) as af57 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '59' year),interval '1' day) and date_sub(@bdg_date,interval '58' year),1,0)) as am58,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '59' year),interval '1' day) and date_sub(@bdg_date,interval '58' year),1,0)) as af58  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '60' year),interval '1' day) and date_sub(@bdg_date,interval '59' year),1,0)) as am59,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '60' year),interval '1' day) and date_sub(@bdg_date,interval '59' year),1,0)) as af59  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '61' year),interval '1' day) and date_sub(@bdg_date,interval '60' year),1,0)) as am60,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '61' year),interval '1' day) and date_sub(@bdg_date,interval '60' year),1,0)) as af60  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '62' year),interval '1' day) and date_sub(@bdg_date,interval '61' year),1,0)) as am61,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '62' year),interval '1' day) and date_sub(@bdg_date,interval '61' year),1,0)) as af61  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '63' year),interval '1' day) and date_sub(@bdg_date,interval '62' year),1,0)) as am62,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '63' year),interval '1' day) and date_sub(@bdg_date,interval '62' year),1,0)) as af62  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '64' year),interval '1' day) and date_sub(@bdg_date,interval '63' year),1,0)) as am63,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '64' year),interval '1' day) and date_sub(@bdg_date,interval '63' year),1,0)) as af63  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '65' year),interval '1' day) and date_sub(@bdg_date,interval '64' year),1,0)) as am64,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '65' year),interval '1' day) and date_sub(@bdg_date,interval '64' year),1,0)) as af64  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '66' year),interval '1' day) and date_sub(@bdg_date,interval '65' year),1,0)) as am65,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '66' year),interval '1' day) and date_sub(@bdg_date,interval '65' year),1,0)) as af65   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '67' year),interval '1' day) and date_sub(@bdg_date,interval '66' year),1,0)) as am66,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '67' year),interval '1' day) and date_sub(@bdg_date,interval '66' year),1,0)) as af66  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '68' year),interval '1' day) and date_sub(@bdg_date,interval '67' year),1,0)) as am67,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '68' year),interval '1' day) and date_sub(@bdg_date,interval '67' year),1,0)) as af67   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '69' year),interval '1' day) and date_sub(@bdg_date,interval '68' year),1,0)) as am68,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '69' year),interval '1' day) and date_sub(@bdg_date,interval '68' year),1,0)) as af68 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '70' year),interval '1' day) and date_sub(@bdg_date,interval '69' year),1,0)) as am69,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '70' year),interval '1' day) and date_sub(@bdg_date,interval '69' year),1,0)) as af69   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '71' year),interval '1' day) and date_sub(@bdg_date,interval '70' year),1,0)) as am70,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '71' year),interval '1' day) and date_sub(@bdg_date,interval '70' year),1,0)) as af70  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '72' year),interval '1' day) and date_sub(@bdg_date,interval '71' year),1,0)) as am71,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '72' year),interval '1' day) and date_sub(@bdg_date,interval '71' year),1,0)) as af71  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '73' year),interval '1' day) and date_sub(@bdg_date,interval '72' year),1,0)) as am72,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '73' year),interval '1' day) and date_sub(@bdg_date,interval '72' year),1,0)) as af72  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '74' year),interval '1' day) and date_sub(@bdg_date,interval '73' year),1,0)) as am73,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '74' year),interval '1' day) and date_sub(@bdg_date,interval '73' year),1,0)) as af73  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '75' year),interval '1' day) and date_sub(@bdg_date,interval '74' year),1,0)) as am74,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '75' year),interval '1' day) and date_sub(@bdg_date,interval '74' year),1,0)) as af74   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '76' year),interval '1' day) and date_sub(@bdg_date,interval '75' year),1,0)) as am75,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '76' year),interval '1' day) and date_sub(@bdg_date,interval '75' year),1,0)) as af75  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '77' year),interval '1' day) and date_sub(@bdg_date,interval '76' year),1,0)) as am76,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '77' year),interval '1' day) and date_sub(@bdg_date,interval '76' year),1,0)) as af76  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '78' year),interval '1' day) and date_sub(@bdg_date,interval '77' year),1,0)) as am77,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '78' year),interval '1' day) and date_sub(@bdg_date,interval '77' year),1,0)) as af77  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '79' year),interval '1' day) and date_sub(@bdg_date,interval '78' year),1,0)) as am78,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '79' year),interval '1' day) and date_sub(@bdg_date,interval '78' year),1,0)) as af78  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '80' year),interval '1' day) and date_sub(@bdg_date,interval '79' year),1,0)) as am79,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '80' year),interval '1' day) and date_sub(@bdg_date,interval '79' year),1,0)) as af79  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '81' year),interval '1' day) and date_sub(@bdg_date,interval '80' year),1,0)) as am80,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '81' year),interval '1' day) and date_sub(@bdg_date,interval '80' year),1,0)) as af80  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '82' year),interval '1' day) and date_sub(@bdg_date,interval '81' year),1,0)) as am81,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '82' year),interval '1' day) and date_sub(@bdg_date,interval '81' year),1,0)) as af81  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '83' year),interval '1' day) and date_sub(@bdg_date,interval '82' year),1,0)) as am82,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '83' year),interval '1' day) and date_sub(@bdg_date,interval '82' year),1,0)) as af82  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '84' year),interval '1' day) and date_sub(@bdg_date,interval '83' year),1,0)) as am83,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '84' year),interval '1' day) and date_sub(@bdg_date,interval '83' year),1,0)) as af83   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '85' year),interval '1' day) and date_sub(@bdg_date,interval '84' year),1,0)) as am84,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '85' year),interval '1' day) and date_sub(@bdg_date,interval '84' year),1,0)) as af84  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '86' year),interval '1' day) and date_sub(@bdg_date,interval '85' year),1,0)) as am85,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '86' year),interval '1' day) and date_sub(@bdg_date,interval '85' year),1,0)) as af85  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '87' year),interval '1' day) and date_sub(@bdg_date,interval '86' year),1,0)) as am86,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '87' year),interval '1' day) and date_sub(@bdg_date,interval '86' year),1,0)) as af86   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '88' year),interval '1' day) and date_sub(@bdg_date,interval '87' year),1,0)) as am87,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '88' year),interval '1' day) and date_sub(@bdg_date,interval '87' year),1,0)) as af87  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '89' year),interval '1' day) and date_sub(@bdg_date,interval '88' year),1,0)) as am88,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '89' year),interval '1' day) and date_sub(@bdg_date,interval '88' year),1,0)) as af88  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '90' year),interval '1' day) and date_sub(@bdg_date,interval '89' year),1,0)) as am89,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '90' year),interval '1' day) and date_sub(@bdg_date,interval '89' year),1,0)) as af89   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '91' year),interval '1' day) and date_sub(@bdg_date,interval '90' year),1,0)) as am90,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '91' year),interval '1' day) and date_sub(@bdg_date,interval '90' year),1,0)) as af90  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '92' year),interval '1' day) and date_sub(@bdg_date,interval '91' year),1,0)) as am91,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '92' year),interval '1' day) and date_sub(@bdg_date,interval '91' year),1,0)) as af91 ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '93' year),interval '1' day) and date_sub(@bdg_date,interval '92' year),1,0)) as am92,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '93' year),interval '1' day) and date_sub(@bdg_date,interval '92' year),1,0)) as af92  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '94' year),interval '1' day) and date_sub(@bdg_date,interval '93' year),1,0)) as am93,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '94' year),interval '1' day) and date_sub(@bdg_date,interval '93' year),1,0)) as af93  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '95' year),interval '1' day) and date_sub(@bdg_date,interval '94' year),1,0)) as am94,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '95' year),interval '1' day) and date_sub(@bdg_date,interval '94' year),1,0)) as af94  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '96' year),interval '1' day) and date_sub(@bdg_date,interval '95' year),1,0)) as am95, sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '96' year),interval '1' day) and date_sub(@bdg_date,interval '95' year),1,0)) as af95   ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '97' year),interval '1' day) and date_sub(@bdg_date,interval '96' year),1,0)) as am96,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '97' year),interval '1' day) and date_sub(@bdg_date,interval '96' year),1,0)) as af96  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '98' year),interval '1' day) and date_sub(@bdg_date,interval '97' year),1,0)) as am97,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '98' year),interval '1' day) and date_sub(@bdg_date,interval '97' year),1,0)) as af97  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '99' year),interval '1' day) and date_sub(@bdg_date,interval '98' year),1,0)) as am98,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '99' year),interval '1' day) and date_sub(@bdg_date,interval '98' year),1,0)) as af98  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '100' year),interval '1' day) and date_sub(@bdg_date,interval '99' year),1,0)) as am99,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '100' year),interval '1' day) and date_sub(@bdg_date,interval '99' year),1,0)) as af99  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '101' year),interval '1' day) and date_sub(@bdg_date,interval '100' year),1,0)) as am100,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '101' year),interval '1' day) and date_sub(@bdg_date,interval '100' year),1,0)) as af100  ,sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '102' year),interval '1' day) and date_sub(@bdg_date,interval '150' year),1,0)) as am100u,  sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '102' year),interval '1' day) and date_sub(@bdg_date,interval '150' year),1,0)) as af100u,   sum(if(p.sex=1  and p.birth  between date_add(date_sub(@bdg_date,interval '150' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as totalm,   sum(if(p.sex=2  and p.birth  between date_add(date_sub(@bdg_date,interval '150' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as totalf,   sum(if(p.birth  between date_add(date_sub(@bdg_date,interval '150' year),interval '1' day) and date_sub(@bdg_date,interval '0' year),1,0)) as total   
from person p    
inner  join chospital_amp  dh on p.hospcode = dh.hoscode  
where  p.discharge='9'   and p.nation ='099' and p.typearea in('1','3')   
group by dh.hoscode  order by hoscode asc


) t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_pyramid_level_1' , t.time = NOW();	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_pyramid_level_2
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_pyramid_level_2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_pyramid_level_2`()
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_pyramid_level_2' , t.time = NOW();	

DROP TABLE IF EXISTS sys_pyramid_level_2;
CREATE TABLE sys_pyramid_level_2 select * from (
SELECT 
t.hospcode,t.hospname
,t.am00+t.am01+t.am02+t.am03+t.am04 as m0_4
,t.am05+t.am06+t.am07+t.am08+t.am09 as m5_9
,t.am10+t.am11+t.am12+t.am14+t.am14 as m10_14
,t.am15+t.am16+t.am17+t.am18+t.am19 as m15_19
,t.am20+t.am21+t.am22+t.am23+t.am24 as m20_24
,t.am25+t.am26+t.am27+t.am28+t.am29 as m25_29
,t.am30+t.am31+t.am32+t.am33+t.am34 as m30_34
,t.am35+t.am36+t.am37+t.am38+t.am39 as m35_39
,t.am40+t.am41+t.am42+t.am43+t.am44 as m40_44
,t.am45+t.am46+t.am47+t.am48+t.am49 as m45_49
,t.am50+t.am51+t.am52+t.am53+t.am54 as m50_54
,t.am55+t.am56+t.am57+t.am58+t.am59 as m55_59
,t.am60+t.am61+t.am62+t.am63+t.am64 as m60_64
,t.am65+t.am66+t.am67+t.am68+t.am69 as m65_69
,t.am70+t.am71+t.am72+t.am73+t.am74 as m70_74
,t.am75+t.am76+t.am77+t.am78+t.am79 as m75_79
,t.am80+t.am81+t.am82+t.am83+t.am84 as m80_84
,t.am85+t.am86+t.am87+t.am88+t.am89 as m85_89
,t.am90+t.am91+t.am92+t.am93+t.am94 as m90_94
,t.am95+t.am96+t.am97+t.am98+t.am99 as m95_99
,t.am100 as m100
#####
,t.af00+t.af01+t.af02+t.af03+t.af04 as f0_4
,t.af05+t.af06+t.af07+t.af08+t.af09 as f5_9
,t.af10+t.af11+t.af12+t.af14+t.af14 as f10_14
,t.af15+t.af16+t.af17+t.af18+t.af19 as f15_19
,t.af20+t.af21+t.af22+t.af23+t.af24 as f20_24
,t.af25+t.af26+t.af27+t.af28+t.af29 as f25_29
,t.af30+t.af31+t.af32+t.af33+t.af34 as f30_34
,t.af35+t.af36+t.af37+t.af38+t.af39 as f35_39
,t.af40+t.af41+t.af42+t.af43+t.af44 as f40_44
,t.af45+t.af46+t.af47+t.af48+t.af49 as f45_49
,t.af50+t.af51+t.af52+t.af53+t.af54 as f50_54
,t.af55+t.af56+t.af57+t.af58+t.af59 as f55_59
,t.af60+t.af61+t.af62+t.af63+t.af64 as f60_64
,t.af65+t.af66+t.af67+t.af68+t.af69 as f65_69
,t.af70+t.af71+t.af72+t.af73+t.af74 as f70_74
,t.af75+t.af76+t.af77+t.af78+t.af79 as f75_79
,t.af80+t.af81+t.af82+t.af83+t.af84 as f80_84
,t.af85+t.af86+t.af87+t.af88+t.af89 as f85_89
,t.af90+t.af91+t.af92+t.af93+t.af94 as f90_94
,t.af95+t.af96+t.af97+t.af98+t.af99 as f95_99
,t.af100 as f100

from sys_pyramid_level_1 t

)	t;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_pyramid_level_2' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_pyramid_level_3
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_pyramid_level_3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_pyramid_level_3`()
BEGIN	

UPDATE sys_check_process t set t.fnc_name = 'cal_pyramid_level_3' , t.time = NOW();	

TRUNCATE sys_pyramid_level_3;
REPLACE into sys_pyramid_level_3 SELECT 'a,0-4',t.hospcode,t.m0_4,t.f0_4 			from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'b,5-9',t.hospcode,t.m5_9,t.f5_9 			from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'c,10-14',t.hospcode,t.m10_14,t.f10_14 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'd,15-19',t.hospcode,t.m15_19,t.f15_19 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'e,20-24',t.hospcode,t.m20_24,t.f20_24 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'f,25-29',t.hospcode,t.m25_29,t.f25_29 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'g,30-34',t.hospcode,t.m30_34,t.f30_34 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'h,35-39',t.hospcode,t.m35_39,t.f35_39 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'i,40-44',t.hospcode,t.m40_44,t.f40_44 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'j,45-49',t.hospcode,t.m45_49,t.f45_49 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'k,50-54',t.hospcode,t.m50_54,t.f50_54 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'l,55-59',t.hospcode,t.m55_59,t.f55_59 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'm,60-64',t.hospcode,t.m60_64,t.f60_64 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'n,65-69',t.hospcode,t.m65_69,t.f65_69 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'o,70-74',t.hospcode,t.m70_74,t.f70_74 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'p,75-79',t.hospcode,t.m75_79,t.f75_79 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'q,80-84',t.hospcode,t.m80_84,t.f80_84 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 'r,85-89',t.hospcode,t.m85_89,t.f85_89 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 's,90-94',t.hospcode,t.m90_94,t.f90_94 from sys_pyramid_level_2 t;
REPLACE into sys_pyramid_level_3 SELECT 't,95-99',t.hospcode,t.m95_99,t.f95_99 from sys_pyramid_level_2 t;

REPLACE into sys_pyramid_level_3 SELECT 'u,100+',t.hospcode,t.m100,t.f100 from sys_pyramid_level_2 t;


UPDATE sys_check_process t set t.fnc_name = 'end_cal_pyramid_level_3' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_breast_cancer_screening
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_breast_cancer_screening`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_breast_cancer_screening`(IN `selyear` varchar(4))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_breast_cancer_screening' , t.time = NOW();	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_panth_visit_ratio;
#CREATE TABLE IF NOT EXISTS rpt_panth_visit_ratio;
REPLACE INTO rpt_breast_cancer_screening 
select  @selyear rep_year,h.hoscode as hospcode,h.hosname as hospname,
round(((pt_all/
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = '2' group by person.hospcode ) as t
where  t.hospcode = h.hoscode
))*100),2) as percentage,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = '2' group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
pt_all,pt_m10,pt_m11,pt_m12,pt_m01,pt_m02,pt_m03,
pt_m04,pt_m05,pt_m06,pt_m07,pt_m08,pt_m09

from chospital_amp h
left join 
	(select person.hospcode,service.DATE_SERV,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=10,person.PID,NULL)) pt_m10,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=11,person.PID,NULL)) pt_m11,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=12,person.PID,NULL)) pt_m12,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=01,person.PID,NULL)) pt_m01,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=02,person.PID,NULL)) pt_m02,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=03,person.PID,NULL)) pt_m03,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=04,person.PID,NULL)) pt_m04,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=05,person.PID,NULL)) pt_m05,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=06,person.PID,NULL)) pt_m06,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=07,person.PID,NULL)) pt_m07,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=08,person.PID,NULL)) pt_m08,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=09,person.PID,NULL)) pt_m09,
	COUNT(DISTINCT person.PID) pt_all
	from service 
           inner join diagnosis_opd d on service.hospcode = d.hospcode and service.pid = d.pid  and service.SEQ = d.SEQ
           inner join person on service.hospcode = person.hospcode and service.pid = person.pid 
           where person.typearea in ('1', '3') and person.nation ='099'  and sex = '2'
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60)  and d.diagcode = 'Z123' 
           and (DATE(service.DATE_SERV) BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30'))  group by person.hospcode) as r
on r.hospcode=h.hoscode
order by distcode,hoscode asc;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_breast_cancer_screening' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_cervical_cancer_screening
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_cervical_cancer_screening`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_cervical_cancer_screening`(IN `selyear` varchar(4))
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_cervical_cancer_screening' , t.time = NOW();	

	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_panth_visit_ratio;
#CREATE TABLE IF NOT EXISTS rpt_panth_visit_ratio;
REPLACE INTO rpt_cervical_cancer_screening 
select  @selyear rep_year,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = '2' group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target,
pt_all,pt_m10,pt_m11,pt_m12,pt_m01,pt_m02,pt_m03,
pt_m04,pt_m05,pt_m06,pt_m07,pt_m08,pt_m09
from chospital_amp h
left join 
	(select person.hospcode,service.DATE_SERV,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=10,person.PID,NULL)) pt_m10,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=11,person.PID,NULL)) pt_m11,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=12,person.PID,NULL)) pt_m12,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=01,person.PID,NULL)) pt_m01,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=02,person.PID,NULL)) pt_m02,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=03,person.PID,NULL)) pt_m03,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=04,person.PID,NULL)) pt_m04,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=05,person.PID,NULL)) pt_m05,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=06,person.PID,NULL)) pt_m06,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=07,person.PID,NULL)) pt_m07,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=08,person.PID,NULL)) pt_m08,
	COUNT(DISTINCT IF(MONTH(service.DATE_SERV)=09,person.PID,NULL)) pt_m09,
	COUNT(DISTINCT person.PID) pt_all
	from service 
    inner join diagnosis_opd d on service.hospcode = d.hospcode and service.pid = d.pid  and service.SEQ = d.SEQ
    inner join person on service.hospcode = person.hospcode and service.pid = person.pid 
    where person.typearea in ('1', '3') and person.nation ='099'  and sex = '2'
    and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60)  and d.diagcode in ('Z014','Z124') 
    and (DATE(service.DATE_SERV) BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30'))  group by person.hospcode) as r
on r.hospcode=h.hoscode
order by hoscode asc;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_cervical_cancer_screening' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_panth_drug_value
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_panth_drug_value`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_panth_drug_value`(IN `selyear` varchar(4))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_panth_drug_value' , t.time = NOW();	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_panth_visit_ratio;
#CREATE TABLE IF NOT EXISTS rpt_panth_visit_ratio;
REPLACE INTO rpt_panth_drug_value 
SELECT SQL_BIG_RESULT
e.HOSPCODE as hoscode,
@selyear year_rep,
DATE_FORMAT(e.date_serv,'%m') as month,
SUM(IF(LEFT(e.DIDSTD,2) <> '41' OR LEFT(e.DIDSTD,2) <> '42',e.DRUGPRICE*e.AMOUNT,0))  price_drug ,
SUM(IF(d.didstd IS NOT NULL,e.DRUGPRICE*e.AMOUNT,0))  price_planthai_drug
FROM drug_opd e 
LEFT JOIN cdrug_planthai d ON d.didstd=e.DIDSTD 
LEFT JOIN chospital_amp i ON e.HOSPCODE = i.hoscode 
WHERE e.DATE_SERV BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30')   
GROUP BY e.HOSPCODE, LEFT(DATE(e.DATE_SERV),7);

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_panth_drug_value' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_panth_visit_ratio
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_panth_visit_ratio`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_panth_visit_ratio`(IN `selyear` varchar(4))
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_panth_visit_ratio' , t.time = NOW();	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_panth_visit_ratio;
#CREATE TABLE IF NOT EXISTS rpt_panth_visit_ratio;
REPLACE INTO rpt_panth_visit_ratio 
SELECT 
o.hoscode pcucode,
e.code_rep quarterly,
@selyear year_rep,
IFNULL(e.OP_SERVICE_PT,0) op_service_pt,
IFNULL(e.OP_SERVICE,0) op_service,
IFNULL(t.TM_SERVICE_PT,0) tm_service_pt,
IFNULL(t.TM_SERVICE,0) tm_service
FROM chospital_amp o 
LEFT JOIN 
(
SELECT SQL_BIG_RESULT 
e.HOSPCODE,
IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4))) code_rep,
COUNT(DISTINCT e.PID) OP_SERVICE_PT, 
COUNT(DISTINCT e.SEQ) OP_SERVICE 
FROM service e 
LEFT JOIN diagnosis_opd d ON d.HOSPCODE = e.HOSPCODE AND d.PID = e.PID AND d.SEQ = e.SEQ AND DATE_FORMAT(d.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
WHERE DATE_FORMAT(e.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(d.DIAGCODE,1) <> 'Z'
GROUP BY e.HOSPCODE, 
IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4)))
) e ON e.HOSPCODE = o.hoscode 

LEFT JOIN 
(
SELECT SQL_BIG_RESULT 
e.HOSPCODE,
IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4))) code_rep,
COUNT(DISTINCT e.PID) TM_SERVICE_PT, 
COUNT(DISTINCT e.SEQ) TM_SERVICE 
FROM
(
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM diagnosis_opd e 
WHERE DATE_FORMAT(e.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(e.DIAGCODE,1) = 'U'

UNION 
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM drug_opd e 
WHERE DATE_FORMAT(e.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(e.DIDSTD,2) IN ('41','42') 

UNION 
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM procedure_opd e 
LEFT JOIN cicd9ttm_planthai p ON e.PROCEDCODE=p.`code` 
WHERE DATE_FORMAT(e.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND p.code IS NOT NULL 

) e
GROUP BY e.HOSPCODE, IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4)))
) t ON t.HOSPCODE = e.HOSPCODE AND t.code_rep = e.code_rep
WHERE  e.HOSPCODE IS NOT NULL;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_panth_visit_ratio' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_rpt_visit_oldman
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_visit_oldman`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_visit_oldman`(IN `selyear` varchar(4))
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'cal_rpt_visit_oldman' , t.time = NOW();	

set @bdg_date = '2014-09-30';
set @selyear = selyear;
set @pyear = @selyear-1;

#/ร้อยละของผู้สูงอายุที่ได้รับการเยี่ยมบ้าน.sql
#drop TABLE if EXISTS rpt_visit_oldman;
#CREATE TABLE rpt_visit_oldman
REPLACE into  rpt_visit_oldman

select SQL_BIG_RESULT  @selyear as selyear,temp.hoscode,temp.hosname,temp.target,temp.oct,temp.nov,temp.dec,temp.jan,temp.feb
,temp.mar,temp.apr,temp.may,temp.jun,temp.jul,temp.aug,temp.sep from 
(select h.hoscode,h.hosname,
(SELECT
count(distinct p.CID)
FROM
person as p
where  p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') 
and p.HOSPCODE=h.hoscode and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)) as target,

(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@pyear,'10')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as 'oct'

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@pyear,'11')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as 'nov'

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@pyear,'12')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as 'dec'

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'01')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as jan

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'02')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as feb

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'03')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as mar

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'04')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as apr

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'05')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as may

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'06')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as jun 

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'07')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as jul

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'08')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as aug

,(select count(distinct hhv.CID) as num from 
(SELECT comserv.HOSPCODE,comserv.PID,comserv.SEQ,comserv.DATE_SERV,comserv.COMSERVICE,p.CID
FROM community_service as comserv,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.COMSERVICE like "1A4%" and (TIMESTAMPDIFF(YEAR,p.birth,@bdg_date)>= 60)
and  EXTRACT(YEAR_MONTH FROM comserv.DATE_SERV)= CONCAT(@selyear,'09')
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as sep





from chospital_amp h ) as temp;	

UPDATE sys_check_process t set t.fnc_name = 'end_cal_rpt_visit_oldman' , t.time = NOW();	


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_sys_count_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_sys_count_all`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_sys_count_all`(IN `ym` varchar(6))
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_sys_count_all' , t.time = NOW();	

	set @ym = ym;

REPLACE into sys_count_all 


SELECT SQL_BIG_RESULT h.hoscode as hospcode,@ym as month,
(select COUNT(*) from person t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.D_UPDATE)=@ym) as person,
(select COUNT(*) from death t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DDEATH)=@ym) as death,
(select COUNT(*) from service t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as service,
(select COUNT(*) from accident t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.D_UPDATE)=@ym) as accident,
(select COUNT(*) from diagnosis_opd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as diagnosis_opd,
(select COUNT(*) from procedure_opd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as procedure_opd,
(select COUNT(*) from ncdscreen t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as ncdscreen,
(select COUNT(*) from chronicfu t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as chronicfu,
(select COUNT(*) from labfu t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as labfu,
(select COUNT(*) from chronic t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_DIAG)=@ym) as chronic,
(select COUNT(*) from fp t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as fp,
(select COUNT(*) from epi t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as epi,
(select COUNT(*) from nutrition t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as nutrition,
(select COUNT(*) from prenatal t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.D_UPDATE)=@ym) as prenatal,
(select COUNT(*) from anc t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as anc,
(select COUNT(*) from labor t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.D_UPDATE)=@ym) as labor,
(select COUNT(*) from postnatal t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.D_UPDATE)=@ym) as postnatal,
(select COUNT(*) from newborn t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.BDATE)=@ym) as newborn,
(select COUNT(*) from newborncare t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.D_UPDATE)=@ym) as newborncare,
(select COUNT(*) from dental t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATE_SERV)=@ym) as dental,
(select COUNT(*) from admission t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATETIME_ADMIT)=@ym) as admission,
(select COUNT(*) from diagnosis_ipd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.DATETIME_ADMIT)=@ym) as diagnosis_ipd,
(select COUNT(*) from procedure_ipd t where t.HOSPCODE=h.hoscode and EXTRACT(YEAR_MONTH FROM t.D_UPDATE)=@ym) as procedure_ipd

from chospital_amp h;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_sys_count_all' , t.time = NOW();	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_sys_person_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_sys_person_type`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_sys_person_type`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'cal_sys_person_type' , t.time = NOW();	

drop TABLE  IF EXISTS sys_person_type;
CREATE TABLE sys_person_type SELECT * from (
select SQL_BIG_RESULT  h.hoscode as hospcode ,h.hosname as hospname,type1,type2,type3,type4,total
from chospital_amp h
left join 
   (select person.hospcode  ,count(*) as total,sum(if(person.typearea='1',1,0)) as type1
    ,sum(if(person.typearea='2',1,0)) as type2,sum(if(person.typearea='3',1,0)) as type3
		,sum(if(person.typearea='4',1,0)) as type4
    from person
    where person.discharge = '9'  and person.nation ='099' 
    group by person.hospcode
    order by hospcode) as pa
on h.hoscode = pa.hospcode

order by hoscode asc ) t	;

UPDATE sys_check_process t set t.fnc_name = 'end_cal_sys_person_type' , t.time = NOW();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clear_import_not_success
-- ----------------------------
DROP PROCEDURE IF EXISTS `clear_import_not_success`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_import_not_success`()
BEGIN
UPDATE sys_check_process t set t.fnc_name = 'clear_import_not_success' , t.time = NOW();	
	
DELETE from sys_upload_fortythree where UPPER(note2) != 'OK' and  (DATEDIFF(CURDATE(),upload_date) > 2);

UPDATE sys_check_process t set t.fnc_name = 'end_clear_import_not_success' , t.time = NOW();	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clear_null_hospcode
-- ----------------------------
DROP PROCEDURE IF EXISTS `clear_null_hospcode`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_null_hospcode`()
BEGIN

UPDATE sys_check_process t set t.fnc_name = 'clear_null_hospcode' , t.time = NOW();

delete from service where hospcode ='';
delete from person where hospcode ='';
delete from chronic where hospcode='';
delete from labfu where hospcode='';
delete from charge_opd where hospcode='';
delete from charge_ipd where hospcode='';
delete from diagnosis_opd where hospcode='';
delete from drug_opd where hospcode='';
delete from procedure_opd where hospcode='';
delete from home where hospcode='';
 delete from labfu where hospcode='';
delete from chronicfu where hospcode='';
delete from epi where hospcode='';
delete from accident where hospcode='';
	
UPDATE sys_check_process t set t.fnc_name = 'end_clear_null_hospcode' , t.time = NOW();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clear_upload_error
-- ----------------------------
DROP PROCEDURE IF EXISTS `clear_upload_error`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_upload_error`()
BEGIN
		
		UPDATE sys_check_process t set t.fnc_name = 'clear_upload_error' , t.time = NOW();
		
		DELETE FROM sys_upload_fortythree 
		WHERE note2 <> 'OK'  AND 		TIMESTAMPDIFF(DAY,upload_date,CURDATE()) > 3;

		UPDATE sys_check_process t set t.fnc_name = 'end_clear_upload_error' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for end_process
-- ----------------------------
DROP PROCEDURE IF EXISTS `end_process`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `end_process`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'end_process' , t.time = NOW();

	 UPDATE sys_process_running s  set s.is_running = 'false';
	 UPDATE sys_event_log SET end_at=DATE_FORMAT(NOW(), '%Y%m%d%H%i%s') ORDER BY id DESC LIMIT 1;

UPDATE sys_check_process t set t.fnc_name = 'all_process_complete' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for merge_newborncare
-- ----------------------------
DROP PROCEDURE IF EXISTS `merge_newborncare`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `merge_newborncare`()
BEGIN
	UPDATE sys_check_process t set t.fnc_name = 'merge_newborncare' , t.time = NOW();

	REPLACE INTO newborncare SELECT * FROM newborn_care;
	TRUNCATE newborn_care;

UPDATE sys_check_process t set t.fnc_name = 'end_merge_newborncare' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for start_process
-- ----------------------------
DROP PROCEDURE IF EXISTS `start_process`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `start_process`()
BEGIN
		UPDATE sys_check_process t set t.fnc_name = 'start_process' , t.time = NOW();
	
	UPDATE sys_process_running s set s.is_running = 'true';
	INSERT INTO sys_event_log (id,start_at,end_at) VALUES (null,DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'),'wait');

UPDATE sys_check_process t set t.fnc_name = 'end_start_process' , t.time = NOW();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for tmp_store_proc
-- ----------------------------
DROP PROCEDURE IF EXISTS `tmp_store_proc`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tmp_store_proc`()
BEGIN 
select  h.hoscode as hospcode ,h.hosname as hospname,

(select count(*)  from prenatal  
           where (prenatal.edc BETWEEN '2014-04-01' and '2015-03-31' )  and hospcode = h.hoscode
) as prenatal,
(select count(*)  from labor
           where (labor.bdate BETWEEN '2014-04-01' and '2015-03-31' ) and hospcode = h.hoscode
) as labor,
(select count(*)  from postnatal  
           where (postnatal.bdate BETWEEN '2014-04-01' and '2015-03-31' ) and hospcode = h.hoscode
) as postnatal,
(select count(*)  from newborn  
           where (newborn.bdate BETWEEN '2014-04-01' and '2015-03-31' ) and hospcode = h.hoscode
) as newborn,
(select count(*)  from newborncare  
           where (newborncare.bdate BETWEEN '2014-04-01' and '2015-03-31' ) and hospcode = h.hoscode
) as newborncare
from chospital_amp h

order by hoscode asc;
 END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for age
-- ----------------------------
DROP FUNCTION IF EXISTS `age`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `age`(`date_n` date,`date_b` date,`ask` varchar(1)) RETURNS int(3)
    DETERMINISTIC
BEGIN 
		##use call age('date_now','date_birth','y or m or d');
			DECLARE year_diff INT; 
			DECLARE month_diff INT; 
			DECLARE day_diff INT; 
				SELECT (YEAR(date_n)-YEAR(date_b)) - (DATE_FORMAT(date_n,'00-%m-%d')<DATE_FORMAT(date_b,'00-%m-%d' )) INTO year_diff; 
				SELECT (CASE SIGN(DATE_FORMAT(date_n,'%m')-DATE_FORMAT(date_b,'%m')) 
											WHEN 0 
													THEN 0 + IF(DAY(date_n) < DAY(date_b), 11, 0) 
											WHEN -1 
													THEN (12 - DATE_FORMAT(date_b,'%m') + DATE_FORMAT(date_n,'%m') - (DATE_FORMAT(date_n,'00-00-%d') < DATE_FORMAT(date_b,'00-00-%d'))) 
											WHEN 1 
													THEN(DATE_FORMAT(date_n,'%m') - DATE_FORMAT(date_b,'%m') - (DATE_FORMAT(date_n,'00-00-%d') < DATE_FORMAT(date_b,'00-00-%d'))) 
										END
									) INTO month_diff; 
					SELECT (CASE SIGN(DATE_FORMAT(date_n,'%d') - DATE_FORMAT(date_b,'%d')) 
											WHEN 0 
													THEN 0 
											WHEN -1 
													THEN (DATE_FORMAT(LAST_DAY(date_b),'%d') + DATE_FORMAT(date_n, '%d')  - DATE_FORMAT(date_b, '%d')) 
											WHEN 1 
													THEN (DATE_FORMAT(date_n,'%d') - DATE_FORMAT(date_b,'%d') - (DATE_FORMAT(date_n,'%d') < DATE_FORMAT(date_b,'%d'))) 
										END
									) INTO day_diff;
				IF ask = 'y' THEN
						RETURN year_diff;
				ELSEIF ask = 'm' THEN
						RETURN month_diff;
				ELSEIF ask = 'd' THEN
						RETURN day_diff;
				ELSE
						RETURN 0;
				END IF;
		END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for mod11
-- ----------------------------
DROP FUNCTION IF EXISTS `mod11`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `mod11`(v1 varchar(13)) RETURNS int(1)
    DETERMINISTIC
BEGIN
		## use call mod11('cid');
			 DECLARE chkrs int(1) DEFAULT 0;
				 DECLARE vc1 int(1) DEFAULT 0;
				 DECLARE vc2 int(1) DEFAULT 0;
				 DECLARE vc3 int(1) DEFAULT 0;
				 DECLARE vc4 int(1) DEFAULT 0;
				 DECLARE vc5 int(1) DEFAULT 0;
				 DECLARE vc6 int(1) DEFAULT 0;
				 DECLARE vc7 int(1) DEFAULT 0;
				 DECLARE vc8 int(1) DEFAULT 0;
				 DECLARE vc9 int(1) DEFAULT 0;
				 DECLARE vc10 int(1) DEFAULT 0;
				 DECLARE vc11 int(1) DEFAULT 0;
				 DECLARE vc12 int(1) DEFAULT 0;
				 DECLARE vc13 int(1) DEFAULT 0;
				 DECLARE vm int(1) DEFAULT 0;
				 DECLARE vt int(1) DEFAULT 0;
					SET vc1=13*substr(v1,1,1);
					SET vc2=12*substr(v1,2,1);
					SET vc3=11*substr(v1,3,1);
					SET vc4=10*substr(v1,4,1);
					SET vc5=9*substr(v1,5,1);
					SET vc6=8*substr(v1,6,1);
					SET vc7=7*substr(v1,7,1);
					SET vc8=6*substr(v1,8,1);
					SET vc9=5*substr(v1,9,1);
					SET vc10=4*substr(v1,10,1);
					SET vc11=3*substr(v1,11,1);
					SET vc12=2*substr(v1,12,1);
					SET vc13=substr(v1,13,1);
						SET vt=vc1+vc2+vc3+vc4+vc5+vc6+vc7+vc8+vc9+vc10+vc11+vc12;
						set vt=mod(vt,11);
						IF vt<=1 THEN 
								SET vm=1-vt;
						ELSE 
								SET vm=11-vt;
						END IF;				
						IF vm=vc13 THEN	
								SET chkrs=1;
						ELSE 
								SET chkrs=0;
						END IF;
						IF vc1='0' AND vc2='0'  THEN  
								SET chkrs=0;				
						END IF;
						IF length(trim(v1))<>13  THEN 
								SET chkrs=0;				
						END IF;
			RETURN chkrs;
		END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for nutri_cal
-- ----------------------------
DROP FUNCTION IF EXISTS `nutri_cal`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `nutri_cal`(agem int(3),isex varchar(1),ntype int(1),h int(3),w int(3)) RETURNS varchar(1) CHARSET utf8
    DETERMINISTIC
BEGIN
	     DECLARE chkrs int(1) DEFAULT 0;
		 DECLARE ay int(3) DEFAULT 0;
		 DECLARE am int(2) DEFAULT 0;
	
		SET chkrs=NULL;
		SET ay=ROUND(agem/12,0);
		SET am=MOD(agem,12);
					
					IF ntype=1 THEN  
							SELECT nutri_level INTO chkrs  FROM cwhpa_referen WHERE year=ay AND month=am AND sex=isex AND nutri_type='1' AND (w BETWEEN low AND hi)=1;				
					END IF;

					IF ntype=2 THEN 
								SELECT nutri_level INTO chkrs  FROM cwhpa_referen WHERE year=ay AND month=am AND sex=isex AND nutri_type='2' AND (h BETWEEN low AND hi)=1;				
					END IF;

				IF ntype=3 THEN 
								SELECT nutri_level INTO chkrs  FROM cwh_referen WHERE (ay BETWEEN age_low AND age_max)=1 AND sex=isex AND h=height AND  (w BETWEEN weight_low AND weight_max)=1;				
					END IF;

		RETURN chkrs;
		END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for event1
-- ----------------------------
DROP EVENT IF EXISTS `event1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `event1` ON SCHEDULE EVERY 1 DAY STARTS '2015-04-09 08:47:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN

call start_process();
call clear_import_not_success();
call clear_null_hospcode();
call clear_upload_error();
call merge_newborncare();
call cal_chart_dial_1('2014-09-30');
call cal_chart_dial_2('2014-09-30');
call cal_chart_dial_3('2014-09-30');
call cal_chart_dial_4();
call cal_chart_dial_5();
call cal_chart_dial_6();
call cal_ncd_cholesteral_colorchart('2014-09-30');
call cal_ncd_nocholesteral_colorchart('2014-09-30');
call cal_pyramid_level_1('2014-09-30');
call cal_pyramid_level_2();
call cal_pyramid_level_3();
call cal_sys_person_type();
call cal_count_service(2014);
call cal_count_service(2015);
call cal_rpt_visit_oldman(2014);
call cal_rpt_visit_oldman(2015);
call cal_rpt_panth_visit_ratio(2014);
call cal_rpt_panth_visit_ratio(2015);
call cal_rpt_panth_drug_value(2014);
call cal_rpt_panth_drug_value(2015);
call cal_rpt_cervical_cancer_screening(2014);
call cal_rpt_cervical_cancer_screening(2015);
call end_process();

END
;;
DELIMITER ;
