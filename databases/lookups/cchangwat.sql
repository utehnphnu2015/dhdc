/*
Navicat MySQL Data Transfer

Source Server         : local-mariadb
Source Server Version : 50540
Source Host           : localhost:3309
Source Database       : dhdc_ctable

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-04-11 15:59:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cchangwat
-- ----------------------------
DROP TABLE IF EXISTS `cchangwat`;
CREATE TABLE `cchangwat` (
  `changwatcode` varchar(2) NOT NULL,
  `changwatname` varchar(255) DEFAULT NULL,
  `zonecode` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`changwatcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cchangwat
-- ----------------------------
INSERT INTO `cchangwat` VALUES ('10', 'กรุงเทพมหานคร', '13');
INSERT INTO `cchangwat` VALUES ('11', 'สมุทรปราการ', '06');
INSERT INTO `cchangwat` VALUES ('12', 'นนทบุรี', '04');
INSERT INTO `cchangwat` VALUES ('13', 'ปทุมธานี', '04');
INSERT INTO `cchangwat` VALUES ('14', 'พระนครศรีอยุธยา', '04');
INSERT INTO `cchangwat` VALUES ('15', 'อ่างทอง', '04');
INSERT INTO `cchangwat` VALUES ('16', 'ลพบุรี', '04');
INSERT INTO `cchangwat` VALUES ('17', 'สิงห์บุรี', '04');
INSERT INTO `cchangwat` VALUES ('18', 'ชัยนาท', '03');
INSERT INTO `cchangwat` VALUES ('19', 'สระบุรี', '04');
INSERT INTO `cchangwat` VALUES ('20', 'ชลบุรี', '06');
INSERT INTO `cchangwat` VALUES ('21', 'ระยอง', '06');
INSERT INTO `cchangwat` VALUES ('22', 'จันทบุรี', '06');
INSERT INTO `cchangwat` VALUES ('23', 'ตราด', '06');
INSERT INTO `cchangwat` VALUES ('24', 'ฉะเชิงเทรา', '06');
INSERT INTO `cchangwat` VALUES ('25', 'ปราจีนบุรี', '06');
INSERT INTO `cchangwat` VALUES ('26', 'นครนายก', '04');
INSERT INTO `cchangwat` VALUES ('27', 'สระแก้ว', '06');
INSERT INTO `cchangwat` VALUES ('30', 'นครราชสีมา', '09');
INSERT INTO `cchangwat` VALUES ('31', 'บุรีรัมย์', '09');
INSERT INTO `cchangwat` VALUES ('32', 'สุรินทร์', '09');
INSERT INTO `cchangwat` VALUES ('33', 'ศรีสะเกษ', '10');
INSERT INTO `cchangwat` VALUES ('34', 'อุบลราชธานี', '10');
INSERT INTO `cchangwat` VALUES ('35', 'ยโสธร', '10');
INSERT INTO `cchangwat` VALUES ('36', 'ชัยภูมิ', '09');
INSERT INTO `cchangwat` VALUES ('37', 'อำนาจเจริญ', '10');
INSERT INTO `cchangwat` VALUES ('38', 'บึงกาฬ', '08');
INSERT INTO `cchangwat` VALUES ('39', 'หนองบัวลำภู', '08');
INSERT INTO `cchangwat` VALUES ('40', 'ขอนแก่น', '07');
INSERT INTO `cchangwat` VALUES ('41', 'อุดรธานี', '08');
INSERT INTO `cchangwat` VALUES ('42', 'เลย', '08');
INSERT INTO `cchangwat` VALUES ('43', 'หนองคาย', '08');
INSERT INTO `cchangwat` VALUES ('44', 'มหาสารคาม', '07');
INSERT INTO `cchangwat` VALUES ('45', 'ร้อยเอ็ด', '07');
INSERT INTO `cchangwat` VALUES ('46', 'กาฬสินธุ์', '07');
INSERT INTO `cchangwat` VALUES ('47', 'สกลนคร', '08');
INSERT INTO `cchangwat` VALUES ('48', 'นครพนม', '08');
INSERT INTO `cchangwat` VALUES ('49', 'มุกดาหาร', '10');
INSERT INTO `cchangwat` VALUES ('50', 'เชียงใหม่', '01');
INSERT INTO `cchangwat` VALUES ('51', 'ลำพูน', '01');
INSERT INTO `cchangwat` VALUES ('52', 'ลำปาง', '01');
INSERT INTO `cchangwat` VALUES ('53', 'อุตรดิตถ์', '02');
INSERT INTO `cchangwat` VALUES ('54', 'แพร่', '01');
INSERT INTO `cchangwat` VALUES ('55', 'น่าน', '01');
INSERT INTO `cchangwat` VALUES ('56', 'พะเยา', '01');
INSERT INTO `cchangwat` VALUES ('57', 'เชียงราย', '01');
INSERT INTO `cchangwat` VALUES ('58', 'แม่ฮ่องสอน', '01');
INSERT INTO `cchangwat` VALUES ('60', 'นครสวรรค์', '03');
INSERT INTO `cchangwat` VALUES ('61', 'อุทัยธานี', '03');
INSERT INTO `cchangwat` VALUES ('62', 'กำแพงเพชร', '03');
INSERT INTO `cchangwat` VALUES ('63', 'ตาก', '02');
INSERT INTO `cchangwat` VALUES ('64', 'สุโขทัย', '02');
INSERT INTO `cchangwat` VALUES ('65', 'พิษณุโลก', '02');
INSERT INTO `cchangwat` VALUES ('66', 'พิจิตร', '03');
INSERT INTO `cchangwat` VALUES ('67', 'เพชรบูรณ์', '02');
INSERT INTO `cchangwat` VALUES ('70', 'ราชบุรี', '05');
INSERT INTO `cchangwat` VALUES ('71', 'กาญจนบุรี', '05');
INSERT INTO `cchangwat` VALUES ('72', 'สุพรรณบุรี', '05');
INSERT INTO `cchangwat` VALUES ('73', 'นครปฐม', '05');
INSERT INTO `cchangwat` VALUES ('74', 'สมุทรสาคร', '05');
INSERT INTO `cchangwat` VALUES ('75', 'สมุทรสงคราม', '05');
INSERT INTO `cchangwat` VALUES ('76', 'เพชรบุรี', '05');
INSERT INTO `cchangwat` VALUES ('77', 'ประจวบคีรีขันธ์', '05');
INSERT INTO `cchangwat` VALUES ('80', 'นครศรีธรรมราช', '11');
INSERT INTO `cchangwat` VALUES ('81', 'กระบี่', '11');
INSERT INTO `cchangwat` VALUES ('82', 'พังงา', '11');
INSERT INTO `cchangwat` VALUES ('83', 'ภูเก็ต', '11');
INSERT INTO `cchangwat` VALUES ('84', 'สุราษฎร์ธานี', '11');
INSERT INTO `cchangwat` VALUES ('85', 'ระนอง', '11');
INSERT INTO `cchangwat` VALUES ('86', 'ชุมพร', '11');
INSERT INTO `cchangwat` VALUES ('90', 'สงขลา', '12');
INSERT INTO `cchangwat` VALUES ('91', 'สตูล', '12');
INSERT INTO `cchangwat` VALUES ('92', 'ตรัง', '12');
INSERT INTO `cchangwat` VALUES ('93', 'พัทลุง', '12');
INSERT INTO `cchangwat` VALUES ('94', 'ปัตตานี', '12');
INSERT INTO `cchangwat` VALUES ('95', 'ยะลา', '12');
INSERT INTO `cchangwat` VALUES ('96', 'นราธิวาส', '12');
INSERT INTO `cchangwat` VALUES ('99', 'ไม่ทราบ', '99');
